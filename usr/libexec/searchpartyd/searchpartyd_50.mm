uint64_t sub_100595268@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A48A0, &qword_1013B1240);
  sub_100599110();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for CircleTrustAckEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for CircleTrustAckEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100595520@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4EA8, &qword_1013B2118);
  sub_1005991C4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for CircleTrustAcceptEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for CircleTrustAcceptEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005957D8@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4710, &qword_1013B1030);
  sub_100599278();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for CircleTrustDeclineEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

void *sub_100595A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v6, static CodingUserInfoKey.messagingCoder);
  (*(v7 + 16))(v9, v10, v6);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v9);
  v11(v14, 0);
  sub_1000BC4D4(&qword_1016A48E0, &qword_1013B1260);
  sub_10059932C(&qword_1016A4EC0, &qword_1016A48E0, &qword_1013B1260, sub_1005993A8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v15[0] + 16))
    {
      v5 = *(v15[0] + 32);

      return v5;
    }

    v5 = &unk_1013B2108;
    sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
    sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v5;
}

void *sub_100595D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v6, static CodingUserInfoKey.messagingCoder);
  (*(v7 + 16))(v9, v10, v6);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v9);
  v11(v14, 0);
  sub_1000BC4D4(&qword_1016A4ED0, &qword_1013B2120);
  sub_10059932C(&qword_1016A4ED8, &qword_1016A4ED0, &qword_1013B2120, sub_1005993FC);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v15[0] + 16))
    {
      v5 = *(v15[0] + 32);

      return v5;
    }

    v5 = &unk_1013B2108;
    sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
    sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100595FC8@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4EE8, &qword_1013B2128);
  sub_100599450();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for CircleTrustRequestEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for CircleTrustRequestEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100596280@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4F00, &qword_1013B2130);
  sub_100599564();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100596538@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A48C0, &qword_1013B1250);
  sub_100599618();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for PeerTrustAckEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for PeerTrustAckEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005967F0()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100596850()
{
  result = qword_1016A4E40;
  if (!qword_1016A4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4E40);
  }

  return result;
}

uint64_t sub_1005968A4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v25 = a2;
  v26 = v12;
  v13 = type metadata accessor for MessagingMessageContext(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v17 - 8);
  v19 = &v25 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_10059A080(a6, v16, type metadata accessor for MessagingMessageContext);
  v21 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a1;
  *(v23 + 40) = v25;
  *(v23 + 48) = a3;
  *(v23 + 56) = a4;
  *(v23 + 64) = v6;
  *(v23 + 72) = a5;
  sub_100476E9C(v16, v23 + v21);
  *(v23 + v22) = v26;
  sub_100017D5C(a3, a4);

  sub_100A838D4(0, 0, v19, &unk_1013B20F0, v23);
}

uint64_t sub_100596AE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v11;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 412) = a4;
  type metadata accessor for CircleTrustRequestEnvelopeV1(0);
  *(v8 + 56) = swift_task_alloc();
  type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
  *(v8 + 64) = swift_task_alloc();
  type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
  *(v8 + 72) = swift_task_alloc();
  type metadata accessor for CircleTrustAckEnvelopeV1(0);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = type metadata accessor for CircleTrustEnvelopeV1(0);
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100596C3C, 0, 0);
}

uint64_t sub_100596C3C()
{
  v1 = *(v0 + 412);
  if (v1 <= 3)
  {
    if (*(v0 + 412) <= 1u)
    {
      if (*(v0 + 412))
      {
        v2 = *(v0 + 40);
        v3 = sub_100596F44;
        goto LABEL_23;
      }

      if (qword_1016947E0 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177AF58);
      sub_100017D5C(v4, v5);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 24);
      v10 = *(v0 + 32);
      if (v9)
      {
        v12 = swift_slowAlloc();
        *v12 = 67109120;
        *(v12 + 4) = 1;
        sub_100016590(v11, v10);
        _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring non circleTrust Message: %d", v12, 8u);
      }

      else
      {
        sub_100016590(*(v0 + 24), *(v0 + 32));
      }

      v19 = *(v0 + 8);

      return v19();
    }

    v2 = *(v0 + 40);
    if (v1 == 2)
    {
      v3 = sub_100597378;
    }

    else
    {
      v3 = sub_1005976B4;
    }

LABEL_23:

    return _swift_task_switch(v3, v2, 0);
  }

  if (*(v0 + 412) <= 5u)
  {
    v2 = *(v0 + 40);
    if (v1 == 4)
    {
      v3 = sub_1005979F0;
    }

    else
    {
      v3 = sub_100597D2C;
    }

    goto LABEL_23;
  }

  if (v1 == 6)
  {
    v2 = *(v0 + 40);
    v3 = sub_100598080;
    goto LABEL_23;
  }

  if (v1 == 7)
  {
    v2 = *(v0 + 40);
    v3 = sub_100598328;
    goto LABEL_23;
  }

  v13 = swift_task_alloc();
  *(v0 + 384) = v13;
  *v13 = v0;
  v13[1] = sub_1005985F4;
  v14 = *(v0 + 48);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);

  return sub_100598B54(8, v17, v15, v16, v14);
}

uint64_t sub_100596F44()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    sub_100594FB0(*(v0 + 96));
    v2 = *(v0 + 96);
    v5 = *(v0 + 88);
    v6 = *(v0 + 48);
    *(v0 + 104) = *(*(v0 + 40) + 112);
    swift_getObjectType();
    *(v0 + 392) = v5[6];
    *(v0 + 396) = v5[7];
    *(v0 + 400) = v5[5];
    v7 = (v2 + v5[8]);
    *(v0 + 112) = *v7;
    *(v0 + 120) = v7[1];
    v8 = (v2 + v5[9]);
    *(v0 + 128) = *v8;
    *(v0 + 136) = v8[1];
    *(v0 + 404) = *(v2 + v5[10]);
    *(v0 + 408) = *(v2 + v5[11]);
    v9 = (v2 + v5[12]);
    *(v0 + 144) = *v9;
    *(v0 + 152) = v9[1];
    *(v0 + 160) = *(v2 + v5[13]);
    v10 = (v2 + v5[14]);
    *(v0 + 168) = *v10;
    *(v0 + 176) = v10[1];
    v11 = type metadata accessor for MessagingMessageContext(0);
    v12 = (v6 + *(v11 + 48));
    *(v0 + 184) = *v12;
    *(v0 + 192) = v12[1];
    v13 = v6 + *(v11 + 24);
    *(v0 + 413) = *v13;
    *(v0 + 200) = *(v13 + 8);
    *(v0 + 208) = *(v13 + 16);
    *(v0 + 216) = *(v2 + v5[16]);
    *(v0 + 414) = *(v2 + v5[17]);
    v14 = (v2 + v5[15]);
    *(v0 + 224) = *v14;
    *(v0 + 232) = v14[1];
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005971E4, v15, v16);
  }

  else
  {
    sub_100598968(1, v1, *(v0 + 24), *(v0 + 32));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1005971E4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  sub_100D2B378(v1, v1 + *(v0 + 392), v1 + *(v0 + 396), v1 + *(v0 + 400), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 404), *(v0 + 408), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 413), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 414), *(v0 + 224), *(v0 + 232));

  return _swift_task_switch(sub_1005972C8, v2, 0);
}

uint64_t sub_1005972C8()
{
  sub_100599504(*(v0 + 96), type metadata accessor for CircleTrustEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100597378()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    sub_100595268(*(v0 + 80));
    v4 = *(v0 + 48);
    *(v0 + 240) = *(*(v0 + 40) + 112);
    swift_getObjectType();
    v5 = v4 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    *(v0 + 415) = *v5;
    *(v0 + 248) = *(v5 + 8);
    *(v0 + 256) = *(v5 + 16);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10059751C, v7, v6);
  }

  else
  {
    sub_100598968(2, v1, *(v0 + 24), *(v0 + 32));

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10059751C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 415);
  type metadata accessor for CircleTrustService();
  sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService, &unk_1013E496C);
  sub_100D41F84(v3, v5, v1, v2);

  return _swift_task_switch(sub_100597604, v4, 0);
}

uint64_t sub_100597604()
{
  sub_100599504(*(v0 + 80), type metadata accessor for CircleTrustAckEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005976B4()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    sub_100595520(*(v0 + 72));
    v4 = *(v0 + 48);
    *(v0 + 264) = *(*(v0 + 40) + 112);
    swift_getObjectType();
    v5 = v4 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    *(v0 + 416) = *v5;
    *(v0 + 272) = *(v5 + 8);
    *(v0 + 280) = *(v5 + 16);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100597858, v7, v6);
  }

  else
  {
    sub_100598968(3, v1, *(v0 + 24), *(v0 + 32));

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100597858()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 416);
  v6 = type metadata accessor for CircleTrustService();
  v7 = sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService, &unk_1013E496C);
  sub_100D4214C(v3, v5, v1, v2, v6, v7);

  return _swift_task_switch(sub_100597940, v4, 0);
}

uint64_t sub_100597940()
{
  sub_100599504(*(v0 + 72), type metadata accessor for CircleTrustAcceptEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005979F0()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    sub_1005957D8(*(v0 + 64));
    v4 = *(v0 + 48);
    *(v0 + 288) = *(*(v0 + 40) + 112);
    swift_getObjectType();
    v5 = v4 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    *(v0 + 417) = *v5;
    *(v0 + 296) = *(v5 + 8);
    *(v0 + 304) = *(v5 + 16);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100597B94, v7, v6);
  }

  else
  {
    sub_100598968(4, v1, *(v0 + 24), *(v0 + 32));

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100597B94()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 417);
  v6 = type metadata accessor for CircleTrustService();
  v7 = sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService, &unk_1013E496C);
  sub_100D42194(v3, v5, v1, v2, v6, v7);

  return _swift_task_switch(sub_100597C7C, v4, 0);
}

uint64_t sub_100597C7C()
{
  sub_100599504(*(v0 + 64), type metadata accessor for CircleTrustDeclineEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100597D2C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if (v3 == 1)
  {
    v4 = sub_100595A90(5, 1, v1, v2);
    v0[39] = v4;
    v7 = v0[6];
    v8 = v4;
    v9 = v7 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *v9;
    v13 = swift_task_alloc();
    v0[40] = v13;
    *v13 = v0;
    v13[1] = sub_100597ED0;

    return sub_100D37EF8(v8, v12, v10, v11);
  }

  else
  {
    sub_100598968(5, v3, v1, v2);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100597ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100598080()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  if (v3 == 1)
  {
    *(v0 + 328) = sub_100595D2C(6, 1, v1, v2);
    v6 = *(v0 + 48);
    *(v0 + 336) = *(*(v0 + 40) + 112);
    swift_getObjectType();
    v7 = v6 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    *(v0 + 418) = *v7;
    *(v0 + 344) = *(v7 + 8);
    *(v0 + 352) = *(v7 + 16);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10059821C, v9, v8);
  }

  else
  {
    sub_100598968(6, v3, v1, v2);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10059821C()
{
  v1 = *(v0 + 328);
  type metadata accessor for CircleTrustService();
  sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService, &unk_1013E496C);
  sub_100D423AC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100598328()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    sub_100595FC8(*(v0 + 56));
    v4 = *(v0 + 48);
    *(v0 + 360) = *(*(v0 + 40) + 112);
    swift_getObjectType();
    v5 = v4 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    *(v0 + 419) = *v5;
    *(v0 + 368) = *(v5 + 8);
    *(v0 + 376) = *(v5 + 16);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005984CC, v7, v6);
  }

  else
  {
    sub_100598968(7, v1, *(v0 + 24), *(v0 + 32));

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1005984CC()
{
  v1 = *(v0 + 40);
  sub_100D3BAE4(*(v0 + 56), *(v0 + 419), *(v0 + 368), *(v0 + 376));

  return _swift_task_switch(sub_100598544, v1, 0);
}

uint64_t sub_100598544()
{
  sub_100599504(*(v0 + 56), type metadata accessor for CircleTrustRequestEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005985F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100598784(uint64_t a1)
{
  type metadata accessor for MessagingMessageContext(0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  v11 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100596AE4(a1, v3, v4, v8, v11, v5, v6, v7);
}

uint64_t sub_1005988E8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF70);
  sub_1000076D4(v0, qword_10177AF70);
  return Logger.init(subsystem:category:)();
}

void sub_100598968(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1016947E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AF58);
  sub_100017D5C(a3, a4);
  sub_100017D5C(a3, a4);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    sub_100016590(a3, a4);
    *(v9 + 14) = a2;
    sub_100016590(a3, a4);
    _os_log_impl(&_mh_execute_header, oslog, v8, "Unsupported version of %{public}s: %ld", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    sub_100016590(a3, a4);
    sub_100016590(a3, a4);
  }
}

uint64_t sub_100598B54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 89) = a1;
  type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0);
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100598BF0, v5, 0);
}

uint64_t sub_100598BF0()
{
  v23 = v0;
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    if (*(v0 + 89) == 8)
    {
      sub_100596280(*(v0 + 56));
      v18 = *(v0 + 40);
      *(v0 + 64) = *(*(v0 + 48) + 112);
      swift_getObjectType();
      v19 = v18 + *(type metadata accessor for MessagingMessageContext(0) + 24);
      *(v0 + 90) = *v19;
      *(v0 + 72) = *(v19 + 8);
      *(v0 + 80) = *(v19 + 16);
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100598EF8, v20, v21);
    }

    if (qword_1016947E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AF58);
    sub_100017D5C(v4, v5);
    sub_100017D5C(v4, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    if (v9)
    {
      v12 = *(v0 + 89);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446466;
      *(v0 + 88) = v12;
      v15 = String.init<A>(describing:)();
      v17 = sub_1000136BC(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      sub_100016590(v11, v10);
      *(v13 + 14) = 1;
      sub_100016590(v11, v10);
      _os_log_impl(&_mh_execute_header, v7, v8, "Unhandled message type of %{public}s: %ld", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {
      sub_100016590(*(v0 + 24), *(v0 + 32));
      sub_100016590(v11, v10);
    }
  }

  else
  {
    sub_100598968(*(v0 + 89), v1, *(v0 + 24), *(v0 + 32));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100598EF8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 90);
  type metadata accessor for CircleTrustService();
  sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService, &unk_1013E496C);
  sub_100D42484(v3, v5, v1, v2);

  return _swift_task_switch(sub_100598FDC, v4, 0);
}

uint64_t sub_100598FDC()
{
  sub_100599504(*(v0 + 56), type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10059905C()
{
  result = qword_1016A4E78;
  if (!qword_1016A4E78)
  {
    sub_1000BC580(&qword_1016A4E70, &qword_1013B2100);
    sub_10059A038(&qword_1016A4E80, type metadata accessor for CircleTrustEnvelopeV1, &unk_1013AE2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4E78);
  }

  return result;
}

unint64_t sub_100599110()
{
  result = qword_1016A4E98;
  if (!qword_1016A4E98)
  {
    sub_1000BC580(&qword_1016A48A0, &qword_1013B1240);
    sub_10059A038(&qword_1016A4EA0, type metadata accessor for CircleTrustAckEnvelopeV1, &unk_1013AE278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4E98);
  }

  return result;
}

unint64_t sub_1005991C4()
{
  result = qword_1016A4EB0;
  if (!qword_1016A4EB0)
  {
    sub_1000BC580(&qword_1016A4EA8, &qword_1013B2118);
    sub_10059A038(&qword_1016975E0, type metadata accessor for CircleTrustAcceptEnvelopeV1, &unk_1013AE250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EB0);
  }

  return result;
}

unint64_t sub_100599278()
{
  result = qword_1016A4EB8;
  if (!qword_1016A4EB8)
  {
    sub_1000BC580(&qword_1016A4710, &qword_1013B1030);
    sub_10059A038(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EB8);
  }

  return result;
}

uint64_t sub_10059932C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005993A8()
{
  result = qword_1016A4EC8;
  if (!qword_1016A4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EC8);
  }

  return result;
}

unint64_t sub_1005993FC()
{
  result = qword_1016A4EE0;
  if (!qword_1016A4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EE0);
  }

  return result;
}

unint64_t sub_100599450()
{
  result = qword_1016A4EF0;
  if (!qword_1016A4EF0)
  {
    sub_1000BC580(&qword_1016A4EE8, &qword_1013B2128);
    sub_10059A038(&qword_1016A4EF8, type metadata accessor for CircleTrustRequestEnvelopeV1, &unk_1013AE1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EF0);
  }

  return result;
}

uint64_t sub_100599504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100599564()
{
  result = qword_1016A4F08;
  if (!qword_1016A4F08)
  {
    sub_1000BC580(&qword_1016A4F00, &qword_1013B2130);
    sub_10059A038(&qword_1016A4F10, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1, &unk_1013AE188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F08);
  }

  return result;
}

unint64_t sub_100599618()
{
  result = qword_1016A4F18;
  if (!qword_1016A4F18)
  {
    sub_1000BC580(&qword_1016A48C0, &qword_1013B1250);
    sub_10059A038(&qword_1016A4F20, type metadata accessor for PeerTrustAckEnvelopeV1, &unk_1013CCC8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F18);
  }

  return result;
}

unint64_t sub_1005996CC()
{
  result = qword_1016A4F30;
  if (!qword_1016A4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F30);
  }

  return result;
}

