unint64_t sub_188490394()
{
  result = qword_1EA90C388;
  if (!qword_1EA90C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C388);
  }

  return result;
}

unint64_t CKRecordZone.Reference.Action.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_18849041C@<X0>(uint64_t *a1@<X8>)
{
  result = CKRecordZone.Reference.Action.rawValue.getter();
  *a1 = result;
  return result;
}

id CKRecordZone.Reference.init(zoneID:action:)()
{
  sub_1883F7284();
  ObjectType = swift_getObjectType();
  v4 = *v0;
  *&v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID] = v2;
  v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CKRecordZone.Reference.init(zone:action:)()
{
  sub_1883F7284();
  ObjectType = swift_getObjectType();
  v4 = *v0;
  v5 = [v2 zoneID];
  *&v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID] = v5;
  v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action] = v4;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t CKRecordZone.Reference.description.getter()
{
  v1 = v0;
  BYTE8(v7) = 0;
  _StringGuts.grow(_:)(35);
  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188700010);
  v2 = [*(v0 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x18CFD5140](v3, v5);

  MEMORY[0x18CFD5140](0x6E6F697463612022, 0xEA0000000000223DLL);
  *&v7 = *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](23842, 0xE200000000000000);
  return *(&v7 + 1);
}

id CKRecordZone.Reference.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID);
  v5 = objc_allocWithZone(ObjectType);
  v6 = v4;
  result = CKRecordZone.Reference.init(zoneID:action:)();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL CKRecordZone.Reference.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_18848911C(a1, v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      sub_188490CD4();
      v4 = *&v9[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID];
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        v6 = *(v2 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
        v7 = v9[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action];

        return v6 == v7;
      }
    }
  }

  else
  {
    sub_18847EBC8(v10);
  }

  return 0;
}

id CKRecordZone.Reference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *CKRecordZone.parent.getter()
{
  v1 = [v0 parent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR___CKRecordZoneReference__wrapped];
  v4 = v3;

  return v3;
}

void sub_188490B3C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CKRecordZone.parent.setter(v1);
}

void CKRecordZone.parent.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for CKRecordZoneReference(0);
    v4 = a1;
    v5 = CKRecordZoneReference.init(_:)(v4);
    [v2 setParent_];
  }

  else
  {

    [v1 setParent_];
  }
}

void (*CKRecordZone.parent.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CKRecordZone.parent.getter();
  return sub_188490C6C;
}

void sub_188490C6C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CKRecordZone.parent.setter(v2);
  }

  else
  {
    CKRecordZone.parent.setter(*a1);
  }
}

unint64_t sub_188490CD4()
{
  result = qword_1EA90CA80;
  if (!qword_1EA90CA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90CA80);
  }

  return result;
}

unint64_t sub_188490D1C()
{
  result = qword_1EA90DCF8;
  if (!qword_1EA90DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DCF8);
  }

  return result;
}

_BYTE *_s9ReferenceC6ActionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *CKRecordZoneReference.wrapped.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  v2 = v1;
  return v1;
}

char *CKRecordZoneReference.init(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v2[OBJC_IVAR___CKRecordZoneReference__wrapped];
  *&v2[OBJC_IVAR___CKRecordZoneReference__wrapped] = a1;

  return v2;
}

id sub_188490F34()
{
  *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped) = 0;
  v2.super_class = CKRecordZoneReference;
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_188491000(void *a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v4;
}

char *sub_188491074(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, char *), uint64_t a4)
{
  v7 = v4;
  v10 = [v7 init];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a2 <= 2)
  {
    v11 = v10;
    v16 = a2;
    objc_allocWithZone(type metadata accessor for CKRecordZone.Reference());
    v12 = v11;
    v13 = a3(a1, &v16);
    v14 = *&v12[OBJC_IVAR___CKRecordZoneReference__wrapped];
    *&v12[OBJC_IVAR___CKRecordZoneReference__wrapped] = v13;

    return v12;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002DLL, 0x8000000188700110, "CloudKit/CKRecordZoneReference_Boxing.swift", 43, 2, a4);
  __break(1u);
  return result;
}

id CKRecordZoneReference.zoneID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  if (v1)
  {
    return *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID);
  }

  __break(1u);
  return result;
}

uint64_t CKRecordZoneReference.referenceAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  if (v1)
  {
    return *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CKRecordZoneReference.encode(with:)(NSCoder with)
{
  v3 = [v1 zoneID];
  v4 = NSStringFromSelector(sel_zoneID);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18CFD5010](v5);
  }

  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  [v1 referenceAction];
  v6.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v7 = NSStringFromSelector(sel_referenceAction);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = MEMORY[0x18CFD5010](v8);

    v7 = v9;
  }

  v10 = v7;
  [(objc_class *)with.super.isa encodeObject:v6.super.super.isa forKey:?];
}

id CKRecordZoneReference.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKRecordZoneReference__wrapped;
  *&v1[OBJC_IVAR___CKRecordZoneReference__wrapped] = 0;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v5 = NSStringFromSelector(sel_zoneID);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = NSStringFromSelector(sel_referenceAction);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x18CFD5010](v8);
  }

  v9 = [a1 decodeIntegerForKey_];

  if (v9 >= 3)
  {

    a1 = v6;
LABEL_7:

    type metadata accessor for CKRecordZoneReference(v14);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v9;
  v10 = objc_allocWithZone(type metadata accessor for CKRecordZone.Reference());
  v11 = CKRecordZone.Reference.init(zoneID:action:)();
  v12 = *&v2[v4];
  *&v2[v4] = v11;

  v16.receiver = v2;
  v16.super_class = CKRecordZoneReference;
  v13 = objc_msgSendSuper2(&v16, sel_init);

  return v13;
}

char *CKRecordZoneReference.copy(with:)@<X0>(char *result@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  if (v4)
  {
    v5 = type metadata accessor for CKRecordZoneReference(result);
    result = CKRecordZoneReference.init(_:)(v4);
    a2[3] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKRecordZoneReference.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18848911C(a1, v11);
  if (!v12)
  {
    sub_18847EBC8(v11);
    goto LABEL_7;
  }

  type metadata accessor for CKRecordZoneReference(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  v4 = *&v10[OBJC_IVAR___CKRecordZoneReference__wrapped];
  if (!v3)
  {
    v9 = v4;

    if (!v4)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_7;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  type metadata accessor for CKRecordZone.Reference();
  v5 = v4;
  v6 = v3;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t CKRecordZoneReference.hash.getter()
{
  sub_18844E6FC(&qword_1EA90DD18, &qword_1886F9CC8);
  sub_1884918BC();
  return Optional<A>.hashValue.getter();
}

unint64_t sub_1884918BC()
{
  result = qword_1EA90DD20;
  if (!qword_1EA90DD20)
  {
    type metadata accessor for CKRecordZone.Reference();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DD20);
  }

  return result;
}

uint64_t CKRecordZoneReference.description.getter()
{
  v1 = *&v0[OBJC_IVAR___CKRecordZoneReference__wrapped];
  if (v1)
  {
    v2 = v1;
    v3 = objc_msgSendSuper2(&v14, sel_description);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v16 = v4;
    v17 = v6;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    type metadata accessor for CKRecordZone.Reference();
    v7 = v2;
    v8 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v8);
  }

  else
  {
    v15.receiver = v0;
    v15.super_class = CKRecordZoneReference;
    v9 = objc_msgSendSuper2(&v15, sel_description);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16 = v10;
    v17 = v12;
    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
  }

  return v16;
}

void __swiftcall CKRecordZoneSubscription.init(zoneID:subscriptionID:)(CKRecordZoneSubscription *__return_ptr retstr, CKRecordZoneID *zoneID, Swift::String subscriptionID)
{
  object = subscriptionID._object;
  countAndFlagsBits = subscriptionID._countAndFlagsBits;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v6 initWithZoneID:zoneID subscriptionID:v7];
}

void sub_188491B40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  CKRecordZoneSubscription.recordType.setter(v1, v2);
}

void CKRecordZoneSubscription.recordType.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x18CFD5010](a1);
  }

  else
  {
    v3 = 0;
  }

  [v2 setRecordType_];
}

void (*CKRecordZoneSubscription.recordType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_188470A78(v1);
  a1[1] = v3;
  return sub_188491C38;
}

void sub_188491C38(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    CKRecordZoneSubscription.recordType.setter(v3, v2);
  }

  else
  {
    CKRecordZoneSubscription.recordType.setter(*a1, v2);
  }
}

uint64_t sub_188491CAC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DD98 = result;
  unk_1EA90DDA0 = v1;
  return result;
}

uint64_t sub_188491CFC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDA8 = result;
  unk_1EA90DDB0 = v1;
  return result;
}

uint64_t sub_188491D4C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDB8 = result;
  unk_1EA90DDC0 = v1;
  return result;
}

uint64_t sub_188491D9C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDC8 = result;
  unk_1EA90DDD0 = v1;
  return result;
}

uint64_t sub_188491DEC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDD8 = result;
  unk_1EA90DDE0 = v1;
  return result;
}

uint64_t sub_188491E3C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDE8 = result;
  unk_1EA90DDF0 = v1;
  return result;
}

uint64_t sub_188491E8C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDF8 = result;
  unk_1EA90DE00 = v1;
  return result;
}

uint64_t CKShare.oneTimeURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x18CFD5010]();
  v4 = [v1 oneTimeURLForParticipantID_];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();

  return sub_1883F90F4(a1, v5, 1, v6);
}

_BYTE *_s14SystemFieldKeyOwst(_BYTE *result, int a2, int a3)
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

uint64_t CKShareParticipant.participantID.getter()
{
  v1 = [v0 participantID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CKShareTransferRepresentation.init(exporter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CKShareTransferRepresentation.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X3>)
{
  v22 = *(a1 + 16);
  v5 = type metadata accessor for CKShareTransferRepresentation.ExportedShare(255, v22, *(&v22 + 1), a3);
  sub_1883F9C6C();
  v25 = *(&v22 + 1);
  v23 = v22;
  v24 = v5;
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for ProxyRepresentation();
  sub_1883F70DC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F8844();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v21 = *v3;
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v22;
  *(v16 + 32) = v17;

  ProxyRepresentation.init(exporting:)();
  sub_1883FA0E0();
  swift_getWitnessTable();
  v18 = *(v8 + 16);
  v18(v15, v12, v6);
  v19 = *(v8 + 8);
  v19(v12, v6);
  v18(a2, v15, v6);
  return (v19)(v15, v6);
}

uint64_t sub_188492368@<X0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(&v7);

  result = sub_1883F5BA0(0, 0);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  return result;
}

void static CKShareTransferRepresentation.ExportedShare.prepareShare(container:allowedSharingOptions:preparationHandler:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{

  v12 = a2;
  v13 = a1;

  sub_188492498(a1, a2, 0, 0, a3, a4, x8_0);
}

void sub_188492498(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a1)
  {
    v13 = a1;
    v14 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(v13);
    v15 = [v13 containerID];
    v18 = CKSharingContainerSupportsAdminParticipants(v15, v16, v17);

    if (v18)
    {
      if (!a2)
      {

        if (a4)
        {
          goto LABEL_13;
        }

LABEL_10:

        goto LABEL_14;
      }

      v19 = a2;
      [v19 setSupportAllowingAddedParticipantsToInviteOthers_];
    }

    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = a1;
    goto LABEL_10;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!a2)
  {
    v13 = a1;
LABEL_13:

    a2 = 0;
    goto LABEL_14;
  }

  v20 = [objc_opt_self() resolvedOptionsFromOptions:a2 forExistingShare:a4];

  a2 = v20;
LABEL_14:
  *a7 = v14;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
}

void static CKShareTransferRepresentation.ExportedShare.existing(_:container:allowedSharingOptions:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  v9 = a3;
  v10 = a2;

  sub_188492498(a2, a3, 0, a1, 0, 0, a4);
}

id sub_188492668()
{
  if (*v0)
  {
    return *v0;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

id sub_1884926F0()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    return v1;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_188492778()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v1 = v3;
    swift_willThrow();
  }

  return v1;
}

id sub_188492810()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

id sub_188492898(id result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    swift_willThrow();
    return v2;
  }

  if (!*(v1 + 8) || *(v1 + 24) == 0)
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v2;
  }

  return v3;
}

uint64_t static CKShareTransferRepresentation.ExportedShare.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v83 = a4;
  v94 = a2;
  v5 = type metadata accessor for CKShareTransferRepresentation.ExportedShare(255, a1, a2, a3);
  sub_1883F9C6C();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for DataRepresentation();
  sub_1883F7C40();
  v87 = swift_getWitnessTable();
  v79 = type metadata accessor for _ConditionalTransferRepresentation();
  sub_1883F70DC();
  v92 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8844();
  v82 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v75 - v14;
  v15 = type metadata accessor for UTType();
  sub_1883F70DC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  sub_1883F8844();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v75 - v30;
  if (qword_1EA90CBA8 != -1)
  {
    swift_once();
  }

  v32 = sub_1883FDE5C(v15, qword_1EA90DE48);
  v33 = *(v17 + 16);
  v91 = v17 + 16;
  v89 = v33;
  v33(v20, v32, v15);
  v34 = sub_1883FDA5C(&unk_1EFA28918);
  v35 = v94;
  *(v34 + 16) = a1;
  *(v34 + 24) = v35;
  DataRepresentation.init(exportedContentType:exporting:)();
  v90 = a1;
  v36 = *(v21 + 16);
  v80 = v31;
  v37 = v93;
  v36(v31, v28, v93);
  v40 = *(v21 + 8);
  v39 = v21 + 8;
  v38 = v40;
  v40(v28, v37);
  if (qword_1EA90CBB0 != -1)
  {
    swift_once();
  }

  sub_1883FDE5C(v15, qword_1EA90DE60);
  v41 = sub_1883FF120();
  v42(v41);
  v43 = sub_1883FDA5C(&unk_1EFA28940);
  v44 = v94;
  *(v43 + 16) = v90;
  *(v43 + 24) = v44;
  DataRepresentation.init(exportedContentType:exporting:)();
  v81 = v28;
  v45 = v93;
  v36(v28, v25, v93);
  v38(v25, v45);
  v84 = v38;
  v46 = v5;
  if (qword_1EA90CB98 != -1)
  {
    swift_once();
  }

  sub_1883FDE5C(v15, qword_1EA90DE18);
  v47 = sub_1883FF120();
  v48(v47);
  v49 = sub_1883FDA5C(&unk_1EFA28968);
  v50 = v90;
  v51 = v94;
  *(v49 + 16) = v90;
  *(v49 + 24) = v51;
  DataRepresentation.init(exportedContentType:exporting:)();
  v52 = sub_1883FDA5C(&unk_1EFA28990);
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  v53 = v86;
  v54 = v93;
  v55 = v15;
  v56 = v25;
  TransferRepresentation.exportingCondition(_:)();

  v84(v25, v54);
  v57 = v79;
  v77 = swift_getWitnessTable();
  v85 = v39;
  v58 = v92;
  v59 = v46;
  v76 = *(v92 + 16);
  v76(v88, v53, v57);
  v78 = *(v58 + 8);
  v92 = v58 + 8;
  v78(v53, v57);
  if (qword_1EA90CBA0 != -1)
  {
    swift_once();
  }

  v60 = sub_1883FDE5C(v55, qword_1EA90DE30);
  v89(v20, v60, v55);
  v61 = sub_1883FDA5C(&unk_1EFA289B8);
  v62 = v90;
  v63 = v94;
  *(v61 + 16) = v90;
  *(v61 + 24) = v63;
  DataRepresentation.init(exportedContentType:exporting:)();
  v64 = sub_1883FDA5C(&unk_1EFA289E0);
  *(v64 + 16) = v62;
  *(v64 + 24) = v63;
  v65 = v82;
  v66 = v93;
  v67 = v87;
  TransferRepresentation.exportingCondition(_:)();

  WitnessTable = v59;
  v68 = v84;
  v84(v56, v66);
  v69 = v86;
  v76(v86, v65, v57);
  v70 = v78;
  v78(v65, v57);
  v72 = v80;
  v71 = v81;
  v73 = v88;
  sub_188493EC0(v80, v81, v88, v69, WitnessTable, v66, v66, v57, v83, v57, v67);
  v70(v69, v57);
  v70(v73, v57);
  v68(v71, v66);
  return (v68)(v72, v66);
}

uint64_t sub_1884930B4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = v4;
  *(v3 + 72) = a1[2];

  return MEMORY[0x1EEE6DFA0](sub_188493158, 0, 0);
}

uint64_t sub_188493158()
{
  sub_1883F7294();
  type metadata accessor for CKShareTransferRepresentation.ExportedShare(0, v2, v3, v4);
  sub_18840AFB0();
  sub_188492898(v5);
  if (!v0)
  {
    sub_1883F7294();
    v8 = sub_188492668();
    v9 = objc_opt_self();
    *(v1 + 16) = 0;
    v10 = sub_1883F7984(v9, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
    v11 = *(v1 + 16);
    if (v10)
    {
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      sub_1883F7904();

      return v15(v12, v14);
    }

    v16 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();

  return v6();
}

uint64_t sub_1884932F4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = v4;
  *(v3 + 72) = a1[2];

  return MEMORY[0x1EEE6DFA0](sub_188493398, 0, 0);
}

uint64_t sub_188493398()
{
  sub_1883F7294();
  type metadata accessor for CKShareTransferRepresentation.ExportedShare(0, v2, v3, v4);
  sub_18840AFB0();
  sub_188492898(v5);
  if (!v0)
  {
    sub_1883F7294();
    v8 = sub_1884926F0();
    v9 = objc_opt_self();
    *(v1 + 16) = 0;
    v10 = sub_1883F7984(v9, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
    v11 = *(v1 + 16);
    if (v10)
    {
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      sub_1883F7904();

      return v15(v12, v14);
    }

    v16 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();

  return v6();
}

uint64_t sub_188493534(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *(v3 + 88) = *a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 104) = v4;
  *(v3 + 120) = a1[2];

  return MEMORY[0x1EEE6DFA0](sub_1884935D8, 0, 0);
}

uint64_t sub_1884935D8()
{
  sub_1883F9210();
  *(v1 + 136) = type metadata accessor for CKShareTransferRepresentation.ExportedShare(0, v2, v3, v4);
  sub_18840AFB0();
  sub_188492898(v5);
  if (v0)
  {
    sub_1883F816C();

    return v9();
  }

  else
  {
    v6 = *(v1 + 104);
    *(v1 + 16) = *(v1 + 88);
    *(v1 + 32) = v6;
    *(v1 + 48) = *(v1 + 120);
    v7 = sub_188492778();
    *(v1 + 144) = v8;
    v12 = (v7 + *v7);
    v11 = swift_task_alloc();
    *(v1 + 152) = v11;
    *v11 = v1;
    v11[1] = sub_18849378C;

    return v12();
  }
}

uint64_t sub_18849378C()
{
  sub_1883F78E0();
  v2 = *v1;
  *(v2 + 160) = v3;
  *(v2 + 168) = v0;

  if (v0)
  {
    v4 = sub_188493AF8;
  }

  else
  {

    v4 = sub_1884938D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1884938D8()
{
  v1 = *(v0 + 168);
  sub_1883F9210();
  v2 = sub_188492668();
  if (v1)
  {
  }

  else
  {
    v3 = v2;
    sub_1883F9210();
    v4 = sub_1884926F0();
    v5 = *(v0 + 160);
    v8 = v4;
    sub_1883F4C5C(0, &unk_1EA90DFA0, off_1E70BA588);
    v9 = v5;
    v10 = v3;
    v11 = v8;
    v12 = sub_188493E58(v9, v10, v11);
    v13 = objc_opt_self();
    *(v0 + 64) = 0;
    v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v0 + 64];
    v15 = *(v0 + 64);
    v16 = *(v0 + 160);
    if (v14)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1883F7904();
      sub_1883F97A8();

      __asm { BRAA            X3, X16 }
    }

    v19 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();
  sub_1883F97A8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188493AF8()
{

  sub_1883F816C();

  return v0();
}

uint64_t sub_188493B84(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = v4;
  *(v3 + 72) = a1[2];

  return MEMORY[0x1EEE6DFA0](sub_188493C28, 0, 0);
}

void sub_188493C28()
{
  sub_1883F7294();
  type metadata accessor for CKShareTransferRepresentation.ExportedShare(0, v2, v3, v4);
  sub_18840AFB0();
  v5 = sub_188492810();
  if (!v0)
  {
    v6 = v5;
    sub_1883F7294();
    v7 = sub_188492668();
    sub_1883F7294();
    v10 = sub_1884926F0();
    sub_1883F4C5C(0, &qword_1EA90DF78, off_1E70BA580);
    v11 = v6;
    v12 = v7;
    v13 = v10;
    v14 = sub_188493E58(v11, v12, v13);
    v15 = objc_opt_self();
    *(v1 + 16) = 0;
    v16 = sub_1883F7984(v15, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
    v17 = *(v1 + 16);
    if (v16)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1883F7904();
      sub_1883F97A8();

      __asm { BRAA            X3, X16 }
    }

    v20 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();
  sub_1883F97A8();

  __asm { BRAA            X1, X16 }
}

id sub_188493E58(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithShare:a1 containerSetupInfo:a2 allowedOptions:a3];

  return v6;
}

uint64_t sub_188493EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a5;
  v29 = a9;
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v27 = a11;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v18 = &v24 - v17;
  v20 = v19[12];
  v21 = v19[16];
  v22 = v19[20];
  (*(*(a6 - 8) + 16))(&v24 - v17, a1, a6, v16);
  (*(*(a7 - 8) + 16))(&v18[v20], v24, a7);
  (*(*(a8 - 8) + 16))(&v18[v21], v25, a8);
  (*(*(a10 - 8) + 16))(&v18[v22], v26, a10);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)();
}

uint64_t sub_1884940EC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_1884930B4(v3, v4, v5);
}

uint64_t sub_18849418C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = sub_18844E6FC(&unk_1EA90DF80, &qword_1886F9EC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for UTType();
  sub_188420F44(v7, a2);
  sub_1883FDE5C(v7, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F90F4(v6, 1, 1, v7);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t sub_18849426C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_1884932F4(v3, v4, v5);
}

uint64_t sub_1884942F8()
{
  sub_1883F78E0();
  v1 = v0;
  v3 = v2;

  sub_1883F7904();

  return v4(v3, v1);
}

uint64_t sub_1884943FC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_188493534(v3, v4, v5);
}

uint64_t sub_188494498()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_188493B84(v3, v4, v5);
}

