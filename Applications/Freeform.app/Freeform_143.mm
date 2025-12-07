uint64_t sub_101105948(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1011059C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002D4C8;

  return sub_1010C7B44(a1, a2, v7, v6);
}

uint64_t sub_101105A74(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010C8798(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101105B6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_101105C24(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010F1D48(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101105D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 41);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1010BD5D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_101105DF8(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010D7E70(a1, v6, v7, v8, v1 + v5);
}

double sub_101105F54(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = sub_1005B981C(&qword_101A2ADA8, &qword_1014C6010);
  *(inited + 64) = sub_10001A2F8(&qword_101A2ADB0, &qword_101A2ADA8, &qword_1014C6010, &protocol conformance descriptor for [A]);
  *(inited + 32) = a1;

  v8 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v8, "Updating store snapshot for new highlights. %@", 46, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_10064191C(0, 0, v5, &unk_1014C6020, v12);

  return result;
}

uint64_t sub_101106190(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10000BE14(a1, v4, &qword_101A0A320, &qword_10146D650);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  [v5 setObject:isa forKey:@"CRLCloudQuotaExceededAlertLastShownDate"];

  swift_unknownObjectRelease();
  return sub_10000CAAC(a1, &qword_101A0A320, &qword_10146D650);
}

uint64_t sub_101106314(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  *&v7 = 0xD000000000000010;
  *(&v7 + 1) = 0x800000010155F8A0;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_1000640CC(v6), (v4 & 1) == 0))
  {

    sub_100064234(v6);
LABEL_9:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  sub_100064288(*(v2 + 56) + 32 * v3, &v7);
  sub_100064234(v6);

  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_10000CAAC(&v7, &unk_1019F4D00, &unk_10146E7F0);
    return 0;
  }

  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  if (swift_dynamicCast())
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101106434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010F1BA0(a1, v4, v5, v7, v6);
}

uint64_t sub_1011064F4(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1010F2A24(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1011065F8(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010D7048(a1, v6, v7, v8, v1 + v5);
}

double sub_1011066F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_101106750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010E648C(a1, v4, v5, v7, v6);
}

uint64_t sub_101106818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_101077C34(a1, v4, v5, v6);
}

uint64_t sub_1011068F0(void (*a1)(void, __n128), void (*a2)(void))
{
  swift_unknownObjectRelease();
  (a1)(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_101106958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010E4A28(a1, v4, v5, v7, v6);
}

uint64_t sub_101106A18(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010E030C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101106B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010DFE50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101106BE4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010DF47C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101106CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010DE9B8(a1, v4, v5, v6);
}

uint64_t sub_101106E14()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_101106F24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_101106FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010DB3F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10110706C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010DBC08(a1, v4, v5, v6);
}

uint64_t sub_101107120()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_100FF3754();
}

uint64_t sub_1011071E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_1010D5910();
}