unint64_t sub_100599720()
{
  result = qword_1016A4F48;
  if (!qword_1016A4F48)
  {
    sub_1000BC580(&qword_1016A4798, &qword_1013B1150);
    sub_10059A038(&qword_1016A4F50, type metadata accessor for LegacyShareEnvelope, &unk_101409FDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F48);
  }

  return result;
}

uint64_t sub_1005997D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100599828()
{
  result = qword_1016A4F68;
  if (!qword_1016A4F68)
  {
    sub_1000BC580(&qword_1016A47B8, &qword_1013B1160);
    sub_10059A038(&qword_1016A4F70, type metadata accessor for FamilyShareEnvelopeV1, &unk_101409FB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F68);
  }

  return result;
}

unint64_t sub_1005998DC()
{
  result = qword_1016A4F78;
  if (!qword_1016A4F78)
  {
    sub_1000BC580(&qword_1016A4800, &unk_1013B1198);
    sub_10059A038(&qword_1016A4F80, type metadata accessor for FindMyAccessoryFamilyShareEnvelope, &unk_1013F8604);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F78);
  }

  return result;
}

unint64_t sub_100599990()
{
  result = qword_1016A4F88;
  if (!qword_1016A4F88)
  {
    sub_1000BC580(&qword_1016A47D8, &qword_1013B1170);
    sub_10059A038(&qword_1016A4F90, type metadata accessor for FindMyAirPodsFamilyShareEnvelope, &unk_1013B1C44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F88);
  }

  return result;
}

unint64_t sub_100599A44()
{
  result = qword_1016A4FA8;
  if (!qword_1016A4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FA8);
  }

  return result;
}

unint64_t sub_100599A98()
{
  result = qword_1016A4FB0;
  if (!qword_1016A4FB0)
  {
    sub_1000BC580(&qword_1016A46C8, &unk_1013B2160);
    sub_10059A038(&qword_1016A4FB8, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope, &unk_1013F85DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FB0);
  }

  return result;
}

unint64_t sub_100599B4C()
{
  result = qword_1016A4FC0;
  if (!qword_1016A4FC0)
  {
    sub_1000BC580(&qword_101697720, &unk_101392640);
    sub_10059A038(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord, &unk_10140BA74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FC0);
  }

  return result;
}

unint64_t sub_100599C00()
{
  result = qword_1016A4FC8;
  if (!qword_1016A4FC8)
  {
    sub_1000BC580(&qword_1016A4820, &unk_1013B2170);
    sub_10059A038(&qword_1016A4FD0, type metadata accessor for LegacySelfBeaconingKeyEnvelope, &unk_101397888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FC8);
  }

  return result;
}

unint64_t sub_100599CB4()
{
  result = qword_1016A4FD8;
  if (!qword_1016A4FD8)
  {
    sub_1000BC580(&qword_1016A4860, &qword_1013B1208);
    sub_10059A038(&qword_1016A4FE0, type metadata accessor for SelfBeaconingKeyEnvelope, &unk_101397860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FD8);
  }

  return result;
}

unint64_t sub_100599D68()
{
  result = qword_1016A4FE8;
  if (!qword_1016A4FE8)
  {
    sub_1000BC580(&qword_1016A4840, &unk_1013B2180);
    sub_10059A038(&qword_1016A4FF0, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope, &unk_1013EF744);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FE8);
  }

  return result;
}

unint64_t sub_100599E1C()
{
  result = qword_1016CBC30;
  if (!qword_1016CBC30)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_10059A038(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CBC30);
  }

  return result;
}

unint64_t sub_100599ED0()
{
  result = qword_1016A4FF8;
  if (!qword_1016A4FF8)
  {
    sub_1000BC580(&qword_1016A4880, &qword_1013B1230);
    sub_10059A038(&qword_1016A5000, type metadata accessor for KeyRequestEnvelope, &unk_1013F2014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FF8);
  }

  return result;
}

unint64_t sub_100599F84()
{
  result = qword_1016A5008;
  if (!qword_1016A5008)
  {
    sub_1000BC580(&qword_1016A46F0, &qword_1013B1020);
    sub_10059A038(&qword_1016A5010, type metadata accessor for BeaconObservation, &unk_1013C6998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5008);
  }

  return result;
}

uint64_t sub_10059A038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059A080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10059A0E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 5u)
  {
    if (a3 > 8u)
    {
      if (a3 == 9)
      {
        return 15;
      }

      else if (a3 == 10)
      {
        return 21;
      }

      else
      {
        return byte_1013B244A[a1];
      }
    }

    else
    {
      if (a3 == 7)
      {
        v8 = 19;
      }

      else
      {
        v8 = 11;
      }

      if (a3 == 6)
      {
        return 17;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    if (a3 == 4)
    {
      v3 = 9;
    }

    else
    {
      v3 = 13;
    }

    if (a3 == 3)
    {
      v4 = 7;
    }

    else
    {
      v4 = v3;
    }

    if (a3 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    if (a3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    if (a3 <= 2u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_10059A190(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xA)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_10059A1AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10059A1F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
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

uint64_t sub_10059A238(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0;
    LOBYTE(a2) = 11;
  }

  *(result + 16) = a2;
  return result;
}

ValueMetadata *sub_10059A260(unsigned __int8 a1)
{
  if (a1 <= 0xAu)
  {
    if (a1 <= 4u)
    {
      if (a1 == 1)
      {
        v1 = &type metadata for AccessoryProductDataResponsePayload;
        sub_10059BDFC();
        return v1;
      }

      if (a1 == 3)
      {
        v1 = &type metadata for AccessoryManufacturerNameResponsePayload;
        sub_10059BDA8();
        return v1;
      }
    }

    else
    {
      switch(a1)
      {
        case 5u:
          v1 = &type metadata for AccessoryModelNameResponsePayload;
          sub_10059BD54();
          return v1;
        case 7u:
          v1 = &type metadata for AccessoryCategoryResponsePayload;
          sub_10059BD00();
          return v1;
        case 9u:
          v1 = &type metadata for AccessoryProtocolVersionResponsePayload;
          sub_10059BCAC();
          return v1;
      }
    }

LABEL_26:
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
    return v1;
  }

  if (a1 > 0x10u)
  {
    switch(a1)
    {
      case 0x11u:
        v1 = &type metadata for AccessoryBatteryTypeResponsePayload;
        sub_10059BBB0();
        return v1;
      case 0x13u:
        v1 = &type metadata for AccessoryBatteryLevelResponsePayload;
        sub_10059BB5C();
        return v1;
      case 0x15u:
        v1 = &type metadata for AccessoryFindMyVersionResponsePayload;
        sub_10059BB08();
        return v1;
    }

    goto LABEL_26;
  }

  if (a1 == 11)
  {
    v1 = &type metadata for AccessoryCapabilityResponsePayload;
    sub_10059BC58();
    return v1;
  }

  if (a1 == 13)
  {
    v1 = &type metadata for AccessoryNetworkIDResponsePayload;
    sub_10059BC04();
    return v1;
  }

  if (a1 != 15)
  {
    goto LABEL_26;
  }

  v1 = &type metadata for AccessoryFirmwareVersionResponsePayload;
  sub_1003100C4();
  return v1;
}

void sub_10059A3B4(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    if (a3 > 8u)
    {
      if (a3 == 9)
      {
        v9 = a1 >> 16;
        v10 = a1 >> 24;
        *(a4 + 24) = &type metadata for AccessoryFirmwareVersionResponsePayload;
        v11 = sub_1003100C4();
      }

      else
      {
        if (a3 != 10)
        {
          *(a4 + 24) = &type metadata for AccessoryGenericPayload;
          *(a4 + 32) = sub_10030FF74();
          return;
        }

        v9 = a1 >> 16;
        v10 = a1 >> 24;
        *(a4 + 24) = &type metadata for AccessoryFindMyVersionResponsePayload;
        v11 = sub_10059BB08();
      }

LABEL_22:
      *(a4 + 32) = v11;
      *a4 = a1;
      *(a4 + 2) = v9;
      *(a4 + 3) = v10;
      return;
    }

    if (a3 == 6)
    {
      *(a4 + 24) = &type metadata for AccessoryBatteryTypeResponsePayload;
      v8 = sub_10059BBB0();
    }

    else
    {
      if (a3 != 7)
      {
        *(a4 + 24) = &type metadata for AccessoryCapabilityResponsePayload;
        *(a4 + 32) = sub_10059BC58();
        *a4 = a1;
        return;
      }

      *(a4 + 24) = &type metadata for AccessoryBatteryLevelResponsePayload;
      v8 = sub_10059BB5C();
    }

LABEL_29:
    *(a4 + 32) = v8;
    *a4 = a1;
    return;
  }

  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      *(a4 + 24) = &type metadata for AccessoryCategoryResponsePayload;
      *(a4 + 32) = sub_10059BD00();
      *a4 = a1;
      return;
    }

    if (a3 == 4)
    {
      v9 = a1 >> 16;
      v10 = a1 >> 24;
      *(a4 + 24) = &type metadata for AccessoryProtocolVersionResponsePayload;
      v11 = sub_10059BCAC();
      goto LABEL_22;
    }

    *(a4 + 24) = &type metadata for AccessoryNetworkIDResponsePayload;
    v8 = sub_10059BC04();
    goto LABEL_29;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      *(a4 + 24) = &type metadata for AccessoryManufacturerNameResponsePayload;
      v7 = sub_10059BDA8();
    }

    else
    {
      *(a4 + 24) = &type metadata for AccessoryModelNameResponsePayload;
      v7 = sub_10059BD54();
    }

    *(a4 + 32) = v7;
    *a4 = a1;
    *(a4 + 8) = a2;
  }

  else
  {
    *(a4 + 24) = &type metadata for AccessoryProductDataResponsePayload;
    *(a4 + 32) = sub_10059BDFC();
    *a4 = a1;
    *(a4 + 8) = a2;

    sub_100017D5C(a1, a2);
  }
}

uint64_t sub_10059A640(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for Endianness();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v19 = a4;
  v12 = sub_10059A0E8(a2, a3, a4);
  LOWORD(v20) = word_1013B2456[v12];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v9 + 8))(v11, v8);
  LOWORD(v20) = v22;
  sub_10015049C(v24, v25);
  v13 = v26;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v13)
  {
    switch(v12)
    {
      case 1u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v14 = v20;
        v15 = v21;
        v22 = v20;
        v23 = v21;
        sub_10015049C(v24, v25);
        sub_10059C0F0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v14, v15);
        return sub_100007BAC(v24);
      case 3u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v22 = v20;
        v23 = v21;
        sub_10015049C(v24, v25);
        sub_100413C7C();
        goto LABEL_23;
      case 5u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v22 = v20;
        v23 = v21;
        sub_10015049C(v24, v25);
        sub_10059C09C();
LABEL_23:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

        return sub_100007BAC(v24);
      case 7u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v22 = v20;
        sub_10015049C(v24, v25);
        sub_10059BFF4();
        goto LABEL_28;
      case 9u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10059BFA0();
        goto LABEL_28;
      case 0xBu:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10059C048();
        goto LABEL_28;
      case 0xDu:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LOBYTE(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10059BF4C();
        goto LABEL_28;
      case 0xFu:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10030FC2C();
        goto LABEL_28;
      case 0x11u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LOBYTE(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10059BEF8();
        goto LABEL_28;
      case 0x13u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LOBYTE(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10059BEA4();
        goto LABEL_28;
      case 0x15u:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v22) = v20;
        sub_10015049C(v24, v25);
        sub_10059BE50();
        goto LABEL_28;
      default:
        sub_10059A3B4(a2, a3, v19, &v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_10015049C(v24, v25);
          sub_10030FB84();
LABEL_28:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        }

        else
        {
LABEL_29:
          sub_10059BAB4();
          swift_allocError();
          *v16 = 0;
          swift_willThrow();
        }

        break;
    }
  }

  return sub_100007BAC(v24);
}

__int16 *sub_10059AE0C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10059B834(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10059AE5C(unsigned __int16 a1)
{
  if (a1 > 0x802u)
  {
    if (a1 <= 0x807u)
    {
      if (a1 <= 0x804u)
      {
        if (a1 == 2051)
        {
          return 1;
        }

        if (a1 == 2052)
        {
          return 3;
        }

        return 22;
      }

      if (a1 == 2053)
      {
        return 5;
      }

      else if (a1 == 2054)
      {
        return 7;
      }

      else
      {
        return 9;
      }
    }

    else
    {
      if (a1 > 0x80Au)
      {
        switch(a1)
        {
          case 0x80Bu:
            return 17;
          case 0x80Cu:
            return 19;
          case 0x80Du:
            return 21;
        }

        return 22;
      }

      if (a1 == 2056)
      {
        return 11;
      }

      else if (a1 == 2057)
      {
        return 13;
      }

      else
      {
        return 15;
      }
    }
  }

  else
  {
    if (a1 > 7u)
    {
      if (a1 <= 0xAu)
      {
        if (a1 == 8)
        {
          return 10;
        }

        if (a1 == 9)
        {
          return 12;
        }

        return 14;
      }

      switch(a1)
      {
        case 0xBu:
          return 16;
        case 0xCu:
          return 18;
        case 0xDu:
          return 20;
      }

      return 22;
    }

    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        return 0;
      }

      if (a1 == 4)
      {
        return 2;
      }

      return 22;
    }

    if (a1 == 5)
    {
      return 4;
    }

    else if (a1 == 6)
    {
      return 6;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10059B000(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_10059A260(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v4 == result)
  {
    switch(v3)
    {
      case 1:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_24;
      case 2:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 1;
      case 3:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_24;
        }

        goto LABEL_47;
      case 4:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 2;
      case 5:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_24;
        }

        goto LABEL_47;
      case 6:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 3;
      case 7:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_24:
        v3 = v7;
        sub_100007BAC(a2);
        return v3;
      case 8:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 4;
      case 9:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      case 10:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 6;
      case 11:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      case 12:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 5;
      case 13:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      case 14:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 9;
      case 15:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      case 16:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 7;
      case 17:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      case 18:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 8;
      case 19:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_46:
        v3 = v7;
        sub_100007BAC(a2);
        break;
      case 20:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        v3 = 10;
        break;
      case 21:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_34:
        v3 = v7;
        sub_100007BAC(a2);
        break;
      default:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v3 = 0;
        }

        else
        {
LABEL_47:
          sub_10059BAB4();
          swift_allocError();
          *v6 = 0;
          swift_willThrow();
          sub_100007BAC(a2);
        }

        break;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *sub_10059B834(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v7 = sub_10015049C(v18, v18[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
    goto LABEL_5;
  }

  v19 = v16[0];
  static Endianness.current.getter();
  v7 = &v19;
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v6, v3);
  v8 = sub_10059AE5C(v17[0]);
  if (v8 == 22)
  {
    sub_10059BAB4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
LABEL_5:
    sub_100007BAC(v18);
    sub_100007BAC(a1);
    return v7;
  }

  v10 = v8;
  v11 = sub_10059A260(v8);
  v13 = v12;
  sub_10001F280(a1, v16);
  v17[3] = v11;
  v17[4] = v13;
  sub_1000280DC(v17);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v17, v16);
  v7 = sub_10059B000(v10, v16);
  sub_100007BAC(v17);
  sub_100007BAC(v18);
  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_10059BAB4()
{
  result = qword_1016A5020;
  if (!qword_1016A5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5020);
  }

  return result;
}

unint64_t sub_10059BB08()
{
  result = qword_1016A5028;
  if (!qword_1016A5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5028);
  }

  return result;
}

unint64_t sub_10059BB5C()
{
  result = qword_1016A5030;
  if (!qword_1016A5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5030);
  }

  return result;
}

unint64_t sub_10059BBB0()
{
  result = qword_1016A5038;
  if (!qword_1016A5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5038);
  }

  return result;
}

unint64_t sub_10059BC04()
{
  result = qword_1016A5040;
  if (!qword_1016A5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5040);
  }

  return result;
}

unint64_t sub_10059BC58()
{
  result = qword_1016A5048;
  if (!qword_1016A5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5048);
  }

  return result;
}

unint64_t sub_10059BCAC()
{
  result = qword_1016A5050;
  if (!qword_1016A5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5050);
  }

  return result;
}

unint64_t sub_10059BD00()
{
  result = qword_1016A5058;
  if (!qword_1016A5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5058);
  }

  return result;
}

unint64_t sub_10059BD54()
{
  result = qword_1016A5060;
  if (!qword_1016A5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5060);
  }

  return result;
}

unint64_t sub_10059BDA8()
{
  result = qword_1016A5068;
  if (!qword_1016A5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5068);
  }

  return result;
}

unint64_t sub_10059BDFC()
{
  result = qword_1016A5070;
  if (!qword_1016A5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5070);
  }

  return result;
}