uint64_t sub_1884945C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_188494600(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_188494640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188494694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1884946D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1884946E8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_18849473C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CKSubscription.subscriptionID.getter()
{
  v1 = [v0 subscriptionID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CKNotificationInfo.alertLocalizationArgs.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_alertLocalizationArgs);
  return sub_1883F7BCC();
}

uint64_t CKNotificationInfo.titleLocalizationArgs.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_titleLocalizationArgs);
  return sub_1883F7BCC();
}

uint64_t sub_1884949A8(void *a1, char a2, void (*a3)(__n128))
{
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1);
  }

  (a3)(v4);
}

uint64_t CKNotificationInfo.subtitleLocalizationArgs.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_subtitleLocalizationArgs);
  return sub_1883F7BCC();
}

void sub_188494B34(uint64_t a1, SEL *a2)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 *a2];
}

uint64_t CKNotificationInfo.desiredKeys.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_desiredKeys);
  return sub_1883F7BCC();
}

void __swiftcall CKNotificationInfo.init(alertBody:alertLocalizationKey:alertLocalizationArgs:title:titleLocalizationKey:titleLocalizationArgs:subtitle:subtitleLocalizationKey:subtitleLocalizationArgs:alertActionLocalizationKey:alertLaunchImage:soundName:desiredKeys:shouldBadge:shouldSendContentAvailable:shouldSendMutableContent:category:collapseIDKey:)(CKNotificationInfo *__return_ptr retstr, Swift::String_optional alertBody, Swift::String_optional alertLocalizationKey, Swift::OpaquePointer alertLocalizationArgs, Swift::String_optional title, Swift::String_optional titleLocalizationKey, Swift::OpaquePointer titleLocalizationArgs, Swift::String_optional subtitle, Swift::String_optional subtitleLocalizationKey, Swift::OpaquePointer subtitleLocalizationArgs, Swift::String_optional alertActionLocalizationKey, Swift::String_optional alertLaunchImage, Swift::String_optional soundName, Swift::OpaquePointer desiredKeys, Swift::Bool shouldBadge, Swift::Bool shouldSendContentAvailable, Swift::Bool shouldSendMutableContent, Swift::String_optional category, Swift::String_optional collapseIDKey)
{
  countAndFlagsBits = titleLocalizationKey.value._countAndFlagsBits;
  object = title.value._object;
  v21 = title.value._countAndFlagsBits;
  v23 = alertLocalizationKey.value._object;
  v24 = alertLocalizationKey.value._countAndFlagsBits;
  v25 = alertBody.value._object;
  v26 = alertBody.value._countAndFlagsBits;
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = v27;
  if (v25)
  {
    v29 = MEMORY[0x18CFD5010](v26, v25);
  }

  else
  {
    v29 = 0;
  }

  [v27 setAlertBody_];

  if (v23)
  {
    v30 = MEMORY[0x18CFD5010](v24, v23);
  }

  else
  {
    v30 = 0;
  }

  [v27 setAlertLocalizationKey_];

  CKNotificationInfo.alertLocalizationArgs.setter(alertLocalizationArgs._rawValue);
  if (object)
  {
    v32 = MEMORY[0x18CFD5010](v21, object);
  }

  else
  {
    v32 = 0;
  }

  sub_1883F9228(v31, sel_setTitle_);

  if (titleLocalizationKey.value._object)
  {
    v34 = MEMORY[0x18CFD5010](countAndFlagsBits, titleLocalizationKey.value._object);
  }

  else
  {
    v34 = 0;
  }

  sub_1883F9228(v33, sel_setTitleLocalizationKey_);

  CKNotificationInfo.titleLocalizationArgs.setter(titleLocalizationArgs._rawValue);
  if (subtitle.value._object)
  {
    v36 = MEMORY[0x18CFD5010](subtitle.value._countAndFlagsBits, subtitle.value._object);
  }

  else
  {
    v36 = 0;
  }

  sub_1883F9228(v35, sel_setSubtitle_);

  if (subtitleLocalizationKey.value._object)
  {
    v38 = MEMORY[0x18CFD5010](subtitleLocalizationKey.value._countAndFlagsBits, subtitleLocalizationKey.value._object);
  }

  else
  {
    v38 = 0;
  }

  sub_1883F9228(v37, sel_setSubtitleLocalizationKey_);

  CKNotificationInfo.subtitleLocalizationArgs.setter(subtitleLocalizationArgs._rawValue);
  if (alertActionLocalizationKey.value._object)
  {
    v39 = MEMORY[0x18CFD5010](alertActionLocalizationKey.value._countAndFlagsBits, alertActionLocalizationKey.value._object);
  }

  else
  {
    v39 = 0;
  }

  [v27 setAlertActionLocalizationKey_];

  if (alertLaunchImage.value._object)
  {
    v40 = MEMORY[0x18CFD5010](alertLaunchImage.value._countAndFlagsBits, alertLaunchImage.value._object);
  }

  else
  {
    v40 = 0;
  }

  [v27 setAlertLaunchImage_];

  if (soundName.value._object)
  {
    v41 = MEMORY[0x18CFD5010](soundName.value._countAndFlagsBits, soundName.value._object);
  }

  else
  {
    v41 = 0;
  }

  [v27 setSoundName_];

  CKNotificationInfo.desiredKeys.setter(desiredKeys._rawValue);
  [v27 setShouldBadge_];
  [v27 setShouldSendContentAvailable_];
  [v27 setShouldSendMutableContent_];
  if (category.value._object)
  {
    v42 = MEMORY[0x18CFD5010](category.value._countAndFlagsBits, category.value._object);
  }

  else
  {
    v42 = 0;
  }

  [v27 setCategory_];

  if (collapseIDKey.value._object)
  {
    v43 = MEMORY[0x18CFD5010](collapseIDKey.value._countAndFlagsBits, collapseIDKey.value._object);
  }

  else
  {
    v43 = 0;
  }

  [v27 setCollapseIDKey_];
}

uint64_t sub_188494F98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 systemSharingUIDidSaveShareBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_188495088@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AA8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884950F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495A5C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter(v4, v3);
}

void sub_188495188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_188495210(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  if (a3)
  {
    a2 = 0;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (*(v3 + 16))(a1, a2, v5);
}

void sub_188495254(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t, id, uint64_t))
{
  if (a3)
  {
    v7 = a3;
    a4(a1, a3, 1);
    v8 = a3;

LABEL_4:

    return;
  }

  if (a2)
  {
    v10 = a2;
    a4(a1, a2, 0);
    v8 = v10;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a4(a1, v11, 1);
}

void sub_1884953A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.getter();
  a1[1] = v3;
  return sub_18849548C;
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 systemSharingUIDidStopSharingBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t (*sub_188495568@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AEC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884955D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495AE8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter(v4, v3);
}

id CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884958B4;
    v9[3] = &unk_1EFA28BC0;
    v7 = _Block_copy(v9);

    [v3 setSystemSharingUIDidStopSharingBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setSystemSharingUIDidStopSharingBlock_];
  }
}

void sub_18849577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1884957F4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    a2 = 0;
  }

  return (*(v3 + 16))(a1, a2);
}

void sub_188495824(uint64_t a1, id a2, void (*a3)(uint64_t, id, uint64_t))
{
  if (a2)
  {
    v6 = a2;
    a3(a1, a2, 1);
  }

  else
  {
    a3(a1, 0, 0);
  }
}

void sub_1884958B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.getter();
  a1[1] = v3;
  return sub_188495988;
}

uint64_t sub_1884959C8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t sub_188495A60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  v6 = a2;
  v7 = a3 & 1;
  return v4(&v8, &v6);
}

void NSItemProvider.registerCKShare(container:allowedSharingOptions:preparationHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 containerID];
  v10 = CKSharingContainerSupportsAdminParticipants(v7, v8, v9);

  if (v10)
  {
    [a2 setSupportAllowingAddedParticipantsToInviteOthers_];
  }

  v11 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(a1);
  sub_1883F4C5C(0, &qword_1EA90DF90, off_1E70B9FC0);
  swift_getObjCClassFromMetadata();
  sub_1883F7B88();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v34 = sub_188496644;
  v35 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v32 = sub_188495DC8;
  v33 = &unk_1EFA28CB0;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  v15 = sub_1883F9C90();
  [v15 v16];
  _Block_release(v13);
  sub_1883F4C5C(0, &qword_1EA90DF98, off_1E70BA0C0);
  swift_getObjCClassFromMetadata();
  sub_1883F7B88();
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v34 = sub_188495E68;
  v35 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F72B8();
  v32 = v18;
  v33 = &unk_1EFA28D00;
  v19 = _Block_copy(aBlock);
  v20 = v11;

  v21 = sub_1883F9C90();
  [v21 v22];
  _Block_release(v19);
  sub_1883F4C5C(0, &unk_1EA90DFA0, off_1E70BA588);
  swift_getObjCClassFromMetadata();
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = v20;
  v23[5] = v14;
  v34 = sub_18849602C;
  v35 = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F72B8();
  v32 = v24;
  v33 = &unk_1EFA28D50;
  v25 = _Block_copy(aBlock);
  v26 = v14;
  v27 = v20;

  v28 = sub_1883F9C90();
  [v28 v29];
  _Block_release(v25);
}

id sub_188495DC8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1884957EC, v4);

  return v5;
}

uint64_t sub_188495EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_18844E6FC(&unk_1EA90E010, &qword_1886F9EE0);
  swift_allocObject();
  v16 = sub_18850105C(sub_18849643C, v15);
  v17 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;

  v19 = a5;
  v20 = a6;
  sub_188453610();

  return 0;
}

uint64_t sub_188496038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_188496060, 0, 0);
}

uint64_t sub_188496060()
{
  v1 = v0[3];
  v0[7] = sub_1884FB764();
  v0[8] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_188496158;

  return v5();
}

