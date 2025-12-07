int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}

__n128 sub_1000022DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000022E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002308(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100002348(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000023C0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002440@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002484()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000024C0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002514(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

BOOL sub_1000025A4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_10000262C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000026D0(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError, &unk_10006226C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000273C(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError, &unk_10006226C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000027A8(void *a1, uint64_t a2)
{
  v4 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError, &unk_10006226C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000285C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError, &unk_10006226C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000028D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100002938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002948@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002990@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029BC(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086F08, type metadata accessor for Key, &unk_10006237C);
  v3 = sub_100002DB4(&qword_100086F10, type metadata accessor for Key, &unk_10006208C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002A78(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EC0, type metadata accessor for SPPairingSessionError, &unk_100062228);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002AE4(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EC0, type metadata accessor for SPPairingSessionError, &unk_100062228);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002B54(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError, &unk_10006226C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError, &unk_10006226C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

__n128 sub_100002C44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002CD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100002DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000300C()
{
  result = qword_100086EE8;
  if (!qword_100086EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EE8);
  }

  return result;
}

void sub_10000314C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000031F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000032C0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 1702259052, 0xE400000000000000, sub_1000033D8, 0, &type metadata for Bool);
}

uint64_t sub_1000032C0()
{

  return _swift_task_switch(sub_1000033BC, 0, 0);
}

void sub_1000033D8(uint64_t a1)
{
  v2 = sub_100003958(&qword_100086F40, &unk_100062410);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  aBlock[4] = sub_100003A9C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003570;
  aBlock[3] = &unk_100079928;
  v8 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v8);
}

uint64_t sub_100003570(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_1000035E8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000036C8;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 1702259052, 0xE400000000000000, sub_100003950, v2, &type metadata for () + 8);
}

uint64_t sub_1000036C8()
{

  return _swift_task_switch(sub_1000037E0, 0, 0);
}

uint64_t sub_1000037F8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    sub_100003958(&qword_100086F30, qword_100065160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000623F0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_10004EF78(inited);
    swift_setDeallocating();
    sub_1000039A0(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  sub_100003958(&qword_100086F28, &qword_100064560);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100003958(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039A0(uint64_t a1)
{
  v2 = sub_100003958(&qword_100086F38, &qword_100063790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003A08()
{
  v1 = sub_100003958(&qword_100086F40, &unk_100062410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003A9C(char a1)
{
  sub_100003958(&qword_100086F40, &unk_100062410);
  sub_100003958(&qword_100086F40, &unk_100062410);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100003B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003B90()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_imageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setContentMode:2];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2];

  [v1 setImage:v3];
  v4 = [v0 contentView];
  [v4 addSubview:v1];
}

void sub_100003C8C()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = [v2 mainContentGuide];

  v4 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100062420;
  v6 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_imageView];
  v7 = [v6 topAnchor];
  v8 = [v3 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [v6 bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = [v6 leadingAnchor];
  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v5 + 48) = v15;
  v16 = [v6 trailingAnchor];
  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v5 + 56) = v18;
  v19 = [v6 centerYAnchor];
  v20 = [v3 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v5 + 64) = v21;
  v22 = [v6 centerXAnchor];
  v23 = [v3 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v5 + 72) = v24;
  sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

void sub_100003FE8()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v24._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x800000010005EE00;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v24);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = sub_100004358(*&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo], *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo + 8], *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo + 16], *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo + 24]);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v10 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = [v1 mainBundle];
      v25._object = 0xE000000000000000;
      v12._object = 0x800000010005EE20;
      v12._countAndFlagsBits = 0xD000000000000016;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v25);

      sub_100003958(&qword_100086FB0, &unk_100062500);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1000623F0;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_100004DB8();
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      static String.localizedStringWithFormat(_:_:)();

      sub_100003958(&qword_100086FC0, &unk_100064E50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000623F0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v16 = objc_opt_self();
      v17 = NSForegroundColorAttributeName;
      v18 = [v16 secondaryLabelColor];
      *(inited + 64) = sub_100004E64(0, &qword_100086FC8, UIColor_ptr);
      *(inited + 40) = v18;
      sub_10004F0A8(inited);
      swift_setDeallocating();
      sub_100004F1C(inited + 32, &qword_100086FD0, &unk_100062510);
      v19 = objc_allocWithZone(NSAttributedString);
      v20 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100004E0C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = [v19 initWithString:v20 attributes:isa];

      [v0 setAttributedSubtitle:v22];
    }

    else
    {
    }
  }
}

uint64_t sub_100004358(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v5 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      goto LABEL_9;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a1;
  if (!v6)
  {
    return 0;
  }

LABEL_9:

  return v4;
}

id sub_100004400()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000044D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100004534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

Swift::Int sub_100004598()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000045DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000461C()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_100086F48);
  v1 = sub_1000054DC(v0, qword_100086F48);
  if (qword_100086D88 != -1)
  {
    swift_once();
  }

  v2 = sub_1000054DC(v0, qword_100086F60);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000046E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a5;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  __chkstk_darwin(v9);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLQueryItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003958(&qword_100086FE0, &qword_100062520);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v43 - v21;
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  if (!a4)
  {
    goto LABEL_12;
  }

  v25 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v25 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    URLComponents.init(string:)();
    URLQueryItem.init(name:value:)();
    v26 = v44;
    v27 = *(v45 + 48);
    if (!v27(v24, 1, v44))
    {
      sub_100003958(&qword_100086FE8, &qword_100062528);
      v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000623F0;
      (*(v13 + 16))(v29 + v28, v15, v12);
      URLComponents.queryItems.setter();
    }

    if (v27(v24, 1, v26))
    {
      (*(v13 + 8))(v15, v12);
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    }

    else
    {
      v41 = v45;
      v42 = v43;
      (*(v45 + 16))(v43, v24, v26);
      URLComponents.url.getter();
      (*(v41 + 8))(v42, v26);
      (*(v13 + 8))(v15, v12);
    }

    return sub_100004F1C(v24, &qword_100086FE0, &qword_100062520);
  }

  else
  {
    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_12:
    v31 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v31 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_100003958(&qword_100086FB0, &unk_100062500);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1000623F0;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100004DB8();
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;

      String.init(format:_:)();
      URLComponents.init(string:)();

      sub_100004EAC(v22, v19);
      v33 = v44;
      v34 = v45;
      if ((*(v45 + 48))(v19, 1, v44) == 1)
      {
        sub_100004F1C(v22, &qword_100086FE0, &qword_100062520);
        sub_100004F1C(v19, &qword_100086FE0, &qword_100062520);
        v35 = type metadata accessor for URL();
        return (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
      }

      else
      {
        URLComponents.url.getter();
        sub_100004F1C(v22, &qword_100086FE0, &qword_100062520);
        return (*(v34 + 8))(v19, v33);
      }
    }

    else
    {
LABEL_15:
      v37 = type metadata accessor for URL();
      v38 = *(*(v37 - 8) + 56);
      v39 = v37;
      v40 = v46;

      return v38(v40, 1, 1, v39);
    }
  }
}

uint64_t sub_100004C8C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100004D38()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_100086F60);
  sub_1000054DC(v0, qword_100086F60);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100004DB8()
{
  result = qword_100086FB8;
  if (!qword_100086FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FB8);
  }

  return result;
}

unint64_t sub_100004E0C()
{
  result = qword_100086F08;
  if (!qword_100086F08)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F08);
  }

  return result;
}

uint64_t sub_100004E64(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100086FE0, &qword_100062520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004F1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003958(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004F7C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v9;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v10 = sub_10004ECB0(v35), (v11 & 1) == 0))
  {

    sub_100005488(v35);
LABEL_8:
    if (qword_100086D80 != -1)
    {
      swift_once();
    }

    v15 = sub_1000054DC(v2, qword_100086F48);
    (*(v3 + 16))(v8, v15, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No lost mode device type key, this is an invalid payload", v18, 2u);
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  sub_100005514(*(a1 + 56) + 32 * v10, v36);
  sub_100005488(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v13 = v33;
  v12 = v34;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v14 == v12)
  {

    goto LABEL_16;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {

    if (qword_100086D80 != -1)
    {
      swift_once();
    }

    v28 = sub_1000054DC(v2, qword_100086F48);
    (*(v3 + 16))(v6, v28, v2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Device type did not match", v31, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

LABEL_16:
  v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36[1] = v21;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v22 = sub_10004ECB0(v35), (v23 & 1) != 0))
  {
    sub_100005514(*(a1 + 56) + 32 * v22, v36);
    sub_100005488(v35);
    if (swift_dynamicCast())
    {
      v24 = v33;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_100005488(v35);
    v24 = 0;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v25;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v26 = sub_10004ECB0(v35), (v27 & 1) != 0))
  {
    sub_100005514(*(a1 + 56) + 32 * v26, v36);
    sub_100005488(v35);

    swift_dynamicCast();
  }

  else
  {

    sub_100005488(v35);
  }

  return v24;
}

uint64_t sub_1000054DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100005570(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for AirTagDetectionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AirTagDetectionError(_WORD *result, int a2, int a3)
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

unint64_t sub_1000056DC()
{
  result = qword_100086FF0;
  if (!qword_100086FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FF0);
  }

  return result;
}

unint64_t sub_100005734()
{
  result = qword_100086FF8;
  if (!qword_100086FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FF8);
  }

  return result;
}

id sub_10000579C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  [v0 setTextAlignment:1];
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v2];

  [v0 setNumberOfLines:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  return v0;
}

id sub_1000058B4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_loadingLabel;
  v6 = v2;
  *&v2[v5] = sub_10000579C();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_activityIndicator;
  v8 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v8 startAnimating];
  *&v6[v7] = v8;
  v6[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewAppeared] = 0;
  v6[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_videoViewReady] = 0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000054DC(v9, qword_10008C038);
  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v21);
    *(v13 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087050, qword_100062670);
    v14 = String.init<A>(describing:)();
    v16 = sub_10005B0A0(v14, v15, &v21);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = &v10[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewModel];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = swift_unknownObjectRetain_n();
  v19 = sub_10004CF80(v18, v10);
  sub_100005F88();
  sub_10000AEA0();

  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_100005B3C()
{

  return swift_unknownObjectRelease();
}

id sub_100005B8C()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087050, qword_100062670);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

id sub_100005DE0(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_videoViewReady] == 1 && *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView])
  {
    swift_getObjectType();
    result = dispatch thunk of VideoPlaybackControllable.play()();
  }

  v2[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewAppeared] = 1;
  return result;
}

void sub_100005F04()
{
  *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_videoViewReady) = 1;
  if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewAppeared) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView))
    {
      swift_getObjectType();
      dispatch thunk of VideoPlaybackControllable.play()();
    }
  }
}

void sub_100005F88()
{
  v1 = v0;
  v2 = sub_10000626C();
  v3 = *(v2 + 16);
  v4 = type metadata accessor for AirTagLoadingViewModel();
  v3(v4, v2);
  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_loadingLabel];
  v7 = [objc_opt_self() mainBundle];
  v20._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x495443454E4E4F43;
  v8._object = 0xEA0000000000474ELL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v20);

  v10 = String._bridgeToObjectiveC()();

  [v6 setText:v10];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_activityIndicator];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_allocWithZone(UIStackView) init];
  [v12 setAxis:0];
  [v12 setAlignment:3];
  [v12 setSpacing:10.0];
  [v12 addArrangedSubview:v11];
  [v12 addArrangedSubview:v6];
  sub_10000B1EC(v12);
  v13 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100062620;
  v15 = [v6 heightAnchor];
  v16 = [v11 heightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:2.0];

  *(v14 + 32) = v17;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];
}

unint64_t sub_10000626C()
{
  result = qword_100087058;
  if (!qword_100087058)
  {
    type metadata accessor for AirTagLoadingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087058);
  }

  return result;
}

unint64_t sub_1000062C4()
{
  result = qword_100086FD8;
  if (!qword_100086FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100086FD8);
  }

  return result;
}