unint64_t sub_10059BE50()
{
  result = qword_1016A5078;
  if (!qword_1016A5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5078);
  }

  return result;
}

unint64_t sub_10059BEA4()
{
  result = qword_1016A5080;
  if (!qword_1016A5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5080);
  }

  return result;
}

unint64_t sub_10059BEF8()
{
  result = qword_1016A5088;
  if (!qword_1016A5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5088);
  }

  return result;
}

unint64_t sub_10059BF4C()
{
  result = qword_1016A5090;
  if (!qword_1016A5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5090);
  }

  return result;
}

unint64_t sub_10059BFA0()
{
  result = qword_1016A5098;
  if (!qword_1016A5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5098);
  }

  return result;
}

unint64_t sub_10059BFF4()
{
  result = qword_1016A50A0;
  if (!qword_1016A50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50A0);
  }

  return result;
}

unint64_t sub_10059C048()
{
  result = qword_1016A50A8;
  if (!qword_1016A50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50A8);
  }

  return result;
}

unint64_t sub_10059C09C()
{
  result = qword_1016A50B0;
  if (!qword_1016A50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50B0);
  }

  return result;
}

unint64_t sub_10059C0F0()
{
  result = qword_1016A50B8;
  if (!qword_1016A50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50B8);
  }

  return result;
}

unint64_t sub_10059C158()
{
  result = qword_1016A50C0;
  if (!qword_1016A50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50C0);
  }

  return result;
}

uint64_t sub_10059C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0);
  v4[4] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016A51B0, &unk_1013B2500);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1000BC4D4(&qword_1016A51B8, &unk_1013F8020);
  v4[12] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016A51C0, &unk_1013B2510);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[16] = v8;
  *v8 = v4;
  v8[1] = sub_10059C3EC;

  return daemon.getter();
}

uint64_t sub_10059C3EC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DistributedNotificationService();
  v6 = sub_100019468(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019468(&qword_1016A51C8, type metadata accessor for DistributedNotificationService, &unk_1013E5D40);
  *v3 = v9;
  v3[1] = sub_10059C5C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10059C5C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_10059CE4C;
  }

  else
  {

    v4 = sub_10059C6E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10059C6E4()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = sub_100B11100(&off_101609808);
  swift_arrayDestroy();
  sub_1000BC4D4(&qword_1016A51D0, &qword_1013B2520);
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  *(swift_allocObject() + 16) = v4;
  sub_10059D418();
  AsyncFilterSequence.init(_:isIncluded:)();
  AsyncFilterSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncFilterSequence.isIncluded.getter();
  AsyncFilterSequence.Iterator.init(_:isIncluded:)();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_10059C910;

  return sub_101012F80(0, 0);
}

uint64_t sub_10059C910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 176) = a1;
  *(v5 + 184) = a3;

  if (!v3)
  {

    return _swift_task_switch(sub_10059CA24, 0, 0);
  }

  return result;
}

uint64_t sub_10059CA24()
{
  v1 = v0[22];
  if (v1)
  {

    type metadata accessor for Transaction();
    v0[24] = static Transaction.$current.getter();
    v0[2] = v1;
    v2 = swift_allocObject();
    v0[25] = v2;
    swift_weakInit();

    v3 = swift_task_alloc();
    v0[26] = v3;
    sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v3 = v0;
    v3[1] = sub_10059CC48;

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v0 + 27, v0 + 2, &unk_1013B2538, v2, 0, 0, 0xD000000000000026, 0x800000010135B370);
  }

  else
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10059CC48()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10059CD98, 0, 0);
  }
}

uint64_t sub_10059CD98()
{

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_10059C910;

  return sub_101012F80(0, 0);
}

uint64_t sub_10059CE4C()
{

  if (qword_101695210 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C5D8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to register for application deleted notifications: %{public}@", v4, 0xCu);
    sub_100288C6C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10059D020(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10059D040, 0, 0);
}

uint64_t sub_10059D040()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = *(Strong + 32), *(v0 + 56) = v2, v3 = *(Strong + 40), *(v0 + 64) = v3, sub_100012908(v2, v3), , v2))
  {
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_10059D1C0;

    return v7();
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10059D1C0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);

  sub_1000BB27C(v2, v1);

  return _swift_task_switch(sub_10059D2F0, 0, 0);
}

uint64_t sub_10059D310()
{

  sub_1000BB27C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10059D37C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001BBA4C;

  return sub_100D56E98(a1, v4);
}

unint64_t sub_10059D418()
{
  result = qword_1016A51D8;
  if (!qword_1016A51D8)
  {
    sub_1000BC580(&qword_1016A51B8, &unk_1013F8020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A51D8);
  }

  return result;
}

uint64_t sub_10059D47C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10059D020(a1, v1);
}

uint64_t sub_10059D518(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for ScanRate();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for RSSIValue();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10059D678, v1, 0);
}

uint64_t sub_10059D678()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_10059DCE4(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    sub_10059DD54(v0[9]);
    type metadata accessor for CBDiscovery();
    (*(v8 + 104))(v7, enum case for ScanRate.default(_:), v9);
    (*(v5 + 104))(v4, enum case for RSSIValue.unknown(_:), v6);
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_10059DAA8;
  }

  else
  {
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[6];
    v19 = v0[7];
    (*(v16 + 32))(v14, v0[9], v15);
    type metadata accessor for CBDiscovery();
    (*(v16 + 16))(v13, v14, v15);
    (*(v19 + 104))(v17, enum case for ScanRate.default(_:), v18);
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_10059D8A4;
  }

  v11 = v0[12];
  v12 = v0[8];

  return CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(v12, v11);
}

uint64_t sub_10059D8A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_10059D9B8, v4, 0);
}

uint64_t sub_10059D9B8()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[3];
  v2 = sub_10059DDBC(&qword_1016A5298, 255, &type metadata accessor for CBDiscovery, &protocol conformance descriptor for CBDiscovery);

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_10059DAA8(uint64_t a1)
{
  v6 = *v1;

  v3 = sub_10059DDBC(&qword_1016A5298, 255, &type metadata accessor for CBDiscovery, &protocol conformance descriptor for CBDiscovery);

  v4 = *(v6 + 8);

  return v4(a1, v3);
}

uint64_t sub_10059DC8C(uint64_t a1, uint64_t a2)
{
  result = sub_10059DDBC(&qword_1016A5290, a2, type metadata accessor for BTDiscoveryManager, &unk_1013B259C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10059DCE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059DD54(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10059DDBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10059DE04(uint64_t *a1)
{
  v49 = type metadata accessor for OwnerSharingCircle(0);
  v2 = __chkstk_darwin(v49);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v47 = &v45 - v6;
  __chkstk_darwin(v5);
  v48 = &v45 - v7;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = objc_autoreleasePoolPush();
  sub_100E7AB5C(a1, v20);
  objc_autoreleasePoolPop(v21);
  sub_10059E4D4(v20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AE28);
    sub_1005C31F8(a1, v4, type metadata accessor for OwnerSharingCircle);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136315138;
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1005C32E0(v4, type metadata accessor for OwnerSharingCircle);
      v30 = sub_1000136BC(v27, v29, &v50);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error getting expiration date for the delegated share for beacon %s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_1005C32E0(v4, type metadata accessor for OwnerSharingCircle);
    }

    (*(v12 + 8))(v20, v11);
    return 0;
  }

  (*(v12 + 32))(v18, v10, v11);
  static Date.trustedNow.getter(v15);
  sub_1000194B0(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  v32 = *(v12 + 8);
  v32(v15, v11);
  if (v31)
  {
    v32(v18, v11);
    v32(v20, v11);
    return 0;
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177AE28);
  v35 = v48;
  sub_1005C31F8(a1, v48, type metadata accessor for OwnerSharingCircle);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v38 = 136315138;
    sub_1005C31F8(v35, v47, type metadata accessor for OwnerSharingCircle);
    v39 = String.init<A>(describing:)();
    v40 = v35;
    v41 = v39;
    v43 = v42;
    sub_1005C32E0(v40, type metadata accessor for OwnerSharingCircle);
    v44 = sub_1000136BC(v41, v43, &v50);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Expired delegated share: %s", v38, 0xCu);
    sub_100007BAC(v46);
  }

  else
  {

    sub_1005C32E0(v35, type metadata accessor for OwnerSharingCircle);
  }

  v32(v18, v11);
  v32(v20, v11);
  return 1;
}

uint64_t sub_10059E4D4(uint64_t a1)
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
  sub_101074BF4(v13[1]);
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

uint64_t sub_10059E754(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for DelegatedShareUseCase.ShareCreationData(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[35] = v6;
  v2[36] = *(v6 + 64);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_10059EA84, v1, 0);
}

uint64_t sub_10059EA84()
{
  v1 = v0[38];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[9];
  v5 = *(v0[10] + 168);
  v0[39] = v5;
  v6 = *(v3 + 16);
  v0[40] = v6;
  v0[41] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_10059EB48, v5, 0);
}

uint64_t sub_10059EB48()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  sub_1000D2A70(v0[38], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[42] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[43] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_10059ECC4;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v9);
}

uint64_t sub_10059ECC4()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_10059EDF0, v1, 0);
}

uint64_t sub_10059EDF0()
{
  v1 = v0[10];
  sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
  v0[44] = v0[7];

  return _swift_task_switch(sub_10059EE74, v1, 0);
}

uint64_t sub_10059EE74()
{
  v34 = v0;
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  *(v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v3 + 80);
    *(v0 + 568) = v4;
    v5 = *(v3 + 72);
    *(v0 + 376) = 0;
    *(v0 + 384) = _swiftEmptyArrayStorage;
    *(v0 + 368) = v5;
    sub_1005C31F8(v1 + ((v4 + 32) & ~v4), *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v6 = swift_task_alloc();
    *(v0 + 392) = v6;
    *v6 = v0;
    v6[1] = sub_10059F30C;
    v7 = *(v0 + 272);
    v8 = *(v0 + 240);

    return sub_1005B2110(v8, v7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];

    if (v10)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 320);
      v12 = *(v0 + 176);
      v13 = *(v0 + 136);
      v14 = *(v0 + 72);
      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177AE28);
      v11(v12, v14, v13);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 176);
      v20 = *(v0 + 136);
      v21 = *(v0 + 144);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v33 = v23;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        (*(v21 + 8))(v19, v20);
        v27 = sub_1000136BC(v24, v26, &v33);

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v16, v17, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v22, 0x16u);
        sub_100007BAC(v23);
      }

      else
      {

        (*(v21 + 8))(v19, v20);
      }

      v32 = *(v0 + 352);

      v31 = *(v0 + 8);

      return v31(v32);
    }

    else
    {
      v28 = swift_task_alloc();
      *(v0 + 408) = v28;
      *v28 = v0;
      v28[1] = sub_10059F9A0;
      v29 = *(v0 + 208);
      v30 = *(v0 + 72);

      return sub_1005A3130(v29, v30);
    }
  }
}

uint64_t sub_10059F30C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = sub_1005A12E4;
  }

  else
  {
    v5 = v2[10];
    (*(v2[29] + 8))(v2[30], v2[28]);
    v4 = sub_10059F444;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10059F444()
{
  v37 = v0;
  sub_1005C31F8(*(v0 + 272), *(v0 + 264), type metadata accessor for OwnerSharingCircle);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 384);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5BC94(0, v2[2] + 1, 1, *(v0 + 384));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5BC94((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 368);
  v6 = *(v0 + 264);
  v7 = (*(v0 + 568) + 32) & ~*(v0 + 568);
  sub_1005C32E0(*(v0 + 272), type metadata accessor for OwnerSharingCircle);
  v2[2] = v4 + 1;
  sub_1005C3260(v6, v2 + v7 + v5 * v4, type metadata accessor for OwnerSharingCircle);
  v8 = *(v0 + 376) + 1;
  if (v8 == *(v0 + 360))
  {
    v9 = v2[2];

    if (v9)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 320);
      v11 = *(v0 + 176);
      v12 = *(v0 + 136);
      v13 = *(v0 + 72);
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177AE28);
      v10(v11, v13, v12);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 176);
      v19 = *(v0 + 136);
      v20 = *(v0 + 144);
      if (v17)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v22;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        (*(v20 + 8))(v18, v19);
        v26 = sub_1000136BC(v23, v25, &v36);

        *(v21 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v15, v16, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v21, 0x16u);
        sub_100007BAC(v22);
      }

      else
      {

        (*(v20 + 8))(v18, v19);
      }

      v35 = *(v0 + 352);

      v34 = *(v0 + 8);

      return v34(v35);
    }

    else
    {
      v31 = swift_task_alloc();
      *(v0 + 408) = v31;
      *v31 = v0;
      v31[1] = sub_10059F9A0;
      v32 = *(v0 + 208);
      v33 = *(v0 + 72);

      return sub_1005A3130(v32, v33);
    }
  }

  else
  {
    *(v0 + 376) = v8;
    *(v0 + 384) = v2;
    sub_1005C31F8(*(v0 + 352) + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 368) * v8, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v27 = swift_task_alloc();
    *(v0 + 392) = v27;
    *v27 = v0;
    v27[1] = sub_10059F30C;
    v28 = *(v0 + 272);
    v29 = *(v0 + 240);

    return sub_1005B2110(v29, v28);
  }
}

uint64_t sub_10059F9A0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);

    v4 = sub_1005A22C0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 80);
    v4 = sub_10059FAC8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10059FAC8()
{
  v1 = v0[27];
  sub_1005C3260(v0[26], v1, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v2 = *(v1 + 8);
  v0[53] = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0[31] + 80);
    sub_1005C31F8(v2 + ((v4 + 32) & ~v4), v0[32], type metadata accessor for OwnerSharingCircle);
    if (v3 == 1)
    {
      v5 = swift_task_alloc();
      v0[54] = v5;
      *v5 = v0;
      v5[1] = sub_10059FE8C;
      v6 = v0[27];

      return sub_1005A43A0(v6);
    }

    v8 = v0[32];

    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
  }

  else
  {
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v9 = v0[27];
  v10 = v0[25];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177AE28);
  sub_1005C31F8(v9, v10, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[25];
  if (v14)
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v17 = *(*(v15 + 8) + 16);
    sub_1005C32E0(v15, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
    *(v16 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "incorrect number of delegation circles are being created: %ld", v16, 0xCu);
  }

  else
  {
    sub_1005C32E0(v0[25], type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  }

  v18 = v0[27];

  sub_1005C32E0(v18, type metadata accessor for DelegatedShareUseCase.ShareCreationData);

  v19 = v0[1];

  return v19(_swiftEmptyArrayStorage);
}

uint64_t sub_10059FE8C()
{
  v2 = *v1;
  *(v2 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);

    return _swift_task_switch(sub_1005A2668, v3, 0);
  }

  else
  {
    v4 = **(v2 + 216);
    v5 = swift_task_alloc();
    *(v2 + 448) = v5;
    *v5 = v2;
    v5[1] = sub_1005A001C;

    return sub_1005AFF60(v4);
  }
}

uint64_t sub_1005A001C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1005A0774;
  }

  else
  {
    v4 = sub_1005A0148;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1005A0148()
{
  v52 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 256);
  v3 = *(v0 + 120);
  v4 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v2, v3);
  if (v1)
  {

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);

    type metadata accessor for DelegatedShareUseCase();
    objc_autoreleasePoolPop(v4);
    sub_10059E4D4(v5);
    v9 = *(v6 + 8);
    *(v0 + 464) = v9;
    *(v0 + 472) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    if ((*(v6 + 48))(v8, 1, v7) == 1)
    {
      sub_10000B3A8(*(v0 + 96), &unk_101696900, &unk_10138B1E0);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 320);
      v12 = *(v0 + 184);
      v13 = *(v0 + 136);
      v14 = *(v0 + 72);
      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177AE28);
      v11(v12, v14, v13);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 184);
      v21 = *(v0 + 136);
      v20 = *(v0 + 144);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v51 = v49;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v15;
        v26 = v25;
        (*(v20 + 8))(v19, v21);
        v27 = v23;
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
        v28 = sub_1000136BC(v27, v26, &v51);
        v15 = v24;

        *(v22 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "Invalid expiration date while creating delegated share for beacon %{private,mask.hash}s", v22, 0x16u);
        sub_100007BAC(v49);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }

      sub_1005C3340();
      v40 = swift_allocError();
      *v41 = 9;
      swift_willThrow();
      *(v0 + 528) = v40;
      if (p_weak_ivar_lyt[239] != -1)
      {
        swift_once();
      }

      *(v0 + 536) = sub_1000076D4(v15, qword_10177AE28);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543362;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v46;
        *v45 = v46;
        _os_log_impl(&_mh_execute_header, v42, v43, "Failure on delegate share create, server share creation: %{public}@", v44, 0xCu);
        sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);
      }

      v47 = swift_task_alloc();
      *(v0 + 544) = v47;
      *v47 = v0;
      v47[1] = sub_1005A2958;
      v48 = *(v0 + 216);

      sub_1005A51DC(v48);
    }

    else
    {
      v29 = *(v0 + 128);
      v30 = *(v0 + 104);
      v31 = *(v0 + 112);
      v32 = *(v0 + 88);
      v33 = *(v0 + 80);
      (*(v31 + 32))(v29, *(v0 + 96), v30);
      v50 = *(v33 + 136);
      v34 = *(v33 + 136);
      v35 = sub_1000035D0((v33 + 112), v34);
      *(v0 + 40) = v50;
      v36 = sub_1000280DC((v0 + 16));
      (*(*(v34 - 8) + 16))(v36, v35, v34);
      (*(v31 + 16))(v32, v29, v30);
      (*(v31 + 56))(v32, 0, 1, v30);
      v37 = swift_task_alloc();
      *(v0 + 480) = v37;
      *v37 = v0;
      v37[1] = sub_1005A0FE0;
      v38 = *(v0 + 256);
      v39 = *(v0 + 88);

      sub_1012AC360(v38, v33 + 176, v0 + 16, v39);
    }
  }
}