uint64_t sub_188496158(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_188496368;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_188496280;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_188496280()
{
  v11 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  sub_1883F4C5C(0, &unk_1EA90DFA0, off_1E70BA588);
  v5 = v1;
  v6 = sub_188493E58(v5, v3, v4);
  v9 = v6;
  v10 = 0;
  v2(&v9, &v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_188496368()
{
  v9 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = _convertErrorToNSError(_:)();
  v4 = CKXPCSuitableError(v3);

  v7 = 0;
  v8 = v4;
  v2(&v7, &v8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_18849646C(uint64_t a1)
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
  v11[1] = sub_188496548;

  return sub_188496038(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_188496548()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t AuthenticatedSession.ResolvedUser.userRecordID.getter()
{
  v0 = type metadata accessor for AuthenticatedSession.ResolvedUser.ID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = AuthenticatedSession.ResolvedUser.id.getter();
  v5 = MEMORY[0x18CFD4960](v4);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  sub_188496784();
  if (qword_1EA90C198 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA90C1A0;
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  return CKRecordID.init(recordName:zoneID:)(v9, v8);
}

unint64_t sub_188496784()
{
  result = qword_1EA90CA70;
  if (!qword_1EA90CA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90CA70);
  }

  return result;
}

id Session.codeService(configuration:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1884A6844(a2, a3);
  v10 = MEMORY[0x18CFD5010](*a1, a1[1]);
  v11 = type metadata accessor for CKCodeServiceConfiguration(0);
  sub_188496924(a1 + *(v11 + 20), v8);
  v12 = type metadata accessor for URL();
  v14 = 0;
  if (sub_1883F971C(v8, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(*(v12 - 8) + 8))(v8, v12);
  }

  v16 = [v9 codeServiceWithName:v10 serviceInstanceURL:v14];

  return v16;
}

uint64_t sub_188496924(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CKCodeServiceConfiguration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CKCodeServiceConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CKCodeServiceConfiguration.serviceInstanceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CKCodeServiceConfiguration(0) + 20);

  return sub_188496924(v3, a1);
}

uint64_t type metadata accessor for CKCodeServiceConfiguration(uint64_t a1)
{
  result = qword_1EA90E028;
  if (!qword_1EA90E028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CKCodeServiceConfiguration.serviceInstanceURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CKCodeServiceConfiguration(0) + 20);

  return sub_188496AF0(a1, v3);
}

uint64_t sub_188496AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double static CKCodeServiceConfiguration.standard(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for CKCodeServiceConfiguration(0) + 20);
  v7 = type metadata accessor for URL();
  sub_1883F90F4(a3 + v6, 1, 1, v7);
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_188496C18(uint64_t a1)
{
  v2 = sub_1884970F4(&qword_1EA90E040, &protocol conformance descriptor for CKCodeServiceConfiguration);

  return MEMORY[0x1EEDF4148](a1, v2);
}

uint64_t CKCodeServiceConfiguration.propertyDescriptions.getter()
{
  v24 = type metadata accessor for PropertyDescription();
  v1 = *(v24 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v24);
  sub_1883F7100();
  v23 = v4 - v3;
  v5 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v12 = v11 - v10;
  v13 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v14 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v1 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1886F7400;
  v17 = *v0;
  v16 = v0[1];
  v26 = MEMORY[0x1E69E6158];
  v25[0] = v17;
  v25[1] = v16;

  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v18 = type metadata accessor for CKCodeServiceConfiguration(0);
  sub_188496924(v0 + *(v18 + 20), v7);
  if (sub_1883F971C(v7, 1, v8) == 1)
  {
    sub_18845C260(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v26 = v8;
    v19 = sub_188403664(v25);
    (*(v9 + 16))(v19, v12, v8);
    static OSLogPrivacy.auto.getter();
    v20 = v23;
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v15 = v21;
    (*(v9 + 8))(v12, v8);
    *(v15 + 16) = 2;
    (*(v2 + 32))(v15 + v14, v20, v24);
  }

  return v15;
}

void sub_188497020(uint64_t a1)
{
  sub_18849709C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18849709C(uint64_t a1)
{
  if (!qword_1EA90E038)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA90E038);
    }
  }
}

uint64_t sub_1884970F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKCodeServiceConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1884971A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  sub_188498AF0(a1, a2, a3);
  dispatch thunk of Session.anyContainer.getter();
  type metadata accessor for CloudCoreContainer();
  return swift_dynamicCastClassUnconditional();
}

uint64_t Session.shareParticipant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_188497240()
{
  sub_1883F78E0();
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_1886F79A0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  sub_18840376C(v4);

  return Session.shareParticipants(for:)(v2, v5, v6);
}

uint64_t sub_188497314()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v6 = *v2;
  sub_1883F7110();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {

    *(v4 + 80) = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_188497420()
{
  sub_1883F653C();
  v4 = sub_1883F8230();
  sub_18847E4C4(v4, v5);
  sub_1883FECC4();
  if (v3)
  {
    if ((v0 & 1) == 0)
    {
      sub_18840AFBC();
      sub_1883FA3A0();

      __asm { BRAA            X2, X16 }
    }

    *(v2 + 16) = v1;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v6 = *(v2 + 24);
    sub_1883F79A0();

    sub_1883F7C58();
    v7 = [v6 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1883FEA58();

    sub_18841477C(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188497550()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t Session.shareParticipants(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_1884975C4()
{
  sub_1883F7120();
  v0[6] = sub_1884A6844(v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v2 = sub_1883FE628(v1);

  return CKContainer.shareParticipants(for:)(v2);
}

uint64_t sub_188497660()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = sub_188405534();

    return v11(v10);
  }
}

uint64_t Session.shareMetadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_1884977A0()
{
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90E048, &qword_1886F9FA8);
  v2 = type metadata accessor for URL();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_1886F7400;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  sub_18840376C(v6);

  return Session.shareMetadatas(for:)(v5, v7, v8);
}

uint64_t sub_1884978F8()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v6 = *v2;
  sub_1883F7110();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {

    *(v4 + 88) = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_188497A04()
{
  sub_1883F653C();
  v4 = sub_1883F8230();
  sub_18847E4F0(v4, v5);
  sub_1883FECC4();
  if (v3)
  {
    if ((v0 & 1) == 0)
    {
      sub_18840AFBC();
      sub_1883FA3A0();

      __asm { BRAA            X2, X16 }
    }

    *(v2 + 16) = v1;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1883F79A0();

    sub_1883F7C58();
    sub_188498AF0(&qword_1EA90E050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18CFD5140](v6);

    sub_18841477C(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188497B58()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t Session.shareMetadatas(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_188497BCC()
{
  sub_1883F7120();
  v0[6] = sub_1884A6844(v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v2 = sub_1883FE628(v1);

  return CKContainer.shareMetadatas(for:)(v2);
}

uint64_t sub_188497C68()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = sub_188405534();

    return v11(v10);
  }
}

uint64_t sub_188497D90()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

uint64_t Session.shareMetadatas(for:invitationTokensByShareURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188497E08()
{
  sub_1883F7120();
  v0[7] = sub_1884A6844(v0[4], v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_188497EB0;
  v3 = v0[2];
  v2 = v0[3];

  return CKContainer.shareMetadatas(for:invitationTokensByShareURL:)(v3, v2);
}

uint64_t sub_188497EB0()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = sub_188405534();

    return v11(v10);
  }
}

uint64_t sub_188497FD8()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

uint64_t AuthenticatedSession.accept(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1883F7178();
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_188498048()
{
  sub_1883F78E0();
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1886F79A0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = sub_1883F97C0(v4);

  return AuthenticatedSession.accept(_:)(v5);
}

uint64_t sub_188498118()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v6 = *v2;
  sub_1883F7110();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {

    *(v4 + 64) = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_188498224()
{
  sub_1883F653C();
  v4 = sub_1883F8230();
  sub_18847E53C(v4, v5);
  sub_1883FECC4();
  if (v3)
  {
    if ((v0 & 1) == 0)
    {
      sub_18840AFBC();
      sub_1883FA3A0();

      __asm { BRAA            X2, X16 }
    }

    *(v2 + 16) = v1;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v6 = *(v2 + 24);
    sub_1883F79A0();

    sub_1883F7C58();
    v7 = [v6 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1883FEA58();

    sub_18841477C(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188498354()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_1884983C4()
{
  sub_1883F7120();
  sub_1883F8E54();
  *(v0 + 32) = sub_1884971A0(v1, v2, MEMORY[0x1E6994810]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v4 = sub_1883FE628(v3);

  return CKContainer.accept(_:)(v4);
}

uint64_t sub_18849847C()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = sub_188405534();

    return v11(v10);
  }
}

uint64_t sub_1884985A4()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

uint64_t AuthenticatedSession.decline(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1883F7178();
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_188498614()
{
  sub_1883F78E0();
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1886F79A0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = sub_1883F97C0(v4);

  return AuthenticatedSession.decline(_:)(v5);
}

uint64_t sub_1884986E4()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v6 = *v2;
  sub_1883F7110();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {

    *(v4 + 64) = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1884987F0()
{
  sub_1883F653C();
  v4 = sub_1883F8230();
  sub_18847E568(v4, v5);
  sub_1883FECC4();
  if (v3)
  {
    if (v0)
    {
      *(v2 + 16) = v1;
      sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    v6 = *(v2 + 24);
    sub_1883F79A0();

    sub_1883F7C58();
    v7 = [v6 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1883FEA58();

    sub_18841477C(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188498910()
{
  sub_1883F7120();
  sub_1883F8E54();
  *(v0 + 32) = sub_1884971A0(v1, v2, MEMORY[0x1E6994810]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v4 = sub_1883FE628(v3);

  return CKContainer.decline(_:)(v4);
}

uint64_t sub_1884989C8()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = sub_188405534();

    return v11(v10);
  }
}

uint64_t sub_188498AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AnonymousSession.publicCloudDatabase.getter()
{
  v0 = sub_18849716C();
  v1 = [v0 publicCloudDatabase];

  return v1;
}

id AuthenticatedSession.database(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188497138();
  v3 = [v2 options];

  [v3 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_188498C74();
  swift_dynamicCast();
  v4 = sub_188497138();
  v5 = sub_1884A6888(v8);

  v6 = [v5 databaseWithDatabaseScope_];
  return v6;
}

unint64_t sub_188498C74()
{
  result = qword_1EA90C180;
  if (!qword_1EA90C180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C180);
  }

  return result;
}

id CKDatabase.codeService(configuration:)(void *a1)
{
  v2 = v1;
  v4 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  *&v5 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v7 = v19 - v6;
  v8 = [v2 container];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x18CFD5010](*a1, a1[1]);
    v11 = [v2 databaseScope];
    v12 = type metadata accessor for CKCodeServiceConfiguration(0);
    sub_188499068(a1 + *(v12 + 20), v7, &qword_1EA90D240, &qword_1886F70B0);
    v13 = type metadata accessor for URL();
    v15 = 0;
    if (sub_1883F971C(v7, 1, v13) != 1)
    {
      URL._bridgeToObjectiveC()(v14);
      v15 = v16;
      (*(*(v13 - 8) + 8))(v7, v13);
    }

    v17 = [v9 codeServiceWithName:v10 databaseScope:v11 serviceInstanceURL:v15];

    return v17;
  }

  else
  {
    type metadata accessor for CKError(0);
    v19[1] = 170;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }
}

unint64_t sub_188498E9C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_18844E6FC(&qword_1EA90D888, &unk_1886F89D0);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_188499068(v6, &v15, &qword_1EA90E060, &qword_1886F9FE8);
    v7 = v15;
    v8 = v16;
    result = sub_188498FF0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_188419138(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_188498FF0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1884191CC(a1, a2, v4);
}

uint64_t sub_188499068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18844E6FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_188499108(uint64_t a1)
{
  v2 = sub_188499334();

  return MEMORY[0x1EEDF4148](a1, v2);
}

uint64_t CKDatabaseConfiguration.propertyDescriptions.getter()
{
  v0 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  type metadata accessor for PropertyDescription();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1886F7400;
  type metadata accessor for Scope(0);
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v1;
}

unint64_t sub_188499284()
{
  result = qword_1EA90E068;
  if (!qword_1EA90E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E068);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKDatabaseConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CKDatabaseConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_188499334()
{
  result = qword_1EA90E070;
  if (!qword_1EA90E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E070);
  }

  return result;
}

uint64_t CKSessionAcquiredInfo.anySessionAcquiredInfo.getter()
{
  v2 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v1 + v2, v4);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for AnySessionAcquiredInfo();
  return swift_dynamicCast();
}

uint64_t sub_18849941C(uint64_t a1)
{
  v2 = type metadata accessor for AnySessionAcquiredInfo();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(v5);
}

uint64_t CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(uint64_t a1)
{
  type metadata accessor for AnySessionAcquiredInfo();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F9240(v9, v15);
  v4(v10);
  v17 = v2;
  v18 = sub_1883F8854(&qword_1EA90C4C0);
  v19 = sub_1883F9CA4(&qword_1EA90C4D0);
  v20 = sub_1883F72CC(&qword_1EA90C4C8);
  v11 = sub_188403664(v16);
  (v4)(v11, v3, v2);
  v12 = *(v7 + 8);
  v12(a1, v2);
  v12(v3, v2);
  v13 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v13));
  sub_188499B68(v16, v1 + v13);
  return swift_endAccess();
}

void (*CKSessionAcquiredInfo.anySessionAcquiredInfo.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for AnySessionAcquiredInfo();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
  return sub_188499718;
}

void sub_188499718(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionAcquiredInfo.init(_:)(uint64_t a1)
{
  type metadata accessor for AnySessionAcquiredInfo();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F9240(v9, v15);
  v4(v10);
  v18 = v2;
  v19 = sub_1883F8854(&qword_1EA90C4C0);
  v20 = sub_1883F9CA4(&qword_1EA90C4D0);
  v21 = sub_1883F72CC(&qword_1EA90C4C8);
  v11 = sub_188403664(v17);
  (v4)(v11, v3, v2);
  sub_188445B70(v17, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CKSecureCodingBox();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_1883FE944(v17);
  v13 = *(v7 + 8);
  v13(a1, v2);
  v13(v3, v2);
  return v12;
}

id CKSessionAcquiredInfo.init(coder:)(void *a1)
{
  v2 = type metadata accessor for AnySessionAcquiredInfo();
  v3 = sub_1883F8854(&qword_1EA90C4C0);
  v4 = sub_1883F9CA4(&qword_1EA90C4D0);
  v5 = sub_1883F72CC(&qword_1EA90C4C8);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionAcquiredInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188499B68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

void sub_188499C08()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v108 = v5;
  v109 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  sub_1883F8AE4(v10);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  sub_188403780();
  v90 = v12;
  sub_1883FEC2C();
  v101 = type metadata accessor for UUID();
  sub_1883F70DC();
  v91 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v89 = v16 - v15;
  sub_1883FEC2C();
  v17 = type metadata accessor for SessionID();
  sub_1883F70DC();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F7100();
  v87 = v22 - v21;
  sub_1883FEC2C();
  type metadata accessor for Logger();
  sub_1883F70DC();
  v94 = v24;
  v95 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F7100();
  v92 = v26 - v25;
  v27 = sub_1883FEC2C();
  _s5StateOMa(v27);
  sub_1883F7158();
  MEMORY[0x1EEE9AC00](v28);
  sub_1883F926C();
  v99 = v29;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - v31;
  v33 = (v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  v107 = v34;
  swift_storeEnumTagMultiPayload();
  *v33 = 0;
  v93 = sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  v35 = *(v93 + 28);
  v36 = sub_18844E6FC(&qword_1EA90E0D8, &qword_1886FA1A8);
  sub_1883F8AE4(v36);
  bzero(v33 + v35, *(v37 + 64));
  v88 = v32;
  sub_18849DF54(v32, v33 + v35);
  v38 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_acquisitionStreamContinuation;
  v39 = sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
  v98 = *(v39 - 8);
  (*(v98 + 16))(v1 + v38, v109, v39);
  v106 = v19;
  v86 = *(v19 + 16);
  v86(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v9, v17);
  v40 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionConfiguration;
  v41 = type metadata accessor for AnySessionConfiguration();
  v96 = *(v41 - 8);
  v97 = v41;
  v42 = *(v96 + 16);
  v103 = v7;
  v42(v1 + v40, v7);
  sub_18847E0A0(v108, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_previousInvalidationContext, &unk_1EA90E170, &qword_1886FA450);
  *(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol) = v3;
  sub_18844E6FC(&unk_1EA90E0E0, &unk_1886FA1B0);
  v110 = 0;
  v111 = 0xE000000000000000;
  v102 = v3;
  swift_unknownObjectRetain();
  _StringGuts.grow(_:)(23);
  sub_1883F7C88();
  sub_18849DEB0(v43, v44, MEMORY[0x1E69948E8]);
  v104 = v9;
  v105 = v17;
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v46;

  v110 = v45;
  v111 = v47;
  MEMORY[0x18CFD5140](0xD000000000000015, 0x8000000188700460);
  *(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff) = ExponentialBackoff<>.init(label:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  swift_allocObject();
  swift_weakInit();
  v100 = v39;
  v48 = v92;
  CloudCoreThrowingStream.Continuation.onTermination.setter();
  CCLog.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v110 = v52;
    *v51 = 136315138;
    v53 = v87;
    v54 = v105;
    v86(v87, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v105);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v106 + 8))(v53, v54);
    v58 = sub_1883FE340(v55, v57, &v110);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_1883EA000, v49, v50, "%s: starting acquisition", v51, 0xCu);
    sub_1883FE944(v52);
    sub_1883F7B60();
    sub_1883F7B60();

    (*(v94 + 8))(v48, v95);
  }

  else
  {

    (*(v94 + 8))(v48, v95);
    v54 = v105;
  }

  v59 = (v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
  v60 = *(v93 + 28);
  v61 = v99;
  sub_18849DDF8(v59 + v60, v99);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = v106;
  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_7;
  }

  v94 = v60;
  v95 = v59;
  if (EnumCaseMultiPayload == 2)
  {

    v64 = v89;
    UUID.init()();
    sub_18849A920();
    v66 = v65;
    v67 = _s5StateO17ListeningToDaemonVMa(0);
    v68 = v91;
    v69 = v88;
    (*(v91 + 16))(v88 + v67[5], v64, v101);
    type metadata accessor for SessionReadinessError();
    v70 = v90;
    sub_1883F9A2C();
    sub_1883F90F4(v71, v72, v73, v74);
    v75 = v67[6];
    sub_1883F9A2C();
    sub_1883F90F4(v76, v77, v78, v79);
    v80 = v67[7];
    *v69 = v66;

    sub_18849DFC0(v70, v69 + v75);
    *(v69 + v80) = 0;
    swift_storeEnumTagMultiPayload();
    v59 = v95;
    sub_1884A0838(v69);

    (*(v68 + 8))(v64, v101);
    sub_18849DEF8(v69);

    v54 = v105;
LABEL_7:
    os_unfair_lock_unlock(v59);
    swift_unknownObjectRelease();
    sub_18845B1B0(v108, &unk_1EA90E170, &qword_1886FA450);
    (*(v96 + 8))(v103, v97);
    (*(v63 + 8))(v104, v54);
    (*(v98 + 8))(v109, v100);
    sub_1883F8178();
    return;
  }

  v110 = 0;
  v111 = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
  sub_1883FF5E4();
  MEMORY[0x18CFD5140](0xD00000000000002DLL, 0x80000001887004A0);
  sub_1883FF5E4();
  v81 = v95;
  _print_unlocked<A, B>(_:_:)();
  v82 = v110;
  v83 = v111;
  sub_18849DE5C();
  swift_willThrowTypedImpl();
  sub_18849DEF8(v61);
  swift_allocError();
  *v84 = v82;
  v84[1] = v83;

  os_unfair_lock_unlock(v81);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_18849A554(uint64_t a1, uint64_t a2)
{
  v2 = _s5StateOMa(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SessionID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v31 = v6;
    v32 = v10;
    CCLog.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v17;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v17 = 136315138;
      v18 = v31;
      (*(v31 + 16))(v8, v14 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v5);
      sub_18849DEB0(&qword_1EA90C2E0, MEMORY[0x1E69948C8], MEMORY[0x1E69948E8]);
      v27 = v16;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v9;
      v21 = v20;
      (*(v18 + 8))(v8, v5);
      v22 = sub_1883FE340(v19, v21, &v33);

      v23 = v28;
      *(v28 + 1) = v22;
      _os_log_impl(&dword_1883EA000, v15, v27, "%s: cancelling acquisition due to continuation termination", v23, 0xCu);
      v24 = v30;
      sub_1883FE944(v30);
      MEMORY[0x18CFD7E80](v24, -1, -1);
      MEMORY[0x18CFD7E80](v23, -1, -1);

      (*(v32 + 8))(v12, v29);
    }

    else
    {

      (*(v32 + 8))(v12, v9);
    }

    v25 = (v14 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
    os_unfair_lock_lock((v14 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
    sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
    swift_storeEnumTagMultiPayload();
    sub_1884A0838(v4);
    sub_18849DEF8(v4);
    os_unfair_lock_unlock(v25);
  }

  return result;
}

void sub_18849A920()
{
  sub_1883F8AF0();
  v1 = v0;
  v53 = v2;
  type metadata accessor for UUID();
  sub_1883F70DC();
  v56 = v4;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = v5;
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v6);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v7);
  sub_188403780();
  v54 = v8;
  sub_1883FEC2C();
  v51 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v49 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  v50 = v12 - v11;
  sub_1883FEC2C();
  v48 = type metadata accessor for SessionID();
  sub_1883F70DC();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  v18 = v17 - v16;
  v19 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  sub_1883F8AE4(v19);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v48 - v30;
  sub_18847E0A0(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_previousInvalidationContext, v22, &unk_1EA90E170, &qword_1886FA450);
  if (sub_1883F971C(v22, 1, v23) == 1)
  {
    sub_18845B1B0(v22, &unk_1EA90E170, &qword_1886FA450);
    v32 = 0;
  }

  else
  {
    (*(v25 + 32))(v31, v22, v23);
    (*(v25 + 16))(v28, v31, v23);
    v33 = objc_allocWithZone(type metadata accessor for CKSessionInvalidationContext());
    v32 = CKSessionInvalidationContext.init(_:)(v28);
    (*(v25 + 8))(v31, v23);
  }

  (*(v14 + 16))(v18, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v48);
  v34 = objc_allocWithZone(type metadata accessor for CKSessionID());
  v35 = CKSessionID.init(_:)(v18);
  v36 = v50;
  (*(v49 + 16))(v50, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionConfiguration, v51);
  v37 = objc_allocWithZone(type metadata accessor for CKSessionConfiguration());
  v38 = CKSessionConfiguration.init(_:)(v36);
  v39 = [objc_allocWithZone(CKSessionAcquisitionSetupInfo) initWithCKSessionID:v35 ckSessionConfiguration:v38 ckPreviousSessionInvalidationContext:v32 testDeviceReferenceProtocol:*(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol)];

  v40 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v54, 1, 1, v40);
  v42 = v55;
  v41 = v56;
  v43 = v57;
  (*(v56 + 16))(v55, v53, v57);
  v44 = (*(v41 + 80) + 40) & ~*(v41 + 80);
  v45 = (v52 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v1;
  (*(v41 + 32))(&v46[v44], v42, v43);
  *&v46[v45] = v39;

  v47 = v39;
  sub_188453610();

  sub_1883F8178();
}

uint64_t sub_18849AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18849AE48, 0, 0);
}

uint64_t sub_18849AE48()
{
  sub_1883F78E0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v0 + 40) = v2;
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  *v4 = v0;
  v4[1] = sub_18849AF4C;

  return MEMORY[0x1EEDF4130](v0 + 56, 0, 0, &unk_1886FA1D8, v2, v5);
}

uint64_t sub_18849AF4C()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_18849E5BC;
  }

  else
  {

    v4 = sub_1883F9CC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18849B088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18849B0AC, 0, 0);
}

uint64_t sub_18849B0AC()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  *v3 = v0;
  v3[1] = sub_18849B1B8;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD00000000000001ALL, 0x80000001887004F0, sub_18849E2DC, v2, v4);
}

uint64_t sub_18849B1B8()
{
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_18849B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v55 = a1;
  v59 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  v66 = *(v59 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v46 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  v67 = *(v11 - 8);
  v64 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v19 = v17 + 16;
  v18 = *(v17 + 16);
  v53 = a3;
  v47 = v11;
  v18(&v45 - v15, a3, v11, v14);
  v54 = v18;
  v56 = v19;
  v20 = objc_allocWithZone(type metadata accessor for CKSessionAcquirerXPCProxy(0));

  v57 = a2;
  v48 = v16;
  v61 = sub_1884A15F0(v21, v16);
  v51 = swift_allocObject();
  swift_weakInit();
  v22 = v66;
  v52 = *(v66 + 16);
  v23 = a1;
  v24 = v59;
  v52(v10, v23, v59);
  (v18)(v16, a3, v11);
  v25 = *(v22 + 80);
  v26 = v22;
  v27 = (v25 + 16) & ~v25;
  v28 = (v65 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v67 + 80);
  v30 = (v29 + v28 + 8) & ~v29;
  v50 = v25 | v29;
  v31 = swift_allocObject();
  v49 = *(v26 + 32);
  v66 = v26 + 32;
  v49(v31 + v27, v46, v24);
  v58 = v31;
  *(v31 + v28) = v51;
  v32 = *(v67 + 32);
  v67 += 32;
  v33 = v47;
  v32(v31 + v30, v48, v47);
  v34 = v62;
  v52(v62, v55, v24);
  v35 = v60;
  v54(v60, v53, v33);
  v36 = (v25 + 24) & ~v25;
  v37 = (v65 + v29 + v36) & ~v29;
  v38 = swift_allocObject();
  *(v38 + 16) = v57;
  v49(v38 + v36, v34, v24);
  v32(v38 + v37, v35, v33);
  v39 = objc_opt_self();

  v40 = v61;

  v41 = [v39 sharedXPCConnection];
  v42 = swift_allocObject();
  v43 = v58;
  *(v42 + 16) = sub_18849E2E8;
  *(v42 + 24) = v43;
  *(v42 + 32) = 0;
  *(v42 + 40) = sub_18849E3BC;
  *(v42 + 48) = v38;
  aBlock[4] = sub_18849E494;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18849CCDC;
  aBlock[3] = &unk_1EFA28F38;
  v44 = _Block_copy(aBlock);

  [v41 getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:v63 exportedProxy:v40 synchronous:0 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_18849B830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SessionID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), (Strong = swift_weakLoadStrong()) == 0))
  {
    LOBYTE(v41) = 0;
    sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  }

  else
  {
    v15 = Strong;
    v39 = a2;
    CCLog.getter();

    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = a4;
      v20 = v19;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v20 = 136315394;
      (*(v8 + 16))(v10, v15 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v7);
      sub_18849DEB0(&qword_1EA90C2E0, MEMORY[0x1E69948C8], MEMORY[0x1E69948E8]);
      v35 = v18;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v17;
      v23 = v22;
      (*(v8 + 8))(v10, v7);
      v24 = sub_1883FE340(v21, v23, &v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2112;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      v27 = v36;
      *v36 = v26;
      v28 = v34;
      _os_log_impl(&dword_1883EA000, v34, v35, "%s: daemon error while acquiring session: %@", v20, 0x16u);
      sub_18845B1B0(v27, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v27, -1, -1);
      v29 = v37;
      sub_1883FE944(v37);
      MEMORY[0x18CFD7E80](v29, -1, -1);
      v30 = v20;
      a4 = v38;
      MEMORY[0x18CFD7E80](v30, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v13, v11);

    ExponentialBackoff.incrementBackoffCount()();

    v31 = (v15 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
    os_unfair_lock_lock((v15 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
    v32 = *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
    swift_retain_n();
    sub_18849E8C0(a1, a4, v31 + v32, v15);

    os_unfair_lock_unlock(v31);

    LOBYTE(v41) = 0;
    sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  }

  return CheckedContinuation.resume(returning:)();
}

void sub_18849BCEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v4 = type metadata accessor for UUID();
  v21 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, v23, v7);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v5 + 80) + v14 + 8) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v13, v11, v7);
  *(v17 + v14) = v12;
  (*(v5 + 32))(v17 + v15, v22, v21);
  v18 = v25;
  *(v17 + v16) = v25;
  aBlock[4] = sub_18849E4A4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18849C9D8;
  aBlock[3] = &unk_1EFA28FD8;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v18 acquireSessionWithCompletionHandler_];
  _Block_release(v19);
}

uint64_t sub_18849BFC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void *a5)
{
  v80 = a5;
  v78 = a4;
  v83 = a2;
  v6 = sub_18844E6FC(&qword_1EA90E118, &qword_1886FA218);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v62 - v7;
  v72 = sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v62 - v8;
  v73 = sub_18844E6FC(&qword_1EA90E0B0, &qword_1886FA178);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v62 - v9;
  v81 = type metadata accessor for AnySessionAcquiredInfo();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v70 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = sub_18844E6FC(&unk_1EA90E120, &unk_1886FA220);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v62 - v18;
  v19 = type metadata accessor for SessionID();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v65 = v20;
      v68 = v14;
      v82 = Strong;

      ExponentialBackoff.reset()();

      CCLog.getter();

      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = v82;
      v31 = v29;
      v32 = static os_log_type_t.default.getter();

      v66 = v32;
      v69 = v31;
      v33 = os_log_type_enabled(v31, v32);
      v67 = v10;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v84 = v64;
        *v34 = 136315394;
        v35 = v65;
        (*(v65 + 16))(v22, v30 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v19);
        sub_18849DEB0(&qword_1EA90C2E0, MEMORY[0x1E69948C8], MEMORY[0x1E69948E8]);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v24;
        v37 = v28;
        v39 = v38;
        (*(v35 + 8))(v22, v19);
        v40 = sub_1883FE340(v36, v39, &v84);

        *(v34 + 4) = v40;
        v30 = v82;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v37;
        v41 = v62;
        *v62 = v37;
        v42 = v37;
        v43 = v69;
        _os_log_impl(&dword_1883EA000, v69, v66, "%s: acquired info: %@", v34, 0x16u);
        sub_18845B1B0(v41, &qword_1EA90DC70, &unk_1886FA190);
        MEMORY[0x18CFD7E80](v41, -1, -1);
        v44 = v64;
        sub_1883FE944(v64);
        MEMORY[0x18CFD7E80](v44, -1, -1);
        MEMORY[0x18CFD7E80](v34, -1, -1);

        (*(v63 + 8))(v26, v23);
      }

      else
      {

        (*(v24 + 8))(v26, v23);
      }

      v45 = v81;
      v46 = v68;
      v47 = (v30 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
      os_unfair_lock_lock((v30 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
      sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
      CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
      v48 = v79;
      sub_18849EF68(v46, v78, &v85, v79);
      v49 = v77;
      v50 = *(v77 + 8);
      v50(v46, v45);
      os_unfair_lock_unlock(v47);
      v51 = v76;
      sub_18847E0A0(v48, v76, &unk_1EA90E120, &unk_1886FA220);
      v52 = _s5StateO22NoteAcquiredInfoActionOMa(0);
      if (sub_1883F971C(v51, 1, v52) != 1)
      {
        v53 = *(v49 + 32);
        v78 = v50;
        v54 = v70;
        v53(v70, v51, v45);
        (*(v49 + 16))(v74, v54, v45);
        swift_storeEnumTagMultiPayload();
        sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
        v55 = v67;
        CloudCoreThrowingStream.Continuation.yield(_:)();
        (*(v71 + 8))(v55, v73);
        v56 = type metadata accessor for CloudCoreError();
        v57 = v75;
        sub_1883F90F4(v75, 1, 1, v56);
        CloudCoreThrowingStream.Continuation.finish(throwing:)();
        sub_18845B1B0(v57, &qword_1EA90E118, &qword_1886FA218);
        v78(v54, v81);
      }

      v58 = v80;
      ObjectType = swift_getObjectType();
      v84 = v58;
      sub_18849C900(&v84, nullsub_4, 0, ObjectType, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v60);

      sub_18845B1B0(v48, &unk_1EA90E120, &unk_1886FA220);
    }
  }

  LOBYTE(v84) = 0;
  sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_18849C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void sub_18849C9E0(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, char a5, void (*a6)(void *))
{
  if (a2)
  {
    v9 = a2;
    a3(a2);
  }

  else
  {
    sub_18847E0A0(a1, &v22, &qword_1EA90DD10, &qword_1886F8770);
    if (v23)
    {
      sub_188419138(&v22, &aBlock);
      sub_18844E6FC(&qword_1EA90E108, &qword_1886FA208);
      swift_dynamicCast();
      v12 = v21;
      if (a5)
      {
        v19 = a3;
        v20 = a4;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v17 = sub_18849E5B8;
        v18 = &unk_1EFA28F88;
        v13 = _Block_copy(&aBlock);

        v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
      }

      else
      {
        v19 = a3;
        v20 = a4;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v17 = sub_18849E5B8;
        v18 = &unk_1EFA28F60;
        v13 = _Block_copy(&aBlock);

        v14 = [v12 remoteObjectProxyWithErrorHandler_];
      }

      v15 = v14;
      _Block_release(v13);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_188405DF8(&aBlock, &v22);
      sub_18844E6FC(&qword_1EA90E110, &qword_1886FA210);
      swift_dynamicCast();
      a6(v21);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1883FE944(&aBlock);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18849CC70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_18849CCDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_188419138(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_18845B1B0(v10, &qword_1EA90DD10, &qword_1886F8770);
}

void sub_18849CD8C()
{
  sub_1883F8AF0();
  v1 = v0;
  v76 = v2;
  v4 = v3;
  v66 = sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  sub_1883F7930();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v5);
  sub_188403780();
  v68 = v6;
  v67 = sub_18844E6FC(&qword_1EA90E0B0, &qword_1886FA178);
  sub_1883F70DC();
  v65 = v7;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  sub_188403780();
  v64 = v9;
  v10 = sub_18844E6FC(&qword_1EA90E0B8, &unk_1886FA180);
  v11 = sub_1883F8AE4(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1883F926C();
  v74 = v12;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  v16 = type metadata accessor for SessionReadinessError();
  sub_1883F70DC();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F926C();
  v63 = v20;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57[-v22];
  type metadata accessor for Logger();
  sub_1883F70DC();
  v70 = v25;
  v71 = v24;
  MEMORY[0x1EEE9AC00](v24);
  sub_1883F7100();
  v28 = v27 - v26;
  ExponentialBackoff.reset()();
  CCLog.getter();
  v29 = *(v18 + 16);
  v75 = v4;
  v29(v23, v4, v16);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v77 = v18;
  v72 = v18 + 16;
  v73 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v69 = v1;
    v34 = v33;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v78 = v60;
    *v34 = 136315394;
    v58 = v31;
    type metadata accessor for SessionID();
    v61 = v15;
    sub_1883F7C88();
    sub_18849DEB0(v35, v36, MEMORY[0x1E69948E8]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = sub_1883FE340(v37, v38, &v78);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2112;
    sub_18849DEB0(&qword_1EA90C2F8, MEMORY[0x1E6994830], MEMORY[0x1E6994858]);
    swift_allocError();
    v29(v40, v23, v16);
    v41 = _swift_stdlib_bridgeErrorToNSError();
    v42 = sub_1883F8BA4();
    v43(v42);
    *(v34 + 14) = v41;
    v44 = v59;
    *v59 = v41;
    v15 = v61;
    _os_log_impl(&dword_1883EA000, v30, v58, "%s: noting session readiness error %@", v34, 0x16u);
    sub_18845B1B0(v44, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v60);
    sub_1883F7B60();
    v1 = v69;
    sub_1883F7B60();
  }

  else
  {

    v45 = sub_1883F8BA4();
    v46(v45);
  }

  (*(v70 + 8))(v28, v71);
  v47 = v16;
  v48 = (v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
  sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  sub_18849F584(v75, v76, &v79, v15);
  os_unfair_lock_unlock(v48);
  v49 = v74;
  sub_18847E0A0(v15, v74, &qword_1EA90E0B8, &unk_1886FA180);
  v50 = _s5StateO31NoteSessionReadinessErrorActionOMa(0);
  v51 = sub_1883F971C(v49, 1, v50);
  v52 = v73;
  if (v51 != 1)
  {
    v53 = v63;
    (*(v77 + 32))(v63, v49, v47);
    v54 = v15;
    v52(v68, v53, v47);
    swift_storeEnumTagMultiPayload();
    sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
    v55 = v64;
    CloudCoreThrowingStream.Continuation.yield(_:)();
    v56 = v55;
    v15 = v54;
    (*(v65 + 8))(v56, v67);
    v62(v53, v47);
  }

  sub_18845B1B0(v15, &qword_1EA90E0B8, &unk_1886FA180);
  sub_1883F8178();
}

uint64_t sub_18849D404()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_acquisitionStreamContinuation;
  sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
  sub_1883F7158();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID;
  type metadata accessor for SessionID();
  sub_1883F7158();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionConfiguration;
  type metadata accessor for AnySessionConfiguration();
  sub_1883F7158();
  (*(v6 + 8))(v0 + v5);
  sub_18845B1B0(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_previousInvalidationContext, &unk_1EA90E170, &qword_1886FA450);
  swift_unknownObjectRelease();

  v7 = v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex;
  v8 = sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  sub_18849DEF8(v7 + *(v8 + 28));
  return v0;
}

uint64_t sub_18849D538()
{
  sub_18849D404();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CKSessionAcquirer(uint64_t a1)
{
  result = qword_1EA90C3E0;
  if (!qword_1EA90C3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18849D5E4(uint64_t a1)
{
  sub_18849D7D8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SessionID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AnySessionConfiguration();
      if (v3 <= 0x3F)
      {
        sub_18849D890(319, &qword_1EA90C488, MEMORY[0x1E6994898], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_18849D890(319, &qword_1EA90C530, _s5StateOMa, MEMORY[0x1E69E8300]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_18849D7D8(uint64_t a1)
{
  if (!qword_1EA90C520)
  {
    sub_18844E798(&qword_1EA90E088, &unk_1886FA520);
    type metadata accessor for CloudCoreError();
    sub_18849DEB0(&qword_1EA90C500, MEMORY[0x1E6994790], MEMORY[0x1E6994798]);
    v1 = type metadata accessor for CloudCoreThrowingStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA90C520);
    }
  }
}

void sub_18849D890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_18849D9A0()
{
  sub_1883F8AF0();
  v27 = type metadata accessor for PropertyDescription();
  v1 = *(v27 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v27);
  sub_1883F926C();
  v29 = v3;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v5;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v26 - v7;
  sub_1883FEC2C();
  v8 = type metadata accessor for OSLogPrivacy();
  v9 = sub_1883F8AE4(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v10 = *(v1 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1886F8960;
  ObjectType = type metadata accessor for SessionID();
  sub_188403664(v30);
  sub_1883F7930();
  (*(v13 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  ObjectType = type metadata accessor for AnySessionConfiguration();
  sub_188403664(v30);
  sub_1883F7930();
  (*(v14 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v15 = *(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol);
  if (v15)
  {
    ObjectType = swift_getObjectType();
    v30[0] = v15;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v16 = v26;
    PropertyDescription.init(_:_:privacy:)();
    sub_1883F9A2C();
    sub_1884772EC();
    v12 = v17;
    swift_unknownObjectRelease();
    *(v12 + 16) = 3;
    v18 = v27;
    (*(v2 + 32))(v12 + v11 + 2 * v10, v16, v27);
  }

  else
  {
    v18 = v27;
  }

  v19 = (v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  os_unfair_lock_lock(v19);
  v20 = *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
  ObjectType = _s5StateOMa(0);
  v21 = sub_188403664(v30);
  sub_18849DDF8(v19 + v20, v21);
  static OSLogPrivacy.auto.getter();
  v22 = v28;
  PropertyDescription.init(_:_:privacy:)();
  os_unfair_lock_unlock(v19);
  v23 = v29;
  (*(v2 + 16))(v29, v22, v18);
  v24 = *(v12 + 16);
  if (v24 >= *(v12 + 24) >> 1)
  {
    sub_1883F9A2C();
    sub_1884772EC();
    v12 = v25;
  }

  (*(v2 + 8))(v22, v18);
  *(v12 + 16) = v24 + 1;
  (*(v2 + 32))(v12 + v11 + v24 * v10, v23, v18);
  sub_1883F8178();
}

uint64_t sub_18849DDF8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18849DE5C()
{
  result = qword_1EA90E0C0;
  if (!qword_1EA90E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E0C0);
  }

  return result;
}

uint64_t sub_18849DEB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18849DEF8(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18849DF54(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18849DFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18849E030()
{
  v2 = type metadata accessor for UUID();
  sub_1883F8620(v2);
  v5 = *(v0 + 32);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_18849E14C;
  v8 = sub_1883F97D4();

  return sub_18849AE24(v8, v9, v10, v5, v11, v6);
}

uint64_t sub_18849E14C()
{
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_18849E238()
{
  sub_1883F78E0();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18849E14C;
  v4 = sub_1883F97D4();

  return sub_18849B088(v4, v5, v6, v2);
}

uint64_t sub_18849E2E8(void *a1)
{
  v4 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F8620(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_188400828();
  sub_1883F8AE4(v7);
  v9 = *(v1 + v2);
  v10 = v1 + ((v2 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_18849B830(a1, v1 + v6, v9, v10);
}

void sub_18849E3BC(void *a1)
{
  v3 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F8620(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for UUID();
  sub_1883F8AE4(v8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  sub_18849BCEC(a1, v10, v1 + v5, v11);
}

uint64_t sub_18849E4A4(void *a1)
{
  v4 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F8620(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_188400828();
  sub_1883F8620(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v2 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v13 = *(v1 + v2);
  v14 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18849BFC8(a1, v1 + v6, v13, (v1 + v12), v14);
}

uint64_t sub_18849E5E8(uint64_t a1)
{
  result = _s5StateO17ListeningToDaemonVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AnySessionAcquiredInfo();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_18849E6A4(uint64_t a1)
{
  sub_18849E758();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_18849E7BC(319);
      if (v3 <= 0x3F)
      {
        sub_18849E814(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18849E758()
{
  if (!qword_1EA90C3A0)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90C3A0);
    }
  }
}

void sub_18849E7BC(uint64_t a1)
{
  if (!qword_1EA90C4D8)
  {
    type metadata accessor for SessionReadinessError();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA90C4D8);
    }
  }
}

void sub_18849E814(uint64_t a1)
{
  if (!qword_1EA90C310)
  {
    sub_18844E798(&qword_1EA90E3D0, &qword_1886F75C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA90C310);
    }
  }
}

uint64_t sub_18849E8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a2;
  v86 = a4;
  v76 = a1;
  type metadata accessor for Logger();
  sub_1883F70DC();
  v79 = v9;
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v85 = v11 - v10;
  sub_1883FEC2C();
  type metadata accessor for UUID();
  sub_1883F70DC();
  v82 = v13;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F8844();
  sub_1883FA3D4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F8BB8();
  v74 = v15;
  v16 = sub_1883FEC2C();
  v17 = _s5StateO17ListeningToDaemonVMa(v16);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F8844();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  sub_188400848();
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F8BB8();
  v75 = v24;
  v25 = sub_1883FEC2C();
  v26 = _s5StateOMa(v25);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v27);
  sub_1883F8844();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v78 = &v74 - v32;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F823C();
  MEMORY[0x1EEE9AC00](v34);
  sub_1883FE63C();
  v36 = v35;
  v88 = v37;
  sub_1884A11A0(a3, v37, v35);
  v77 = a3;
  sub_1884A11A0(a3, v6, v36);
  v81 = v26;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_6;
    case 2u:
      sub_1884052B8();
      sub_1883FDA90();
      MEMORY[0x18CFD5140](v4 | 0x26, 0x80000001887005F0);
      sub_1883F97E8();
      _print_unlocked<A, B>(_:_:)();
      sub_18849DE5C();
      swift_willThrowTypedImpl();
      sub_1884A11FC(v88, _s5StateOMa);
      sub_1884A11FC(v6, _s5StateOMa);

      return sub_1883F7EE0();
    case 3u:
      goto LABEL_7;
    default:
      v38 = sub_1883F79C0();
      sub_1884A11A0(v38, v4, v39);
      if (static UUID.== infix(_:_:)())
      {
        v40 = v75;
        sub_1884A1254(v4, v75);
        sub_18840AFD0();
        sub_1884A11FC(v6, v41);
        sub_1884A11A0(v40, v21, v4);
        v42 = v74;
        UUID.init()();
        (*(v82 + 40))(&v21[*(v17 + 20)], v42, v83);
        sub_18849A920();
        v44 = v43;

        *v21 = v44;
        v45 = *(v17 + 28);
        v46 = *&v21[v45];
        v47 = v76;
        v48 = v76;

        *&v21[v45] = v47;
        v49 = v78;
        sub_1884A11A0(v21, v78, v4);
        swift_storeEnumTagMultiPayload();
        v50 = v77;
        sub_1884A0838(v49);
        sub_1883F72F0();
        sub_1884A11FC(v49, v51);
        sub_1884A11FC(v40, v4);
        sub_1884A11FC(v88, v50);
        v52 = sub_1883F8418();
        sub_1884A11FC(v52, v53);
      }

      else
      {
        v36 = _s5StateO17ListeningToDaemonVMa;
        sub_1884A11FC(v4, _s5StateO17ListeningToDaemonVMa);
LABEL_6:
        sub_1884A11FC(v6, v36);
LABEL_7:
        v54 = v85;
        CCLog.getter();
        v56 = v82;
        v55 = v83;
        (*(v82 + 16))(v5, v84, v83);
        sub_1883FA0F8();
        v57 = v88;
        sub_1884A11A0(v88, v30, v58);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v59, v60))
        {
          sub_1883FD778();
          v61 = v55;
          v62 = swift_slowAlloc();
          sub_1883FB53C();
          v84 = swift_slowAlloc();
          v87 = v84;
          *v62 = 136315394;
          sub_1883F9280();
          sub_1884A05C8(v63, v64, MEMORY[0x1E69695E0]);
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v56 + 8))(v5, v61);
          v65 = sub_1883F7EE0();
          v4 = sub_1883FE340(v65, v66, v67);

          *(v62 + 4) = v4;
          *(v62 + 12) = 2080;
          sub_1883F8878();
          v68 = v78;
          sub_1884A11A0(v30, v78, v69);
          String.init<A>(describing:)();
          sub_1883FE2DC();
          v70 = sub_1883FE340(v68, v5, &v87);

          *(v62 + 14) = v70;
          _os_log_impl(&dword_1883EA000, v59, v60, "CKSessionAcquirer.State: dropping acquired info event from outdated task %s vs. %s", v62, 0x16u);
          sub_18840AD58();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();

          (*(v79 + 8))(v85, v80);
          v71 = v88;
        }

        else
        {

          sub_1883F8878();
          sub_1884A11FC(v30, v72);
          (*(v56 + 8))(v5, v55);
          (*(v79 + 8))(v54, v80);
          v71 = v57;
        }

        sub_1884A11FC(v71, v4);
      }

      return sub_1883F7EE0();
  }
}

uint64_t sub_18849EF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v68 = a3;
  v74 = a2;
  v6 = v5;
  v73 = a4;
  type metadata accessor for Logger();
  sub_1883F70DC();
  v70 = v8;
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v75 = v10 - v9;
  sub_1883FEC2C();
  v11 = type metadata accessor for UUID();
  sub_1883F70DC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F8844();
  sub_188400848();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  v18 = _s5StateOMa(0);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F926C();
  v69 = v20;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1883F72F0();
  v77 = v28;
  sub_1884A11A0(v5, v28, v29);
  sub_1884A11A0(v5, v26, v5);
  v72 = v18;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1883F9CDC();
      sub_1884A11FC(v26, v41);
      goto LABEL_5;
    case 2u:
      sub_1884052B8();
      sub_1883FDA90();
      MEMORY[0x18CFD5140](v4 | 0xD, 0x80000001887005D0);
      sub_1883F97E8();
      _print_unlocked<A, B>(_:_:)();
      v61 = v76[0];
      v62 = v76[1];
      sub_18849DE5C();
      swift_willThrowTypedImpl();
      sub_1883F8878();
      sub_1884A11FC(v77, v63);
      v64 = sub_1883F8418();
      result = sub_1884A11FC(v64, v65);
      v66 = v68;
      *v68 = v61;
      v66[1] = v62;
      return result;
    case 3u:
      goto LABEL_5;
    default:
      v30 = _s5StateO17ListeningToDaemonVMa(0);
      (*(v13 + 16))(v17, &v26[*(v30 + 20)], v11);
      v31 = static UUID.== infix(_:_:)();
      (*(v13 + 8))(v17, v11);
      sub_1883FF138();
      sub_1884A11FC(v26, v32);
      if (v31)
      {
        v33 = type metadata accessor for AnySessionAcquiredInfo();
        sub_1883F7B50();
        v35 = *(v34 + 16);
        v36 = v69;
        v37 = v67;
        v35(v69, v67, v33);
        swift_storeEnumTagMultiPayload();
        sub_1884A0838(v36);
        sub_1883F72F0();
        sub_1884A11FC(v36, v38);
        sub_1884A11FC(v77, v6);
        v39 = v73;
        v35(v73, v37, v33);
        v40 = 0;
      }

      else
      {
LABEL_5:
        v42 = v75;
        CCLog.getter();
        (*(v13 + 16))(v4, v74, v11);
        sub_1883FA0F8();
        v43 = v77;
        sub_1884A11A0(v77, v23, v44);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v45, v46))
        {
          sub_1883FD778();
          v47 = swift_slowAlloc();
          sub_1883FB53C();
          v76[0] = swift_slowAlloc();
          *v47 = 136315394;
          sub_1883F9280();
          sub_1884A05C8(v48, v49, MEMORY[0x1E69695E0]);
          LODWORD(v74) = v46;
          dispatch thunk of CustomStringConvertible.description.getter();
          v50 = sub_1884056C8();
          v51(v50, v11);
          v52 = sub_1883FE340(v4, v43, v76);

          *(v47 + 4) = v52;
          *(v47 + 12) = 2080;
          sub_1883F8878();
          v53 = v69;
          sub_1884A11A0(v23, v69, v54);
          String.init<A>(describing:)();
          sub_1883FE2DC();
          v55 = sub_1883FE340(v53, v11, v76);

          *(v47 + 14) = v55;
          _os_log_impl(&dword_1883EA000, v45, v74, "CKSessionAcquirer.State: dropping acquired info event from outdated task %s vs. %s", v47, 0x16u);
          swift_arrayDestroy();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();

          (*(v70 + 8))(v75, v71);
          v56 = v77;
          v57 = v52;
        }

        else
        {

          sub_1883F72F0();
          sub_1884A11FC(v23, v58);
          (*(v13 + 8))(v4, v11);
          (*(v70 + 8))(v42, v71);
          v56 = v43;
          v57 = v46;
        }

        sub_1884A11FC(v56, v57);
        v40 = 1;
        v39 = v73;
      }

      v59 = _s5StateO22NoteAcquiredInfoActionOMa(0);
      return sub_1883F90F4(v39, v40, 1, v59);
  }
}

uint64_t sub_18849F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v135 = a1;
  v136 = a3;
  v145 = a2;
  v144 = a4;
  type metadata accessor for SessionReadinessError();
  sub_1883F70DC();
  v132 = v8;
  v133 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v127 = v10 - v9;
  v130 = sub_18844E6FC(&qword_1EA90E130, &qword_1886FA2C0);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v127 - v12;
  v13 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v14 = sub_1883F8AE4(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F926C();
  v128 = v15;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v16);
  sub_1883F8BB8();
  v134 = v17;
  sub_1883FEC2C();
  v18 = type metadata accessor for UUID();
  sub_1883F70DC();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1883F7100();
  v24 = (v23 - v22);
  type metadata accessor for Logger();
  sub_1883F70DC();
  v141 = v26;
  v142 = v25;
  MEMORY[0x1EEE9AC00](v25);
  sub_1883F7100();
  v146 = (v28 - v27);
  v29 = sub_1883FEC2C();
  v138 = _s5StateO17ListeningToDaemonVMa(v29);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v30);
  sub_1883F926C();
  v129 = v31;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v127 - v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1883F8BB8();
  v137 = v36;
  v37 = sub_1883FEC2C();
  v38 = _s5StateOMa(v37);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v39);
  sub_1883F926C();
  v140 = v40;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v41);
  sub_1883FA3D4();
  MEMORY[0x1EEE9AC00](v42);
  sub_1883F823C();
  MEMORY[0x1EEE9AC00](v43);
  sub_1883FE63C();
  v45 = v44;
  v149 = v46;
  sub_1884A11A0(v4, v46, v44);
  v139 = v4;
  sub_1884A11A0(v4, v6, v45);
  v143 = v38;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_8;
    case 2u:
      v147 = 0;
      v148 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      sub_1883FDA90();
      MEMORY[0x18CFD5140](v24 + 22, 0x80000001887005A0);
      sub_1883F97E8();
      _print_unlocked<A, B>(_:_:)();
      v73 = v147;
      v74 = v148;
      sub_18849DE5C();
      swift_willThrowTypedImpl();
      sub_1883F8878();
      sub_1884A11FC(v149, v75);
      result = sub_1884A11FC(v6, v24);
      v77 = v136;
      *v136 = v73;
      v77[1] = v74;
      return result;
    case 3u:
      goto LABEL_9;
    default:
      v47 = sub_1883F79C0();
      sub_1884A11A0(v47, v34, v48);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        v45 = _s5StateO17ListeningToDaemonVMa;
        sub_1884A11FC(v34, _s5StateO17ListeningToDaemonVMa);
LABEL_8:
        sub_1884A11FC(v6, v45);
LABEL_9:
        v78 = v146;
        CCLog.getter();
        (*(v20 + 16))(v24, v145, v18);
        sub_1883FA0F8();
        v79 = v149;
        sub_1884A11A0(v149, v5, v80);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v81, v82))
        {
          sub_1883FD778();
          v83 = swift_slowAlloc();
          sub_1883FB53C();
          v145 = swift_slowAlloc();
          v147 = v145;
          *v83 = 136315394;
          sub_1883F9280();
          sub_1884A05C8(v84, v85, MEMORY[0x1E69695E0]);
          dispatch thunk of CustomStringConvertible.description.getter();
          v86 = sub_1884056C8();
          v87(v86, v18);
          v88 = sub_1883FE340(v24, v79, &v147);

          *(v83 + 4) = v88;
          *(v83 + 12) = 2080;
          sub_1883F8878();
          sub_1884A11A0(v5, v140, v89);
          v90 = String.init<A>(describing:)();
          v92 = v91;
          sub_1884A11FC(v5, v88);
          v93 = sub_1883FE340(v90, v92, &v147);

          *(v83 + 14) = v93;
          _os_log_impl(&dword_1883EA000, v81, v82, "CKSessionAcquirer.State: dropping acquired info event from outdated task %s vs. %s", v83, 0x16u);
          sub_18840AD58();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();

          (*(v141 + 8))(v146, v142);
          v94 = v149;
          v95 = v88;
        }

        else
        {

          sub_1883F72F0();
          sub_1884A11FC(v5, v96);
          (*(v20 + 8))(v24, v18);
          (*(v141 + 8))(v78, v142);
          v94 = v79;
          v95 = v78;
        }

        goto LABEL_12;
      }

      sub_1884A1254(v34, v137);
      sub_1883FF138();
      sub_1884A11FC(v6, v49);
      v51 = v132;
      v50 = v133;
      v52 = v134;
      v146 = *(v132 + 16);
      (v146)(v134, v135, v133);
      sub_18840AE70();
      sub_1883F90F4(v53, v54, v55, v50);
      v56 = *(v130 + 48);
      v57 = &qword_1EA90E0D0;
      v58 = v131;
      sub_188404F98();
      sub_188442C30(v59, v60, v61, v62);
      sub_188404F98();
      sub_188442C30(v63, v64, v65, v66);
      sub_1883F9A38();
      if (sub_1883F971C(v67, v68, v69) == 1)
      {
        sub_1883F9FEC(v52, &qword_1EA90E0D0, &qword_1886FA1A0);
        sub_1883F9A38();
        if (sub_1883F971C(v70, v71, v72) == 1)
        {
          sub_1883F9FEC(v58, &qword_1EA90E0D0, &qword_1886FA1A0);
LABEL_19:
          sub_1883FF138();
          sub_1884A11FC(v137, v126);
          sub_1883F9CDC();
          v94 = v149;
LABEL_12:
          sub_1884A11FC(v94, v95);
          v97 = _s5StateO31NoteSessionReadinessErrorActionOMa(0);
          return sub_1883F90F4(v144, 1, 1, v97);
        }

        goto LABEL_16;
      }

      v98 = v128;
      sub_188442C30(v58, v128, &qword_1EA90E0D0, &qword_1886FA1A0);
      sub_1883F9A38();
      if (sub_1883F971C(v99, v100, v101) == 1)
      {
        sub_1883F9FEC(v134, &qword_1EA90E0D0, &qword_1886FA1A0);
        (*(v51 + 8))(v98, v50);
LABEL_16:
        sub_1883F9FEC(v58, &qword_1EA90E130, &qword_1886FA2C0);
        goto LABEL_17;
      }

      v120 = v58 + v56;
      v121 = v127;
      (*(v51 + 32))(v127, v120, v50);
      sub_1884A05C8(&qword_1EA90C300, MEMORY[0x1E6994830], MEMORY[0x1E6994848]);
      v122 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = v58;
      v123 = *(v51 + 8);
      v123(v121, v50);
      sub_1883F9FEC(v134, &qword_1EA90E0D0, &qword_1886FA1A0);
      v123(v98, v50);
      v124 = sub_1883F7EE0();
      sub_1883F9FEC(v124, v125, &qword_1886FA1A0);
      if (v122)
      {
        goto LABEL_19;
      }

LABEL_17:
      sub_18840AFD0();
      v102 = v137;
      v103 = v129;
      sub_1884A11A0(v137, v129, v104);
      v105 = *(v138 + 24);
      sub_1883F9FEC(v103 + v105, &qword_1EA90E0D0, &qword_1886FA1A0);
      v106 = v135;
      v107 = v146;
      (v146)(v103 + v105, v135, v50);
      sub_18840AE70();
      sub_1883F90F4(v108, v109, v110, v50);
      v111 = v140;
      sub_1884A11A0(v103, v140, v57);
      swift_storeEnumTagMultiPayload();
      v112 = v139;
      sub_1884A0838(v111);
      sub_1883F72F0();
      sub_1884A11FC(v111, v113);
      sub_1884A11FC(v102, v57);
      sub_1884A11FC(v149, v112);
      v107(v144, v106, v50);
      _s5StateO31NoteSessionReadinessErrorActionOMa(0);
      sub_18840AE70();
      sub_1883F90F4(v114, v115, v116, v117);
      v118 = sub_1883F8418();
      return sub_1884A11FC(v118, v119);
  }
}

uint64_t sub_18849FFA0()
{
  v51 = type metadata accessor for PropertyDescription();
  v1 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  sub_1883F926C();
  v55 = v2;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v46 - v4;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F8BB8();
  v49 = v6;
  v7 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v8 = sub_1883F8AE4(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for SessionReadinessError();
  sub_1883F70DC();
  v48 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1883F7100();
  v16 = v15 - v14;
  v17 = type metadata accessor for OSLogPrivacy();
  v18 = sub_1883F8AE4(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v19 = *(v1 + 72);
  v50 = v1;
  v20 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = v19;
  v47 = v20 + v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1886F7400;
  v22 = _s5StateO17ListeningToDaemonVMa(0);
  v23 = v22[5];
  v24 = type metadata accessor for UUID();
  v59 = v24;
  v25 = sub_188403664(v58);
  (*(*(v24 - 8) + 16))(v25, v0 + v23, v24);
  static OSLogPrivacy.auto.getter();
  v52 = v20;
  PropertyDescription.init(_:_:privacy:)();
  v26 = v0;
  sub_188442C30(v0 + v22[6], v10, &qword_1EA90E0D0, &qword_1886FA1A0);
  if (sub_1883F971C(v10, 1, v11) == 1)
  {
    sub_1883F9FEC(v10, &qword_1EA90E0D0, &qword_1886FA1A0);
    v28 = v50;
    v27 = v51;
  }

  else
  {
    v29 = v48;
    (*(v48 + 32))(v16, v10, v11);
    v59 = v11;
    v30 = sub_188403664(v58);
    (*(v29 + 16))(v30, v16, v11);
    static OSLogPrivacy.auto.getter();
    v31 = v49;
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v21 = v32;
    (*(v29 + 8))(v16, v11);
    *(v21 + 16) = 2;
    v28 = v50;
    v27 = v51;
    (*(v50 + 32))(v21 + v47, v31, v51);
  }

  v33 = *(v26 + v22[7]);
  v34 = v54;
  v35 = v52;
  if (v33)
  {
    swift_getErrorValue();
    v36 = v56;
    v37 = v57;
    v59 = v57;
    v38 = sub_188403664(v58);
    (*(*(v37 - 8) + 16))(v38, v36, v37);
    v39 = v33;
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    v40 = *(v21 + 16);
    if (v40 >= *(v21 + 24) >> 1)
    {
      sub_1884772EC();
      v21 = v44;
    }

    *(v21 + 16) = v40 + 1;
    v41 = v53;
    (*(v28 + 32))(v21 + v35 + v40 * v53, v34, v27);
  }

  else
  {
    v41 = v53;
  }

  if (swift_task_isCancelled())
  {
    v59 = MEMORY[0x1E69E6370];
    LOBYTE(v58[0]) = 1;
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    v42 = *(v21 + 16);
    if (v42 >= *(v21 + 24) >> 1)
    {
      sub_1884772EC();
      v21 = v45;
    }

    *(v21 + 16) = v42 + 1;
    (*(v28 + 32))(v21 + v35 + v42 * v41, v55, v27);
  }

  return v21;
}

uint64_t sub_1884A0558(uint64_t a1)
{
  v2 = sub_1884A05C8(&qword_1EA90C2B8, _s5StateO17ListeningToDaemonVMa, &unk_1886FA260);

  return MEMORY[0x1EEDF4148](a1, v2);
}

uint64_t sub_1884A05C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1884A0610()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1884A0640@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = _s5StateO17ListeningToDaemonVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1884A11A0(v2, v9, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1884A11FC(v9, _s5StateOMa);
LABEL_5:
    v17 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
    v15 = a1;
    v16 = 1;
    return sub_1883F90F4(v15, v16, 1, v17);
  }

  sub_1884A1254(v9, v6);
  v11 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
  v12 = *(v11 + 48);
  *a1 = *v6;
  v13 = *(v4 + 20);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(&a1[v12], &v6[v13], v14);

  sub_1884A11FC(v6, _s5StateO17ListeningToDaemonVMa);
  v15 = a1;
  v16 = 0;
  v17 = v11;
  return sub_1883F90F4(v15, v16, 1, v17);
}

double sub_1884A0838(uint64_t a1)
{
  v5 = v2;
  v125 = type metadata accessor for UUID();
  sub_1883F70DC();
  v114 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v109 = v10 - v9;
  v113 = sub_18844E6FC(&qword_1EA90E138, &qword_1886FA2C8);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v106[-v12];
  v13 = sub_18844E6FC(&qword_1EA90E140, &qword_1886FA2D0);
  v14 = sub_1883F8AE4(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F926C();
  v110 = v15;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v16);
  sub_1883F823C();
  MEMORY[0x1EEE9AC00](v17);
  sub_1883F8BB8();
  v122 = v18;
  v19 = sub_18844E6FC(&qword_1EA90E148, &qword_1886FA2D8);
  v20 = sub_1883F8AE4(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F926C();
  v112 = v21;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v22);
  sub_1883F8BB8();
  v118 = v23;
  v119 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v24);
  sub_1883F926C();
  v111 = v25;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v26);
  sub_1883F8BB8();
  v121 = v27;
  sub_1883FEC2C();
  type metadata accessor for Logger();
  sub_1883F70DC();
  v116 = v29;
  v117 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1883F7100();
  v32 = v31 - v30;
  _s5StateOMa(0);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F8844();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1883FA3D4();
  MEMORY[0x1EEE9AC00](v38);
  sub_188400848();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v106[-v40];
  v126 = v5;
  sub_1884A11A0(v5, &v106[-v40], _s5StateOMa);
  CCLog.getter();
  v120 = v41;
  v42 = sub_1883F8418();
  sub_1884A11A0(v42, v43, _s5StateOMa);
  v124 = a1;
  sub_1884A11A0(a1, v3, _s5StateOMa);
  v115 = v32;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    sub_1883FD778();
    v46 = swift_slowAlloc();
    sub_1883FB53C();
    v108 = swift_slowAlloc();
    v127[0] = v108;
    *v46 = 136315394;
    sub_1884A11A0(v1, v36, _s5StateOMa);
    v47 = String.init<A>(describing:)();
    v107 = v45;
    v48 = v4;
    v49 = v47;
    v51 = v50;
    sub_1884A11FC(v1, _s5StateOMa);
    v52 = v49;
    v53 = v48;
    v54 = sub_1883FE340(v52, v51, v127);

    *(v46 + 4) = v54;
    *(v46 + 12) = 2080;
    sub_1884A11A0(v3, v36, _s5StateOMa);
    v55 = String.init<A>(describing:)();
    v57 = v56;
    sub_1884A11FC(v3, _s5StateOMa);
    v58 = sub_1883FE340(v55, v57, v127);

    *(v46 + 14) = v58;
    _os_log_impl(&dword_1883EA000, v44, v107, "CKSessionAcquirer.State: %s -> %s", v46, 0x16u);
    swift_arrayDestroy();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();

    (*(v116 + 8))(v115, v117);
  }

  else
  {

    sub_1884A11FC(v3, _s5StateOMa);
    sub_1884A11FC(v1, _s5StateOMa);
    (*(v116 + 8))(v115, v117);
    v53 = v4;
  }

  v59 = v118;
  v60 = v126;
  sub_1884A0640(v118);
  sub_1883F9CDC();
  sub_1884A11FC(v60, v61);
  v62 = v119;
  if (sub_1883F971C(v59, 1, v119) != 1)
  {
    v66 = v59;
    v67 = v121;
    sub_1884A12B8(v66, v121);
    v68 = v67;
    v69 = v111;
    sub_188442C30(v68, v111, &qword_1EA90E150, &unk_1886FA2E0);

    v70 = *(v114 + 32);
    v71 = v125;
    v70(v122, v69 + *(v62 + 48), v125);
    sub_18840AE70();
    sub_1883F90F4(v72, v73, v74, v71);
    v75 = v112;
    sub_1884A0640(v112);
    if (sub_1883F971C(v75, 1, v62) == 1)
    {
      sub_1883F9FEC(v75, &qword_1EA90E148, &qword_1886FA2D8);
      v76 = 1;
    }

    else
    {

      v70(v53, &v75[*(v62 + 48)], v125);
      v76 = 0;
    }

    sub_1883F90F4(v53, v76, 1, v125);
    v77 = *(v113 + 48);
    sub_188404F98();
    sub_188442C30(v78, v79, v80, v81);
    sub_188404F98();
    sub_188442C30(v82, v83, v84, v85);
    sub_1883F9A38();
    if (sub_1883F971C(v86, v87, v88) == 1)
    {
      sub_1883F9FEC(v53, &qword_1EA90E140, &qword_1886FA2D0);
      v89 = sub_1883F8418();
      sub_1883F9FEC(v89, v90, &qword_1886FA2D0);
      if (sub_1883F971C(&v123[v77], 1, v125) == 1)
      {
        sub_1883F9FEC(v123, &qword_1EA90E140, &qword_1886FA2D0);
LABEL_19:
        sub_1883F9CDC();
        sub_1884A11FC(v120, v105);
        v64 = &qword_1EA90E150;
        v65 = &unk_1886FA2E0;
        v94 = v121;
        goto LABEL_17;
      }
    }

    else
    {
      v119 = v53;
      v91 = v123;
      v92 = v110;
      sub_188442C30(v123, v110, &qword_1EA90E140, &qword_1886FA2D0);
      if (sub_1883F971C(&v91[v77], 1, v125) != 1)
      {
        v97 = v123;
        v98 = &v123[v77];
        v99 = v109;
        v100 = v125;
        v70(v109, v98, v125);
        sub_1883F9280();
        sub_1884A05C8(v101, v102, MEMORY[0x1E69695C8]);
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();
        v104 = *(v114 + 8);
        v104(v99, v100);
        sub_1883F9FEC(v119, &qword_1EA90E140, &qword_1886FA2D0);
        sub_1883F9FEC(v122, &qword_1EA90E140, &qword_1886FA2D0);
        v104(v92, v100);
        sub_1883F9FEC(v97, &qword_1EA90E140, &qword_1886FA2D0);
        if (v103)
        {
          goto LABEL_19;
        }

LABEL_15:
        v59 = v121;
        MEMORY[0x18CFD54D0](*v121, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
        sub_1883F9CDC();
        sub_1884A11FC(v120, v93);
        v64 = &qword_1EA90E150;
        v65 = &unk_1886FA2E0;
        goto LABEL_16;
      }

      sub_1883F9FEC(v119, &qword_1EA90E140, &qword_1886FA2D0);
      sub_1883F9FEC(v122, &qword_1EA90E140, &qword_1886FA2D0);
      (*(v114 + 8))(v92, v125);
    }

    sub_1883F9FEC(v123, &qword_1EA90E138, &qword_1886FA2C8);
    goto LABEL_15;
  }

  sub_1883F9CDC();
  sub_1884A11FC(v120, v63);
  v64 = &qword_1EA90E148;
  v65 = &qword_1886FA2D8;
LABEL_16:
  v94 = v59;
LABEL_17:
  sub_1883F9FEC(v94, v64, v65);
  sub_1883FA0F8();
  sub_1884A11A0(v124, v126, v95);
  return result;
}

uint64_t sub_1884A11A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1883F7B50();
  v4 = sub_1883F7EE0();
  v5(v4);
  return a2;
}

uint64_t sub_1884A11FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1883F7B50();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1884A1254(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO17ListeningToDaemonVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884A12B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884A1348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySessionAcquiredInfo();

  return sub_1883F971C(a1, a2, v4);
}

uint64_t sub_1884A1390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnySessionAcquiredInfo();

  return sub_1883F90F4(a1, a2, a3, v6);
}

uint64_t sub_1884A1400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1884A1440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1884A148C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionReadinessError();

  return sub_1883F971C(a1, a2, v4);
}

uint64_t sub_1884A14D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionReadinessError();

  return sub_1883F90F4(a1, a2, a3, v6);
}

uint64_t sub_1884A1544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return v5;
}

id sub_1884A15F0(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  swift_weakAssign();
  v4 = OBJC_IVAR____TtC8CloudKit25CKSessionAcquirerXPCProxy_taskUUID;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a2, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CKSessionAcquirerXPCProxy(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);

  (*(v6 + 8))(a2, v5);
  return v7;
}

uint64_t sub_1884A16EC()
{
  v0 = type metadata accessor for SessionReadinessError();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  sub_1883F7100();
  v4 = v3 - v2;
  result = swift_weakLoadStrong();
  if (result)
  {
    CKSessionReadinessErrorBox.sessionReadinessError.getter();
    sub_18849CD8C();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

id sub_1884A1894()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSessionAcquirerXPCProxy(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1884A194C()
{
  result = qword_1EA90E160;
  if (!qword_1EA90E160)
  {
    type metadata accessor for CKSessionAcquirerXPCProxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E160);
  }

  return result;
}

uint64_t sub_1884A19A4()
{
  v1 = type metadata accessor for PropertyDescription();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  v6 = v5 - v4;
  v7 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v8 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v2 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1886F7400;
  v10 = OBJC_IVAR____TtC8CloudKit25CKSessionAcquirerXPCProxy_taskUUID;
  v11 = type metadata accessor for UUID();
  v18 = v11;
  v12 = sub_188403664(v17);
  (*(*(v11 - 8) + 16))(v12, v0 + v10, v11);
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v18 = type metadata accessor for CKSessionAcquirer(0);
    v17[0] = v14;

    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v9 = v15;

    *(v9 + 16) = 2;
    (*(v3 + 32))(v9 + v8, v6, v1);
  }

  return v9;
}

uint64_t CKSessionAcquisitionManager.acquire<A>(sessionID:sessionConfiguration:previousInvalidationContext:testDeviceReferenceProtocol:streamMap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v36 = a7;
  v37 = a1;
  v42 = a8;
  v43 = a5;
  v40 = a4;
  v38 = a2;
  v10 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for SessionID();
  sub_1883F70DC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v41 = a6;
  v27 = v36;
  dispatch thunk of SessionConfiguration.asAnySessionConfiguration.getter();
  if (a3)
  {
    v45 = &unk_1EFAC8920;
    swift_unknownObjectRetain();
    a3 = swift_dynamicCastObjCProtocolUnconditional();
  }

  (*(v15 + 16))(v18, v37, v13);
  v28 = *(v20 + 16);
  v39 = v26;
  v28(v23, v26, v44);
  sub_18843DE64(v38, v12, &unk_1EA90E170, &qword_1886FA450);
  type metadata accessor for CKSessionAcquisitionStream(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v46 = sub_1884A29DC(v18, v23, v12, a3);
  v29 = swift_allocObject();
  v30 = v40;
  v29[2] = v41;
  v29[3] = v27;
  v31 = v43;
  v29[4] = v30;
  v29[5] = v31;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SessionReadiness();
  sub_1884A25E0(&qword_1EA90C218, 255, type metadata accessor for CKSessionAcquisitionStream, &unk_1886FA630);
  v32 = type metadata accessor for AsyncMapSequence();
  v33 = v42;
  v42[3] = v32;
  v33[4] = swift_getWitnessTable();
  sub_188403664(v33);

  AsyncSequence.map<A>(_:)();
  swift_unknownObjectRelease();

  return (*(v20 + 8))(v39, v44);
}

uint64_t sub_1884A2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[8] = AssociatedTypeWitness;
  v7[9] = *(AssociatedTypeWitness - 8);
  v7[10] = swift_task_alloc();
  v9 = type metadata accessor for AnySessionAcquiredInfo();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884A21F0, 0, 0);
}

uint64_t sub_1884A21F0()
{
  sub_18843DE64(v0[3], v0[15], &qword_1EA90E088, &unk_1886FA520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[2];
    type metadata accessor for SessionReadinessError();
    sub_1883F7308();
    (*(v4 + 32))(v3, v2);
    v5 = MEMORY[0x1E69947D0];
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    v18 = v0[8];
    v11 = v0[4];
    v12 = v0[2];
    (*(v7 + 32))(v6, v2, v8);
    v11(v6);
    (*(v7 + 8))(v6, v8);
    (*(v10 + 32))(v12, v9, v18);
    v5 = MEMORY[0x1E69947C8];
  }

  v13 = v0[2];
  v14 = *v5;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SessionReadiness();
  sub_1883F7308();
  (*(v15 + 104))(v13, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1884A2494(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_188496548;

  return sub_1884A2074(a1, a2, v9, v8, v6, v7, v11);
}

uint64_t sub_1884A25E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1884A2628()
{
  if (*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t sub_1884A2644()
{
  sub_1883F7120();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for CloudCoreError();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884A2700, 0, 0);
}

uint64_t sub_1884A2700()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[10] = v1;
  v2 = sub_18844E6FC(&qword_1EA90E1A0, &unk_1886FA690);
  *v1 = v0;
  v1[1] = sub_1884A27E0;
  v3 = v0[9];
  v4 = v0[5];

  return MEMORY[0x1EEDF40D8](v4, v2, v3);
}

uint64_t sub_1884A27E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884A290C, 0, 0);
  }

  else
  {
    swift_endAccess();

    sub_1883F816C();

    return v7();
  }
}

uint64_t sub_1884A290C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1883F731C();
  sub_1884A3B8C(v4, v5, MEMORY[0x1E6994798]);
  swift_allocError();
  (*(v2 + 32))(v6, v1, v3);
  swift_endAccess();

  sub_1883F816C();

  return v7();
}

uint64_t sub_1884A29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v61 = a2;
  v57 = a1;
  sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v47 - v6;
  v59 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v56 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v58 = v10 - v9;
  v55 = type metadata accessor for SessionID();
  sub_1883F70DC();
  v66 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F7100();
  v67 = v14 - v13;
  v54 = sub_18844E6FC(&qword_1EA90E1B8, &qword_1886FA6B0);
  sub_1883F7B50();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v47 - v16;
  v17 = sub_18844E6FC(&qword_1EA90E1C0, &qword_1886FA6B8);
  sub_1883F70DC();
  v19 = v18;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
  sub_1883F70DC();
  v64 = v24;
  v65 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v47 - v27;
  v29 = sub_18844E6FC(&qword_1EA90E1B0, &unk_1886FA6A0);
  sub_1883F70DC();
  v31 = v30;
  v51 = v30;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v47 - v33;
  *(v4 + 16) = 0;
  sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  type metadata accessor for CloudCoreError();
  (*(v19 + 104))(v22, *MEMORY[0x1E6994748], v17);
  sub_1883F731C();
  sub_1884A3B8C(v35, v36, MEMORY[0x1E6994798]);
  v47 = v28;
  static CloudCoreThrowingStream.makeStream(of:throwing:bufferingPolicy:)();
  (*(v19 + 8))(v22, v17);
  v37 = *(v31 + 16);
  v48 = v4;
  v49 = v34;
  v50 = v29;
  v37(v4 + OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquisitionStream, v34, v29);
  CloudCoreThrowingStream.makeAsyncIterator()();
  sub_18844E6FC(&qword_1EA90E1A0, &unk_1886FA690);
  swift_dynamicCast();
  (*(v64 + 16))(v52, v28, v65);
  v38 = v57;
  v39 = v55;
  (*(v66 + 16))(v67, v57, v55);
  v40 = v56;
  v41 = v59;
  v42 = v61;
  (*(v56 + 16))(v58, v61, v59);
  v43 = v62;
  sub_1884A3BD4(v62, v60);
  type metadata accessor for CKSessionAcquirer(0);
  swift_allocObject();
  sub_188499C08();
  v45 = v44;
  sub_1884A3C44(v43);
  (*(v40 + 8))(v42, v41);
  (*(v66 + 8))(v38, v39);
  (*(v64 + 8))(v47, v65);
  (*(v51 + 8))(v49, v50);
  result = v48;
  *(v48 + OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquirer) = v45;
  return result;
}

uint64_t sub_1884A2F70()
{
  v1 = OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquisitionStream;
  sub_18844E6FC(&qword_1EA90E1B0, &unk_1886FA6A0);
  sub_1883F7B50();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquisitionStreamIterator;
  sub_18844E6FC(&qword_1EA90E1A0, &unk_1886FA690);
  sub_1883F7B50();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_1884A3028()
{
  sub_1884A2F70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CKSessionAcquisitionStream(uint64_t a1)
{
  result = qword_1EA90C3B8;
  if (!qword_1EA90C3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1884A30D4(uint64_t a1)
{
  sub_1884A31EC(319, &qword_1EA90C508, MEMORY[0x1E6994760]);
  if (v1 <= 0x3F)
  {
    sub_1884A31EC(319, &unk_1EA90C510, MEMORY[0x1E6994758]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1884A31EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_18844E798(&qword_1EA90E088, &unk_1886FA520);
    v7 = type metadata accessor for CloudCoreError();
    sub_1883F731C();
    v10 = sub_1884A3B8C(v8, v9, MEMORY[0x1E6994798]);
    v11 = a3(a1, v6, v7, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1884A32E4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1884A2628();

  *a1 = v3;
  return result;
}

uint64_t sub_1884A3318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;

  return sub_1884A2644();
}

uint64_t sub_1884A33B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for CloudCoreError();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1884A34E8;

  return sub_1884A35FC(a1, a2, a3, v9);
}

uint64_t sub_1884A34E8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  sub_1883F816C();

  return v7();
}

uint64_t sub_1884A35FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1884A36A0, v6, v8);
}

uint64_t sub_1884A36A0()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1884A3738;

  return sub_1884A2644();
}

uint64_t sub_1884A3738()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1884A384C, v7, v8);
  }

  else
  {
    sub_1883F816C();

    return v9();
  }
}