id sub_100006310(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = qword_100086DA8;
  v7 = v2;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000054DC(v8, qword_10008C038);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v27);
    *(v12 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087090, qword_1000626D0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10005B0A0(v13, v14, &v27);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = &v9[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  *v16 = a1;
  *(v16 + 1) = a2;
  v28.receiver = v9;
  v28.super_class = ObjectType;
  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v28, "initWithContentView:", 0);
  [v17 setDismissalType:1];
  v18 = [objc_opt_self() mainBundle];
  v29._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0x4741545F454D414ELL;
  v19._object = 0xE800000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v29);

  v21 = String._bridgeToObjectiveC()();

  [v17 setTitle:v21];

  v22 = [v17 contentView];
  v23 = [v22 pickerView];

  [v23 setDataSource:v17];
  v24 = [v17 contentView];
  v25 = [v24 pickerView];

  [v25 setDelegate:v17];
  sub_100006B08();

  swift_unknownObjectRelease();
  return v17;
}

id sub_100006694()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087090, qword_1000626D0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_100006B08()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x45554E49544E4F43;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100006D98;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_100079B48;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v0 addAction:v7];
}

void *sub_100006CC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();

    v4 = sub_100006DB8();
    v5 = *(v4 + 40);
    v6 = type metadata accessor for AirTagRolePickerViewModel();
    v5(v6, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100006D60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006DB8()
{
  result = qword_100087098;
  if (!qword_100087098)
  {
    type metadata accessor for AirTagRolePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryConfiguration.Color(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoryConfiguration.Color(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100006FE4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100007010()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100007058(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000709C()
{
  if (*v0)
  {
    return 0x65706172672ELL;
  }

  else
  {
    return 0x676154726941;
  }
}

unint64_t sub_1000070CC()
{
  result = qword_1000870A0;
  if (!qword_1000870A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870A0);
  }

  return result;
}

unint64_t sub_100007124()
{
  result = qword_1000870A8;
  if (!qword_1000870A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870A8);
  }

  return result;
}

void sub_1000071A0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:50.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_1000870B0 = v2;
}

id sub_100007258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_errorView;
  v8 = qword_100086D90;
  v9 = v2;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIImageView) initWithImage:qword_1000870B0];
  v11 = [objc_opt_self() systemRedColor];
  [v10 setTintColor:v11];

  [v10 setContentMode:1];
  *&v3[v7] = v10;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000054DC(v12, qword_10008C038);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v23);
    *(v16 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_1000870F0, &qword_1000628E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10005B0A0(v17, v18, &v23);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = &v13[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel];
  *v20 = a1;
  *(v20 + 1) = a2;
  v24.receiver = v13;
  v24.super_class = ObjectType;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v24, "initWithContentView:", 0);
  sub_1000077F0();
  sub_100007C58();

  swift_unknownObjectRelease();
  return v21;
}

id sub_100007558()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000870F0, &qword_1000628E0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_1000077F0()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel + 8];
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
  v4 = String._bridgeToObjectiveC()();

  [v0 setTitle:v4];

  (*(v2 + 24))(ObjectType, v2);
  v5 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v5];

  v6 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_errorView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v1 contentView];
  [v7 addSubview:v6];

  if (qword_100086D90 != -1)
  {
    swift_once();
  }

  if (qword_1000870B0)
  {
    [qword_1000870B0 size];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
  }

  v12 = [v1 contentView];
  v13 = [v12 mainContentGuide];

  v14 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100062420;
  v16 = [v6 centerXAnchor];
  v17 = [v13 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v6 centerYAnchor];
  v20 = [v13 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v6 heightAnchor];
  v23 = [v22 constraintEqualToConstant:v11];

  *(v15 + 48) = v23;
  v24 = [v6 widthAnchor];
  v25 = [v24 constraintEqualToConstant:v9];

  *(v15 + 56) = v25;
  v26 = [v6 topAnchor];
  v27 = [v13 topAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27];

  *(v15 + 64) = v28;
  v29 = [v6 bottomAnchor];
  v30 = [v13 bottomAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor:v30];

  *(v15 + 72) = v31;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];
}

void sub_100007C58()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel + 8];
  ObjectType = swift_getObjectType();
  (*(v2 + 32))(ObjectType, v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  v9[4] = sub_100007EB8;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100047684;
  v9[3] = &unk_100079CB8;
  v6 = _Block_copy(v9);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v1 addAction:v7];
}

char *sub_100007DE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel + 8];
    v4 = result;
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v3 + 40))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100007E80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ED8(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  v8 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v13)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100007FE0(char a1)
{
  result = 0x656C64692ELL;
  switch(a1)
  {
    case 1:
      result = 0x697463657465642ELL;
      break;
    case 2:
      result = 0x527463656C65732ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x746E756F6363612ELL;
      break;
    case 6:
      result = 0x676E6964616F6C2ELL;
      break;
    case 7:
      result = 0x4449656C7070612ELL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x636972747365722ELL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x326173682ELL;
      break;
    case 13:
      result = 0x6572756C6961662ELL;
      break;
    case 14:
      result = 0x737365636375732ELL;
      break;
    case 15:
      result = 0x656873696E69662ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000821C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_10000823C, v1, 0);
}

uint64_t sub_10000823C()
{
  v1 = v0[6];
  v2 = *(v1 + 128);
  if (v2 > 7)
  {
    if (v2 - 9 >= 6)
    {
      if (v2 != 8)
      {
        if (qword_100086DA8 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_1000054DC(v20, qword_10008C038);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "No further transitions possible.", v23, 2u);
        }

        goto LABEL_14;
      }

      v17 = swift_task_alloc();
      v0[14] = v17;
      *v17 = v0;
      v18 = sub_100009800;
      goto LABEL_29;
    }

LABEL_7:
    v3 = 15;
    goto LABEL_8;
  }

  if (*(v1 + 128) > 3u)
  {
    if (*(v1 + 128) <= 5u)
    {
      if (v2 == 4)
      {
        v17 = swift_task_alloc();
        v0[11] = v17;
        *v17 = v0;
        v18 = sub_100009008;
      }

      else
      {
        v17 = swift_task_alloc();
        v0[12] = v17;
        *v17 = v0;
        v18 = sub_100009274;
      }

      goto LABEL_29;
    }

    if (v2 == 6)
    {
      v17 = swift_task_alloc();
      v0[13] = v17;
      *v17 = v0;
      v18 = sub_1000094E0;
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (*(v1 + 128) > 1u)
  {
    if (v2 == 2)
    {
      v17 = swift_task_alloc();
      v0[8] = v17;
      *v17 = v0;
      v18 = sub_1000088F0;
    }

    else
    {
      v17 = swift_task_alloc();
      v0[10] = v17;
      *v17 = v0;
      v18 = sub_100008D9C;
    }
  }

  else
  {
    if (!*(v1 + 128))
    {
      v3 = 1;
LABEL_8:
      *(v1 + 128) = v3;
      v4 = v0[6];
      v5 = *(v4 + 128);
      swift_beginAccess();
      v6 = *(v4 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 136) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
        *(v4 + 136) = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
      }

      v10 = v0[6];
      *(v6 + 2) = v9 + 1;
      v6[v9 + 32] = v5;
      *(v4 + 136) = v6;
      swift_endAccess();
      v11 = *(v10 + 112);
      if (v11)
      {
        v12 = v0[6];
        v13 = *(v12 + 120);
        v14 = *(v12 + 128);

        v11(v14);
        sub_10000A788(v11, v13);
      }

LABEL_14:
      v15 = v0[1];

      return v15();
    }

    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    v18 = sub_100008684;
  }

LABEL_29:
  v17[1] = v18;
  v19 = v0[5];

  return sub_100009C3C(v19);
}

uint64_t sub_100008684(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10000879C, v2, 0);
}

uint64_t sub_10000879C()
{
  v1 = *(v0 + 120);
  if (v1 == 16)
  {
    LOBYTE(v1) = 2;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9, v11);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000088F0(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 121) = a1;

  return _swift_task_switch(sub_100008A08, v2, 0);
}

uint64_t sub_100008A08()
{
  v1 = *(v0 + 121);
  if (v1 == 16)
  {
    v2 = *(v0 + 40);

    return _swift_task_switch(sub_100008B98, v2, 0);
  }

  else
  {
    *(*(v0 + 48) + 128) = v1;
    v3 = *(v0 + 48);
    v4 = *(v3 + 128);
    swift_beginAccess();
    v5 = *(v3 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 136) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_10000A4D0(0, *(v5 + 2) + 1, 1, v5);
      *(v3 + 136) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_10000A4D0((v7 > 1), v8 + 1, 1, v5);
    }

    v9 = *(v0 + 48);
    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = v4;
    *(v3 + 136) = v5;
    swift_endAccess();
    v10 = *(v9 + 112);
    if (v10)
    {
      v11 = *(v0 + 48);
      v12 = *(v11 + 120);
      v13 = *(v11 + 128);

      v10(v13);
      sub_10000A788(v10, v12);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100008B98()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  v0[9] = v2;
  v3 = v2;

  return _swift_task_switch(sub_100008C18, v1, 0);
}

uint64_t sub_100008C18()
{
  v1 = *(v0 + 72);
  if (v1 && (v2 = [*(v0 + 72) roleId], v1, SPBeaconRoleIdOther == v2))
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  *(*(v0 + 48) + 128) = v3;
  v4 = *(v0 + 48);
  v5 = *(v4 + 128);
  swift_beginAccess();
  v6 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + 136) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = *(v0 + 48);
  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = v5;
  *(v4 + 136) = v6;
  swift_endAccess();
  v11 = *(v10 + 112);
  if (v11)
  {
    v12 = *(v0 + 48);
    v13 = *(v12 + 120);
    v14 = *(v12 + 128);

    v11(v14);
    sub_10000A788(v11, v13);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100008D9C(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 122) = a1;

  return _swift_task_switch(sub_100008EB4, v2, 0);
}

uint64_t sub_100008EB4()
{
  v1 = *(v0 + 122);
  if (v1 == 16)
  {
    LOBYTE(v1) = 4;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9, v11);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100009008(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 123) = a1;

  return _swift_task_switch(sub_100009120, v2, 0);
}

uint64_t sub_100009120()
{
  v1 = *(v0 + 123);
  if (v1 == 16)
  {
    LOBYTE(v1) = 5;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9, v11);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100009274(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 124) = a1;

  return _swift_task_switch(sub_10000938C, v2, 0);
}

uint64_t sub_10000938C()
{
  v1 = *(v0 + 124);
  if (v1 == 16)
  {
    LOBYTE(v1) = 6;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9, v11);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000094E0(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 125) = a1;

  return _swift_task_switch(sub_1000095F8, v2, 0);
}

uint64_t sub_1000095F8()
{
  v1 = *(v0 + 125);
  if (v1 == 16)
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No pairing result, next step is ambiguous.", v5, 2u);
    }
  }

  else
  {
    *(*(v0 + 48) + 128) = v1;
  }

  v6 = *(v0 + 48);
  v7 = *(v6 + 128);
  swift_beginAccess();
  v8 = *(v6 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10000A4D0(0, *(v8 + 2) + 1, 1, v8);
    *(v6 + 136) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_10000A4D0((v10 > 1), v11 + 1, 1, v8);
  }

  v12 = *(v0 + 48);
  *(v8 + 2) = v11 + 1;
  v8[v11 + 32] = v7;
  *(v6 + 136) = v8;
  swift_endAccess();
  v13 = *(v12 + 112);
  if (v13)
  {
    v14 = *(v0 + 48);
    v15 = *(v14 + 120);
    v16 = *(v14 + 128);

    v13(v16);
    sub_10000A788(v13, v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100009800(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 126) = a1;

  return _swift_task_switch(sub_100009918, v2, 0);
}

uint64_t sub_100009918()
{
  v1 = *(v0 + 126);
  if (v1 == 8 || v1 == 16)
  {
    v3 = *(v0 + 40);

    return _swift_task_switch(sub_100009AAC, v3, 0);
  }

  else
  {
    *(*(v0 + 48) + 128) = v1;
    v4 = *(v0 + 48);
    v5 = *(v4 + 128);
    swift_beginAccess();
    v6 = *(v4 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
      *(v4 + 136) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
    }

    v10 = *(v0 + 48);
    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = v5;
    *(v4 + 136) = v6;
    swift_endAccess();
    v11 = *(v10 + 112);
    if (v11)
    {
      v12 = *(v0 + 48);
      v13 = *(v12 + 120);
      v14 = *(v12 + 128);

      v11(v14);
      sub_10000A788(v11, v13);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100009AAC()
{
  v1 = *(v0 + 48);
  *(v0 + 127) = *(*(v0 + 40) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled);
  return _swift_task_switch(sub_100009ADC, v1, 0);
}

uint64_t sub_100009ADC()
{
  v2 = *(v0 + 127);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 15;
  }

  else
  {
    v3 = 2;
  }

  *(*(v0 + 48) + 128) = v3;
  v4 = *(v0 + 48);
  v5 = *(v4 + 128);
  swift_beginAccess();
  v6 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + 136) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = *(v0 + 48);
  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = v5;
  *(v4 + 136) = v6;
  swift_endAccess();
  v11 = *(v10 + 112);
  if (v11)
  {
    v12 = *(v0 + 48);
    v13 = *(v12 + 120);
    v14 = *(v12 + 128);

    v11(v14);
    sub_10000A788(v11, v13);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100009C3C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_100009C5C, a1, 0);
}

uint64_t sub_100009C5C()
{
  v1 = *(v0 + 144);
  *(v0 + 73) = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingRestricted);
  return _swift_task_switch(sub_100009C8C, v1, 0);
}

uint64_t sub_100009C8C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 74) = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled);
  *(v0 + 75) = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isManateeAvailable);
  v3 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v5 = v3[1];
  v4 = v3[2];
  v6 = *v3;
  *(v0 + 57) = *(v3 + 41);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 16) = v6;
  sub_10000A79C(v0 + 16, v0 + 80);

  return _swift_task_switch(sub_100009D4C, v2, 0);
}

