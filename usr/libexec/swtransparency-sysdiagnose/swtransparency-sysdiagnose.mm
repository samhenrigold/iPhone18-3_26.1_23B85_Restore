uint64_t sub_100000D88@<X0>(void *a1@<X8>)
{
  URL.init(fileURLWithPath:)();
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100000E14()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for URL();
  v5 = *(v17[0] - 8);
  v6 = __chkstk_darwin(v17[0]);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  URL.init(fileURLWithPath:)();
  v17[10] = 0xD000000000000012;
  v17[11] = 0x8000000100003200;
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_100001270();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v4, v1);
  static String.Encoding.utf8.getter();
  v11 = String.init(contentsOf:encoding:)();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v8, v17[0]);
  sub_1000012C4(&qword_100008018, &qword_100002FE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100002FC0;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  print(_:separator:terminator:)();

  return (v14)(v10, v17[0]);
}

unint64_t sub_100001270()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

uint64_t sub_1000012C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000130C()
{
  v25 = type metadata accessor for DispatchTimeInterval();
  v0 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = (&v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for DispatchTime();
  v3 = *(v24 - 8);
  v4 = __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = [objc_allocWithZone(SoftwareTransparency) initWithApplication:0];
  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v23 = v11 + 16;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  aBlock[4] = sub_10000183C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001844;
  aBlock[3] = &unk_1000043F0;
  v13 = _Block_copy(aBlock);

  v14 = v10;

  v26 = v9;
  [v9 sysdiagnoseInfoWithCompletion:v13];
  _Block_release(v13);
  static DispatchTime.now()();
  *v2 = 2500;
  v15 = v25;
  (*(v0 + 104))(v2, enum case for DispatchTimeInterval.milliseconds(_:), v25);
  + infix(_:_:)();
  (*(v0 + 8))(v2, v15);
  v16 = *(v3 + 8);
  v17 = v6;
  v18 = v24;
  v16(v17, v24);
  LOBYTE(v15) = OS_dispatch_semaphore.wait(timeout:)();
  v16(v8, v18);
  if ((v15 & 1) != 0 || (swift_beginAccess(), (v19 = *(v11 + 24)) == 0))
  {

    return 0;
  }

  else
  {
    v20 = *(v11 + 16);
    sub_1000012C4(&qword_100008018, &qword_100002FE0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100002FC0;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 32) = v20;
    *(v21 + 40) = v19;

    print(_:separator:terminator:)();

    return 1;
  }
}

uint64_t sub_1000016D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001708(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  result = __chkstk_darwin(v6 - 8);
  if (a2 >> 60 != 15)
  {
    sub_100002AE8(a1, a2);
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      swift_beginAccess();
      *(a3 + 16) = v10;
      *(a3 + 24) = v11;

      OS_dispatch_semaphore.signal()();
    }

    return sub_100002A80(a1, a2);
  }

  return result;
}

uint64_t sub_1000017FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001844(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100002A80(v4, v8);
}

uint64_t sub_1000018F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t transparencySysdiagnose.init()()
{
  v0 = sub_1000012C4(&qword_100008020, &qword_100002FE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v3 - 8);
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v4 = type metadata accessor for ArgumentHelp();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t property wrapper backing initializer of transparencySysdiagnose.useFallback(uint64_t a1)
{
  v1 = sub_1000012C4(&qword_100008020, &qword_100002FE8);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v4 - 8);
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v5 = type metadata accessor for ArgumentHelp();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_100001B84()
{
  sub_1000012C4(&qword_100008028, &qword_100002FF0);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t (*sub_100001C00(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000012C4(&qword_100008028, &qword_100002FF0);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_100001C8C;
}

void sub_100001C8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> transparencySysdiagnose.run()()
{
  sub_1000012C4(&qword_100008028, &qword_100002FF0);
  Flag.wrappedValue.getter();
  if ((v0 & 1) != 0 || (sub_10000130C() & 1) == 0)
  {
    sub_100000E14();
  }
}

uint64_t sub_100001D2C()
{
  type metadata accessor for transparencySysdiagnose(0);
  sub_100002674(&qword_100008030, &protocol conformance descriptor for transparencySysdiagnose);
  return static ParsableCommand.main()();
}

uint64_t type metadata accessor for transparencySysdiagnose(uint64_t a1)
{
  result = qword_100008270;
  if (!qword_100008270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100001DD4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001E40(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100001EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626C6C6146657375 && a2 == 0xEB000000006B6361)
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

uint64_t sub_100001F44(uint64_t a1)
{
  v2 = sub_10000236C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001F80(uint64_t a1)
{
  v2 = sub_10000236C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t transparencySysdiagnose.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1000012C4(&qword_100008028, &qword_100002FF0);
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_1000012C4(&qword_100008038, &qword_100002FF8);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1000012C4(&qword_100008020, &qword_100002FE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for transparencySysdiagnose(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v16 = type metadata accessor for ArgumentHelp();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  Flag<A>.init(wrappedValue:name:help:)();
  sub_100002328(a1, a1[3]);
  sub_10000236C();
  v17 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v18 = v22;
    sub_100002468();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_100002514(v15, v21);
  }

  sub_1000023C0(a1);
  return sub_10000240C(v15);
}

void *sub_100002328(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000236C()
{
  result = qword_1000080E0[0];
  if (!qword_1000080E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000080E0);
  }

  return result;
}

uint64_t sub_1000023C0(void *a1)
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

uint64_t sub_10000240C(uint64_t a1)
{
  v2 = type metadata accessor for transparencySysdiagnose(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002468()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    sub_1000024CC(&qword_100008028, &qword_100002FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

uint64_t sub_1000024CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for transparencySysdiagnose(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for transparencySysdiagnose(0);
  sub_100002674(&qword_100008030, &protocol conformance descriptor for transparencySysdiagnose);
  static ParsableCommand.main()();
  return 0;
}

uint64_t sub_100002674(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for transparencySysdiagnose(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000026CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000012C4(&qword_100008028, &qword_100002FF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000012C4(&qword_100008028, &qword_100002FF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000027D4(uint64_t a1)
{
  sub_100002840();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002840()
{
  if (!qword_1000080B0)
  {
    v0 = type metadata accessor for Flag();
    if (!v1)
    {
      atomic_store(v0, &qword_1000080B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for transparencySysdiagnose.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for transparencySysdiagnose.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10000297C()
{
  result = qword_100008380[0];
  if (!qword_100008380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100008380);
  }

  return result;
}

unint64_t sub_1000029D4()
{
  result = qword_100008490;
  if (!qword_100008490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008490);
  }

  return result;
}

unint64_t sub_100002A2C()
{
  result = qword_100008498[0];
  if (!qword_100008498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100008498);
  }

  return result;
}

uint64_t sub_100002A80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002A94(a1, a2);
  }

  return a1;
}

uint64_t sub_100002A94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100002AE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}