uint64_t sub_1884A384C()
{
  *(v0 + 16) = *(v0 + 72);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CloudCoreError();
  swift_dynamicCast();
  sub_1883F731C();
  sub_1884A3B8C(v1, v2, MEMORY[0x1E6994798]);
  swift_willThrowTypedImpl();
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884A3990()
{
  v0 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  type metadata accessor for PropertyDescription();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1886F7400;
  type metadata accessor for CKSessionAcquirer(0);

  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v1;
}

uint64_t sub_1884A3B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1884A3BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884A3C44(uint64_t a1)
{
  v2 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1884A3CE0(uint64_t a1)
{
  v2 = type metadata accessor for AnySessionConfiguration();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return CKSessionConfiguration.anySessionConfiguration.setter(v5);
}

uint64_t CKSessionConfiguration.anySessionConfiguration.setter(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F9240(v9, v15);
  v4(v10);
  v17 = v2;
  v18 = sub_1883F9CF4(&qword_1EA90C4A8);
  v19 = sub_1883F7334(&qword_1EA90C4B8);
  v20 = sub_1883F8890(&qword_1EA90C4B0);
  v11 = sub_188403664(&v16);
  (v4)(v11, v3, v2);
  v12 = *(v7 + 8);
  v12(a1, v2);
  v12(v3, v2);
  v13 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v13));
  sub_188499B68(&v16, v1 + v13);
  return swift_endAccess();
}