uint64_t sub_100009D4C()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    if (!v1)
    {
      v4 = 0;
      goto LABEL_10;
    }

    v2 = *(v0 + 32);
    v3 = *(v0 + 75);
    sub_10000A80C(v0 + 16);
    if (v3 == 2 || (*(v0 + 75) & 1) != 0)
    {
      LOBYTE(v1) = v2 ^ 1;
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  v4 = 1;
LABEL_10:
  *(v0 + 77) = v4;
  *(v0 + 76) = v1 & 1;
  v5 = *(v0 + 144);

  return _swift_task_switch(sub_100009E08, v5, 0);
}

uint64_t sub_100009E08()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult;
  v3 = *v2;
  *(v0 + 160) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 78) = v4;
  sub_10000A874(v3, v4);

  return _swift_task_switch(sub_100009E90, v1, 0);
}

uint64_t sub_100009E90()
{
  v1 = *(v0 + 78);
  if (v1 == 255)
  {
    if (*(v0 + 73))
    {
      v3 = 9;
      goto LABEL_26;
    }

    v4 = *(v0 + 75);
    if (v4 == 2)
    {
      if (!*(v0 + 77))
      {
        v3 = 7;
        goto LABEL_26;
      }
    }

    else
    {
      v5 = v4 & 1;
      if (v5)
      {
        v3 = 7;
      }

      else
      {
        v3 = 11;
      }

      if ((v5 & *(v0 + 77) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (((*(v0 + 74) != 2) ^ *(v0 + 74)))
    {
      v6 = 8;
    }

    else
    {
      v6 = 16;
    }

    if (*(v0 + 76))
    {
      v3 = 12;
    }

    else
    {
      v3 = v6;
    }

    goto LABEL_26;
  }

  v2 = *(v0 + 160);
  if ((v1 & 1) == 0)
  {
    sub_10000A8A8(v2, v1);
    v3 = 14;
    goto LABEL_26;
  }

  if (v2 > 2)
  {
    if (v2 != 3)
    {
LABEL_13:
      sub_10000A8A8(v2, v1);
      v3 = 13;
      goto LABEL_26;
    }

    sub_10000A8A8(3, v1);
    v3 = 11;
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_13;
    }

    sub_10000A8A8(1, v1);
    v3 = 10;
  }

LABEL_26:
  v7 = *(v0 + 8);

  return v7(v3);
}

void sub_100009FD0()
{
  v1 = v0;
  if (*(v0 + 128) != 4)
  {
    if (qword_100086DA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  v2 = *(v0 + 136);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    while (v2[v4 + 32] != 4)
    {
      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_32;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v14 = *(v2 + 2);
      if (v13 != v14)
      {
        break;
      }

LABEL_16:
      *(v1 + 136) = v2;

      v5 = *(v2 + 2);
      v3 = v4;
      if (v5 >= v4)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v2 = sub_10000A610(v2);
    }

    v17 = v2 + 32;
    v18 = &v2[v4 + 33];
    while (v13 < v14)
    {
      v20 = *v18;
      if (v20 != *(v1 + 128))
      {
        if (v13 != v4)
        {
          if (v4 >= v14)
          {
            __break(1u);
            break;
          }

          v19 = v17[v4];
          v17[v4] = v20;
          *v18 = v19;
          v14 = *(v2 + 2);
        }

        ++v4;
      }

      ++v13;
      ++v18;
      if (v13 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
LABEL_8:
    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136446210;
      v10 = sub_100007FE0(*(v1 + 128));
      v12 = sub_10005B0A0(v10, v11, v22);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Move back unsupported for current state %{public}s", v8, 0xCu);
      sub_10000A5C4(v9);
    }

    else
    {
    }

    return;
  }

LABEL_6:
  v5 = *(v2 + 2);
LABEL_17:
  sub_10000A6C8(v3, v5);
  swift_endAccess();
  *(v1 + 128) = 3;
  v15 = *(v1 + 112);
  if (v15)
  {
    v16 = *(v1 + 120);

    v15(3);
    sub_10000A788(v15, v16);
  }
}

uint64_t sub_10000A2B0()
{
  sub_10000A788(*(v0 + 112), *(v0 + 120));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for PairingContentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A470()
{
  result = qword_100087218;
  if (!qword_100087218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087218);
  }

  return result;
}

char *sub_10000A4D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003958(&qword_100087220, &qword_100062A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000A5C4(void *a1)
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

char *sub_10000A624(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10000A6C8(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10000A4D0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10000A624(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10000A788(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100087228, &unk_100062A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A80C(uint64_t a1)
{
  v2 = sub_100003958(&qword_100087228, &unk_100062A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A874(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000A88C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000A88C(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_10000A898(a1);
  }

  return a1;
}

unint64_t sub_10000A898(unint64_t result)
{
  if (result >= 6)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10000A8A8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000A8C0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000A8C0(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_10000A8CC(a1);
  }

  return a1;
}

unint64_t sub_10000A8CC(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

void sub_10000A8DC(void *a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_stackView);
  [v5 addArrangedSubview:v3];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:a1];
  v6 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_footerView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addArrangedSubview:v6];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v1 contentView];
  [v7 addSubview:v5];

  v8 = [v1 contentView];
  v39 = [v8 mainContentGuide];

  v38 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100062A40;
  v10 = [a1 leadingAnchor];
  v11 = [v3 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [a1 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [a1 centerYAnchor];
  v17 = [v3 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [a1 heightAnchor];
  v20 = [v19 constraintEqualToConstant:362.0];

  *(v9 + 56) = v20;
  v21 = [v3 heightAnchor];
  v22 = [v21 constraintEqualToConstant:200.0];

  *(v9 + 64) = v22;
  v23 = [a1 widthAnchor];
  v24 = [v23 constraintEqualToConstant:350.0];

  *(v9 + 72) = v24;
  v25 = [v5 leadingAnchor];
  v26 = [v39 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v9 + 80) = v27;
  v28 = [v5 trailingAnchor];
  v29 = [v39 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v9 + 88) = v30;
  v31 = [v5 topAnchor];
  v32 = [v39 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v9 + 96) = v33;
  v34 = [v5 bottomAnchor];
  v35 = [v39 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v9 + 104) = v36;
  sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];

  (*((swift_isaMask & *v1) + 0x90))();
}

void sub_10000AEA0()
{
  v1 = v0;
  v2 = type metadata accessor for AirTagPairing2.Assets.ViewIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing view preparation...", v9, 2u);
  }

  v10 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_viewModel + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 24))(ObjectType, v10);
  v12 = (*(v10 + 16))(ObjectType, v10);
  v13 = &enum case for AirTagPairing2.Assets.ViewIdentifier.loop(_:);
  if ((v12 & 1) == 0)
  {
    v13 = &enum case for AirTagPairing2.Assets.ViewIdentifier.intro(_:);
  }

  (*(v3 + 104))(v5, *v13, v2);
  v14 = AirTagPairing2.Assets.view(_:)();
  v16 = v15;

  (*(v3 + 8))(v5, v2);
  v17 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
  v18 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
  *v17 = v14;
  v17[1] = v16;
  v19 = v14;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Got a video view.", v22, 2u);
  }

  v23 = v19;
  sub_10000A8DC(v23);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Added pairing view.", v26, 2u);
  }
}

void sub_10000B1EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_footerView);
  v4 = [v3 subviews];
  sub_100004E64(0, &qword_100087278, UIView_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:a1];
  v11 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100062A50;
  v13 = [a1 topAnchor];
  v14 = [v3 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [a1 centerXAnchor];
  v17 = [v3 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [a1 bottomAnchor];
  v20 = [v3 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

id sub_10000B504(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MovieViewController();
  result = objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
  v4 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
  if (*&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView])
  {
    swift_getObjectType();
    dispatch thunk of VideoPlaybackControllable.stop()();
    result = *v4;
    if (*v4)
    {
      return [result removeFromSuperview];
    }
  }

  return result;
}

id sub_10000B618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MovieViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000B6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction] = 0;
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField;
  v8 = objc_allocWithZone(PRXTextField);
  v9 = v2;
  *&v3[v7] = [v8 init];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v22);
    *(v14 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_1000872C0, "~M");
    v15 = String.init<A>(describing:)();
    v17 = sub_10005B0A0(v15, v16, &v22);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = &v11[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_viewModel];
  *v18 = a1;
  *(v18 + 1) = a2;
  v23.receiver = v11;
  v23.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v23, "initWithContentView:", 0);
  sub_10000BD08();
  sub_10000C238();
  v20 = [objc_opt_self() defaultCenter];
  [v20 addObserver:v19 selector:"updateContinueButton" name:UITextFieldTextDidChangeNotification object:0];

  swift_unknownObjectRelease();
  return v19;
}

id sub_10000B9B0()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v12);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000872C0, "~M");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver:v3];

  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_10000BD08()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v40._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x4741545F454D414ELL;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v40);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v41._object = 0xE000000000000000;
  v7._object = 0x800000010005F330;
  v7._countAndFlagsBits = 0xD000000000000014;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v41);

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField];
  v11 = [v1 mainBundle];
  v42._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000017;
  v12._object = 0x800000010005F350;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v42);

  v14 = String._bridgeToObjectiveC()();

  [v10 setPlaceholder:v14];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v0 contentView];
  [v15 addSubview:v10];

  v37 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062AB0;
  v17 = [v10 topAnchor];
  v18 = [v0 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v16 + 32) = v21;
  v22 = [v10 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 leadingAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];

  *(v16 + 40) = v26;
  v27 = [v10 trailingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 mainContentGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];

  *(v16 + 48) = v31;
  v32 = [v10 bottomAnchor];
  v33 = [v0 contentView];
  v34 = [v33 mainContentGuide];

  v35 = [v34 bottomAnchor];
  v36 = [v32 constraintLessThanOrEqualToAnchor:v35];

  *(v16 + 56) = v36;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];
}

void sub_10000C238()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x45554E49544E4F43;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000C7E8;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_100079D98;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  [v7 setEnabled:0];

  v8 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction];
  *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction] = v7;
}

void sub_10000C414(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField;
    v5 = [*(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField) text];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = sub_10000C808();
      v11 = *(v10 + 48);
      v12 = type metadata accessor for AirTagCustomNameViewModel();
      swift_unknownObjectRetain();
      v11(v7, v9, v12, v10);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100086DA8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000054DC(v13, qword_10008C038);
      v14 = v3;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136446210;
        v19 = [*&v3[v4] text];
        if (v19)
        {
          v20 = v19;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100003958(&qword_1000872C8, &unk_1000639F0);
        v21 = String.init<A>(describing:)();
        v23 = sub_10005B0A0(v21, v22, &v24);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Can't select Name! Invalid textField text! %{public}s", v17, 0xCu);
        sub_10000A5C4(v18);
      }
    }
  }
}

void sub_10000C688()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField);
    v10 = v1;
    v3 = [v2 text];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    [v10 setEnabled:v9];
  }
}