uint64_t sub_1005A0774()
{
  v67 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  v4 = *(v0 + 72);
  v64 = type metadata accessor for Logger();
  sub_1000076D4(v64, qword_10177AE28);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v66[0] = v63;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_1000136BC(v12, v14, v66);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v62 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to backup secrets to disk for beacon %{private,mask.hash}s, %{public}@.", v11, 0x20u);
    sub_10000B3A8(v62, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v63);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = *(v0 + 256);
  v18 = *(v0 + 120);
  v19 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v17, v18);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);

  type metadata accessor for DelegatedShareUseCase();
  objc_autoreleasePoolPop(v19);
  sub_10059E4D4(v21);
  v24 = *(v20 + 8);
  *(v0 + 464) = v24;
  *(v0 + 472) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v21, v22);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_10000B3A8(*(v0 + 96), &unk_101696900, &unk_10138B1E0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 320);
    v26 = *(v0 + 184);
    v27 = *(v0 + 136);
    v28 = *(v0 + 72);
    sub_1000076D4(v64, qword_10177AE28);
    v25(v26, v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 184);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66[0] = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v33 + 8))(v32, v34);
      v40 = sub_1000136BC(v37, v39, v66);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Invalid expiration date while creating delegated share for beacon %{private,mask.hash}s", v35, 0x16u);
      sub_100007BAC(v36);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    sub_1005C3340();
    v53 = swift_allocError();
    *v54 = 9;
    swift_willThrow();
    *(v0 + 528) = v53;
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    *(v0 + 536) = sub_1000076D4(v64, qword_10177AE28);
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138543362;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failure on delegate share create, server share creation: %{public}@", v57, 0xCu);
      sub_10000B3A8(v58, &qword_10169BB30, &unk_10138B3C0);
    }

    v60 = swift_task_alloc();
    *(v0 + 544) = v60;
    *v60 = v0;
    v60[1] = sub_1005A2958;
    v61 = *(v0 + 216);

    return sub_1005A51DC(v61);
  }

  else
  {
    v41 = *(v0 + 128);
    v42 = *(v0 + 104);
    v43 = *(v0 + 112);
    v44 = *(v0 + 88);
    v45 = *(v0 + 80);
    (*(v43 + 32))(v41, *(v0 + 96), v42);
    v65 = *(v45 + 136);
    v46 = *(v45 + 136);
    v47 = sub_1000035D0((v45 + 112), v46);
    *(v0 + 40) = v65;
    v48 = sub_1000280DC((v0 + 16));
    (*(*(v46 - 8) + 16))(v48, v47, v46);
    (*(v43 + 16))(v44, v41, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v49 = swift_task_alloc();
    *(v0 + 480) = v49;
    *v49 = v0;
    v49[1] = sub_1005A0FE0;
    v50 = *(v0 + 256);
    v51 = *(v0 + 88);

    return sub_1012AC360(v50, v45 + 176, v0 + 16, v51);
  }
}

uint64_t sub_1005A0FE0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = v2[10];
    sub_10000B3A8(v2[11], &unk_101696900, &unk_10138B1E0);
    v4 = sub_1005A2DA8;
  }

  else
  {
    v3 = v2[10];
    sub_10000B3A8(v2[11], &unk_101696900, &unk_10138B1E0);
    sub_100007BAC(v2 + 2);
    v4 = sub_1005A112C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005A112C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  (*(v0 + 464))(*(v0 + 128), *(v0 + 104));
  sub_1005C32E0(v1, type metadata accessor for OwnerSharingCircle);

  sub_1005C32E0(v2, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v5 = *(v0 + 424);

  v3 = *(v0 + 8);

  return v3(v5);
}

uint64_t sub_1005A12E4()
{
  v27 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  v0[62] = sub_1000076D4(v5, qword_10177AE28);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v10 = v0[17];
    v9 = v0[18];
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v24 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting share for beacon %{private,mask.hash}s with integrity error %{public}@.", v11, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v18 = v0[21];
    v19 = v0[17];
    v20 = v0[18];

    v15 = *(v20 + 8);
    v15(v18, v19);
  }

  v0[63] = v15;
  v21 = swift_task_alloc();
  v0[64] = v21;
  *v21 = v0;
  v21[1] = sub_1005A15FC;
  v22 = v0[34];

  return sub_1005B56F8(v22, 0, 0, 3);
}

uint64_t sub_1005A15FC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1005A1BD8;
  }

  else
  {
    v4 = sub_1005A1728;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005A1728()
{
  v31 = v0;
  v1 = *(v0 + 272);

  sub_1005C32E0(v1, type metadata accessor for OwnerSharingCircle);
  v2 = *(v0 + 376) + 1;
  if (v2 == *(v0 + 360))
  {
    v3 = *(*(v0 + 384) + 16);

    if (v3)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 320);
      v5 = *(v0 + 176);
      v6 = *(v0 + 136);
      v7 = *(v0 + 72);
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177AE28);
      v4(v5, v7, v6);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 176);
      v13 = *(v0 + 136);
      v14 = *(v0 + 144);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v30 = v16;
        *v15 = 141558275;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v14 + 8))(v12, v13);
        v20 = sub_1000136BC(v17, v19, &v30);

        *(v15 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v9, v10, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v15, 0x16u);
        sub_100007BAC(v16);
      }

      else
      {

        (*(v14 + 8))(v12, v13);
      }

      v29 = *(v0 + 352);

      v28 = *(v0 + 8);

      return v28(v29);
    }

    else
    {
      v25 = swift_task_alloc();
      *(v0 + 408) = v25;
      *v25 = v0;
      v25[1] = sub_10059F9A0;
      v26 = *(v0 + 208);
      v27 = *(v0 + 72);

      return sub_1005A3130(v26, v27);
    }
  }

  else
  {
    *(v0 + 376) = v2;
    sub_1005C31F8(*(v0 + 352) + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 368) * v2, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v21 = swift_task_alloc();
    *(v0 + 392) = v21;
    *v21 = v0;
    v21[1] = sub_10059F30C;
    v22 = *(v0 + 272);
    v23 = *(v0 + 240);

    return sub_1005B2110(v23, v22);
  }
}

uint64_t sub_1005A1BD8()
{
  v47 = v0;
  (*(v0 + 320))(*(v0 + 160), *(v0 + 72), *(v0 + 136));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 504);
  v5 = *(v0 + 272);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  if (v3)
  {
    v44 = *(v0 + 272);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v4(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v46);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to delete share for beacon %{private,mask.hash}s with integrity error %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v43);

    v15 = v44;
  }

  else
  {

    v4(v6, v7);
    v15 = v5;
  }

  sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
  v16 = *(v0 + 376) + 1;
  if (v16 == *(v0 + 360))
  {
    v17 = *(*(v0 + 384) + 16);

    if (v17)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 320);
      v19 = *(v0 + 176);
      v20 = *(v0 + 136);
      v21 = *(v0 + 72);
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177AE28);
      v18(v19, v21, v20);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 176);
      v27 = *(v0 + 136);
      v28 = *(v0 + 144);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v46 = v30;
        *v29 = 141558275;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v28 + 8))(v26, v27);
        v34 = sub_1000136BC(v31, v33, &v46);

        *(v29 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v29, 0x16u);
        sub_100007BAC(v30);
      }

      else
      {

        (*(v28 + 8))(v26, v27);
      }

      v45 = *(v0 + 352);

      v42 = *(v0 + 8);

      return v42(v45);
    }

    else
    {
      v39 = swift_task_alloc();
      *(v0 + 408) = v39;
      *v39 = v0;
      v39[1] = sub_10059F9A0;
      v40 = *(v0 + 208);
      v41 = *(v0 + 72);

      return sub_1005A3130(v40, v41);
    }
  }

  else
  {
    *(v0 + 376) = v16;
    sub_1005C31F8(*(v0 + 352) + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 368) * v16, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v35 = swift_task_alloc();
    *(v0 + 392) = v35;
    *v35 = v0;
    v35[1] = sub_10059F30C;
    v36 = *(v0 + 272);
    v37 = *(v0 + 240);

    return sub_1005B2110(v37, v36);
  }
}

uint64_t sub_1005A22C0()
{
  v25 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on delegated share create for %{private,mask.hash}s, data preparing: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[17];

    (*(v19 + 8))(v18, v20);
  }

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005A2668()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share create, iCloud data update: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[32];
  v8 = v0[27];

  sub_1005C3340();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();

  sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
  sub_1005C32E0(v8, type metadata accessor for DelegatedShareUseCase.ShareCreationData);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005A2958()
{
  v2 = *v1;
  v2[69] = v0;

  if (v0)
  {
    v3 = v2[10];

    return _swift_task_switch(sub_1005A2F90, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[70] = v4;
    *v4 = v2;
    v4[1] = sub_1005A2ACC;
    v5 = v2[27];

    return sub_1005A7390(v5);
  }
}

uint64_t sub_1005A2ACC()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1005A2BDC, v1, 0);
}

uint64_t sub_1005A2BDC(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[27];
  sub_1005C3340();
  swift_allocError();
  *v4 = 2;
  swift_willThrow();

  sub_1005C32E0(v2, type metadata accessor for OwnerSharingCircle);
  sub_1005C32E0(v3, type metadata accessor for DelegatedShareUseCase.ShareCreationData);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1005A2DA8()
{
  (*(v0 + 464))(*(v0 + 128), *(v0 + 104));
  sub_100007BAC((v0 + 16));
  *(v0 + 528) = *(v0 + 488);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 536) = sub_1000076D4(v1, qword_10177AE28);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on delegate share create, server share creation: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = swift_task_alloc();
  *(v0 + 544) = v7;
  *v7 = v0;
  v7[1] = sub_1005A2958;
  v8 = *(v0 + 216);

  return sub_1005A51DC(v8);
}

uint64_t sub_1005A2F90()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on delegate share create,\niCloud data rollback on share creation failure: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  *(v0 + 560) = v6;
  *v6 = v0;
  v6[1] = sub_1005A2ACC;
  v7 = *(v0 + 216);

  return sub_1005A7390(v7);
}

uint64_t sub_1005A3130(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for BeaconNamingRecord(0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v3[21] = *(v8 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005A33F0, v2, 0);
}

uint64_t sub_1005A33F0()
{
  v1 = *(v0[6] + 168);
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1005A34A4;

  return sub_1012A9B90(3, v1);
}

uint64_t sub_1005A34A4(__int16 a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 308) = a1;

  return _swift_task_switch(sub_1005A35BC, v2, 0);
}

uint64_t sub_1005A35BC()
{
  v1 = *(v0 + 308);
  if (v1 & 0x100) != 0 || (v1)
  {
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 18;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000194B0(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v2 = *(v0 + 224);

    return _swift_task_switch(sub_1005A3760, v2, 0);
  }
}

uint64_t sub_1005A3760()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 40);
  v6 = *(v4 + 16);
  *(v0 + 240) = v6;
  *(v0 + 248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = *(v4 + 80);
  *(v0 + 304) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  *(v9 + 16) = v1;
  v10 = *(v4 + 32);
  *(v0 + 264) = v10;
  *(v0 + 272) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v3);

  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v11[1] = sub_1005A38E0;
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3674, v9, v13);
}

uint64_t sub_1005A38E0()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1005A3A0C, v1, 0);
}

uint64_t sub_1005A3A0C()
{
  v1 = v0[24];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1005C3340();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[28];
    sub_1005C3260(v1, v0[27], type metadata accessor for OwnedBeaconRecord);

    return _swift_task_switch(sub_1005A3BB0, v5, 0);
  }
}

uint64_t sub_1005A3BB0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = (*(v0 + 304) + 24) & ~*(v0 + 304);
  (*(v0 + 240))(v3, *(v0 + 40), v4);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1005A3CFC;
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1005C368C, v6, v9);
}

uint64_t sub_1005A3CFC()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1005A3E28, v1, 0);
}

uint64_t sub_1005A3E28()
{
  v35 = v0;
  v1 = v0[15];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    sub_1005C32E0(v0[27], type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    sub_1005C3340();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();

    v25 = v0[1];
  }

  else
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    sub_1005C3260(v1, v0[18], type metadata accessor for BeaconNamingRecord);
    v33 = v5[5];
    UUID.init()();
    type metadata accessor for PeerCommunicationIdentifier(0);
    swift_storeEnumTagMultiPayload();
    sub_1005CAD68(&v34);
    *v3 = xmmword_10138C660;
    *(v3 + v5[6]) = 1;
    v6 = (v3 + v5[8]);
    *v6 = 6448503;
    v6[1] = 0xE300000000000000;
    *(v3 + v5[9]) = v34;
    *(v3 + v5[10]) = 1;
    sub_1005C31F8(v3, v4, type metadata accessor for OwnerPeerTrust);
    v7 = sub_100A5C1D0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100A5C1D0((v8 > 1), v9 + 1, 1, v7);
    }

    v32 = v0[33];
    v31 = v0[30];
    v10 = v0[22];
    v11 = v0[19];
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[5];
    v7[2] = v9 + 1;
    sub_1005C3260(v12, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9, type metadata accessor for OwnerPeerTrust);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34 = _swiftEmptyDictionarySingleton;
    sub_100FFB6DC(1, v3 + v33, isUniquelyReferenced_nonNull_native);
    v18 = v34;
    sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v21 = (v20 + v19);
    UUID.init()();
    v31(&v21[v15[6]], v16, v11);
    *v21 = xmmword_10138C660;
    result = v32(&v21[v15[5]], v10, v11);
    v21[v15[7]] = 3;
    *&v21[v15[8]] = v18;
    v21[v15[9]] = 1;
    if (!*(v20 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1005C31F8(v21, v0[9], type metadata accessor for OwnerSharingCircle);
    v23 = sub_1006544D8();
    v24 = v0[27];
    v26 = v23;
    v27 = v0[18];
    v28 = v0[13];
    v29 = v0[4];
    sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
    sub_1005C32E0(v28, type metadata accessor for OwnerPeerTrust);
    v30 = type metadata accessor for DelegatedShareUseCase.ShareCreationData(0);
    sub_1005C3260(v24, v29 + *(v30 + 28), type metadata accessor for OwnedBeaconRecord);
    sub_1005C3260(v27, v29 + *(v30 + 32), type metadata accessor for BeaconNamingRecord);
    *v29 = v26;
    v29[1] = v20;
    v29[2] = v7;

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_1005A43A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OwnerPeerTrust(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1005A450C, v1, 0);
}

uint64_t sub_1005A450C()
{
  v1 = *(*(v0 + 24) + 168);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_1005A4530, v1, 0);
}

uint64_t sub_1005A4558()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1005A4634;
  v2 = *(v0 + 112);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_1005A4634()
{

  return _swift_task_switch(sub_1005A4730, 0, 0);
}

uint64_t sub_1005A474C()
{
  v1 = v0[12];
  v2 = v0[2];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_1005C3658, v1);

  v3 = v0[13];

  return _swift_task_switch(sub_1005A4870, v3, 0);
}