void (*CKSessionConfiguration.anySessionConfiguration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for AnySessionConfiguration();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionConfiguration.anySessionConfiguration.getter();
  return sub_1884A3FDC;
}

void sub_1884A3FDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CKSessionConfiguration.anySessionConfiguration.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CKSessionConfiguration.anySessionConfiguration.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionConfiguration.init(_:)(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F9240(v9, v15);
  v4(v10);
  v18 = v2;
  v19 = sub_1883F9CF4(&qword_1EA90C4A8);
  v20 = sub_1883F7334(&qword_1EA90C4B8);
  v21 = sub_1883F8890(&qword_1EA90C4B0);
  v11 = sub_188403664(v17);
  (v4)(v11, v3, v2);
  sub_188445B70(v17, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CKSecureCodingBox();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_1883FE944(v17);
  v13 = *(v7 + 8);
  v13(a1, v2);
  v13(v3, v2);
  return v12;
}

id CKSessionConfiguration.init(coder:)(void *a1)
{
  v2 = type metadata accessor for AnySessionConfiguration();
  v3 = sub_1883F9CF4(&qword_1EA90C4A8);
  v4 = sub_1883F7334(&qword_1EA90C4B8);
  v5 = sub_1883F8890(&qword_1EA90C4B0);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSessionID.sessionID.getter()
{
  v2 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v1 + v2, v4);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for SessionID();
  return swift_dynamicCast();
}

uint64_t sub_1884A451C(uint64_t a1)
{
  v2 = type metadata accessor for SessionID();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return CKSessionID.sessionID.setter(v5);
}

uint64_t CKSessionID.sessionID.setter(uint64_t a1)
{
  type metadata accessor for SessionID();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F9240(v9, v15);
  v4(v10);
  v17 = v2;
  v18 = sub_1883F9D18(&qword_1EA90C470);
  v19 = sub_1883F7358(&qword_1EA90C480);
  v20 = sub_1883F88B4(&qword_1EA90C478);
  v11 = sub_188403664(&v16);
  (v4)(v11, v3, v2);
  v12 = *(v7 + 8);
  v12(a1, v2);
  v12(v3, v2);
  v13 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v13));
  sub_188499B68(&v16, v1 + v13);
  return swift_endAccess();
}