uint64_t sub_10000C7B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C808()
{
  result = qword_1000872D0;
  if (!qword_1000872D0)
  {
    type metadata accessor for AirTagCustomNameViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872D0);
  }

  return result;
}

id sub_10000C860()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = objc_opt_self();
  v2 = [v1 secondarySystemFillColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 layer];
  [v3 setCornerRadius:41.5];

  v4 = [v0 layer];
  v5 = [v1 systemBlueColor];
  v6 = [v5 CGColor];

  [v4 setBorderColor:v6];
  v7 = [v0 layer];
  [v7 setBorderWidth:3.0];

  [v0 setClipsToBounds:1];
  return v0;
}

id sub_10000C9D0()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = [objc_opt_self() configurationWithPointSize:3 weight:2 scale:50.0];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  [v0 setImage:v3 forState:0];
  v4 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTintColor:v4];

  return v0;
}

id sub_10000CB00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiContainer;
  v8 = v2;
  *&v3[v7] = sub_10000C860();
  v9 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiButton;
  *&v8[v9] = sub_10000C9D0();
  v10 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() systemFontOfSize:50.0];
  [v11 setFont:v12];

  [v11 setAdjustsFontSizeToFitWidth:1];
  *&v8[v10] = v11;
  v13 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField;
  type metadata accessor for EmojiTextField();
  *&v8[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction] = 0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000054DC(v14, qword_10008C038);
  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v25);
    *(v18 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087398, "BM");
    v19 = String.init<A>(describing:)();
    v21 = sub_10005B0A0(v19, v20, &v25);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = &v15[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_viewModel];
  *v22 = a1;
  *(v22 + 1) = a2;
  v26.receiver = v15;
  v26.super_class = ObjectType;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v26, "initWithContentView:", 0);
  sub_10000D16C();
  sub_10000DAC4();

  swift_unknownObjectRelease();
  return v23;
}

id sub_10000CE1C()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087398, "BM");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10000D16C()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v72._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x455F45534F4F4843;
  v4._object = 0xEC000000494A4F4DLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v72);

  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = [v2 mainBundle];
  v73._object = 0xE000000000000000;
  v8._object = 0x800000010005F4C0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v73);

  v10 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v10];

  v11 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiContainer];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 contentView];
  [v12 addSubview:v11];

  v13 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel];
  v67 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v13];
  v14 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiButton];
  v68 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addTarget:v1 action:"handleEmojiButtonTapped" forControlEvents:64];
  [v11 addSubview:v14];
  v15 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setHidden:1];
  [v15 setDelegate:v1];
  [v11 addSubview:v15];
  v69 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062B20;
  v17 = [v11 topAnchor];
  v18 = [v1 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v16 + 32) = v21;
  v22 = [v11 centerXAnchor];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 centerXAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];

  *(v16 + 40) = v26;
  v27 = [v11 heightAnchor];
  v28 = [v27 constraintEqualToConstant:83.0];

  *(v16 + 48) = v28;
  v29 = [v11 widthAnchor];
  v30 = [v11 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v16 + 56) = v31;
  v32 = [v11 bottomAnchor];
  v33 = [v1 contentView];
  v34 = [v33 mainContentGuide];

  v35 = [v34 bottomAnchor];
  v36 = [v32 constraintLessThanOrEqualToAnchor:v35];

  *(v16 + 64) = v36;
  v37 = [v67 centerXAnchor];
  v38 = [v11 centerXAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v16 + 72) = v39;
  v40 = [v67 centerYAnchor];
  v41 = [v11 centerYAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v16 + 80) = v42;
  v43 = [v67 leadingAnchor];
  v44 = [v11 leadingAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

  *(v16 + 88) = v45;
  v46 = [v67 trailingAnchor];
  v47 = [v11 trailingAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47];

  *(v16 + 96) = v48;
  v49 = [v68 centerXAnchor];
  v50 = [v11 centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v16 + 104) = v51;
  v52 = [v68 centerYAnchor];
  v53 = [v11 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v16 + 112) = v54;
  v55 = [v68 leadingAnchor];
  v56 = [v11 leadingAnchor];
  v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56];

  *(v16 + 120) = v57;
  v58 = [v68 trailingAnchor];
  v59 = [v11 trailingAnchor];
  v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

  *(v16 + 128) = v60;
  v61 = [v15 centerXAnchor];
  v62 = [v11 centerXAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v16 + 136) = v63;
  v64 = [v15 centerYAnchor];
  v65 = [v11 centerYAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:25.0];

  *(v16 + 144) = v66;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];
}

void sub_10000DAC4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v26._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x45554E49544E4F43;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v26);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  v24 = sub_10000E3AC;
  v25 = v5;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100047684;
  v23 = &unk_100079DE8;
  v7 = _Block_copy(&aBlock);
  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v10 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction];
  *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction] = v9;
  v11 = v9;

  v12 = [v1 mainBundle];
  v27._object = 0xE000000000000000;
  v13._countAndFlagsBits = 1262698818;
  v13._object = 0xE400000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v27);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = String._bridgeToObjectiveC()();

  v24 = sub_10000E3CC;
  v25 = v15;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100047684;
  v23 = &unk_100079E10;
  v17 = _Block_copy(&aBlock);
  v18 = [v8 actionWithTitle:v16 style:1 handler:v17];

  _Block_release(v17);

  v19 = [v0 addAction:v18];
}

void sub_10000DE18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel;
    v5 = [*(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel) text];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = sub_10000E3D4();
      v11 = *(v10 + 48);
      v12 = type metadata accessor for AirTagCustomEmojiViewModel();
      swift_unknownObjectRetain();
      v11(v7, v9, v12, v10);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100086DA8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000054DC(v13, qword_10008C038);
      v14 = v3;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136446210;
        v19 = [*&v3[v4] text];
        if (v19)
        {
          v20 = v19;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100003958(&qword_1000872C8, &unk_1000639F0);
        v21 = String.init<A>(describing:)();
        v23 = sub_10005B0A0(v21, v22, &v24);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Can't select emoji! Invalid label text! %{public}s", v17, 0xCu);
        sub_10000A5C4(v18);
      }
    }
  }
}

void *sub_10000E08C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();

    v4 = sub_10000E3D4();
    v5 = *(v4 + 56);
    v6 = type metadata accessor for AirTagCustomEmojiViewModel();
    v5(v6, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000E140()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField);
    v10 = v1;
    v3 = [v2 text];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    [v10 setEnabled:v9];
  }
}

void sub_10000E2A8(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *&a1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiContainer];
  v9 = a1;
  v6 = [v5 layer];
  v7 = [objc_opt_self() *a4];
  v8 = [v7 CGColor];

  [v6 setBorderColor:v8];
}

uint64_t sub_10000E374()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E3B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E3D4()
{
  result = qword_1000873A0;
  if (!qword_1000873A0)
  {
    type metadata accessor for AirTagCustomEmojiViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000873A0);
  }

  return result;
}

BOOL sub_10000E42C()
{
  v1 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel);
    v4 = String._bridgeToObjectiveC()();
    [v3 setText:v4];

    v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField);
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    [*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiButton) setImage:0 forState:0];
  }

  sub_10000E140();
  return IsSingleEmoji == 0;
}

id sub_10000E51C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_iconView;
  v8 = objc_allocWithZone(UIImageView);
  v9 = v2;
  *&v3[v7] = [v8 init];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v21);
    *(v14 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087458, "\nM");
    v15 = String.init<A>(describing:)();
    v17 = sub_10005B0A0(v15, v16, &v21);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = &v11[OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_viewModel];
  *v18 = a1;
  *(v18 + 1) = a2;
  v22.receiver = v11;
  v22.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v22, "initWithContentView:", 0);
  sub_10000EA2C();
  sub_10000EEE4();

  swift_unknownObjectRelease();
  return v19;
}

id sub_10000E794()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087458, "\nM");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10000EA2C()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v35._object = 0xE000000000000000;
  v3._object = 0x800000010005F590;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v35);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v36._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v7._object = 0x800000010005F5B0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v36);

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_iconView];
  v11 = sub_10000F16C();
  [v10 setImage:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v0 contentView];
  [v12 addSubview:v10];

  v13 = [v0 contentView];
  v14 = [v13 mainContentGuide];

  v15 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062420;
  v17 = [v10 centerXAnchor];
  v18 = [v14 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v10 centerYAnchor];
  v21 = [v14 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v10 widthAnchor];
  v24 = [v23 constraintEqualToConstant:76.0];

  *(v16 + 48) = v24;
  v25 = [v10 heightAnchor];
  v26 = [v25 constraintEqualToConstant:76.0];

  *(v16 + 56) = v26;
  v27 = [v10 topAnchor];
  v28 = [v14 topAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];

  *(v16 + 64) = v29;
  v30 = [v10 bottomAnchor];
  v31 = [v14 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31];

  *(v16 + 72) = v32;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];
}

void sub_10000EEE4()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._object = 0x800000010005F570;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000F14C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_100079E60;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v0 addAction:v7];
}

void *sub_10000F0A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();

    sub_100051150();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000F114()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000F16C()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v4 = [v2 prepareImageForDescriptor:v3];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v7 = result;
    [v5 scale];
    v9 = [objc_allocWithZone(UIImage) initWithCGImage:v7 scale:0 orientation:v8];

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F2E0()
{
  v1 = v0[2];
  v0[3] = *(v1 + 112);
  v0[4] = *(v1 + 120);
  return _swift_task_switch(sub_10000F310, 0, 0);
}

uint64_t sub_10000F310()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F374()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000F3D0()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_10000F428(uint64_t a1)
{
  result = sub_10000F450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000F450()
{
  result = qword_100087508;
  if (!qword_100087508)
  {
    type metadata accessor for AirTagHSA2ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087508);
  }

  return result;
}

uint64_t sub_10000F4A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10000F2C4(a1, v1);
}

uint64_t sub_10000F540()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10000F640()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType) = 2;
  v5 = v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState) = 2;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData) = xmmword_100062C70;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture) = 0;
  v6 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  *v6 = xmmword_100062C80;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 41) = 0u;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories) = 0;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets) = 0;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isMultiDetection) = 0;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingRestricted) = 2;
  v7 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji);
  *v8 = 0;
  v8[1] = 0;
  v9 = v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult;
  *v9 = 0;
  *(v9 + 8) = -1;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_location) = 0;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole) = 0;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation) = 0;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_didAgreeToLinking) = 2;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled) = 2;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isBatteryLevelCritical) = 2;
  v10 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device;
  v11 = type metadata accessor for Device();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isManateeAvailable) = 2;
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) = 2;
  v4(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier, 1, 1, v3);
  v12 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId);
  *v12 = 0xD000000000000010;
  v12[1] = 0x800000010005F5D0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000054DC(v13, qword_10008C038);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10005B0A0(0x292874696E69, 0xE600000000000000, &v21);
    *(v16 + 12) = 2080;
    sub_100003958(&qword_100087A90, &qword_100062F68);
    v17 = String.init<A>(describing:)();
    v19 = sub_10005B0A0(v17, v18, &v21);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

void *sub_10000FA3C()
{
  v1 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v10);
    *(v5 + 12) = 2080;
    sub_100003958(&qword_100087A90, &qword_100062F68);
    v6 = String.init<A>(describing:)();
    v8 = sub_10005B0A0(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_100004F1C(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID, &qword_100087AB8, &qword_100062F90);
  sub_100014CF8(*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8));

  sub_100014E30(*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 8), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 16), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 24), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 32), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 40), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 48), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 56));

  sub_10000A8A8(*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult + 8));

  sub_100004F1C(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device, &qword_100087AA0, &qword_100062F78);
  sub_100004F1C(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier, &qword_100087AB8, &qword_100062F90);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10000FD64()
{
  sub_10000FA3C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PairingContentStore(uint64_t a1)
{
  result = qword_100087590;
  if (!qword_100087590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FDE4(uint64_t a1)
{
  sub_10001473C(319, &qword_1000875A0, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_10001473C(319, &unk_1000875A8, &type metadata accessor for Device);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10000FF6C()
{
  sub_100004E64(0, &qword_100087AF0, LSBundleRecord_ptr);
  v1 = v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId;
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId);
  v3 = *(v1 + 8);

  v4 = sub_100010160(v2, v3);
  v5 = [v4 localizedShortName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

id sub_100010160(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v7 = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_100010238()
{
  if ((*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor + 8) & 1) != 0 || (v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState), v1 == 2))
  {
    sub_100014B3C();
    swift_allocError();
    *v2 = 2;
    return swift_willThrow();
  }

  v4 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor);
  v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8);
  if (v5 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v6 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData);
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_12:
      sub_100014CF8(*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8));
      goto LABEL_14;
    }

    if (*(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    if ((v5 & 0xFF000000000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v6 != v6 >> 32)
  {
LABEL_22:
    sub_100014C90(*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8));
  }

LABEL_14:
  if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) != 2)
  {
    v11 = (v4 == 99) | ((v1 & 1) << 8);
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue))
    {
      goto LABEL_18;
    }

LABEL_20:
    v12 = 0;
    return v12 | v11;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = MGGetBoolAnswer();

  v10 = v4 == 99;
  if (!v9)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = MGGetBoolAnswer();

    v11 = v10 & 0xFFFFFEFF | ((v1 & 1) << 8);
    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v11 = v10 & 0xFFFFFEFF | ((v1 & 1) << 8);
LABEL_18:
  v12 = 0x10000;
  return v12 | v11;
}