uint64_t sub_1005A4898()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1005A4990;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_1005A4990()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1005A50BC;
  }

  else
  {

    v2 = sub_1005A4AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1005A4AC8()
{
  v43 = v0;
  v1 = v0[2];
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v3)
  {
    v5 = 0;
    v40 = v0[9];
    v38 = *(v1 + 8);
    while (v5 < *(v2 + 16))
    {
      sub_1005C31F8(v2 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v5, v0[11], type metadata accessor for OwnerSharingCircle);
      if (p_weak_ivar_lyt[239] != -1)
      {
        swift_once();
      }

      v7 = v0[10];
      v6 = v0[11];
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177AE28);
      sub_1005C31F8(v6, v7, type metadata accessor for OwnerSharingCircle);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[10];
      if (v11)
      {
        v13 = v3;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v42 = v15;
        *v14 = 141558275;
        *(v14 + 4) = 1752392040;
        *(v14 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
        v19 = sub_1000136BC(v16, v18, &v42);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v9, v10, "Data update on share creation. Create %{private,mask.hash}s", v14, 0x16u);
        sub_100007BAC(v15);

        v3 = v13;
        v2 = v38;
      }

      else
      {

        sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
      }

      ++v5;
      sub_1005C32E0(v0[11], type metadata accessor for OwnerSharingCircle);
      if (v3 == v5)
      {
        v1 = v0[2];
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_11:
  v20 = *(v1 + 16);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v41 = v0[5];
    v39 = *(v1 + 16);
    while (v22 < *(v20 + 16))
    {
      sub_1005C31F8(v20 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, v0[7], type metadata accessor for OwnerPeerTrust);
      if (p_weak_ivar_lyt[239] != -1)
      {
        swift_once();
      }

      v24 = v0[6];
      v23 = v0[7];
      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177AE28);
      sub_1005C31F8(v23, v24, type metadata accessor for OwnerPeerTrust);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[6];
      if (v28)
      {
        v30 = v21;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v42 = v32;
        *v31 = 141558275;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        sub_1005C32E0(v29, type metadata accessor for OwnerPeerTrust);
        v36 = sub_1000136BC(v33, v35, &v42);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v31 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v26, v27, "Data update on peer trust creation. Create %{private,mask.hash}s", v31, 0x16u);
        sub_100007BAC(v32);

        v21 = v30;
        v20 = v39;
      }

      else
      {

        sub_1005C32E0(v29, type metadata accessor for OwnerPeerTrust);
      }

      ++v22;
      sub_1005C32E0(v0[7], type metadata accessor for OwnerPeerTrust);
      if (v21 == v22)
      {
        goto LABEL_20;
      }
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_20:
  sub_10000B3A8(v0[12], &qword_1016975C8, &qword_10138C1F0);

  v37 = v0[1];

  v37();
}

uint64_t sub_1005A50BC()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1005A5128, v1, 0);
}

uint64_t sub_1005A5128()
{
  sub_10000B3A8(*(v0 + 96), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005A51DC(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[29] = v5;
  v6 = *(v5 - 8);
  v2[30] = v6;
  v2[31] = *(v6 + 64);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1005A53DC, v1, 0);
}

uint64_t sub_1005A53DC()
{
  v1 = *(v0[16] + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[30];
    v4 = v0[25];
    v17 = v0[24];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[34];
      v8 = v0[28];
      v7 = v0[29];
      sub_1005C31F8(v5, v8, type metadata accessor for OwnerPeerTrust);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_1005C32E0(v8, type metadata accessor for OwnerPeerTrust);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[34];
      v12 = v0[29];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[17];
  v0[35] = sub_10000954C(_swiftEmptyArrayStorage);

  v14 = *(v13 + 168);
  v0[36] = v14;

  return _swift_task_switch(sub_1005A55B8, v14, 0);
}

uint64_t sub_1005A55B8()
{

  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v1 = v0;
  v1[1] = sub_1005A56A4;
  v3 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v3, v2);
}

uint64_t sub_1005A56A4()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1005A57BC, v1, 0);
}

uint64_t sub_1005A57BC()
{
  v1 = v0[17];
  v0[38] = v0[11];
  return _swift_task_switch(sub_1005A57E0, v1, 0);
}

uint64_t sub_1005A57E0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[38];
  v39 = *(v4 + 16);
  if (v39)
  {
    v5 = 0;
    v37 = v3[25];
    v45 = v3[35];
    v43 = v45 + 56;
    v35 = v3[30];
    v36 = _swiftEmptyArrayStorage;
    v38 = v3[38];
    while (v5 < *(v4 + 16))
    {
      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v42 = v5;
      v40 = *(v37 + 72);
      sub_1005C31F8(v3[38] + v41 + v40 * v5, v3[27], type metadata accessor for OwnerPeerTrust);
      if (*(v45 + 16) && (sub_1000194B0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v6 = dispatch thunk of Hashable._rawHashValue(seed:)(), v7 = -1 << *(v45 + 32), v8 = v6 & ~v7, ((*(v43 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
      {
        v9 = ~v7;
        v10 = *(v35 + 72);
        v11 = *(v35 + 16);
        while (1)
        {
          v12 = v3[33];
          v13 = v3[29];
          v11(v12, *(v45 + 48) + v8 * v10, v13);
          sub_1000194B0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v14 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v35 + 8))(v12, v13);
          if (v14)
          {
            break;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v43 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1005C3260(v3[27], v3[26], type metadata accessor for OwnerPeerTrust);
        v15 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011242A4(0, v36[2] + 1, 1);
          v15 = v36;
        }

        v17 = v15[2];
        v16 = v15[3];
        if (v17 >= v16 >> 1)
        {
          sub_1011242A4((v16 > 1), v17 + 1, 1);
          v15 = v36;
        }

        v18 = v3[26];
        v15[2] = v17 + 1;
        v36 = v15;
        a1 = sub_1005C3260(v18, v15 + v41 + v17 * v40, type metadata accessor for OwnerPeerTrust);
      }

      else
      {
LABEL_3:
        a1 = sub_1005C32E0(v3[27], type metadata accessor for OwnerPeerTrust);
      }

      v5 = v42 + 1;
      v4 = v38;
      if (v42 + 1 == v39)
      {
        v19 = v36;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_19:
    v3[39] = v19;
    v20 = v3[16];

    v21 = *(v20 + 8);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v3[30];
      v24 = v3[20];
      v46 = v3[19];
      sub_101123D4C(0, v22, 0);
      v25 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v44 = *(v24 + 72);
      do
      {
        v26 = v3[32];
        v27 = v3[29];
        v28 = v3[23];
        sub_1005C31F8(v25, v28, type metadata accessor for OwnerSharingCircle);
        (*(v23 + 16))(v26, v28 + *(v46 + 20), v27);
        sub_1005C32E0(v28, type metadata accessor for OwnerSharingCircle);
        v30 = _swiftEmptyArrayStorage[2];
        v29 = _swiftEmptyArrayStorage[3];
        if (v30 >= v29 >> 1)
        {
          sub_101123D4C((v29 > 1), v30 + 1, 1);
        }

        v31 = v3[32];
        v32 = v3[29];
        _swiftEmptyArrayStorage[2] = v30 + 1;
        (*(v23 + 32))(_swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30, v31, v32);
        v25 += v44;
        --v22;
      }

      while (v22);
    }

    v33 = v3[36];
    v3[40] = sub_10000954C(_swiftEmptyArrayStorage);

    v3[12] = _swiftEmptyArrayStorage;
    v3[13] = _swiftEmptyArrayStorage;
    a1 = sub_1005A5CE4;
    a2 = v33;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1005A5CE4()
{

  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_1005A5DD0;
  v3 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_1005A5DD0()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1005A5EE8, v1, 0);
}

uint64_t sub_1005A5EE8()
{
  v1 = v0[17];
  v0[42] = v0[14];
  return _swift_task_switch(sub_1005A5F0C, v1, 0);
}

uint64_t sub_1005A5F0C()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  *(v0 + 344) = v2;
  if (!v2)
  {
LABEL_17:

    *(v0 + 408) = _swiftEmptyArrayStorage;
    v29 = *(v0 + 312);
    type metadata accessor for ChangeSetAdaptor();
    v30 = swift_allocObject();
    *(v30 + 16) = _swiftEmptyDictionarySingleton;
    *(v30 + 24) = _swiftEmptyDictionarySingleton;
    v31 = v30 + 24;

    sub_1005C2DF4(v32, &off_101658FC0, v29, (v0 + 96), (v0 + 104));

    swift_beginAccess();
    if (!*(*(v30 + 16) + 16))
    {
      swift_beginAccess();
      if ((*v31 & 0xC000000000000001) != 0)
      {

        v33 = __CocoaDictionary.count.getter();

        if (v33)
        {
          goto LABEL_20;
        }
      }

      else if (*(*v31 + 16))
      {
        goto LABEL_20;
      }

      v44 = *(v0 + 144);

      v45 = type metadata accessor for CloudKitChangeSet(0);
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      goto LABEL_21;
    }

LABEL_20:
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v36 = *(v0 + 240);
    v37 = *(v0 + 144);
    UUID.init()();
    swift_beginAccess();

    v40 = sub_1003A8B54(v38, v39);

    v41 = *(v30 + 16);

    (*(v36 + 32))(v37, v34, v35);
    v42 = type metadata accessor for CloudKitChangeSet(0);
    *(v37 + *(v42 + 20)) = v40;
    *(v37 + *(v42 + 24)) = v41;
    (*(*(v42 - 8) + 56))(v37, 0, 1, v42);
LABEL_21:
    v43 = *(v0 + 288);

    v27 = sub_1005A6E94;
    v28 = v43;
    goto LABEL_22;
  }

  *(v0 + 448) = *(*(v0 + 160) + 80);
  *(v0 + 352) = 0;
  if (*(v1 + 16))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v0 + 320);
      v47 = *(*(v0 + 160) + 72);
      sub_1005C31F8(v1 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v47 * v3, *(v0 + 176), type metadata accessor for OwnerSharingCircle);
      if (*(v4 + 16))
      {
        v5 = *(v0 + 320);
        *(v0 + 452) = *(*(v0 + 152) + 20);
        sub_1000194B0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v7 = -1 << *(v5 + 32);
        v8 = v6 & ~v7;
        if ((*(v5 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
        {
          break;
        }
      }

LABEL_9:
      v19 = *(v0 + 344);
      v20 = *(v0 + 352) + 1;
      sub_1005C32E0(*(v0 + 176), type metadata accessor for OwnerSharingCircle);
      if (v20 == v19)
      {
        goto LABEL_17;
      }

      v3 = *(v0 + 352) + 1;
      *(v0 + 352) = v3;
      v1 = *(v0 + 336);
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }
    }

    v9 = ~v7;
    v10 = *(v0 + 240);
    v11 = *(v10 + 72);
    v12 = *(v10 + 16);
    *(v0 + 360) = v12;
    v13 = *(v0 + 320);
    while (1)
    {
      v14 = *(v0 + 264);
      v15 = *(v0 + 232);
      v16 = *(v0 + 240);
      v17 = *(v13 + 48) + v8 * v11;
      *(v0 + 368) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v14, v17, v15);
      sub_1000194B0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 + 8))(v14, v15);
      if (v18)
      {
        break;
      }

      v13 = *(v0 + 320);
      v8 = (v8 + 1) & v9;
      if (((*(v13 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  sub_1005C31F8(*(v0 + 176), *(v0 + 168), type metadata accessor for OwnerSharingCircle);
  v21 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_100A5BC94(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_100A5BC94((v22 > 1), v23 + 1, 1, v21);
  }

  *(v0 + 376) = v21;
  v24 = *(v0 + 288);
  v25 = *(v0 + 168);
  v26 = (*(v0 + 448) + 32) & ~*(v0 + 448);
  v21[2] = v23 + 1;
  sub_1005C3260(v25, v21 + v26 + v23 * v47, type metadata accessor for OwnerSharingCircle);
  *(v0 + 96) = v21;
  v27 = sub_1005A657C;
  v28 = v24;
LABEL_22:

  return _swift_task_switch(v27, v28, 0);
}

uint64_t sub_1005A657C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 232);
  (*(v0 + 360))(v2, *(v0 + 176) + *(v0 + 452), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 384) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_1005A66EC;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1005C35B8, v6, v8);
}

uint64_t sub_1005A66EC()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1005A6818, v1, 0);
}

uint64_t sub_1005A6818()
{
  v1 = v0[17];
  v0[50] = v0[15];
  return _swift_task_switch(sub_1005A683C, v1, 0);
}

uint64_t sub_1005A683C()
{
  sub_1003980F8(*(v0 + 400));
  v47 = *(v0 + 376);
  while (1)
  {
LABEL_2:
    v1 = *(v0 + 344);
    v2 = *(v0 + 352) + 1;
    sub_1005C32E0(*(v0 + 176), type metadata accessor for OwnerSharingCircle);
    if (v2 == v1)
    {

      *(v0 + 408) = v47;
      v20 = *(v0 + 312);
      type metadata accessor for ChangeSetAdaptor();
      v21 = swift_allocObject();
      *(v21 + 16) = _swiftEmptyDictionarySingleton;
      *(v21 + 24) = _swiftEmptyDictionarySingleton;
      v22 = v21 + 24;

      sub_1005C2DF4(v23, &off_101658FC0, v20, (v0 + 96), (v0 + 104));

      swift_beginAccess();
      if (*(*(v21 + 16) + 16))
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      if ((*v22 & 0xC000000000000001) != 0)
      {

        v33 = __CocoaDictionary.count.getter();

        if (v33)
        {
LABEL_18:
          v34 = *(v0 + 264);
          v35 = *(v0 + 232);
          v36 = *(v0 + 240);
          v37 = *(v0 + 144);
          UUID.init()();
          swift_beginAccess();

          v40 = sub_1003A8B54(v38, v39);

          v41 = *(v21 + 16);

          (*(v36 + 32))(v37, v34, v35);
          v42 = type metadata accessor for CloudKitChangeSet(0);
          *(v37 + *(v42 + 20)) = v40;
          *(v37 + *(v42 + 24)) = v41;
          (*(*(v42 - 8) + 56))(v37, 0, 1, v42);
LABEL_19:
          v43 = *(v0 + 288);

          v31 = sub_1005A6E94;
          v32 = v43;
          goto LABEL_20;
        }
      }

      else if (*(*v22 + 16))
      {
        goto LABEL_18;
      }

      v44 = *(v0 + 144);

      v45 = type metadata accessor for CloudKitChangeSet(0);
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      goto LABEL_19;
    }

    v3 = *(v0 + 352) + 1;
    *(v0 + 352) = v3;
    v4 = *(v0 + 336);
    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v5 = *(v0 + 320);
    v48 = *(*(v0 + 160) + 72);
    sub_1005C31F8(v4 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v48 * v3, *(v0 + 176), type metadata accessor for OwnerSharingCircle);
    if (*(v5 + 16))
    {
      v6 = *(v0 + 320);
      *(v0 + 452) = *(*(v0 + 152) + 20);
      sub_1000194B0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = -1 << *(v6 + 32);
      v9 = v7 & ~v8;
      if ((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
      {
        v10 = ~v8;
        v11 = *(v0 + 240);
        v12 = *(v11 + 72);
        v13 = *(v11 + 16);
        *(v0 + 360) = v13;
        v14 = *(v0 + 320);
        while (1)
        {
          v15 = *(v0 + 264);
          v16 = *(v0 + 232);
          v17 = *(v0 + 240);
          v18 = *(v14 + 48) + v9 * v12;
          *(v0 + 368) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v13(v15, v18, v16);
          sub_1000194B0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v17 + 8))(v15, v16);
          if (v19)
          {
            break;
          }

          v14 = *(v0 + 320);
          v9 = (v9 + 1) & v10;
          if (((*(v14 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) == 0)
          {
            goto LABEL_2;
          }
        }

        sub_1005C31F8(*(v0 + 176), *(v0 + 168), type metadata accessor for OwnerSharingCircle);
        v1 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_12;
        }

        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_26:
  v1 = sub_100A5BC94(0, v1[2] + 1, 1, v1);
LABEL_12:
  v25 = v1[2];
  v24 = v1[3];
  v26 = v1;
  if (v25 >= v24 >> 1)
  {
    v26 = sub_100A5BC94((v24 > 1), v25 + 1, 1, v1);
  }

  v27 = v26;
  *(v0 + 376) = v26;
  v28 = *(v0 + 288);
  v29 = *(v0 + 168);
  v30 = (*(v0 + 448) + 32) & ~*(v0 + 448);
  v26[2] = v25 + 1;
  sub_1005C3260(v29, v26 + v30 + v25 * v48, type metadata accessor for OwnerSharingCircle);
  *(v0 + 96) = v27;
  v31 = sub_1005A657C;
  v32 = v28;
LABEL_20:

  return _swift_task_switch(v31, v32, 0);
}

uint64_t sub_1005A6EBC()
{
  v1 = v0[52];
  v2 = v0[18];
  v3 = swift_task_alloc();
  v0[53] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_1005A6FB4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_1005A6FB4()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1005A7204;
  }

  else
  {

    v2 = sub_1005A70D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005A70EC()
{
  sub_10000B3A8(*(v0 + 144), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005A7204()
{
  v1 = *(v0 + 136);

  return _swift_task_switch(sub_1005A7270, v1, 0);
}

uint64_t sub_1005A7270()
{
  sub_10000B3A8(*(v0 + 144), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005A7390(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005A7514, v1, 0);
}

uint64_t sub_1005A7514(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + 8);
  *(v3 + 120) = v4;
  v5 = *(v4 + 16);
  *(v3 + 128) = v5;
  if (v5)
  {
    v7 = *(v3 + 88);
    v6 = *(v3 + 96);
    v8 = *(*(v3 + 32) + 168);
    *(v3 + 136) = v8;
    v9 = *(v6 + 80);
    v10 = enum case for Connection.TransactionMode.deferred(_:);
    *(v3 + 200) = v9;
    *(v3 + 204) = v10;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    if (*(v4 + 16))
    {
      sub_1005C31F8(v4 + ((v9 + 32) & ~v9), *(v3 + 112), type metadata accessor for OwnerSharingCircle);
      *(v3 + 208) = *(v7 + 20);
      a1 = sub_1005A7658;
      a2 = v8;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {

    v11 = *(v3 + 8);

    return v11();
  }
}

uint64_t sub_1005A7658()
{

  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005A7738;
  v3 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005A7738()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_1005A7850, v1, 0);
}

uint64_t sub_1005A7850()
{
  v1 = v0[4];
  v0[21] = v0[2];
  return _swift_task_switch(sub_1005A7874, v1, 0);
}

uint64_t sub_1005A7874()
{
  v1 = *(*(v0 + 168) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 176) = v1;

  return _swift_task_switch(sub_1005A78FC, v1, 0);
}

uint64_t sub_1005A78FC()
{
  v1 = *(*(v0 + 176) + 112);
  if (!v1)
  {
    sub_10020223C();
    v16 = swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v2 = *(v1 + 32);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 != 1 || (v4 = sub_1000194B0(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0), v5 = *(v4 + 16), v6 = type metadata accessor for ItemSharingKeyDatabase(0), (v7 = v5(v6, v4)) == 0))
  {
    sub_10020223C();
    v16 = swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();

LABEL_8:

    goto LABEL_9;
  }

  v30 = *(v0 + 144);
  v28 = *(v0 + 204);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  v27 = *(v0 + 40);
  v13 = *(v0 + 112) + *(v0 + 208);
  v14 = *(v7 + 24);

  (*(v8 + 16))(v9, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v10);
  v15 = swift_task_alloc();
  v15[2] = v9;
  v15[3] = v13;
  v15[4] = v14;
  (*(v12 + 104))(v11, v28, v27);
  Connection.transaction(_:block:)();
  v16 = v30;
  *(v0 + 184) = v30;
  v17 = *(v0 + 72);
  v18 = *(v0 + 56);
  v29 = *(v0 + 64);
  v31 = *(v0 + 80);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  if (v16)
  {

    (*(v19 + 8))(v18, v20);

    (*(v17 + 8))(v31, v29);
LABEL_9:
    *(v0 + 192) = v16;
    v23 = *(v0 + 32);
    v24 = sub_1005A7D90;
    goto LABEL_10;
  }

  v25 = *(v0 + 32);

  (*(v19 + 8))(v18, v20);

  (*(v17 + 8))(v31, v29);
  v24 = sub_1005A7C3C;
  v23 = v25;
LABEL_10:

  return _swift_task_switch(v24, v23, 0);
}

uint64_t sub_1005A7C3C()
{
  v1 = sub_1005C32E0(*(v0 + 112), type metadata accessor for OwnerSharingCircle);
  v4 = *(v0 + 152) + 1;
  if (v4 == *(v0 + 128))
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 144) = *(v0 + 184);
    *(v0 + 152) = v4;
    v7 = *(v0 + 120);
    if (v4 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v0 + 136);
      v9 = *(v0 + 88);
      sub_1005C31F8(v7 + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(*(v0 + 96) + 72) * v4, *(v0 + 112), type metadata accessor for OwnerSharingCircle);
      *(v0 + 208) = *(v9 + 20);
      v1 = sub_1005A7658;
      v2 = v8;
      v3 = 0;
    }

    return _swift_task_switch(v1, v2, v3);
  }
}

uint64_t sub_1005A7D90()
{
  v29 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    v27 = v7;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v28);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to rollback secrets for share %{private,mask.hash}s, %{public}@.", v9, 0x20u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);

    v17 = v27;
  }

  else
  {

    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
    v17 = v7;
  }

  v18 = sub_1005C32E0(v17, type metadata accessor for OwnerSharingCircle);
  v21 = *(v0 + 152) + 1;
  if (v21 == *(v0 + 128))
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    *(v0 + 144) = 0;
    *(v0 + 152) = v21;
    v24 = *(v0 + 120);
    if (v21 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 136);
      v26 = *(v0 + 88);
      sub_1005C31F8(v24 + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(*(v0 + 96) + 72) * v21, *(v0 + 112), type metadata accessor for OwnerSharingCircle);
      *(v0 + 208) = *(v26 + 20);
      v18 = sub_1005A7658;
      v19 = v25;
      v20 = 0;
    }

    return _swift_task_switch(v18, v19, v20);
  }
}

uint64_t sub_1005A8170(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v3[11] = *(v6 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v3[20] = *(v8 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1005A8368, v2, 0);
}

uint64_t sub_1005A8368()
{
  v24 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[26] = v5;
  v0[27] = sub_1000076D4(v5, qword_10177AE28);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v11 = v0[18];
  v12 = v0[19];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start delegated sharing of %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_1005A8604;
  v20 = v0[4];

  return sub_10059E754(v20);
}

uint64_t sub_1005A8604(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[5];

    return _swift_task_switch(sub_1005A87EC, v6, 0);
  }
}

uint64_t sub_1005A87EC()
{
  v1 = *(v0 + 256);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 40);
    v5 = *(*(v0 + 80) + 80);
    *(v0 + 408) = v5;
    sub_1005C31F8(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 168);
    *(v0 + 264) = v6;
    *(v0 + 272) = sub_100B08164(&off_101608BE0);

    return _swift_task_switch(sub_1005A8A60, v6, 0);
  }

  else
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing delegated sharing circle.", v9, 2u);
    }

    sub_1005C3340();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1005A8A60()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  (*(v0 + 224))(v3, *(v0 + 32), v6);
  v7 = *(v5 + 80);
  *(v0 + 412) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 288) = v11;
  *(v0 + 296) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v8, v3, v6);
  *(v10 + v9) = v2;

  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  v13 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v12 = v0;
  v12[1] = sub_1005A8BFC;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v10, v13);
}