void (*CKSessionID.sessionID.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SessionID();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionID.sessionID.getter();
  return sub_1884A4818;
}

void sub_1884A4818(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CKSessionID.sessionID.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CKSessionID.sessionID.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionID.init(_:)(uint64_t a1)
{
  type metadata accessor for SessionID();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F9240(v9, v15);
  v4(v10);
  v18 = v2;
  v19 = sub_1883F9D18(&qword_1EA90C470);
  v20 = sub_1883F7358(&qword_1EA90C480);
  v21 = sub_1883F88B4(&qword_1EA90C478);
  v11 = sub_188403664(v17);
  (v4)(v11, v3, v2);
  sub_188445B70(v17, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CKSecureCodingBox();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_1883FE944(v17);
  v13 = *(v7 + 8);
  v13(a1, v2);
  v13(v3, v2);
  return v12;
}

uint64_t sub_1884A4A30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CKSessionID.init(coder:)(void *a1)
{
  v2 = type metadata accessor for SessionID();
  v3 = sub_1883F9D18(&qword_1EA90C470);
  v4 = sub_1883F7358(&qword_1EA90C480);
  v5 = sub_1883F88B4(&qword_1EA90C478);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionID.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SessionID();
  v5 = sub_1883F9D18(&qword_1EA90C470);
  v6 = sub_1883F7358(&qword_1EA90C480);
  v7 = sub_1883F88B4(&qword_1EA90C478);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

id CKSessionID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSessionInvalidationContext.sessionInvalidationContext.getter()
{
  v2 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v1 + v2, v4);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for SessionInvalidationContext();
  return swift_dynamicCast();
}

uint64_t sub_1884A4E80(uint64_t a1)
{
  v2 = type metadata accessor for SessionInvalidationContext();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return CKSessionInvalidationContext.sessionInvalidationContext.setter(v5);
}

uint64_t CKSessionInvalidationContext.sessionInvalidationContext.setter(uint64_t a1)
{
  v5 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F9298();
  v9 = sub_1883F7CA0();
  v3(v9);
  v15 = v5;
  v16 = sub_1883F9D3C(&qword_1EA90C490);
  v17 = sub_1883F737C(&qword_1EA90C4A0);
  v18 = sub_1883F88D8(&qword_1EA90C498);
  v10 = sub_188403664(&v14);
  (v3)(v10, v2, v5);
  v11 = *(v7 + 8);
  v11(a1, v5);
  v11(v2, v5);
  v12 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v12));
  sub_188499B68(&v14, v1 + v12);
  return swift_endAccess();
}

void (*CKSessionInvalidationContext.sessionInvalidationContext.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SessionInvalidationContext();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionInvalidationContext.sessionInvalidationContext.getter();
  return sub_1884A5184;
}