uint64_t sub_100010408()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);
  if (v1 && *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState) != 2)
  {
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) == 2)
    {

      v3 = String._bridgeToObjectiveC()();
      v4 = MGGetBoolAnswer();

      if (!v4)
      {
        v5 = String._bridgeToObjectiveC()();
        MGGetBoolAnswer();
      }
    }

    else
    {
    }
  }

  else
  {
    sub_100014B3C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
  }

  return v1;
}

id sub_100010564()
{
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  if (!v2)
  {
    sub_100014B3C();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return v1;
  }

  v3 = v2;
  v4 = [v3 roleId];
  v1 = SPBeaconRoleIdOther;
  if (SPBeaconRoleIdOther == v4)
  {
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName + 8) && *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji + 8))
    {
      v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName);

      return v1;
    }

    sub_100014B3C();
    swift_allocError();
    v10 = 5;
LABEL_10:
    *v9 = v10;
    swift_willThrow();

    return v1;
  }

  v6 = (v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v7 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 16);
  v30[0] = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v30[1] = v7;
  v31[0] = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 32);
  *(v31 + 9) = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 41);
  v8 = *(&v30[0] + 1);
  if (*(&v30[0] + 1) <= 1uLL)
  {
    sub_100014B3C();
    swift_allocError();
    v10 = 4;
    goto LABEL_10;
  }

  v32 = *&v30[0];
  v12 = v6[1];
  v28[0] = *v6;
  v28[1] = v12;
  v29[0] = v6[2];
  *(v29 + 9) = *(v6 + 41);
  sub_100014B90(v28, v27);
  if ([v3 roleId] == v1)
  {
    v13 = [objc_opt_self() mainBundle];
    v33._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0x4741545F524941;
    v14._object = 0xE700000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v33);
    object = v18._object;
    countAndFlagsBits = v18._countAndFlagsBits;
  }

  else
  {
    v13 = [v3 role];
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = countAndFlagsBits;
  v20 = object;

  v21 = [objc_opt_self() mainBundle];
  v34._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0x4D414E5F454B414DLL;
  v22._object = 0xE900000000000045;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v34);

  sub_100003958(&qword_100086FB0, &unk_100062500);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100062C90;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_100004DB8();
  *(v24 + 32) = v32;
  *(v24 + 40) = v8;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = v19;
  *(v24 + 80) = v20;

  sub_100004F1C(v30, &qword_100087228, &unk_100062A30);
  v1 = static String.localizedStringWithFormat(_:_:)();

  v26 = [v3 roleEmoji];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

void sub_100010900(uint64_t *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult);
  v3 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult + 8);
  if (v3 == 255)
  {
    sub_100014B3C();
    swift_allocError();
    v20 = 1;
LABEL_10:
    *v19 = v20;
    swift_willThrow();
    return;
  }

  if ((v3 & 1) == 0)
  {
    sub_100014B3C();
    swift_allocError();
    v20 = 2;
    goto LABEL_10;
  }

  v4 = *v2;
  if (*v2 > 2)
  {
    if (v4 == 3)
    {
      goto LABEL_15;
    }

    v5 = a1;
    if (v4 == 4)
    {
      v21 = [objc_opt_self() mainBundle];
      v44._object = 0xE000000000000000;
      v36._countAndFlagsBits = 0x5F4B524F5754454ELL;
      v36._object = 0xED0000524F525245;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v44._countAndFlagsBits = 0;
      v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v21, v37, v44);
      countAndFlagsBits = v38._countAndFlagsBits;
      object = v38._object;
      v25 = 4;
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v21 = [objc_opt_self() mainBundle];
      v41._object = 0xE000000000000000;
      v22._countAndFlagsBits = 0x5F4449454C505041;
      v22._object = 0xEF4547415353454DLL;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v41._countAndFlagsBits = 0;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v41);
      countAndFlagsBits = v24._countAndFlagsBits;
      object = v24._object;
      v25 = 5;
    }

    sub_10000A8A8(v25, v3);

LABEL_20:
    v4 = 0;
    goto LABEL_21;
  }

  if (!v4)
  {
    v5 = a1;
    v27 = [objc_opt_self() mainBundle];
    v42._object = 0xE000000000000000;
    v28._object = 0x800000010005FCE0;
    v28._countAndFlagsBits = 0xD000000000000012;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v42);
    countAndFlagsBits = v30._countAndFlagsBits;
    object = v30._object;

    goto LABEL_20;
  }

  if (v4 == 1)
  {
LABEL_15:
    sub_100014B3C();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();
    sub_10000A8A8(v4, v3);
    return;
  }

  v5 = a1;
  if (v4 != 2)
  {
LABEL_17:
    v31 = objc_opt_self();
    sub_10000A874(v4, v3);
    sub_10000A88C(v4, 1);
    v32 = [v31 mainBundle];
    v43._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD00000000000001CLL;
    v33._object = 0x800000010005FCA0;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v43);
    countAndFlagsBits = v35._countAndFlagsBits;
    object = v35._object;

    sub_10000A8A8(v4, v3);
LABEL_21:
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v39._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v8._object = 0x800000010005FCC0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v39);
  v11 = v10._countAndFlagsBits;
  v12 = v10._object;

  v13 = [v6 mainBundle];
  v40._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x45525F54494D494CLL;
  v14._object = 0xED00004445484341;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v40);
  countAndFlagsBits = v16._countAndFlagsBits;
  object = v16._object;
  sub_10000A8A8(2, v3);

  v4 = 0;
LABEL_22:
  *v5 = v11;
  v5[1] = v12;
  v5[2] = countAndFlagsBits;
  v5[3] = object;
  v5[4] = v4;
}

void sub_100010D5C(Swift::String *a1@<X8>)
{
  v3 = type metadata accessor for Device();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &object - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003958(&qword_100087AA0, &qword_100062F78);
  __chkstk_darwin(v7 - 8);
  v9 = &object - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = MGGetBoolAnswer();

  v12 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device;
  swift_beginAccess();
  sub_100014D60(v1 + v12, v9, &qword_100087AA0, &qword_100062F78);
  if (!(*(v4 + 48))(v9, 1, v3))
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_100004F1C(v9, &qword_100087AA0, &qword_100062F78);
    v125 = Device.deviceName.getter();
    v20 = v19;
    (*(v4 + 8))(v6, v3);
    if (v11)
    {
      if (!v20)
      {
LABEL_3:
        v13 = 0x800000010005FC30;
        v14 = objc_opt_self();
        v15 = String._bridgeToObjectiveC()();
        v16 = [v14 modelSpecificLocalizedStringKeyForKey:v15];

        if (v16)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v18;
        }

        else
        {
          v17 = 0xD000000000000016;
        }

        v33 = objc_opt_self();
        v75 = [v33 mainBundle];
        v130._object = 0xE000000000000000;
        v76._countAndFlagsBits = v17;
        v76._object = v13;
        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        v130._countAndFlagsBits = 0;
        v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v130);
        object = v78._object;
        countAndFlagsBits = v78._countAndFlagsBits;

        v79 = 0x800000010005FC70;
        v80 = 0xD00000000000002ALL;
        v81 = String._bridgeToObjectiveC()();
        v82 = [v14 modelSpecificLocalizedStringKeyForKey:v81];

        if (v82)
        {
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v83;
        }

        v84 = [v33 mainBundle];
        v131._object = 0xE000000000000000;
        v85._countAndFlagsBits = v80;
        v85._object = v79;
        v86._countAndFlagsBits = 0;
        v86._object = 0xE000000000000000;
        v131._countAndFlagsBits = 0;
        v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v131);
        v47 = v87._countAndFlagsBits;
        v49 = v87._object;

        v72 = 0x800000010005FBE0;
        v88 = String._bridgeToObjectiveC()();
        v74 = [v14 modelSpecificLocalizedStringKeyForKey:v88];

        if (!v74)
        {
          v89 = 0xD000000000000016;
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v21 = 0x800000010005FC30;
      v22 = objc_opt_self();
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 modelSpecificLocalizedStringKeyForKey:v23];

      if (v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v26;
      }

      else
      {
        v25 = 0xD000000000000016;
      }

      v33 = objc_opt_self();
      v98 = [v33 mainBundle];
      v133._object = 0xE000000000000000;
      v99._countAndFlagsBits = v25;
      v99._object = v21;
      v100._countAndFlagsBits = 0;
      v100._object = 0xE000000000000000;
      v133._countAndFlagsBits = 0;
      v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v133);
      object = v101._object;
      countAndFlagsBits = v101._countAndFlagsBits;

      v102 = 0x800000010005FC50;
      v103 = 0xD00000000000001FLL;
      v104 = String._bridgeToObjectiveC()();
      v105 = [v22 modelSpecificLocalizedStringKeyForKey:v104];

      if (v105)
      {
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v106;
      }

      v107 = [v33 mainBundle];
      v134._object = 0xE000000000000000;
      v108._countAndFlagsBits = v103;
      v108._object = v102;
      v109._countAndFlagsBits = 0;
      v109._object = 0xE000000000000000;
      v134._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v108, 0, v107, v109, v134);

      sub_100003958(&qword_100086FB0, &unk_100062500);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_1000623F0;
      *(v110 + 56) = &type metadata for String;
      *(v110 + 64) = sub_100004DB8();
      *(v110 + 32) = v125;
      *(v110 + 40) = v20;
      v47 = String.init(format:arguments:)();
      v49 = v111;

      v50 = 0x800000010005FBE0;
      v112 = String._bridgeToObjectiveC()();
      v52 = [v22 modelSpecificLocalizedStringKeyForKey:v112];

      if (!v52)
      {
        v113 = 0xD000000000000016;
        goto LABEL_37;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_16;
      }

      v27 = 0x800000010005FB90;
      v28 = objc_opt_self();
      v29 = 0xD00000000000001ALL;
      v30 = String._bridgeToObjectiveC()();
      v31 = [v28 modelSpecificLocalizedStringKeyForKey:v30];

      if (v31)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v32;
      }

      v33 = objc_opt_self();
      v34 = [v33 mainBundle];
      v126._object = 0xE000000000000000;
      v35._countAndFlagsBits = v29;
      v35._object = v27;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v126._countAndFlagsBits = 0;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v126);
      object = v37._object;
      countAndFlagsBits = v37._countAndFlagsBits;

      v38 = 0x800000010005FBB0;
      v39 = 0xD000000000000023;
      v40 = String._bridgeToObjectiveC()();
      v41 = [v28 modelSpecificLocalizedStringKeyForKey:v40];

      if (v41)
      {
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v42;
      }

      v43 = [v33 mainBundle];
      v127._object = 0xE000000000000000;
      v44._countAndFlagsBits = v39;
      v44._object = v38;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      v127._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v127);

      sub_100003958(&qword_100086FB0, &unk_100062500);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1000623F0;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = sub_100004DB8();
      *(v46 + 32) = v125;
      *(v46 + 40) = v20;
      v47 = String.init(format:arguments:)();
      v49 = v48;

      v50 = 0x800000010005FBE0;
      v51 = String._bridgeToObjectiveC()();
      v52 = [v28 modelSpecificLocalizedStringKeyForKey:v51];

      if (!v52)
      {
        v113 = 0xD000000000000016;
        goto LABEL_37;
      }
    }

    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v114;