uint64_t sub_1005A8BFC()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1005A8D28, v1, 0);
}

uint64_t sub_1005A8D28()
{
  v1 = v0[5];
  v0[39] = v0[2];
  return _swift_task_switch(sub_1005A8D4C, v1, 0);
}

uint64_t sub_1005A8D4C()
{
  v1 = *(v0 + 312);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 40);
    sub_1005C31F8(v1 + ((*(v0 + 408) + 32) & ~*(v0 + 408)), v2, type metadata accessor for OwnerSharingCircle);

    sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
    sub_1000035D0((v4 + 272), *(v4 + 296));
    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = sub_1005A9028;
    v6 = *(v0 + 120);

    return sub_1007256F8(v6, 0);
  }

  else
  {

    v23 = *(v0 + 288);
    v8 = *(v0 + 408);
    v9 = *(v0 + 224);
    v10 = *(v0 + 192);
    v11 = *(v0 + 144);
    v20 = *(v0 + 136);
    v21 = *(v0 + 160);
    v12 = *(v0 + 96);
    v13 = (*(v0 + 412) + 24) & ~*(v0 + 412);
    v14 = *(v0 + 32);
    v22 = *(v0 + 40);
    type metadata accessor for Transaction();
    v9(v10, v14, v11);
    v15 = v12;
    sub_1005C31F8(v20, v12, type metadata accessor for OwnerSharingCircle);
    v16 = swift_allocObject();
    *(v16 + 16) = v22;
    v23(v16 + v13, v10, v11);
    sub_1005C3260(v15, v16 + ((v13 + v8 + v21) & ~v8), type metadata accessor for OwnerSharingCircle);

    static Transaction.asyncTask(name:block:)();

    v17 = swift_task_alloc();
    *(v0 + 392) = v17;
    *v17 = v0;
    v17[1] = sub_1005A9BC8;
    v18 = *(v0 + 136);
    v19 = *(v0 + 24);

    return sub_1005AB064(v19, v18);
  }
}

uint64_t sub_1005A9028()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_1005A9194, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[42] = v4;
    *v4 = v2;
    v4[1] = sub_1005A93F0;

    return daemon.getter();
  }
}

uint64_t sub_1005A9194()
{
  v14 = v0;
  sub_1005C31F8(v0[15], v0[13], type metadata accessor for OwnerSharingCircle);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    sub_1005C32E0(v3, type metadata accessor for OwnerSharingCircle);
    v9 = sub_1000136BC(v6, v8, &v13);

    *(v4 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to update delegation start in keydrop for shareId: %{private,mask.hash}s.", v4, 0x16u);
    sub_100007BAC(v5);
  }

  else
  {
    v10 = v0[13];

    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
  }

  v11 = swift_task_alloc();
  v0[42] = v11;
  *v11 = v0;
  v11[1] = sub_1005A93F0;

  return daemon.getter();
}

uint64_t sub_1005A93F0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 344) = a1;

  v3 = swift_task_alloc();
  *(v2 + 352) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CircleTrustService();
  v6 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194B0(&unk_101698CE0, type metadata accessor for CircleTrustService, &unk_1013E49D8);
  *v3 = v9;
  v3[1] = sub_1005A95CC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005A95CC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 360) = a1;

  v4 = *(v3 + 40);
  if (v1)
  {

    v5 = sub_1005AA108;
  }

  else
  {

    v5 = sub_1005A9730;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005A9730()
{
  v1 = *(v0 + 120);
  v2 = (*(v0 + 408) + 32) & ~*(v0 + 408);
  sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
  v3 = swift_allocObject();
  *(v0 + 368) = v3;
  *(v3 + 16) = xmmword_101385D80;
  sub_1005C31F8(v1, v3 + v2, type metadata accessor for OwnerSharingCircle);
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  *v4 = v0;
  v4[1] = sub_1005A9838;

  return sub_100D276D8(v3);
}

uint64_t sub_1005A9838()
{
  v2 = *v1;
  *(v2 + 384) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 40);
  v5 = (*(v2 + 408) + 32) & ~*(v2 + 408);
  swift_setDeallocating();
  sub_1005C32E0(v3 + v5, type metadata accessor for OwnerSharingCircle);
  swift_deallocClassInstance();
  if (v0)
  {
    v6 = sub_1005AA300;
  }

  else
  {
    v6 = sub_1005A99C4;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_1005A99C4()
{
  v1 = *(v0 + 120);

  sub_1005C32E0(v1, type metadata accessor for OwnerSharingCircle);
  v18 = *(v0 + 288);
  v2 = *(v0 + 408);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 144);
  v15 = *(v0 + 136);
  v16 = *(v0 + 160);
  v6 = *(v0 + 96);
  v7 = (*(v0 + 412) + 24) & ~*(v0 + 412);
  v8 = *(v0 + 32);
  v17 = *(v0 + 40);
  type metadata accessor for Transaction();
  v3(v4, v8, v5);
  v9 = v6;
  sub_1005C31F8(v15, v6, type metadata accessor for OwnerSharingCircle);
  v10 = swift_allocObject();
  *(v10 + 16) = v17;
  v18(v10 + v7, v4, v5);
  sub_1005C3260(v9, v10 + ((v7 + v2 + v16) & ~v2), type metadata accessor for OwnerSharingCircle);

  static Transaction.asyncTask(name:block:)();

  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = sub_1005A9BC8;
  v12 = *(v0 + 136);
  v13 = *(v0 + 24);

  return sub_1005AB064(v13, v12);
}

uint64_t sub_1005A9BC8()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1005AA6C4;
  }

  else
  {
    v4 = sub_1005A9CF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005A9CF4()
{
  v35 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[18];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_1000076D4(v0[26], qword_10177A560);
  v1(v2, v7, v3);
  (*(v5 + 16))(v4, v8, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[30];
  v13 = v0[23];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[7];
  v33 = v0[8];
  v17 = v0[6];
  if (v11)
  {
    log = v9;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 141558787;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v10;
    v21 = v20;
    v12(v13, v14);
    v22 = sub_1000136BC(v19, v21, &v34);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2085;
    sub_1000194B0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v16 + 8))(v33, v17);
    v26 = sub_1000136BC(v23, v25, &v34);

    *(v18 + 34) = v26;
    _os_log_impl(&_mh_execute_header, log, v30, "URL created for beacon %{private,mask.hash}s : %{sensitive,mask.hash}s.", v18, 0x2Au);
    swift_arrayDestroy();

    v27 = v31;
  }

  else
  {

    (*(v16 + 8))(v33, v17);
    v12(v13, v14);
    v27 = v15;
  }

  sub_1005C32E0(v27, type metadata accessor for OwnerSharingCircle);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005AA108()
{
  sub_1005C32E0(*(v0 + 120), type metadata accessor for OwnerSharingCircle);
  v17 = *(v0 + 288);
  v1 = *(v0 + 408);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 144);
  v14 = *(v0 + 136);
  v15 = *(v0 + 160);
  v5 = *(v0 + 96);
  v6 = (*(v0 + 412) + 24) & ~*(v0 + 412);
  v7 = *(v0 + 32);
  v16 = *(v0 + 40);
  type metadata accessor for Transaction();
  v2(v3, v7, v4);
  v8 = v5;
  sub_1005C31F8(v14, v5, type metadata accessor for OwnerSharingCircle);
  v9 = swift_allocObject();
  *(v9 + 16) = v16;
  v17(v9 + v6, v3, v4);
  sub_1005C3260(v8, v9 + ((v6 + v1 + v15) & ~v1), type metadata accessor for OwnerSharingCircle);

  static Transaction.asyncTask(name:block:)();

  v10 = swift_task_alloc();
  *(v0 + 392) = v10;
  *v10 = v0;
  v10[1] = sub_1005A9BC8;
  v11 = *(v0 + 136);
  v12 = *(v0 + 24);

  return sub_1005AB064(v12, v11);
}

uint64_t sub_1005AA300()
{
  v35 = v0;
  (*(v0 + 224))(*(v0 + 176), *(v0 + 32), *(v0 + 144));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  if (v3)
  {
    v30 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v7;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v30(v5, v6);
    v13 = sub_1000136BC(v10, v12, &v34);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to send delegation start update to sharees for the beacon: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);

    v14 = v33;
  }

  else
  {

    v4(v5, v6);
    v14 = v7;
  }

  sub_1005C32E0(v14, type metadata accessor for OwnerSharingCircle);
  v32 = *(v0 + 288);
  v15 = *(v0 + 408);
  v16 = *(v0 + 224);
  v17 = *(v0 + 192);
  v18 = *(v0 + 144);
  v28 = *(v0 + 136);
  v29 = *(v0 + 160);
  v19 = *(v0 + 96);
  v20 = (*(v0 + 412) + 24) & ~*(v0 + 412);
  v21 = *(v0 + 32);
  v31 = *(v0 + 40);
  type metadata accessor for Transaction();
  v16(v17, v21, v18);
  v22 = v19;
  sub_1005C31F8(v28, v19, type metadata accessor for OwnerSharingCircle);
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  v32(v23 + v20, v17, v18);
  sub_1005C3260(v22, v23 + ((v20 + v15 + v29) & ~v15), type metadata accessor for OwnerSharingCircle);

  static Transaction.asyncTask(name:block:)();

  v24 = swift_task_alloc();
  *(v0 + 392) = v24;
  *v24 = v0;
  v24[1] = sub_1005A9BC8;
  v25 = *(v0 + 136);
  v26 = *(v0 + 24);

  return sub_1005AB064(v26, v25);
}

uint64_t sub_1005AA6C4()
{
  v21 = v0;
  (*(v0 + 224))(*(v0 + 168), *(v0 + 32), *(v0 + 144));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = *(v0 + 240);
    v3 = *(v0 + 168);
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v5 = 141558531;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v19(v3, v4);
    v11 = sub_1000136BC(v8, v10, &v20);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in URL creation for beacon %{private,mask.hash}s %{public}@.", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 168);
    v15 = *(v0 + 144);

    v13(v14, v15);
  }

  v16 = *(v0 + 136);
  swift_willThrow();
  sub_1005C32E0(v16, type metadata accessor for OwnerSharingCircle);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005AA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = type metadata accessor for UUID();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1005AAAFC;

  return sub_100F58F64(a2, 3u);
}

uint64_t sub_1005AAAFC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1005AAC54;
  v4 = *(v1 + 24);

  return sub_1003C3774(v4);
}

uint64_t sub_1005AAC54()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005AAD90, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1005AAD90()
{
  v23 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error while registering APNS token with FindMy service for beacon %{private,mask.hash}s: error: %{public}@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005AB064(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for OwnerSharingCircle(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3[8] = swift_task_alloc();
  type metadata accessor for DelegatedShareUseCase.DelegationURL(0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005AB1D4, v2, 0);
}

uint64_t sub_1005AB1D4()
{
  sub_1000035D0((v0[4] + 176), *(v0[4] + 200));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1005AB280;
  v2 = v0[13];
  v3 = v0[3];

  return sub_100C78E54(v2, v3);
}

uint64_t sub_1005AB280()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1005AB87C;
  }

  else
  {
    v4 = sub_1005AB3AC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005AB3AC(uint64_t a1)
{
  v31 = v1;
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = URLComponents.fragment.getter();
  v7 = v6;
  v8 = *(v4 + 8);
  v1[16] = v8;
  v1[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  if (v7)
  {
    v9 = UUID.uuidString.getter();
    v11 = v10;
    v12 = swift_task_alloc();
    v1[18] = v12;
    *v12 = v1;
    v12[1] = sub_1005AB750;
    v13 = v1[9];

    return sub_1005C24A0(v13, v5, v7, v9, v11);
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v15 = v1[6];
    v16 = v1[3];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AE28);
    sub_1005C31F8(v16, v15, type metadata accessor for OwnerSharingCircle);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[6];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
      v27 = sub_1000136BC(v24, v26, &v30);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error creating URL fragments for delegated sharing for beacon %{private,mask.hash}s).", v22, 0x16u);
      sub_100007BAC(v23);
    }

    else
    {

      sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
    }

    sub_1005C3340();
    swift_allocError();
    *v28 = 3;
    swift_willThrow();

    v29 = v1[1];

    return v29();
  }
}