void sub_1884A5184(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CKSessionInvalidationContext.sessionInvalidationContext.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CKSessionInvalidationContext.sessionInvalidationContext.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionInvalidationContext.init(_:)(uint64_t a1)
{
  v5 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F9298();
  v9 = sub_1883F7CA0();
  v3(v9);
  v15[3] = v5;
  v15[4] = sub_1883F9D3C(&qword_1EA90C490);
  v15[5] = sub_1883F737C(&qword_1EA90C4A0);
  v15[6] = sub_1883F88D8(&qword_1EA90C498);
  v10 = sub_188403664(v15);
  (v3)(v10, v2, v5);
  sub_188445B70(v15, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CKSecureCodingBox();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  sub_1883FE944(v15);
  v12 = *(v7 + 8);
  v12(a1, v5);
  v12(v2, v5);
  return v11;
}

id CKSessionInvalidationContext.init(coder:)(void *a1)
{
  v2 = type metadata accessor for SessionInvalidationContext();
  v3 = sub_1883F9D3C(&qword_1EA90C490);
  v4 = sub_1883F737C(&qword_1EA90C4A0);
  v5 = sub_1883F88D8(&qword_1EA90C498);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionInvalidationContext.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SessionInvalidationContext();
  v5 = sub_1883F9D3C(&qword_1EA90C490);
  v6 = sub_1883F737C(&qword_1EA90C4A0);
  v7 = sub_1883F88D8(&qword_1EA90C498);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

id CKSessionInvalidationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKSessionInvalidationContext.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SessionInvalidationContext();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1883F9298();
  CKSessionInvalidationContext.sessionInvalidationContext.getter();
  v5 = objc_allocWithZone(ObjectType);
  result = CKSessionInvalidationContext.init(_:)(v1);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

Swift::String __swiftcall CKSessionInvalidationContext.CKXPCSuitableString()()
{
  v0 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSessionInvalidationContext.sessionInvalidationContext.getter();
  sub_1884A5854(&unk_1EA90C2E8, MEMORY[0x1E69948B8]);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  (*(v2 + 8))(v5, v0);
  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1884A5854(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionInvalidationContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CKSessionReadinessErrorBox.sessionReadinessError.getter()
{
  v2 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v1 + v2, v4);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for SessionReadinessError();
  return swift_dynamicCast();
}

uint64_t sub_1884A5A14(uint64_t a1)
{
  v2 = type metadata accessor for SessionReadinessError();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return CKSessionReadinessErrorBox.sessionReadinessError.setter(v5);
}

uint64_t CKSessionReadinessErrorBox.sessionReadinessError.setter(uint64_t a1)
{
  type metadata accessor for SessionReadinessError();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F9298();
  v9 = sub_1883F7CA0();
  v4(v9);
  v15 = v2;
  v16 = sub_1883F88FC(&qword_1EA90C4E0);
  v17 = sub_1883F9D60(&unk_1EA90C4F0);
  v18 = sub_1883F73A0(&qword_1EA90C4E8);
  v10 = sub_188403664(&v14);
  (v4)(v10, v3, v2);
  v11 = *(v7 + 8);
  v11(a1, v2);
  v11(v3, v2);
  v12 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v12));
  sub_188499B68(&v14, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_1884A5C40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionReadinessError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*CKSessionReadinessErrorBox.sessionReadinessError.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SessionReadinessError();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionReadinessErrorBox.sessionReadinessError.getter();
  return sub_1884A5D58;
}

void sub_1884A5D58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CKSessionReadinessErrorBox.sessionReadinessError.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CKSessionReadinessErrorBox.sessionReadinessError.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionReadinessErrorBox.init(_:)(uint64_t a1)
{
  type metadata accessor for SessionReadinessError();
  sub_1883F7C70();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F9298();
  v9 = sub_1883F7CA0();
  v4(v9);
  v16 = v2;
  v17 = sub_1883F88FC(&qword_1EA90C4E0);
  v18 = sub_1883F9D60(&unk_1EA90C4F0);
  v19 = sub_1883F73A0(&qword_1EA90C4E8);
  v10 = sub_188403664(v15);
  (v4)(v10, v3, v2);
  sub_188445B70(v15, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CKSecureCodingBox();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  sub_1883FE944(v15);
  v12 = *(v7 + 8);
  v12(a1, v2);
  v12(v3, v2);
  return v11;
}

id CKSessionReadinessErrorBox.init(coder:)(void *a1)
{
  v2 = type metadata accessor for SessionReadinessError();
  v3 = sub_1883F88FC(&qword_1EA90C4E0);
  v4 = sub_1883F9D60(&unk_1EA90C4F0);
  v5 = sub_1883F73A0(&qword_1EA90C4E8);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionReadinessErrorBox.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SessionReadinessError();
  v5 = sub_1883F88FC(&qword_1EA90C4E0);
  v6 = sub_1883F9D60(&unk_1EA90C4F0);
  v7 = sub_1883F73A0(&qword_1EA90C4E8);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

id CKSessionReadinessErrorBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKSessionReadinessErrorBox.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SessionReadinessError();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1883F9298();
  CKSessionReadinessErrorBox.sessionReadinessError.getter();
  v5 = objc_allocWithZone(ObjectType);
  result = CKSessionReadinessErrorBox.init(_:)(v1);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

Swift::String __swiftcall CKSessionReadinessErrorBox.CKXPCSuitableString()()
{
  v0 = type metadata accessor for SessionReadinessError();
  MEMORY[0x1EEE9AC00](v0);
  CKSessionReadinessErrorBox.sessionReadinessError.getter();
  v1 = String.init<A>(describing:)();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id CKContainerID.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ContainerID.Environment();
  sub_1883F70DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContainerID.environment.getter();
  v8 = (*(v4 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69947A0])
  {
    v15 = 1;
LABEL_5:
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = ContainerID.name.getter();
    v18 = MEMORY[0x18CFD5010](v17);

    v19 = [v16 initWithContainerIdentifier:v18 environment:v15];

    v20 = type metadata accessor for ContainerID();
    (*(*(v20 - 8) + 8))(a1, v20);
    return v19;
  }

  if (v8 == *MEMORY[0x1E69947A8])
  {
    v15 = 2;
    goto LABEL_5;
  }

  result = sub_1883F73C4("Fatal error", v9, v10, v11, v12, "CloudKit/CKContainerID+CloudCore.swift", v13, v14, 19, 0);
  __break(1u);
  return result;
}

uint64_t ContainerID.init(_:)(void *a1)
{
  v2 = type metadata accessor for ContainerID.Environment();
  sub_1883F70DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v22 - v10;
  v12 = [a1 environment];
  if (v12 == 2)
  {
    v19 = MEMORY[0x1E69947A8];
LABEL_5:
    (*(v4 + 104))(v11, *v19, v2);
    v20 = [a1 containerIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 16))(v7, v11, v2);
    ContainerID.init(name:environment:)();

    return (*(v4 + 8))(v11, v2);
  }

  if (v12 == 1)
  {
    v19 = MEMORY[0x1E69947A0];
    goto LABEL_5;
  }

  result = sub_1883F73C4("Fatal error", v13, v14, v15, v16, "CloudKit/CKContainerID+CloudCore.swift", v17, v18, 35, 0);
  __break(1u);
  return result;
}

uint64_t sub_1884A6844(uint64_t a1, uint64_t a2)
{
  dispatch thunk of Session.anyContainer.getter();
  type metadata accessor for CloudCoreContainer();
  sub_1883F73EC();

  return swift_dynamicCastClassUnconditional();
}

char *sub_1884A6888(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SessionID();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1883F7100();
  v6 = v5 - v4;
  v7 = [v19 options];
  sub_188498C74();
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {

    return v19;
  }

  else
  {
    v10 = &v19[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
    os_unfair_lock_lock(&v19[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex]);
    v11 = sub_18847E5F4(a1, *(v10 + 1));
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = [v19 containerID];
      sub_1884A7924(v6);
      v14 = objc_allocWithZone(ObjectType);
      v15 = a1;
      v16 = sub_1884A6B24(v13, v6, v15);
      v17 = sub_1884A79E8();
      sub_1884A7A88(v17, v18);
      v12 = v16;
      sub_18846FE60(v12, v15);
    }

    os_unfair_lock_unlock(v10);
    return v12;
  }
}

id sub_1884A6A38(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
  *v7 = 0;
  *(v7 + 1) = MEMORY[0x1E69E7CC8];
  type metadata accessor for CloudCoreContainerImplementation(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v10.receiver = v3;
    v10.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v10, sel_initWithImplementation_convenienceConfiguration_, a1, a2);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1884A6B24(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for SessionID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v13 = v12 - v11;
  v14 = &v4[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
  *v14 = 0;
  *(v14 + 1) = MEMORY[0x1E69E7CC8];
  (*(v10 + 16))(v13, a2, v9);
  objc_allocWithZone(type metadata accessor for CloudCoreContainerImplementation(0));
  v15 = a1;
  v16 = a3;
  sub_1884A8888(v15, v13, v16);
  v18 = v17;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, sel_initUnconfiguredContainerWithImplementation_, v17);

  v20 = sub_1883F7228();
  v21(v20);
  return v19;
}

uint64_t sub_1884A6D10()
{
  v1 = [v0 implementation];
  v2 = [v1 description];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1883F7228();
}

uint64_t sub_1884A6D98()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_18844E6FC(&qword_1EA90E1E8, &qword_1886FA870);
  *v3 = v0;
  v3[1] = sub_1884A6EA0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000188700A80, sub_1884A857C, v2, v4);
}

uint64_t sub_1884A6EA0()
{
  sub_1883F7120();
  v5 = *v1;
  sub_1883F7110();
  *v2 = v5;
  *(v5 + 48) = v0;

  if (v0)
  {
    v3 = sub_1884A8880;
  }

  else
  {

    v3 = sub_188463250;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1884A6FB0(uint64_t a1, void *a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E1F0, &unk_1886FA878);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = [objc_allocWithZone(CKFetchRegisteredBundleIDsOperation) init];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(sub_1884A8584, v10);
  v11 = [a2 implementation];
  v12 = [a2 convenienceConfiguration];
  [v11 _scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_];
}

uint64_t sub_1884A716C(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvedBundleID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for CloudCoreError();
    sub_1884A8534(&qword_1EA90C500, 255, MEMORY[0x1E6994790], MEMORY[0x1E6994798]);
    v10 = swift_allocError();
    v12 = v11;
    v13 = a1;
    sub_1884AFB5C(a1, v12);
    v21 = v10;
    sub_18844E6FC(&qword_1EA90E1F0, &unk_1886FA878);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v15 = a1[2];
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v20 = a3;
      v21 = MEMORY[0x1E69E7CC0];
      sub_188477884(0, v15, 0);
      v16 = v21;
      v17 = a1 + 5;
      do
      {

        ResolvedBundleID.init(_:)();
        v21 = v16;
        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_188477884(v18 > 1, v19 + 1, 1);
          v16 = v21;
        }

        *(v16 + 16) = v19 + 1;
        (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v9, v6);
        v17 += 2;
        --v15;
      }

      while (v15);
    }

    v21 = v16;
    sub_18844E6FC(&qword_1EA90E1F0, &unk_1886FA878);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1884A73E0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1884A74D8;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x8000000188700A60, sub_1884A8504, v2, v4);
}

uint64_t sub_1884A74D8()
{
  sub_1883F7120();
  v5 = *v1;
  sub_1883F7110();
  *v2 = v5;
  *(v5 + 48) = v0;

  if (v0)
  {
    v3 = sub_1884A75E8;
  }

  else
  {

    v3 = sub_18845F268;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1884A75E8()
{
  sub_1883F7120();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1884A7648(uint64_t a1, void *a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E1E0, &qword_1886FA860);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = [objc_allocWithZone(CKFetchUserQuotaOperation) init];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(sub_1884A850C, v10);
  v11 = [a2 privateCloudDatabase];
  v12 = [v11 implementation];
  v13 = [a2 convenienceConfiguration];
  [v12 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t sub_1884A7820(void *a1, char a2)
{
  if (a2)
  {
    type metadata accessor for CloudCoreError();
    sub_1884A8534(&qword_1EA90C500, 255, MEMORY[0x1E6994790], MEMORY[0x1E6994798]);
    swift_allocError();
    v4 = v3;
    v5 = a1;
    sub_1884AFB5C(a1, v4);
    sub_18844E6FC(&qword_1EA90E1E0, &qword_1886FA860);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_18844E6FC(&qword_1EA90E1E0, &qword_1886FA860);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1884A7924(uint64_t a1@<X8>)
{
  v6 = [v1 implementation];
  type metadata accessor for CloudCoreContainerImplementation(0);
  sub_1883F73EC();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionID;
  v5 = type metadata accessor for SessionID();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1884A79E8()
{
  v1 = [v0 implementation];
  type metadata accessor for CloudCoreContainerImplementation(0);
  sub_1883F73EC();
  v2 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler);
  swift_beginAccess();
  v3 = *v2;
  sub_1883F5CC0(*v2, v2[1]);

  return v3;
}

uint64_t sub_1884A7A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 implementation];
  type metadata accessor for CloudCoreContainerImplementation(0);
  sub_1883F73EC();
  v7 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_1883F5CC0(a1, a2);
  sub_1883F5BA0(v8, v9);

  return sub_1883F5BA0(a1, a2);
}

uint64_t sub_1884A7CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884A8884;

  return sub_1884A6D84();
}

uint64_t sub_1884A7D78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884A7E04;

  return sub_1884A73CC();
}

uint64_t sub_1884A7E04()
{
  sub_1883F7120();
  v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t (*sub_1884A7F00(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1884A79E8();
  a1[1] = v3;
  return sub_1884A7F48;
}

uint64_t sub_1884A7F48(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1883F7228();
    sub_1883F5CC0(v2, v3);
    v4 = sub_1883F7228();
    sub_1884A7A88(v4, v5);
    v6 = sub_1883F7228();

    return sub_1883F5BA0(v6, v7);
  }

  else
  {
    v9 = sub_1883F7228();
    return sub_1884A7A88(v9, v10);
  }
}

uint64_t sub_1884A7FB4()
{
  v1 = v0;
  v2 = type metadata accessor for PropertyDescription();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  v7 = v6 - v5;
  v8 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v9 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v3 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1886F7400;
  v11 = [v1 implementation];
  v12 = type metadata accessor for CloudCoreContainerImplementation(0);
  sub_1883F73EC();
  v18 = v12;
  v17[0] = swift_dynamicCastClassUnconditional();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v13 = &v1[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex]);
  sub_1884A824C(v13 + 1, v17);
  os_unfair_lock_unlock(v13);
  v14 = v17[0];
  if (*(v17[0] + 16))
  {
    v18 = sub_18844E6FC(&qword_1EA90E1F8, &qword_1886FA888);
    v17[0] = v14;
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v10 = v15;
    *(v15 + 16) = 2;
    (*(v4 + 32))(v15 + v9, v7, v2);
  }

  else
  {
  }

  return v10;
}

void sub_1884A824C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v36 = *a1 & 0xC000000000000001;
  if (!v36)
  {
    v5 = *(v4 + 16);
    swift_bridgeObjectRetain_n();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_19:
    swift_bridgeObjectRelease_n();
    v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *a2 = v6;
    return;
  }

  swift_bridgeObjectRetain_n();
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_3:
  v43 = MEMORY[0x1E69E7CC0];
  sub_1884778DC(0, v5 & ~(v5 >> 63), 0);
  v6 = v43;
  v40 = sub_1884A8644(v4);
  v41 = v7;
  v42 = v8 & 1;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v32 = a2;
    v33 = v2;
    v9 = 0;
    v10 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 < 0)
    {
      v10 = v4;
    }

    v34 = v10;
    v35 = v5;
    while (!__OFADD__(v9, 1))
    {
      v11 = v40;
      v12 = v41;
      v13 = v42;
      v14 = v4;
      sub_1884A86A4(v40, v41, v42, v4);
      v16 = v15;

      v43 = v6;
      v22 = *(v6 + 16);
      v21 = *(v6 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1884778DC((v21 > 1), v22 + 1, 1);
        v6 = v43;
      }

      *(v6 + 16) = v22 + 1;
      *(v6 + 8 * v22 + 32) = v16;
      v38 = v6;
      if (v36)
      {
        if (!v13)
        {
          goto LABEL_23;
        }

        v4 = v14;
        if (__CocoaDictionary.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v29 = v35;
        v30 = v9 + 1;
        sub_18844E6FC(&qword_1EA90E200, &qword_1886FA890);
        v31 = Dictionary.Index._asCocoa.modify();
        __CocoaDictionary.formIndex(after:isUnique:)();
        v31(v39, 0);
      }

      else
      {
        v4 = v14;
        sub_188488088(v11, v12, v13, v14, v17, v18, v19, v20, v32, v33, v34, v35, 0, v9 + 1, v6, v39[0], v39[1], v39[2]);
        v24 = v23;
        v26 = v25;
        v28 = v27;
        sub_188487EB8(v11, v12, v13);
        v40 = v24;
        v41 = v26;
        v42 = v28 & 1;
        v29 = v35;
        v30 = v37;
      }

      ++v9;
      v6 = v38;
      if (v30 == v29)
      {
        swift_bridgeObjectRelease_n();
        sub_188487EB8(v40, v41, v42);
        a2 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1884A8534(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1884A85AC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(sub_18844E6FC(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_1884A8644(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

void sub_1884A86A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaDictionary.value(at:)();
      type metadata accessor for CloudCoreContainer();
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == v5)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  __CocoaDictionary.Index.key.getter();
  sub_188498C74();
  swift_dynamicCast();
  v5 = v12;
  sub_188486518();
  a1 = v7;
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a4 + 56) + 8 * a1);

  v11 = v10;
}

uint64_t sub_1884A8818(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E208, &qword_1886FA898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1884A8888(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken] = -1;
  v9 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionID;
  v10 = type metadata accessor for SessionID();
  (*(*(v10 - 8) + 16))(&v3[v9], a2, v10);
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithContainerID_options_, a1, a3);
  LODWORD(ObjectType) = sub_1884A89B0();

  v12 = sub_1883FDAB8();
  v13(v12);
  *&v11[OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken] = ObjectType;

  sub_1883F8750();
}

id sub_1884A89B0()
{
  swift_getObjectType();
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = @"com.apple.cloudd.cloudCoreSessionInvalidated";
  SessionID.uuid.getter();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = MEMORY[0x18CFD5010](v5, v7);

  v9 = CKNotificationKey(v4, v8);

  if (!v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = MEMORY[0x18CFD5010](v10);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1884AB46C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1884C4F80;
  aBlock[3] = &unk_1EFA29120;
  v13 = _Block_copy(aBlock);

  v14 = [ObjCClassFromMetadata registerForDaemonNotificationsWithKey:v9 callback:v13];
  _Block_release(v13);

  return v14;
}

id sub_1884A8BE4()
{
  ObjectType = swift_getObjectType();
  sub_1884A8C2C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1884A8C2C()
{
  v1 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken;
  v2 = *(v0 + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken);
  if (v2 != -1)
  {
    swift_getObjectType();
    [swift_getObjCClassFromMetadata() unregisterForDaemonNotificationsWithToken_];
    *(v0 + v1) = -1;
  }
}

uint64_t type metadata accessor for CloudCoreContainerImplementation(uint64_t a1)
{
  result = qword_1EA90C458;
  if (!qword_1EA90C458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1884A8D7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1884A8DD0();
  }
}

uint64_t sub_1884A8DD0()
{
  v1 = v0;
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for Logger();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v44 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = *(v9 + 16);
  v19(&v39 - v17, v1 + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionID, v8, v16);
  CCLog.getter();
  v49 = v18;
  v43 = v19;
  (v19)(v13, v18, v8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42 = v9;
    v23 = v22;
    v40 = swift_slowAlloc();
    v50[0] = v40;
    *v23 = 136315138;
    sub_1884AB584(&qword_1EA90C2E0, MEMORY[0x1E69948C8], MEMORY[0x1E69948E8]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v1;
    v25 = v4;
    v27 = v26;
    v46 = *(v42 + 8);
    v46(v13, v8);
    v28 = sub_1883FE340(v24, v27, v50);
    v4 = v25;
    v1 = v41;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1883EA000, v20, v21, "Received notification that session was invalidated. sessionID: %s", v23, 0xCu);
    v29 = v40;
    sub_1883FE944(v40);
    MEMORY[0x18CFD7E80](v29, -1, -1);
    v30 = v23;
    v9 = v42;
    MEMORY[0x18CFD7E80](v30, -1, -1);
  }

  else
  {

    v46 = *(v9 + 8);
    v46(v13, v8);
  }

  (*(v47 + 8))(v7, v48);
  sub_1884A8C2C();
  v31 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler;
  swift_beginAccess();
  v32 = v49;
  if (*(v1 + v31))
  {
    v33 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v4, 1, 1, v33);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = v45;
    v43(v45, v32, v8);
    v36 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    *(v37 + 4) = v34;
    (*(v9 + 32))(&v37[v36], v35, v8);
    sub_188453610();
  }

  return (v46)(v32, v8);
}

uint64_t sub_1884A929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  v5[29] = swift_task_alloc();
  v6 = type metadata accessor for SessionInvalidationContext();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v5[34] = swift_task_alloc();
  v7 = type metadata accessor for SessionReadinessError();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v8 = type metadata accessor for SessionID();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[44] = v9;
  v5[45] = *(v9 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_18844E6FC(&qword_1EA90E210, &qword_1886FA908);
  v5[49] = v10;
  v5[50] = *(v10 - 8);
  v5[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884A9590, 0, 0);
}

uint64_t sub_1884A9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[52] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v18 = v14[50];
    v17 = v14[51];
    v19 = v14[49];
    v14[2] = v14;
    v14[7] = v14 + 21;
    v14[3] = sub_1884A9824;
    swift_continuation_init();
    v14[17] = v19;
    v20 = sub_188403664(v14 + 14);
    sub_18844E6FC(&unk_1EA90E218, &unk_1886FA910);
    CheckedContinuation.init(continuation:function:)();
    (*(v18 + 32))(v20, v17, v19);
    v14[10] = MEMORY[0x1E69E9820];
    v14[11] = 1107296256;
    v14[12] = sub_1884AA420;
    v14[13] = &unk_1EFA29170;
    [v16 getCloudCoreSessionValidityError_];
    (*(v18 + 8))(v20, v19);

    return MEMORY[0x1EEE6DEC8](v14 + 2, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1883F7CB8();

    v28 = v14[1];

    return v28();
  }
}

uint64_t sub_1884A9824()
{

  return MEMORY[0x1EEE6DFA0](sub_1884A9904, 0, 0);
}

uint64_t sub_1884A9904(uint64_t a1)
{
  v131 = v1;
  v3 = v1[21];
  v2 = v1[22];
  if (v2)
  {
    v4 = v2;
    CCLog.getter();
    v5 = sub_1883FDAB8();
    v6(v5);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v119 = v9;
    v10 = os_log_type_enabled(v8, v9);
    v126 = v1[52];
    v11 = v1[48];
    v13 = v1[44];
    v12 = v1[45];
    v14 = v1[43];
    v15 = v1[39];
    v16 = v1[40];
    if (v10)
    {
      v123 = v3;
      v17 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v109 = sub_1883FE540();
      v130 = v109;
      *v17 = 136315394;
      sub_1883F73FC();
      sub_1884AB584(v18, v19, MEMORY[0x1E69948E8]);
      v112 = v13;
      v116 = v11;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v16 + 8))(v14, v15);
      v23 = sub_1883FE340(v20, v22, &v130);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      v24 = v2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v25;
      *v107 = v25;
      _os_log_impl(&dword_1883EA000, v8, v119, "Session was invalidated, but we failed to retrieve the details. sessionID: %s, error: %@", v17, 0x16u);
      sub_1883F9FEC(v107, &qword_1EA90DC70, &unk_1886FA190);
      sub_1883F7B60();
      sub_1883FE944(v109);
      sub_1883F7B60();
      sub_1883F7B60();

      (*(v12 + 8))(v116, v112);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
      (*(v12 + 8))(v11, v13);
    }
  }

  else
  {
    if (v3)
    {
      v1[23] = v3;
      v26 = v3;
      sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v27 = v1[24];
        v1[25] = v27;
        sub_1883F8920();
        sub_1884AB584(v28, v29, &unk_1886F6978);
        _BridgedStoredNSError.code.getter();
        if (v1[26] == 170)
        {
          v30 = v1[35];
          related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter(v27);
          v31 = sub_1883FF150();
          if (sub_1883F971C(v31, v32, v30) == 1)
          {
            v33 = 0xD000000000000043;
            sub_1883F9FEC(v1[34], &qword_1EA90E0D0, &qword_1886FA1A0);
            v34 = "v24@?0@NSError8@NSError16";
            v35 = 76;
          }

          else
          {
            v59 = v1[30];
            (*(v1[36] + 32))(v1[38], v1[34], v1[35]);
            related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter(v27);
            v60 = sub_1883FF150();
            if (sub_1883F971C(v60, v61, v59) != 1)
            {
              v125 = v3;
              v62 = v1[39];
              v63 = v1[40];
              v118 = v1[37];
              v121 = v1[38];
              v64 = v1[36];
              v110 = v1[42];
              v114 = v1[35];
              v65 = v1[33];
              v128 = v1[32];
              v67 = v1[30];
              v66 = v1[31];
              v68 = v1[28];
              (*(v66 + 32))(v65, v1[29], v67);
              CCLog.getter();
              (*(v63 + 16))(v110, v68, v62);
              v69 = *(v64 + 16);
              v69(v118, v121, v114);
              (*(v66 + 16))(v128, v65, v67);
              v70 = Logger.logObject.getter();
              v103 = static os_log_type_t.default.getter();
              v122 = v70;
              v71 = os_log_type_enabled(v70, v103);
              v115 = v1[47];
              v72 = v1[45];
              v129 = v1[44];
              v73 = v1[42];
              v74 = v1[39];
              v75 = v1[40];
              v76 = v1[36];
              v104 = v1[35];
              v105 = v1[37];
              v77 = v1[31];
              v108 = v1[30];
              v111 = v1[32];
              if (v71)
              {
                v78 = sub_1883FE540();
                v102 = swift_slowAlloc();
                v130 = swift_slowAlloc();
                *v78 = 136315650;
                sub_1883F73FC();
                sub_1884AB584(v79, v80, MEMORY[0x1E69948E8]);
                dispatch thunk of CustomStringConvertible.description.getter();
                v101 = v72;
                (*(v75 + 8))(v73, v74);
                v81 = sub_1883FDAB8();
                v84 = sub_1883FE340(v81, v82, v83);

                *(v78 + 4) = v84;
                *(v78 + 12) = 2112;
                sub_1884AB584(&qword_1EA90C2F8, MEMORY[0x1E6994830], MEMORY[0x1E6994858]);
                swift_allocError();
                v69(v85, v105, v104);
                v86 = _swift_stdlib_bridgeErrorToNSError();
                v87 = sub_1883FDAB8();
                v106 = v88;
                (v88)(v87);
                *(v78 + 14) = v86;
                *v102 = v86;
                *(v78 + 22) = 2080;
                sub_1884AB584(&unk_1EA90C2E8, MEMORY[0x1E6994898], MEMORY[0x1E69948B8]);
                v89 = dispatch thunk of CustomStringConvertible.description.getter();
                v91 = v90;
                v92 = *(v77 + 8);
                v92(v111, v108);
                v93 = sub_1883FE340(v89, v91, &v130);

                *(v78 + 24) = v93;
                _os_log_impl(&dword_1883EA000, v122, v103, "Session %s was invalidated due to %@, invalidationContext: %s", v78, 0x20u);
                sub_1883F9FEC(v102, &qword_1EA90DC70, &unk_1886FA190);
                sub_1883F7B60();
                swift_arrayDestroy();
                sub_1883F7B60();
                sub_1883F7B60();

                (*(v101 + 8))(v115, v129);
              }

              else
              {

                v94 = *(v77 + 8);
                v94(v111, v108);
                v106 = *(v76 + 8);
                v106(v105, v104);
                (*(v75 + 8))(v73, v74);
                v92 = v94;
                (*(v72 + 8))(v115, v129);
              }

              v95 = v1[52];
              v96 = v1[38];
              v97 = v1[35];
              v98 = v1[33];
              v99 = v1[30];
              v100 = v27;
              sub_1884AA480(v100);

              v92(v98, v99);
              v106(v96, v97);
              goto LABEL_15;
            }

            sub_1883F9FEC(v1[29], &unk_1EA90E170, &qword_1886FA450);
            v34 = "on readiness error!";
            v33 = 0xD000000000000048;
            v35 = 79;
          }

          return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v33, v34 | 0x8000000000000000, "CloudKit/CloudCoreContainerImplementation.swift", 47, 2, v35);
        }
      }
    }

    v37 = v1[40];
    v36 = v1[41];
    v38 = v1[39];
    v39 = v1[28];
    CCLog.getter();
    (*(v37 + 16))(v36, v39, v38);
    v40 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    v41 = os_log_type_enabled(v40, v127);
    v42 = v1[52];
    v44 = v1[45];
    v43 = v1[46];
    v45 = v1[44];
    v47 = v1[40];
    v46 = v1[41];
    v48 = v1[39];
    if (v41)
    {
      v120 = v1[46];
      v49 = swift_slowAlloc();
      v124 = v3;
      v50 = sub_1883FE540();
      v130 = v50;
      *v49 = 136315138;
      sub_1883F73FC();
      sub_1884AB584(v51, v52, MEMORY[0x1E69948E8]);
      v113 = v42;
      v117 = v45;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v47 + 8))(v46, v48);
      v56 = sub_1883FE340(v53, v55, &v130);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_1883EA000, v40, v127, "Session was invalidated, but we failed to retrieve the details. sessionID: %s", v49, 0xCu);
      sub_1883FE944(v50);
      sub_1883F7B60();
      sub_1883F7B60();

      (*(v44 + 8))(v120, v117);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
      (*(v44 + 8))(v43, v45);
    }
  }