LABEL_37:
    v92 = [v33 mainBundle];
    v135._object = 0xE000000000000000;
    v115._countAndFlagsBits = v113;
    v115._object = v50;
    v116._countAndFlagsBits = 0;
    v116._object = 0xE000000000000000;
    v135._countAndFlagsBits = 0;
    v117 = NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v92, v116, v135);
    v96 = v117._countAndFlagsBits;
    v97 = v117._object;
    v91 = 0;
    goto LABEL_38;
  }

  sub_100004F1C(v9, &qword_100087AA0, &qword_100062F78);
  v125 = 0;
  if (v11)
  {
    goto LABEL_3;
  }

LABEL_16:
  v53 = 0x800000010005FB90;
  v54 = objc_opt_self();
  v55 = 0xD00000000000001ALL;
  v56 = String._bridgeToObjectiveC()();
  v57 = [v54 modelSpecificLocalizedStringKeyForKey:v56];

  if (v57)
  {
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v58;
  }

  v33 = objc_opt_self();
  v59 = [v33 mainBundle];
  v128._object = 0xE000000000000000;
  v60._countAndFlagsBits = v55;
  v60._object = v53;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v128._countAndFlagsBits = 0;
  v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v128);
  object = v62._object;
  countAndFlagsBits = v62._countAndFlagsBits;

  v63 = 0x800000010005FC00;
  v64 = 0xD00000000000002ELL;
  v65 = String._bridgeToObjectiveC()();
  v66 = [v54 modelSpecificLocalizedStringKeyForKey:v65];

  if (v66)
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v67;
  }

  v68 = [v33 mainBundle];
  v129._object = 0xE000000000000000;
  v69._countAndFlagsBits = v64;
  v69._object = v63;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v129._countAndFlagsBits = 0;
  v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v129);
  v47 = v71._countAndFlagsBits;
  v49 = v71._object;

  v72 = 0x800000010005FBE0;
  v73 = String._bridgeToObjectiveC()();
  v74 = [v54 modelSpecificLocalizedStringKeyForKey:v73];

  if (!v74)
  {
    v89 = 0xD000000000000016;
    goto LABEL_29;
  }

LABEL_26:
  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v90;

LABEL_29:
  v91 = v125;
  v92 = [v33 mainBundle];
  v132._object = 0xE000000000000000;
  v93._countAndFlagsBits = v89;
  v93._object = v72;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v132._countAndFlagsBits = 0;
  v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v132);
  v96 = v95._countAndFlagsBits;
  v97 = v95._object;
LABEL_38:

  v118 = [v33 mainBundle];
  v136._object = 0xE000000000000000;
  v119._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v119._object = 0xE700000000000000;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v136._countAndFlagsBits = 0;
  v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v91, v118, v120, v136);

  v122 = object;
  a1->_countAndFlagsBits = countAndFlagsBits;
  a1->_object = v122;
  a1[1]._countAndFlagsBits = v47;
  a1[1]._object = v49;
  a1[2]._countAndFlagsBits = v96;
  a1[2]._object = v97;
  a1[3] = v121;
}

uint64_t sub_1000119F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003958(&qword_100087AB8, &qword_100062F90);
  v5 = __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22[-1] - v8;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  sub_100014D60(a1, v9, &qword_100087AB8, &qword_100062F90);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = v13;
    v22[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10005B0A0(0xD00000000000001CLL, 0x800000010005FB70, v22);
    *(v14 + 12) = 2080;
    sub_100014D60(v9, v7, &qword_100087AB8, &qword_100062F90);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100004F1C(v9, &qword_100087AB8, &qword_100062F90);
    v18 = sub_10005B0A0(v15, v17, v22);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s %s", v14, 0x16u);
    swift_arrayDestroy();

    a1 = v21;
  }

  else
  {

    sub_100004F1C(v9, &qword_100087AB8, &qword_100062F90);
  }

  v19 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014DC8(a1, v2 + v19, &qword_100087AB8, &qword_100062F90);
  return swift_endAccess();
}

void sub_100011CC8(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005FB50, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087AE8, &qword_100062FB0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType) = a1;
}

void sub_100011E7C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0xD00000000000001FLL, 0x800000010005FB30, &v14);
    *(v9 + 12) = 2080;
    sub_100003958(&qword_100087AE0, &qword_100062FA8);
    v10 = String.init<A>(describing:)();
    v12 = sub_10005B0A0(v10, v11, &v14);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor;
  *v13 = a1;
  *(v13 + 8) = a2 & 1;
}

void sub_100012050(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001CLL, 0x800000010005FB10, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087AD8, &qword_100062FA0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState) = a1;
}

uint64_t sub_100012204(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  sub_100014C90(a1, a2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v7, v8))
  {
    sub_100014CF8(a1, a2);
    goto LABEL_17;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v17 = v10;
  *v9 = 136446466;
  *(v9 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005FAF0, &v17);
  *(v9 + 12) = 1026;
  if (a2 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (!v12)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_15;
  }

LABEL_5:
  v11 = 0;
LABEL_16:
  *(v9 + 14) = v11;
  sub_100014CF8(a1, a2);
  _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %{BOOL,public}d", v9, 0x12u);
  sub_10000A5C4(v10);

LABEL_17:

  v13 = (v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData);
  v14 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData);
  v15 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8);
  *v13 = a1;
  v13[1] = a2;
  sub_100014C90(a1, a2);

  return sub_100014CF8(v14, v15);
}

uint64_t sub_100012420(__int128 *a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  sub_100014D60(a1, &v18, &qword_100087228, &unk_100062A30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100004F1C(a1, &qword_100087228, &unk_100062A30);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001DLL, 0x800000010005FAD0, &v16);
    *(v7 + 12) = 2080;
    v8 = a1[1];
    v18 = *a1;
    v19 = v8;
    v20[0] = a1[2];
    *(v20 + 9) = *(a1 + 41);
    sub_100014D60(a1, v17, &qword_100087228, &unk_100062A30);
    sub_100003958(&qword_100087228, &unk_100062A30);
    v9 = String.init<A>(describing:)();
    v11 = sub_10005B0A0(v9, v10, &v16);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = (v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v13 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 16);
  v18 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v19 = v13;
  v20[0] = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 32);
  *(v20 + 9) = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 41);
  v14 = a1[1];
  *v12 = *a1;
  v12[1] = v14;
  v12[2] = a1[2];
  *(v12 + 41) = *(a1 + 41);
  sub_100014D60(a1, v17, &qword_100087228, &unk_100062A30);
  return sub_100004F1C(&v18, &qword_100087228, &unk_100062A30);
}

void sub_10001269C(void *a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10005B0A0(0xD00000000000001FLL, 0x800000010005FAB0, &v15);
    *(v8 + 12) = 2080;
    v9 = v5;
    sub_100003958(&qword_100087AD0, &qword_100062F98);
    v10 = String.init<A>(describing:)();
    v12 = sub_10005B0A0(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture) = a1;
  v14 = v5;
}

uint64_t sub_100012874(uint64_t a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000018, 0x800000010005FA90, &v12);
    *(v7 + 12) = 2080;
    sub_100004E64(0, &qword_100087AC8, SPBeaconRoleCategory_ptr);
    v8 = Array.description.getter();
    v10 = sub_10005B0A0(v8, v9, &v12);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories) = a1;
}

void sub_100012A58(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005FA70, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingRestricted) = a1 & 1;
}

uint64_t sub_100012BC0(uint64_t a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000015, 0x800000010005FA50, &v12);
    *(v7 + 12) = 2080;

    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v12);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets) = a1;
}

void sub_100012D90(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000018, 0x800000010005FA30, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isMultiDetection) = a1 & 1;
}

void sub_100012EF8(void *a1, uint64_t a2)
{
  v5 = sub_100003958(&qword_100087AB8, &qword_100062F90);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    v13 = v11;
    do
    {
      sub_100013200(v13, a1);
      v13 += v12;
      --v8;
    }

    while (v8);
    v14 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation);
    *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation) = a1;
    v15 = a1;

    (*(v10 + 16))(v7, v11, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    v16 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier;
    swift_beginAccess();
    sub_100014BC8(v7, v2 + v16);
    swift_endAccess();
  }

  else
  {
    v17 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation);
    *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation) = a1;
    v18 = a1;

    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000054DC(v19, qword_10008C038);
    v25 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10005B0A0(0xD000000000000022, 0x800000010005FA00, v26);
      _os_log_impl(&_mh_execute_header, v25, v20, "%s Missing beaconId!", v21, 0xCu);
      sub_10000A5C4(v22);
    }

    else
    {
      v23 = v25;
    }
  }
}

void sub_100013200(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000054DC(v9, qword_10008C038);
  (*(v6 + 16))(v8, a1, v5);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v2;
    v14 = v13;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v14 = 136446979;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000022, 0x800000010005FA00, &v26);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100014C38();
    v22 = v11;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_10005B0A0(v15, v17, &v26);

    *(v14 + 24) = v18;
    *(v14 + 32) = 2112;
    *(v14 + 34) = v10;
    v19 = v23;
    *v23 = a2;
    v20 = v10;
    v21 = v22;
    _os_log_impl(&_mh_execute_header, v22, v12, "%{public}s beaconId:%{private,mask.hash}s location:%@ ", v14, 0x2Au);
    sub_100004F1C(v19, &qword_100087AA8, &unk_100062F80);

    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100013508(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0xD000000000000014, 0x800000010005F9E0, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10005B0A0(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = (v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName);
  *v10 = a1;
  v10[1] = a2;
}

uint64_t sub_1000136C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0x6D45657461647075, 0xEF293A5F28696A6FLL, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10005B0A0(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = (v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji);
  *v10 = a1;
  v10[1] = a2;
}

void sub_100013890(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005F9C0, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_didAgreeToLinking) = a1 & 1;
}

uint64_t sub_1000139F8(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  sub_10000A88C(a1, a2 & 1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10000A8C0(a1, a2 & 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005F9A0, &v18);
    *(v9 + 12) = 2080;
    sub_10000A88C(a1, a2 & 1);
    sub_100003958(&qword_100087AB0, &qword_1000636E0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10005B0A0(v10, v11, &v18);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult;
  v14 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult);
  *v13 = a1;
  v15 = a2 & 1;
  v16 = *(v13 + 8);
  *(v13 + 8) = v15;
  sub_10000A88C(a1, v15);
  return sub_10000A8A8(v14, v16);
}

void sub_100013C0C(void *a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10005B0A0(0xD000000000000016, 0x800000010005F980, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %@", v8, 0x16u);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);

    sub_10000A5C4(v10);
  }

  v13 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole) = v5;
  v12 = v5;
}

void sub_100013DE4(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005F960, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled) = a1 & 1;
}

void sub_100013F4C(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005F940, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) = a1;
}

void sub_100014100(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005F920, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isBatteryLevelCritical) = a1;
}

uint64_t sub_1000142B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003958(&qword_100087AA0, &qword_100062F78);
  v5 = __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22[-1] - v8;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  sub_100014D60(a1, v9, &qword_100087AA0, &qword_100062F78);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = v13;
    v22[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000015, 0x800000010005F900, v22);
    *(v14 + 12) = 2080;
    sub_100014D60(v9, v7, &qword_100087AA0, &qword_100062F78);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100004F1C(v9, &qword_100087AA0, &qword_100062F78);
    v18 = sub_10005B0A0(v15, v17, v22);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s %s", v14, 0x16u);
    swift_arrayDestroy();

    a1 = v21;
  }

  else
  {

    sub_100004F1C(v9, &qword_100087AA0, &qword_100062F78);
  }

  v19 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device;
  swift_beginAccess();
  sub_100014DC8(a1, v2 + v19, &qword_100087AA0, &qword_100062F78);
  return swift_endAccess();
}

void sub_100014588(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001FLL, 0x800000010005F8E0, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isManateeAvailable) = a1;
}

void sub_10001473C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100014790(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000147B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001480C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_10001485C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100014898(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000148B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000148CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001491C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_10001497C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000149C0(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0xE000000000000000;
  v4._object = 0x800000010005F880;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  v7 = [v2 mainBundle];
  v16._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x800000010005F8A0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v16);

  v11 = [v2 mainBundle];
  v17._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x800000010005F8C0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

  *a1 = v6;
  a1[1] = v10;
  a1[2] = v14;
}

unint64_t sub_100014B3C()
{
  result = qword_100087A88;
  if (!qword_100087A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087A88);
  }

  return result;
}