uint64_t sub_1005AB750()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1005ABD24;
  }

  else
  {
    v4 = sub_1005AB920;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005AB87C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005AB920()
{
  v25 = v0;
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  (*(v0[11] + 16))(v2, v4, v3);
  sub_1005C32E0(v4, type metadata accessor for DelegatedShareUseCase.DelegationURL);
  URLComponents.url.getter();
  v1(v2, v3);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v0[8], &unk_101696AC0, &qword_101390A60);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v8 = v0[7];
    v9 = v0[3];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177AE28);
    sub_1005C31F8(v9, v8, type metadata accessor for OwnerSharingCircle);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[7];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_1005C32E0(v14, type metadata accessor for OwnerSharingCircle);
      v20 = sub_1000136BC(v17, v19, &v24);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error creating URL components for delegated sharing for beacon %{private,mask.hash}s).", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      sub_1005C32E0(v14, type metadata accessor for OwnerSharingCircle);
    }

    sub_1005C3340();
    swift_allocError();
    *v22 = 4;
    swift_willThrow();

    v21 = v0[1];
  }

  else
  {
    (*(v7 + 32))(v0[2], v0[8], v6);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_1005ABD24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005ABDC8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = type metadata accessor for OwnerSharingCircle(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005ABE8C, v1, 0);
}

uint64_t sub_1005ABE8C()
{
  v29 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  v0[14] = sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315651;
    *(v8 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010135B480, &v28);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v12 = sub_1000136BC(v9, v11, &v28);

    *(v8 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %{private,mask.hash}s.", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
  }

  v13 = v0[8];
  v14 = v0[6];
  if (*(v14 + *(v13 + 28)) == 3 && *(v14 + *(v13 + 36)) == 1)
  {
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_1005AC39C;

    return daemon.getter();
  }

  else
  {
    sub_1005C31F8(v14, v0[10], type metadata accessor for OwnerSharingCircle);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[10];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
      v25 = sub_1000136BC(v22, v24, &v28);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Share %{private,mask.hash}s is not eligible for APS registration.", v20, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {

      sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1005AC39C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for APSNotificationService();
  v6 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194B0(&qword_101698D40, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  *v3 = v9;
  v3[1] = sub_1005AC578;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005AC578(uint64_t a1)
{
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = sub_1005AD5A8;
  }

  else
  {

    v6 = sub_1005AC6B0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005AC6B0()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {

    v3 = sub_100771D58(0xD000000000000023, 0x800000010134CBA0);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      sub_100017D5C(*v5, v7);

      v0[22] = v6;
      v0[23] = v7;
      v8 = v0[7];

      return _swift_task_switch(sub_1005ACC54, v8, 0);
    }
  }

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1005AC818;

  return sub_100E7DE18(0xD000000000000023, 0x800000010134CBA0, 500000000000000000, 0);
}

uint64_t sub_1005AC818(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = v6[7];
    v8 = sub_1005AC950;
  }

  else
  {
    v6[22] = a1;
    v6[23] = a2;
    v7 = v6[7];
    v8 = sub_1005ACC54;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1005AC950()
{
  v17 = v0;
  sub_1005C31F8(v0[6], v0[12], type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[12];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v4 = 141558531;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_1005C32E0(v3, type metadata accessor for OwnerSharingCircle);
    v10 = sub_1000136BC(v7, v9, &v16);

    *(v4 + 14) = v10;
    *(v4 + 22) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not read APS token for %{private,mask.hash}s, error: %{public}@.", v4, 0x20u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
    v12 = v0[12];

    sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
  }

  sub_1005C3340();
  swift_allocError();
  *v13 = 8;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005ACC54()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_1005ACC78, v1, 0);
}

uint64_t sub_1005ACC78()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005ACD58;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005ACD58()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1005ACE70, v1, 0);
}

uint64_t sub_1005ACE70()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[26] = v0[5];
  v3 = *(v1 + 20);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1005ACF1C;

  return sub_1012DB570(v2 + v3);
}

uint64_t sub_1005ACF1C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_1005AD050, v4, 0);
}

uint64_t sub_1005AD050()
{
  v26 = v0;
  v1 = v0[29];
  v3 = v0[22];
  v2 = v0[23];
  if (v1 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[28];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[29];
  }

  sub_100017D5C(v0[22], v0[23]);
  v6 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v3, v2);
  sub_100016590(v3, v2);
  if (v6)
  {
    sub_1005C31F8(v0[6], v0[11], type metadata accessor for OwnerSharingCircle);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    if (v9)
    {
      v24 = v0[23];
      v23 = v0[22];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v25);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already registered APS for %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);

      sub_100016590(v23, v24);
      sub_100016590(v4, v5);
    }

    else
    {
      sub_100016590(v0[22], v0[23]);
      sub_100016590(v4, v5);

      sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    }

    v22 = v0[1];

    return v22();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[30] = v17;
    *v17 = v0;
    v17[1] = sub_1005AD3B0;
    v18 = v0[22];
    v19 = v0[23];
    v20 = v0[6];

    return sub_1005AD988(v20, v18, v19);
  }
}

uint64_t sub_1005AD3B0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1005AD64C;
  }

  else
  {
    v4 = sub_1005AD4DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005AD4DC()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[23];
  if (v1 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[28];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[29];
  }

  sub_100016590(v4, v5);

  sub_100016590(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005AD5A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005AD64C()
{
  v24 = v0;
  sub_1005C31F8(v0[6], v0[9], type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[9];
  if (v3)
  {
    if (v4 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      v6 = v0[28];
    }

    if (v4 >> 60 == 15)
    {
      v4 = 0xC000000000000000;
    }

    v21 = v4;
    v22 = v6;
    v19 = v0[22];
    v20 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1005C32E0(v5, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v23);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error while registering APNS token with FindMy service for beacon %{private,mask.hash}s: error: %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);

    sub_100016590(v19, v20);
    sub_100016590(v22, v21);
  }

  else
  {
    if (v4 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = v0[28];
    }

    if (v4 >> 60 == 15)
    {
      v16 = 0xC000000000000000;
    }

    else
    {
      v16 = v0[29];
    }

    sub_100016590(v0[22], v0[23]);
    sub_100016590(v15, v16);

    sub_1005C32E0(v5, type metadata accessor for OwnerSharingCircle);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005AD988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = type metadata accessor for OwnerSharingCircle(0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  type metadata accessor for KeyDropJoinToken(0);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005ADAB4, v3, 0);
}

uint64_t sub_1005ADAB4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  sub_1000035D0((*(v0 + 96) + 176), *(*(v0 + 96) + 200));
  v3 = *(v1 + 20);
  *(v0 + 240) = v3;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1005ADB74;
  v5 = *(v0 + 152);

  return sub_100CFD9C0(v5, v2 + v3);
}

uint64_t sub_1005ADB74()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1005ADE74;
  }

  else
  {
    v4 = sub_1005ADCA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005ADCA0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  type metadata accessor for SharingCircleKeyManager();
  sub_100C710B4(v2);
  if (v1)
  {
    sub_1005C32E0(*(v0 + 152), type metadata accessor for KeyDropJoinToken);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    sub_1000035D0((*(v0 + 96) + 112), *(*(v0 + 96) + 136));
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    inited = swift_initStackObject();
    *(v0 + 176) = inited;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    sub_100017D5C(v7, v6);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_1005ADEFC;
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);

    return sub_1001E6DD0(v8 + v5, 4, v11, inited, v12);
  }
}

uint64_t sub_1005ADE74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005ADEFC(char a1)
{
  v4 = *v2;
  *(v4 + 192) = v1;

  v5 = *(v4 + 176);
  v6 = *(v4 + 96);
  if (v1)
  {
    swift_setDeallocating();
    sub_10020545C(v5 + 32);
    v7 = sub_1005AE3B4;
  }

  else
  {
    *(v4 + 244) = a1 & 1;
    swift_setDeallocating();
    sub_10020545C(v5 + 32);
    v7 = sub_1005AE074;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1005AE074()
{
  v23 = v0;
  if (*(v0 + 244) == 1)
  {
    v1 = *(*(v0 + 96) + 168);
    *(v0 + 200) = v1;

    return _swift_task_switch(sub_1005AE470, v1, 0);
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AE28);
    sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 112);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
      v13 = sub_1000136BC(v10, v12, &v22);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Server returned error while registering apns token for share %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {
      v14 = *(v0 + 112);

      sub_1005C32E0(v14, type metadata accessor for OwnerSharingCircle);
    }

    v15 = *(v0 + 144);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    sub_1005C3340();
    swift_allocError();
    *v19 = 10;
    swift_willThrow();
    (*(v18 + 8))(v15, v17);
    sub_1005C32E0(v16, type metadata accessor for KeyDropJoinToken);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1005AE3B4()
{
  v1 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_1005C32E0(v1, type metadata accessor for KeyDropJoinToken);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005AE470()
{

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005AE550;
  v3 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005AE550()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_1005AE668, v1, 0);
}

uint64_t sub_1005AE668()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 72);
  *(v0 + 216) = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = sub_1005AE714;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return sub_1012DBA0C(v2 + v1, v4, v5);
}

uint64_t sub_1005AE714()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 96);

  if (v0)
  {
    v4 = sub_1005AEB50;
  }

  else
  {
    v4 = sub_1005AE85C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005AE85C()
{
  v24 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  if (v6)
  {
    v22 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v7;
    v16 = v15;
    sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saved APS registration for %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);

    (*(v9 + 8))(v21, v10);
    v18 = v22;
  }

  else
  {

    sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
    (*(v9 + 8))(v7, v10);
    v18 = v8;
  }

  sub_1005C32E0(v18, type metadata accessor for KeyDropJoinToken);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005AEB50()
{
  v1 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_1005C32E0(v1, type metadata accessor for KeyDropJoinToken);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005AEC0C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3[13] = v6;
  v3[14] = *(v6 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEDE8, v2, 0);
}

uint64_t sub_1005AEDE8()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = *(v0[6] + 168);
  v0[19] = v5;
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_1005AEEAC, v5, 0);
}

uint64_t sub_1005AEEAC()
{
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  sub_1000D2A70(v0[16], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[23] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1005AF028;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v9);
}

uint64_t sub_1005AF028()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1005AF154, v1, 0);
}

uint64_t sub_1005AF154()
{
  v1 = v0[6];
  sub_10000B3A8(v0[16], &qword_1016980D0, &unk_10138F3B0);
  v0[24] = v0[2];

  return _swift_task_switch(sub_1005AF1D8, v1, 0);
}

uint64_t sub_1005AF1D8()
{
  v35 = v0;
  v1 = v0[24];
  if (*(v1 + 16))
  {
    v2 = *(v0[11] + 80);
    sub_1005C31F8(v1 + ((v2 + 32) & ~v2), v0[18], type metadata accessor for OwnerSharingCircle);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[10];
  v7 = v0[11];

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_1000D2A70(v4, v5, &unk_1016AFA00, &qword_10138C4D0);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[17];
  if (v8 == 1)
  {
    sub_10000B3A8(v9, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v10 = v0[20];
    v11 = v0[9];
    v12 = v0[7];
    v13 = v0[5];
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177AE28);
    v10(v11, v13, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_1000136BC(v23, v25, &v34);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Delegation doesnt exist for beacon %{private,mask.hash}s", v21, 0x16u);
      sub_100007BAC(v22);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v31 = v0[18];
    sub_1005C3340();
    swift_allocError();
    *v32 = 5;
    swift_willThrow();
    sub_10000B3A8(v31, &unk_1016AFA00, &qword_10138C4D0);

    v33 = v0[1];

    return v33();
  }

  else
  {
    sub_1005C3260(v9, v0[12], type metadata accessor for OwnerSharingCircle);
    v27 = swift_task_alloc();
    v0[25] = v27;
    *v27 = v0;
    v27[1] = sub_1005AF61C;
    v28 = v0[12];
    v29 = v0[4];

    return sub_1005B2110(v29, v28);
  }
}

uint64_t sub_1005AF61C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1005AF828;
  }

  else
  {
    v4 = sub_1005AF748;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005AF748()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005AF828()
{
  *(v0 + 24) = *(v0 + 208);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 248) == 21;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);

    v8 = *(v7 + 20);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_1005AFA04;

    return sub_1005B0CD4(v6 + v8);
  }

  else
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 96);

    swift_willThrow();
    sub_1005C32E0(v3, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1005AFA04()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_1005AFD90, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[29] = v4;
    *v4 = v2;
    v4[1] = sub_1005AFB7C;
    v5 = v2[12];
    v6 = v2[4];

    return sub_1005B2110(v6, v5);
  }
}

uint64_t sub_1005AFB7C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1005AFE78;
  }

  else
  {
    v4 = sub_1005AFCA8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005AFCA8()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005AFD90()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005AFE78()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005AFF60(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v2[12] = *(v5 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005B00D8, v1, 0);
}

uint64_t sub_1005B00D8(uint64_t a1)
{
  v2 = v1[3];
  if (*(v2 + 16))
  {
    v3 = v1[14];
    v4 = v1[15];
    v5 = v1[10];
    v6 = v1[11];
    v7 = v1[4];
    v8 = type metadata accessor for SharingCircleSecret(0);
    v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
    v10 = v2 + *(v8 + 24);
    v11 = *(v6 + 16);
    v1[16] = v11;
    v1[17] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v3, v10 + v9, v5);
    v12 = *(v6 + 32);
    v1[18] = v12;
    v1[19] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v4, v3, v5);
    v13 = *(v7 + 168);
    v1[20] = v13;

    return _swift_task_switch(sub_1005B02A0, v13, 0);
  }

  else
  {
    sub_1005C3340();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_1005B02A0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  (*(v0 + 128))(v3, *(v0 + 120), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 168) = v7;
  *(v7 + 16) = v1;
  v2(v7 + v6, v3, v4);

  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_1005B03E8;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3A50, v7, v10);
}

uint64_t sub_1005B03E8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1005B0514, v1, 0);
}

uint64_t sub_1005B0514()
{
  v1 = v0[7];
  v2 = v0[6];
  if ((*(v0[8] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[11] + 8))(v0[15], v0[10]);
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
LABEL_8:
    sub_1005C3340();
    swift_allocError();
    *v8 = 5;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  v3 = v0[9];
  sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
  if (*(v3 + *(v1 + 36)) != 1)
  {
    v5 = v0[15];
    v6 = v0[10];
    v7 = v0[11];
    sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
    (*(v7 + 8))(v5, v6);
    goto LABEL_8;
  }

  v4 = v0[20];

  return _swift_task_switch(sub_1005B06F0, v4, 0);
}

uint64_t sub_1005B06F0()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005B07D0;
  v3 = *(v0 + 160);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005B07D0()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1005B08E8, v1, 0);
}

uint64_t sub_1005B08E8()
{
  v1 = v0[4];
  v0[24] = v0[2];
  return _swift_task_switch(sub_1005B090C, v1, 0);
}

uint64_t sub_1005B090C()
{
  v0[25] = *(v0[24] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1005B09CC;
  v2 = v0[3];

  return sub_10069208C(v2);
}

uint64_t sub_1005B09CC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_1005B0BF8;
  }

  else
  {
    v4 = sub_1005B0B14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B0B14()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005B0BF8()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005B0CD4(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for UUID();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleSecret(0);
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005B0E4C, v1, 0);
}

uint64_t sub_1005B0E4C()
{
  v1 = *(*(v0 + 136) + 168);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_1005B0E70, v1, 0);
}

uint64_t sub_1005B0E70()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005B0F50;
  v3 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005B0F50()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_1005B1068, v1, 0);
}

uint64_t sub_1005B1068()
{
  v1 = v0[17];
  v0[30] = v0[15];
  return _swift_task_switch(sub_1005B108C, v1, 0);
}