LABEL_15:
  sub_1883F7CB8();

  v57 = v1[1];

  return v57();
}

uint64_t sub_1884AA420(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_188400B68((a1 + 32), *(a1 + 56));
  v6 = a3;
  v7 = a2;

  return sub_1884E5038(v5, a2, a3);
}

uint64_t sub_1884AA480(void *a1)
{
  v99 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v97 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  v94 = v6 - v5;
  type metadata accessor for SessionReadinessError();
  sub_1883F70DC();
  v95 = v8;
  v96 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v93 = v10 - v9;
  v11 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1883F926C();
  v91 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v85 - v17;
  v18 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1883F926C();
  v90 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  v87 = type metadata accessor for Logger();
  sub_1883F70DC();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1883F7100();
  v31 = v30 - v29;
  CCLog.getter();
  v32 = v1;
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v98 = v25;
  v89 = v15;
  v88 = v32;
  if (v36)
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = sub_1883FE540();
    v85 = v22;
    v39 = v38;
    v100 = v38;
    *v15 = 136315394;
    type metadata accessor for SessionID();
    v86 = a1;
    sub_1883F73FC();
    sub_1884AB584(v40, v41, MEMORY[0x1E69948E8]);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = sub_1883FE340(v42, v43, &v100);

    *(v15 + 4) = v44;
    a1 = v86;
    *(v15 + 6) = 2112;
    v45 = a1;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v46;
    *v37 = v46;
    _os_log_impl(&dword_1883EA000, v34, v35, "Session %s was invalidated with error %@", v15, 0x16u);
    sub_1883F9FEC(v37, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v39);
    v22 = v85;
    sub_1883F7B60();
    sub_1883F7B60();
  }

  (*(v27 + 8))(v31, v87);
  v47 = sub_1883FF150();
  v48 = v96;
  sub_1883F90F4(v47, v49, 1, v96);
  v50 = v92;
  sub_1883F90F4(v92, 1, 1, v99);
  v100 = a1;
  v51 = a1;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CKUnderlyingError(0);
  v53 = sub_1883FECF4(v52);
  v54 = v93;
  if (v53)
  {
    v55 = v101;
    v100 = v101;
    v56 = sub_1884AB584(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);
    sub_1883F8BC4(v56);
    if (v101 == 12000)
    {
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionReadinessError.getter(v22);
      sub_1883F9804();
      sub_1883F8250();
      sub_18840AFE8();
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionInvalidationContext.getter(v57);
      goto LABEL_10;
    }
  }

  v100 = a1;
  v58 = a1;
  type metadata accessor for CKError(0);
  if ((sub_1883FECF4(v59) & 1) == 0)
  {
LABEL_19:
    sub_1883FE65C();
    _StringGuts.grow(_:)(58);
    MEMORY[0x18CFD5140](0xD000000000000038, 0x8000000188700C60);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F8E6C();
    v84 = 116;
    goto LABEL_20;
  }

  v55 = v101;
  v100 = v101;
  sub_1883F8920();
  v62 = sub_1884AB584(v60, v61, &unk_1886F6978);
  sub_1883F8BC4(v62);
  if (v101 != 170)
  {

    goto LABEL_19;
  }

  related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter(v55);
  sub_1883F9804();
  sub_1883F8250();
  v63 = sub_18840AFE8();
  related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter(v63);
LABEL_10:

  sub_1883F9FEC(v50, &unk_1EA90E170, &qword_1886FA450);
  sub_1884AB374(v32, v50, &unk_1EA90E170, &qword_1886FA450);
  v64 = v90;
  sub_188442C8C(v15, v90, &qword_1EA90E0D0, &qword_1886FA1A0);
  v65 = sub_1883FF150();
  if (sub_1883F971C(v65, v66, v48) == 1)
  {
    sub_1883F9FEC(v64, &qword_1EA90E0D0, &qword_1886FA1A0);
    sub_1883FE65C();
    _StringGuts.grow(_:)(49);
    MEMORY[0x18CFD5140](0xD00000000000002FLL, 0x8000000188700CA0);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F8E6C();
    v84 = 120;
LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v82, v83, "CloudKit/CloudCoreContainerImplementation.swift", 47, 2, v84);
    __break(1u);
    return result;
  }

  v67 = v95;
  (*(v95 + 32))(v54, v64, v48);
  v68 = v91;
  sub_188442C8C(v50, v91, &unk_1EA90E170, &qword_1886FA450);
  v69 = sub_1883FF150();
  v71 = sub_1883F971C(v69, v70, v99);
  v72 = v88;
  if (v71 == 1)
  {
    sub_1883F9FEC(v68, &unk_1EA90E170, &qword_1886FA450);
    sub_1883FE65C();
    _StringGuts.grow(_:)(55);
    MEMORY[0x18CFD5140](0xD000000000000035, 0x8000000188700CD0);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F8E6C();
    v84 = 123;
    goto LABEL_20;
  }

  v73 = v94;
  (*(v97 + 32))(v94, v68, v99);
  v74 = v72 + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler;
  swift_beginAccess();
  v75 = *v74;
  if (*v74)
  {
    v76 = *(v74 + 8);
    swift_endAccess();

    v75(v54, v73);
    sub_1883F5BA0(v75, v76);
    v77 = sub_1883F79DC();
    v78(v77);
    (*(v67 + 8))(v54, v48);
    sub_1883F9FEC(v50, &unk_1EA90E170, &qword_1886FA450);
    return sub_1883F9FEC(v98, &qword_1EA90E0D0, &qword_1886FA1A0);
  }

  else
  {
    v80 = sub_1883F79DC();
    v81(v80);
    (*(v67 + 8))(v54, v48);
    sub_1883F9FEC(v50, &unk_1EA90E170, &qword_1886FA450);
    sub_1883F9FEC(v98, &qword_1EA90E0D0, &qword_1886FA1A0);
    return swift_endAccess();
  }
}

void sub_1884AADC4(void *a1)
{
  if ([objc_opt_self() isSupported] && (v3 = sub_1884AB3C4(a1), v4))
  {
    v5 = v3;
    v6 = v4;
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1883FDE5C(v7, qword_1ED4B5C70);
    v8 = v1;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      type metadata accessor for SessionID();
      sub_1883F73FC();
      sub_1884AB584(v12, v13, MEMORY[0x1E69948E8]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = sub_1883FE340(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1883FE340(v5, v6, &v19);
      _os_log_impl(&dword_1883EA000, v9, v10, "Session %s will adopt persona %s on use", v11, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    sub_1884AB428();
    [v8 setPersona_];
    sub_1883F8750();
  }

  else
  {
    sub_1883F8750();
  }
}

uint64_t sub_1884AB0D4()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v10, sel_CKPropertiesDescription);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  strcpy(v9, ", sessionID=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  type metadata accessor for SessionID();
  sub_1883F73FC();
  sub_1884AB584(v5, v6, MEMORY[0x1E69948E8]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v7);

  MEMORY[0x18CFD5140](v9[0], v9[1]);

  return v11;
}

uint64_t sub_1884AB2CC(uint64_t a1)
{
  result = type metadata accessor for SessionID();
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

uint64_t sub_1884AB374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1884AB3C4(void *a1)
{
  v1 = [a1 personaIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1884AB428()
{
  result = qword_1EA90C320;
  if (!qword_1EA90C320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C320);
  }

  return result;
}

uint64_t sub_1884AB474(uint64_t a1)
{
  v4 = *(type metadata accessor for SessionID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_188496548;

  return sub_1884A929C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1884AB584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1884AB5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](a1, a2);

  v8 = [v6 initWithIdentifier:v7 type:a3];

  return v8;
}

void sub_1884AB648()
{
  sub_1883F8AF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  sub_1883F8AE4(v9);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F83A4();
  v11 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v17 = v16 - v15;
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  (*(v13 + 16))(v17, v7, v11);
  v19 = v18;
  sub_1884AB884(v17);
  v20 = type metadata accessor for AnySessionAcquiredInfo();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v1, v5, v20);
  sub_1883F90F4(v1, 0, 1, v20);
  sub_1884AB9A4(v1);
  if (v3)
  {
    swift_unknownObjectRetain();
    v22 = swift_dynamicCastObjCProtocolUnconditional();
  }

  else
  {
    v22 = 0;
  }

  [v19 setTestDeviceReferenceProtocol_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v21 + 8))(v5, v20);
  (*(v13 + 8))(v7, v11);
  sub_1883F8178();
}

uint64_t sub_1884AB884(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = objc_allocWithZone(type metadata accessor for CKSessionConfiguration());
  v10 = CKSessionConfiguration.init(_:)(v8);
  [v2 setCkSessionConfiguration_];

  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1884AB9A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for AnySessionAcquiredInfo();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1884AD5D4(a1, v6);
  if (sub_1883F971C(v6, 1, v7) == 1)
  {
    sub_188442B84(v6, &unk_1EA90E238, &qword_1886FA950);
    [v2 setCkSessionAcquiredInfo_];
    return sub_188442B84(a1, &unk_1EA90E238, &qword_1886FA950);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v15 = objc_allocWithZone(type metadata accessor for CKSessionAcquiredInfo());
    v16 = CKSessionAcquiredInfo.init(_:)(v10);
    [v2 setCkSessionAcquiredInfo_];

    sub_188442B84(a1, &unk_1EA90E238, &qword_1886FA950);
    return (*(v8 + 8))(v13, v7);
  }
}

id sub_1884ABBD8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1884ABC88(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1884ABD1C()
{
  v1 = sub_1883FF15C();
  v2 = sub_1883F7E8C();
  v3 = MEMORY[0x18CFD5010](v2);

  v6.receiver = v0;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithSqliteRepresentation_, v3);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1884ABDC4@<X0>(uint64_t a1@<X8>)
{
  if ([v1 ckSessionAcquiredInfo])
  {
    type metadata accessor for CKSessionAcquiredInfo();
    swift_dynamicCastClassUnconditional();
    swift_unknownObjectRetain();
    CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
    swift_unknownObjectRelease_n();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for AnySessionAcquiredInfo();

  return sub_1883F90F4(a1, v3, 1, v4);
}

void sub_1884ABE98()
{
  sub_1883F8AF0();
  type metadata accessor for BundleID.Payload();
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  sub_1883FED1C();
  v23 = type metadata accessor for BundleID();
  sub_1883F70DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F7100();
  sub_1883FE66C();
  v6 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  sub_1883F70DC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  sub_1883F9824();
  v10 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1883F7100();
  v16 = v15 - v14;
  sub_188445AC0();
  AnySessionConfiguration.application.getter();
  (*(v12 + 8))(v16, v10);
  AuthenticatedSession.Configuration.Application.bundleID.getter();
  (*(v8 + 8))(v1, v6);
  BundleID.payload.getter();
  (*(v4 + 8))(v0, v23);
  v17 = sub_1883F7CD4();
  if (v18(v17) == *MEMORY[0x1E69948C0])
  {
    v19 = sub_1883F7E8C();
    v20(v19);
  }

  else
  {
    v21 = sub_1883F7E8C();
    v22(v21);
    sub_1883FF490();
  }

  sub_1883F8178();
}

void sub_1884AC128()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  v0 = sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858(v0, v1, v2);
  sub_1883FE048();

  sub_1883FA110("Fatal error", v3, v4, v7, v8, "CloudKit/CloudCoreContainerOptions.swift", v5, v6, 90, 0);
  __break(1u);
}

void sub_1884AC1F0()
{
  sub_1883F8AF0();
  type metadata accessor for BundleID.Payload();
  sub_1883F70DC();
  v33 = v4;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1883F7100();
  sub_1883F8424(v5);
  type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration.Payload();
  sub_1883F70DC();
  v37 = v6;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F7100();
  sub_1883FE66C();
  v36 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration();
  sub_1883F70DC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  sub_1883F9824();
  v35 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  sub_1883F70DC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1883F7100();
  v16 = v15 - v14;
  v17 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F7100();
  sub_1883FEA80();
  type metadata accessor for BundleID();
  sub_1883F70DC();
  v30 = v22;
  v31 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1883F7100();
  v25 = v24 - v23;
  sub_188445AC0();
  AnySessionConfiguration.application.getter();
  (*(v19 + 8))(v0, v17);
  AuthenticatedSession.Configuration.Application.pushRegistration.getter();
  (*(v12 + 8))(v16, v35);
  AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter();
  (*(v9 + 8))(v2, v36);
  if ((*(v38 + 88))(v1, v37) != *MEMORY[0x1E69947F8])
  {
    (*(v38 + 8))(v1, v37);
LABEL_6:
    sub_1883FF490();
    goto LABEL_7;
  }

  (*(v38 + 96))(v1, v37);
  (*(v30 + 32))(v25, v1, v31);
  BundleID.payload.getter();
  (*(v30 + 8))(v25, v31);
  v26 = sub_1883F7CD4();
  if (v27(v26) != *MEMORY[0x1E69948C0])
  {
    (*(v33 + 8))(v32, v34);
    goto LABEL_6;
  }

  v28 = sub_1883F7E8C();
  v29(v28);
LABEL_7:
  sub_1883F8178();
}

void sub_1884AC5E4()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  v0 = sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858(v0, v1, v2);
  sub_1883FE048();

  sub_1883FA110("Fatal error", v3, v4, v7, v8, "CloudKit/CloudCoreContainerOptions.swift", v5, v6, 101, 0);
  __break(1u);
}

void sub_1884AC6AC()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  v0 = sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858(v0, v1, v2);
  sub_1883FE048();

  sub_1883FA110("Fatal error", v3, v4, v7, v8, "CloudKit/CloudCoreContainerOptions.swift", v5, v6, 115, 0);
  __break(1u);
}

void sub_1884AC774()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  v0 = sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858(v0, v1, v2);
  sub_1883FE048();

  sub_1883FA110("Fatal error", v3, v4, v7, v8, "CloudKit/CloudCoreContainerOptions.swift", v5, v6, 127, 0);
  __break(1u);
}

id sub_1884AC868()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  v1 = sub_1883F8AE4(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  v4 = v3 - v2;
  sub_1883F4C5C(0, &unk_1EA90C350, off_1E70B9FB0);
  sub_188445AC0();
  return CKAccountOverrideInfo.init(sessionConfiguration:)(v4);
}

void sub_1884AC924(void *a1)
{
  swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  sub_188405548();
  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188700F60);
  sub_1883F95DC();
  v3 = a1;
  sub_18844E6FC(&unk_1EA90E248, &qword_1886FA958);
  String.init<A>(describing:)();
  sub_1883FE048();

  sub_1883FA110("Fatal error", v4, v5, 0xD000000000000015, 0x8000000188701030, "CloudKit/CloudCoreContainerOptions.swift", v6, v7, 134, 0);
  __break(1u);
}

id sub_1884ACA70()
{
  ObjectType = swift_getObjectType();
  v3 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  sub_1883F8AE4(v3);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1883FE66C();
  v5 = type metadata accessor for AnySessionAcquiredInfo();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v11 = v10 - v9;
  sub_1884ABDC4(v1);
  if (sub_1883F971C(v1, 1, v5) == 1)
  {
    sub_188442B84(v1, &unk_1EA90E238, &qword_1886FA950);
    v19.receiver = v0;
    v19.super_class = ObjectType;
    return objc_msgSendSuper2(&v19, sel_persona);
  }

  else
  {
    (*(v7 + 32))(v11, v1, v5);
    AnySessionAcquiredInfo.userPersonaUniqueString.getter();
    if (v13)
    {
      sub_1883F4C5C(0, &qword_1EA90C320, off_1E70BA570);

      v12 = sub_1884ACDD0();
      v16 = sub_1883F8270();
      v17(v16);
    }

    else
    {
      v14 = sub_1883F8270();
      v15(v14);
      return 0;
    }
  }

  return v12;
}

void sub_1884ACCE4(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  sub_1883F8AE4(v5);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F83A4();
  sub_1884ABDC4(v2);
  v7 = type metadata accessor for AnySessionAcquiredInfo();
  v8 = sub_1883F971C(v2, 1, v7);
  sub_188442B84(v2, &unk_1EA90E238, &qword_1886FA950);
  if (v8 == 1)
  {
    v9.receiver = v1;
    v9.super_class = ObjectType;
    objc_msgSendSuper2(&v9, sel_setPersona_, a1);
  }

  else
  {
    __break(1u);
  }
}

id sub_1884ACDD0()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x18CFD5010]();

  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() personaWithIdentifier:v0 error:v5];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}