uint64_t sub_10110729C()
{

  sub_100005070((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1011072F4()
{
  result = qword_101A2ADB8;
  if (!qword_101A2ADB8)
  {
    result = swift_getWitnessTable(byte_1014C631C, &type metadata for CRLBoardLibrary.RenameError, v0, v1);
    atomic_store(result, &qword_101A2ADB8);
  }

  return result;
}

uint64_t sub_1011073C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010C2AA0(a1, v4, v5, v6);
}

uint64_t sub_101107544(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_101107550(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010C7288(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101107648(void (*a1)(void, void, __n128))
{

  (a1)(*(v1 + 24), *(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1011076D4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1010C68C0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_101107804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_1010F3210();
}

uint64_t sub_1011078B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_101107908(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_101107960(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002D4C8;

  return sub_1010D4FA4(a1, a2, v7, v6);
}

uint64_t sub_101107A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_101107A7C(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLFolder(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010D544C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101107B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_101107C14()
{
  result = qword_101A2ADF0;
  if (!qword_101A2ADF0)
  {
    result = swift_getWitnessTable(byte_1014C62F4, &type metadata for CRLBoardLibrary.RenameError, v0, v1);
    atomic_store(result, &qword_101A2ADF0);
  }

  return result;
}

uint64_t sub_101107D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_101107DB0(uint64_t a1)
{
  v2 = sub_101107F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101107DEC(uint64_t a1)
{
  v2 = sub_101107F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_101A2ADF8, &qword_1014C6360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_101107F68()
{
  result = qword_101A2AE00;
  if (!qword_101A2AE00)
  {
    result = swift_getWitnessTable(aI_23, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AE00);
  }

  return result;
}

void *DebugData.init(from:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2AE08, &qword_1014C6368);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

uint64_t sub_101108118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2AE08, &qword_1014C6368);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100005070(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_101108294(void *a1)
{
  v2 = sub_1005B981C(&qword_101A2ADF8, &qword_1014C6360);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1011083E4()
{
  result = qword_101A2AE20;
  if (!qword_101A2AE20)
  {
    result = swift_getWitnessTable(byte_1014C64E8, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AE20);
  }

  return result;
}

unint64_t sub_10110843C()
{
  result = qword_101A2AE28;
  if (!qword_101A2AE28)
  {
    result = swift_getWitnessTable(byte_1014C6458, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AE28);
  }

  return result;
}

unint64_t sub_101108494()
{
  result = qword_101A2AE30;
  if (!qword_101A2AE30)
  {
    result = swift_getWitnessTable(byte_1014C6480, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AE30);
  }

  return result;
}

id CRLRateLimiter.__allocating_init(intervalInSeconds:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue;
  sub_100618868();
  *&v3[v4] = static OS_dispatch_queue.main.getter();
  v5 = &v3[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  static Date.distantPast.getter();
  *&v3[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, "init");
}

id CRLRateLimiter.init(intervalInSeconds:)(double a1)
{
  v3 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue;
  sub_100618868();
  *&v1[v3] = static OS_dispatch_queue.main.getter();
  v4 = &v1[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  static Date.distantPast.getter();
  *&v1[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLRateLimiter(0);
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t type metadata accessor for CRLRateLimiter(uint64_t a1)
{
  result = qword_101A2AE80;
  if (!qword_101A2AE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CRLRateLimiter.exec(_:)(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  __chkstk_darwin(v7);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = v41 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v41 - v17;
  sub_10098EABC(&_mh_execute_header, "exec(_:)", 8, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRateLimiter.swift", 85, 2, 31);
  Date.init()();
  v19 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_lastExecutionTime;
  swift_beginAccess();
  v43 = *(v13 + 16);
  v43(v15, v2 + v19, v12);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v13 + 8);
  v23 = v22(v15, v12);
  if (*(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval) <= v21)
  {
    v55(v23);
    Date.init()();
    v22(v18, v12);
    swift_beginAccess();
    (*(v13 + 40))(v2 + v19, v15, v12);
    swift_endAccess();
    v30 = (v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v31 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v32 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock + 8);
    *v30 = 0;
    v30[1] = 0;
    sub_1000C1014(v31, v32);
  }

  else
  {
    v24 = v13 + 8;
    v42 = v18;
    v45 = v22;
    v25 = (v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v26 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v27 = *(v3 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock + 8);
    v28 = v56;
    *v25 = v55;
    v25[1] = v28;

    v29 = sub_1000C1014(v26, v27);
    if (v26)
    {
      v45(v42, v12, v29);
    }

    else
    {
      v56 = *(v3 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue);
      v33 = v44;
      static DispatchTime.now()();
      v43(v15, v3 + v19, v12);
      Date.timeIntervalSinceNow.getter();
      v41[1] = v24;
      (v45)(v15, v12);
      v34 = v46;
      + infix(_:_:)();
      v35 = *(v54 + 8);
      v54 += 8;
      v55 = v35;
      (v35)(v33, v53);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_101108EFC;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018B1A68;
      v37 = _Block_copy(aBlock);

      v38 = v47;
      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_1005D91D8();
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10000D494();
      v39 = v49;
      v40 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v37);
      (*(v51 + 8))(v39, v40);
      (*(v48 + 8))(v38, v50);
      (v55)(v34, v53);
      (v45)(v42, v12);
    }
  }
}

void sub_101108D88(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (Strong + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v8 = *(Strong + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    if (v8)
    {
      v9 = v7[1];

      v8(v10);
      sub_1000C1014(v8, v9);
      v11 = *v7;
    }

    else
    {
      v11 = 0;
    }

    v12 = v7[1];
    *v7 = 0;
    v7[1] = 0;
    sub_1000C1014(v11, v12);
    Date.init()();
    v13 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_lastExecutionTime;
    swift_beginAccess();
    (*(v2 + 40))(&v6[v13], v4, v1);
    swift_endAccess();
  }
}

id CRLRateLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLRateLimiter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1011090A0(uint64_t a1)
{
  result = type metadata accessor for Date();
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

void sub_101109158(uint64_t a1, uint64_t (**a2)(void))
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v43 = *(v51 - 8);
  __chkstk_darwin(v51);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v39 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = swift_allocObject();
  v52 = a2;
  v53 = v17;
  *(v17 + 16) = a2;
  _Block_copy(a2);
  sub_10098EABC(&_mh_execute_header, "exec(_:)", 8, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRateLimiter.swift", 85, 2, 31);
  Date.init()();
  v18 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_lastExecutionTime;
  swift_beginAccess();
  v19 = *(v11 + 16);
  v19(v13, a1 + v18, v10);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v11 + 8);
  (v22)(v13, v10);
  if (*(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval) <= v21)
  {
    v52[2]();
    Date.init()();
    (v22)(v16, v10);
    swift_beginAccess();
    (*(v11 + 40))(a1 + v18, v13, v10);
    swift_endAccess();
    v29 = (a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v30 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v31 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock + 8);
    *v29 = 0;
    v29[1] = 0;
    sub_1000C1014(v30, v31);
  }

  else
  {
    v23 = v10;
    v52 = v22;
    v41 = v16;
    v24 = (a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v25 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v26 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock + 8);
    v27 = v53;
    *v24 = sub_100685EBC;
    v24[1] = v27;

    v28 = sub_1000C1014(v25, v26);
    if (v25)
    {
      (v52)(v41, v23, v28);
    }

    else
    {
      v39 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue);
      v32 = v42;
      static DispatchTime.now()();
      v40 = v23;
      v19(v13, a1 + v18, v23);
      Date.timeIntervalSinceNow.getter();
      (v52)(v13, v23);
      + infix(_:_:)();
      v43 = *(v43 + 8);
      (v43)(v32, v51);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_101109804;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018B1AB8;
      v34 = _Block_copy(aBlock);

      v35 = v44;
      static DispatchQoS.unspecified.getter();
      v54 = _swiftEmptyArrayStorage;
      sub_1005D91D8();
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10000D494();
      v36 = v46;
      v37 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v50;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v34);
      (*(v48 + 8))(v36, v37);
      (*(v45 + 8))(v35, v47);
      (v43)(v38, v51);
      (v52)(v41, v40);
    }
  }
}

uint64_t sub_101109810(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0 || *&v3 != *&v4)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    v6 = a1[1];
    if (v3 != v4 || v6 != a2[1])
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return 1;
}

void *sub_101109874()
{
  sub_1007CF0A8(v0, v25);
  sub_1007CF0A8(v0, v26);
  sub_100017CD8();

  v1 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  sub_101109EB4(v0);
  v2 = *(v1 + 16);
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v27 = _swiftEmptyArrayStorage;
  result = sub_1007764E4(0, v2, 0);
  v4 = 0;
  v5 = v27;
  v6 = v1 + 56;
  v22 = v1;
  while (v4 < *(v1 + 16))
  {
    v23 = v5;
    v7 = *(v6 - 24);
    v5 = *(v6 - 16);
    __chkstk_darwin(result);
    swift_bridgeObjectRetain_n();
    v8 = static String._fromSubstring(_:)();
    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        if (v8 >= 0x21u || ((0x100003E01uLL >> v8) & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v10 >= 0x21 || ((0x100003E01uLL >> v10) & 1) == 0)
        {
LABEL_12:
          v11 = _swift_stdlib_strtof_clocale();
          if (v11)
          {
            v24 = *v11 == 0;
            goto LABEL_15;
          }
        }

LABEL_14:
        v24 = 0;
        goto LABEL_15;
      }
    }

    _StringGuts._slowWithCString<A>(_:)();
LABEL_15:

    if (v24)
    {
      result = swift_bridgeObjectRelease_n();
      v12 = 0;
      v13 = 0;
    }

    else
    {
      if (Substring.distance(from:to:)() != 1)
      {

        sub_1007B2110();
        v18 = String.init<A>(_:)();
        v20 = v19;
        sub_101109F88();
        swift_allocError();
        *v21 = v18;
        v21[1] = v20;
        swift_willThrow();

        return v5;
      }

      if ((v5 ^ v7) < 0x4000)
      {
        goto LABEL_29;
      }

      v13 = Substring.subscript.getter();
      v12 = v14;
    }

    v5 = v23;
    v27 = v23;
    v16 = v23[2];
    v15 = v23[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1007764E4((v15 > 1), v16 + 1, 1);
      v5 = v27;
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    v17 = (v5 + 24 * v16);
    v17[4] = v13;
    v17[5] = v12;
    *(v17 + 48) = v24;
    v6 += 32;
    v1 = v22;
    if (v2 == v4)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t TSContentLanguage.Models.Path.isEquivalent(to:)()
{
  v0 = sub_101109874();
  v1 = sub_101109874();
  if (v0)
  {
    if (v1)
    {
      v2 = sub_100B5E638(v1, v0);

      return v2 & 1;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_101109CE4(uint64_t a1)
{
  sub_1007CF0A8(a1, &v3);
  sub_1007CF0A8(v1, v4);
  return TSContentLanguage.Models.Path.isEquivalent(to:)() & 1;
}

uint64_t sub_101109D2C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *v1;
  if (v1[2])
  {
    if (v4)
    {
      return sub_1007C87EC(*&v5, *&v3);
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

  if (v5 == v3 && v1[1] == a1[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4PathO2eeoiySbAG_AGtFZ_0()
{
  v0 = sub_101109874();
  v1 = sub_101109874();
  if (v0)
  {
    if (v1)
    {
      v2 = sub_100673210(v0, v1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 1;
      return v2 & 1;
    }

    v2 = 0;
  }

  return v2 & 1;
}

_BYTE *sub_101109F08@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_101109F88()
{
  result = qword_101A2AE90;
  if (!qword_101A2AE90)
  {
    result = swift_getWitnessTable(aU_3, &_s26BezierPathCommandComponentO23InvalidCommandComponentVN, v0, v1);
    atomic_store(result, &qword_101A2AE90);
  }

  return result;
}

uint64_t sub_101109FF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10110A040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_10110A0A4(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A2AF00, &qword_1014C6B68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-v6];
  sub_100020E58(a1, a1[3]);
  sub_10110BAF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[11];
  v9 = v2[13];
  v81 = v2[12];
  v82 = v9;
  v10 = v2[7];
  v11 = v2[9];
  v77 = v2[8];
  v78 = v11;
  v12 = v2[9];
  v13 = v2[11];
  v79 = v2[10];
  v80 = v13;
  v14 = v2[3];
  v15 = v2[5];
  v73 = v2[4];
  v74 = v15;
  v16 = v2[5];
  v17 = v2[7];
  v75 = v2[6];
  v76 = v17;
  v18 = v2[1];
  v70[0] = *v2;
  v70[1] = v18;
  v19 = v2[3];
  v21 = *v2;
  v20 = v2[1];
  v71 = v2[2];
  v72 = v19;
  v22 = v2[13];
  v60 = v81;
  v61 = v22;
  v56 = v77;
  v57 = v12;
  v58 = v79;
  v59 = v8;
  v52 = v73;
  v53 = v16;
  v54 = v75;
  v55 = v10;
  v48 = v21;
  v49 = v20;
  v83 = *(v2 + 28);
  v62 = *(v2 + 28);
  v50 = v71;
  v51 = v14;
  v47 = 0;
  sub_10000BE14(v70, v45, &unk_101A106C0, &unk_1014907B0);
  sub_100B93B78();
  v23 = v84;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v45[12] = v60;
  v45[13] = v61;
  v46 = v62;
  v45[8] = v56;
  v45[9] = v57;
  v45[10] = v58;
  v45[11] = v59;
  v45[4] = v52;
  v45[5] = v53;
  v45[6] = v54;
  v45[7] = v55;
  v45[0] = v48;
  v45[1] = v49;
  v45[2] = v50;
  v45[3] = v51;
  sub_10000CAAC(v45, &unk_101A106C0, &unk_1014907B0);
  if (!v23)
  {
    v24 = *(v2 + 312);
    v25 = *(v2 + 280);
    v66 = *(v2 + 296);
    v67 = v24;
    v26 = *(v2 + 312);
    v27 = *(v2 + 344);
    v68 = *(v2 + 328);
    v69 = v27;
    v28 = *(v2 + 248);
    v63[0] = *(v2 + 232);
    v63[1] = v28;
    v29 = *(v2 + 280);
    v64 = *(v2 + 264);
    v65 = v29;
    v41 = v66;
    v42 = v26;
    v30 = *(v2 + 344);
    v43 = v68;
    v44 = v30;
    v31 = *(v2 + 248);
    v37 = *(v2 + 232);
    v38 = v31;
    v39 = v64;
    v40 = v25;
    v36 = 1;
    sub_10000BE14(v63, v35, &unk_101A09DE0, &qword_1014897A0);
    sub_100A721E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35[4] = v41;
    v35[5] = v42;
    v35[6] = v43;
    v35[7] = v44;
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    sub_10000CAAC(v35, &unk_101A09DE0, &qword_1014897A0);
    LOBYTE(v34) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v2 + 46);
    v33[7] = 3;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_10110A50C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C6C20[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10110A594(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C6C20[v2]);
  return Hasher._finalize()();
}

unint64_t sub_10110A5F8()
{
  v1 = 0x6144656B6F727473;
  v2 = 0x615272656E726F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6144776F64616873;
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

uint64_t sub_10110A680@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10110BCB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10110A6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110BA9C();
  v5 = sub_10110BAF4();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_10110A728(uint64_t a1)
{
  v2 = sub_10110BAF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10110A764(uint64_t a1)
{
  v2 = sub_10110BAF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10110A7A8(uint64_t a1)
{

  *(v1 + 368) = a1;
  return result;
}

uint64_t sub_10110A7F4(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_10110A0A0(v4, __dst) & 1;
}

void *sub_10110A84C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10110BE38(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x178uLL);
  }

  return result;
}

uint64_t sub_10110A8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110C280();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10110A904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110C280();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10110A958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10110B98C();
  v7 = sub_10110C2D4();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10110A9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110C280();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10110AAAC(uint64_t a1)
{
  v2 = sub_10110BC64();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_10110AAF8(__int128 *a1, __int128 *a2)
{
  v4 = a1[11];
  v5 = a1[13];
  v221 = a1[12];
  v222 = v5;
  v6 = a1[7];
  v7 = a1[9];
  v217 = a1[8];
  v218 = v7;
  v9 = a1[9];
  v8 = a1[10];
  v10 = v8;
  v220 = a1[11];
  v219 = v8;
  v11 = a1[3];
  v12 = a1[5];
  v213 = a1[4];
  v214 = v12;
  v13 = a1[5];
  v14 = a1[6];
  v15 = v14;
  v216 = a1[7];
  v215 = v14;
  v16 = a1[1];
  v212[0] = *a1;
  v212[1] = v16;
  v17 = a1[2];
  v18 = *a1;
  v19 = a1[1];
  v20 = v17;
  v212[3] = a1[3];
  v212[2] = v17;
  v21 = a2[11];
  v22 = a2[13];
  v209 = a2[12];
  v210 = v22;
  v23 = a2[7];
  v24 = a2[9];
  v205 = a2[8];
  v206 = v24;
  v26 = a2[9];
  v25 = a2[10];
  v27 = v25;
  v208 = a2[11];
  v207 = v25;
  v28 = a2[3];
  v29 = a2[5];
  v201 = a2[4];
  v202 = v29;
  v31 = a2[5];
  v30 = a2[6];
  v32 = v30;
  v204 = a2[7];
  v203 = v30;
  v33 = a2[1];
  v34 = v33;
  v200[0] = *a2;
  v200[1] = v33;
  v35 = a2[2];
  v200[3] = a2[3];
  v200[2] = v35;
  v36 = a1[11];
  v37 = a1[13];
  __src[12] = a1[12];
  __src[13] = v37;
  v38 = a1[7];
  v39 = a1[9];
  __src[8] = a1[8];
  __src[9] = v39;
  v40 = a1[10];
  __src[11] = v36;
  __src[10] = v40;
  v41 = a1[3];
  v42 = a1[5];
  __src[4] = a1[4];
  __src[5] = v42;
  v43 = a1[6];
  __src[7] = v38;
  __src[6] = v43;
  v44 = a1[1];
  __src[0] = *a1;
  __src[1] = v44;
  v45 = a1[2];
  __src[3] = v41;
  __src[2] = v45;
  v46 = a2[13];
  *(&__src[26] + 8) = v209;
  *(&__src[27] + 8) = v46;
  *(&__src[22] + 8) = v205;
  *(&__src[23] + 8) = v26;
  *(&__src[24] + 8) = v27;
  *(&__src[25] + 8) = v21;
  *(&__src[18] + 8) = v201;
  *(&__src[19] + 8) = v31;
  *(&__src[20] + 8) = v32;
  *(&__src[21] + 8) = v23;
  *(&__src[16] + 8) = v35;
  *(&__src[17] + 8) = v28;
  *(&__src[14] + 8) = v200[0];
  *(&__src[15] + 8) = v34;
  v47 = a1[13];
  v241[12] = v221;
  v241[13] = v47;
  v241[8] = v217;
  v241[9] = v9;
  v241[11] = v4;
  v241[10] = v10;
  v241[4] = v213;
  v241[5] = v13;
  v241[7] = v6;
  v241[6] = v15;
  v241[0] = v18;
  v241[1] = v19;
  v223 = *(a1 + 28);
  v211 = *(a2 + 28);
  v48 = *(a2 + 28);
  *&__src[14] = *(a1 + 28);
  *(&__src[28] + 1) = v48;
  v242 = *(a1 + 28);
  v241[3] = v11;
  v241[2] = v20;
  if (sub_1000C0FB4(v241) == 1)
  {
    v49 = a2[13];
    __dst[12] = a2[12];
    __dst[13] = v49;
    *&__dst[14] = *(a2 + 28);
    v50 = a2[9];
    __dst[8] = a2[8];
    __dst[9] = v50;
    v51 = a2[10];
    __dst[11] = a2[11];
    __dst[10] = v51;
    v52 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v52;
    v53 = a2[6];
    __dst[7] = a2[7];
    __dst[6] = v53;
    v54 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v54;
    v55 = a2[2];
    __dst[3] = a2[3];
    __dst[2] = v55;
    if (sub_1000C0FB4(__dst) == 1)
    {
      v56 = a1[13];
      v238 = a1[12];
      v239 = v56;
      v240 = *(a1 + 28);
      v57 = a1[9];
      v234 = a1[8];
      v235 = v57;
      v58 = a1[10];
      v237 = a1[11];
      v236 = v58;
      v59 = a1[5];
      v230 = a1[4];
      v231 = v59;
      v60 = a1[6];
      v233 = a1[7];
      v232 = v60;
      v61 = a1[1];
      v226 = *a1;
      v227 = v61;
      v62 = a1[2];
      v229 = a1[3];
      v228 = v62;
      sub_10000BE14(v212, v224, &unk_101A106C0, &unk_1014907B0);
      sub_10000BE14(v200, v224, &unk_101A106C0, &unk_1014907B0);
      sub_10000CAAC(&v226, &unk_101A106C0, &unk_1014907B0);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000BE14(v212, &v226, &unk_101A106C0, &unk_1014907B0);
    sub_10000BE14(v200, &v226, &unk_101A106C0, &unk_1014907B0);
    v70 = &unk_1019F5EE0;
    v71 = &unk_1014B73B0;
LABEL_12:
    sub_10000CAAC(__dst, v70, v71);
    goto LABEL_13;
  }

  v63 = a2[13];
  __dst[12] = a2[12];
  __dst[13] = v63;
  *&__dst[14] = *(a2 + 28);
  v64 = a2[9];
  __dst[8] = a2[8];
  __dst[9] = v64;
  v65 = a2[10];
  __dst[11] = a2[11];
  __dst[10] = v65;
  v66 = a2[5];
  __dst[4] = a2[4];
  __dst[5] = v66;
  v67 = a2[6];
  __dst[7] = a2[7];
  __dst[6] = v67;
  v68 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v68;
  v69 = a2[2];
  __dst[3] = a2[3];
  __dst[2] = v69;
  if (sub_1000C0FB4(__dst) == 1)
  {
    goto LABEL_5;
  }

  v72 = a2[11];
  v73 = a2[13];
  v169 = a2[12];
  v170 = v73;
  v74 = a2[7];
  v75 = a2[9];
  v165 = a2[8];
  v166 = v75;
  v76 = a2[9];
  v77 = a2[11];
  v167 = a2[10];
  v168 = v77;
  v78 = a2[3];
  v79 = a2[5];
  v161 = a2[4];
  v162 = v79;
  v80 = a2[5];
  v81 = a2[7];
  v163 = a2[6];
  v164 = v81;
  v82 = a2[1];
  v157 = *a2;
  v158 = v82;
  v83 = a2[3];
  v85 = *a2;
  v84 = a2[1];
  v159 = a2[2];
  v160 = v83;
  v86 = a2[13];
  v238 = v169;
  v239 = v86;
  v234 = v165;
  v235 = v76;
  v237 = v72;
  v236 = v167;
  v230 = v161;
  v231 = v80;
  v233 = v74;
  v232 = v163;
  v226 = v85;
  v227 = v84;
  v171 = *(a2 + 28);
  v240 = *(a2 + 28);
  v229 = v78;
  v228 = v159;
  v87 = a1[13];
  v224[12] = a1[12];
  v224[13] = v87;
  v225 = *(a1 + 28);
  v88 = a1[9];
  v224[8] = a1[8];
  v224[9] = v88;
  v89 = a1[10];
  v224[11] = a1[11];
  v224[10] = v89;
  v90 = a1[5];
  v224[4] = a1[4];
  v224[5] = v90;
  v91 = a1[6];
  v224[7] = a1[7];
  v224[6] = v91;
  v92 = a1[1];
  v224[0] = *a1;
  v224[1] = v92;
  v93 = a1[2];
  v224[3] = a1[3];
  v224[2] = v93;
  sub_10000BE14(v212, &v172, &unk_101A106C0, &unk_1014907B0);
  sub_10000BE14(v200, &v172, &unk_101A106C0, &unk_1014907B0);
  v94 = sub_100B931E0(v224, &v226);
  sub_10000CAAC(&v157, &unk_101A106C0, &unk_1014907B0);
  v95 = a1[13];
  v184 = a1[12];
  v185 = v95;
  v186 = *(a1 + 28);
  v96 = a1[9];
  v180 = a1[8];
  v181 = v96;
  v97 = a1[11];
  v182 = a1[10];
  v183 = v97;
  v98 = a1[5];
  v176 = a1[4];
  v177 = v98;
  v99 = a1[7];
  v178 = a1[6];
  v179 = v99;
  v100 = a1[1];
  v172 = *a1;
  v173 = v100;
  v101 = a1[3];
  v174 = a1[2];
  v175 = v101;
  sub_10000CAAC(&v172, &unk_101A106C0, &unk_1014907B0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v102 = (a1 + 232);
  v103 = *(a1 + 248);
  v157 = *(a1 + 232);
  v158 = v103;
  v104 = *(a1 + 280);
  v105 = *(a1 + 312);
  v161 = *(a1 + 296);
  v162 = v105;
  v106 = *(a1 + 312);
  v107 = *(a1 + 344);
  v163 = *(a1 + 328);
  v164 = v107;
  v108 = *(a1 + 280);
  v159 = *(a1 + 264);
  v160 = v108;
  v109 = (a2 + 232);
  v110 = *(a2 + 232);
  v111 = *(a2 + 248);
  v112 = *(a2 + 264);
  v199[3] = *(a2 + 280);
  v199[2] = v112;
  v199[1] = v111;
  v199[0] = v110;
  v114 = *(a2 + 312);
  v113 = *(a2 + 328);
  v115 = v113;
  v199[7] = *(a2 + 344);
  v199[6] = v113;
  v116 = *(a2 + 296);
  v118 = *(a2 + 264);
  v117 = *(a2 + 280);
  v119 = v116;
  v199[5] = *(a2 + 312);
  v199[4] = v116;
  v120 = *(a1 + 312);
  __src[4] = *(a1 + 296);
  __src[5] = v120;
  v121 = *(a1 + 344);
  __src[6] = *(a1 + 328);
  __src[7] = v121;
  v122 = *(a1 + 248);
  __src[0] = *(a1 + 232);
  __src[1] = v122;
  v123 = *(a1 + 280);
  __src[2] = *(a1 + 264);
  __src[3] = v123;
  v124 = *(a2 + 232);
  __src[11] = v117;
  __src[10] = v118;
  __src[9] = *(a2 + 248);
  __src[8] = v124;
  __src[15] = *(a2 + 344);
  __src[14] = v115;
  __src[13] = v114;
  __src[12] = v119;
  v125 = *(a1 + 232);
  v196[2] = v159;
  v196[3] = v104;
  v126 = *(a1 + 248);
  v196[0] = v125;
  v196[1] = v126;
  v127 = *(a1 + 344);
  v196[6] = v163;
  v196[7] = v127;
  v196[4] = v161;
  v196[5] = v106;
  if (sub_10074A978(v196) != 1)
  {
    v136 = *(a2 + 312);
    v195[4] = *(a2 + 296);
    v195[5] = v136;
    v137 = *(a2 + 344);
    v195[6] = *(a2 + 328);
    v195[7] = v137;
    v138 = *(a2 + 248);
    v195[0] = *v109;
    v195[1] = v138;
    v139 = *(a2 + 280);
    v195[2] = *(a2 + 264);
    v195[3] = v139;
    if (sub_10074A978(v195) != 1)
    {
      v142 = *(a2 + 312);
      v190 = *(a2 + 296);
      v191 = v142;
      v143 = *(a2 + 344);
      v192 = *(a2 + 328);
      v193 = v143;
      v144 = *(a2 + 248);
      v187[0] = *v109;
      v187[1] = v144;
      v145 = *(a2 + 280);
      v188 = *(a2 + 264);
      v189 = v145;
      __dst[3] = v145;
      __dst[1] = v144;
      __dst[2] = v188;
      __dst[0] = v187[0];
      __dst[7] = v143;
      __dst[6] = v192;
      __dst[5] = v142;
      __dst[4] = v190;
      v146 = *v102;
      v147 = *(a1 + 248);
      v148 = *(a1 + 280);
      v174 = *(a1 + 264);
      v175 = v148;
      v172 = v146;
      v173 = v147;
      v149 = *(a1 + 296);
      v150 = *(a1 + 312);
      v151 = *(a1 + 344);
      v178 = *(a1 + 328);
      v179 = v151;
      v176 = v149;
      v177 = v150;
      sub_10000BE14(&v157, v194, &unk_101A09DE0, &qword_1014897A0);
      sub_10000BE14(v199, v194, &unk_101A09DE0, &qword_1014897A0);
      v152 = sub_100A71A74(&v172, __dst);
      sub_10000CAAC(v187, &unk_101A09DE0, &qword_1014897A0);
      v153 = *(a1 + 312);
      v194[4] = *(a1 + 296);
      v194[5] = v153;
      v154 = *(a1 + 344);
      v194[6] = *(a1 + 328);
      v194[7] = v154;
      v155 = *(a1 + 248);
      v194[0] = *v102;
      v194[1] = v155;
      v156 = *(a1 + 280);
      v194[2] = *(a1 + 264);
      v194[3] = v156;
      sub_10000CAAC(v194, &unk_101A09DE0, &qword_1014897A0);
      if ((v152 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v128 = *(a2 + 312);
  __dst[4] = *(a2 + 296);
  __dst[5] = v128;
  v129 = *(a2 + 344);
  __dst[6] = *(a2 + 328);
  __dst[7] = v129;
  v130 = *(a2 + 248);
  __dst[0] = *v109;
  __dst[1] = v130;
  v131 = *(a2 + 280);
  __dst[2] = *(a2 + 264);
  __dst[3] = v131;
  if (sub_10074A978(__dst) != 1)
  {
LABEL_11:
    __dst[12] = __src[12];
    __dst[13] = __src[13];
    __dst[14] = __src[14];
    __dst[15] = __src[15];
    __dst[8] = __src[8];
    __dst[9] = __src[9];
    __dst[10] = __src[10];
    __dst[11] = __src[11];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    __dst[6] = __src[6];
    __dst[7] = __src[7];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    sub_10000BE14(&v157, &v172, &unk_101A09DE0, &qword_1014897A0);
    sub_10000BE14(v199, &v172, &unk_101A09DE0, &qword_1014897A0);
    v70 = &unk_1019FDFA8;
    v71 = &unk_1014C4CC0;
    goto LABEL_12;
  }

  v132 = *(a1 + 312);
  v176 = *(a1 + 296);
  v177 = v132;
  v133 = *(a1 + 344);
  v178 = *(a1 + 328);
  v179 = v133;
  v134 = *(a1 + 248);
  v172 = *v102;
  v173 = v134;
  v135 = *(a1 + 280);
  v174 = *(a1 + 264);
  v175 = v135;
  sub_10000BE14(&v157, v195, &unk_101A09DE0, &qword_1014897A0);
  sub_10000BE14(v199, v195, &unk_101A09DE0, &qword_1014897A0);
  sub_10000CAAC(&v172, &unk_101A09DE0, &qword_1014897A0);
LABEL_16:
  if (*(a1 + 90) == *(a2 + 90))
  {
    sub_100B3216C(*(a1 + 46), *(a2 + 46));
    return v140 & 1;
  }

LABEL_13:
  v140 = 0;
  return v140 & 1;
}

unint64_t sub_10110B468(__int128 *a1)
{
  v2 = v1;
  v26 = type metadata accessor for UUID();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  v7 = a1[13];
  v42 = a1[12];
  v43 = v7;
  v44 = *(a1 + 28);
  v8 = a1[9];
  v38 = a1[8];
  v39 = v8;
  v9 = a1[11];
  v40 = a1[10];
  v41 = v9;
  v10 = a1[5];
  v34 = a1[4];
  v35 = v10;
  v11 = a1[7];
  v36 = a1[6];
  v37 = v11;
  v12 = a1[1];
  v30 = *a1;
  v31 = v12;
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v14 = 0;
  if (sub_1000C0FB4(&v30) != 1)
  {
    v28[12] = v42;
    v28[13] = v43;
    v29 = v44;
    v28[8] = v38;
    v28[9] = v39;
    v28[10] = v40;
    v28[11] = v41;
    v28[4] = v34;
    v28[5] = v35;
    v28[6] = v36;
    v28[7] = v37;
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    v14 = sub_100B946C8(v28, 0);
  }

  v15 = objc_allocWithZone(type metadata accessor for CRLCommandSetStroke(0));
  v16 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v25 = v2;
  v18 = *(v4 + 8);
  v19 = v26;
  v18(v6, v26);
  [v15 initWithId:isa stroke:v14];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = sub_100CE4144();
  v21 = objc_allocWithZone(type metadata accessor for CRLCommandSetShadow(0));
  (*(**(v25 + v16) + 264))();
  v22 = UUID._bridgeToObjectiveC()().super.isa;
  v18(v6, v19);
  [v21 initWithId:v22 shadow:v20];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v27;
}

uint64_t sub_10110B7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10110B828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 376) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10110B8DC()
{
  result = qword_101A2AE98;
  if (!qword_101A2AE98)
  {
    result = swift_getWitnessTable(byte_1014C6814, &type metadata for CRLMediaPresetData, v0, v1);
    atomic_store(result, &qword_101A2AE98);
  }

  return result;
}

unint64_t sub_10110B934()
{
  result = qword_101A2AEA0;
  if (!qword_101A2AEA0)
  {
    result = swift_getWitnessTable(byte_1014C686C, &type metadata for CRLMediaPresetData, v0, v1);
    atomic_store(result, &qword_101A2AEA0);
  }

  return result;
}

unint64_t sub_10110B98C()
{
  result = qword_101A2AEA8;
  if (!qword_101A2AEA8)
  {
    result = swift_getWitnessTable(aM_13, &type metadata for CRLMediaPresetData, v0, v1);
    atomic_store(result, &qword_101A2AEA8);
  }

  return result;
}

unint64_t sub_10110B9EC()
{
  result = qword_101A2AEB0;
  if (!qword_101A2AEB0)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AEB0);
  }

  return result;
}

unint64_t sub_10110BA44()
{
  result = qword_101A2AEB8;
  if (!qword_101A2AEB8)
  {
    result = swift_getWitnessTable(aI_24, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AEB8);
  }

  return result;
}

unint64_t sub_10110BA9C()
{
  result = qword_101A2AEC0;
  if (!qword_101A2AEC0)
  {
    result = swift_getWitnessTable(a9_8, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AEC0);
  }

  return result;
}

unint64_t sub_10110BAF4()
{
  result = qword_101A2AEC8;
  if (!qword_101A2AEC8)
  {
    result = swift_getWitnessTable(byte_1014C6994, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AEC8);
  }

  return result;
}

unint64_t sub_10110BB4C()
{
  result = qword_101A2AED0;
  if (!qword_101A2AED0)
  {
    result = swift_getWitnessTable(asc_1014C6A0C, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AED0);
  }

  return result;
}

unint64_t sub_10110BBA4()
{
  result = qword_101A2AED8;
  if (!qword_101A2AED8)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AED8);
  }

  return result;
}

unint64_t sub_10110BBFC()
{
  result = qword_101A2AEE0;
  if (!qword_101A2AEE0)
  {
    v3 = sub_1005C4E5C(&qword_101A2AEE8, &qword_1014C6A38);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A2AEE0);
  }

  return result;
}

unint64_t sub_10110BC64()
{
  result = qword_101A2AEF0;
  if (!qword_101A2AEF0)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for CRLMediaPresetData, v0, v1);
    atomic_store(result, &qword_101A2AEF0);
  }

  return result;
}

uint64_t sub_10110BCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144656B6F727473 && a2 == 0xEA00000000006174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144776F64616873 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

void *sub_10110BE38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2AEF8, &unk_1014C6B58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = a1[3];
  v15 = a1;
  sub_100020E58(a1, v9);
  sub_10110BAF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v15);
  }

  v31 = 0;
  sub_100B93B20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47[12] = v44;
  v47[13] = v45;
  *&v47[14] = v46;
  v47[8] = v40;
  v47[9] = v41;
  v47[11] = v43;
  v47[10] = v42;
  v47[4] = v36;
  v47[5] = v37;
  v47[7] = v39;
  v47[6] = v38;
  v47[0] = v32;
  v47[1] = v33;
  v47[3] = v35;
  v47[2] = v34;
  v22 = 1;
  sub_100A72188();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v47[18] + 8) = v27;
  *(&v47[19] + 8) = v28;
  *(&v47[20] + 8) = v29;
  *(&v47[21] + 8) = v30;
  *(&v47[16] + 8) = v25;
  *(&v47[17] + 8) = v26;
  *(&v47[14] + 8) = v23;
  *(&v47[15] + 8) = v24;
  v17[0] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v20 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v21;
  memcpy(v16, v47, 0x168uLL);
  LODWORD(v16[45]) = v11;
  v16[46] = v21;
  sub_100CE4F64(v16, v17);
  sub_100005070(v15);
  memcpy(v17, v47, sizeof(v17));
  v18 = v11;
  v19 = v12;
  sub_100CE4ED8(v17);
  return memcpy(a2, v16, 0x178uLL);
}

unint64_t sub_10110C280()
{
  result = qword_101A2AF08;
  if (!qword_101A2AF08)
  {
    result = swift_getWitnessTable(asc_1014C6AC8, &type metadata for CRLMediaPresetData, v0, v1);
    atomic_store(result, &qword_101A2AF08);
  }

  return result;
}

unint64_t sub_10110C2D4()
{
  result = qword_101A2AF10;
  if (!qword_101A2AF10)
  {
    result = swift_getWitnessTable(a9_9, &type metadata for CRLMediaPresetData, v0, v1);
    atomic_store(result, &qword_101A2AF10);
  }

  return result;
}

unint64_t sub_10110C33C()
{
  result = qword_101A2AF18;
  if (!qword_101A2AF18)
  {
    result = swift_getWitnessTable(byte_1014C6BF4, &type metadata for CRLMediaPresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2AF18);
  }

  return result;
}

uint64_t sub_10110C390()
{
  v0 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = sub_10057DBD4(0);
  v5 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v3, v4}];
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithString:v7];

  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1006950BC(v15);
  v13[12] = v15[12];
  v13[13] = v15[13];
  v13[14] = v15[14];
  v14 = v16;
  v13[8] = v15[8];
  v13[9] = v15[9];
  v13[10] = v15[10];
  v13[11] = v15[11];
  v13[4] = v15[4];
  v13[5] = v15[5];
  v13[6] = v15[6];
  v13[7] = v15[7];
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v13[3] = v15[3];
  v10 = v5;
  v11 = v8;
  sub_1011133FC(0, 0, v5, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v8, v2, v13, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v2, &unk_101A0B1C0, &qword_101470EC0);
  type metadata accessor for CRLWPShapeItem(0);
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_10110C60C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext))
  {
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = Strong;
  v3 = (*((swift_isaMask & *Strong) + 0x388))();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v30, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2u);
  StaticString.description.getter("_guardTransaction()", 19, 2);
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactable.swift", 91, 2);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v15;
  v16 = sub_1005CF04C();
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 79;
  v18 = v30;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter("_guardTransaction()", 19, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactable.swift", 91, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2);
  v27 = String._bridgeToObjectiveC()();

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:79 isFatal:1 format:v27 args:v24];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v28, v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10110CA3C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) || ((*((swift_isaMask & *v0) + 0x388))() & 1) == 0)
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = [v2 _atomicIncrementAssertCount];
  v27 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v27, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2u);
  StaticString.description.getter("_guardTransaction()", 19, 2);
  v4 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactable.swift", 91, 2);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v3;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v12;
  v13 = sub_1005CF04C();
  *(inited + 104) = v13;
  *(inited + 72) = v4;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 79;
  v15 = v27;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v4;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter("_guardTransaction()", 19, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactable.swift", 91, 2);
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2);
  v24 = String._bridgeToObjectiveC()();

  [v2 handleFailureInFunction:v22 file:v23 lineNumber:79 isFatal:1 format:v24 args:v21];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10110CE4C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext))
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = [v2 _atomicIncrementAssertCount];
  v27 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v27, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2u);
  StaticString.description.getter("_guardTransaction()", 19, 2);
  v4 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactable.swift", 91, 2);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v3;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v12;
  v13 = sub_1005CF04C();
  *(inited + 104) = v13;
  *(inited + 72) = v4;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 79;
  v15 = v27;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v4;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter("_guardTransaction()", 19, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactable.swift", 91, 2);
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2);
  v24 = String._bridgeToObjectiveC()();

  [v2 handleFailureInFunction:v22 file:v23 lineNumber:79 isFatal:1 format:v24 args:v21];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10110D21C(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLGroupItem(0);
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v11 = *(v10 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v10 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v12 = objc_allocWithZone(v9);
  v13 = v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v12 initWithStore:v13 parentContainerUUID:isa geometry:a1];

  (*(v6 + 8))(v8, v5);
  v16 = v18[1];
  sub_10097A374(a2);
  if (v16)
  {
  }

  return v15;
}

uint64_t sub_10110D3E4(uint64_t a1, __int128 *a2)
{
  v4 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_10057DBD4(0);
  v9 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v7, v8}];
  sub_101125504(a1, v6, type metadata accessor for CRLWPStorageCRDTData);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = v9;
  sub_1011133FC(0, 0, v9, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v6, a2, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v6, &unk_101A0B1C0, &qword_101470EC0);
  type metadata accessor for CRLWPShapeItem(0);
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_10110D5CC(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(*(*(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = type metadata accessor for CRLUUIDRemapHelper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v9[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v9[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 1;
  v15.receiver = v9;
  v15.super_class = v8;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = (*((swift_isaMask & *a1) + 0x288))(v6, v5, 0, v11);
  sub_10000CAAC(v5, &qword_1019F6990, &qword_10146D2F0);

  return v12;
}

char *sub_10110D7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for UUID();
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v18 = *(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v14);
  sub_101125504(a1, v12, type metadata accessor for CRLAssetData);
  sub_101125504(a2, v9, type metadata accessor for CRLAssetData);
  v19 = v18;
  v20 = a3;
  v22 = sub_100BEFD9C(v19, v16, v12, v9, a3, v21);

  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    return v24;
  }

  v26 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v27 = *(**&v24[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v29 = v27(v28);

  if (!v29)
  {
    if (!v25)
    {

      return v24;
    }

    goto LABEL_10;
  }

  if (!v25)
  {

    goto LABEL_10;
  }

  sub_100006370(0, &unk_101A11F40, off_10182F940);
  v30 = v25;
  v31 = static NSObject.== infix(_:_:)();

  if ((v31 & 1) == 0)
  {
LABEL_10:
    v32 = *(**&v24[v26] + 448);
    v33 = v25;

    v32(v25);

    return v24;
  }

  return v24;
}

uint64_t sub_10110DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_101123A5C(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);
}

id sub_10110DBDC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLGroupItem(0);
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v10 = objc_allocWithZone(v7);
  v11 = v9;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithStore:v11 parentContainerUUID:isa geometry:a1];

  (*(v4 + 8))(v6, v3);
  return v13;
}

char *sub_10110DD78(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for UUID();
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v18 = *(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v14);
  sub_10000BE14(a2, v12, &unk_101A1B880, &unk_10147AB00);
  (*(v7 + 16))(v9, v35, v6);
  v19 = v18;
  v20 = a1;
  v21 = sub_100A81180(v19, v16, v12, v9, a1);

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    return v23;
  }

  v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v26 = *(**&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v28 = v26(v27);

  if (!v28)
  {
    if (!v24)
    {

      return v23;
    }

    goto LABEL_10;
  }

  if (!v24)
  {

    goto LABEL_10;
  }

  sub_100006370(0, &unk_101A11F40, off_10182F940);
  v29 = v24;
  v30 = static NSObject.== infix(_:_:)();

  if ((v30 & 1) == 0)
  {
LABEL_10:
    v31 = *(**&v23[v25] + 448);
    v32 = v24;

    v31(v24);

    return v23;
  }

  return v23;
}

id sub_10110E108(void *a1, char *a2, char *a3, __int128 *a4, uint64_t a5, int a6)
{
  v143 = a6;
  v134 = a5;
  v141 = a2;
  v142 = a3;
  v132 = a1;
  v127 = a4;
  v7 = *(a4 + 8);
  v108 = *a4;
  v109 = v7;
  *&v7 = *(a4 + 2);
  v106 = v7;
  *&v7 = *(a4 + 3);
  v107 = v7;
  v131 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v131);
  v130 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v128);
  v135 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = &v106 - v11;
  v12 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v125 = *(v12 - 8);
  v126 = v12;
  __chkstk_darwin(v12);
  v123 = &v106 - v13;
  v120 = sub_1005B981C(&unk_101A226A0, &unk_10146E610) - 8;
  __chkstk_darwin(v120);
  v133 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v144 = &v106 - v16;
  __chkstk_darwin(v17);
  v145 = &v106 - v18;
  v19 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v19 - 8);
  v116 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v138.i64[0] = &v106 - v22;
  v23 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v23 - 8);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  v139 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v139);
  v118 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v117 = &v106 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v34 - 8);
  v122 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v106 - v37;
  v39 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v39 - 8);
  v121 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v106 - v42;
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v115 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v137 = &v106 - v48;
  v50 = __chkstk_darwin(v49);
  v52 = &v106 - v51;
  v53 = *(v6 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v54 = *(v53 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v53 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v50);
  v55 = v141;
  v141 = v43;
  sub_101125504(v55, v43, type metadata accessor for CRLAssetData);
  v56 = v142;
  v142 = v38;
  sub_10000BE14(v56, v38, &unk_101A1B880, &unk_10147AB00);
  v119 = matrix_identity_float4x4.columns[3];
  v146 = v45;
  v57 = *(v45 + 16);
  v112 = v45 + 16;
  v113 = v57;
  v58 = v27;
  v129 = v52;
  v57(v27, v52, v44);
  v59 = *(v45 + 56);
  v110 = v27;
  v111 = v59;
  v140 = v44;
  v59(v27, 0, 1, v44);
  v157 = 1;
  v60 = type metadata accessor for CRLTableAnchorHint(0);
  v61 = *(*(v60 - 8) + 56);
  v62 = v138.i64[0];
  v61(v138.i64[0], 1, 1, v60);
  v124 = v54;
  v63 = v132;
  sub_101271CCC(v63, v156);

  v64 = v114;
  sub_10000BE14(v58, v114, &qword_1019F6990, &qword_10146D2F0);
  v65 = v62;
  v66 = v116;
  sub_10000BE14(v65, v116, &unk_101A09DD0, &unk_101478C10);
  v111(v33, 1, 1, v44);
  v67 = v139;
  v68 = *(v139 + 28);
  v69 = &v33[*(v139 + 24)];
  v61(&v33[v68], 1, 1, v60);
  *&v33[*(v67 + 32)] = _swiftEmptyDictionarySingleton;
  sub_10002C638(v64, v33, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v138.i64[0], &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v110, &qword_1019F6990, &qword_10146D2F0);
  v70 = &v33[*(v67 + 20)];
  v71 = v156[1];
  *v70 = v156[0];
  *(v70 + 1) = v71;
  *v69 = 0u;
  *(v69 + 1) = 0u;
  *(v69 + 2) = 0u;
  *(v69 + 3) = 0u;
  v138 = 0u;
  v69[64] = v157;
  sub_10002C638(v66, &v33[v68], &unk_101A09DD0, &unk_101478C10);
  v132 = v33;
  v72 = v117;
  sub_101125504(v33, v117, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v158);
  v73 = v137;
  UUID.init()();
  v74 = v120;
  v116 = *(v120 + 60);
  v152 = v162;
  v153 = v163;
  v154 = v164;
  v155 = v165;
  v148 = v158;
  v149 = v159;
  v150 = v160;
  v151 = v161;
  sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
  v75 = v145;
  CRRegister.init(wrappedValue:)();
  *(v75 + *(v74 + 64)) = _swiftEmptyDictionarySingleton;
  v76 = v73;
  v77 = v140;
  v113(v115, v76, v140);
  v78 = v75;
  CRRegister.init(_:)();
  sub_101125504(v72, v118, type metadata accessor for CRLBoardItemParentAffinity);
  sub_101123A5C(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  CRRegister.init(_:)();
  LOBYTE(v148) = 0;
  CRRegister.init(_:)();
  LOBYTE(v148) = 0;
  v118 = *(v74 + 52);
  CRRegister.init(_:)();
  *&v148 = 0;
  *(&v148 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v152 = v162;
  v153 = v163;
  v154 = v164;
  v155 = v165;
  v148 = v158;
  v149 = v159;
  v150 = v160;
  v151 = v161;
  v79 = v123;
  CRRegister.init(_:)();
  v80 = *(v146 + 8);
  v146 += 8;
  v139 = v80;
  v80(v137, v77);
  sub_10112556C(v72, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v125 + 40))(v78 + v116, v79, v126);
  v81 = *(v127 + 32);
  if ((v81 & 1) == 0)
  {
    *&v82.f64[0] = v108;
    *&v82.f64[1] = v106;
    *&v82.f64[0] = vcvt_f32_f64(v82);
    *&v83.f64[0] = v109;
    *&v83.f64[1] = v107;
    v84.i64[0] = LODWORD(v82.f64[0]);
    v84.i64[1] = HIDWORD(v82.f64[0]);
    v138 = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v83), 0x20uLL), v84);
  }

  LODWORD(v137) = v143 & 1;
  v85 = v121;
  sub_101125504(v141, v121, type metadata accessor for CRLAssetData);
  v86 = v122;
  sub_10000BE14(v142, v122, &unk_101A1B880, &unk_10147AB00);
  v87 = v136;
  *&v136[*(v128 + 20)] = _swiftEmptyDictionarySingleton;
  v88 = v130;
  sub_101125504(v85, v130, type metadata accessor for CRLAssetData);
  v89 = v131;
  sub_10000BE14(v86, v88 + *(v131 + 20), &unk_101A1B880, &unk_10147AB00);
  *(v88 + v89[6]) = v119;
  v90 = (v88 + v89[7]);
  *v90 = v138;
  v90[1].i8[0] = v81 & 1;
  v91 = v88 + v89[8];
  v92 = v134;
  *v91 = v134;
  *(v91 + 8) = v137;
  *(v88 + v89[9]) = _swiftEmptyDictionarySingleton;
  sub_101123A5C(&qword_101A2AF60, type metadata accessor for CRLUSDZAssetDataStruct, aY_27);
  CRRegister.init(_:)();
  sub_10000CAAC(v86, &unk_101A1B880, &unk_10147AB00);
  sub_10112556C(v85, type metadata accessor for CRLAssetData);
  LOBYTE(v148) = 1;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  v93 = v145;
  CRRegister.wrappedValue.setter();
  sub_10000BE14(v93, v144, &unk_101A226A0, &unk_10146E610);
  v94 = v135;
  sub_101125504(v87, v135, type metadata accessor for CRLUSDZItemCRDTData);
  if (v143)
  {
    v95 = 0x2000000000000;
    v96 = 0x2000400000000;
    v97 = 0x1000000000000;
  }

  else
  {
    v95 = 0x2000000000000;
    v96 = 0x2000400000000;
    v97 = 0x1000000000000;
    if (v92)
    {
      v97 = 0x3000400000000;
      v96 = 0x3000400000000;
      v95 = 0x3000400000000;
    }
  }

  *&v148 = v95;
  *(&v148 + 1) = v96;
  v149 = v97;
  LOBYTE(v150) = 1;
  type metadata accessor for CRLUSDZItemData(0);
  v98 = swift_allocObject();
  sub_101125504(v94, v98 + qword_101AD9460, type metadata accessor for CRLUSDZItemCRDTData);
  v99 = v144;
  v100 = v133;
  sub_10000BE14(v144, v133, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v100, v98 + *(*v98 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v100, &unk_101A226A0, &unk_10146E610);
  sub_10112556C(v94, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10000CAAC(v99, &unk_101A226A0, &unk_10146E610);
  v101 = sub_100747AF0(&v148, 2);
  v102 = objc_allocWithZone(type metadata accessor for CRLUSDZItem(0));
  *&v102[OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload] = 0;
  *&v102[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v124;
  *&v102[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v101;
  v103 = type metadata accessor for CRLBoardItemBase(0);
  v147.receiver = v102;
  v147.super_class = v103;
  v104 = objc_msgSendSuper2(&v147, "init");
  sub_10112556C(v87, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10112556C(v132, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v142, &unk_101A1B880, &unk_10147AB00);
  sub_10112556C(v141, type metadata accessor for CRLAssetData);
  (v139)(v129, v140);
  sub_10000CAAC(v145, &unk_101A226A0, &unk_10146E610);
  return v104;
}

uint64_t sub_10110F088(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = sub_10057DBD4(0);
  v7 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v5, v6}];
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1006950BC(v13);
  v11[12] = v13[12];
  v11[13] = v13[13];
  v11[14] = v13[14];
  v12 = v14;
  v11[8] = v13[8];
  v11[9] = v13[9];
  v11[10] = v13[10];
  v11[11] = v13[11];
  v11[4] = v13[4];
  v11[5] = v13[5];
  v11[6] = v13[6];
  v11[7] = v13[7];
  v11[0] = v13[0];
  v11[1] = v13[1];
  v11[2] = v13[2];
  v11[3] = v13[3];
  v9 = v7;
  sub_1011133FC(0, 0, v7, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, a1, v4, v11, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v4, &unk_101A0B1C0, &qword_101470EC0);
  type metadata accessor for CRLWPShapeItem(0);
  return swift_dynamicCastClassUnconditional();
}

char *sub_10110F2B4(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, double a8, double a9, double a10)
{
  v26 = a3;
  v25 = a2;
  v18 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v18 - 8);
  v20 = &v24 - v19;
  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1006950BC(v29);
  v27[12] = v29[12];
  v27[13] = v29[13];
  v27[14] = v29[14];
  v28 = v30;
  v27[8] = v29[8];
  v27[9] = v29[9];
  v27[10] = v29[10];
  v27[11] = v29[11];
  v27[4] = v29[4];
  v27[5] = v29[5];
  v27[6] = v29[6];
  v27[7] = v29[7];
  v27[0] = v29[0];
  v27[1] = v29[1];
  v27[2] = v29[2];
  v27[3] = v29[3];
  v22 = sub_1011133FC(a1, 0, v25, v26, *&a8, *&a9, 0, 0, 0, *&a10, 0, 2, 2, a4, a5, a6, a7, 0, v20, v27, 0, 0, 0, 0, 1u);
  sub_10000CAAC(v20, &unk_101A0B1C0, &qword_101470EC0);
  return v22;
}

char *sub_10110F4B0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v61 = v3;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v62 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = [objc_opt_self() pathSourceForShapeType:3 naturalSize:{200.0, 200.0}];
  [v60 naturalSize];
  v59 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{v6, v7}];
  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B80, &unk_1014DCB80);
  CRRegister.wrappedValue.getter();
  memcpy(v137, v136, 0x378uLL);
  if (sub_1000C0F9C(v137) == 1)
  {
    sub_100A1C544(3, v96);
    v8 = v121;
    v9 = v119;
    v10 = v120;
    v11 = v117;
    v12 = v118;
    v13 = v115;
    v58 = v116;
    v57 = v113;
    v56 = v114;
    v133 = v110;
    v134 = v111;
    v135 = v112;
    v129 = v106;
    v130 = v107;
    v132 = v109;
    v131 = v108;
    v55 = v104;
    v54 = v105;
    v53 = v102;
    v51 = v101;
    v52 = v103;
    v49 = v98;
    v50 = v100;
    v14 = v99;
    v47 = v96[1];
    v48 = v96[0];
    v46 = v97;
  }

  else
  {
    v45 = v137[105];
    v9 = v137[103];
    v15 = v137[104];
    v11 = v137[101];
    v12 = v137[102];
    v13 = v137[99];
    v58 = LOBYTE(v137[100]);
    v57 = v137[97];
    v56 = LOBYTE(v137[98]);
    v55 = v137[81];
    v54 = LOBYTE(v137[82]);
    v53 = v137[79];
    v51 = BYTE2(v137[78]);
    v52 = LOBYTE(v137[80]);
    v49 = HIDWORD(v137[77]);
    v50 = BYTE1(v137[78]);
    v14 = v137[78];
    v47 = v137[76];
    v48 = v137[75];
    v46 = LOBYTE(v137[77]);
    sub_100880AD0(&v137[75], v122);
    v10 = v15;
    v133 = *&v137[91];
    v134 = *&v137[93];
    v135 = *&v137[95];
    v129 = *&v137[83];
    v130 = *&v137[85];
    v8 = v45;
    v132 = *&v137[89];
    v131 = *&v137[87];
  }

  *&v84[55] = v132;
  *&v84[71] = v133;
  *&v84[87] = v134;
  *&v84[103] = v135;
  *&v84[7] = v129;
  *&v84[23] = v130;
  v85 = v14;
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  *&v84[39] = v131;
  v17 = *(v16 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v83 = v10;
  v18 = v62;
  (*(**(*(v16 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  *(&v89[4] + 9) = *&v84[64];
  *(&v89[5] + 9) = *&v84[80];
  *(&v89[6] + 9) = *&v84[96];
  *(v89 + 9) = *v84;
  *(&v89[1] + 9) = *&v84[16];
  *(&v89[2] + 9) = *&v84[32];
  *&v86 = v48;
  *(&v86 + 1) = v47;
  LOBYTE(v87) = v46;
  DWORD1(v87) = v49;
  BYTE8(v87) = v85;
  BYTE9(v87) = v50;
  BYTE10(v87) = v51;
  *&v88 = v53;
  BYTE8(v88) = v52;
  *&v89[0] = v55;
  BYTE8(v89[0]) = v54;
  *(&v89[3] + 9) = *&v84[48];
  *(&v89[7] + 1) = *&v84[111];
  *&v90 = v57;
  BYTE8(v90) = v56;
  *&v91 = v13;
  BYTE8(v91) = v58;
  *&v92 = v11;
  BYTE8(v92) = v12;
  *&v93 = v9;
  BYTE8(v93) = v83;
  v94 = v8;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v86, v19);
  v127[12] = v91;
  v127[13] = v92;
  v127[14] = v93;
  v128 = v94;
  v127[8] = v89[5];
  v127[9] = v89[6];
  v127[10] = v89[7];
  v127[11] = v90;
  v127[4] = v89[1];
  v127[5] = v89[2];
  v127[6] = v89[3];
  v127[7] = v89[4];
  v127[0] = v86;
  v127[1] = v87;
  v127[2] = v88;
  v127[3] = v89[0];
  v20 = v17;
  v21 = v61;
  v22 = v59;
  v23 = v60;
  sub_10124F0FC(v20, v18, v21, v22, v23, v127, 3);
  v25 = v24;

  memcpy(v95, v136, sizeof(v95));
  if (sub_1000C0F9C(v95) == 1)
  {
    v26 = [objc_allocWithZone(CRLColor) initWithWhite:0.0 alpha:0.35];
    v27 = objc_allocWithZone(CRLCurvedShadow);
    v28 = v25;
    sub_100C33968([v27 initWithOffset:v26 angle:1 radius:1.0 curve:90.0 opacity:15.0 color:-0.123095 enabled:1.0]);
  }

  else
  {
    memcpy(v122, v95, sizeof(v122));
    v82[4] = *&v95[312];
    v82[5] = *&v95[328];
    v81 = *&v95[232];
    v82[0] = *&v95[248];
    v82[2] = *&v95[280];
    v82[3] = *&v95[296];
    v82[1] = *&v95[264];
    if (*&v95[328])
    {
      sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
      v125[2] = *&v95[280];
      v125[3] = *&v95[296];
      v125[4] = *&v95[312];
      v126 = *&v95[328];
      v125[0] = *&v95[248];
      v125[1] = *&v95[264];
      v29 = v25;
      sub_10074A990(v82, v123);
      v30 = sub_1008B0490(v125);
      if (BYTE8(v81) == 1)
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v31 = static OS_os_log.persistence;
        v32 = static os_log_type_t.info.getter();
        sub_100005404(v31, &_mh_execute_header, v32, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      }

      v33 = [objc_allocWithZone(CRLColorFill) initWithColor:v30];
    }

    else
    {
      v34 = v25;
      v33 = 0;
    }

    sub_100C34730(v33);
    v78 = *&v95[192];
    v79 = *&v95[208];
    v80 = *&v95[224];
    v74 = *&v95[128];
    v75 = *&v95[144];
    v76 = *&v95[160];
    v77 = *&v95[176];
    v70 = *&v95[64];
    v71 = *&v95[80];
    v72 = *&v95[96];
    v73 = *&v95[112];
    v66 = *v95;
    v67 = *&v95[16];
    v68 = *&v95[32];
    v69 = *&v95[48];
    if (sub_1000C0FB4(&v66) == 1)
    {
      v35 = v25;
      v36 = 0;
    }

    else
    {
      v123[12] = v78;
      v123[13] = v79;
      v124 = v80;
      v123[8] = v74;
      v123[9] = v75;
      v123[11] = v77;
      v123[10] = v76;
      v123[4] = v70;
      v123[5] = v71;
      v123[7] = v73;
      v123[6] = v72;
      v123[0] = v66;
      v123[1] = v67;
      v123[3] = v69;
      v123[2] = v68;
      v37 = v25;
      v36 = sub_100B946C8(v123, 0);
    }

    sub_100D654FC(v36);

    v38 = sub_101265E6C();
    sub_100C33968(v38);
    sub_10000CAAC(v136, &qword_1019F4B78, &unk_10146CDE0);
    v39 = v95[864];
    v40 = v95[856];
    if (sub_10110C60C())
    {
      if (v39)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      type metadata accessor for CRLWPShapeItemData(0);
      v42 = *(*swift_dynamicCastClassUnconditional() + 912);

      v43 = v42(v65);
      type metadata accessor for CRLWPShapeItemCRDTData(0);
      v63 = v41;
      v64 = 0;
      type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
      sub_1005B981C(&unk_101A0F370, &unk_1014708C0);
      CRRegister.wrappedValue.setter();
      v43(v65, 0);
    }
  }

  return v25;
}

char *sub_10110FE34(void *a1, id a2, uint64_t a3)
{
  v7 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPShapeItem(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  v74 = a3;
  v75 = v3;
  v76 = a2;
  v16 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v17 = *(**(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v18 = a1;

  v20 = v17(v19);

  v21 = [v20 widthValid];

  if (!v21 || (v22 = *(**&v15[v16] + 296), v23 = , v24 = v22(v23), , v25 = [v24 heightValid], v24, !v25) || swift_getObjectType() != v13)
  {

    a2 = v76;
    a3 = v74;
LABEL_6:
    v26 = type metadata accessor for CRLWPStorageCRDTData(0);
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1006950BC(&v136);
    v118[12] = v148;
    v118[13] = v149;
    v118[14] = v150;
    v119 = v151;
    v118[8] = v144;
    v118[9] = v145;
    v118[10] = v146;
    v118[11] = v147;
    v118[4] = v140;
    v118[5] = v141;
    v118[6] = v142;
    v118[7] = v143;
    v118[0] = v136;
    v118[1] = v137;
    v118[2] = v138;
    v118[3] = v139;
    v27 = sub_1011133FC(a3, 0, a2, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v9, v118, 0, 0, 0, 0, 1u);
LABEL_7:
    sub_10000CAAC(v9, &unk_101A0B1C0, &qword_101470EC0);
    return v27;
  }

  v29 = *((swift_isaMask & *v18) + 0xE0);
  v30 = v29();
  [v30 size];
  v32 = v31;
  v34 = v33;

  v35 = v76;
  [v76 naturalSize];
  if (sub_1007C87EC(v32 / v34, v36 / v37))
  {

    v38 = v29();
    [v38 size];
    v40 = v39;
    v42 = v41;

    v43 = v42;
    v44 = v40;
  }

  else
  {
    v45 = *(**&v15[v16] + 296);

    v47 = v45(v46);
    v35 = v76;
    v48 = v47;

    [v48 size];
    v50 = v49;
    v52 = v51;

    [v35 naturalSize];
    v55 = sqrt(v50 * v52 / (v53 * v54));
    [v35 naturalSize];
    v44 = sub_10011F340(v56, v57, v55);
  }

  [v35 scaleToNaturalSize:{v44, v43}];
  v58 = v18;
  sub_1010A07F0(v15, 0, v118);
  v105 = v132;
  v106 = v133;
  v107 = v134;
  v108 = v135;
  v101 = v128;
  v102 = v129;
  v103 = v130;
  v104 = v131;
  v97 = v124;
  v98 = v125;
  v99 = v126;
  v100 = v127;
  v93 = v120;
  v94 = v121;
  v95 = v122;
  v96 = v123;
  sub_100880AD0(&v93, &v136);
  sub_1009CCD88(v118);
  v59 = v58;
  v73 = sub_100D652D4();

  v60 = **&v15[v16];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v61 = result;
    v62 = *(result + 2);
    v63 = v59;

    v62(v60, v61);

    sub_1005B981C(&unk_101A10690, &qword_101472520);
    CRRegister.wrappedValue.getter();
    sub_10112556C(v12, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v109 = v136;
    v110 = v137;
    v114 = v141;
    v115 = v142;
    v111 = v138;
    v112 = v139;
    v113 = v140;
    v116 = v136;
    v117[0] = v137;
    v117[4] = v141;
    v117[5] = v142;
    v117[2] = v139;
    v117[3] = v140;
    v117[1] = v138;
    if (v142)
    {
      sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
      v152[2] = v112;
      v152[3] = v113;
      v152[4] = v114;
      v153 = v115;
      v152[0] = v110;
      v152[1] = v111;
      sub_10074A990(v117, &v136);
      v64 = sub_1008B0490(v152);
      v65 = v76;
      v66 = v74;
      if (BYTE8(v116))
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v67 = static OS_os_log.persistence;
        v68 = static os_log_type_t.info.getter();
        sub_100005404(v67, &_mh_execute_header, v68, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
        v69 = [objc_allocWithZone(CRLColorFill) initWithColor:v64];

        sub_10000CAAC(&v109, &qword_1019FFF80, &qword_101489000);
      }

      else
      {
        v69 = [objc_allocWithZone(CRLColorFill) initWithColor:v64];

        sub_10000CAAC(&v109, &qword_1019FFF80, &qword_101489000);
      }
    }

    else
    {

      v69 = 0;
      v65 = v76;
      v66 = v74;
    }

    v70 = type metadata accessor for CRLWPStorageCRDTData(0);
    (*(*(v70 - 8) + 56))(v9, 1, 1, v70);
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v92 = v108;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v88 = v104;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    v77 = v93;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v77, v71);
    v148 = v89;
    v149 = v90;
    v150 = v91;
    v151 = v92;
    v144 = v85;
    v145 = v86;
    v146 = v87;
    v147 = v88;
    v140 = v81;
    v141 = v82;
    v142 = v83;
    v143 = v84;
    v136 = v77;
    v137 = v78;
    v138 = v79;
    v139 = v80;
    v72 = v73;
    v27 = sub_1011133FC(v66, 0, v65, 1, 0, 0, 1, 0, 0, 0, 1, 2, 2, v73, v69, 1, 1, 0, v9, &v136, 0, 0, 0, 0, 1u);
    sub_10081852C(&v93);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

char *sub_101110770(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v5);
  v10 = objc_allocWithZone(type metadata accessor for CRLTableItem(0));
  v11 = v9;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithStore:v11 parentContainerUUID:isa geometry:a1];

  (*(v4 + 8))(v7, v3);
  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B48, &unk_10146CDB0);
  CRRegister.wrappedValue.getter();
  memcpy(v19, v18, 0x178uLL);
  if (sub_1000C0FB4(v19) != 1)
  {
    memcpy(v17, v19, sizeof(v17));
    type metadata accessor for CRLTableItemData(0);
    v14 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v14);
    *&v16[-16] = v17;
    swift_beginAccess();

    sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
    Capsule.mutate<A>(_:)();
    swift_endAccess();

    sub_10000CAAC(v18, &qword_1019F4B40, &qword_10146CDA8);
  }

  return v13;
}

id sub_101110D38(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v5);
  v10 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingItem(0));
  v11 = v9;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithStore:v11 parentContainerUUID:isa geometry:a1];

  (*(v4 + 8))(v7, v3);
  return v13;
}

void sub_101110F2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for UUID();
  v8 = sub_1005EB3DC(v7, qword_101AD8F08);
  (*(*(v7 - 8) + 16))(a2, v8, v7);
  v9 = (a2 + *(v4 + 20));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(a2 + *(v4 + 24)) = _swiftEmptyDictionarySingleton;
  sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v34);
  sub_1005B981C(&qword_1019FF208, &qword_10148C780);
  type metadata accessor for CRLAssetBackedAssetStorage(0);
  if (swift_dynamicCast())
  {
    sub_10112556C(a2, type metadata accessor for CRLAssetData);
    sub_101125504(v33[29] + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v6, type metadata accessor for CRLAssetData);

    sub_10112549C(v6, a2, type metadata accessor for CRLAssetData);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v34[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v34, "Asset needs to be a non-readonly asset!", 39, 2u);
    StaticString.description.getter("_makeAssetData(from:)", 21, 2);
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 534;
    v23 = v34[0];
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "Asset needs to be a non-readonly asset!", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter("_makeAssetData(from:)", 21, 2);
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Asset needs to be a non-readonly asset!", 39, 2);
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:534 isFatal:0 format:v32 args:v29];
  }
}

char *sub_10111147C(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v6 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v17 = *&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  (*(**(*&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v13);
  sub_101125504(a2, v11, type metadata accessor for CRLAssetData);
  sub_10000BE14(v49, v8, &unk_101A1B880, &unk_10147AB00);
  v18 = v17;
  v19 = v16;
  v20 = a1;
  v21 = sub_101123B24(v18, v15, v11, v8, a1, v19);

  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B70, &unk_1014DCB70);
  CRRegister.wrappedValue.getter();
  memcpy(v69, v68, sizeof(v69));
  if (sub_1000B9764(v69) != 1)
  {
    memcpy(v65, v69, sizeof(v65));
    v62 = v69[12];
    v63 = v69[13];
    v64 = *&v69[14];
    v58 = v69[8];
    v59 = v69[9];
    v60 = v69[10];
    v61 = v69[11];
    v54 = v69[4];
    v55 = v69[5];
    v56 = v69[6];
    v57 = v69[7];
    v50 = v69[0];
    v51 = v69[1];
    v52 = v69[2];
    v53 = v69[3];
    if (sub_1000C0FB4(&v50) == 1)
    {
      v32 = 0;
    }

    else
    {
      v66[12] = v62;
      v66[13] = v63;
      v67 = v64;
      v66[8] = v58;
      v66[9] = v59;
      v66[10] = v60;
      v66[11] = v61;
      v66[4] = v54;
      v66[5] = v55;
      v66[6] = v56;
      v66[7] = v57;
      v66[0] = v50;
      v66[1] = v51;
      v66[2] = v52;
      v66[3] = v53;
      v32 = sub_100B946C8(v66, 0);
    }

    sub_100D654FC(v32);
    v33 = sub_100CE4144();
    if (sub_10110CA3C())
    {
      v34 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v35 = *(**&v21[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

      v37 = v35(v36);

      if (v37)
      {
        if (v33)
        {
          sub_100006370(0, &unk_101A11F40, off_10182F940);
          v39 = v33;
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {

LABEL_26:
            v38.n128_u32[0] = DWORD2(v69[22]);
            v46 = sub_100BB9950(v38);
            sub_100BB584C(v46);
            sub_10000CAAC(v68, &qword_1019F4B68, &unk_10146CDD0);
            return v21;
          }
        }

        else
        {
        }
      }

      else if (!v33)
      {
        goto LABEL_26;
      }

      v44 = *(**&v21[v34] + 448);
      v45 = v33;

      v44(v33);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    goto LABEL_23;
  }

  v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v26 = *(**&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v28 = v26(v27);

  if (!v28)
  {
    if (!v24)
    {

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!v24)
  {

    goto LABEL_22;
  }

  sub_100006370(0, &unk_101A11F40, off_10182F940);
  v29 = v24;
  v30 = static NSObject.== infix(_:_:)();

  if ((v30 & 1) == 0)
  {
LABEL_22:
    v41 = *(**&v23[v25] + 448);
    v42 = v24;

    v41(v24);

    goto LABEL_23;
  }

LABEL_23:
  v31.n128_u32[0] = 10.0;
  v43 = sub_100BB9950(v31);
  sub_100BB584C(v43);
  return v21;
}

char *sub_101111C9C(void *a1, uint64_t a2, void *a3, double a4)
{
  v142 = a1;
  v8 = sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  v157 = *(v8 - 8);
  v158 = v8;
  __chkstk_darwin(v8);
  v156 = &v130 - v9;
  v10 = sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
  v152 = *(v10 - 8);
  v153 = v10;
  __chkstk_darwin(v10);
  v151 = &v130 - v11;
  v149 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v149);
  v148 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v150);
  v159 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v160 = &v130 - v15;
  v16 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v144 = *(v16 - 8);
  v145 = v16;
  __chkstk_darwin(v16);
  v143 = &v130 - v17;
  v172 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v172);
  v154 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v130 - v20;
  __chkstk_darwin(v21);
  v173 = &v130 - v22;
  v23 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v23 - 8);
  v140 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v138 = &v130 - v26;
  v27 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v27 - 8);
  v136 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v137 = &v130 - v30;
  v164 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v164);
  v141 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v166 = &v130 - v33;
  __chkstk_darwin(v34);
  v171 = &v130 - v35;
  v36 = type metadata accessor for UUID();
  v175 = *(v36 - 8);
  __chkstk_darwin(v36);
  v139 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v165 = (&v130 - v39);
  __chkstk_darwin(v40);
  v170 = (&v130 - v41);
  v42 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v42 - 8);
  v168 = (&v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v174 = &v130 - v45;
  __chkstk_darwin(v46);
  v48 = &v130 - v47;
  v49 = type metadata accessor for CRLAssetData(0);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v167 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v130 - v53;
  __chkstk_darwin(v55);
  v57 = &v130 - v56;
  sub_101110F2C(a2, &v130 - v56);
  if (a3)
  {
    v58 = a3;
    sub_101110F2C(v58, v48);

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = (*(v50 + 56))(v48, v59, 1, v49);
  v61 = *(v4 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v147 = v4;
  v62 = *(v61 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v63 = v170;
  (*(**(*(v61 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v60);
  v135 = type metadata accessor for CRLAssetData;
  v161 = v57;
  v169 = v54;
  sub_101125504(v57, v54, type metadata accessor for CRLAssetData);
  v162 = v48;
  sub_10000BE14(v48, v174, &unk_101A1B880, &unk_10147AB00);
  v64 = v175;
  v65 = *(v175 + 16);
  v133 = v175 + 16;
  v134 = v65;
  v66 = v137;
  v65(v137, v63, v36);
  v67 = *(v64 + 56);
  v67(v66, 0, 1, v36);
  v191 = 1;
  v68 = type metadata accessor for CRLTableAnchorHint(0);
  v69 = *(v68 - 8);
  v131 = *(v69 + 56);
  v132 = v69 + 56;
  v163 = v36;
  v70 = v138;
  v131(v138, 1, 1, v68);
  v146 = v62;
  v71 = v142;
  sub_101271CCC(v71, v217);

  v72 = v136;
  sub_10000BE14(v66, v136, &qword_1019F6990, &qword_10146D2F0);
  v73 = v140;
  sub_10000BE14(v70, v140, &unk_101A09DD0, &unk_101478C10);
  v74 = v171;
  v67(v171, 1, 1, v36);
  v75 = *(v164 + 28);
  v76 = v164;
  v77 = v74 + *(v164 + 24);
  v131((v74 + v75), 1, 1, v68);
  *(v74 + *(v76 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v72, v74, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v70, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v66, &qword_1019F6990, &qword_10146D2F0);
  v78 = (v74 + *(v76 + 20));
  v79 = v217[1];
  *v78 = v217[0];
  v78[1] = v79;
  *v77 = 0u;
  *(v77 + 16) = 0u;
  *(v77 + 32) = 0u;
  *(v77 + 48) = 0u;
  *(v77 + 64) = v191;
  sub_10002C638(v73, v74 + v75, &unk_101A09DD0, &unk_101478C10);
  sub_101125504(v74, v166, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v192);
  v80 = v165;
  UUID.init()();
  v142 = *(v172 + 52);
  v81 = v172;
  v218[4] = v196;
  v218[5] = v197;
  v218[6] = v198;
  v218[7] = v199;
  v218[0] = v192;
  v218[1] = v193;
  v218[2] = v194;
  v218[3] = v195;
  v140 = sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
  v82 = v173;
  CRRegister.init(wrappedValue:)();
  *(v82 + *(v81 + 56)) = _swiftEmptyDictionarySingleton;
  v83 = v163;
  v134(v139, v80, v163);
  v84 = v82;
  CRRegister.init(_:)();
  v85 = v166;
  sub_101125504(v166, v141, type metadata accessor for CRLBoardItemParentAffinity);
  sub_101123A5C(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  CRRegister.init(_:)();
  LOBYTE(v218[0]) = 0;
  CRRegister.init(_:)();
  LOBYTE(v218[0]) = 0;
  CRRegister.init(_:)();
  *&v218[0] = 0;
  *(&v218[0] + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v218[4] = v196;
  v218[5] = v197;
  v218[6] = v198;
  v218[7] = v199;
  v218[0] = v192;
  v218[1] = v193;
  v218[2] = v194;
  v218[3] = v195;
  v86 = v143;
  CRRegister.init(_:)();
  v87 = *(v175 + 8);
  v175 += 8;
  v164 = v87;
  v87(v165, v83);
  v165 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_10112556C(v85, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v144 + 40))(v142 + v84, v86, v145);
  v88 = v167;
  v89 = v135;
  sub_101125504(v169, v167, v135);
  sub_10000BE14(v174, v168, &unk_101A1B880, &unk_10147AB00);
  sub_1005D0BD8(&v200);
  v90 = v150;
  v166 = *(v150 + 20);
  v218[12] = v212;
  v218[13] = v213;
  *&v218[14] = v214;
  v218[8] = v208;
  v218[9] = v209;
  v218[11] = v211;
  v218[10] = v210;
  v218[4] = v204;
  v218[5] = v205;
  v218[7] = v207;
  v218[6] = v206;
  v218[0] = v200;
  v218[1] = v201;
  v218[3] = v203;
  v218[2] = v202;
  v144 = sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
  sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
  v91 = v160;
  CRRegister.init(wrappedValue:)();
  v145 = *(v90 + 24);
  LODWORD(v218[0]) = 0;
  BYTE4(v218[0]) = 1;
  v143 = sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
  sub_1005FEB28();
  CRRegister.init(wrappedValue:)();
  *(v91 + *(v90 + 32)) = _swiftEmptyDictionarySingleton;
  v92 = v88;
  v93 = v148;
  sub_101125504(v92, v148, v89);
  v94 = v149;
  v95 = v168;
  sub_10000BE14(v168, v93 + *(v149 + 20), &unk_101A1B880, &unk_10147AB00);
  *(v93 + v94[6]) = a4;
  *(v93 + v94[7]) = 0;
  *(v93 + v94[8]) = 0;
  *(v93 + v94[9]) = 0;
  v96 = (v93 + v94[10]);
  *v96 = 0;
  v96[1] = 0;
  v97 = (v93 + v94[11]);
  *v97 = 0;
  v97[1] = 0;
  *(v93 + v94[12]) = 0;
  *(v93 + v94[13]) = _swiftEmptyDictionarySingleton;
  sub_101123A5C(&qword_1019F5C70, type metadata accessor for CRLMovieItemAssetData, byte_10146E510);
  CRRegister.init(_:)();
  v218[12] = v212;
  v218[13] = v213;
  *&v218[14] = v214;
  v218[8] = v208;
  v218[9] = v209;
  v218[11] = v211;
  v218[10] = v210;
  v218[4] = v204;
  v218[5] = v205;
  v218[7] = v207;
  v218[6] = v206;
  v218[0] = v200;
  v218[1] = v201;
  v218[3] = v203;
  v218[2] = v202;
  v98 = v151;
  CRRegister.init(_:)();
  (*(v152 + 40))(v91 + v166, v98, v153);
  LODWORD(v218[0]) = 1065353216;
  BYTE4(v218[0]) = 0;
  v99 = v156;
  CRRegister.init(_:)();
  (*(v157 + 40))(v91 + v145, v99, v158);
  LODWORD(v218[0]) = 1097859072;
  *(&v218[0] + 1) = _swiftEmptyDictionarySingleton;
  sub_1005FEC00();
  CRRegister.init(_:)();
  sub_10000CAAC(v95, &unk_101A1B880, &unk_10147AB00);
  v168 = type metadata accessor for CRLAssetData;
  sub_10112556C(v167, type metadata accessor for CRLAssetData);
  v100 = v173;
  v101 = v155;
  sub_10000BE14(v173, v155, &unk_101A226A0, &unk_10146E610);
  v102 = v159;
  sub_101125504(v91, v159, type metadata accessor for CRLMovieItemCRDTData);
  v221[0] = 0x1000000000000;
  v221[1] = 0x2000400000000;
  v221[2] = 0x1000000000000;
  v221[3] = 0;
  v222 = 1;
  type metadata accessor for CRLMovieItemData(0);
  v103 = swift_allocObject();
  sub_101125504(v102, v103 + qword_101AD5F20, type metadata accessor for CRLMovieItemCRDTData);
  v104 = v154;
  sub_10000BE14(v101, v154, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v104, v103 + *(*v103 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v104, &unk_101A226A0, &unk_10146E610);
  sub_10112556C(v102, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000CAAC(v101, &unk_101A226A0, &unk_10146E610);
  v105 = sub_100747AF0(v221, 2);
  swift_beginAccess();
  LOBYTE(v216[0]) = 1;

  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  swift_endAccess();

  v106 = sub_1011224E8(v146, v105);
  sub_10000CAAC(v174, &unk_101A1B880, &unk_10147AB00);
  sub_10112556C(v169, v168);
  (v164)(v170, v163);
  sub_10112556C(v171, v165);
  sub_10112556C(v91, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000CAAC(v100, &unk_101A226A0, &unk_10146E610);
  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B58, &unk_10146CDC0);
  CRRegister.wrappedValue.getter();
  memcpy(v216, v215, sizeof(v216));
  if (sub_1000B9764(v216) != 1)
  {
    memcpy(v218, v216, sizeof(v218));
    v188 = v216[12];
    v189 = v216[13];
    v190 = *&v216[14];
    v184 = v216[8];
    v185 = v216[9];
    v186 = v216[10];
    v187 = v216[11];
    v180 = v216[4];
    v181 = v216[5];
    v182 = v216[6];
    v183 = v216[7];
    v176 = v216[0];
    v177 = v216[1];
    v178 = v216[2];
    v179 = v216[3];
    if (sub_1000C0FB4(&v176) == 1)
    {
      v116 = 0;
    }

    else
    {
      v219[12] = v188;
      v219[13] = v189;
      v220 = v190;
      v219[8] = v184;
      v219[9] = v185;
      v219[11] = v187;
      v219[10] = v186;
      v219[4] = v180;
      v219[5] = v181;
      v219[7] = v183;
      v219[6] = v182;
      v219[0] = v176;
      v219[1] = v177;
      v219[3] = v179;
      v219[2] = v178;
      v116 = sub_100B946C8(v219, 0);
    }

    v117 = v161;
    sub_100D654FC(v116);
    v118 = sub_100CE4144();
    if (sub_10110CA3C())
    {
      v119 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v120 = *(**&v106[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

      v122 = v120(v121);

      if (v122)
      {
        if (v118)
        {
          sub_100006370(0, &unk_101A11F40, off_10182F940);
          v123 = v118;
          v124 = static NSObject.== infix(_:_:)();

          if (v124)
          {

LABEL_29:
            sub_100D91544(*(&v216[22] + 2));
            sub_10000CAAC(v215, &qword_1019F4B50, &unk_1014C6CA0);
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      else if (!v118)
      {
        goto LABEL_29;
      }

      v127 = *(**&v106[v119] + 448);
      v128 = v118;

      v127(v118);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v107 = objc_opt_self();
  v108 = v106;
  v109 = [v107 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    goto LABEL_26;
  }

  v110 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v111 = *(**&v108[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v113 = v111(v112);

  if (!v113)
  {
    if (!v109)
    {

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!v109)
  {

    goto LABEL_25;
  }

  sub_100006370(0, &unk_101A11F40, off_10182F940);
  v114 = v109;
  v115 = static NSObject.== infix(_:_:)();

  if ((v115 & 1) == 0)
  {
LABEL_25:
    v125 = *(**&v108[v110] + 448);
    v126 = v109;

    v125(v109);

    goto LABEL_26;
  }

LABEL_26:
  sub_100D91544(10.0);
  v117 = v161;
LABEL_30:
  sub_10000CAAC(v162, &unk_101A1B880, &unk_10147AB00);
  sub_10112556C(v117, type metadata accessor for CRLAssetData);
  return v106;
}

char *sub_1011133FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11, char a12, char a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, __int128 *a20, unsigned __int8 a21, uint64_t a22, void *a23, unint64_t a24, unsigned __int8 a25)
{
  __chkstk_darwin(a1);
  v767 = v25;
  LODWORD(v772) = v26;
  LODWORD(v771) = v27;
  v766 = v28;
  v764 = v29;
  LODWORD(v31) = v30;
  v33 = v32;
  LODWORD(v35) = v34;
  v37 = v36;
  v38 = a20;
  v39 = a20[13];
  v905 = a20[12];
  v906 = v39;
  v907 = a20[14];
  v40 = a20[9];
  v901 = a20[8];
  v902 = v40;
  v41 = a20[11];
  v903 = a20[10];
  v904 = v41;
  v42 = a20[5];
  v897 = a20[4];
  v898 = v42;
  v43 = a20[7];
  v899 = a20[6];
  v900 = v43;
  v44 = a20[1];
  v893 = *a20;
  v894 = v44;
  v45 = a20[3];
  v895 = a20[2];
  LODWORD(v763) = a21;
  v756 = a19;
  *&v754 = a18;
  v908 = *(a20 + 30);
  v896 = v45;
  v693 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v711 = *(v693 - 8);
  __chkstk_darwin(v693);
  v676 = &v671 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v692 = &v671 - v48;
  v49 = sub_1005B981C(&unk_101A0D9B0, "X\v");
  __chkstk_darwin(v49 - 8);
  v674 = &v671 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v708 = (&v671 - v52);
  __chkstk_darwin(v53);
  v680 = &v671 - v54;
  __chkstk_darwin(v55);
  v713 = (&v671 - v56);
  v717 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  v716 = *(v717 - 8);
  __chkstk_darwin(v717 - 8);
  v673 = &v671 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v687 = &v671 - v59;
  __chkstk_darwin(v60);
  v679 = &v671 - v61;
  __chkstk_darwin(v62);
  v704 = &v671 - v63;
  *&v750 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v750);
  v675 = &v671 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v689 = &v671 - v66;
  __chkstk_darwin(v67);
  v694 = &v671 - v68;
  __chkstk_darwin(v69);
  v695 = &v671 - v70;
  __chkstk_darwin(v71);
  v681 = &v671 - v72;
  __chkstk_darwin(v73);
  v706 = &v671 - v74;
  v75 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v75 - 8);
  v672 = &v671 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v686 = &v671 - v78;
  __chkstk_darwin(v79);
  v678 = &v671 - v80;
  __chkstk_darwin(v81);
  v703 = (&v671 - v82);
  __chkstk_darwin(v83);
  v696 = &v671 - v84;
  v85 = type metadata accessor for CRLWPStorageCRDTData(0);
  v759 = *(v85 - 1);
  __chkstk_darwin(v85);
  v671 = &v671 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v709 = &v671 - v88;
  __chkstk_darwin(v89);
  v688 = &v671 - v90;
  __chkstk_darwin(v91);
  v677 = &v671 - v92;
  __chkstk_darwin(v93);
  v714 = &v671 - v94;
  __chkstk_darwin(v95);
  v705 = &v671 - v96;
  v697 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v697);
  v698 = &v671 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v98);
  v699 = &v671 - v99;
  __chkstk_darwin(v100);
  v747 = &v671 - v101;
  v737 = sub_1005B981C(&unk_101A0D9C0, "@0$");
  v736 = *(v737 - 8);
  __chkstk_darwin(v737);
  v735 = &v671 - v102;
  v734 = sub_1005B981C(&unk_101A10680, &qword_101489C50);
  v733 = *(v734 - 8);
  __chkstk_darwin(v734);
  v731 = &v671 - v103;
  v730 = sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
  v729 = *(v730 - 8);
  __chkstk_darwin(v730);
  v728 = &v671 - v104;
  v105 = sub_1005B981C(&unk_101A10690, &qword_101472520);
  v726 = *(v105 - 8);
  v727 = v105;
  __chkstk_darwin(v105);
  v725 = &v671 - v106;
  v732 = type metadata accessor for CRLShapeItemCRDTData(0);
  __chkstk_darwin(v732);
  v683 = &v671 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v108);
  v684 = &v671 - v109;
  __chkstk_darwin(v110);
  v700 = &v671 - v111;
  __chkstk_darwin(v112);
  v701 = &v671 - v113;
  __chkstk_darwin(v114);
  v746 = &v671 - v115;
  *&v724 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  *&v723 = *(v724 - 8);
  __chkstk_darwin(v724);
  v722 = &v671 - v116;
  v117 = sub_1005B981C(&qword_101A224B8, &unk_1014B7400);
  __chkstk_darwin(v117 - 8);
  v682 = &v671 - v118;
  *&v752 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v752);
  v691 = &v671 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v120);
  *&v751 = &v671 - v121;
  __chkstk_darwin(v122);
  v760 = &v671 - v123;
  __chkstk_darwin(v124);
  *&v742 = &v671 - v125;
  __chkstk_darwin(v126);
  *&v744 = &v671 - v127;
  v128 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v128 - 8);
  *&v748 = &v671 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v130);
  *&v749 = &v671 - v131;
  v132 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v132 - 8);
  *&v718 = &v671 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v134);
  v755 = (&v671 - v135);
  *&v719 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v719);
  v690 = &v671 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v137);
  *&v715 = &v671 - v138;
  __chkstk_darwin(v139);
  *&v741 = &v671 - v140;
  __chkstk_darwin(v141);
  *&v743 = &v671 - v142;
  *&v721 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v721);
  v707 = &v671 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v144);
  v712 = &v671 - v145;
  __chkstk_darwin(v146);
  v738 = &v671 - v147;
  __chkstk_darwin(v148);
  v739 = &v671 - v149;
  __chkstk_darwin(v150);
  v740 = &v671 - v151;
  __chkstk_darwin(v152);
  v757 = &v671 - v153;
  __chkstk_darwin(v154);
  v753 = &v671 - v155;
  v769 = type metadata accessor for UUID();
  v770 = *(v769 - 8);
  __chkstk_darwin(v769);
  v685 = &v671 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v157);
  v710 = &v671 - v158;
  __chkstk_darwin(v159);
  v702 = &v671 - v160;
  __chkstk_darwin(v161);
  *&v720 = &v671 - v162;
  __chkstk_darwin(v163);
  v745 = &v671 - v164;
  v166 = __chkstk_darwin(v165);
  *&v761 = &v671 - v167;
  v765 = v85;
  LODWORD(v774) = v35;
  v768 = v37;
  LODWORD(v775) = v31;
  v773 = v33;
  if (v33 == 0.0)
  {
    if ((v35 & 1) != 0 || v37 != 21)
    {
      goto LABEL_13;
    }

    v762 = objc_opt_self();
    v190 = [v762 _atomicIncrementAssertCount];
    v865[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v865, "pathSource must be given for custom shapes.", 43, 2u);
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v191 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v192 = String._bridgeToObjectiveC()();

    v193 = [v192 lastPathComponent];

    v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v196 = v195;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v197 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v198 = swift_allocObject();
    *(v198 + 16) = xmmword_10146CA70;
    *(v198 + 56) = &type metadata for Int32;
    *(v198 + 64) = &protocol witness table for Int32;
    *(v198 + 32) = v190;
    v199 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v198 + 96) = v199;
    v200 = sub_1005CF04C();
    *(v198 + 104) = v200;
    *(v198 + 72) = v191;
    *(v198 + 136) = &type metadata for String;
    v201 = sub_1000053B0();
    *(v198 + 112) = v194;
    *(v198 + 120) = v196;
    *(v198 + 176) = &type metadata for UInt;
    *(v198 + 184) = &protocol witness table for UInt;
    *(v198 + 144) = v201;
    *(v198 + 152) = 617;
    v202 = v865[0];
    *(v198 + 216) = v199;
    *(v198 + 224) = v200;
    *(v198 + 192) = v202;
    v203 = v191;
    v204 = v202;
    v205 = static os_log_type_t.error.getter();
    sub_100005404(v197, &_mh_execute_header, v205, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v198);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v206 = static os_log_type_t.error.getter();
    sub_100005404(v197, &_mh_execute_header, v206, "pathSource must be given for custom shapes.", 43, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v207 = swift_allocObject();
    v207[2] = 8;
    v207[3] = 0;
    v207[4] = 0;
    v207[5] = 0;
    v208 = __VaListBuilder.va_list()();
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v187 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v188 = String._bridgeToObjectiveC()();

    StaticString.description.getter("pathSource must be given for custom shapes.", 43, 2);
    v189 = String._bridgeToObjectiveC()();

    [v762 handleFailureInFunction:v187 file:v188 lineNumber:617 isFatal:0 format:v189 args:v208];
  }

  else
  {
    if ((v35 & 1) == 0)
    {
      if (!sub_100818518(v37))
      {
        goto LABEL_13;
      }

      sub_100006370(0, &unk_101A10770, off_10182F7E8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v189 = *&v33;
      v262 = [v189 isKindOfClass:ObjCClassFromMetadata];
      v762 = v189;
      if ((v262 & 1) == 0)
      {
        v758 = objc_opt_self();
        v263 = [v758 _atomicIncrementAssertCount];
        v865[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v865, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2u);
        StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
        v264 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
        v265 = String._bridgeToObjectiveC()();

        v266 = [v265 lastPathComponent];

        v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v268;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v269 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v270 = swift_allocObject();
        *(v270 + 16) = xmmword_10146CA70;
        *(v270 + 56) = &type metadata for Int32;
        *(v270 + 64) = &protocol witness table for Int32;
        *(v270 + 32) = v263;
        v271 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v270 + 96) = v271;
        v272 = sub_1005CF04C();
        *(v270 + 104) = v272;
        *(v270 + 72) = v264;
        *(v270 + 136) = &type metadata for String;
        v273 = sub_1000053B0();
        *(v270 + 112) = v267;
        *(v270 + 120) = v31;
        *(v270 + 176) = &type metadata for UInt;
        *(v270 + 144) = v273;
        *(v270 + 152) = 613;
        v274 = v264;
        v275 = v865[0];
        *(v270 + 216) = v271;
        *(v270 + 224) = v272;
        *(v270 + 184) = &protocol witness table for UInt;
        *(v270 + 192) = v275;
        v276 = v274;
        v277 = v275;
        v278 = static os_log_type_t.error.getter();
        sub_100005404(v269, &_mh_execute_header, v278, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v270);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v279 = static os_log_type_t.error.getter();
        sub_100005404(v269, &_mh_execute_header, v279, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v280 = swift_allocObject();
        v280[2] = 8;
        v280[3] = 0;
        v280[4] = 0;
        v280[5] = 0;
        v35 = __VaListBuilder.va_list()();
        StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
        v281 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
        v282 = String._bridgeToObjectiveC()();

        StaticString.description.getter("pathSource must be a connection line path source if shapeType is connection line.", 81, 2);
        v283 = String._bridgeToObjectiveC()();

        [v758 handleFailureInFunction:v281 file:v282 lineNumber:613 isFatal:0 format:v283 args:v35];

        v85 = v765;
        LOBYTE(v35) = v774;
        v37 = v768;
        LOBYTE(v31) = v775;
        v33 = v773;
        v189 = v762;
      }

      if (!v754)
      {
        goto LABEL_47;
      }

      LODWORD(v284) = [objc_opt_self() _atomicIncrementAssertCount];
      v865[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v865, "expected nil value, but non-nil found", 37, 2u);
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v285 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v286 = String._bridgeToObjectiveC()();

      v287 = [v286 lastPathComponent];

      v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v289;

      if (qword_1019F20A0 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_227;
    }

    v762 = objc_opt_self();
    v168 = [v762 _atomicIncrementAssertCount];
    v865[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v865, "shapeType must be given if pathSource is given.", 47, 2u);
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v169 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v170 = String._bridgeToObjectiveC()();

    v171 = [v170 lastPathComponent];

    v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v174 = v173;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v175 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v176 = swift_allocObject();
    *(v176 + 16) = xmmword_10146CA70;
    *(v176 + 56) = &type metadata for Int32;
    *(v176 + 64) = &protocol witness table for Int32;
    *(v176 + 32) = v168;
    v177 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v176 + 96) = v177;
    v178 = sub_1005CF04C();
    *(v176 + 104) = v178;
    *(v176 + 72) = v169;
    *(v176 + 136) = &type metadata for String;
    v179 = sub_1000053B0();
    *(v176 + 112) = v172;
    *(v176 + 120) = v174;
    *(v176 + 176) = &type metadata for UInt;
    *(v176 + 184) = &protocol witness table for UInt;
    *(v176 + 144) = v179;
    *(v176 + 152) = 609;
    v180 = v865[0];
    *(v176 + 216) = v177;
    *(v176 + 224) = v178;
    *(v176 + 192) = v180;
    v181 = v169;
    v182 = v180;
    v183 = static os_log_type_t.error.getter();
    sub_100005404(v175, &_mh_execute_header, v183, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v176);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v184 = static os_log_type_t.error.getter();
    sub_100005404(v175, &_mh_execute_header, v184, "shapeType must be given if pathSource is given.", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v185 = swift_allocObject();
    v185[2] = 8;
    v185[3] = 0;
    v185[4] = 0;
    v185[5] = 0;
    v186 = __VaListBuilder.va_list()();
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v187 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v188 = String._bridgeToObjectiveC()();

    StaticString.description.getter("shapeType must be given if pathSource is given.", 47, 2);
    v189 = String._bridgeToObjectiveC()();

    [v762 handleFailureInFunction:v187 file:v188 lineNumber:609 isFatal:0 format:v189 args:v186];
  }

  v85 = v765;
  LOBYTE(v35) = v774;
  v37 = v768;
  LOBYTE(v31) = v775;
  v33 = v773;
  while (1)
  {

LABEL_13:
    if (v763)
    {
      if (v754)
      {
        v762 = objc_opt_self();
        v209 = [v762 _atomicIncrementAssertCount];
        v865[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v865, "expected nil value, but non-nil found", 37, 2u);
        StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
        v210 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
        v211 = String._bridgeToObjectiveC()();

        v212 = [v211 lastPathComponent];

        v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v214;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v215 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v216 = swift_allocObject();
        *(v216 + 16) = xmmword_10146CA70;
        *(v216 + 56) = &type metadata for Int32;
        *(v216 + 64) = &protocol witness table for Int32;
        *(v216 + 32) = v209;
        v217 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v216 + 96) = v217;
        v35 = sub_1005CF04C();
        *(v216 + 104) = v35;
        *(v216 + 72) = v210;
        *(v216 + 136) = &type metadata for String;
        v218 = sub_1000053B0();
        *(v216 + 112) = v213;
        *(v216 + 120) = v31;
        *(v216 + 176) = &type metadata for UInt;
        *(v216 + 184) = &protocol witness table for UInt;
        *(v216 + 144) = v218;
        *(v216 + 152) = 621;
        v219 = v865[0];
        *(v216 + 216) = v217;
        *(v216 + 224) = v35;
        *(v216 + 192) = v219;
        v220 = v210;
        v221 = v219;
        v222 = static os_log_type_t.error.getter();
        sub_100005404(v215, &_mh_execute_header, v222, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v216);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v223 = static os_log_type_t.error.getter();
        sub_100005404(v215, &_mh_execute_header, v223, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v224 = swift_allocObject();
        v224[2] = 8;
        v224[3] = 0;
        v224[4] = 0;
        v224[5] = 0;
        v225 = __VaListBuilder.va_list()();
        StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
        v226 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
        v227 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
        v228 = String._bridgeToObjectiveC()();

        [v762 handleFailureInFunction:v226 file:v227 lineNumber:621 isFatal:0 format:v228 args:v225];

        v85 = v765;
        LOBYTE(v35) = v774;
        v37 = v768;
        LOBYTE(v31) = v775;
        v33 = v773;
      }

      if (v759[6](v756, 1, v85, v166) != 1)
      {
        v762 = objc_opt_self();
        v229 = [v762 _atomicIncrementAssertCount];
        v865[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v865, "expected nil value, but non-nil found", 37, 2u);
        StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
        v230 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
        v231 = String._bridgeToObjectiveC()();

        v232 = [v231 lastPathComponent];

        v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v234;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v235 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v236 = swift_allocObject();
        *(v236 + 16) = xmmword_10146CA70;
        *(v236 + 56) = &type metadata for Int32;
        *(v236 + 64) = &protocol witness table for Int32;
        *(v236 + 32) = v229;
        v237 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v236 + 96) = v237;
        v35 = sub_1005CF04C();
        *(v236 + 104) = v35;
        *(v236 + 72) = v230;
        *(v236 + 136) = &type metadata for String;
        v238 = sub_1000053B0();
        *(v236 + 112) = v233;
        *(v236 + 120) = v31;
        *(v236 + 176) = &type metadata for UInt;
        *(v236 + 184) = &protocol witness table for UInt;
        *(v236 + 144) = v238;
        *(v236 + 152) = 622;
        v239 = v865[0];
        *(v236 + 216) = v237;
        *(v236 + 224) = v35;
        *(v236 + 192) = v239;
        v240 = v230;
        v241 = v239;
        v242 = static os_log_type_t.error.getter();
        sub_100005404(v235, &_mh_execute_header, v242, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v236);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v243 = static os_log_type_t.error.getter();
        sub_100005404(v235, &_mh_execute_header, v243, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v244 = swift_allocObject();
        v244[2] = 8;
        v244[3] = 0;
        v244[4] = 0;
        v244[5] = 0;
        v245 = __VaListBuilder.va_list()();
        StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
        v246 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
        v247 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
        v248 = String._bridgeToObjectiveC()();

        [v762 handleFailureInFunction:v246 file:v247 lineNumber:622 isFatal:0 format:v248 args:v245];

        LOBYTE(v35) = v774;
        v37 = v768;
        LOBYTE(v31) = v775;
        v33 = v773;
      }
    }

    if (v35)
    {
      v249 = 3;
    }

    else
    {
      v249 = v37;
    }

    if (v771)
    {
      v250 = 0.0;
    }

    else
    {
      v250 = v764;
    }

    if (v771)
    {
      v251 = 0.0;
    }

    else
    {
      v251 = *&v766;
    }

    if (v33 == 0.0)
    {
      v253 = sub_10057DBD4(v249);
      v252 = COERCE_DOUBLE([objc_opt_self() pathSourceForShapeType:v249 naturalSize:{v253, v254}]);
    }

    else
    {
      v252 = v33;
    }

    v775 = v249;
    if (v31)
    {
      v255 = *&v33;
      [*&v252 naturalSize];
      goto LABEL_56;
    }

    if (v249 == 17)
    {
      v258 = *&v33;
      v259 = 0.0;
    }

    else
    {
      v314 = sub_1011223CC(v249);
      v315 = *&v33;
      if (!v314 || sub_100818518(v249))
      {
        v259 = 0.0;
        v260 = 0.0;
        if (!sub_101122404(v249))
        {
          v259 = sub_10057DBD4(v249);
          v260 = v316;
        }

        goto LABEL_55;
      }

      v506 = sub_10057DBD4(v249);
      v259 = sqrt(v506 * v506 + v507 * v507);
    }

    v260 = 0.0;
LABEL_55:
    [*&v252 naturalSize];
    v256 = sub_100121BA4(1, v259, v260, v317, v318);
LABEL_56:
    v319 = v256;
    v320 = v257;
    v321 = a13;
    if ((a11 & 1) == 0)
    {
      v324 = a10;
LABEL_63:
      v322 = *&v324;
      goto LABEL_64;
    }

    v322 = 0.0;
    v323 = v775;
    if (v775 == 17)
    {
      goto LABEL_64;
    }

    if (sub_1011223CC(v775) && !sub_100818518(v323))
    {
      sub_10057DBD4(v323);
      *&v324 = 45.0;
      goto LABEL_63;
    }

    if (!sub_101122404(v323))
    {
      sub_10057DBD4(v323);
    }

LABEL_64:
    if (a12 == 2)
    {
      v325 = v775 != 0;
    }

    else
    {
      v325 = a12;
    }

    if (a13 == 2)
    {
      v321 = v775 != 0;
    }

    v326 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v327 = [v326 initWithPosition:v325 & 1 size:v321 & 1 widthValid:LOBYTE(v772) & 1 heightValid:a9 & 1 horizontalFlip:v250 verticalFlip:v251 angle:{v319, v320, v322}];
    [*&v252 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A031A8, off_10182F908);
    swift_dynamicCast();
    v328 = *&v864[0];
    if ((v31 & 1) == 0)
    {
      [v327 size];
      [v328 scaleToNaturalSize:?];
    }

    [v327 size];
    v330 = v329;
    v332 = v331;
    v766 = v328;
    [v328 naturalSize];
    v335 = sub_10011ED08(v330, v332, v333, v334, 0.001);
    v758 = *&v252;
    v762 = v327;
    if (!v335)
    {
      v336 = [objc_opt_self() _atomicIncrementAssertCount];
      v865[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v865, "Geometry and path source must have the same size.", 49, 2u);
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v337 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v338 = String._bridgeToObjectiveC()();

      v339 = [v338 lastPathComponent];

      v340 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v342 = v341;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v343 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v344 = swift_allocObject();
      *(v344 + 16) = xmmword_10146CA70;
      *(v344 + 56) = &type metadata for Int32;
      *(v344 + 64) = &protocol witness table for Int32;
      *(v344 + 32) = v336;
      v345 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v344 + 96) = v345;
      v346 = sub_1005CF04C();
      *(v344 + 104) = v346;
      *(v344 + 72) = v337;
      *(v344 + 136) = &type metadata for String;
      v347 = sub_1000053B0();
      *(v344 + 112) = v340;
      *(v344 + 120) = v342;
      *(v344 + 176) = &type metadata for UInt;
      *(v344 + 184) = &protocol witness table for UInt;
      *(v344 + 144) = v347;
      *(v344 + 152) = 649;
      v348 = v865[0];
      *(v344 + 216) = v345;
      *(v344 + 224) = v346;
      *(v344 + 192) = v348;
      v349 = v337;
      v350 = v348;
      v351 = static os_log_type_t.error.getter();
      sub_100005404(v343, &_mh_execute_header, v351, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v344);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v352 = static os_log_type_t.error.getter();
      sub_100005404(v343, &_mh_execute_header, v352, "Geometry and path source must have the same size.", 49, 2, _swiftEmptyArrayStorage);

      sub_100604780(_swiftEmptyArrayStorage, "_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2u, 649, "Geometry and path source must have the same size.", 49, 2u);
      v327 = v762;
    }

    v353 = v775;
    if (v775)
    {
      v354 = sub_1011223CC(v775);
      v355 = v774;
      if (v354 || v353 == 17)
      {
        type metadata accessor for CRLBoardInsertStyleData(0);
        sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
      }

      else
      {
        sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
      }

      CRRegister.wrappedValue.getter();
      memcpy(v865, v864, sizeof(v865));
    }

    else
    {
      type metadata accessor for CRLBoardInsertStyleData(0);
      sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
      CRRegister.wrappedValue.getter();
      memcpy(v865, v864, sizeof(v865));
      v355 = v774;
    }

    v356 = *(v38 + 208);
    v886[12] = *(v38 + 192);
    v886[13] = v356;
    v886[14] = *(v38 + 224);
    v357 = *(v38 + 144);
    v886[8] = *(v38 + 128);
    v886[9] = v357;
    v358 = *(v38 + 176);
    v886[10] = *(v38 + 160);
    v886[11] = v358;
    v359 = *(v38 + 80);
    v886[4] = *(v38 + 64);
    v886[5] = v359;
    v360 = *(v38 + 112);
    v886[6] = *(v38 + 96);
    v886[7] = v360;
    v361 = *(v38 + 16);
    v886[0] = *v38;
    v886[1] = v361;
    v362 = *(v38 + 48);
    v886[2] = *(v38 + 32);
    v887 = *(v38 + 240);
    v886[3] = v362;
    if (sub_100695050(v886) == 1)
    {
      memcpy(v864, v865, sizeof(v864));
      if (sub_1000C0F9C(v864) == 1)
      {
        sub_100A1C544(v353, &v816);
        v844 = v828;
        v845 = v829;
        v846 = v830;
        v847 = v831;
        v840 = v824;
        v841 = v825;
        v842 = v826;
        v843 = v827;
        v836 = v820;
        v837 = v821;
        v838 = v822;
        v839 = v823;
        v832 = v816;
        v833 = v817;
        v834 = v818;
        v835 = v819;
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v832, v365);
      }

      else
      {
        v847 = *(&v864[52] + 1);
        v844 = *(&v864[49] + 8);
        v845 = *(&v864[50] + 8);
        v846 = *(&v864[51] + 8);
        v840 = *(&v864[45] + 8);
        v841 = *(&v864[46] + 8);
        v842 = *(&v864[47] + 8);
        v843 = *(&v864[48] + 8);
        v836 = *(&v864[41] + 8);
        v837 = *(&v864[42] + 8);
        v838 = *(&v864[43] + 8);
        v839 = *(&v864[44] + 8);
        v832 = *(&v864[37] + 8);
        v833 = *(&v864[38] + 8);
        v834 = *(&v864[39] + 8);
        v835 = *(&v864[40] + 8);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v832, *&v363);
        sub_100880AD0(&v864[37] + 8, &v848);
      }

      v860 = v844;
      v861 = v845;
      v862 = v846;
      v863 = v847;
      v857 = v841;
      v858 = v842;
      v859 = v843;
      v852 = v836;
      v853 = v837;
      v854 = v838;
      v855 = v839;
      v856 = v840;
      v848 = v832;
      v849 = v833;
      v366 = v834;
      v367 = v835;
    }

    else
    {
      v860 = v905;
      v861 = v906;
      v862 = v907;
      v863 = v908;
      v857 = v902;
      v858 = v903;
      v859 = v904;
      v852 = v897;
      v853 = v898;
      v854 = v899;
      v855 = v900;
      v856 = v901;
      v848 = v893;
      v849 = v894;
      v366 = v895;
      v367 = v896;
    }

    v850 = v366;
    v851 = v367;
    if (a14 == 1)
    {
      memcpy(v864, v865, sizeof(v864));
      if (sub_1000C0F9C(v864) == 1)
      {
        sub_10000BE14(v38, &v832, &unk_101A0D830, &qword_101488F70);
        if (sub_1011223CC(v353) || v353 == 17)
        {
          *(&v833 + 1) = &type metadata for CRLFeatureFlags;
          *&v834 = sub_100004D60();
          LOBYTE(v832) = 10;
          v370 = isFeatureEnabled(_:)();
          sub_100005070(&v832);
          v371 = [objc_opt_self() blackColor];
          if (v370)
          {
            v372 = 3.0;
          }

          else
          {
            v372 = 1.0;
          }

          v773 = COERCE_DOUBLE([objc_opt_self() strokeWithColor:v371 width:v372]);

          v355 = v774;
        }

        else
        {
          v773 = 0.0;
        }
      }

      else
      {
        v828 = v864[12];
        v829 = v864[13];
        *&v830 = *&v864[14];
        v824 = v864[8];
        v825 = v864[9];
        v826 = v864[10];
        v827 = v864[11];
        v820 = v864[4];
        v821 = v864[5];
        v822 = v864[6];
        v823 = v864[7];
        v816 = v864[0];
        v817 = v864[1];
        v818 = v864[2];
        v819 = v864[3];
        if (sub_1000C0FB4(&v816) == 1)
        {
          sub_10000BE14(v38, &v832, &unk_101A0D830, &qword_101488F70);
          v773 = 0.0;
        }

        else
        {
          v891[11] = v827;
          v891[12] = v828;
          v891[13] = v829;
          v891[7] = v823;
          v891[8] = v824;
          v891[9] = v825;
          v891[10] = v826;
          v891[3] = v819;
          v891[4] = v820;
          v891[5] = v821;
          v891[6] = v822;
          v891[0] = v816;
          v891[1] = v817;
          v892 = v830;
          v891[2] = v818;
          sub_10000BE14(v38, &v832, &unk_101A0D830, &qword_101488F70);
          v773 = COERCE_DOUBLE(sub_100B946C8(v891, 0));
        }
      }
    }

    else
    {
      sub_10000BE14(v38, v864, &unk_101A0D830, &qword_101488F70);
      v773 = *&a14;
    }

    if (a15 != 1)
    {
      sub_1000505E0(a14);
      v368 = *&a15;
      goto LABEL_114;
    }

    memcpy(v864, v865, sizeof(v864));
    if (sub_1000C0F9C(v864) != 1)
    {
      if (*(&v864[20] + 1))
      {
        v888[0] = *(&v864[14] + 8);
        v888[1] = *(&v864[15] + 8);
        v888[2] = *(&v864[16] + 8);
        v888[3] = *(&v864[17] + 8);
        v888[4] = *(&v864[18] + 8);
        v888[5] = *(&v864[19] + 8);
        v889 = *(&v864[20] + 1);
        v890 = *&v864[21];
        sub_1000505E0(a14);
        v368 = COERCE_DOUBLE(sub_1012479DC(v888));
        goto LABEL_114;
      }

      sub_1000505E0(a14);
LABEL_113:
      v368 = 0.0;
      goto LABEL_114;
    }

    sub_1000505E0(a14);
    if (!v353 || sub_1011223CC(v353) || v353 == 17)
    {
      goto LABEL_113;
    }

    if (qword_1019F1880 != -1)
    {
      swift_once();
    }

    v368 = *&qword_101AD6A90;
    v369 = qword_101AD6A90;
LABEL_114:
    if (a16 == 1)
    {
      if ((v355 & 1) == 0 && (v768 == 15 || v768 == 16))
      {
        v504 = objc_opt_self();
        sub_1000505E0(a15);
        v505 = v504;
        v355 = v774;
        v772 = COERCE_DOUBLE([v505 simpleArrow]);
        if (a17 != 1)
        {
LABEL_124:
          sub_1000505E0(a16);
          v771 = a17;
          goto LABEL_126;
        }
      }

      else
      {
        sub_1000505E0(a15);
        v772 = 0.0;
        if (a17 != 1)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      sub_1000505E0(a15);
      v772 = *&a16;
      if (a17 != 1)
      {
        goto LABEL_124;
      }
    }

    if ((v355 & 1) != 0 || v768 != 15)
    {
      sub_1000505E0(a16);
      *&v771 = 0.0;
    }

    else
    {
      v373 = objc_opt_self();
      sub_1000505E0(a16);
      *&v771 = COERCE_DOUBLE([v373 simpleArrow]);
    }

LABEL_126:
    sub_1000505E0(a17);
    v374 = sub_100818518(v353);
    v764 = v368;
    if (v374)
    {
      sub_10000CAAC(&v848, &unk_101A0D830, &qword_101488F70);
      v375 = sub_10000CAAC(v865, &qword_1019F4B88, &qword_10146CDF0);
      v376 = *&v767[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
      v377 = *(v376 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      v378 = v761;
      (*(**(*(v376 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v375);
      v379 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem(0));
      v380 = v771;
      v381 = v377;
      v382 = v327;
      v383 = v766;
      v384 = *&v773;
      v385 = *&v772;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v387 = [v379 initWithStore:v381 parentContainerUUID:isa geometry:v382 pathSource:v383 stroke:v384 headLineEnd:v385 tailLineEnd:v380];

      v388 = v387;
      v389 = v378;
      v390 = v764;
      (*(v770 + 8))(v389, v769);
LABEL_128:
      v391 = v758;
      goto LABEL_194;
    }

    if (v763)
    {
      v716 = a22;
      sub_10000CAAC(&v848, &unk_101A0D830, &qword_101488F70);
      v392 = sub_10000CAAC(v865, &qword_1019F4B88, &qword_10146CDF0);
      v712 = a24;
      v393 = *&v767[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
      v394 = v327;
      v763 = *(v393 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      LODWORD(v717) = a25 | (a24 == 0);
      v395 = v745;
      (*(**(*(v393 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v392);
      v396 = v770;
      v397 = *(v770 + 16);
      v398 = v755;
      v399 = v769;
      *&v754 = v770 + 16;
      *&v750 = v397;
      v397(v755, v395, v769);
      *&v715 = *(v396 + 56);
      (v715)(v398, 0, 1, v399);
      LOBYTE(v876) = 1;
      v400 = type metadata accessor for CRLTableAnchorHint(0);
      v401 = *(v400 - 8);
      v713 = *(v401 + 56);
      v714 = v401 + 56;
      v402 = v749;
      (v713)(v749, 1, 1, v400);
      v768 = *&v368;
      v403 = v394;
      v756 = v766;
      v767 = *&v773;
      v765 = *&v772;
      *&v774 = v771;
      v759 = v763;
      sub_101271CCC(v403, &v881);
      v763 = v403;

      v404 = v718;
      sub_10000BE14(v398, v718, &qword_1019F6990, &qword_10146D2F0);
      v405 = v748;
      sub_10000BE14(v402, v748, &unk_101A09DD0, &unk_101478C10);
      v406 = v743;
      (v715)(v743, 1, 1, v399);
      v407 = v719;
      v408 = *(v719 + 28);
      v409 = v406 + *(v719 + 24);
      (v713)(v406 + v408, 1, 1, v400);
      *(v406 + *(v407 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v404, v406, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v402, &unk_101A09DD0, &unk_101478C10);
      sub_10000CAAC(v755, &qword_1019F6990, &qword_10146D2F0);
      v410 = (v406 + *(v407 + 20));
      v411 = v882;
      *v410 = v881;
      v410[1] = v411;
      *v409 = 0u;
      *(v409 + 16) = 0u;
      *(v409 + 32) = 0u;
      *(v409 + 48) = 0u;
      *(v409 + 64) = v876;
      v412 = v716;
      sub_10002C638(v405, v406 + v408, &unk_101A09DD0, &unk_101478C10);
      v413 = v741;
      sub_101125504(v406, v741, type metadata accessor for CRLBoardItemParentAffinity);
      v414 = v742;
      sub_101125504(v413, v742, type metadata accessor for CRLBoardItemParentAffinity);
      v415 = v752;
      v416 = *(v752 + 20);
      v756 = v756;
      sub_100C3D740(v756, v414 + v416);
      v417 = v415[6];
      v418 = type metadata accessor for CRLPKStrokePathData(0);
      v419 = *(*(v418 - 8) + 56);
      v419(v414 + v417, 1, 1, v418);
      v420 = v414 + v415[7];
      *v420 = 0;
      *(v420 + 8) = -1;
      *(v414 + v415[8]) = _swiftEmptyDictionarySingleton;
      if (v412)
      {
        v421 = a23;
        v422 = v412;
        v423 = v682;
        sub_100CD0B98(v422, a23, v682);
        v419(v423, 0, 1, v418);
        sub_10002C638(v423, v414 + v417, &qword_101A224B8, &unk_1014B7400);
      }

      if (v717)
      {
        sub_10112556C(v741, type metadata accessor for CRLBoardItemParentAffinity);
      }

      else
      {
        v426 = sub_100D633A8(v712);
        sub_10112556C(v741, type metadata accessor for CRLBoardItemParentAffinity);
        *v420 = v426;
        *(v420 + 8) = 0;
      }

      v427 = v744;
      sub_10112549C(v742, v744, type metadata accessor for CRLShapeItemParentAffinity);
      *&v749 = type metadata accessor for CRLShapeItemParentAffinity;
      sub_101125504(v427, v760, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v792);
      v428 = v761;
      UUID.init()();
      v429 = v721;
      v755 = *(v721 + 52);
      v864[4] = v796;
      v864[5] = v797;
      v864[6] = v798;
      v864[7] = v799;
      v864[0] = v792;
      v864[1] = v793;
      v864[2] = v794;
      v864[3] = v795;
      sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
      v430 = v753;
      CRRegister.init(wrappedValue:)();
      *(v430 + *(v429 + 56)) = _swiftEmptyDictionarySingleton;
      v431 = v769;
      (v750)(v720, v428, v769);
      CRRegister.init(_:)();
      sub_101125504(v760, v751, v749);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity, "U-7");
      CRRegister.init(_:)();
      LOBYTE(v864[0]) = 0;
      CRRegister.init(_:)();
      LOBYTE(v864[0]) = 0;
      CRRegister.init(_:)();
      *&v864[0] = 0;
      *(&v864[0] + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v864[4] = v796;
      v864[5] = v797;
      v864[6] = v798;
      v864[7] = v799;
      v864[0] = v792;
      v864[1] = v793;
      v864[2] = v794;
      v864[3] = v795;
      v432 = v722;
      CRRegister.init(_:)();
      v433 = *(v770 + 8);
      v434 = v761;
      v770 += 8;
      *&v761 = v433;
      v433(v434, v431);
      sub_10112556C(v760, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v744, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v743, type metadata accessor for CRLBoardItemParentAffinity);
      (*(v723 + 40))(v755 + v430, v432, v724);
      if (v764 == 0.0)
      {
        v760 = 0;
        v755 = 0;
        v754 = 0u;
        v751 = 0u;
        v752 = 0u;
        v749 = 0u;
        v750 = 0u;
        v748 = 0u;
      }

      else
      {
        sub_101247234(v768, &v777);
        v754 = v777;
        v751 = v779;
        v752 = v778;
        v748 = v782;
        v749 = v781;
        v750 = v780;
        v755 = *(&v783 + 1);
        v760 = v783;
      }

      v477 = *&v772;
      if (v773 == 0.0)
      {
        sub_1005D0BD8(v864);
        if (!v477)
        {
          goto LABEL_156;
        }

LABEL_154:
        v479 = v765;
        sub_1009CE67C(v479, &v868);
        v724 = v869;
        v742 = v868;
        *&v743 = *(&v870 + 1);
        *&v744 = v870;
        *&v741 = v871;
      }

      else
      {
        sub_100B965E4(v767, &v832);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v832, v478);
        v864[12] = v844;
        v864[13] = v845;
        *&v864[14] = v846;
        v864[8] = v840;
        v864[9] = v841;
        v864[10] = v842;
        v864[11] = v843;
        v864[4] = v836;
        v864[5] = v837;
        v864[6] = v838;
        v864[7] = v839;
        v864[0] = v832;
        v864[1] = v833;
        v864[2] = v834;
        v864[3] = v835;
        if (v477)
        {
          goto LABEL_154;
        }

LABEL_156:
        *&v744 = 0;
        *&v743 = 0;
        *&v741 = 0;
        v742 = 0u;
        v724 = 0u;
      }

      if (*&v771 == 0.0)
      {
        v722 = 0;
        *&v723 = 0;
        *&v721 = 0;
        v719 = 0u;
        v720 = 0u;
      }

      else
      {
        v480 = v774;
        sub_1009CE67C(v480, &v807);
        v719 = v807;
        v720 = v808;
        v722 = *(&v809 + 1);
        *&v723 = v809;
        *&v721 = v810;
      }

      v837 = 0u;
      v838 = 0u;
      v835 = 0u;
      v836 = 0u;
      v833 = 0u;
      v834 = 0u;
      v832 = 0u;
      *&v718 = sub_1005B981C(&qword_1019FFF80, &qword_101489000);
      v717 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &qword_101489000, sub_1006BD1F0);
      v481 = v746;
      CRRegister.init(wrappedValue:)();
      v482 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
      *&v715 = v482[5];
      sub_1005D0BD8(&v832);
      v828 = v844;
      v829 = v845;
      *&v830 = v846;
      v824 = v840;
      v825 = v841;
      v826 = v842;
      v827 = v843;
      v820 = v836;
      v821 = v837;
      v822 = v838;
      v823 = v839;
      v816 = v832;
      v817 = v833;
      v818 = v834;
      v819 = v835;
      sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
      sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
      CRRegister.init(wrappedValue:)();
      v483 = v482[6];
      *&v819 = 0;
      v817 = 0u;
      v818 = 0u;
      v816 = 0u;
      sub_1005B981C(&unk_101A0DA00, &qword_101495050);
      sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &qword_101495050, sub_1009CDC80);
      CRRegister.init(wrappedValue:)();
      v484 = v482[7];
      *&v819 = 0;
      v817 = 0u;
      v818 = 0u;
      v816 = 0u;
      CRRegister.init(wrappedValue:)();
      v716 = v482[8];
      LODWORD(v816) = 0;
      CRRegister.init(wrappedValue:)();
      *&v481[v482[9]] = _swiftEmptyDictionarySingleton;
      v816 = v754;
      v817 = v752;
      v818 = v751;
      v819 = v750;
      v820 = v749;
      v821 = v748;
      *&v822 = v760;
      *(&v822 + 1) = v755;
      v485 = v725;
      CRRegister.init(_:)();
      (*(v726 + 40))(v481, v485, v727);
      v828 = v864[12];
      v829 = v864[13];
      *&v830 = *&v864[14];
      v824 = v864[8];
      v825 = v864[9];
      v826 = v864[10];
      v827 = v864[11];
      v820 = v864[4];
      v821 = v864[5];
      v822 = v864[6];
      v823 = v864[7];
      v816 = v864[0];
      v817 = v864[1];
      v818 = v864[2];
      v819 = v864[3];
      v486 = v728;
      CRRegister.init(_:)();
      (*(v729 + 40))(&v481[v715], v486, v730);
      v816 = v742;
      v817 = v724;
      *&v818 = v744;
      *(&v818 + 1) = v743;
      *&v819 = v741;
      v487 = v731;
      CRRegister.init(_:)();
      v488 = *(v733 + 40);
      v489 = &v481[v483];
      v490 = v734;
      v488(v489, v487, v734);
      v816 = v719;
      v817 = v720;
      *&v818 = v723;
      *(&v818 + 1) = v722;
      *&v819 = v721;
      CRRegister.init(_:)();
      v488(&v481[v484], v487, v490);
      LODWORD(v816) = 0;
      v491 = v735;
      CRRegister.init(_:)();
      (*(v736 + 40))(&v481[v716], v491, v737);
      *&v481[*(v732 + 20)] = _swiftEmptyDictionarySingleton;
      v492 = v747;
      sub_101125504(v481, v747, type metadata accessor for CRLShapeItemCRDTData);
      *&v492[*(v697 + 20)] = _swiftEmptyDictionarySingleton;
      v493 = v757;
      sub_10000BE14(v753, v757, &unk_101A0F400, &unk_1014746E0);
      v494 = v699;
      sub_101125504(v492, v699, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      *&v816 = 0x1000000000000;
      *(&v816 + 1) = 0x2000400000000;
      v817 = 0x1000000000000uLL;
      LOBYTE(v818) = 1;
      type metadata accessor for CRLFreehandDrawingShapeItemData(0);
      v495 = swift_allocObject();
      v496 = v740;
      sub_10000BE14(v493, v740, &unk_101A0F400, &unk_1014746E0);
      v497 = v698;
      sub_101125504(v494, v698, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_101125504(v497, v495 + *(*v495 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v498 = v739;
      sub_10000BE14(v496, v739, &unk_101A0F400, &unk_1014746E0);
      *(v495 + qword_101A27318) = 0;
      v499 = v738;
      sub_10000BE14(v498, v738, &unk_101A0F400, &unk_1014746E0);
      sub_10000BE14(v499, v495 + *(*v495 + 736), &unk_101A0F400, &unk_1014746E0);
      sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v499, &unk_101A0F400, &unk_1014746E0);
      sub_10000CAAC(v498, &unk_101A0F400, &unk_1014746E0);
      sub_10112556C(v497, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_10000CAAC(v496, &unk_101A0F400, &unk_1014746E0);
      sub_10112556C(v494, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_10000CAAC(v757, &unk_101A0F400, &unk_1014746E0);
      v500 = sub_100747AF0(&v816, 2);
      v501 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
      *&v501[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
      *&v501[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
      v502 = &v501[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
      *v502 = 0u;
      *(v502 + 1) = 0u;
      *(v502 + 2) = 0u;
      *(v502 + 6) = 0;
      *&v501[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
      *&v501[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v759;
      *&v501[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v500;
      v503 = type metadata accessor for CRLBoardItemBase(0);
      v776.receiver = v501;
      v776.super_class = v503;

      v388 = objc_msgSendSuper2(&v776, "init");

      sub_10112556C(v747, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      (v761)(v745, v769);
      sub_10112556C(v746, type metadata accessor for CRLShapeItemCRDTData);
      sub_10000CAAC(v753, &unk_101A0F400, &unk_1014746E0);
      v391 = v758;
      v390 = v764;
      goto LABEL_194;
    }

    memcpy(v864, v865, sizeof(v864));
    if (sub_1000C0F9C(v864) == 1)
    {
      v424 = v768;
      v425 = v355 & 1 | (v768 != 0) ? 10.0 : 4.0;
      v753 = 1;
    }

    else
    {
      sub_10000CAAC(v865, &qword_1019F4B88, &qword_10146CDF0);
      v435 = LOBYTE(v864[54]) ? 0 : BYTE8(v864[53]);
      v753 = v435;
      v425 = *&v865[106];
      v424 = v768;
    }

    v436 = v696;
    sub_10000BE14(v756, v696, &unk_101A0B1C0, &qword_101470EC0);
    v437 = v759[6];
    v768 = v759 + 6;
    v763 = v437;
    if ((v437)(v436, 1, v765) != 1)
    {
      break;
    }

    v438 = sub_10000CAAC(v436, &unk_101A0B1C0, &qword_101470EC0);
    v439 = v754;
    if (v754)
    {
      v440 = v754;
    }

    else
    {
      v438 = [objc_allocWithZone(NSAttributedString) init];
      v440 = v438;
    }

    v508 = *&v772;
    v509 = *&v767[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
    v746 = *(v509 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    (*(**(*(v509 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v438);
    LODWORD(v744) = v424 != 0;
    v510 = sub_10068D144();
    v511 = v440;
    *&v742 = v327;
    *&v743 = v766;
    *&v754 = *&v773;
    v756 = v508;
    v767 = v771;
    v747 = *&v368;
    v512 = v511;
    v745 = v746;
    v513 = v439;
    v514 = v676;
    v746 = v510;
    CRAttributedString.init(_:)();
    v38 = v692;
    v284 = v693;
    (*(v711 + 32))(v692, v514, v693);
    v515 = [v512 length];
    v516 = swift_allocObject();
    *(v516 + 16) = v38;
    v517 = swift_allocObject();
    *(v517 + 16) = sub_10068D198;
    *(v517 + 24) = v516;
    *&v834 = sub_101123A34;
    *(&v834 + 1) = v517;
    *&v832 = _NSConcreteStackBlock;
    *(&v832 + 1) = *"";
    *&v833 = sub_10110DB0C;
    *(&v833 + 1) = &unk_1018B1D78;
    v285 = _Block_copy(&v832);
    v288 = *(&v834 + 1);

    [v512 enumerateAttributesInRange:0 options:v515 usingBlock:{0, v285}];
    *&v741 = v512;

    _Block_release(v285);
    v31 = 1;
    LOBYTE(v512) = swift_isEscapingClosureAtFileLocation();

    if ((v512 & 1) == 0)
    {
      v518 = v688;
      (*(v711 + 16))(v688, v38, v284);
      v519 = v765;
      CRAttributedString.init(_:)();
      *(v518 + v519[6]) = _swiftEmptyDictionarySingleton;
      v520 = v770;
      v521 = v770 + 16;
      v522 = *(v770 + 16);
      v523 = v685;
      v524 = v769;
      (v522)(v685, v710);
      v713 = v522;
      v714 = v521;
      sub_101125504(v518, v709, type metadata accessor for CRLWPStorageCRDTData);
      v525 = v755;
      v526 = v524;
      (v522)(v755, v523, v524);
      v527 = *(v520 + 56);
      v527(v525, 0, 1, v526);
      v815 = 1;
      v528 = type metadata accessor for CRLTableAnchorHint(0);
      v529 = *(v528 - 8);
      v706 = *(v529 + 56);
      v712 = v529 + 56;
      v530 = v749;
      (v706)(v749, 1, 1, v528);
      v531 = v742;
      sub_101271CCC(v531, &v866);
      v705 = v531;

      v532 = v718;
      sub_10000BE14(v525, v718, &qword_1019F6990, &qword_10146D2F0);
      sub_10000BE14(v530, v748, &unk_101A09DD0, &unk_101478C10);
      v533 = v715;
      v527(v715, 1, 1, v526);
      v534 = v719;
      v535 = *(v719 + 28);
      v536 = v533;
      v537 = v533 + *(v719 + 24);
      (v706)(v536 + v535, 1, 1, v528);
      *(v536 + *(v534 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v532, v536, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v530, &unk_101A09DD0, &unk_101478C10);
      sub_10000CAAC(v755, &qword_1019F6990, &qword_10146D2F0);
      v538 = (v536 + *(v534 + 20));
      v539 = v867;
      *v538 = v866;
      v538[1] = v539;
      *v537 = 0u;
      *(v537 + 16) = 0u;
      *(v537 + 32) = 0u;
      *(v537 + 48) = 0u;
      *(v537 + 64) = v815;
      sub_10002C638(v748, v536 + v535, &unk_101A09DD0, &unk_101478C10);
      v540 = v690;
      sub_101125504(v536, v690, type metadata accessor for CRLBoardItemParentAffinity);
      v541 = v760;
      sub_101125504(v540, v760, type metadata accessor for CRLBoardItemParentAffinity);
      v542 = v752;
      v543 = *(v752 + 20);
      v704 = v743;
      sub_100C3D740(v704, v541 + v543);
      v544 = v542[6];
      v545 = type metadata accessor for CRLPKStrokePathData(0);
      (*(*(v545 - 8) + 56))(v541 + v544, 1, 1, v545);
      v546 = v541 + v542[7];
      *v546 = 0;
      *(v546 + 8) = -1;
      *(v541 + v542[8]) = _swiftEmptyDictionarySingleton;
      v755 = type metadata accessor for CRLBoardItemParentAffinity;
      sub_10112556C(v540, type metadata accessor for CRLBoardItemParentAffinity);
      *&v748 = type metadata accessor for CRLShapeItemParentAffinity;
      sub_101125504(v541, v751, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v807);
      v547 = v761;
      UUID.init()();
      v548 = v721;
      *&v749 = *(v721 + 52);
      v836 = v811;
      v837 = v812;
      v838 = v813;
      v839 = v814;
      v832 = v807;
      v833 = v808;
      v834 = v809;
      v835 = v810;
      sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
      v549 = v707;
      CRRegister.init(wrappedValue:)();
      *(v549 + *(v548 + 56)) = _swiftEmptyDictionarySingleton;
      (v713)(v720, v547, v769);
      CRRegister.init(_:)();
      v550 = v751;
      sub_101125504(v751, v691, v748);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity, "U-7");
      CRRegister.init(_:)();
      LOBYTE(v832) = 0;
      CRRegister.init(_:)();
      LOBYTE(v832) = 0;
      CRRegister.init(_:)();
      *&v832 = 0;
      *(&v832 + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v836 = v811;
      v837 = v812;
      v838 = v813;
      v839 = v814;
      v832 = v807;
      v833 = v808;
      v834 = v809;
      v835 = v810;
      v551 = v722;
      CRRegister.init(_:)();
      v552 = *(v770 + 8);
      v770 += 8;
      v703 = v552;
      (v552)(v761, v769);
      sub_10112556C(v550, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v760, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v715, v755);
      (*(v723 + 40))(v549 + v749, v551, v724);
      if (v764 == 0.0)
      {
        v760 = 0;
        v755 = 0;
        v553 = 0uLL;
        v751 = 0u;
        v752 = 0u;
        v748 = 0u;
        v749 = 0u;
        v743 = 0u;
      }

      else
      {
        sub_101247234(v747, &v868);
        v553 = v868;
        v751 = v870;
        v752 = v869;
        v743 = v873;
        v748 = v872;
        v749 = v871;
        v760 = v874;
        v755 = v875;
      }

      v618 = v774;
      v774 = v553;
      if (v773 == 0.0)
      {
        sub_1005D0BD8(&v792);
        if (v772 != 0.0)
        {
          goto LABEL_204;
        }
      }

      else
      {
        sub_100B965E4(v754, &v832);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v832, v619);
        v804 = v844;
        v805 = v845;
        v806 = v846;
        v800 = v840;
        v801 = v841;
        v802 = v842;
        v803 = v843;
        v796 = v836;
        v797 = v837;
        v798 = v838;
        v799 = v839;
        v792 = v832;
        v793 = v833;
        v794 = v834;
        v795 = v835;
        if (v772 != 0.0)
        {
LABEL_204:
          v620 = v756;
          sub_1009CE67C(v620, &v876);
          v721 = v877;
          v723 = v876;
          *&v742 = v878;
          *&v724 = v879;
          v722 = v880;

LABEL_207:
          LODWORD(v761) = v618 | v744;
          if (*&v771 == 0.0)
          {
            *&v744 = 0;
            *&v720 = 0;
            *&v719 = 0;
            v718 = 0u;
            v715 = 0u;
          }

          else
          {
            v621 = v767;
            sub_1009CE67C(v621, &v881);
            v718 = v882;
            v715 = v881;
            *&v744 = v883;
            *&v720 = v884;
            *&v719 = v885;
          }

          v837 = 0u;
          v838 = 0u;
          v835 = 0u;
          v836 = 0u;
          v833 = 0u;
          v834 = 0u;
          v832 = 0u;
          v714 = sub_1005B981C(&qword_1019FFF80, &qword_101489000);
          v713 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &qword_101489000, sub_1006BD1F0);
          v622 = v684;
          CRRegister.init(wrappedValue:)();
          v623 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
          v706 = v623[5];
          sub_1005D0BD8(&v777);
          v844 = v789;
          v845 = v790;
          *&v846 = v791;
          v840 = v785;
          v841 = v786;
          v842 = v787;
          v843 = v788;
          v836 = v781;
          v837 = v782;
          v838 = v783;
          v839 = v784;
          v832 = v777;
          v833 = v778;
          v834 = v779;
          v835 = v780;
          sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
          sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
          CRRegister.init(wrappedValue:)();
          v624 = v623[6];
          *&v835 = 0;
          v833 = 0u;
          v834 = 0u;
          v832 = 0u;
          sub_1005B981C(&unk_101A0DA00, &qword_101495050);
          sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &qword_101495050, sub_1009CDC80);
          CRRegister.init(wrappedValue:)();
          v625 = v623[7];
          *&v835 = 0;
          v833 = 0u;
          v834 = 0u;
          v832 = 0u;
          CRRegister.init(wrappedValue:)();
          v712 = v623[8];
          LODWORD(v832) = 0;
          CRRegister.init(wrappedValue:)();
          *(v622 + v623[9]) = _swiftEmptyDictionarySingleton;
          v832 = v774;
          v833 = v752;
          v834 = v751;
          v835 = v749;
          v836 = v748;
          v837 = v743;
          *&v838 = v760;
          *(&v838 + 1) = v755;
          v626 = v725;
          CRRegister.init(_:)();
          (*(v726 + 40))(v622, v626, v727);
          v844 = v804;
          v845 = v805;
          *&v846 = v806;
          v840 = v800;
          v841 = v801;
          v842 = v802;
          v843 = v803;
          v836 = v796;
          v837 = v797;
          v838 = v798;
          v839 = v799;
          v832 = v792;
          v833 = v793;
          v834 = v794;
          v835 = v795;
          v627 = v728;
          CRRegister.init(_:)();
          (*(v729 + 40))(v622 + v706, v627, v730);
          v832 = v723;
          v833 = v721;
          *&v834 = v742;
          *(&v834 + 1) = v724;
          *&v835 = v722;
          v628 = v731;
          CRRegister.init(_:)();
          v629 = *(v733 + 40);
          v630 = v622 + v624;
          v631 = v734;
          v629(v630, v628, v734);
          v832 = v715;
          v833 = v718;
          *&v834 = v744;
          *(&v834 + 1) = v720;
          *&v835 = v719;
          CRRegister.init(_:)();
          v629(v622 + v625, v628, v631);
          LODWORD(v832) = 0;
          v632 = v735;
          CRRegister.init(_:)();
          (*(v736 + 40))(v622 + v712, v632, v737);
          *(v622 + *(v732 + 20)) = _swiftEmptyDictionarySingleton;
          if ((v753 - 1) >= 3)
          {
            v633 = 0;
          }

          else
          {
            v633 = v753;
          }

          *&v832 = v425;
          v634 = v687;
          CRRegister.init(wrappedValue:)();
          v635 = v717;
          *&v832 = v633;
          BYTE8(v832) = 0;
          v636 = sub_1005B981C(&qword_1019F7D38, &unk_1014907C0);
          v637 = sub_101123AA4();
          v760 = v636;
          v755 = v637;
          CRRegister.init(wrappedValue:)();
          LOBYTE(v832) = v761 & 1;
          CRRegister.init(wrappedValue:)();
          *(v634 + *(v635 + 28)) = _swiftEmptyDictionarySingleton;
          *&v761 = type metadata accessor for CRLShapeItemCRDTData;
          v638 = v683;
          sub_101125504(v622, v683, type metadata accessor for CRLShapeItemCRDTData);
          v639 = v686;
          sub_101125504(v709, v686, type metadata accessor for CRLWPStorageCRDTData);
          v640 = v765;
          (v759[7])(v639, 0, 1, v765);
          v641 = v708;
          sub_101125504(v634, v708, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          (*(v716 + 56))(v641, 0, 1, v635);
          v642 = v750;
          v643 = *(v750 + 28);
          sub_1006950BC(&v832);
          v828 = v844;
          v829 = v845;
          v830 = v846;
          v831 = v847;
          v824 = v840;
          v825 = v841;
          v826 = v842;
          v827 = v843;
          v820 = v836;
          v821 = v837;
          v822 = v838;
          v823 = v839;
          v816 = v832;
          v817 = v833;
          v818 = v834;
          v819 = v835;
          sub_1005B981C(&unk_101A0D830, &qword_101488F70);
          sub_100A49DD0(&qword_1019F7DE8, &unk_101A0D830, &qword_101488F70, sub_100694290);
          v644 = v675;
          *&v774 = v643;
          CRRegister.init(wrappedValue:)();
          v645 = v644;
          *(v644 + *(v642 + 32)) = _swiftEmptyDictionarySingleton;
          sub_101125504(v638, v644, v761);
          v646 = v672;
          sub_10000BE14(v639, v672, &unk_101A0B1C0, &qword_101470EC0);
          v647 = v763;
          if ((v763)(v646, 1, v640) == 1)
          {
            v648 = v671;
            CRAttributedString.init()();
            CRAttributedString.init(_:)();
            *(v648 + v640[6]) = _swiftEmptyDictionarySingleton;
            v649 = (v647)(v646, 1, v640);
            v650 = v673;
            if (v649 != 1)
            {
              sub_10000CAAC(v646, &unk_101A0B1C0, &qword_101470EC0);
            }
          }

          else
          {
            v648 = v671;
            sub_10112549C(v646, v671, type metadata accessor for CRLWPStorageCRDTData);
            v650 = v673;
          }

          sub_10112549C(v648, v645 + *(v750 + 20), type metadata accessor for CRLWPStorageCRDTData);
          v651 = v674;
          sub_10000BE14(v708, v674, &unk_101A0D9B0, "X\v");
          v652 = v717;
          v653 = *(v716 + 48);
          if (v653(v651, 1, v717) == 1)
          {
            LODWORD(v816) = 0;
            CRRegister.init(wrappedValue:)();
            *&v816 = 0;
            BYTE8(v816) = 0;
            CRRegister.init(wrappedValue:)();
            LOBYTE(v816) = 0;
            CRRegister.init(wrappedValue:)();
            *(v650 + *(v652 + 28)) = _swiftEmptyDictionarySingleton;
            if (v653(v651, 1, v652) != 1)
            {
              sub_10000CAAC(v651, &unk_101A0D9B0, "X\v");
            }
          }

          else
          {
            sub_10112549C(v651, v650, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          }

          sub_10112549C(v650, v645 + *(v750 + 24), type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          v828 = v860;
          v829 = v861;
          v830 = v862;
          v831 = v863;
          v824 = v856;
          v825 = v857;
          v826 = v858;
          v827 = v859;
          v820 = v852;
          v821 = v853;
          v822 = v854;
          v823 = v855;
          v816 = v848;
          v817 = v849;
          v818 = v850;
          v819 = v851;
          sub_1005B981C(&unk_101A095A0, "d#'");
          CRRegister.wrappedValue.setter();
          sub_10000CAAC(v708, &unk_101A0D9B0, "X\v");
          sub_10000CAAC(v686, &unk_101A0B1C0, &qword_101470EC0);
          sub_10112556C(v683, type metadata accessor for CRLShapeItemCRDTData);
          sub_10112556C(v687, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          v654 = v689;
          sub_10112549C(v645, v689, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10112556C(v684, type metadata accessor for CRLShapeItemCRDTData);
          v655 = v757;
          sub_10000BE14(v707, v757, &unk_101A0F400, &unk_1014746E0);
          v656 = v695;
          sub_101125504(v654, v695, type metadata accessor for CRLWPShapeItemCRDTData);
          *&v816 = 0x1000000000000;
          *(&v816 + 1) = 0x2000400000000;
          v817 = 0x1000000000000uLL;
          LOBYTE(v818) = 1;
          type metadata accessor for CRLWPShapeItemData(0);
          v657 = swift_allocObject();
          v658 = v740;
          sub_10000BE14(v655, v740, &unk_101A0F400, &unk_1014746E0);
          v659 = v694;
          sub_101125504(v656, v694, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_101125504(v659, v657 + *(*v657 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
          v660 = v739;
          sub_10000BE14(v658, v739, &unk_101A0F400, &unk_1014746E0);
          *(v657 + qword_101A27318) = 0;
          v661 = v738;
          sub_10000BE14(v660, v738, &unk_101A0F400, &unk_1014746E0);
          sub_10000BE14(v661, v657 + *(*v657 + 736), &unk_101A0F400, &unk_1014746E0);
          sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v661, &unk_101A0F400, &unk_1014746E0);
          sub_10000CAAC(v660, &unk_101A0F400, &unk_1014746E0);
          sub_10112556C(v659, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10000CAAC(v658, &unk_101A0F400, &unk_1014746E0);
          sub_10112556C(v656, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10000CAAC(v757, &unk_101A0F400, &unk_1014746E0);
          v662 = sub_100747AF0(&v816, 2);
          objc_allocWithZone(type metadata accessor for CRLWPShapeItem(0));
          v663 = v745;
          v388 = sub_100AB0A4C(v663, v662);
          if (sub_10110C60C())
          {
            v664 = **&v388[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
            result = swift_conformsToProtocol2();
            v666 = v692;
            v665 = v693;
            v667 = v711;
            v390 = v764;
            if (!result)
            {
              goto LABEL_229;
            }

            v668 = *(v664 + 848);

            v668(v704);
          }

          else
          {

            v666 = v692;
            v665 = v693;
            v667 = v711;
            v390 = v764;
          }

          sub_10112556C(v689, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10112556C(v709, type metadata accessor for CRLWPStorageCRDTData);
          v669 = v769;
          v670 = v703;
          (v703)(v685, v769);
          sub_10112556C(v688, type metadata accessor for CRLWPStorageCRDTData);
          v670(v710, v669);
          sub_10000CAAC(v707, &unk_101A0F400, &unk_1014746E0);
          (*(v667 + 8))(v666, v665);
          goto LABEL_128;
        }
      }

      *&v742 = 0;
      *&v724 = 0;
      v722 = 0;
      v723 = 0u;
      v721 = 0u;
      goto LABEL_207;
    }

    __break(1u);
LABEL_227:
    swift_once();
LABEL_46:
    v290 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v291 = swift_allocObject();
    *(v291 + 16) = xmmword_10146CA70;
    *(v291 + 56) = &type metadata for Int32;
    *(v291 + 64) = &protocol witness table for Int32;
    *(v291 + 32) = v284;
    v292 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v291 + 96) = v292;
    v293 = sub_1005CF04C();
    *(v291 + 104) = v293;
    *(v291 + 72) = v285;
    *(v291 + 136) = &type metadata for String;
    v294 = sub_1000053B0();
    *(v291 + 112) = v288;
    *(v291 + 120) = v31;
    *(v291 + 176) = &type metadata for UInt;
    *(v291 + 144) = v294;
    *(v291 + 152) = 614;
    v295 = v865[0];
    *(v291 + 216) = v292;
    *(v291 + 224) = v293;
    *(v291 + 184) = &protocol witness table for UInt;
    *(v291 + 192) = v295;
    v35 = v285;
    v296 = v295;
    v297 = static os_log_type_t.error.getter();
    sub_100005404(v290, &_mh_execute_header, v297, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v291);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v298 = static os_log_type_t.error.getter();
    sub_100005404(v290, &_mh_execute_header, v298, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    sub_100604780(_swiftEmptyArrayStorage, "_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2u, 614, "expected nil value, but non-nil found", 37, 2u);
    v85 = v765;
    LOBYTE(v35) = v774;
    v37 = v768;
    LOBYTE(v31) = v775;
    v33 = v773;
    v189 = v762;
LABEL_47:
    if ((v759[6])(v756, 1, v85) != 1)
    {
      v299 = [objc_opt_self() _atomicIncrementAssertCount];
      v865[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v865, "expected nil value, but non-nil found", 37, 2u);
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v300 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v301 = String._bridgeToObjectiveC()();

      v302 = [v301 lastPathComponent];

      v303 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v304;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v305 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v306 = swift_allocObject();
      *(v306 + 16) = xmmword_10146CA70;
      *(v306 + 56) = &type metadata for Int32;
      *(v306 + 64) = &protocol witness table for Int32;
      *(v306 + 32) = v299;
      v307 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v306 + 96) = v307;
      v308 = sub_1005CF04C();
      *(v306 + 104) = v308;
      *(v306 + 72) = v300;
      *(v306 + 136) = &type metadata for String;
      v309 = sub_1000053B0();
      *(v306 + 112) = v303;
      *(v306 + 120) = v31;
      *(v306 + 176) = &type metadata for UInt;
      *(v306 + 144) = v309;
      *(v306 + 152) = 615;
      v310 = v865[0];
      *(v306 + 216) = v307;
      *(v306 + 224) = v308;
      *(v306 + 184) = &protocol witness table for UInt;
      *(v306 + 192) = v310;
      v35 = v300;
      v311 = v310;
      v312 = static os_log_type_t.error.getter();
      sub_100005404(v305, &_mh_execute_header, v312, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v306);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v313 = static os_log_type_t.error.getter();
      sub_100005404(v305, &_mh_execute_header, v313, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

      sub_100604780(_swiftEmptyArrayStorage, "_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2u, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2u, 615, "expected nil value, but non-nil found", 37, 2u);
      v85 = v765;
      LOBYTE(v35) = v774;
      v37 = v768;
      LOBYTE(v31) = v775;
      v33 = v773;
      v189 = v762;
    }
  }

  v441 = v705;
  v442 = sub_10112549C(v436, v705, type metadata accessor for CRLWPStorageCRDTData);
  v443 = *&v767[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v444 = *(v443 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v445 = v702;
  (*(**(*(v443 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v442);
  sub_101125504(v441, v714, type metadata accessor for CRLWPStorageCRDTData);
  LODWORD(v745) = v424 != 0;
  v446 = v770;
  v447 = *(v770 + 16);
  *&v743 = v770 + 16;
  *&v744 = v447;
  v448 = v755;
  v449 = v769;
  v447(v755, v445, v769);
  v450 = *(v446 + 56);
  v450(v448, 0, 1, v449);
  v815 = 1;
  v451 = type metadata accessor for CRLTableAnchorHint(0);
  v452 = *(v451 - 8);
  v711 = *(v452 + 56);
  *&v741 = v452 + 56;
  v453 = v749;
  (v711)(v749, 1, 1, v451);
  v767 = *&v764;
  v746 = v444;
  v454 = v327;
  *&v742 = v766;
  v747 = *&v773;
  *&v754 = *&v772;
  v756 = v771;
  sub_101271CCC(v454, &v866);

  v455 = v718;
  sub_10000BE14(v448, v718, &qword_1019F6990, &qword_10146D2F0);
  v456 = v748;
  sub_10000BE14(v453, v748, &unk_101A09DD0, &unk_101478C10);
  v457 = v715;
  v450(v715, 1, 1, v449);
  v458 = v719;
  v459 = *(v719 + 28);
  v460 = v457 + *(v719 + 24);
  (v711)(v457 + v459, 1, 1, v451);
  *(v457 + *(v458 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v455, v457, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v749, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v448, &qword_1019F6990, &qword_10146D2F0);
  v461 = (v457 + *(v458 + 20));
  v462 = v867;
  *v461 = v866;
  v461[1] = v462;
  *v460 = 0u;
  *(v460 + 16) = 0u;
  *(v460 + 32) = 0u;
  *(v460 + 48) = 0u;
  *(v460 + 64) = v815;
  sub_10002C638(v456, v457 + v459, &unk_101A09DD0, &unk_101478C10);
  v463 = v690;
  sub_101125504(v457, v690, type metadata accessor for CRLBoardItemParentAffinity);
  v464 = v760;
  sub_101125504(v463, v760, type metadata accessor for CRLBoardItemParentAffinity);
  v465 = v752;
  v466 = *(v752 + 20);
  v709 = v742;
  sub_100C3D740(v709, v464 + v466);
  v467 = v465[6];
  v468 = type metadata accessor for CRLPKStrokePathData(0);
  (*(*(v468 - 8) + 56))(v464 + v467, 1, 1, v468);
  v469 = v464 + v465[7];
  *v469 = 0;
  *(v469 + 8) = -1;
  *(v464 + v465[8]) = _swiftEmptyDictionarySingleton;
  v755 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_10112556C(v463, type metadata accessor for CRLBoardItemParentAffinity);
  *&v748 = type metadata accessor for CRLShapeItemParentAffinity;
  sub_101125504(v464, v751, type metadata accessor for CRLShapeItemParentAffinity);
  sub_1005D0C00(&v807);
  v470 = v761;
  UUID.init()();
  v471 = v721;
  *&v749 = *(v721 + 52);
  v836 = v811;
  v837 = v812;
  v838 = v813;
  v839 = v814;
  v832 = v807;
  v833 = v808;
  v834 = v809;
  v835 = v810;
  sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
  v472 = v712;
  CRRegister.init(wrappedValue:)();
  *(v472 + *(v471 + 56)) = _swiftEmptyDictionarySingleton;
  (v744)(v720, v470, v769);
  CRRegister.init(_:)();
  v473 = v751;
  sub_101125504(v751, v691, v748);
  sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity, "U-7");
  CRRegister.init(_:)();
  LOBYTE(v832) = 0;
  CRRegister.init(_:)();
  LOBYTE(v832) = 0;
  CRRegister.init(_:)();
  *&v832 = 0;
  *(&v832 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v836 = v811;
  v837 = v812;
  v838 = v813;
  v839 = v814;
  v832 = v807;
  v833 = v808;
  v834 = v809;
  v835 = v810;
  v474 = v722;
  CRRegister.init(_:)();
  v475 = *(v770 + 8);
  v770 += 8;
  v708 = v475;
  (v475)(v761, v769);
  sub_10112556C(v473, type metadata accessor for CRLShapeItemParentAffinity);
  sub_10112556C(v760, type metadata accessor for CRLShapeItemParentAffinity);
  sub_10112556C(v715, v755);
  (*(v723 + 40))(v472 + v749, v474, v724);
  if (v764 == 0.0)
  {
    v760 = 0;
    v755 = 0;
    v476 = 0uLL;
    v751 = 0u;
    v752 = 0u;
    v748 = 0u;
    v749 = 0u;
    v744 = 0u;
  }

  else
  {
    sub_101247234(v767, &v868);
    v476 = v868;
    v751 = v870;
    v752 = v869;
    v744 = v873;
    v748 = v872;
    v749 = v871;
    v760 = v874;
    v755 = v875;
  }

  v761 = v476;
  v554 = v774;
  v555 = *&v772;
  if (v773 == 0.0)
  {
    sub_1005D0BD8(&v792);
    if (!v555)
    {
      goto LABEL_174;
    }

LABEL_172:
    v557 = v754;
    sub_1009CE67C(v557, &v876);
    v723 = v877;
    v741 = v876;
    *&v743 = v878;
    *&v742 = v879;
    *&v724 = v880;
  }

  else
  {
    sub_100B965E4(v747, &v832);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v832, v556);
    v804 = v844;
    v805 = v845;
    v806 = v846;
    v800 = v840;
    v801 = v841;
    v802 = v842;
    v803 = v843;
    v796 = v836;
    v797 = v837;
    v798 = v838;
    v799 = v839;
    v792 = v832;
    v793 = v833;
    v794 = v834;
    v795 = v835;
    if (v555)
    {
      goto LABEL_172;
    }

LABEL_174:
    *&v743 = 0;
    *&v742 = 0;
    *&v724 = 0;
    v741 = 0u;
    v723 = 0u;
  }

  LODWORD(v774) = v554 | v745;
  if (*&v771 == 0.0)
  {
    v745 = 0;
    v722 = 0;
    *&v721 = 0;
    v719 = 0u;
    v720 = 0u;
  }

  else
  {
    v558 = v756;
    sub_1009CE67C(v558, &v881);
    v719 = v881;
    v720 = v882;
    v745 = v883;
    v722 = v884;
    *&v721 = v885;
  }

  v837 = 0u;
  v838 = 0u;
  v835 = 0u;
  v836 = 0u;
  v833 = 0u;
  v834 = 0u;
  v832 = 0u;
  *&v718 = sub_1005B981C(&qword_1019FFF80, &qword_101489000);
  *&v715 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &qword_101489000, sub_1006BD1F0);
  v559 = v701;
  CRRegister.init(wrappedValue:)();
  v560 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v710 = v560[5];
  sub_1005D0BD8(&v777);
  v844 = v789;
  v845 = v790;
  *&v846 = v791;
  v840 = v785;
  v841 = v786;
  v842 = v787;
  v843 = v788;
  v836 = v781;
  v837 = v782;
  v838 = v783;
  v839 = v784;
  v832 = v777;
  v833 = v778;
  v834 = v779;
  v835 = v780;
  sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
  sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
  CRRegister.init(wrappedValue:)();
  v561 = v560[6];
  *&v835 = 0;
  v833 = 0u;
  v834 = 0u;
  v832 = 0u;
  sub_1005B981C(&unk_101A0DA00, &qword_101495050);
  sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &qword_101495050, sub_1009CDC80);
  CRRegister.init(wrappedValue:)();
  v562 = v560[7];
  *&v835 = 0;
  v833 = 0u;
  v834 = 0u;
  v832 = 0u;
  CRRegister.init(wrappedValue:)();
  v711 = v560[8];
  LODWORD(v832) = 0;
  CRRegister.init(wrappedValue:)();
  *(v559 + v560[9]) = _swiftEmptyDictionarySingleton;
  v832 = v761;
  v833 = v752;
  v834 = v751;
  v835 = v749;
  v836 = v748;
  v837 = v744;
  *&v838 = v760;
  *(&v838 + 1) = v755;
  v563 = v725;
  CRRegister.init(_:)();
  (*(v726 + 40))(v559, v563, v727);
  v844 = v804;
  v845 = v805;
  *&v846 = v806;
  v840 = v800;
  v841 = v801;
  v842 = v802;
  v843 = v803;
  v836 = v796;
  v837 = v797;
  v838 = v798;
  v839 = v799;
  v832 = v792;
  v833 = v793;
  v834 = v794;
  v835 = v795;
  v564 = v728;
  CRRegister.init(_:)();
  (*(v729 + 40))(&v710[v559], v564, v730);
  v832 = v741;
  v833 = v723;
  *&v834 = v743;
  *(&v834 + 1) = v742;
  *&v835 = v724;
  v565 = v731;
  CRRegister.init(_:)();
  v566 = *(v733 + 40);
  v567 = v559 + v561;
  v568 = v734;
  v566(v567, v565, v734);
  v832 = v719;
  v833 = v720;
  *&v834 = v745;
  *(&v834 + 1) = v722;
  *&v835 = v721;
  CRRegister.init(_:)();
  v566(v559 + v562, v565, v568);
  LODWORD(v832) = 0;
  v569 = v735;
  CRRegister.init(_:)();
  (*(v736 + 40))(v559 + v711, v569, v737);
  *(v559 + *(v732 + 20)) = _swiftEmptyDictionarySingleton;
  if ((v753 - 1) >= 3)
  {
    v570 = 0;
  }

  else
  {
    v570 = v753;
  }

  *&v832 = v425;
  v571 = v704;
  CRRegister.init(wrappedValue:)();
  v572 = v717;
  *&v832 = v570;
  BYTE8(v832) = 0;
  v573 = sub_1005B981C(&qword_1019F7D38, &unk_1014907C0);
  v574 = sub_101123AA4();
  v760 = v573;
  v755 = v574;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v832) = v774 & 1;
  CRRegister.init(wrappedValue:)();
  *&v571[*(v572 + 28)] = _swiftEmptyDictionarySingleton;
  *&v761 = type metadata accessor for CRLShapeItemCRDTData;
  v575 = v700;
  sub_101125504(v559, v700, type metadata accessor for CRLShapeItemCRDTData);
  v576 = v703;
  sub_101125504(v714, v703, type metadata accessor for CRLWPStorageCRDTData);
  v577 = v765;
  (v759[7])(v576, 0, 1, v765);
  v578 = v571;
  v579 = v713;
  sub_101125504(v578, v713, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  (*(v716 + 56))(v579, 0, 1, v572);
  v580 = v750;
  v581 = *(v750 + 28);
  sub_1006950BC(&v832);
  v828 = v844;
  v829 = v845;
  v830 = v846;
  v831 = v847;
  v824 = v840;
  v825 = v841;
  v826 = v842;
  v827 = v843;
  v820 = v836;
  v821 = v837;
  v822 = v838;
  v823 = v839;
  v816 = v832;
  v817 = v833;
  v818 = v834;
  v819 = v835;
  sub_1005B981C(&unk_101A0D830, &qword_101488F70);
  sub_100A49DD0(&qword_1019F7DE8, &unk_101A0D830, &qword_101488F70, sub_100694290);
  v582 = v681;
  *&v774 = v581;
  CRRegister.init(wrappedValue:)();
  v583 = v582;
  *(v582 + *(v580 + 32)) = _swiftEmptyDictionarySingleton;
  sub_101125504(v575, v582, v761);
  v584 = v576;
  v585 = v678;
  sub_10000BE14(v584, v678, &unk_101A0B1C0, &qword_101470EC0);
  v586 = v763;
  if ((v763)(v585, 1, v577) == 1)
  {
    sub_10068D144();
    v587 = v677;
    CRAttributedString.init()();
    CRAttributedString.init(_:)();
    *(v587 + v577[6]) = _swiftEmptyDictionarySingleton;
    v588 = (v586)(v585, 1, v577);
    v590 = v679;
    v589 = v680;
    if (v588 != 1)
    {
      sub_10000CAAC(v585, &unk_101A0B1C0, &qword_101470EC0);
    }
  }

  else
  {
    v587 = v677;
    sub_10112549C(v585, v677, type metadata accessor for CRLWPStorageCRDTData);
    v590 = v679;
    v589 = v680;
  }

  sub_10112549C(v587, v582 + *(v750 + 20), type metadata accessor for CRLWPStorageCRDTData);
  sub_10000BE14(v713, v589, &unk_101A0D9B0, "X\v");
  v591 = v717;
  v592 = *(v716 + 48);
  if (v592(v589, 1, v717) == 1)
  {
    LODWORD(v816) = 0;
    CRRegister.init(wrappedValue:)();
    *&v816 = 0;
    BYTE8(v816) = 0;
    CRRegister.init(wrappedValue:)();
    LOBYTE(v816) = 0;
    CRRegister.init(wrappedValue:)();
    *(v590 + *(v591 + 28)) = _swiftEmptyDictionarySingleton;
    if (v592(v589, 1, v591) != 1)
    {
      sub_10000CAAC(v589, &unk_101A0D9B0, "X\v");
    }
  }

  else
  {
    sub_10112549C(v589, v590, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  }

  sub_10112549C(v590, v583 + *(v750 + 24), type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v828 = v860;
  v829 = v861;
  v830 = v862;
  v831 = v863;
  v824 = v856;
  v825 = v857;
  v826 = v858;
  v827 = v859;
  v820 = v852;
  v821 = v853;
  v822 = v854;
  v823 = v855;
  v816 = v848;
  v817 = v849;
  v818 = v850;
  v819 = v851;
  sub_1005B981C(&unk_101A095A0, "d#'");
  CRRegister.wrappedValue.setter();
  sub_10000CAAC(v713, &unk_101A0D9B0, "X\v");
  sub_10000CAAC(v703, &unk_101A0B1C0, &qword_101470EC0);
  sub_10112556C(v700, type metadata accessor for CRLShapeItemCRDTData);
  sub_10112556C(v704, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v593 = v706;
  sub_10112549C(v583, v706, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10112556C(v701, type metadata accessor for CRLShapeItemCRDTData);
  v594 = v757;
  sub_10000BE14(v712, v757, &unk_101A0F400, &unk_1014746E0);
  v595 = v695;
  sub_101125504(v593, v695, type metadata accessor for CRLWPShapeItemCRDTData);
  *&v816 = 0x1000000000000;
  *(&v816 + 1) = 0x2000400000000;
  v817 = 0x1000000000000uLL;
  LOBYTE(v818) = 1;
  type metadata accessor for CRLWPShapeItemData(0);
  v596 = swift_allocObject();
  v597 = v740;
  sub_10000BE14(v594, v740, &unk_101A0F400, &unk_1014746E0);
  v598 = v694;
  sub_101125504(v595, v694, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_101125504(v598, v596 + *(*v596 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
  v599 = v739;
  sub_10000BE14(v597, v739, &unk_101A0F400, &unk_1014746E0);
  *(v596 + qword_101A27318) = 0;
  v600 = v738;
  sub_10000BE14(v599, v738, &unk_101A0F400, &unk_1014746E0);
  sub_10000BE14(v600, v596 + *(*v596 + 736), &unk_101A0F400, &unk_1014746E0);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v600, &unk_101A0F400, &unk_1014746E0);
  sub_10000CAAC(v599, &unk_101A0F400, &unk_1014746E0);
  sub_10112556C(v598, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v597, &unk_101A0F400, &unk_1014746E0);
  sub_10112556C(v595, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v757, &unk_101A0F400, &unk_1014746E0);
  v601 = sub_100747AF0(&v816, 2);
  objc_allocWithZone(type metadata accessor for CRLWPShapeItem(0));
  v602 = v746;
  v388 = sub_100AB0A4C(v602, v601);
  if (sub_10110C60C())
  {
    v603 = **&v388[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    result = swift_conformsToProtocol2();
    v391 = v758;
    v390 = v764;
    v605 = v767;
    if (result)
    {
      v606 = *(v603 + 848);

      v606(v709);

      goto LABEL_193;
    }

    __break(1u);
LABEL_229:
    __break(1u);
    return result;
  }

  v391 = v758;
  v390 = v764;
LABEL_193:

  sub_10112556C(v706, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10112556C(v714, type metadata accessor for CRLWPStorageCRDTData);
  (v708)(v702, v769);
  sub_10112556C(v705, type metadata accessor for CRLWPStorageCRDTData);
  sub_10000CAAC(v712, &unk_101A0F400, &unk_1014746E0);
LABEL_194:
  if (v775 == 21)
  {
    v607 = sub_10110CA3C();
    v608 = v762;
    if (v607)
    {
      v609 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v610 = *(**&v388[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);

      LOBYTE(v610) = v610(v611);

      if ((v610 & 1) == 0)
      {
        v612 = *(**&v388[v609] + 400);

        v612(1);
      }
    }

    v613 = v608;
    v614 = v771;
    v615 = v766;
    v616 = v773;
    v617 = v772;
  }

  else
  {
    v613 = v766;
    v615 = v391;
    v391 = v762;
    v614 = *&v772;
    v617 = v390;
    v390 = v773;
    v616 = *&v771;
  }

  return v388;
}

char *sub_10111B6E0(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = objc_opt_self();
  if (qword_1019F1880 != -1)
  {
    swift_once();
  }

  v16 = [qword_101AD6A90 color];
  v17 = [v15 colorWithColor:v16];

  if (sub_1011223CC(a1))
  {

    v18 = objc_opt_self();
    v19 = [v18 blackColor];
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 colorNamed:v20 fallbackColor:v19];

    *(&v37 + 1) = &type metadata for CRLFeatureFlags;
    *&v38 = sub_100004D60();
    LOBYTE(v36) = 10;
    LOBYTE(v19) = isFeatureEnabled(_:)();
    sub_100005070(&v36);
    if (v19)
    {
      v22 = 3.0;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = [objc_opt_self() strokeWithColor:v21 width:v22];

    v17 = 0;
  }

  else
  {
    v23 = 0;
  }

  v32 = a2;
  v33 = v6;
  v31 = v23;
  if (a1 == 15)
  {
    v26 = objc_opt_self();
    v24 = [v26 openArrow];
    v25 = [v26 simpleArrow];
  }

  else if (a1 == 16)
  {
    v24 = [objc_opt_self() simpleArrow];
    v25 = 0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v27 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_1006950BC(v34);
  v48 = v34[12];
  v49 = v34[13];
  v50 = v34[14];
  v51 = v35;
  v44 = v34[8];
  v45 = v34[9];
  v46 = v34[10];
  v47 = v34[11];
  v40 = v34[4];
  v41 = v34[5];
  v42 = v34[6];
  v43 = v34[7];
  v36 = v34[0];
  v37 = v34[1];
  v38 = v34[2];
  v39 = v34[3];
  v28 = v31;
  v29 = sub_1011133FC(a1, 0, v32, 1, *&a3, *&a4, 0, 0, 0, *&a5, 0, 2, 2, v31, v17, v24, v25, 0, v14, &v36, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v14, &unk_101A0B1C0, &qword_101470EC0);
  return v29;
}

id sub_10111BBA0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5, double a6, double a7)
{
  v8 = v7;
  *&v244 = a3;
  v271 = a2;
  v261 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v261);
  v263 = v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v274 = v221 - v16;
  __chkstk_darwin(v17);
  v275 = v221 - v18;
  v19 = sub_1005B981C(&unk_101A0D9C0, "@0$");
  v259 = *(v19 - 8);
  v260 = v19;
  __chkstk_darwin(v19);
  v258 = v221 - v20;
  v21 = sub_1005B981C(&unk_101A10680, &qword_101489C50);
  v256 = *(v21 - 8);
  v257 = v21;
  __chkstk_darwin(v21);
  v255 = v221 - v22;
  v23 = sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
  v252 = *(v23 - 8);
  v253 = v23;
  __chkstk_darwin(v23);
  v251 = v221 - v24;
  v25 = sub_1005B981C(&unk_101A10690, &qword_101472520);
  v246 = *(v25 - 8);
  v247 = v25;
  __chkstk_darwin(v25);
  v245 = v221 - v26;
  v254 = type metadata accessor for CRLShapeItemCRDTData(0);
  __chkstk_darwin(v254);
  v262 = v221 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v243 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  *&v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = v221 - v28;
  v29 = sub_1005B981C(&qword_101A224B8, &unk_1014B7400);
  __chkstk_darwin(v29 - 8);
  v227 = v221 - v30;
  v269 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v269);
  v238 = v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v240 = v221 - v33;
  __chkstk_darwin(v34);
  v236 = v221 - v35;
  __chkstk_darwin(v36);
  v270 = v221 - v37;
  v38 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v38 - 8);
  v234 = v221 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v233 = v221 - v41;
  v42 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v42 - 8);
  v230 = v221 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v232 = v221 - v45;
  v231 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v231);
  *&v265 = v221 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v268 = v221 - v48;
  v237 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v237);
  v249 = v221 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v248 = v221 - v51;
  __chkstk_darwin(v52);
  v250 = v221 - v53;
  __chkstk_darwin(v54);
  v272 = v221 - v55;
  __chkstk_darwin(v56);
  v277 = v221 - v57;
  v278 = type metadata accessor for UUID();
  v279 = *(v278 - 8);
  __chkstk_darwin(v278);
  v235 = v221 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v273 = v221 - v60;
  __chkstk_darwin(v61);
  *&v267 = v221 - v62;
  v228 = a5;
  v239 = a4;
  *&v276 = v8;
  if (a5 && !a4)
  {
    v266 = a1;
    v63 = objc_opt_self();
    v64 = [v63 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336, "invalid nil value found", 23, 2u);
    StaticString.description.getter("makeShapeItemForFreehandDrawing(pathSource:position:stroke:fill:pencilKitStrokePathCompactData:maskPath:)", 105, 2);
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v66 = String._bridgeToObjectiveC()();

    v67 = [v66 lastPathComponent];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v71 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_10146CA70;
    *(v72 + 56) = &type metadata for Int32;
    *(v72 + 64) = &protocol witness table for Int32;
    *(v72 + 32) = v64;
    v73 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v72 + 96) = v73;
    v74 = sub_1005CF04C();
    *(v72 + 104) = v74;
    *(v72 + 72) = v65;
    *(v72 + 136) = &type metadata for String;
    v75 = sub_1000053B0();
    *(v72 + 112) = v68;
    *(v72 + 120) = v70;
    *(v72 + 176) = &type metadata for UInt;
    *(v72 + 184) = &protocol witness table for UInt;
    *(v72 + 144) = v75;
    *(v72 + 152) = 203;
    v76 = v336[0];
    *(v72 + 216) = v73;
    *(v72 + 224) = v74;
    *(v72 + 192) = v76;
    v77 = v65;
    v78 = v76;
    v79 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v80, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v81 = swift_allocObject();
    v81[2] = 8;
    v81[3] = 0;
    v81[4] = 0;
    v81[5] = 0;
    v82 = __VaListBuilder.va_list()();
    StaticString.description.getter("makeShapeItemForFreehandDrawing(pathSource:position:stroke:fill:pencilKitStrokePathCompactData:maskPath:)", 105, 2);
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil value found", 23, 2);
    v85 = String._bridgeToObjectiveC()();

    [v63 handleFailureInFunction:v83 file:v84 lineNumber:203 isFatal:0 format:v85 args:v82];

    v8 = v276;
    a1 = v266;
  }

  v86 = sub_100818518(17);
  if (v86)
  {
    sub_100006370(0, &unk_101A10770, off_10182F7E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v88 = a1;
    if (([v88 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
    {
      LODWORD(v229) = v86;
      v266 = a1;
      v264 = objc_opt_self();
      v89 = [v264 _atomicIncrementAssertCount];
      v336[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v336, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2u);
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v90 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v91 = String._bridgeToObjectiveC()();

      v92 = [v91 lastPathComponent];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v96 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_10146CA70;
      *(v97 + 56) = &type metadata for Int32;
      *(v97 + 64) = &protocol witness table for Int32;
      *(v97 + 32) = v89;
      v98 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v97 + 96) = v98;
      v99 = sub_1005CF04C();
      *(v97 + 104) = v99;
      *(v97 + 72) = v90;
      *(v97 + 136) = &type metadata for String;
      v100 = sub_1000053B0();
      *(v97 + 112) = v93;
      *(v97 + 120) = v95;
      *(v97 + 176) = &type metadata for UInt;
      *(v97 + 184) = &protocol witness table for UInt;
      *(v97 + 144) = v100;
      *(v97 + 152) = 613;
      v101 = v336[0];
      *(v97 + 216) = v98;
      *(v97 + 224) = v99;
      *(v97 + 192) = v101;
      v102 = v90;
      v103 = v101;
      v104 = static os_log_type_t.error.getter();
      sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v97);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v96, &_mh_execute_header, v105, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v106 = swift_allocObject();
      v106[2] = 8;
      v106[3] = 0;
      v106[4] = 0;
      v106[5] = 0;
      v107 = __VaListBuilder.va_list()();
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v108 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v109 = String._bridgeToObjectiveC()();

      StaticString.description.getter("pathSource must be a connection line path source if shapeType is connection line.", 81, 2);
      v110 = String._bridgeToObjectiveC()();

      [v264 handleFailureInFunction:v108 file:v109 lineNumber:613 isFatal:0 format:v110 args:v107];

      v88 = v110;
      v8 = v276;
      a1 = v266;
      v86 = v229;
    }
  }

  [a1 naturalSize];
  v113 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:0 heightValid:0 horizontalFlip:a6 verticalFlip:a7 angle:{v111, v112, 0.0}];
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8, off_10182F908);
  swift_dynamicCast();
  v114 = v335[0];
  [v113 size];
  v116 = v115;
  v118 = v117;
  [v114 naturalSize];
  v121 = sub_10011ED08(v116, v118, v119, v120, 0.001);
  v266 = v113;
  v264 = v114;
  if (!v121)
  {
    LODWORD(v229) = v86;
    v122 = objc_opt_self();
    v123 = [v122 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336, "Geometry and path source must have the same size.", 49, 2u);
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v124 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v125 = String._bridgeToObjectiveC()();

    v126 = [v125 lastPathComponent];

    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v130 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_10146CA70;
    *(v131 + 56) = &type metadata for Int32;
    *(v131 + 64) = &protocol witness table for Int32;
    *(v131 + 32) = v123;
    v132 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v131 + 96) = v132;
    v133 = sub_1005CF04C();
    *(v131 + 104) = v133;
    *(v131 + 72) = v124;
    *(v131 + 136) = &type metadata for String;
    v134 = sub_1000053B0();
    *(v131 + 112) = v127;
    *(v131 + 120) = v129;
    *(v131 + 176) = &type metadata for UInt;
    *(v131 + 184) = &protocol witness table for UInt;
    *(v131 + 144) = v134;
    *(v131 + 152) = 649;
    v135 = v336[0];
    *(v131 + 216) = v132;
    *(v131 + 224) = v133;
    *(v131 + 192) = v135;
    v136 = v124;
    v137 = v135;
    v138 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v138, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v131);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v139 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v139, "Geometry and path source must have the same size.", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v140 = swift_allocObject();
    v140[2] = 8;
    v140[3] = 0;
    v140[4] = 0;
    v140[5] = 0;
    v141 = __VaListBuilder.va_list()();
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v142 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Geometry and path source must have the same size.", 49, 2);
    v144 = String._bridgeToObjectiveC()();

    [v122 handleFailureInFunction:v142 file:v143 lineNumber:649 isFatal:0 format:v144 args:v141];

    v8 = v276;
    v113 = v266;
    v114 = v264;
    v86 = v229;
  }

  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
  CRRegister.wrappedValue.getter();
  memcpy(v335, v336, sizeof(v335));
  if (sub_1000C0F9C(v335) == 1)
  {
    sub_100A1C544(17, v341);
    v145 = sub_10081852C(v341);
    if (!v86)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v145 = sub_10000CAAC(v336, &qword_1019F4B88, &qword_10146CDF0);
    if (!v86)
    {
LABEL_18:
      v146 = *(v8 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
      *&v276 = *(v146 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      v147 = v273;
      (*(**(*(v146 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v145);
      v148 = v279;
      v149 = v232;
      v150 = v278;
      v224 = *(v279 + 16);
      v225 = v279 + 16;
      v224(v232, v147, v278);
      v222 = *(v148 + 56);
      v222(v149, 0, 1, v150);
      v334 = 1;
      v151 = type metadata accessor for CRLTableAnchorHint(0);
      v152 = *(v151 - 8);
      v221[0] = *(v152 + 56);
      v221[1] = v152 + 56;
      v153 = v233;
      (v221[0])(v233, 1, 1, v151);
      v154 = v113;
      v223 = v114;
      v226 = v276;
      sub_101271CCC(v154, v337);
      v229 = v154;

      v155 = v230;
      sub_10000BE14(v149, v230, &qword_1019F6990, &qword_10146D2F0);
      v156 = v234;
      sub_10000BE14(v153, v234, &unk_101A09DD0, &unk_101478C10);
      v157 = v268;
      v222(v268, 1, 1, v150);
      v158 = v231;
      v159 = *(v231 + 28);
      v160 = v157 + *(v231 + 24);
      (v221[0])(v157 + v159, 1, 1, v151);
      *(v157 + *(v158 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v155, v157, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v153, &unk_101A09DD0, &unk_101478C10);
      sub_10000CAAC(v149, &qword_1019F6990, &qword_10146D2F0);
      v161 = (v157 + *(v158 + 20));
      v162 = v337[1];
      *v161 = v337[0];
      v161[1] = v162;
      *v160 = 0u;
      *(v160 + 16) = 0u;
      *(v160 + 32) = 0u;
      *(v160 + 48) = 0u;
      v276 = 0u;
      *(v160 + 64) = v334;
      v163 = v157 + v159;
      v164 = v236;
      v165 = v239;
      sub_10002C638(v156, v163, &unk_101A09DD0, &unk_101478C10);
      v166 = v265;
      sub_101125504(v157, v265, type metadata accessor for CRLBoardItemParentAffinity);
      sub_101125504(v166, v164, type metadata accessor for CRLBoardItemParentAffinity);
      v167 = v269;
      v168 = *(v269 + 20);
      v234 = v223;
      sub_100C3D740(v234, v164 + v168);
      v169 = v167[6];
      v170 = type metadata accessor for CRLPKStrokePathData(0);
      v171 = *(*(v170 - 8) + 56);
      v171(v164 + v169, 1, 1, v170);
      v172 = v164 + v167[7];
      *v172 = 0;
      *(v172 + 8) = -1;
      *(v164 + v167[8]) = _swiftEmptyDictionarySingleton;
      if (v165)
      {
        v173 = v228;
        v174 = v228;
        v175 = v165;
        v176 = v227;
        sub_100CD0B98(v175, v173, v227);
        v171(v176, 0, 1, v170);
        sub_10002C638(v176, v164 + v169, &qword_101A224B8, &unk_1014B7400);
      }

      v239 = type metadata accessor for CRLBoardItemParentAffinity;
      sub_10112556C(v265, type metadata accessor for CRLBoardItemParentAffinity);
      v177 = v270;
      sub_10112549C(v164, v270, type metadata accessor for CRLShapeItemParentAffinity);
      v178 = v240;
      sub_101125504(v177, v240, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v326);
      v179 = v267;
      UUID.init()();
      v180 = v237;
      *&v265 = *(v237 + 52);
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
      v181 = v277;
      CRRegister.init(wrappedValue:)();
      *(v181 + *(v180 + 56)) = _swiftEmptyDictionarySingleton;
      v182 = v278;
      v224(v235, v179, v278);
      CRRegister.init(_:)();
      sub_101125504(v178, v238, type metadata accessor for CRLShapeItemParentAffinity);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity, "U-7");
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      *&v311 = 0;
      *(&v311 + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      v183 = v241;
      CRRegister.init(_:)();
      v184 = *(v279 + 8);
      v279 += 8;
      v269 = v184;
      v184(v179, v182);
      sub_10112556C(v178, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v270, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v268, v239);
      (*(v242 + 40))(v181 + v265, v183, v243);
      if (v244)
      {
        sub_101247234(v244, v338);
        v267 = v338[1];
        v276 = v338[0];
        v265 = v338[2];
        v242 = v338[5];
        v243 = v338[4];
        v244 = v338[3];
        v270 = v339;
        v268 = v340;
        v185 = v271;
        if (v271)
        {
LABEL_22:
          sub_100B965E4(v185, &v296);
          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v296, v186);
          v323 = v308;
          v324 = v309;
          v325 = v310;
          v319 = v304;
          v320 = v305;
          v322 = v307;
          v321 = v306;
          v315 = v300;
          v316 = v301;
          v318 = v303;
          v317 = v302;
          v311 = v296;
          v312 = v297;
          v314 = v299;
          v313 = v298;
LABEL_27:
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v297 = 0u;
          v298 = 0u;
          v296 = 0u;
          v271 = sub_1005B981C(&qword_1019FFF80, &qword_101489000);
          sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &qword_101489000, sub_1006BD1F0);
          v198 = v262;
          CRRegister.init(wrappedValue:)();
          v199 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
          v241 = v199[5];
          sub_1005D0BD8(&v296);
          v293 = v308;
          v294 = v309;
          v295 = v310;
          v289 = v304;
          v290 = v305;
          v291 = v306;
          v292 = v307;
          v285 = v300;
          v286 = v301;
          v287 = v302;
          v288 = v303;
          v281 = v296;
          v282 = v297;
          v283 = v298;
          v284 = v299;
          sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
          sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
          CRRegister.init(wrappedValue:)();
          v240 = v199[6];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          sub_1005B981C(&unk_101A0DA00, &qword_101495050);
          sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &qword_101495050, sub_1009CDC80);
          CRRegister.init(wrappedValue:)();
          v200 = v199[7];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(wrappedValue:)();
          v201 = v199[8];
          LODWORD(v281) = 0;
          CRRegister.init(wrappedValue:)();
          *(v198 + v199[9]) = _swiftEmptyDictionarySingleton;
          v281 = v276;
          v282 = v267;
          v283 = v265;
          v284 = v244;
          v285 = v243;
          v286 = v242;
          *&v287 = v270;
          *(&v287 + 1) = v268;
          v202 = v245;
          CRRegister.init(_:)();
          (*(v246 + 40))(v198, v202, v247);
          v293 = v323;
          v294 = v324;
          v295 = v325;
          v289 = v319;
          v290 = v320;
          v291 = v321;
          v292 = v322;
          v285 = v315;
          v286 = v316;
          v287 = v317;
          v288 = v318;
          v281 = v311;
          v282 = v312;
          v283 = v313;
          v284 = v314;
          v203 = v251;
          CRRegister.init(_:)();
          (*(v252 + 40))(&v241[v198], v203, v253);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          v204 = v255;
          CRRegister.init(_:)();
          v205 = v257;
          v206 = *(v256 + 40);
          v206(v198 + v240, v204, v257);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(_:)();
          v206(v198 + v200, v204, v205);
          LODWORD(v281) = 0;
          v207 = v258;
          CRRegister.init(_:)();
          (*(v259 + 40))(v198 + v201, v207, v260);
          *(v198 + *(v254 + 20)) = _swiftEmptyDictionarySingleton;
          v208 = v275;
          sub_101125504(v198, v275, type metadata accessor for CRLShapeItemCRDTData);
          *(v208 + *(v261 + 20)) = _swiftEmptyDictionarySingleton;
          v209 = v272;
          sub_10000BE14(v277, v272, &unk_101A0F400, &unk_1014746E0);
          v210 = v274;
          sub_101125504(v208, v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          *&v281 = 0x1000000000000;
          *(&v281 + 1) = 0x2000400000000;
          v282 = 0x1000000000000uLL;
          LOBYTE(v283) = 1;
          type metadata accessor for CRLFreehandDrawingShapeItemData(0);
          v211 = swift_allocObject();
          v212 = v250;
          sub_10000BE14(v209, v250, &unk_101A0F400, &unk_1014746E0);
          v213 = v263;
          sub_101125504(v210, v263, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_101125504(v213, v211 + *(*v211 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          v214 = v248;
          sub_10000BE14(v212, v248, &unk_101A0F400, &unk_1014746E0);
          *(v211 + qword_101A27318) = 0;
          v215 = v249;
          sub_10000BE14(v214, v249, &unk_101A0F400, &unk_1014746E0);
          sub_10000BE14(v215, v211 + *(*v211 + 736), &unk_101A0F400, &unk_1014746E0);
          sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v215, &unk_101A0F400, &unk_1014746E0);
          sub_10000CAAC(v214, &unk_101A0F400, &unk_1014746E0);
          sub_10112556C(v213, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v212, &unk_101A0F400, &unk_1014746E0);
          sub_10112556C(v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v272, &unk_101A0F400, &unk_1014746E0);
          v216 = sub_100747AF0(&v281, 2);
          v217 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
          v218 = &v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
          *v218 = 0u;
          *(v218 + 1) = 0u;
          *(v218 + 2) = 0u;
          *(v218 + 6) = 0;
          *&v217[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v226;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v216;
          v219 = type metadata accessor for CRLBoardItemBase(0);
          v280.receiver = v217;
          v280.super_class = v219;
          v197 = objc_msgSendSuper2(&v280, "init");

          sub_10112556C(v275, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          (v269)(v273, v278);
          sub_10112556C(v198, type metadata accessor for CRLShapeItemCRDTData);
          sub_10000CAAC(v277, &unk_101A0F400, &unk_1014746E0);
          v193 = v266;
          v195 = v264;
          goto LABEL_28;
        }
      }

      else
      {
        v270 = 0;
        v268 = 0;
        v267 = 0u;
        v265 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v185 = v271;
        if (v271)
        {
          goto LABEL_22;
        }
      }

      sub_1005D0BD8(&v311);
      goto LABEL_27;
    }
  }

  v187 = *(v8 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v188 = *(v187 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v189 = v267;
  (*(**(*(v187 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v145);
  v190 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem(0));
  v191 = v188;
  v192 = v113;
  v193 = v113;
  v194 = v114;
  v195 = v114;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v197 = [v190 initWithStore:v191 parentContainerUUID:isa geometry:v192 pathSource:v194 stroke:v271 headLineEnd:0 tailLineEnd:0];

  (*(v279 + 8))(v189, v278);
LABEL_28:

  return v197;
}

id sub_10111E0E8(void *a1, void *a2, uint64_t a3, void *a4, void *a5, unint64_t a6, double a7, double a8)
{
  v9 = v8;
  v239 = a6;
  *&v243 = a3;
  v271 = a2;
  v260 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v260);
  v262 = v221 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v274 = v221 - v17;
  __chkstk_darwin(v18);
  v275 = v221 - v19;
  v20 = sub_1005B981C(&unk_101A0D9C0, "@0$");
  v258 = *(v20 - 8);
  v259 = v20;
  __chkstk_darwin(v20);
  v257 = v221 - v21;
  v22 = sub_1005B981C(&unk_101A10680, &qword_101489C50);
  v255 = *(v22 - 8);
  v256 = v22;
  __chkstk_darwin(v22);
  v254 = v221 - v23;
  v24 = sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
  v251 = *(v24 - 8);
  v252 = v24;
  __chkstk_darwin(v24);
  v250 = v221 - v25;
  v26 = sub_1005B981C(&unk_101A10690, &qword_101472520);
  v245 = *(v26 - 8);
  v246 = v26;
  __chkstk_darwin(v26);
  v244 = v221 - v27;
  v253 = type metadata accessor for CRLShapeItemCRDTData(0);
  __chkstk_darwin(v253);
  v261 = v221 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v242 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  *&v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  *&v240 = v221 - v29;
  v30 = sub_1005B981C(&qword_101A224B8, &unk_1014B7400);
  __chkstk_darwin(v30 - 8);
  v226 = v221 - v31;
  v269 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v269);
  v236 = v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v238 = v221 - v34;
  __chkstk_darwin(v35);
  v234 = v221 - v36;
  __chkstk_darwin(v37);
  v270 = v221 - v38;
  v39 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v39 - 8);
  v263 = v221 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v232 = v221 - v42;
  v43 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v43 - 8);
  v229 = v221 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v231 = v221 - v46;
  v230 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v230);
  *&v264 = v221 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v268 = v221 - v49;
  v235 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v235);
  v248 = v221 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v247 = v221 - v52;
  __chkstk_darwin(v53);
  v249 = v221 - v54;
  __chkstk_darwin(v55);
  v272 = v221 - v56;
  __chkstk_darwin(v57);
  v277 = v221 - v58;
  v278 = type metadata accessor for UUID();
  v279 = *(v278 - 8);
  __chkstk_darwin(v278);
  v233 = v221 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v273 = v221 - v61;
  __chkstk_darwin(v62);
  *&v267 = v221 - v63;
  v227 = a5;
  v237 = a4;
  v276 = v9;
  if (a5 && !a4)
  {
    v266 = a1;
    v64 = objc_opt_self();
    v65 = [v64 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336, "invalid nil value found", 23, 2u);
    StaticString.description.getter("makeShapeItemForFreehandDrawing(pathSource:position:stroke:fill:pencilKitStrokePathCompactData:maskPath:snappedShapeType:)", 122, 2);
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v72 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_10146CA70;
    *(v73 + 56) = &type metadata for Int32;
    *(v73 + 64) = &protocol witness table for Int32;
    *(v73 + 32) = v65;
    v74 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v73 + 96) = v74;
    v75 = sub_1005CF04C();
    *(v73 + 104) = v75;
    *(v73 + 72) = v66;
    *(v73 + 136) = &type metadata for String;
    v76 = sub_1000053B0();
    *(v73 + 112) = v69;
    *(v73 + 120) = v71;
    *(v73 + 176) = &type metadata for UInt;
    *(v73 + 184) = &protocol witness table for UInt;
    *(v73 + 144) = v76;
    *(v73 + 152) = 214;
    v77 = v336[0];
    *(v73 + 216) = v74;
    *(v73 + 224) = v75;
    *(v73 + 192) = v77;
    v78 = v66;
    v79 = v77;
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v80, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v81, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v82 = swift_allocObject();
    v82[2] = 8;
    v82[3] = 0;
    v82[4] = 0;
    v82[5] = 0;
    v83 = __VaListBuilder.va_list()();
    StaticString.description.getter("makeShapeItemForFreehandDrawing(pathSource:position:stroke:fill:pencilKitStrokePathCompactData:maskPath:snappedShapeType:)", 122, 2);
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil value found", 23, 2);
    v86 = String._bridgeToObjectiveC()();

    [v64 handleFailureInFunction:v84 file:v85 lineNumber:214 isFatal:0 format:v86 args:v83];

    v9 = v276;
    a1 = v266;
  }

  v87 = sub_100818518(17);
  if (v87)
  {
    sub_100006370(0, &unk_101A10770, off_10182F7E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v89 = a1;
    if (([v89 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
    {
      LODWORD(v228) = v87;
      v266 = a1;
      v265 = objc_opt_self();
      v90 = [v265 _atomicIncrementAssertCount];
      v336[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v336, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2u);
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v91 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v92 = String._bridgeToObjectiveC()();

      v93 = [v92 lastPathComponent];

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v97 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_10146CA70;
      *(v98 + 56) = &type metadata for Int32;
      *(v98 + 64) = &protocol witness table for Int32;
      *(v98 + 32) = v90;
      v99 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v98 + 96) = v99;
      v100 = sub_1005CF04C();
      *(v98 + 104) = v100;
      *(v98 + 72) = v91;
      *(v98 + 136) = &type metadata for String;
      v101 = sub_1000053B0();
      *(v98 + 112) = v94;
      *(v98 + 120) = v96;
      *(v98 + 176) = &type metadata for UInt;
      *(v98 + 184) = &protocol witness table for UInt;
      *(v98 + 144) = v101;
      *(v98 + 152) = 613;
      v102 = v336[0];
      *(v98 + 216) = v99;
      *(v98 + 224) = v100;
      *(v98 + 192) = v102;
      v103 = v91;
      v104 = v102;
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v106 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v106, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v107 = swift_allocObject();
      v107[2] = 8;
      v107[3] = 0;
      v107[4] = 0;
      v107[5] = 0;
      v108 = __VaListBuilder.va_list()();
      StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
      v109 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter("pathSource must be a connection line path source if shapeType is connection line.", 81, 2);
      v111 = String._bridgeToObjectiveC()();

      [v265 handleFailureInFunction:v109 file:v110 lineNumber:613 isFatal:0 format:v111 args:v108];

      v89 = v111;
      v9 = v276;
      a1 = v266;
      v87 = v228;
    }
  }

  [a1 naturalSize];
  v114 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:0 heightValid:0 horizontalFlip:a7 verticalFlip:a8 angle:{v112, v113, 0.0}];
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8, off_10182F908);
  swift_dynamicCast();
  v115 = v335[0];
  [v114 size];
  v117 = v116;
  v119 = v118;
  [v115 naturalSize];
  v122 = sub_10011ED08(v117, v119, v120, v121, 0.001);
  v265 = v115;
  v266 = v114;
  if (!v122)
  {
    LODWORD(v228) = v87;
    v123 = objc_opt_self();
    v124 = [v123 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336, "Geometry and path source must have the same size.", 49, 2u);
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v126 = String._bridgeToObjectiveC()();

    v127 = [v126 lastPathComponent];

    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v131 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_10146CA70;
    *(v132 + 56) = &type metadata for Int32;
    *(v132 + 64) = &protocol witness table for Int32;
    *(v132 + 32) = v124;
    v133 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v132 + 96) = v133;
    v134 = sub_1005CF04C();
    *(v132 + 104) = v134;
    *(v132 + 72) = v125;
    *(v132 + 136) = &type metadata for String;
    v135 = sub_1000053B0();
    *(v132 + 112) = v128;
    *(v132 + 120) = v130;
    *(v132 + 176) = &type metadata for UInt;
    *(v132 + 184) = &protocol witness table for UInt;
    *(v132 + 144) = v135;
    *(v132 + 152) = 649;
    v136 = v336[0];
    *(v132 + 216) = v133;
    *(v132 + 224) = v134;
    *(v132 + 192) = v136;
    v137 = v125;
    v138 = v136;
    v139 = static os_log_type_t.error.getter();
    sub_100005404(v131, &_mh_execute_header, v139, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v132);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v140 = static os_log_type_t.error.getter();
    sub_100005404(v131, &_mh_execute_header, v140, "Geometry and path source must have the same size.", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v141 = swift_allocObject();
    v141[2] = 8;
    v141[3] = 0;
    v141[4] = 0;
    v141[5] = 0;
    v142 = __VaListBuilder.va_list()();
    StaticString.description.getter("_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2);
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
    v144 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Geometry and path source must have the same size.", 49, 2);
    v145 = String._bridgeToObjectiveC()();

    [v123 handleFailureInFunction:v143 file:v144 lineNumber:649 isFatal:0 format:v145 args:v142];

    v115 = v265;
    v114 = v266;
    v9 = v276;
    v87 = v228;
  }

  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
  CRRegister.wrappedValue.getter();
  memcpy(v335, v336, sizeof(v335));
  if (sub_1000C0F9C(v335) == 1)
  {
    sub_100A1C544(17, v341);
    v146 = sub_10081852C(v341);
    if (!v87)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v146 = sub_10000CAAC(v336, &qword_1019F4B88, &qword_10146CDF0);
    if (!v87)
    {
LABEL_18:
      v147 = *&v9[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
      v276 = *(v147 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      v148 = v273;
      (*(**(*(v147 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v146);
      v149 = v279;
      v150 = v231;
      v151 = v278;
      v224 = *(v279 + 16);
      v225 = v279 + 16;
      v224(v231, v148, v278);
      v222 = *(v149 + 56);
      v222(v150, 0, 1, v151);
      v334 = 1;
      v152 = type metadata accessor for CRLTableAnchorHint(0);
      v153 = *(v152 - 8);
      v221[0] = *(v153 + 56);
      v221[1] = v153 + 56;
      v154 = v232;
      (v221[0])(v232, 1, 1, v152);
      v155 = v114;
      v223 = v115;
      v228 = v276;
      sub_101271CCC(v155, v337);
      v276 = v155;

      v156 = v229;
      sub_10000BE14(v150, v229, &qword_1019F6990, &qword_10146D2F0);
      sub_10000BE14(v154, v263, &unk_101A09DD0, &unk_101478C10);
      v157 = v268;
      v222(v268, 1, 1, v151);
      v158 = v230;
      v159 = *(v230 + 28);
      v160 = v157 + *(v230 + 24);
      (v221[0])(v157 + v159, 1, 1, v152);
      v161 = v234;
      *(v157 + *(v158 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v156, v157, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v154, &unk_101A09DD0, &unk_101478C10);
      sub_10000CAAC(v150, &qword_1019F6990, &qword_10146D2F0);
      v162 = (v157 + *(v158 + 20));
      v163 = v337[1];
      *v162 = v337[0];
      v162[1] = v163;
      *v160 = 0u;
      *(v160 + 16) = 0u;
      *(v160 + 32) = 0u;
      *(v160 + 48) = 0u;
      *(v160 + 64) = v334;
      v164 = v157 + v159;
      v165 = v237;
      sub_10002C638(v263, v164, &unk_101A09DD0, &unk_101478C10);
      v166 = v264;
      sub_101125504(v157, v264, type metadata accessor for CRLBoardItemParentAffinity);
      sub_101125504(v166, v161, type metadata accessor for CRLBoardItemParentAffinity);
      v167 = v269;
      v168 = *(v269 + 20);
      v263 = v223;
      sub_100C3D740(v263, v161 + v168);
      v169 = v167[6];
      v170 = type metadata accessor for CRLPKStrokePathData(0);
      v171 = *(*(v170 - 8) + 56);
      v171(v161 + v169, 1, 1, v170);
      v172 = v161 + v167[7];
      *v172 = 0;
      *(v172 + 8) = -1;
      *(v161 + v167[8]) = _swiftEmptyDictionarySingleton;
      if (v165)
      {
        v173 = v227;
        v174 = v227;
        v175 = v165;
        v176 = v226;
        sub_100CD0B98(v175, v173, v226);
        v171(v176, 0, 1, v170);
        sub_10002C638(v176, v161 + v169, &qword_101A224B8, &unk_1014B7400);
      }

      if (v239)
      {
        v177 = sub_100D633A8(v239);
        sub_10112556C(v264, type metadata accessor for CRLBoardItemParentAffinity);
        *v172 = v177;
        *(v172 + 8) = 0;
      }

      else
      {
        sub_10112556C(v264, type metadata accessor for CRLBoardItemParentAffinity);
      }

      v188 = v270;
      sub_10112549C(v161, v270, type metadata accessor for CRLShapeItemParentAffinity);
      v189 = v238;
      sub_101125504(v188, v238, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v326);
      v190 = v267;
      UUID.init()();
      v191 = v235;
      *&v264 = *(v235 + 52);
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &qword_1014897A0, sub_10074933C);
      v192 = v277;
      CRRegister.init(wrappedValue:)();
      *(v192 + *(v191 + 56)) = _swiftEmptyDictionarySingleton;
      v193 = v278;
      v224(v233, v190, v278);
      CRRegister.init(_:)();
      sub_101125504(v189, v236, type metadata accessor for CRLShapeItemParentAffinity);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity, "U-7");
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      *&v311 = 0;
      *(&v311 + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      v194 = v240;
      CRRegister.init(_:)();
      v195 = *(v279 + 8);
      v279 += 8;
      v269 = v195;
      v195(v190, v193);
      sub_10112556C(v189, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v270, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v268, type metadata accessor for CRLBoardItemParentAffinity);
      (*(v241 + 40))(v192 + v264, v194, v242);
      if (v243)
      {
        sub_101247234(v243, v338);
        v264 = v338[1];
        v267 = v338[0];
        v242 = v338[3];
        v243 = v338[2];
        v240 = v338[5];
        v241 = v338[4];
        v270 = v339;
        v268 = v340;
        v196 = v271;
        if (v271)
        {
LABEL_27:
          sub_100B965E4(v196, &v296);
          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v296, v197);
          v323 = v308;
          v324 = v309;
          v325 = v310;
          v319 = v304;
          v320 = v305;
          v322 = v307;
          v321 = v306;
          v315 = v300;
          v316 = v301;
          v318 = v303;
          v317 = v302;
          v311 = v296;
          v312 = v297;
          v314 = v299;
          v313 = v298;
LABEL_30:
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v297 = 0u;
          v298 = 0u;
          v296 = 0u;
          v271 = sub_1005B981C(&qword_1019FFF80, &qword_101489000);
          sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &qword_101489000, sub_1006BD1F0);
          v198 = v261;
          CRRegister.init(wrappedValue:)();
          v199 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
          v239 = v199[5];
          sub_1005D0BD8(&v296);
          v293 = v308;
          v294 = v309;
          v295 = v310;
          v289 = v304;
          v290 = v305;
          v291 = v306;
          v292 = v307;
          v285 = v300;
          v286 = v301;
          v287 = v302;
          v288 = v303;
          v281 = v296;
          v282 = v297;
          v283 = v298;
          v284 = v299;
          sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
          sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
          CRRegister.init(wrappedValue:)();
          v238 = v199[6];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          sub_1005B981C(&unk_101A0DA00, &qword_101495050);
          sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &qword_101495050, sub_1009CDC80);
          CRRegister.init(wrappedValue:)();
          v200 = v199[7];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(wrappedValue:)();
          v201 = v199[8];
          LODWORD(v281) = 0;
          CRRegister.init(wrappedValue:)();
          *(v198 + v199[9]) = _swiftEmptyDictionarySingleton;
          v281 = v267;
          v282 = v264;
          v283 = v243;
          v284 = v242;
          v285 = v241;
          v286 = v240;
          *&v287 = v270;
          *(&v287 + 1) = v268;
          v202 = v244;
          CRRegister.init(_:)();
          (*(v245 + 40))(v198, v202, v246);
          v293 = v323;
          v294 = v324;
          v295 = v325;
          v289 = v319;
          v290 = v320;
          v291 = v321;
          v292 = v322;
          v285 = v315;
          v286 = v316;
          v287 = v317;
          v288 = v318;
          v281 = v311;
          v282 = v312;
          v283 = v313;
          v284 = v314;
          v203 = v250;
          CRRegister.init(_:)();
          (*(v251 + 40))(v198 + v239, v203, v252);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          v204 = v254;
          CRRegister.init(_:)();
          v205 = v256;
          v206 = *(v255 + 40);
          v206(v198 + v238, v204, v256);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(_:)();
          v206(v198 + v200, v204, v205);
          LODWORD(v281) = 0;
          v207 = v257;
          CRRegister.init(_:)();
          (*(v258 + 40))(v198 + v201, v207, v259);
          *(v198 + *(v253 + 20)) = _swiftEmptyDictionarySingleton;
          v208 = v275;
          sub_101125504(v198, v275, type metadata accessor for CRLShapeItemCRDTData);
          *(v208 + *(v260 + 20)) = _swiftEmptyDictionarySingleton;
          v209 = v272;
          sub_10000BE14(v277, v272, &unk_101A0F400, &unk_1014746E0);
          v210 = v274;
          sub_101125504(v208, v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          *&v281 = 0x1000000000000;
          *(&v281 + 1) = 0x2000400000000;
          v282 = 0x1000000000000uLL;
          LOBYTE(v283) = 1;
          type metadata accessor for CRLFreehandDrawingShapeItemData(0);
          v211 = swift_allocObject();
          v212 = v249;
          sub_10000BE14(v209, v249, &unk_101A0F400, &unk_1014746E0);
          v213 = v262;
          sub_101125504(v210, v262, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_101125504(v213, v211 + *(*v211 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          v214 = v247;
          sub_10000BE14(v212, v247, &unk_101A0F400, &unk_1014746E0);
          *(v211 + qword_101A27318) = 0;
          v215 = v248;
          sub_10000BE14(v214, v248, &unk_101A0F400, &unk_1014746E0);
          sub_10000BE14(v215, v211 + *(*v211 + 736), &unk_101A0F400, &unk_1014746E0);
          sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v215, &unk_101A0F400, &unk_1014746E0);
          sub_10000CAAC(v214, &unk_101A0F400, &unk_1014746E0);
          sub_10112556C(v213, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v212, &unk_101A0F400, &unk_1014746E0);
          sub_10112556C(v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v272, &unk_101A0F400, &unk_1014746E0);
          v216 = sub_100747AF0(&v281, 2);
          v217 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
          v218 = &v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
          *v218 = 0u;
          *(v218 + 1) = 0u;
          *(v218 + 2) = 0u;
          *(v218 + 6) = 0;
          *&v217[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v228;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v216;
          v219 = type metadata accessor for CRLBoardItemBase(0);
          v280.receiver = v217;
          v280.super_class = v219;
          v187 = objc_msgSendSuper2(&v280, "init");

          sub_10112556C(v275, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          (v269)(v273, v278);
          sub_10112556C(v198, type metadata accessor for CRLShapeItemCRDTData);
          sub_10000CAAC(v277, &unk_101A0F400, &unk_1014746E0);
          v185 = v265;
          v114 = v266;
          goto LABEL_31;
        }
      }

      else
      {
        v270 = 0;
        v268 = 0;
        v267 = 0u;
        v264 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v196 = v271;
        if (v271)
        {
          goto LABEL_27;
        }
      }

      sub_1005D0BD8(&v311);
      goto LABEL_30;
    }
  }

  v178 = *&v9[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v179 = *(v178 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v180 = v267;
  (*(**(*(v178 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v146);
  v181 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem(0));
  v182 = v179;
  v183 = v114;
  v184 = v115;
  v185 = v115;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v187 = [v181 initWithStore:v182 parentContainerUUID:isa geometry:v183 pathSource:v184 stroke:v271 headLineEnd:0 tailLineEnd:0];

  (*(v279 + 8))(v180, v278);
LABEL_31:

  return v187;
}

Class sub_101120680(void *a1, double a2, uint64_t a3, void *a4, SEL *a5)
{
  v9 = type metadata accessor for PKStroke();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4;
  v14 = a1;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = objc_opt_self();
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v17 = [v15 *a5];

  if (!v17)
  {
    type metadata accessor for CRLFreehandDrawingShapeItem(0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = Array._bridgeToObjectiveC()().super.isa;
  }

  (*(v10 + 8))(v12, v9);

  return v17;
}

void sub_101120890(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_6;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_6;
  }

  v31 = objc_opt_self();
  v7 = [v31 _atomicIncrementAssertCount];
  v32 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v32, "We are enqueueing multiple commands, so there should be an open command group.", 78, 2u);
  StaticString.description.getter("blockToRunCommandToPostProcess(newBoardItem:shapeType:infosToConnect:commandController:)", 88, 2);
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v7;
  v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v16;
  v17 = sub_1005CF04C();
  *(inited + 104) = v17;
  *(inited + 72) = v8;
  *(inited + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v18;
  *(inited + 152) = 295;
  v19 = v32;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  *(inited + 192) = v19;
  v20 = v8;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v23, "We are enqueueing multiple commands, so there should be an open command group.", 78, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v24 = swift_allocObject();
  v24[2] = 8;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = 0;
  v25 = __VaListBuilder.va_list()();
  StaticString.description.getter("blockToRunCommandToPostProcess(newBoardItem:shapeType:infosToConnect:commandController:)", 88, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("We are enqueueing multiple commands, so there should be an open command group.", 78, 2);
  v28 = String._bridgeToObjectiveC()();

  [v31 handleFailureInFunction:v26 file:v27 lineNumber:295 isFatal:0 format:v28 args:v25];

LABEL_6:
  sub_10088F490();
  sub_100AEE6A4(a3);
  v30 = v29;
  sub_100888700(v29, 0, 0, 4uLL, 0);
}

uint64_t sub_101120E4C(double a1, double a2)
{
  v4 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = sub_10057DBD4(0);
  v9 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v7, v8}];
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1006950BC(v19);
  v17[12] = v19[12];
  v17[13] = v19[13];
  v17[14] = v19[14];
  v18 = v20;
  v17[8] = v19[8];
  v17[9] = v19[9];
  v17[10] = v19[10];
  v17[11] = v19[11];
  v17[4] = v19[4];
  v17[5] = v19[5];
  v17[6] = v19[6];
  v17[7] = v19[7];
  v17[0] = v19[0];
  v17[1] = v19[1];
  v17[2] = v19[2];
  v17[3] = v19[3];
  v14 = v9;
  v15 = v12;
  sub_1011133FC(0, 0, v9, 0, *&a1, *&a2, 0, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v12, v6, v17, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v6, &unk_101A0B1C0, &qword_101470EC0);
  type metadata accessor for CRLWPShapeItem(0);
  return swift_dynamicCastClassUnconditional();
}

char *sub_101121568(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7 - 8];
  if (a2 && (sub_10000630C(a2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v14), sub_1005B981C(&qword_1019FF208, &qword_10148C780), type metadata accessor for CRLAssetBackedAssetStorage(0), swift_dynamicCast()))
  {
    sub_101125504(v13 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v8, type metadata accessor for CRLAssetData);

    v9 = type metadata accessor for CRLAssetData(0);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for CRLAssetData(0);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = sub_10110DD78(a1, v8, a3);
  sub_10000CAAC(v8, &unk_101A1B880, &unk_10147AB00);
  return v11;
}

double sub_101121854(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v3 = a2[13];
  v51 = a2[12];
  v52 = v3;
  v53 = *(a2 + 28);
  v4 = a2[9];
  v47 = a2[8];
  v48 = v4;
  v5 = a2[11];
  v49 = a2[10];
  v50 = v5;
  v6 = a2[5];
  v43 = a2[4];
  v44 = v6;
  v7 = a2[7];
  v45 = a2[6];
  v46 = v7;
  v8 = a2[1];
  v39 = *a2;
  v40 = v8;
  v9 = a2[3];
  v41 = a2[2];
  v42 = v9;
  sub_100B98B48(&v39, &v24);
  v10 = Capsule.Ref.subscript.modify();
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  sub_1005B981C(&qword_101A2C7B0, &unk_1014BEA10);
  CRRegister.wrappedValue.setter();
  v10(v23, 0);

  swift_getKeyPath();
  v12 = *(a2 + 29);
  v11 = *(a2 + 30);

  v13 = Capsule.Ref.subscript.modify();
  *&v23[0] = v12;
  *(&v23[0] + 1) = v11;
  _s13StyleCRDTDataVMa(0);
  sub_1005B981C(&unk_101A2D9E0, &unk_1014D3420);
  CRRegister.wrappedValue.setter();
  v13(&v24, 0);

  swift_getKeyPath();
  LOBYTE(v12) = *(a2 + 248);
  v14 = Capsule.Ref.subscript.modify();
  LOBYTE(v23[0]) = v12;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  v14(&v24, 0);

  swift_getKeyPath();
  v15 = *(a2 + 249);
  v16 = Capsule.Ref.subscript.modify();
  LOBYTE(v23[0]) = v15;
  CRRegister.wrappedValue.setter();
  v16(&v24, 0);

  swift_getKeyPath();
  v17 = a2[21];
  v28 = a2[20];
  v29 = v17;
  v30 = a2[22];
  v18 = a2[17];
  v24 = a2[16];
  v25 = v18;
  v19 = a2[19];
  v26 = a2[18];
  v27 = v19;
  sub_10000BE14(&v24, v23, &qword_1019FFF80, &qword_101489000);
  v20 = Capsule.Ref.subscript.modify();
  v23[4] = v28;
  v23[5] = v29;
  v23[6] = v30;
  v23[2] = v26;
  v23[3] = v27;
  v23[0] = v24;
  v23[1] = v25;
  sub_1005B981C(&unk_101A10690, &qword_101472520);
  CRRegister.wrappedValue.setter();
  v20(&v22, 0);

  return result;
}

void *sub_101121D20(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - v6;
  v36 = _swiftEmptyArrayStorage;
  v7 = type metadata accessor for CRLUUIDRemapHelper();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v8[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v8[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 1;
  v35.receiver = v8;
  v35.super_class = v7;
  v33 = objc_msgSendSuper2(&v35, "init", v25);
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2; v9; i = a2)
  {
    v10 = 0;
    v30 = a1 & 0xC000000000000001;
    v28 = OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1;
    while (1)
    {
      if (v30)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_14;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v34 = v10 + 1;
      v13 = *(*(*(v32 + v28) + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
      v14 = type metadata accessor for UUID();
      v15 = v31;
      (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
      v16 = *((swift_isaMask & *v12) + 0x288);
      v17 = v13;
      v18 = v16(v13, v15, 0, v33);
      sub_10000CAAC(v15, &qword_1019F6990, &qword_10146D2F0);

      v19 = v18;
      a2 = &v36;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v20 = v36;
      ++v10;
      a1 = v27;
      if (v34 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_17:
  v21 = i;
  v22 = v33;
  if (i)
  {
    v23 = v33;
    (v21)(v22);
  }

  return v20;
}

uint64_t type metadata accessor for CRLBoardItemFactory(uint64_t a1)
{
  result = qword_101A2AF50;
  if (!qword_101A2AF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10112232C(uint64_t a1)
{
  result = type metadata accessor for CRLBoardInsertStyleData(319);
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

BOOL sub_1011223CC(uint64_t a1)
{
  if (a1 - 1) < 0x14 && ((0x8C001u >> (a1 - 1)))
  {
    return 1;
  }

  return a1 == 19 || (a1 & 0xFFFFFFFFFFFFFFEFLL) == 2;
}

id sub_101122410(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CRLImageItem(0));
  *&v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo] = 0;
  v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial] = 2;
  v4[OBJC_IVAR____TtC8Freeform12CRLMediaItem_isLooping] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1011224E8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CRLMovieItem(0));
  v4[OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial] = 2;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData] = 0;
  v4[OBJC_IVAR____TtC8Freeform12CRLMediaItem_isLooping] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1011225AC(uint64_t a1, char *a2, uint64_t a3)
{
  v192 = a1;
  v5 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v183 = &v178 - v9;
  v189 = type metadata accessor for UUID();
  v10 = *(v189 - 8);
  __chkstk_darwin(v189);
  v179 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v178 - v13;
  __chkstk_darwin(v15);
  v196 = &v178 - v16;
  v17 = *(a3 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock);
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
  Strong = swift_unknownObjectWeakLoadStrong();
  v193 = a3;
  v190 = v10;
  v185 = v14;
  v186 = v17;
  v182 = v7;
  v188 = v18;
  if (Strong)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_98:
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = [result description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE300000000000000;
    v23 = 7104878;
  }

  v194 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v180 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  v181 = v23;
  *(inited + 32) = v23;
  v197 = (inited + 32);
  *(inited + 64) = v27;
  *(inited + 40) = v25;
  v187 = v25;

  v28 = a2;
  v29 = [a2 store];
  v30 = [v29 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v27;
  v195 = v27;
  *(inited + 72) = v31;
  *(inited + 80) = v33;
  v34 = [v28 store];
  v35 = v193;
  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {

LABEL_9:
    v191 = v28;
    v178 = objc_opt_self();
    LODWORD(v40) = [v178 _atomicIncrementAssertCount];
    v200[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v200, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2u);
    StaticString.description.getter("asset(forAssetData:owner:)", 26, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAsset.swift", 80, 2);
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v45;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_10;
  }

  v37 = v36;
  type metadata accessor for CRLBoardDataStore(0);
  v38 = static NSObject.== infix(_:_:)();

  v39 = v190;
  if ((v38 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v73 = [v28 parentBoard];
  v74 = v192;
  v184 = v73;
  if (!v73)
  {
    goto LABEL_66;
  }

  v75 = v73;
  v76 = swift_initStackObject();
  *(v76 + 16) = v180;
  *(v76 + 32) = v181;
  v197 = (v76 + 32);
  v77 = v195;
  *(v76 + 56) = &type metadata for String;
  *(v76 + 64) = v77;
  *(v76 + 40) = v187;
  v78 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
  v79 = *&v75[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  v191 = v75;
  v80 = [v79 description];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  *(v76 + 96) = &type metadata for String;
  *(v76 + 104) = v77;
  *(v76 + 72) = v81;
  *(v76 + 80) = v83;
  v84 = *&v75[v78];
  v85 = swift_unknownObjectWeakLoadStrong();
  if (v85)
  {
    v86 = v85;
    type metadata accessor for CRLBoardDataStore(0);
    v87 = v84;
    v88 = static NSObject.== infix(_:_:)();

    if (v88)
    {

LABEL_68:
      v39 = v190;
      v28 = v191;
      v74 = v192;
      goto LABEL_69;
    }
  }

  v187 = objc_opt_self();
  v89 = [v187 _atomicIncrementAssertCount];
  v200[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v76, v200, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2u);
  StaticString.description.getter("asset(forAssetData:owner:)", 26, 2);
  v90 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAsset.swift", 80, 2);
  v91 = String._bridgeToObjectiveC()();

  v92 = [v91 lastPathComponent];

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v96 = static OS_os_log.crlAssert;
  v97 = swift_initStackObject();
  *(v97 + 16) = xmmword_10146CA70;
  *(v97 + 56) = &type metadata for Int32;
  *(v97 + 64) = &protocol witness table for Int32;
  *(v97 + 32) = v89;
  v98 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v97 + 96) = v98;
  v99 = sub_1005CF04C();
  *(v97 + 72) = v90;
  v100 = v195;
  *(v97 + 136) = &type metadata for String;
  *(v97 + 144) = v100;
  *(v97 + 104) = v99;
  *(v97 + 112) = v93;
  *(v97 + 120) = v95;
  *(v97 + 176) = &type metadata for UInt;
  *(v97 + 152) = 241;
  v101 = v200[0];
  *(v97 + 216) = v98;
  *(v97 + 224) = v99;
  *(v97 + 184) = &protocol witness table for UInt;
  *(v97 + 192) = v101;
  v102 = v90;
  v103 = v101;
  v104 = static os_log_type_t.error.getter();
  sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v97);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v105 = static os_log_type_t.error.getter();
  sub_100005404(v96, &_mh_execute_header, v105, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2, v76);

  type metadata accessor for __VaListBuilder();
  v28 = swift_allocObject();
  *(v28 + 2) = 8;
  *(v28 + 3) = 0;
  inited = (v28 + 24);
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  v188 = v76;
  v39 = *(v76 + 16);
  if (!v39)
  {
LABEL_67:
    v118 = __VaListBuilder.va_list()();
    StaticString.description.getter("asset(forAssetData:owner:)", 26, 2);
    v119 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAsset.swift", 80, 2);
    v120 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2);
    v121 = String._bridgeToObjectiveC()();

    [v187 handleFailureInFunction:v119 file:v120 lineNumber:241 isFatal:0 format:v121 args:v118];

    v35 = v193;
    goto LABEL_68;
  }

  v35 = 0;
  v74 = 40;
  while (1)
  {
    v106 = &v197[5 * v35];
    v41 = v106[3];
    LODWORD(v40) = sub_100020E58(v106, v41);
    v107 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v44 = *inited;
    v108 = *(v107 + 16);
    v62 = __OFADD__(*inited, v108);
    v109 = *inited + v108;
    if (v62)
    {
      goto LABEL_91;
    }

    v40 = *(v28 + 4);
    if (v40 >= v109)
    {
      goto LABEL_58;
    }

    if (v40 + 0x4000000000000000 < 0)
    {
      goto LABEL_94;
    }

    v41 = *(v28 + 5);
    if (2 * v40 > v109)
    {
      v109 = 2 * v40;
    }

    *(v28 + 4) = v109;
    if ((v109 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_95;
    }

    v110 = v107;
    v111 = swift_slowAlloc();
    v112 = v111;
    *(v28 + 5) = v111;
    if (!v41)
    {
      break;
    }

    if (v111 != v41 || v111 >= &v41[v44])
    {
      memmove(v111, v41, 8 * v44);
    }

    LODWORD(v40) = v28;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v107 = v110;
LABEL_58:
    v112 = *(v28 + 5);
    if (!v112)
    {
      goto LABEL_65;
    }

LABEL_59:
    v114 = *(v107 + 16);
    if (v114)
    {
      v115 = (v107 + 32);
      v116 = *inited;
      while (1)
      {
        v117 = *v115++;
        v112[v116] = v117;
        v116 = *inited + 1;
        if (__OFADD__(*inited, 1))
        {
          break;
        }

        *inited = v116;
        if (!--v114)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
LABEL_10:
      v46 = static OS_os_log.crlAssert;
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_10146CA70;
      *(v47 + 56) = &type metadata for Int32;
      *(v47 + 64) = &protocol witness table for Int32;
      *(v47 + 32) = v40;
      v48 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v47 + 96) = v48;
      v49 = sub_1005CF04C();
      *(v47 + 72) = v41;
      v50 = v195;
      *(v47 + 136) = &type metadata for String;
      *(v47 + 144) = v50;
      *(v47 + 104) = v49;
      *(v47 + 112) = v44;
      *(v47 + 120) = v28;
      *(v47 + 176) = &type metadata for UInt;
      *(v47 + 152) = 235;
      v51 = v200[0];
      *(v47 + 216) = v48;
      *(v47 + 224) = v49;
      *(v47 + 184) = &protocol witness table for UInt;
      *(v47 + 192) = v51;
      v52 = v41;
      v53 = v51;
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v55 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v55, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2, inited);

      type metadata accessor for __VaListBuilder();
      v41 = swift_allocObject();
      v41[2] = 8;
      v41[3] = 0;
      v39 = v41 + 3;
      v41[4] = 0;
      v41[5] = 0;
      v184 = inited;
      v28 = *(inited + 16);
      if (v28)
      {
        v56 = 0;
        inited = 40;
        while (1)
        {
          v57 = &v197[5 * v56];
          v44 = v57[3];
          LODWORD(v40) = sub_100020E58(v57, v44);
          v58 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v60 = *v39;
          v61 = *(v58 + 16);
          v62 = __OFADD__(*v39, v61);
          v63 = *v39 + v61;
          if (v62)
          {
            goto LABEL_90;
          }

          v35 = v58;
          v40 = v41[4];
          if (v40 >= v63)
          {
            goto LABEL_27;
          }

          if (v40 + 0x4000000000000000 < 0)
          {
            goto LABEL_92;
          }

          v44 = v41[5];
          if (2 * v40 > v63)
          {
            v63 = 2 * v40;
          }

          v41[4] = v63;
          if ((v63 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_93;
          }

          result = swift_slowAlloc();
          v41[5] = result;
          if (v44)
          {
            break;
          }

LABEL_28:
          if (!result)
          {
            __break(1u);
            goto LABEL_98;
          }

          v65 = *(v35 + 16);
          if (v65)
          {
            v66 = (v35 + 32);
            v67 = *v39;
            while (1)
            {
              v68 = *v66++;
              *(result + v67) = v68;
              v67 = *v39 + 1;
              if (__OFADD__(*v39, 1))
              {
                break;
              }

              *v39 = v67;
              if (!--v65)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
            goto LABEL_81;
          }

LABEL_12:

          v56 = (v56 + 1);
          if (v56 == v28)
          {
            goto LABEL_34;
          }
        }

        if (result != v44 || result >= v44 + 8 * v60)
        {
          memmove(result, v44, 8 * v60);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
        result = v41[5];
        goto LABEL_28;
      }

LABEL_34:
      v69 = __VaListBuilder.va_list()();
      StaticString.description.getter("asset(forAssetData:owner:)", 26, 2);
      v70 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAsset.swift", 80, 2);
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2);
      v72 = String._bridgeToObjectiveC()();

      [v178 handleFailureInFunction:v70 file:v71 lineNumber:235 isFatal:0 format:v72 args:v69];

      v35 = v193;
      v39 = v190;
      v28 = v191;
      goto LABEL_35;
    }

LABEL_43:

    if (++v35 == v39)
    {
      goto LABEL_67;
    }
  }

  v107 = v110;
  if (v112)
  {
    goto LABEL_59;
  }

LABEL_65:
  __break(1u);
LABEL_66:

  swift_unknownObjectRetain();
LABEL_69:
  v122 = v39[2];
  v122(v196, v74, v189);
  v123 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
  swift_beginAccess();
  v124 = *(v35 + v123);
  v125 = *(v124 + 16);
  v197 = v39 + 2;
  v188 = v122;
  if (!v125)
  {
LABEL_74:
    v131 = v74;
    v132 = v183;
    sub_101125504(v131, v183, type metadata accessor for CRLAssetData);
    v133 = [swift_unknownObjectRetain_n() store];
    v134 = v182;
    sub_101125504(v132, v182, type metadata accessor for CRLAssetData);
    v135 = type metadata accessor for CRLAssetBackedAssetStorage(0);
    v136 = swift_allocObject();
    sub_10112549C(v134, &v136[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData], type metadata accessor for CRLAssetData);
    *&v136[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store] = v133;
    v200[4] = &off_10189C5F8;
    v200[3] = v135;
    v200[0] = v136;
    v137 = type metadata accessor for CRLAsset();
    v138 = objc_allocWithZone(v137);
    sub_10000630C(v200, v138 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
    v199.receiver = v138;
    v199.super_class = v137;
    v139 = objc_msgSendSuper2(&v199, "init");
    sub_10112556C(v132, type metadata accessor for CRLAssetData);
    sub_100005070(v200);
    type metadata accessor for CRLAssetManager.AssetInfo();
    v140 = swift_allocObject();
    v141 = objc_opt_self();
    v142 = v139;
    *(v140 + 24) = [v141 hashTableWithOptions:517];
    v143 = [objc_opt_self() hashTableWithOptions:517];
    *(v140 + 32) = v143;
    *(v140 + 16) = v142;
    type metadata accessor for CRLBoard(0);
    v144 = swift_dynamicCastClass();
    if (v144)
    {
      [*(v140 + 24) addObject:v144];
    }

    else
    {
      v145 = v142;
      [v143 addObject:v28];
    }

    swift_unknownObjectRelease();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198 = *(v35 + v123);
    *(v35 + v123) = 0x8000000000000000;
    v187 = v140;
    sub_100A9BB98(v140, v196, isUniquelyReferenced_nonNull_native);
    *(v35 + v123) = v198;
    swift_endAccess();
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v147 = static OS_os_log.assetManagement;
    v148 = swift_initStackObject();
    *(v148 + 16) = xmmword_10146C6B0;
    v149 = UUID.uuidString.getter();
    v150 = v195;
    *(v148 + 56) = &type metadata for String;
    *(v148 + 64) = v150;
    *(v148 + 32) = v149;
    *(v148 + 40) = v151;
    v152 = static os_log_type_t.default.getter();
    sub_100005404(v147, &_mh_execute_header, v152, "CRLAssetManager asset(forAssetData:%@, owner:) create new", 57, 2, v148);

    swift_setDeallocating();
    sub_100005070((v148 + 32));
    goto LABEL_85;
  }

  v126 = sub_10003E994(v196);
  if ((v127 & 1) == 0)
  {

    goto LABEL_74;
  }

  v56 = *(*(v124 + 56) + 8 * v126);

  type metadata accessor for CRLBoard(0);
  v128 = swift_dynamicCastClass();
  v59 = "addObject:";
  if (v128)
  {
    v129 = v128;
    v130 = v56[3];
  }

  else
  {
LABEL_81:
    v130 = v56[4];
    v129 = v28;
  }

  [v130 v59];
  v187 = v56;
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v153 = static OS_os_log.assetManagement;
  v154 = swift_initStackObject();
  *(v154 + 16) = xmmword_10146C6B0;
  v155 = UUID.uuidString.getter();
  v156 = v195;
  *(v154 + 56) = &type metadata for String;
  *(v154 + 64) = v156;
  *(v154 + 32) = v155;
  *(v154 + 40) = v157;
  v158 = static os_log_type_t.default.getter();
  sub_100005404(v153, &_mh_execute_header, v158, "CRLAssetManager asset(forAssetData:%@, owner:) add owner to existing", 68, 2, v154);
  swift_setDeallocating();
  sub_100005070((v154 + 32));
  swift_unknownObjectRetain();
LABEL_85:
  v159 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
  v160 = [*(v35 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners) objectForKeyedSubscript:v28];
  swift_unknownObjectRelease();
  if (v160)
  {
    v161 = v179;
    v162 = v196;
    v163 = v189;
    v188(v179, v196, v189);
    swift_beginAccess();
    v164 = v185;
    sub_100E6AF38(v185, v161);
    v165 = v39[1];
    v165(v164, v163);
    swift_endAccess();

    swift_unknownObjectRelease();

    v165(v162, v163);
  }

  else
  {
    v166 = *(v35 + v159);
    v167 = v185;
    v191 = v28;
    v168 = v39;
    v169 = v188;
    v170 = v189;
    v188(v185, v196, v189);
    type metadata accessor for CRLAssetManager.OwnerInfo();
    v171 = swift_allocObject();
    *(v171 + 24) = 0;
    sub_1005B981C(&qword_101A1DBB0, &unk_101480620);
    v172 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_10146C6B0;
    v169(v173 + v172, v167, v170);
    v174 = v166;
    v175 = sub_100E93A84(v173);
    swift_setDeallocating();
    v176 = v168[1];
    v176(v173 + v172, v170);
    swift_deallocClassInstance();
    v176(v167, v170);
    *(v171 + 16) = v175;
    [v174 setObject:v171 forKeyedSubscript:v191];

    swift_unknownObjectRelease();

    v176(v196, v170);
  }

  v177 = v187[2];

  sub_100C8061C(3600.0);
  os_unfair_lock_unlock(*(v186 + 16));
  return v177;
}