uint64_t sub_1005B108C()
{
  v0[31] = *(v0[30] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1005B114C;
  v2 = v0[16];

  return sub_10069176C(v2);
}

uint64_t sub_1005B114C(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = sub_1005B2060;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_1005B1274;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005B1274()
{
  v86 = v0;
  v1 = v0[33];
  v83 = *(v1 + 16);
  if (!v83)
  {

    if (qword_101694778 == -1)
    {
LABEL_6:
      v30 = v0[19];
      v29 = v0[20];
      v31 = v0[18];
      v32 = v0[16];
      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177AE28);
      (*(v30 + 16))(v29, v32, v31);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      v36 = os_log_type_enabled(v34, v35);
      v38 = v0[19];
      v37 = v0[20];
      v39 = v0[18];
      if (v36)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v85 = v41;
        *v40 = 141558275;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        (*(v38 + 8))(v37, v39);
        v45 = sub_1000136BC(v42, v44, &v85);

        *(v40 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v34, v35, "No secrets available to restore for %{private,mask.hash}s.", v40, 0x16u);
        sub_100007BAC(v41);
      }

      else
      {

        (*(v38 + 8))(v37, v39);
      }

      v28 = v0[1];
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_6;
  }

  v2 = v0[24];
  v84 = v0[25];
  v3 = v0[23];
  v4 = v0[19];
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v80 = inited + 24;
  v6 = *(v1 + 16);

  if (!v6)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v0[34];
  v8 = v4;
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[18];
  v82 = *(v2 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_1005C31F8(v0[33] + v12, v10, type metadata accessor for SharingCircleSecret);
  UUID.init()();
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v15 = v3[6];
  v0[35] = v14;
  v16 = v11;
  v17 = v14;
  v14(v9 + v15, v10 + v15, v16);
  v18 = (v10 + v3[8]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v10 + v3[7]);
  v22 = *v21;
  v23 = v21[1];
  *v9 = 0;
  *(v84 + 8) = 0xC000000000000000;
  v24 = (v9 + v3[8]);
  *v24 = v19;
  v24[1] = v20;
  v25 = (v9 + v3[7]);
  *v25 = v22;
  v25[1] = v23;
  sub_100017D5C(v19, v20);

  sub_100D4346C(v9);
  if (v7)
  {
    v27 = v0[25];
    v26 = v0[26];

    swift_setDeallocating();

    sub_1005C32E0(v27, type metadata accessor for SharingCircleSecret);
    sub_1005C32E0(v26, type metadata accessor for SharingCircleSecret);

    v28 = v0[1];
LABEL_21:

    return v28();
  }

  v81 = v17;
  v46 = v0[26];
  sub_1005C32E0(v0[25], type metadata accessor for SharingCircleSecret);
  sub_1005C32E0(v46, type metadata accessor for SharingCircleSecret);
  if (v83 != 1)
  {
    v47 = v13;
    v48 = v82 + v12;
    v49 = 1;
    while (v49 < *(v1 + 16))
    {
      v50 = v1;
      v52 = v0[25];
      v51 = v0[26];
      v53 = v47;
      v54 = v0[18];
      sub_1005C31F8(v0[33] + v48, v51, type metadata accessor for SharingCircleSecret);
      UUID.init()();
      v55 = v3[6];
      v0[35] = v81;
      v56 = v54;
      v47 = v53;
      v81(v52 + v55, v51 + v55, v56);
      v57 = (v51 + v3[8]);
      v58 = *v57;
      v59 = v57[1];
      v60 = (v51 + v3[7]);
      v61 = *v60;
      v62 = v60[1];
      *v52 = 0;
      *(v84 + 8) = 0xC000000000000000;
      v63 = (v52 + v3[8]);
      *v63 = v58;
      v63[1] = v59;
      v64 = (v52 + v3[7]);
      *v64 = v61;
      v64[1] = v62;
      sub_100017D5C(v58, v59);

      sub_100D4346C(v52);
      v65 = v0[26];
      ++v49;
      sub_1005C32E0(v0[25], type metadata accessor for SharingCircleSecret);
      sub_1005C32E0(v65, type metadata accessor for SharingCircleSecret);
      v48 += v82;
      v1 = v50;
      if (v83 == v49)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_26;
  }

LABEL_12:

  swift_beginAccess();
  v66 = *(inited + 16);
  if (*(v66 + 16))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  if ((*v80 & 0xC000000000000001) == 0)
  {
    if (*(*v80 + 16))
    {
      goto LABEL_15;
    }

LABEL_25:
    v77 = v0[27];

    v78 = type metadata accessor for CloudKitChangeSet(0);
    (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
    goto LABEL_16;
  }

  v67 = __CocoaDictionary.count.getter();

  if (!v67)
  {
    goto LABEL_25;
  }

LABEL_15:
  v68 = v0[27];
  v69 = v0[22];
  v70 = v0[18];
  v71 = v0[19];
  UUID.init()();
  swift_beginAccess();

  v74 = sub_1003A8B54(v72, v73);
  swift_bridgeObjectRelease_n();
  (*(v71 + 32))(v68, v69, v70);
  v75 = type metadata accessor for CloudKitChangeSet(0);
  *(v68 + *(v75 + 20)) = v74;
  *(v68 + *(v75 + 24)) = v66;
  (*(*(v75 - 8) + 56))(v68, 0, 1, v75);
LABEL_16:
  v76 = v0[28];

  return _swift_task_switch(sub_1005B1A04, v76, 0);
}

uint64_t sub_1005B1A2C()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = swift_task_alloc();
  v0[37] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_1005B1B24;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_1005B1B24()
{
  *(*v1 + 312) = v0;

  if (v0)
  {

    v2 = sub_1005B1F84;
  }

  else
  {

    v2 = sub_1005B1C6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005B1C88()
{
  v26 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[16];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  v1(v2, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[27];
  v11 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  if (v8)
  {
    v24 = v0[27];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 134218499;
    v16 = *(v9 + 16);

    *(v14 + 4) = v16;

    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_1000136BC(v17, v19, &v25);

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Restored %ld secrets for %{private,mask.hash}s.", v14, 0x20u);
    sub_100007BAC(v15);

    v21 = v24;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (*(v12 + 8))(v11, v13);
    v21 = v10;
  }

  sub_10000B3A8(v21, &qword_1016975C8, &qword_10138C1F0);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005B1FA0()
{
  sub_10000B3A8(*(v0 + 216), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B2060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B2110(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v5[3] = a2;
  v5[4] = v2;
  v5[2] = a1;
  v5[5] = type metadata accessor for OwnerSharingCircle(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[11] = v8;
  *v8 = v5;
  v8[1] = sub_1005B225C;

  return sub_1005AB064(a1, a2);
}

uint64_t sub_1005B225C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1005B26FC;
  }

  else
  {
    v4 = sub_1005B2388;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B2388()
{
  v27 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  (*(v2 + 16))(v1, v6, v3);
  sub_1005C31F8(v5, v4, type metadata accessor for OwnerSharingCircle);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2085;
    sub_1000194B0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = sub_1000136BC(v16, v18, &v26);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1005C32E0(v13, type metadata accessor for OwnerSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v26);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "URL fetched: %{sensitive,mask.hash}s for beacon %{private,mask.hash}s.", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_1005C32E0(v13, type metadata accessor for OwnerSharingCircle);
    (*(v12 + 8))(v11, v14);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1005B26FC()
{
  v19 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1005C32E0(v6, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in fetching URL for beacon %{private,mask.hash}s %{public}@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[6];

    sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005B29FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005B2AD8, v1, 0);
}

uint64_t sub_1005B2AD8()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = *(v0[4] + 168);
  v0[9] = v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);

  return _swift_task_switch(sub_1005B2BCC, v3, 0);
}

uint64_t sub_1005B2BCC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  sub_1000D2A70(v0[8], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1005B2D48;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v9);
}

uint64_t sub_1005B2D48()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1005B2E74, v1, 0);
}

uint64_t sub_1005B2E74()
{
  v1 = v0[4];
  sub_10000B3A8(v0[8], &qword_1016980D0, &unk_10138F3B0);
  v0[12] = v0[2];

  return _swift_task_switch(sub_1005B2EF8, v1, 0);
}

uint64_t sub_1005B2EF8()
{
  v1 = *(*(v0 + 96) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_1005B2F84()
{
  v1[3] = v0;
  v1[4] = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v1[5] = swift_task_alloc();
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[6] = v2;
  v1[7] = *(v2 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1005B30B8, v0, 0);
}

uint64_t sub_1005B30B8()
{
  v1 = v0[9];
  v2 = *(v0[3] + 168);
  v0[10] = v2;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  return _swift_task_switch(sub_1005B3168, v2, 0);
}

uint64_t sub_1005B3168()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_1000D2A70(v0[9], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1005B32E4;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v9);
}

uint64_t sub_1005B32E4()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1005B3410, v1, 0);
}

uint64_t sub_1005B3410()
{
  v1 = v0[3];
  sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
  v0[13] = v0[2];

  return _swift_task_switch(sub_1005B3494, v1, 0);
}

uint64_t sub_1005B3494(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v2 + 16);
  *(v1 + 112) = v3;
  if (v3)
  {
    v4 = *(v1 + 32);
    *(v1 + 120) = type metadata accessor for DelegatedShareUseCase();
    *(v1 + 152) = *(v4 + 80);
    *(v1 + 128) = 0;
    if (*(v2 + 16))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v1 + 40);
        sub_1005C31F8(v2 + ((*(v1 + 152) + 32) & ~*(v1 + 152)) + *(*(v1 + 32) + 72) * v5, v6, type metadata accessor for OwnerSharingCircle);
        if (sub_10059DE04(v6))
        {
          break;
        }

        v7 = *(v1 + 112);
        v8 = *(v1 + 128) + 1;
        sub_1005C32E0(*(v1 + 40), type metadata accessor for OwnerSharingCircle);
        if (v8 == v7)
        {
          goto LABEL_11;
        }

        v5 = *(v1 + 128) + 1;
        *(v1 + 128) = v5;
        v2 = *(v1 + 104);
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    v9 = swift_task_alloc();
    *(v1 + 136) = v9;
    *v9 = v1;
    v9[1] = sub_1005B3670;
    v10 = *(v1 + 40);

    return sub_1005B56F8(v10, 0, 0, 2);
  }

  else
  {
LABEL_11:

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_1005B3670()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);

    v4 = sub_1005B393C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = sub_1005B3798;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005B3798()
{
  while (1)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 128) + 1;
    result = sub_1005C32E0(*(v0 + 40), type metadata accessor for OwnerSharingCircle);
    if (v2 == v1)
    {
      break;
    }

    v4 = *(v0 + 128) + 1;
    *(v0 + 128) = v4;
    v5 = *(v0 + 104);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 40);
    sub_1005C31F8(v5 + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(*(v0 + 32) + 72) * v4, v6, type metadata accessor for OwnerSharingCircle);
    if (sub_10059DE04(v6))
    {
      v7 = swift_task_alloc();
      *(v0 + 136) = v7;
      *v7 = v0;
      v7[1] = sub_1005B3670;
      v8 = *(v0 + 40);

      return sub_1005B56F8(v8, 0, 0, 2);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1005B393C()
{
  sub_1005C32E0(*(v0 + 40), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B39DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle(0);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005B3C0C, v4, 0);
}

uint64_t sub_1005B3C0C()
{
  v1 = v0[25];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[4];
  v5 = *(v0[8] + 168);
  v0[28] = v5;
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_1005B3CD4, v5, 0);
}

uint64_t sub_1005B3CD4()
{
  v1 = v0[28];
  v2 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  sub_1000D2A70(v0[25], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[31] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[32] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  v0[33] = v9;
  *v8 = v0;
  v8[1] = sub_1005B3E54;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v9);
}

uint64_t sub_1005B3E54()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_1005B3F80, v1, 0);
}

uint64_t sub_1005B3F80()
{
  v1 = v0[8];
  sub_10000B3A8(v0[25], &qword_1016980D0, &unk_10138F3B0);
  v0[34] = v0[2];

  return _swift_task_switch(sub_1005B4004, v1, 0);
}

uint64_t sub_1005B4004()
{
  v77 = v0;
  v1 = v0[34];
  if (*(v1 + 16))
  {
    v2 = *(v0[17] + 80);
    sub_1005C31F8(v1 + ((v2 + 32) & ~v2), v0[27], type metadata accessor for OwnerSharingCircle);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[16];
  v7 = v0[17];

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_1000D2A70(v4, v5, &unk_1016AFA00, &qword_10138C4D0);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[26];
  if (v8 == 1)
  {
    sub_10000B3A8(v9, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v10 = v0[29];
    v11 = v0[14];
    v12 = v0[9];
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[4];
    v16 = v0[5];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177A560);
    v10(v11, v15, v12);
    sub_1003CB5AC(v16, v14, v13);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    sub_1005C339C(v16, v14, v13);
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[14];
    v23 = v0[9];
    v22 = v0[10];
    if (!v20)
    {

      (*(v22 + 8))(v21, v23);
      goto LABEL_33;
    }

    v24 = v0[7];
    v25 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v25 = 141558531;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v22 + 8))(v21, v23);
    v29 = sub_1000136BC(v26, v28, &v76);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2082;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v30 = 0x7865206572616873;
        v31 = 0xED00006465726970;
        goto LABEL_32;
      }

      if (v24 == 3)
      {
        v30 = 0x746E692061746164;
        v31 = 0xEE00797469726765;
        goto LABEL_32;
      }
    }

    else
    {
      if (!v24)
      {
        v30 = 0x73206C61756E616DLL;
        v31 = 0xEB00000000706F74;
        goto LABEL_32;
      }

      if (v24 == 1)
      {
        v30 = 0xD000000000000018;
        v31 = 0x800000010135B460;
LABEL_32:
        v63 = sub_1000136BC(v30, v31, &v76);

        *(v25 + 24) = v63;
        _os_log_impl(&_mh_execute_header, v18, v19, "Beacon %{private,mask.hash}s is not delegated. Didnt stop the share, reason %{public}s.", v25, 0x20u);
        swift_arrayDestroy();

LABEL_33:
        if (v0[7] > 3uLL)
        {
          v66 = v0[28];
          v0[39] = sub_101129F64(&off_101608C08);

          return _swift_task_switch(sub_1005B4C04, v66, 0);
        }

        else
        {
          sub_10000B3A8(v0[27], &unk_1016AFA00, &qword_10138C4D0);

          v64 = v0[1];

          return v64();
        }
      }
    }

    v31 = 0x800000010135B440;
    v30 = 0xD000000000000019;
    goto LABEL_32;
  }

  sub_1005C3260(v9, v0[21], type metadata accessor for OwnerSharingCircle);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v74 = v0[29];
  v32 = v0[20];
  v33 = v0[21];
  v34 = v0[15];
  v35 = v0[9];
  v37 = v0[6];
  v36 = v0[7];
  v39 = v0[4];
  v38 = v0[5];
  v40 = type metadata accessor for Logger();
  v0[35] = sub_1000076D4(v40, qword_10177A560);
  sub_1005C31F8(v33, v32, type metadata accessor for OwnerSharingCircle);
  v74(v34, v39, v35);
  sub_1003CB5AC(v38, v37, v36);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  sub_1005C339C(v38, v37, v36);
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[20];
  if (v43)
  {
    v75 = v42;
    v45 = v0[15];
    v47 = v0[9];
    v46 = v0[10];
    v73 = v0[7];
    v48 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v48 = 141559043;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1005C32E0(v44, type metadata accessor for OwnerSharingCircle);
    v52 = sub_1000136BC(v49, v51, &v76);

    *(v48 + 14) = v52;
    *(v48 + 22) = 2160;
    *(v48 + 24) = 1752392040;
    *(v48 + 32) = 2081;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = *(v46 + 8);
    v56(v45, v47);
    v57 = sub_1000136BC(v53, v55, &v76);

    *(v48 + 34) = v57;
    *(v48 + 42) = 2082;
    if (v73 > 1)
    {
      if (v73 == 2)
      {
        v58 = 0x7865206572616873;
        v59 = 0xED00006465726970;
        goto LABEL_41;
      }

      if (v73 == 3)
      {
        v58 = 0x746E692061746164;
        v59 = 0xEE00797469726765;
        goto LABEL_41;
      }
    }

    else
    {
      if (!v73)
      {
        v58 = 0x73206C61756E616DLL;
        v59 = 0xEB00000000706F74;
        goto LABEL_41;
      }

      if (v73 == 1)
      {
        v58 = 0xD000000000000018;
        v59 = 0x800000010135B460;
LABEL_41:
        v67 = sub_1000136BC(v58, v59, &v76);

        *(v48 + 44) = v67;
        _os_log_impl(&_mh_execute_header, v41, v75, "Stop delegated sharing of share id %{private,mask.hash}s, beacon id %{private,mask.hash}s due to %{public}s.", v48, 0x34u);
        swift_arrayDestroy();

        goto LABEL_42;
      }
    }

    v59 = 0x800000010135B440;
    v58 = 0xD000000000000019;
    goto LABEL_41;
  }

  v60 = v0[15];
  v61 = v0[9];
  v62 = v0[10];

  v56 = *(v62 + 8);
  v56(v60, v61);
  sub_1005C32E0(v44, type metadata accessor for OwnerSharingCircle);
LABEL_42:
  v0[36] = v56;
  v68 = swift_task_alloc();
  v0[37] = v68;
  *v68 = v0;
  v68[1] = sub_1005B49AC;
  v69 = v0[21];
  v70 = v0[7];
  v71 = v0[5];
  v72 = v0[6];

  return sub_1005B56F8(v69, v71, v72, v70);
}