uint64_t sub_100014BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100087AB8, &qword_100062F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014C38()
{
  result = qword_100087AC0;
  if (!qword_100087AC0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087AC0);
  }

  return result;
}

uint64_t sub_100014C90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014CA4(a1, a2);
  }

  return a1;
}

uint64_t sub_100014CA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014CF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014D0C(a1, a2);
  }

  return a1;
}

uint64_t sub_100014D0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003958(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003958(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_100014E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    sub_100014E40(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_100014E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a8;

    sub_100014EB4(a4, a5, a6, a7, v8);
  }
}

void sub_100014EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t getEnumTagSinglePayload for PairingContentStore.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentStore.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015068(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001507C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000150C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100015124(uint64_t a1, int a2)
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

uint64_t sub_10001516C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000151BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100015204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100015268()
{
  result = qword_100087AF8;
  if (!qword_100087AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087AF8);
  }

  return result;
}

uint64_t sub_1000152BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000152D8, a2, 0);
}

uint64_t sub_1000152D8()
{
  **(v0 + 16) = *(*(v0 + 24) + 112);
  v2 = *(v0 + 8);

  return v2();
}

void *sub_100015348(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_defaultActor_initialize();
  v4[14] = _swiftEmptyArrayStorage;
  v4[15] = a1;
  v4[16] = 0;
  v4[17] = a2;
  v4[18] = a3;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  swift_bridgeObjectRetain_n();

  sub_100015FB8(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v24 = v4;
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 role];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      sub_100015FB8((v17 > 1), v18 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
  }

  while (v9 != v10);

  v4 = v24;
  v8 = a1 >> 62;
LABEL_14:
  v4[14] = _swiftEmptyArrayStorage;

  if (!v8)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_21:

    v22 = 0;
    goto LABEL_22;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_24:
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 32);
LABEL_19:
    v22 = v21;

LABEL_22:
    v23 = v4[16];
    v4[16] = v22;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000155BC, 0, 0);
}

uint64_t sub_1000155BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v4 = v3[3];
  v6 = *(v5 + 120);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v4)
    {
      v7 = *(v6 + 8 * v4 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return _swift_task_switch(v4, v6, a3);
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v5 = v3[2];
LABEL_5:
  v3[4] = v7;
  v4 = sub_100015664;
  v6 = v5;
  a3 = 0;

  return _swift_task_switch(v4, v6, a3);
}

uint64_t sub_100015664()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  *(v1 + 128) = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000156EC()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100015760, 0, 0);
}

uint64_t sub_100015760()
{
  if (v0[3])
  {
    v1 = v0[2];

    return _swift_task_switch(sub_1000158B8, v1, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Can't continue, no role picked!", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000158B8()
{
  v1 = v0[3];
  v4 = (*(v0[2] + 136) + **(v0[2] + 136));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000159AC;

  return v4(v1);
}

uint64_t sub_1000159AC()
{

  return _swift_task_switch(sub_100015AA8, 0, 0);
}

uint64_t sub_100015AA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015B08()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100015B8C()
{

  sub_100003958(&qword_100087BC8, &qword_100063330);
  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

uint64_t sub_100015BF4()
{

  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100015C4C(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_100015CD4(uint64_t a1)
{
  result = sub_100015CFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015CFC()
{
  result = qword_100087BC0;
  if (!qword_100087BC0)
  {
    type metadata accessor for AirTagRolePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087BC0);
  }

  return result;
}

uint64_t sub_100015D50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015D88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F540;

  return sub_10001559C(a1, v5, v4);
}

uint64_t sub_100015E34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000156D0(a1, v1);
}

uint64_t sub_100015ED0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100015F1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000152BC(a1, v1);
}

char *sub_100015FB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003958(&unk_100087BD0, qword_100063338);
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

void (*sub_1000160E4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100016164;
  }

  __break(1u);
  return result;
}

void sub_1000161D4()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapView];
  [v1 setAutoresizingMask:18];
  [v1 setDelegate:v0];
  [v1 setUserInteractionEnabled:0];
  v2 = [objc_opt_self() filterIncludingAllCategories];
  [v1 setPointOfInterestFilter:v2];

  [v1 setShowsAttribution:0];
  [v1 setShowsBuildings:1];
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapAnnotation];
  if (v3)
  {
    [v1 setRegion:{*(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region), *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region + 8), *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region + 16), *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region + 24)}];
  }

  type metadata accessor for AirTagAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v5];

  v6 = [objc_allocWithZone(UIView) init];
  [v6 setClipsToBounds:1];
  [v6 addSubview:v1];
  [v0 setView:v6];
}

id sub_1000164C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AirTagMapViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10001656C(void *a1, uint64_t a2)
{
  type metadata accessor for AirTagMapAnnotation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapAnnotation);
    if (v5)
    {
      v6 = result;
      swift_unknownObjectRetain();
      v7 = v5;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = String._bridgeToObjectiveC()();
        v10 = [a1 dequeueReusableAnnotationViewWithIdentifier:v9 forAnnotation:v6];

        type metadata accessor for AirTagAnnotationView();
        v11 = swift_dynamicCastClassUnconditional();
        v12 = v10;
        [v11 setCanShowCallout:1];
        [v11 setAllowsPulse:1];
        v13 = *(v6 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_pairingLocation);
        [v11 updateStateFromLocation:v13 duration:0.0];

        swift_unknownObjectRelease();
        return v11;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void *sub_100016760(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject roles];
      sub_100004E64(0, &qword_100087E10, SPBeaconRole_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_100035F08(&qword_100087E20, &qword_100087E18, &qword_1000638C0);
            for (i = 0; i != v16; ++i)
            {
              sub_100003958(&qword_100087E18, &qword_1000638C0);
              v19 = sub_1000160E4(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100016AE0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000016;
    v6 = 0x61466D6F74737563;
    if (a1 == 10)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 == 9)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD000000000000013;
    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v5;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x794D646E69466F6ELL;
    v2 = 0x53676E6972696170;
    v3 = 0x54676E6972696170;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000019;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100016C88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100016AE0(*a1);
  v5 = v4;
  if (v3 == sub_100016AE0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100016D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100016AE0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100016D74(uint64_t a1)
{
  sub_100016AE0(*v1);
  String.hash(into:)();
}

Swift::Int sub_100016DC8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100016AE0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100016E28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100034730(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100016E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016AE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100016E94()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100003958(&qword_100087E30, &qword_1000638F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(SPAccessoryDiscoveryAndPairingSession) initWithPreviousState:0];
  v0[15] = [objc_allocWithZone(SPBeaconManager) init];
  sub_100003958(&qword_100087E38, &qword_100063900);
  swift_allocObject();
  v0[16] = AsyncStreamProvider.init()();
  type metadata accessor for PairingContentStore(0);
  swift_allocObject();
  v0[17] = sub_10000F640();
  type metadata accessor for PairingAccountStore();
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_opt_self() sharedInstance];
  *(v6 + 24) = [objc_opt_self() defaultStore];
  v1[18] = v6;
  type metadata accessor for PairingViewModelFactory();
  v1[19] = swift_allocObject();
  type metadata accessor for WorkItemQueue();
  v7 = type metadata accessor for WorkItemQueue.WarningOptions();
  v1[20] = 0;
  v1[21] = 0;
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  UUID.init()();
  v1[22] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v1 + 92) = 3072;
  type metadata accessor for PairingStateManager();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = _swiftEmptyArrayStorage;
  v1[24] = v8;
  v1[25] = [objc_allocWithZone(GEOLocationShifter) init];
  swift_unknownObjectWeakInit();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000054DC(v9, qword_10008C038);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10005B0A0(0x292874696E69, 0xE600000000000000, &v18);
    *(v12 + 12) = 2080;
    v17 = *v1;
    sub_100003958(&qword_100087E40, &qword_100063908);
    v13 = String.init<A>(describing:)();
    v15 = sub_10005B0A0(v13, v14, &v18);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

id *sub_1000172E4()
{
  v1 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v10);
    *(v5 + 12) = 2080;
    sub_100003958(&qword_100087E40, &qword_100063908);
    v6 = String.init<A>(describing:)();
    v8 = sub_10005B0A0(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();

  sub_100036D08((v1 + 26));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100017518()
{
  sub_1000172E4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for PairingContentViewModel.TestRunScenario(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentViewModel.TestRunScenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000176C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000176E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_100017730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000177D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100017820()
{
  result = qword_100087D98;
  if (!qword_100087D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087D98);
  }

  return result;
}

uint64_t sub_100017874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100017898, 0, 0);
}

uint64_t sub_100017898()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 192);
    v0[9] = v2;

    return _swift_task_switch(sub_100017968, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100017968()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v1 + 112) = v0[6];
  *(v1 + 120) = v2;

  sub_10000A788(v3, v4);

  return _swift_task_switch(sub_1000179F8, 0, 0);
}

uint64_t sub_1000179F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017A5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 2728) = a2;
  *(v2 + 2680) = a1;
  return _swift_task_switch(sub_100017A80, 0, 0);
}

uint64_t sub_100017A80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[347] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[353] = v2;
    *v2 = v0;
    v2[1] = sub_100017B78;
    v3 = v0[341];

    return sub_100018534(v3);
  }

  else
  {
    sub_10000A788(0, 0);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100017B78()
{
  *(*v1 + 2872) = v0;

  if (v0)
  {
    v2 = sub_100018000;
  }

  else
  {
    v2 = sub_100017C8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100017C8C()
{

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 656);
}

uint64_t sub_100017DB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2920) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100018064, v3 + 2688);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1296);
  }
}

uint64_t sub_100017DF8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2968) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100018198, v3 + 2928);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1936);
  }
}

uint64_t sub_100017E38(uint64_t a1, uint64_t a2)
{
  *(v3 + 3016) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_1000182CC, v3 + 3168);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 16);
  }
}

uint64_t sub_100017E78(uint64_t a1, uint64_t a2)
{
  *(v3 + 3064) = v2;
  if (v2)
  {
    v4 = sub_100018400;
    v5 = v3 + 16;
    v6 = v3 + 3408;
  }

  else
  {
    v4 = sub_100017EB8;
    v5 = v3 + 16;
    v6 = v3 + 3600;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100017F7C()
{

  sub_10000A788(&unk_100063968, *(v0 + 2776));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001825C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000184C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018534(uint64_t a1)
{
  v2[171] = v1;
  v2[170] = a1;
  sub_100003958(&qword_100087AB8, &qword_100062F90);
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[174] = v3;
  v2[175] = *(v3 - 8);
  v2[176] = swift_task_alloc();

  return _swift_task_switch(sub_10001863C, v1, 0);
}

uint64_t sub_10001863C()
{
  v143 = v0;
  type metadata accessor for WorkItemQueue();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_10003477C();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
LABEL_13:

    v13 = *(v0 + 8);
LABEL_20:

    return v13();
  }

  v1 = *(*(v0 + 1360) + 24);
  if (!v1)
  {
    goto LABEL_15;
  }

  *(v0 + 1216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1224) = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v3 = sub_10004ECB0(v0 + 200), (v4 & 1) == 0))
  {
    sub_100005488(v0 + 200);
    goto LABEL_15;
  }

  sub_100005514(*(v1 + 56) + 32 * v3, v0 + 832);
  sub_100005488(v0 + 200);
  sub_100003958(&qword_100087E60, &unk_1000639E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000054DC(v14, qword_10008C038);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No valid user info for Pairing Content!", v17, 2u);
    }

    v13 = *(v0 + 8);
    goto LABEL_20;
  }

  v5 = *(v0 + 1352);
  *(v0 + 1184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1192) = v6;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v7 = sub_10004ECB0(v0 + 280), (v8 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v7, v0 + 928);
    sub_100005488(v0 + 280);
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = *(v0 + 1328);
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 ^ 1;
  }

  else
  {
    sub_100005488(v0 + 280);
    v10 = 0;
    v11 = 1;
  }

  v139 = v11;
  *(v0 + 1152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1160) = v19;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v20 = sub_10004ECB0(v0 + 360), (v21 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v20, v0 + 896);
    sub_100005488(v0 + 360);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 1200);
    if (!v22)
    {
      v23 = 0;
    }

    v133 = v23;
    if (v22)
    {
      v24 = *(v0 + 1208);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_100005488(v0 + 360);
    v133 = 0;
    v24 = 0;
  }

  *(v0 + 1136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1144) = v25;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v26 = sub_10004ECB0(v0 + 480), (v27 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v26, v0 + 800);
    sub_100005488(v0 + 480);
    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = *(v0 + 1344);
    }

    else
    {
      v29 = 0;
    }

    v30 = v28 ^ 1;
  }

  else
  {
    sub_100005488(v0 + 480);
    v29 = 0;
    v30 = 1;
  }

  v135 = v30;
  v131 = v29;
  *(v0 + 1416) = v29;
  *(v0 + 1104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1112) = v31;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v32 = sub_10004ECB0(v0 + 600), (v33 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v32, v0 + 640);
    sub_100005488(v0 + 600);
    v34 = swift_dynamicCast();
    v35 = *(v0 + 1336);
    if (!v34)
    {
      v35 = 0;
    }

    v132 = v35;
    v36 = v34 ^ 1;
  }

  else
  {
    sub_100005488(v0 + 600);
    v132 = 0;
    v36 = 1;
  }

  v136 = v36;
  *(v0 + 1088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1096) = v37;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v38 = sub_10004ECB0(v0 + 520), (v39 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v38, v0 + 672);
    sub_100005488(v0 + 520);
    v40 = swift_dynamicCast();
    if (v40)
    {
      v41 = *(v0 + 1264);
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = *(v0 + 1272);
    }

    else
    {
      v42 = 0xF000000000000000;
    }
  }

  else
  {
    sub_100005488(v0 + 520);
    v41 = 0;
    v42 = 0xF000000000000000;
  }

  *(v0 + 1432) = v42;
  *(v0 + 1424) = v41;
  *(v0 + 1072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1080) = v43;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v44 = sub_10004ECB0(v0 + 440), (v45 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v44, v0 + 768);
    sub_100005488(v0 + 440);
    v46 = swift_dynamicCast();
    v47 = *(v0 + 1305);
    if (!v46)
    {
      v47 = 2;
    }
  }

  else
  {
    sub_100005488(v0 + 440);
    v47 = 2;
  }

  v134 = v47;
  *(v0 + 1308) = v47;
  *(v0 + 1056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1064) = v48;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v49 = sub_10004ECB0(v0 + 320), (v50 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v49, v0 + 864);
    sub_100005488(v0 + 320);
    v51 = swift_dynamicCast();
    v52 = *(v0 + 1295);
    if (!v51)
    {
      v52 = 2;
    }
  }

  else
  {
    sub_100005488(v0 + 320);
    v52 = 2;
  }

  v130 = v52;
  *(v0 + 1309) = v52;
  *(v0 + 1248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1256) = v53;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v54 = sub_10004ECB0(v0 + 560), (v55 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v54, v0 + 960);
    sub_100005488(v0 + 560);
    v56 = swift_dynamicCast();
    v57 = *(v0 + 1294);
    if (!v56)
    {
      v57 = 2;
    }
  }

  else
  {
    sub_100005488(v0 + 560);
    v57 = 2;
  }

  v129 = v57;
  *(v0 + 1310) = v57;
  *(v0 + 1024) = 0x6E75722D74736574;
  *(v0 + 1032) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v140 = v41;
  v141 = v42;
  if (!*(v5 + 16) || (v58 = sub_10004ECB0(v0 + 240), (v59 & 1) == 0))
  {
    sub_100005488(v0 + 240);
    goto LABEL_74;
  }

  sub_100005514(*(v5 + 56) + 32 * v58, v0 + 992);
  sub_100005488(v0 + 240);
  if (!swift_dynamicCast())
  {
LABEL_74:
    v60 = 0;
    goto LABEL_75;
  }

  v60 = *(v0 + 1293);
LABEL_75:
  v61 = *(v0 + 1368);
  *(v61 + 184) = v60;
  *(v0 + 1120) = 0xD000000000000011;
  *(v0 + 1128) = 0x8000000100060160;
  AnyHashable.init<A>(_:)();
  v138 = v24;
  if (!*(v5 + 16) || (v62 = sub_10004ECB0(v0 + 160), (v63 & 1) == 0))
  {
    sub_100005488(v0 + 160);
    goto LABEL_80;
  }

  sub_100005514(*(v5 + 56) + 32 * v62, v0 + 736);
  sub_100005488(v0 + 160);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    goto LABEL_81;
  }

  v64 = *(v0 + 1040);
LABEL_81:
  v65 = *(v0 + 1368);
  *(v65 + 185) = sub_100034730(v64);
  *(v0 + 1168) = 0xD000000000000014;
  *(v0 + 1176) = 0x8000000100060180;
  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v66 = sub_10004ECB0(v0 + 400), (v67 & 1) != 0))
  {
    sub_100005514(*(v5 + 56) + 32 * v66, v0 + 704);
    sub_100005488(v0 + 400);

    if (swift_dynamicCast())
    {
      v68 = *(v0 + 1291);
    }

    else
    {
      v68 = 2;
    }
  }

  else
  {

    sub_100005488(v0 + 400);
    v68 = 2;
  }

  *(v0 + 1311) = v68;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_1000054DC(v69, qword_10008C038);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  v137 = v10;
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v142[0] = swift_slowAlloc();
    *v72 = 67109634;
    *(v72 + 4) = *(v61 + 184);

    *(v72 + 8) = 2082;
    *(v0 + 1289) = *(v65 + 185);
    sub_100003958(&qword_100087E68, &qword_100063A00);
    v73 = String.init<A>(describing:)();
    v75 = sub_10005B0A0(v73, v74, v142);

    *(v72 + 10) = v75;
    *(v72 + 18) = 2080;
    *(v0 + 1290) = v68;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v76 = String.init<A>(describing:)();
    v78 = sub_10005B0A0(v76, v77, v142);

    *(v72 + 20) = v78;
    _os_log_impl(&_mh_execute_header, v70, v71, "Is UI under test run = %{BOOL}d, scenario = %{public}s, greenTeaTestValue = %s.", v72, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  v79 = v140;
  sub_100014C90(v140, v141);
  sub_100014C90(v140, v141);
  v80 = v138;

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v81, v82))
  {
    sub_100014CF8(v140, v141);
    sub_100014CF8(v140, v141);

    if (v139)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

  v83 = swift_slowAlloc();
  v142[0] = swift_slowAlloc();
  *v83 = 136448259;
  *(v0 + 1280) = v10;
  *(v0 + 1288) = v139;
  sub_100003958(&qword_100087AE0, &qword_100062FA8);
  v84 = String.init<A>(describing:)();
  v86 = sub_10005B0A0(v84, v85, v142);

  *(v83 + 4) = v86;
  *(v83 + 12) = 2160;
  *(v83 + 14) = 1752392040;
  *(v83 + 22) = 2081;
  *(v0 + 1232) = v133;
  *(v0 + 1240) = v138;

  sub_100003958(&qword_1000872C8, &unk_1000639F0);
  v87 = String.init<A>(describing:)();
  v89 = sub_10005B0A0(v87, v88, v142);

  *(v83 + 24) = v89;
  *(v83 + 32) = 2082;
  *(v0 + 1296) = v131;
  *(v0 + 1304) = v135;
  v90 = String.init<A>(describing:)();
  v92 = sub_10005B0A0(v90, v91, v142);

  *(v83 + 34) = v92;
  *(v83 + 42) = 2082;
  *(v0 + 1312) = v132;
  *(v0 + 1320) = v136;
  v93 = String.init<A>(describing:)();
  v95 = sub_10005B0A0(v93, v94, v142);
  v96 = v140;

  *(v83 + 44) = v95;
  v97 = v141;
  *(v83 + 52) = 1024;
  if (v141 >> 60 == 15)
  {
    goto LABEL_94;
  }

  v99 = v141 >> 62;
  if ((v141 >> 62) > 1)
  {
    if (v99 != 2)
    {
      sub_100014CF8(v140, v141);
      v97 = v141;
      goto LABEL_94;
    }

    v100 = *(v140 + 16);
    v101 = *(v140 + 24);
    sub_100014CF8(v140, v141);
LABEL_104:
    v102 = v100 == v101;
    v96 = v140;
    v97 = v141;
    if (!v102)
    {
      goto LABEL_105;
    }

LABEL_94:
    v98 = 0;
    goto LABEL_106;
  }

  if (v99)
  {
    sub_100014CF8(v140, v141);
    v100 = v140;
    v101 = v140 >> 32;
    goto LABEL_104;
  }

  sub_100014CF8(v140, v141);
  v97 = v141;
  if ((v141 & 0xFF000000000000) == 0)
  {
    goto LABEL_94;
  }

LABEL_105:
  v98 = 1;
LABEL_106:
  *(v83 + 54) = v98;
  sub_100014CF8(v96, v97);
  *(v83 + 58) = 2082;
  *(v0 + 1307) = v134;
  sub_100003958(&qword_100087A98, &qword_100062F70);
  v103 = String.init<A>(describing:)();
  v105 = sub_10005B0A0(v103, v104, v142);

  *(v83 + 60) = v105;
  *(v83 + 68) = 2082;
  *(v0 + 1306) = v130;
  v106 = String.init<A>(describing:)();
  v108 = sub_10005B0A0(v106, v107, v142);

  *(v83 + 70) = v108;
  *(v83 + 78) = 2082;
  *(v0 + 1292) = v129;
  v109 = String.init<A>(describing:)();
  v111 = sub_10005B0A0(v109, v110, v142);
  v79 = v140;

  *(v83 + 80) = v111;
  _os_log_impl(&_mh_execute_header, v81, v82, "Configure prox card with info: accessoryType %{public}s, identifier %{private,mask.hash}s, color %{public}s, deviceState %{public}s, engravingData %{BOOL}d, privacy: .public), isBatteryLevelCritical = %{public}s,\nmanateeAvailable = %{public}s, isMultiDetection = %{public}s.", v83, 0x58u);
  swift_arrayDestroy();

  v10 = v137;
  v80 = v138;
  if (v139)
  {
    goto LABEL_111;
  }

LABEL_107:
  if (!v80)
  {
LABEL_112:
    sub_10003477C();
    swift_allocError();
    *v112 = 0;
LABEL_113:
    swift_willThrow();
    v113 = v79;
LABEL_114:
    sub_100014CF8(v113, v141);
    goto LABEL_13;
  }

  if (v136 || v135 || v134 == 2)
  {
LABEL_111:

    goto LABEL_112;
  }

  if (v10)
  {
    if (v10 != 1)
    {

      sub_10003477C();
      swift_allocError();
      *v124 = 1;
      goto LABEL_113;
    }

    v114 = 1;
  }

  else
  {
    v114 = 0;
  }

  *(v0 + 1321) = v114;
  v115 = *(v0 + 1400);
  v116 = *(v0 + 1392);
  v117 = *(v0 + 1384);
  UUID.init(uuidString:)();

  if ((*(v115 + 48))(v117, 1, v116) == 1)
  {
    sub_100004F1C(*(v0 + 1384), &qword_100087AB8, &qword_100062F90);
    sub_10003477C();
    swift_allocError();
    *v118 = 2;
    swift_willThrow();
    v113 = v140;
    goto LABEL_114;
  }

  (*(*(v0 + 1400) + 32))(*(v0 + 1408), *(v0 + 1384), *(v0 + 1392));
  if (v132 > 1)
  {
    v125 = *(v0 + 1408);
    v126 = *(v0 + 1400);
    v127 = *(v0 + 1392);
    sub_10003477C();
    swift_allocError();
    *v128 = 3;
    swift_willThrow();
    sub_100014CF8(v140, v141);
    (*(v126 + 8))(v125, v127);
    goto LABEL_13;
  }

  *(v0 + 1322) = v132;
  v119 = *(v0 + 1408);
  v120 = *(v0 + 1400);
  v121 = *(v0 + 1392);
  v122 = *(v0 + 1376);
  v123 = *(*(v0 + 1368) + 136);
  *(v0 + 1440) = v123;
  (*(v120 + 16))(v122, v119, v121);
  (*(v120 + 56))(v122, 0, 1, v121);

  return _swift_task_switch(sub_1000197EC, v123, 0);
}