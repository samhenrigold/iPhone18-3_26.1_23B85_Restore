uint64_t sub_100030288(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022F18(&unk_1000B8650, &unk_10008C5C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100026180(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000249A8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000249A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000249A8(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
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
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000249A8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Int sub_100030564()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000305D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10003061C()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10003065C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100032170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003069C(uint64_t a1)
{
  v2 = sub_100032638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000306D8(uint64_t a1)
{
  v2 = sub_100032638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100030714(void *a1)
{
  v3 = v1;
  v5 = sub_100022F18(&qword_1000B8838, &qword_10008CC30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14[-v8];
  sub_1000297A8(a1, a1[3]);
  sub_100032638();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_1000326F4(&qword_1000B8848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage(0);
    LOBYTE(v15) = 1;
    type metadata accessor for URL();
    sub_1000326F4(&qword_1000B8850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 2;
    sub_10003268C(v15, v12);
    sub_1000326A0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10002C17C(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10003096C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for URL();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v26 = *(v32 - 8);
  __chkstk_darwin(v32, v8);
  v30 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100022F18(&qword_1000B8860, &qword_10008CC38);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage(0);
  __chkstk_darwin(v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000297A8(a1, a1[3]);
  sub_100032638();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100024F7C(a1);
  }

  v23 = v13;
  v24 = a1;
  v17 = v16;
  v19 = v27;
  v18 = v28;
  v20 = v29;
  LOBYTE(v33) = 0;
  sub_1000326F4(&qword_1000B8868, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 32))(v17, v30, v32);
  LOBYTE(v33) = 1;
  sub_1000326F4(&qword_1000B8870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 32))(v17 + *(v23 + 20), v7, v20);
  v34 = 2;
  sub_10003273C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v24;
  (*(v19 + 8))(v12, v31);
  *(v17 + *(v23 + 24)) = v33;
  sub_100031E7C(v17, v25);
  sub_100024F7C(v21);
  return sub_100031EE0(v17);
}

uint64_t sub_100030E64@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100030E94(uint64_t a1)
{
  v2 = sub_1000325E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030ED0(uint64_t a1)
{
  v2 = sub_1000325E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100030F34(void *a1)
{
  v2 = sub_100022F18(&qword_1000B8828, &qword_10008CC28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_1000297A8(a1, a1[3]);
  sub_1000325E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10003104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for TypedCodingEnvelope();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v20 - v12;
  if (sub_100064C5C(a2))
  {
    type metadata accessor for DictionaryDecoder();
    swift_allocObject();
    DictionaryDecoder.init()();
    v20[3] = a6;
    swift_getWitnessTable();
    dispatch thunk of DictionaryDecoder.decode<A>(_:from:)();

    if (v6)
    {
    }

    else
    {
      TypedCodingEnvelope.value.getter();

      return (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    sub_100022F18(&qword_1000B8820, &qword_10008CC20);
    *v17 = &type metadata for String;
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v18._object = 0x80000001000882C0;
    v18._countAndFlagsBits = 0xD000000000000043;
    String.append(_:)(v18);
    v19._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v19);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, enum case for DecodingError.typeMismatch(_:), v15);
    return swift_willThrow();
  }
}

uint64_t sub_100031314()
{
  if (qword_1000B7F40 != -1)
  {
    swift_once();
  }

  v1 = off_1000B9368;

  os_unfair_lock_lock(v1 + 6);
  if (!*&v1[4]._os_unfair_lock_opaque)
  {
    v5 = type metadata accessor for CoreDataStack(0, v2);
    v9 = sub_1000634A4(0x6943796C696D6146, 0xEC000000656C6372, 0xD000000000000016, 0x80000001000881C0, 0);
    if (v0)
    {
      os_unfair_lock_unlock(v1 + 6);
      goto LABEL_13;
    }

    v16 = v9;

    *&v1[4]._os_unfair_lock_opaque = v16;
  }

  os_unfair_lock_unlock(v1 + 6);

  if (qword_1000B7F48 != -1)
  {
    swift_once();
  }

  v3 = off_1000B9370;

  os_unfair_lock_lock(v3 + 6);
  if (!*&v3[4]._os_unfair_lock_opaque)
  {
    v5 = type metadata accessor for CoreDataStack(0, v4);
    v10 = sub_1000634A4(0xD000000000000013, 0x8000000100087CB0, 0xD00000000000001ELL, 0x8000000100087CD0, 1);
    if (v0)
    {
      os_unfair_lock_unlock(v3 + 6);

      goto LABEL_13;
    }

    v17 = v10;

    *&v3[4]._os_unfair_lock_opaque = v17;
  }

  os_unfair_lock_unlock(v3 + 6);

  v5 = sub_100022F18(&qword_1000B8598, &qword_10008C968);
  swift_retain_n();

  v6 = FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:)();
  v7 = sub_10002C394(v6);
  if (!v0)
  {
    v11 = v7;
    v12 = type metadata accessor for SharingCenterDaemonListener(v7, v8);
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR___FASharingCenterDaemonListener_underlying] = v11;
    v18.receiver = v13;
    v18.super_class = v12;
    v14 = v11;
    v5 = objc_msgSendSuper2(&v18, "init");

    return v5;
  }

LABEL_13:

  return v5;
}

uint64_t sub_1000316DC(uint64_t a1)
{
  v3 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  result = __chkstk_darwin(v3 - 8, v4);
  v7 = &v11 - v6;
  if (a1)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = a1;

    v10 = v1;
    sub_1000646E8(0, 0, v7, &unk_10008C958, v9);
  }

  return result;
}

uint64_t sub_1000317F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.coreDataSharing.getter();

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = v7;
    v24 = v6;
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v13 = 136315394;
    v14 = 45;
    if (a2)
    {
      v15 = a1;
    }

    else
    {
      v15 = 45;
    }

    v16 = 0xE100000000000000;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0xE100000000000000;
    }

    v18 = sub_1000373D4(v15, v17, &v25);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = v19;
    }

    v20 = sub_1000373D4(v14, v16, &v25);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "didSend %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();

    return (*(v23 + 8))(v10, v24);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100031A90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026358;

  return sub_10002CE14(a1, v4, v5, v7, v6);
}

uint64_t sub_100031B9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100022F60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage(uint64_t a1)
{
  result = qword_1000B86C0;
  if (!qword_1000B86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100031C38@<D0>(uint64_t a1@<X8>)
{
  MessageDispatcher<>.detachMessage(_:)();
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100031C68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100026620;

  return sub_10002EE44(a1);
}

uint64_t sub_100031D04(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026358;

  return sub_10002F518(a1, a2, v6);
}

uint64_t sub_100031DCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10002E6EC(a1, a2);
}

uint64_t sub_100031E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031EE0(uint64_t a1)
{
  v2 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100031F3C()
{
  result = qword_1000B8618;
  if (!qword_1000B8618)
  {
    sub_100022F60(&qword_1000B8610, &qword_10008C9E0);
    sub_1000326F4(&qword_1000B8620, type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage, &unk_10008CB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8618);
  }

  return result;
}

unint64_t sub_100031FF0()
{
  result = qword_1000B8638;
  if (!qword_1000B8638)
  {
    sub_100022F60(&qword_1000B8630, &qword_10008C9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8638);
  }

  return result;
}

uint64_t sub_1000320C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10002D9A0(a1, a2);
}

uint64_t sub_100032170(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100032280(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026620;

  return sub_10002D56C(a1, a2, v6);
}

void sub_100032388(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_100032424();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100032424()
{
  if (!qword_1000B86D0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B86D0);
    }
  }
}

unint64_t sub_100032538()
{
  result = qword_1000B8810;
  if (!qword_1000B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8810);
  }

  return result;
}

unint64_t sub_100032590()
{
  result = qword_1000B8818;
  if (!qword_1000B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8818);
  }

  return result;
}

unint64_t sub_1000325E4()
{
  result = qword_1000B8830;
  if (!qword_1000B8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8830);
  }

  return result;
}

unint64_t sub_100032638()
{
  result = qword_1000B8840;
  if (!qword_1000B8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8840);
  }

  return result;
}

uint64_t sub_10003268C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002C1E4(result, a2);
  }

  return result;
}

unint64_t sub_1000326A0()
{
  result = qword_1000B8858;
  if (!qword_1000B8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8858);
  }

  return result;
}

uint64_t sub_1000326F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003273C()
{
  result = qword_1000B8878;
  if (!qword_1000B8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingCenterDaemonListener.ShareInvitationMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingCenterDaemonListener.ShareInvitationMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100032920()
{
  result = qword_1000B8880;
  if (!qword_1000B8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8880);
  }

  return result;
}

unint64_t sub_100032978()
{
  result = qword_1000B8888;
  if (!qword_1000B8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8888);
  }

  return result;
}

unint64_t sub_1000329D0()
{
  result = qword_1000B8890;
  if (!qword_1000B8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8890);
  }

  return result;
}

unint64_t sub_100032A28()
{
  result = qword_1000B8898;
  if (!qword_1000B8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8898);
  }

  return result;
}

unint64_t sub_100032A80()
{
  result = qword_1000B88A0;
  if (!qword_1000B88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88A0);
  }

  return result;
}

uint64_t sub_100032AF0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v27 - v9;
  __chkstk_darwin(v8, v11);
  v13 = &v27 - v12;
  v14 = *(v0 + 24);
  v15 = [v14 primaryAuthKitAccount];
  if (v15)
  {
    v16 = v15;
    if ([v14 isManagedAppleIDForAccount:v15])
    {
      static FamilyLogger.daemon.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Primary AuthKit account is managed, returning true", v19, 2u);
      }

      v20 = 1;
      goto LABEL_14;
    }
  }

  v21 = [v14 protoAccount];
  if (v21)
  {

    static FamilyLogger.daemon.getter();
    v16 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v22, "Found proto account, returning true", v23, 2u);
    }

    v20 = 1;
    v13 = v10;
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v16 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v16, v24, "No Managed or Proto account, returning false", v25, 2u);
    }

    v20 = 0;
    v13 = v6;
  }

LABEL_14:

  (*(v2 + 8))(v13, v1);
  return v20;
}

uint64_t sub_100032DDC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = v21 - v8;
  v10 = [*(v0 + 16) aa_primaryAppleAccount];
  if (v10)
  {
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 accountPropertyForKey:v12];

    if (v13)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10002624C(v21, &qword_1000B82F8, &qword_10008CEB0);
      static FamilyLogger.daemon.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "There is a pending date of birth", v16, 2u);
      }

      v17 = 1;
      goto LABEL_10;
    }

    memset(v21, 0, sizeof(v21));
    sub_10002624C(v21, &qword_1000B82F8, &qword_10008CEB0);
  }

  static FamilyLogger.daemon.getter();
  v11 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v11, v18, "No pending date of birth, continuing", v19, 2u);
  }

  v17 = 0;
  v9 = v6;
LABEL_10:

  (*(v2 + 8))(v9, v1);
  return v17;
}

uint64_t sub_100033084(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100033168, 0, 0);
}

uint64_t sub_100033168(uint64_t a1)
{
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PersonalAttestationController: Trying to fetch birthday from Authkit.", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[9];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = *(v8 + 24);
  v11 = [v10 primaryAuthKitAccount];
  v1[16] = v11;
  if (v11)
  {
    v12 = v11;
    v13 = [*(v1[9] + 16) aa_primaryAppleAccount];
    if (v13 && (v14 = v13, v15 = [v13 aa_altDSID], v14, v15))
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v1[17] = v18;
      v19 = [v10 birthYearForAccount:v12];
      v1[18] = v19;
      if (v19)
      {
        v20 = v19;
        v21 = v1[9];
        v22 = swift_task_alloc();
        v1[19] = v22;
        v22[2] = v21;
        v22[3] = v16;
        v22[4] = v18;
        v22[5] = v20;
        v23 = swift_task_alloc();
        v1[20] = v23;
        v24 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
        *v23 = v1;
        v23[1] = sub_10003377C;
        v25 = v1[8];

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, 0, 0, 0x7269426863746566, 0xEF29287961646874, sub_100034A20, v22, v24);
      }

      static FamilyLogger.daemon.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "PersonalAttestationController: Unable to fetch authkit account.", v39, 2u);
      }

      v40 = v1[14];
      v41 = v1[10];

      v9(v40, v41);
      type metadata accessor for AgeRangeError(0);
      v1[7] = -4004;
      sub_100023D48(_swiftEmptyArrayStorage);
      sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    else
    {
      static FamilyLogger.daemon.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "PersonalAttestationController: Unable to primary authkit account.", v28, 2u);
      }

      v29 = v1[13];
      v30 = v1[10];

      v9(v29, v30);
      type metadata accessor for AgeRangeError(0);
      v1[5] = -4004;
      sub_100023D48(_swiftEmptyArrayStorage);
      sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    swift_willThrow();
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "PersonalAttestationController: Unable to fetch authkit account.", v33, 2u);
    }

    v34 = v1[12];
    v35 = v1[10];

    v9(v34, v35);
    type metadata accessor for AgeRangeError(0);
    v1[3] = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v36 = v1[1];

  return v36();
}

uint64_t sub_10003377C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100033948;
  }

  else
  {

    v2 = sub_1000338A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000338A4()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033948()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000339F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = aBlock - v12;
  v14 = *(a2 + 32);
  v15 = String._bridgeToObjectiveC()();
  (*(v9 + 16))(v13, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v13, v8);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = sub_100034A2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034048;
  aBlock[3] = &unk_1000A7F28;
  v18 = _Block_copy(aBlock);
  v19 = a5;

  [v14 fetchBirthdayForAltDSID:v15 completion:v18];
  _Block_release(v18);
}

void sub_100033BE8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v54 = a5;
  v55 = a1;
  v8 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v49 - v19;
  v21 = [objc_allocWithZone(NSDateFormatter) init];
  v22 = String._bridgeToObjectiveC()();
  [v21 setDateFormat:v22];

  if (a3)
  {
    v56 = a3;
    swift_errorRetain();
    sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  }

  else
  {
    v49 = v17;
    v50 = v20;
    v51 = v11;
    v52 = v13;
    v53 = a4;
    if (a2 && v55)
    {
      v23 = v55;
      v24 = a2;
      v25 = v23;
      v26 = v24;
      v27 = [v24 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v56 = v28;
      v57 = v30;
      v31._countAndFlagsBits = 45;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v32 = [v25 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      v37._countAndFlagsBits = 45;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);
      v38 = [v54 description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      v43 = String._bridgeToObjectiveC()();

      v44 = [v21 dateFromString:v43];

      if (v44)
      {
        v45 = v49;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = v52;
        v47 = v50;
        (*(v52 + 32))(v50, v45, v12);
        v48 = v51;
        (*(v46 + 16))(v51, v47, v12);
        (*(v46 + 56))(v48, 0, 1, v12);
        sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
        CheckedContinuation.resume(returning:)();

        (*(v46 + 8))(v47, v12);
        return;
      }
    }

    type metadata accessor for AgeRangeError(0);
    v58 = -4000;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v58 = v56;
    sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  }

  CheckedContinuation.resume(throwing:)();
}

void sub_100034048(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1000340F0()
{
  v1 = type metadata accessor for Calendar();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = type metadata accessor for DateComponents();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = type metadata accessor for Date();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1000342E8;

  return sub_100033084(v3);
}

uint64_t sub_1000342E8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000347B8;
  }

  else
  {
    v2 = sub_1000343FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000343FC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002624C(v3, &qword_1000B89A8, &qword_10008CE90);
LABEL_4:
    type metadata accessor for AgeRangeError(0);
    v0[3] = -4000;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  v4 = v0[13];
  v17 = v0[14];
  v18 = v0[9];
  v5 = v0[6];
  v21 = v0[8];
  v22 = v0[7];
  v19 = v0[5];
  v20 = v0[4];
  (*(v2 + 32))();
  static Calendar.current.getter();
  sub_100022F18(&qword_1000B89B8, &qword_10008CEA0);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008C640;
  (*(v7 + 104))(v9 + v8, enum case for Calendar.Component.year(_:), v6);
  sub_100034AEC(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:to:)();

  v10 = *(v2 + 8);
  v10(v4, v1);
  (*(v19 + 8))(v5, v20);
  v11 = DateComponents.year.getter();
  v13 = v12;
  (*(v21 + 8))(v18, v22);
  v10(v17, v1);
  if (v13)
  {
    goto LABEL_4;
  }

  v16 = v0[1];

  return v16(v11);
}

uint64_t sub_1000347B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034854()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1000348C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&unk_1000B89E0, &unk_10008CEC0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100034FBC(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100034FBC(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10003206C(v18);
        if (v11)
        {
          sub_10003206C(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_100034A2C(void *a1, void *a2, uint64_t a3)
{
  v7 = *(sub_100022F18(&qword_1000B89B0, &qword_10008CE98) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100033BE8(a1, a2, a3, v3 + v8, v9);
}

void *sub_100034AEC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_100022F18(&qword_1000B89C0, &qword_10008CEA8);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_100034E0C(&qword_1000B89C8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_100034E0C(&qword_1000B89D0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100034E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100034E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&qword_1000B89D8, &qword_10008CEB8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100035018()
{
  v0 = sub_100034E54(&off_1000A7698);
  result = swift_arrayDestroy();
  qword_1000B89F0 = v0;
  return result;
}

uint64_t sub_100035064()
{
  v0 = sub_100022F18(&qword_1000B8A60, &unk_10008E430);
  sub_100027758(v0, qword_1000B89F8);
  sub_100027720(v0, qword_1000B89F8);
  v1 = [objc_opt_self() hours];
  sub_100002B10(0, &qword_1000B8BC0, NSUnitDuration_ptr);
  return Measurement.init(value:unit:)();
}

void sub_100035174(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

id RateLimiter.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();

  v9[4] = j___s10Foundation4DateV3nowACvgZ;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000353F0;
  v9[3] = &unk_1000A7F50;
  v6 = _Block_copy(v9);
  v7 = [v3 initWithPersistence:v4 identifier:v5 getDate:v6];
  _Block_release(v6);

  return v7;
}

id RateLimiter.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();

  v8[4] = j___s10Foundation4DateV3nowACvgZ;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000353F0;
  v8[3] = &unk_1000A7F78;
  v5 = _Block_copy(v8);
  v6 = [v2 initWithPersistence:v3 identifier:v4 getDate:v5];
  _Block_release(v5);

  return v6;
}

Class sub_1000353F0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);

  v7(v8);

  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);

  return v9.super.isa;
}

Swift::Void __swiftcall RateLimiter.recordCall(clientName:)(Swift::String clientName)
{
  object = clientName._object;
  countAndFlagsBits = clientName._countAndFlagsBits;
  v4 = *&v1[OBJC_IVAR___FARateLimiter_queue];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = countAndFlagsBits;
  v5[4] = object;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100035784;
  *(v6 + 24) = v5;
  v10[4] = sub_1000357B0;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000357D8;
  v10[3] = &unk_1000A7FF0;
  v7 = _Block_copy(v10);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100035868(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5, v6);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClientRecord(0);
  v47 = *(v8 - 8);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v49 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = &v47 - v18;
  v20 = sub_1000365C8();
  v48 = v2;
  v21 = v19;
  (*(v2 + OBJC_IVAR___FARateLimiter_getDate))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1;
  v54 = v20;
  v24 = sub_100037A08(a1, a2);
  v25 = v20[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v19) = v23;
  if (v20[3] >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_10007700C();
    v20 = v54;
    goto LABEL_6;
  }

  sub_100075D0C(v27, isUniquelyReferenced_nonNull_native);
  v20 = v54;
  v28 = sub_100037A08(v53, a2);
  if ((v19 & 1) != (v29 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = v28;
LABEL_6:
  v30 = v21;
  v31 = v12;
  if ((v19 & 1) == 0)
  {
    static Date.now.getter();
    sub_100076D58(v24, v53, a2, v11, v20);
  }

  (*(v13 + 24))(v20[7] + *(v47 + 72) * v24, v30, v12);
  sub_10003671C(v20);

  v32 = v50;
  static FamilyLogger.rateLimiter.getter();
  v33 = v49;
  (*(v13 + 16))(v49, v30, v31);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v47 = v31;
    v37 = v36;
    v48 = swift_slowAlloc();
    v54 = v48;
    *v37 = 136315394;
    *(v37 + 4) = sub_1000373D4(v53, a2, &v54);
    *(v37 + 12) = 2080;
    sub_100002BA0(&qword_1000B8BB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = v47;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v30;
    v40 = v32;
    v42 = v41;
    v43 = *(v13 + 8);
    v43(v33, v38);
    v44 = sub_1000373D4(v39, v42, &v54);

    *(v37 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Client: %s recorded new call at: %s", v37, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v40, v52);
    return (v43)(v53, v38);
  }

  else
  {

    v46 = *(v13 + 8);
    v46(v33, v31);
    (*(v51 + 8))(v32, v52);
    return (v46)(v30, v31);
  }
}

Swift::Bool __swiftcall RateLimiter.unsafeIsAllowed(clientName:)(Swift::String clientName)
{
  object = clientName._object;
  countAndFlagsBits = clientName._countAndFlagsBits;
  v4 = type metadata accessor for Logger();
  v68 = *(v4 - 8);
  v69 = v4;
  v6 = __chkstk_darwin(v4, v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v66 = &v61 - v10;
  v11 = sub_100022F18(&qword_1000B8A60, &unk_10008E430);
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for ClientRecord(0);
  v62 = *(v15 - 8);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Date();
  v65 = *(v67 - 8);
  v20 = __chkstk_darwin(v67, v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v61 - v25;
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v61 - v29;
  __chkstk_darwin(v28, v31);
  v33 = &v61 - v32;
  if (qword_1000B7F10 != -1)
  {
    swift_once();
  }

  v70 = countAndFlagsBits;
  v71 = object;
  if (sub_1000364D0(countAndFlagsBits, object, qword_1000B89F0))
  {
    goto LABEL_13;
  }

  v61 = v1;
  v34 = sub_1000365C8();
  v35 = v70;
  if (!*(v34 + 16) || (v36 = sub_100037A08(v70, v71), (v37 & 1) == 0))
  {

    static FamilyLogger.rateLimiter.getter();
    v55 = v71;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v72 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1000373D4(v35, v55, &v72);
      _os_log_impl(&_mh_execute_header, v56, v57, "Client: %s allowed to call for the first time", v58, 0xCu);
      sub_100024F7C(v59);
    }

    (*(v68 + 8))(v8, v69);
LABEL_13:
    v54 = 1;
    return v54 & 1;
  }

  sub_100037A80(*(v34 + 56) + *(v62 + 72) * v36, v18);

  v38 = v65;
  v39 = *(v65 + 32);
  v40 = v18;
  v41 = v67;
  v39(v30, v40, v67);
  v39(v33, v30, v41);
  if (qword_1000B7F18 != -1)
  {
    swift_once();
  }

  v42 = v64;
  sub_100027720(v64, qword_1000B89F8);
  v43 = [objc_opt_self() seconds];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  (*(v63 + 8))(v14, v42);
  v44 = Date.addingTimeInterval(_:)();
  (*(v61 + OBJC_IVAR___FARateLimiter_getDate))(v44);
  sub_100002BA0(&qword_1000B8A68, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v45 = dispatch thunk of static Comparable.< infix(_:_:)();
  v46 = *(v38 + 8);
  v46(v22, v41);
  v46(v26, v41);
  v47 = v33;
  v48 = v66;
  static FamilyLogger.rateLimiter.getter();
  v49 = v71;

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v72 = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_1000373D4(v70, v49, &v72);
    *(v52 + 12) = 1024;
    v54 = v45 ^ 1;
    *(v52 + 14) = v54 & 1;
    _os_log_impl(&_mh_execute_header, v50, v51, "Client: %s isAllowed: %{BOOL}d", v52, 0x12u);
    sub_100024F7C(v53);

    (*(v68 + 8))(v48, v69);
    v46(v47, v67);
  }

  else
  {

    (*(v68 + 8))(v48, v69);
    v46(v47, v41);
    v54 = v45 ^ 1;
  }

  return v54 & 1;
}

uint64_t sub_1000364D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1000365C8()
{
  v1 = *(v0 + OBJC_IVAR___FARateLimiter_persistence);
  _StringGuts.grow(_:)(37);

  String.append(_:)(*(v0 + OBJC_IVAR___FARateLimiter_identifier));
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 dataForKey:v2];

  if (!v3)
  {
    return sub_1000240EC(_swiftEmptyArrayStorage);
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_100037E38();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C190(v4, v6);
  return 0xD000000000000023;
}

uint64_t sub_10003671C(unint64_t a1)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3, v4);
  v13 = a1;
  sub_100037D90();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = *(v1 + OBJC_IVAR___FARateLimiter_persistence);
  v7 = v5;
  v9 = v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  _StringGuts.grow(_:)(37);

  v13 = 0xD000000000000023;
  v14 = 0x8000000100088440;
  String.append(_:)(*(v1 + OBJC_IVAR___FARateLimiter_identifier));
  v11 = String._bridgeToObjectiveC()();

  [v6 setValue:isa forKey:v11];

  return sub_10002C190(v7, v9);
}

id RateLimiter.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RateLimiter(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100036A78(void *a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B8BF0, &qword_10008D0E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_1000297A8(a1, a1[3]);
  sub_100037FC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  sub_100022F18(&qword_1000B8C00, &qword_10008D0F0);
  sub_100038014();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100036BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Date();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100022F18(&qword_1000B8B88, &qword_10008CF48);
  v20 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ClientRecord(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000297A8(a1, a1[3]);
  sub_100037B78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_100002BA0(&qword_1000B8B98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    (*(v15 + 32))(v14, v22, v4);
    sub_100024BA4(v14, v16);
  }

  return sub_100024F7C(a1);
}

uint64_t sub_100036E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
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

uint64_t sub_100036F04(uint64_t a1)
{
  v2 = sub_100037FC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036F40(uint64_t a1)
{
  v2 = sub_100037FC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100036F7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000380D0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100036FC4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100037008()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10003706C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6563655274736F6DLL && a2 == 0xEE006C6C6143746ELL)
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

uint64_t sub_1000370FC(uint64_t a1)
{
  v2 = sub_100037B78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037138(uint64_t a1)
{
  v2 = sub_100037B78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003718C(void *a1)
{
  v2 = sub_100022F18(&qword_1000B8BA0, &qword_10008CF50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_1000297A8(a1, a1[3]);
  sub_100037B78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_100002BA0(&qword_1000B8BA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100037304(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100037378(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000373D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000373D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000374A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100026180(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100024F7C(v11);
  return v7;
}

unint64_t sub_1000374A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000375AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000375AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000375F8(a1, a2);
  sub_100037728(&off_1000A7670);
  return v3;
}

void *sub_1000375F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100066BAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100066BAC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100037728(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100037814(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100037814(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B8BC8, &unk_10008E030);
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

_BYTE **sub_100037908(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100037918(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_10003798C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ClientRecord(uint64_t a1)
{
  result = qword_1000B8B50;
  if (!qword_1000B8B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100037A08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100037C10(a1, a2, v4);
}

uint64_t sub_100037A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037B0C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100037B78()
{
  result = qword_1000B8B90;
  if (!qword_1000B8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8B90);
  }

  return result;
}

unint64_t sub_100037BCC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100037CC8(a1, v4);
}

unint64_t sub_100037C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100037CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100034FBC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003206C(v8);
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

unint64_t sub_100037D90()
{
  result = qword_1000B8BB0;
  if (!qword_1000B8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BB0);
  }

  return result;
}

BOOL sub_100037DE4@<W0>(_BYTE *a1@<X8>)
{
  result = RateLimiter.unsafeIsAllowed(clientName:)(*(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_100037E38()
{
  result = qword_1000B8BD0;
  if (!qword_1000B8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BD0);
  }

  return result;
}

unint64_t sub_100037EBC()
{
  result = qword_1000B8BD8;
  if (!qword_1000B8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BD8);
  }

  return result;
}

unint64_t sub_100037F14()
{
  result = qword_1000B8BE0;
  if (!qword_1000B8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BE0);
  }

  return result;
}

unint64_t sub_100037F6C()
{
  result = qword_1000B8BE8;
  if (!qword_1000B8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BE8);
  }

  return result;
}

unint64_t sub_100037FC0()
{
  result = qword_1000B8BF8;
  if (!qword_1000B8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BF8);
  }

  return result;
}

unint64_t sub_100038014()
{
  result = qword_1000B8C08;
  if (!qword_1000B8C08)
  {
    sub_100022F60(&qword_1000B8C00, &qword_10008D0F0);
    sub_100002BA0(&qword_1000B8C10, type metadata accessor for ClientRecord, &unk_10008CEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C08);
  }

  return result;
}

void *sub_1000380D0(void *a1)
{
  v3 = sub_100022F18(&qword_1000B8C18, &qword_10008D0F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_1000297A8(a1, a1[3]);
  sub_100037FC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100024F7C(a1);
  }

  else
  {
    sub_100022F18(&qword_1000B8C00, &qword_10008D0F0);
    sub_100038254();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_100024F7C(a1);
  }

  return v8;
}

unint64_t sub_100038254()
{
  result = qword_1000B8C20;
  if (!qword_1000B8C20)
  {
    sub_100022F60(&qword_1000B8C00, &qword_10008D0F0);
    sub_100002BA0(&qword_1000B8C28, type metadata accessor for ClientRecord, &unk_10008CF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheRecord.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CacheRecord.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1000383F0()
{
  result = qword_1000B8C30;
  if (!qword_1000B8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C30);
  }

  return result;
}

unint64_t sub_100038448()
{
  result = qword_1000B8C38;
  if (!qword_1000B8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C38);
  }

  return result;
}

unint64_t sub_1000384A0()
{
  result = qword_1000B8C40;
  if (!qword_1000B8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C40);
  }

  return result;
}

void sub_100038534(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100038598(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_100038608@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 createdAt];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1000386AC(uint64_t a1, void **a2)
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100039F5C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreatedAt:isa];
}

uint64_t sub_1000387DC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a2;
  v23 = a3;
  v5 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  __chkstk_darwin(v5, v7);
  v9 = &v22 - v8;
  v10 = sub_100022F18(&qword_1000B8C78, &qword_10008D270);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v22 - v13;
  v15 = sub_100022F18(&qword_1000B8C80, &qword_10008D278);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v22 - v18;
  sub_100031B9C(&qword_1000B8C90, &qword_1000B8C78, &qword_10008D270, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v14, v10);
  v26 = v22;
  v27 = v23;
  sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100022F18(&qword_1000B8C88, &unk_10008D280);
  a4[4] = sub_10003A068();
  sub_10003A24C(a4);
  sub_100031B9C(&qword_1000B8C98, &qword_1000B8C80, &qword_10008D278, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003A1E0(&qword_1000B8CA8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v20 = v24;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v25 + 8))(v9, v20);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_100038B80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v54 = a2;
  v72 = a4;
  v5 = sub_100022F18(&qword_1000B8CF8, &qword_10008D2F8);
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  __chkstk_darwin(v5, v7);
  v65 = v51 - v8;
  v9 = sub_100022F18(&qword_1000B8D00, &qword_10008D300);
  v10 = *(v9 - 8);
  v66 = v9;
  v67 = v10;
  __chkstk_darwin(v9, v11);
  v61 = v51 - v12;
  v13 = sub_100022F18(&qword_1000B8D08, qword_10008D308);
  v14 = *(v13 - 8);
  v70 = v13;
  v71 = v14;
  __chkstk_darwin(v13, v15);
  v64 = v51 - v16;
  v17 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  __chkstk_darwin(v17, v19);
  v21 = v51 - v20;
  v22 = sub_100022F18(&qword_1000B8C78, &qword_10008D270);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = v51 - v25;
  v55 = sub_100022F18(&qword_1000B8C80, &qword_10008D278);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55, v27);
  v29 = v51 - v28;
  v30 = sub_100022F18(&qword_1000B8C88, &unk_10008D280);
  v31 = *(v30 - 8);
  v62 = v30;
  v63 = v31;
  __chkstk_darwin(v30, v32);
  v56 = v51 - v33;
  v53 = *a1;
  sub_100031B9C(&qword_1000B8C90, &qword_1000B8C78, &qword_10008D270, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v34 = *(v23 + 8);
  v51[1] = v23 + 8;
  v52 = v34;
  v34(v26, v22);
  v73 = v54;
  v74 = v60;
  sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  v35 = v21;
  static PredicateExpressions.build_Arg<A>(_:)();
  v60 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100031B9C(&qword_1000B8C98, &qword_1000B8C80, &qword_10008D278, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003A1E0(&qword_1000B8CA8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v36 = v55;
  v37 = v58;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v59 + 8))(v35, v37);
  (*(v57 + 8))(v29, v36);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v38 = v61;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v52(v26, v22);
  LODWORD(v73) = 2;
  v39 = v65;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100031B9C(&qword_1000B8D10, &qword_1000B8D00, &qword_10008D300, v60);
  sub_100031B9C(&qword_1000B8D18, &qword_1000B8CF8, &qword_10008D2F8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v40 = v64;
  v41 = v39;
  v42 = v66;
  v43 = v68;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v69 + 8))(v41, v43);
  (*(v67 + 8))(v38, v42);
  v44 = sub_100022F18(&qword_1000B8D20, &qword_10008D348);
  v45 = v72;
  *(v72 + 24) = v44;
  v45[4] = sub_10003A2C4();
  sub_10003A24C(v45);
  sub_100031B9C(&qword_1000B8CF0, &qword_1000B8C88, &unk_10008D280, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100031B9C(&qword_1000B8D48, &qword_1000B8D08, qword_10008D308, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v46 = v56;
  v47 = v40;
  v48 = v62;
  v49 = v70;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v71 + 8))(v47, v49);
  return (*(v63 + 8))(v46, v48);
}

uint64_t sub_100039364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v49 = a2;
  v50 = a3;
  v57 = a6;
  v52 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v60 = *(v52 - 8);
  __chkstk_darwin(v52, v7);
  v9 = v43 - v8;
  v10 = sub_100022F18(&qword_1000B8C78, &qword_10008D270);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v43 - v13;
  v15 = sub_100022F18(&qword_1000B8C80, &qword_10008D278);
  v16 = *(v15 - 8);
  v58 = v15;
  v59 = v16;
  __chkstk_darwin(v15, v17);
  v19 = v43 - v18;
  v20 = sub_100022F18(&qword_1000B8C88, &unk_10008D280);
  v21 = *(v20 - 8);
  v53 = v20;
  v54 = v21;
  v23 = __chkstk_darwin(v20, v22);
  v51 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v47 = *a1;
  v48 = v43 - v26;
  sub_100031B9C(&qword_1000B8C90, &qword_1000B8C78, &qword_10008D270, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v44 = v10;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v27 = *(v11 + 8);
  v45 = v11 + 8;
  v46 = v27;
  v27(v14, v10);
  v61 = v49;
  v62 = v50;
  v50 = sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  v28 = v9;
  static PredicateExpressions.build_Arg<A>(_:)();
  v49 = sub_100031B9C(&qword_1000B8C98, &qword_1000B8C80, &qword_10008D278, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v43[1] = sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003A1E0(&qword_1000B8CA8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v29 = v58;
  v30 = v52;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v31 = *(v60 + 8);
  v60 += 8;
  v31(v28, v30);
  v32 = *(v59 + 8);
  v59 += 8;
  v32(v19, v29);
  v33 = v44;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v46(v14, v33);
  v61 = v55;
  v62 = v56;
  static PredicateExpressions.build_Arg<A>(_:)();
  v34 = v51;
  v35 = v28;
  v36 = v58;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v31(v35, v30);
  v32(v19, v36);
  v37 = sub_100022F18(&qword_1000B8CB0, &qword_10008D2F0);
  v38 = v57;
  *(v57 + 24) = v37;
  v38[4] = sub_100039FE4();
  sub_10003A24C(v38);
  sub_100031B9C(&qword_1000B8CF0, &qword_1000B8C88, &unk_10008D280, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v39 = v48;
  v40 = v53;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v41 = *(v54 + 8);
  v41(v34, v40);
  return (v41)(v39, v40);
}

void *sub_100039948(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  __chkstk_darwin(v5 - 8, v6);
  type metadata accessor for AgeAttestationEntity();
  v7 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v8 = NSPredicate.init<A>(_:)();
  [v7 setPredicate:v8];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008D210;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v9 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  *(v9 + 40) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setSortDescriptors:isa];

  v11 = a3;
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v11 = sub_100023A60(v12);
  }

  return v11;
}

uint64_t sub_100039B5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  __chkstk_darwin(v2 - 8, v3);
  type metadata accessor for AgeAttestationEntity();
  v4 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v5 = NSPredicate.init<A>(_:)();
  [v4 setPredicate:v5];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v6 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setSortDescriptors:isa];

  v8 = NSManagedObjectContext.fetch<A>(_:)();
  return v8;
}

uint64_t sub_100039D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  __chkstk_darwin(v4 - 8, v5);
  type metadata accessor for AgeAttestationEntity();
  v6 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v7 = NSPredicate.init<A>(_:)();
  [v6 setPredicate:v7];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v8 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setSortDescriptors:isa];

  v10 = NSManagedObjectContext.fetch<A>(_:)();
  return v10;
}

uint64_t sub_100039F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100039FE4()
{
  result = qword_1000B8CB8;
  if (!qword_1000B8CB8)
  {
    sub_100022F60(&qword_1000B8CB0, &qword_10008D2F0);
    sub_10003A068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8CB8);
  }

  return result;
}

unint64_t sub_10003A068()
{
  result = qword_1000B8CC0;
  if (!qword_1000B8CC0)
  {
    sub_100022F60(&qword_1000B8C88, &unk_10008D280);
    sub_10003A3F4(&qword_1000B8CC8, &qword_1000B8C80, &qword_10008D278);
    sub_10003A10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8CC0);
  }

  return result;
}

unint64_t sub_10003A10C()
{
  result = qword_1000B8CD8;
  if (!qword_1000B8CD8)
  {
    sub_100022F60(&qword_1000B8C70, &qword_10008D990);
    sub_10003A1E0(&qword_1000B8CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    sub_10003A1E0(&qword_1000B8CE8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8CD8);
  }

  return result;
}

uint64_t sub_10003A1E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100022F60(&qword_1000B8630, &qword_10008C9F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10003A24C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10003A2C4()
{
  result = qword_1000B8D28;
  if (!qword_1000B8D28)
  {
    sub_100022F60(&qword_1000B8D20, &qword_10008D348);
    sub_10003A068();
    sub_10003A350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D28);
  }

  return result;
}

unint64_t sub_10003A350()
{
  result = qword_1000B8D30;
  if (!qword_1000B8D30)
  {
    sub_100022F60(&qword_1000B8D08, qword_10008D308);
    sub_10003A3F4(&qword_1000B8D38, &qword_1000B8D00, &qword_10008D300);
    sub_10003A48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D30);
  }

  return result;
}

uint64_t sub_10003A3F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100022F60(a2, a3);
    sub_100031B9C(&qword_1000B8CD0, &qword_1000B8C78, &qword_10008D270, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003A48C()
{
  result = qword_1000B8D40;
  if (!qword_1000B8D40)
  {
    sub_100022F60(&qword_1000B8CF8, &qword_10008D2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D40);
  }

  return result;
}

unint64_t sub_10003A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  __chkstk_darwin(v4 - 8, v5);
  type metadata accessor for AgeAttestationEntity();
  v6 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v7 = NSPredicate.init<A>(_:)();
  [v6 setPredicate:v7];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v8 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setSortDescriptors:isa];

  [v6 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v14)
  {

    return v8;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v12 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = v12;
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
LABEL_8:
    v8 = v11;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *DaemonAnalytics.shared.unsafeMutableAddressor()
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  return &static DaemonAnalytics.shared;
}

unint64_t DaemonAnalyticsType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000037;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002ELL;
  }

  return 0xD00000000000002FLL;
}

uint64_t sub_10003A874(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000002ELL;
  v3 = *a1;
  v4 = "e.Notification.Received";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002ELL;
  }

  else
  {
    v5 = 0xD00000000000002FLL;
  }

  if (v3 == 1)
  {
    v6 = "e.Notification.Received";
  }

  else
  {
    v6 = ".DeclaredAgeRange.API.CacheHit";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000037;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "InviteMessageBubbleExtension";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000002FLL;
    v4 = ".DeclaredAgeRange.API.CacheHit";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000037;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "InviteMessageBubbleExtension";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10003A948()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A9E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10003AA64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003AAF8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13familycircled19DaemonAnalyticsTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10003AB28(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ELL;
  v3 = "e.Notification.Received";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000002FLL;
    v3 = ".DeclaredAgeRange.API.CacheHit";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000037;
    v4 = "InviteMessageBubbleExtension";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_10003AB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = dispatch thunk of RuntimeEnvironment.isTesting.getter();

  if (v7)
  {
    if (a2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a3;
      v9 = sub_10003B84C;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = sub_100037EA0;
      *(v12 + 24) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10003B758;
      *(v8 + 24) = v12;

      v9 = sub_10003B784;
    }

    v13 = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v8;
    v11 = sub_10003B78C;
  }

  else
  {
    sub_10003B6D8(a2, a3);
    v10 = 0;
    v11 = sub_10003AE24;
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  sub_10003B6D8(v15, v14);
  return v4;
}

uint64_t sub_10003ACDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  LOBYTE(a3) = a3(v6, v7, sub_10003B7C4, v10);

  *a4 = a3 & 1;
  return result;
}

uint64_t sub_10003AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, void *, void *))
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[0] = sub_10003B794;
  v11[1] = v8;

  a5(&v10, v12, v11);

  return v10;
}

uint64_t sub_10003AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003AEE4;
  v10[3] = &unk_1000A8398;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

Class sub_10003AEE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10003B7FC(0, v4);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t static DaemonAnalytics.testableFamilyAnalytics(withEnvironment:sendFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DaemonAnalytics(a1, a2);
  v6 = swift_allocObject();

  sub_10003B6C8(a2, a3);
  sub_10003AB80(a1, a2, a3);
  if (dispatch thunk of RuntimeEnvironment.isTesting.getter())
  {
    if (qword_1000B7F20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    static DaemonAnalytics.shared = v6;
  }

  return v6;
}

uint64_t sub_10003B058()
{
  type metadata accessor for RuntimeEnvironment();
  v0 = static RuntimeEnvironment.defaultEnvironment.getter();
  type metadata accessor for DaemonAnalytics(v0, v1);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = dispatch thunk of RuntimeEnvironment.isTesting.getter();

  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100037EA0;
    *(v4 + 24) = v2;
    *(v2 + 16) = sub_10003B848;
    *(v2 + 24) = v4;
  }

  else
  {
    *(v2 + 16) = sub_10003AE24;
    *(v2 + 24) = 0;
  }

  result = sub_10003B6D8(0, 0);
  static DaemonAnalytics.shared = v2;
  return result;
}

uint64_t static DaemonAnalytics.shared.getter()
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10003B1A4@<X0>(void *a1@<X8>)
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DaemonAnalytics.shared;
}

uint64_t sub_10003B224(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1000B7F20;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DaemonAnalytics.shared = v1;
}

uint64_t sub_10003B2AC(unsigned __int8 a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000649E8(a2);
  if (v10)
  {
    v11 = *(v2 + 16);
    if (v11)
    {
      v12 = *(v2 + 24);
      v13 = v10;
      v14 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v15 = 0xD00000000000002ELL;
        }

        else
        {
          v15 = 0xD00000000000002FLL;
        }

        if (v14 == 1)
        {
          v16 = "e.Notification.Received";
        }

        else
        {
          v16 = ".DeclaredAgeRange.API.CacheHit";
        }
      }

      else
      {
        v15 = 0xD000000000000037;
        v16 = "InviteMessageBubbleExtension";
      }

      v24 = swift_allocObject();
      *(v24 + 16) = v13;

      v11(v15, v16 | 0x8000000000000000, sub_10003B750, v24);

      return sub_10003B6D8(v11, v12);
    }

    else
    {
    }
  }

  else
  {
    static FamilyLogger.common.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_1000373D4(0xD000000000000012, 0x80000001000884B0, &v26);
      *(v19 + 12) = 2080;
      sub_100022F18(&qword_1000B8E20, &qword_10008D4C0);
      v20 = Dictionary.description.getter();
      v22 = sub_1000373D4(v20, v21, &v26);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s, failed to cast payload %s as? [String: NSObject]", v19, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t DaemonAnalytics.__deallocating_deinit()
{
  sub_10003B6D8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t _s13familycircled19DaemonAnalyticsTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A7708, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003B6C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003B6D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003B6EC()
{
  result = qword_1000B8D50;
  if (!qword_1000B8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D50);
  }

  return result;
}

uint64_t sub_10003B794@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_10003B7FC(uint64_t a1, uint64_t a2)
{
  result = qword_1000B8E28;
  if (!qword_1000B8E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8E28);
  }

  return result;
}

uint64_t sub_10003B850(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 112) = v19;
  *(v9 + 120) = v8;
  *(v9 + 381) = v18;
  *(v9 + 380) = v16;
  *(v9 + 96) = a8;
  *(v9 + 104) = v17;
  *(v9 + 80) = a6;
  *(v9 + 88) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 376) = a1;
  v10 = type metadata accessor for AgeRangeDaemonServiceNewInfoCalculator();
  *(v9 + 128) = v10;
  *(v9 + 136) = *(v10 - 8);
  *(v9 + 144) = swift_task_alloc();
  v11 = type metadata accessor for NewInfoMetadata();
  *(v9 + 152) = v11;
  *(v9 + 160) = *(v11 - 8);
  *(v9 + 168) = swift_task_alloc();
  sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  *(v9 + 176) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v9 + 184) = v12;
  *(v9 + 192) = *(v12 - 8);
  *(v9 + 200) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 208) = v13;
  *(v9 + 216) = *(v13 - 8);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_10003BABC, 0, 0);
}

uint64_t sub_10003BABC(uint64_t a1)
{
  v21 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 256);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000052, 0x8000000100088BD0, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 264) = v10;
  v11 = *(v1 + 376);
  if (v11 == 1)
  {
    v14 = swift_task_alloc();
    *(v1 + 272) = v14;
    *v14 = v1;
    v15 = sub_10003BDDC;
  }

  else
  {
    if (v11 == 3)
    {
      type metadata accessor for AgeRangeError(0);
      *(v1 + 40) = -4003;
      sub_100023D48(_swiftEmptyArrayStorage);
      sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v12 = *(v1 + 8);

      return v12();
    }

    v14 = swift_task_alloc();
    *(v1 + 360) = v14;
    *v14 = v1;
    v15 = sub_10003CFCC;
  }

  v14[1] = v15;
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 48);
  v19 = *(v1 + 56);

  return sub_100044F50(v17, v16, v18, v19);
}

uint64_t sub_10003BDDC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10003BF98, 0, 0);
  }
}

uint64_t sub_10003BF98(uint64_t a1)
{
  v20 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v18 = *(v1 + 264);
    v4 = *(v1 + 248);
    v5 = *(v1 + 208);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v1 + 372) = 1;
    type metadata accessor for AgeRangeGlobalState(0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000373D4(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Global state :%s, returning, returning response without prompting the user.", v6, 0xCu);
    sub_100024F7C(v7);

    v18(v4, v5);
  }

  else
  {
    v11 = *(v1 + 264);
    v12 = *(v1 + 248);
    v13 = *(v1 + 208);

    v11(v12, v13);
  }

  v14 = swift_task_alloc();
  *(v1 + 280) = v14;
  *v14 = v1;
  v14[1] = sub_10003C19C;
  v16 = *(v1 + 80);
  v15 = *(v1 + 88);

  return sub_1000562D0(v16, v15);
}

uint64_t sub_10003C19C(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_10003C29C, 0, 0);
}

uint64_t sub_10003C29C()
{
  if (*(v0 + 380))
  {
    v21 = 0;
    if ((*(v0 + 381) & 1) == 0)
    {
LABEL_3:
      v1 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 104)];
      goto LABEL_6;
    }
  }

  else
  {
    v21 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 96)];
    if ((*(v0 + 381) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v1 = 0;
LABEL_6:
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  static Date.now.getter();
  (*(v2 + 56))(v4, 1, 1, v3);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    isa = 0;
  }

  else
  {
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 176);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v11, v10);
  }

  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 184);
  *(v0 + 296) = [objc_allocWithZone(FAAgeRange) initWithAltDSID:v5 bundleID:v6 lowerbound:v21 upperbound:v1 response:1 responseType:0 createdAt:v7.super.isa invalidatedAt:isa validationLevel:*(v0 + 288)];

  (*(v13 + 8))(v12, v14);
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *v15 = v0;
  v15[1] = sub_10003C4F0;
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);

  return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v17, v16, v18, v19);
}

uint64_t sub_10003C4F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_10003C784;
  }

  else
  {
    v4 = sub_10003C604;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003C604()
{
  v1 = *(v0 + 312);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 296);
  if (v2)
  {
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 128);
    AgeRangeDaemonServiceNewInfoCalculator.init()();
    AgeRangeDaemonServiceNewInfoCalculator.isThisNewInformation(from:newRequestRange:bundleID:)();

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    v7 = v3;
    NewInfoMetadata.init(isSuperSet:isOverLapping:ageRange:)();
  }

  if (*(v0 + 112) == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = NewInfoMetadata.isOverLapping.getter();
  }

  *(v0 + 382) = v8 & 1;
  v9 = swift_task_alloc();
  *(v0 + 328) = v9;
  *v9 = v0;
  v9[1] = sub_10003C864;
  v10 = *(v0 + 296);

  return AgeRangeDaemonService.saveAgeRange(with:)(v10);
}

uint64_t sub_10003C784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003C864()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_10003D418;
  }

  else
  {
    v2 = sub_10003C978;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003C978()
{
  if (*(v0 + 382) == 1)
  {
    static FamilyLogger.common.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Posting notification since we are sharing more information", v3, 2u);
    }

    v4 = *(v0 + 264);
    v5 = *(v0 + 240);
    v6 = *(v0 + 208);
    v7 = v1;
    v8 = *(v0 + 381);
    v9 = *(v0 + 380);
    v10 = *(v0 + 96);
    v34 = *(v0 + 104);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);

    v4(v5, v6);
    sub_10003DE6C(v12, v11, v10, v9 & 1, v34, v8 & 1);
  }

  else
  {
    static FamilyLogger.common.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = *(v0 + 208);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not posting notification since we are not sharing more information", v19, 2u);
    }

    v16(v17, v18);
  }

  v20 = *(v0 + 296);
  v21 = [v20 response];
  v22 = [v20 upperbound];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 integerValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1000297A8((*(v0 + 120) + 48), *(*(v0 + 120) + 72));
  v26 = *v25;
  v27 = [*(*v25 + 16) aa_primaryAppleAccount];
  if (v27)
  {
    v28 = v27;
    isa = [*(v26 + 24) ageOfMajorityForAccount:v27];
    if (!isa)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v30 = isa;
  }

  else
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v30 = NSNumber.init(integerLiteral:)(18).super.super.isa;
  }

  v31 = [(objc_class *)v30 integerValue];

  v32 = swift_task_alloc();
  *(v0 + 344) = v32;
  *v32 = v0;
  v32[1] = sub_10003CCD8;

  return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v21, v24, v23 == 0, 0, 0, v31);
}

uint64_t sub_10003CCD8(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_10003CDD8, 0, 0);
}

uint64_t sub_10003CDD8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v13 = [v2 lowerbound];
  v3 = [v2 upperbound];
  v12 = [v2 response];
  if (v1)
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v13 upperbound:v3 validationLevel:*(v0 + 288) response:v12 parentalControlsInformation:v4.super.isa isSharingNewInformation:*(v0 + 382)];

  (*(v8 + 8))(v6, v7);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_10003CFCC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10003D188, 0, 0);
  }
}

uint64_t sub_10003D188(uint64_t a1)
{
  v19 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v1 + 264);
    v4 = *(v1 + 224);
    v5 = *(v1 + 208);
    v6 = *(v1 + 376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v1 + 368) = v6;
    type metadata accessor for AgeRangeGlobalState(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000373D4(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Global state :%s, prompting the user for age attestation.", v7, 0xCu);
    sub_100024F7C(v8);

    v17(v4, v5);
  }

  else
  {
    v12 = *(v1 + 264);
    v13 = *(v1 + 224);
    v14 = *(v1 + 208);

    v12(v13, v14);
  }

  type metadata accessor for AgeRangeError(0);
  *(v1 + 24) = -4009;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_10003D418()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AgeRangeDaemonService.postAgeRangeNotification(with:lowerAgeBound:upperAgeBound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10003D5EC, 0, 0);
}

uint64_t sub_10003D5EC(uint64_t a1)
{
  v42 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD00000000000003BLL, 0x80000001000884F0, &v41);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v12 = v1[4];
  v11 = v1[5];
  static FamilyLogger.daemon.getter();
  v13 = v11;

  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v40 = v10;
    v17 = v1[4];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v18 = 138412802;
    isa = v14;
    if (!v17)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    v22 = v1[5];
    *(v18 + 4) = isa;
    *v19 = isa;
    *(v18 + 12) = 2112;
    if (v22)
    {
      v23 = v14;
      v24 = v13;
    }

    else
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      v27 = v14;
      v24 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    v37 = v1[8];
    v38 = v1[7];
    v39 = v1[9];
    v29 = v1[2];
    v28 = v1[3];
    *(v18 + 14) = v24;
    v19[1] = v24;
    *(v18 + 22) = 2080;
    v30 = v13;
    *(v18 + 24) = sub_1000373D4(v29, v28, &v41);
    _os_log_impl(&_mh_execute_header, v15, v16, "About to post notification for age range - lo: %@, hi: %@, appName: %s", v18, 0x20u);
    sub_100022F18(&qword_1000B8590, &qword_10008C960);
    swift_arrayDestroy();

    sub_100024F7C(v20);

    v40(v39, v38);
  }

  else
  {
    v25 = v1[9];
    v26 = v1[7];

    v10(v25, v26);
  }

  v31 = v1[4];
  if (v31)
  {
    v32 = [v14 integerValue];
    v33 = v1[5];
    if (v33)
    {
LABEL_13:
      v34 = [v13 integerValue];
      goto LABEL_16;
    }
  }

  else
  {
    v32 = 0;
    v33 = v1[5];
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v34 = 0;
LABEL_16:
  sub_10003DE6C(v1[2], v1[3], v32, v31 == 0, v34, v33 == 0);

  v35 = v1[1];

  return v35();
}

uint64_t sub_10003DB98(uint64_t a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[6] = v9;
  v11 = a2;
  v12 = a3;

  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_10003DC90;

  return AgeRangeDaemonService.postAgeRangeNotification(with:lowerAgeBound:upperAgeBound:)(v8, v10, a2, a3);
}

uint64_t sub_10003DC90()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 40);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v10 = *(v7 + 8);

  return v10();
}

void sub_10003DE6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v64 = a6;
  v65 = a5;
  v62 = a4;
  v63 = a3;
  v60 = a1;
  v61 = a2;
  v8 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v57 - v10;
  v12 = type metadata accessor for URL();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v59 = &v57 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v57 - v25;
  static FamilyLogger.common.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v58 = v12;
    v30 = v15;
    v31 = v16;
    v32 = v29;
    v33 = swift_slowAlloc();
    v68 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1000373D4(0xD000000000000029, 0x8000000100088D00, &v68);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s", v32, 0xCu);
    sub_100024F7C(v33);

    v16 = v31;
    v15 = v30;
    v12 = v58;
  }

  v34 = *(v16 + 8);
  v34(v26, v15);
  v35 = *(v7 + 24);
  if (v35)
  {
    v58 = v16;
    v36 = objc_allocWithZone(FAFamilyNotification);
    v37 = v35;
    v38 = [v36 init];
    type metadata accessor for AgeRangeStringsProvider();
    static AgeRangeStringsProvider.userNotificationTitle.getter();
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10008C640;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100024F28();
    v40 = v61;
    *(v39 + 32) = v60;
    *(v39 + 40) = v40;

    String.init(format:_:)();

    sub_100057A8C(v63, v62 & 1, v65, v64 & 1, 4);
    v41 = String._bridgeToObjectiveC()();

    [v38 setTitle:v41];

    v42 = String._bridgeToObjectiveC()();

    [v38 setInformativeText:v42];

    v43 = String._bridgeToObjectiveC()();
    [v38 setIdentifier:v43];

    v44 = String._bridgeToObjectiveC()();
    [v38 setIconName:v44];

    URL.init(string:)();
    v45 = v67;
    if ((*(v67 + 48))(v11, 1, v12) == 1)
    {
      sub_10002624C(v11, &qword_1000B8290, &unk_10008C690);
    }

    else
    {
      (*(v45 + 32))(v66, v11, v12);
      v49 = v59;
      static FamilyLogger.common.getter();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Setting activateActionURL on notification", v52, 2u);
      }

      v34(v49, v15);
      v53 = v66;
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      [v38 setActivateActionURL:v55];

      (*(v45 + 8))(v53, v12);
    }

    [v38 setHasHeader:0];
    [v37 deliverNotification:v38];
    sub_100027560();
  }

  else
  {
    static FamilyLogger.common.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to post user notification, nil notifier", v48, 2u);
    }

    v34(v20, v15);
  }
}

uint64_t AgeRangeDaemonService.requestAgeRange(with:userAgeOverride:altDSID:bundleID:appName:attestedAtOverrideInDays:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[18] = v14;
  v9[19] = v8;
  v9[16] = a7;
  v9[17] = a8;
  v9[14] = a5;
  v9[15] = a6;
  v9[12] = a3;
  v9[13] = a4;
  v9[10] = a1;
  v9[11] = a2;
  sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v10 = type metadata accessor for AgeRangeDaemonServiceNewInfoCalculator();
  v9[22] = v10;
  v9[23] = *(v10 - 8);
  v9[24] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v9[25] = v11;
  v9[26] = *(v11 - 8);
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v9[31] = swift_task_alloc();
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();

  return _swift_task_switch(sub_10003E708, 0, 0);
}

char *sub_10003E708(uint64_t a1)
{
  v43 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 264);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000058, 0x8000000100088530, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 272) = v10;
  v11 = *(v1 + 152);
  sub_1000297A8((v11 + 48), *(v11 + 72));
  if (sub_100032AF0() & 1) != 0 || (sub_100032DDC())
  {
    type metadata accessor for AgeRangeError(0);
    *(v1 + 72) = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
LABEL_6:
    swift_willThrow();

    v12 = *(v1 + 8);

    return v12();
  }

  v14 = [*(*sub_1000297A8((v11 + 48) *(v11 + 72)) + 16)];
  if (!v14 || (v15 = v14, v16 = [v14 aa_altDSID], v15, !v16))
  {
    type metadata accessor for AgeRangeError(0);
    *(v1 + 24) = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_6;
  }

  v17 = *(v1 + 88);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v1 + 280) = v18;
  *(v1 + 288) = v20;
  AgeRangeDaemonServiceNewInfoCalculator.init()();
  if (v17)
  {
    v21 = [*(v1 + 88) integerValue];
    *(v1 + 320) = v21;
    v22 = *(v1 + 80);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v41 = v21;
      v42 = _swiftEmptyArrayStorage;
      result = sub_10005580C(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v25 = 0;
      v24 = v42;
      v26 = v22 & 0xC000000000000001;
      v27 = *(v1 + 80) + 32;
      do
      {
        if (v26)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v27 + 8 * v25);
        }

        v29 = v28;
        v30 = [v28 integerValue];

        v42 = v24;
        v32 = v24[2];
        v31 = v24[3];
        if (v32 >= v31 >> 1)
        {
          sub_10005580C((v31 > 1), v32 + 1, 1);
          v24 = v42;
        }

        ++v25;
        v24[2] = v32 + 1;
        v24[v32 + 4] = v30;
      }

      while (v23 != v25);
      v21 = v41;
    }

    v33 = sub_1000567F8(v24, v21);
    *(v1 + 536) = v34;
    *(v1 + 328) = v33;
    *(v1 + 336) = v35;
    *(v1 + 537) = v36;

    v38 = swift_task_alloc();
    *(v1 + 344) = v38;
    *v38 = v1;
    v38[1] = sub_10003F1BC;
    v40 = *(v1 + 280);
    v39 = *(v1 + 288);

    return sub_1000492E4(v40, v39);
  }

  else
  {
    sub_1000297A8((v11 + 48), *(v11 + 72));
    v37 = swift_task_alloc();
    *(v1 + 296) = v37;
    *v37 = v1;
    v37[1] = sub_10003ECD8;

    return sub_1000340F0();
  }
}

uint64_t sub_10003ECD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {

    v5 = sub_10003F0BC;
  }

  else
  {
    *(v4 + 312) = a1;
    v5 = sub_10003EE08;
  }

  return _swift_task_switch(v5, 0, 0);
}

char *sub_10003EE08()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  *(v0 + 320) = v2;
  v3 = *(v0 + 80);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_10005580C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v21 = v1;
    v22 = v2;
    v6 = 0;
    v7 = *(v0 + 80) + 32;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v7 + 8 * v6);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10005580C((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    while (v4 != v6);
    v1 = v21;
    v2 = v22;
  }

  v13 = sub_1000567F8(_swiftEmptyArrayStorage, v2);
  *(v0 + 536) = v14;
  *(v0 + 328) = v13;
  *(v0 + 336) = v15;
  *(v0 + 537) = v16;
  if (v1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {

    v18 = swift_task_alloc();
    *(v0 + 344) = v18;
    *v18 = v0;
    v18[1] = sub_10003F1BC;
    v20 = *(v0 + 280);
    v19 = *(v0 + 288);

    return sub_1000492E4(v20, v19);
  }
}

uint64_t sub_10003F0BC()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003F1BC(int a1, void *a2)
{
  v5 = *v3;
  *(v5 + 532) = a1;
  *(v5 + 352) = v2;

  if (v2)
  {

    v6 = sub_10003F4F0;
  }

  else
  {

    v6 = sub_10003F2EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003F2EC(uint64_t a1)
{
  v21 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 532);
    v19 = *(v1 + 272);
    v5 = *(v1 + 256);
    v6 = *(v1 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v1 + 528) = v4;
    type metadata accessor for AgeRangeGlobalState(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000373D4(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched global age attestation state from database: %s.", v7, 0xCu);
    sub_100024F7C(v8);

    v19(v5, v6);
  }

  else
  {
    v12 = *(v1 + 272);
    v13 = *(v1 + 256);
    v14 = *(v1 + 200);

    v12(v13, v14);
  }

  v15 = swift_task_alloc();
  *(v1 + 360) = v15;
  *v15 = v1;
  v15[1] = sub_10003F5F0;
  v17 = *(v1 + 96);
  v16 = *(v1 + 104);

  return sub_1000562D0(v17, v16);
}

uint64_t sub_10003F4F0()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003F5F0(uint64_t a1)
{
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_10003F6F0, 0, 0);
}

uint64_t sub_10003F6F0()
{
  if (*(v0 + 532) == 3)
  {

    static FamilyLogger.common.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Global state is never, declining request and not caching response.", v3, 2u);
    }

    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 176);

    v4(v5, v6);
    type metadata accessor for AgeRangeError(0);
    *(v0 + 56) = -4003;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 376) = v12;
    *v12 = v0;
    v12[1] = sub_10003F9A4;
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);

    return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v14, v13, v15, v16);
  }
}

uint64_t sub_10003F9A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {

    v4 = sub_100041414;
  }

  else
  {
    v4 = sub_10003FAC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003FAC0(uint64_t a1, id a2, _BOOL8 a3, uint64_t a4, uint64_t a5, id a6)
{
  v7 = *(v6 + 384);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v6 + 400) = v8;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_28:

    static FamilyLogger.daemon.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "No cached response found in the database.", v47, 2u);
    }

    v48 = *(v6 + 272);
    v49 = *(v6 + 216);
    v50 = *(v6 + 200);

    v48(v49, v50);
    sub_100027580();
    v51 = swift_task_alloc();
    *(v6 + 504) = v51;
    *v51 = v6;
    v51[1] = sub_1000411C8;
    v16 = *(v6 + 532);
    v17 = *(v6 + 328);
    v18 = *(v6 + 280);
    v19 = *(v6 + 288);
    v20 = *(v6 + 128);
    v21 = *(v6 + 136);
    v22 = *(v6 + 112);
    v23 = *(v6 + 120);
    goto LABEL_31;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  *(v6 + 400) = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v9 = *(*(v6 + 384) + 32);
  }

  v10 = v9;
  *(v6 + 408) = v9;
  v8 = [v9 response];
  a2 = *(v6 + 384);
  if (v8 != 2)
  {
    *(v6 + 440) = *(v6 + 392);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
      *(v6 + 448) = v24;
      *(v6 + 456) = 1;
      v32 = v24;
      v33 = [v24 response];
      v34 = [v32 upperbound];
      v35 = v34;
      if (v34)
      {
        v36 = [v34 integerValue];
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_1000297A8((*(v6 + 152) + 48), *(*(v6 + 152) + 72));
      v38 = *v37;
      v39 = [*(*v37 + 16) aa_primaryAppleAccount];
      if (v39)
      {
        v40 = v39;
        isa = [*(v38 + 24) ageOfMajorityForAccount:v39];
        if (!isa)
        {
          sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
        }

        v42 = isa;
      }

      else
      {
        sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
        v42 = NSNumber.init(integerLiteral:)(18).super.super.isa;
      }

      v43 = [(objc_class *)v42 integerValue];

      v44 = swift_task_alloc();
      *(v6 + 464) = v44;
      *v44 = v6;
      v44[1] = sub_1000403C4;
      v8 = v33;
      a2 = v36;
      a3 = v35 == 0;
      a4 = 0;
      a5 = 0;
      a6 = v43;

      return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v8, a2, a3, a4, a5, a6);
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a2 + 4);
      goto LABEL_16;
    }

LABEL_36:
    __break(1u);
    return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v8, a2, a3, a4, a5, a6);
  }

  v11 = [v10 invalidatedAt];
  if (v11)
  {
    v12 = *(v6 + 168);
    v13 = v11;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    sub_10002624C(v12, &qword_1000B89A8, &qword_10008CE90);
    sub_100027580();
    v15 = swift_task_alloc();
    *(v6 + 416) = v15;
    *v15 = v6;
    v15[1] = sub_100040170;
    v16 = *(v6 + 532);
    v17 = *(v6 + 328);
    v18 = *(v6 + 280);
    v19 = *(v6 + 288);
    v20 = *(v6 + 128);
    v21 = *(v6 + 136);
    v22 = *(v6 + 112);
    v23 = *(v6 + 120);
LABEL_31:

    return sub_10003B850(v16, v22, v23, v20, v21, v18, v19, v17);
  }

  v26 = *(v6 + 184);
  v25 = *(v6 + 192);
  v27 = *(v6 + 168);
  v28 = *(v6 + 176);

  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  sub_10002624C(v27, &qword_1000B89A8, &qword_10008CE90);
  sub_100027570();
  type metadata accessor for AgeRangeError(0);
  *(v6 + 40) = -4003;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  (*(v26 + 8))(v25, v28);

  v30 = *(v6 + 8);

  return v30();
}

uint64_t sub_100040170(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = sub_100041614;
  }

  else
  {
    *(v4 + 432) = a1;
    v5 = sub_1000402B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000402B4()
{
  v3 = *(v0 + 432);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_1000403C4(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1000404C4, 0, 0);
}

uint64_t sub_1000404C4()
{
  v1 = [*(v0 + 448) lowerbound];
  v2 = *(v0 + 536);
  if (!v1)
  {
    if ((*(v0 + 536) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v6 = [*(v0 + 448) upperbound];
    v7 = *(v0 + 537);
    if (v6)
    {
      v8 = *(v0 + 336);
      v9 = v6;
      v10 = [v6 integerValue];

      if ((v7 & 1) != 0 || v10 != v8)
      {
        goto LABEL_14;
      }
    }

    else if ((*(v0 + 537) & 1) == 0)
    {
      goto LABEL_14;
    }

    static FamilyLogger.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "There is a cached record that matches upper & lower bounds exactly, returning cached record", v13, 2u);
    }

    v14 = *(v0 + 472);
    v15 = *(v0 + 448);
    v16 = *(v0 + 272);
    v17 = *(v0 + 240);
    v18 = *(v0 + 200);

    v16(v17, v18);
    sub_100027570();
    v19 = [v15 lowerbound];
    v20 = [v15 upperbound];
    v21 = [v15 response];
    if (v14)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v22.super.isa = 0;
    }

    v67 = *(v0 + 448);
    v68 = *(v0 + 408);
    v86 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v19 upperbound:v20 validationLevel:*(v0 + 368) response:v21 parentalControlsInformation:v22.super.isa isSharingNewInformation:0];
    goto LABEL_46;
  }

  v3 = *(v0 + 328);
  v4 = v1;
  v5 = [v1 integerValue];

  if ((v2 & 1) == 0 && v5 == v3)
  {
    goto LABEL_6;
  }

LABEL_14:
  v23 = [*(v0 + 448) upperbound];
  if (!v23)
  {

LABEL_20:

    goto LABEL_21;
  }

  v22.super.isa = v23;
  v24 = *(v0 + 320);
  if ([(objc_class *)v23 integerValue]>= v24)
  {

    goto LABEL_20;
  }

  v25 = [*(v0 + 448) invalidatedAt];
  if (v25)
  {
    v26 = v25;
    v27 = *(v0 + 448);
    v28 = *(v0 + 160);

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v30 = sub_10002624C(v28, &qword_1000B89A8, &qword_10008CE90);
LABEL_21:
    v35 = *(v0 + 440);
    goto LABEL_22;
  }

  v70 = *(v0 + 440);
  v71 = *(v0 + 160);
  v72 = type metadata accessor for Date();
  (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
  sub_10002624C(v71, &qword_1000B89A8, &qword_10008CE90);
  v73 = AgeRangeDaemonServiceNewInfoCalculator.isAgeRangeWithinGracePeriod(with:attestedAtOverrideInDays:)();
  if (v70)
  {
    v74 = *(v0 + 448);
    v75 = *(v0 + 408);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v76 = *(v0 + 8);

    return v76();
  }

  if ((v73 & 1) == 0)
  {

    v35 = 0;
LABEL_22:
    v36 = *(v0 + 456);
    if (v36 == *(v0 + 400))
    {

      static FamilyLogger.daemon.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "There is no cached record that matches the upper & lower bounds of this request exactly", v39, 2u);
      }

      v40 = *(v0 + 272);
      v41 = *(v0 + 224);
      v42 = *(v0 + 200);

      v40(v41, v42);
      sub_100027580();
      v43 = swift_task_alloc();
      *(v0 + 480) = v43;
      *v43 = v0;
      v43[1] = sub_100040F74;
      v44 = *(v0 + 532);
      v45 = *(v0 + 328);
      v46 = *(v0 + 280);
      v47 = *(v0 + 288);
      v48 = *(v0 + 128);
      v49 = *(v0 + 136);
      v50 = *(v0 + 112);
      v51 = *(v0 + 120);

      return sub_10003B850(v44, v50, v51, v48, v49, v46, v47, v45);
    }

    *(v0 + 440) = v35;
    v53 = *(v0 + 384);
    if ((v53 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v30 = *(v53 + v36 + 4);
    }

    *(v0 + 448) = v30;
    *(v0 + 456) = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
      v54 = v30;
      v55 = [v30 response];
      v56 = [v54 upperbound];
      v57 = v56;
      if (v56)
      {
        v58 = [v56 integerValue];
      }

      else
      {
        v58 = 0;
      }

      v59 = sub_1000297A8((*(v0 + 152) + 48), *(*(v0 + 152) + 72));
      v60 = *v59;
      v61 = [*(*v59 + 16) aa_primaryAppleAccount];
      if (v61)
      {
        v62 = v61;
        isa = [*(v60 + 24) ageOfMajorityForAccount:v61];
        if (!isa)
        {
          sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
        }

        v64 = isa;
      }

      else
      {
        sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
        v64 = NSNumber.init(integerLiteral:)(18).super.super.isa;
      }

      v65 = [(objc_class *)v64 integerValue];

      v66 = swift_task_alloc();
      *(v0 + 464) = v66;
      *v66 = v0;
      v66[1] = sub_1000403C4;
      v30 = v55;
      v53 = v58;
      v31 = v57 == 0;
      v32 = 0;
      v33 = 0;
      v34 = v65;

      return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v30, v53, v31, v32, v33, v34);
    }

    __break(1u);
LABEL_62:
    __break(1u);
    return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v30, v53, v31, v32, v33, v34);
  }

  static FamilyLogger.daemon.getter();
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "There is a cached record within grace period returning cached record", v79, 2u);
  }

  v87 = *(v0 + 472);
  v80 = *(v0 + 448);
  v81 = *(v0 + 272);
  v82 = *(v0 + 232);
  v83 = *(v0 + 200);

  v81(v82, v83);
  sub_100027570();
  v67 = [v80 lowerbound];
  v19 = [v80 upperbound];
  v84 = [v80 response];
  if (v87)
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v20 = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20 = 0;
  }

  v68 = *(v0 + 448);
  v85 = *(v0 + 408);
  v86 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v67 upperbound:v19 validationLevel:*(v0 + 368) response:v84 parentalControlsInformation:v20 isSharingNewInformation:0];

LABEL_46:
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v69 = *(v0 + 8);

  return v69(v86);
}

uint64_t sub_100040F74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v5 = sub_100041724;
  }

  else
  {
    *(v4 + 496) = a1;
    v5 = sub_1000410B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000410B8()
{
  v3 = *(v0 + 496);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_1000411C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_100041514;
  }

  else
  {
    *(v4 + 520) = a1;
    v5 = sub_10004130C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004130C()
{
  v3 = v0[65];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_100041414()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100041514()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100041614()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100041724()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100041A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *aBlock, uint64_t a8, char a9)
{
  v9[3] = a6;
  v9[4] = a8;
  v9[2] = a2;
  v9[5] = _Block_copy(aBlock);
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9[6] = v12;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v9[7] = v13;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v9[8] = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v9[9] = v18;
  v20 = a2;
  v21 = a6;

  v22 = swift_task_alloc();
  v9[10] = v22;
  *v22 = v9;
  v22[1] = sub_100041B80;

  return AgeRangeDaemonService.requestAgeRange(with:userAgeOverride:altDSID:bundleID:appName:attestedAtOverrideInDays:)(v12, a2, v26, v14, v24, v16, v17, v19);
}

uint64_t sub_100041B80(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 40);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v4 + 40), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100041EA4, 0, 0);
}

uint64_t sub_100041EA4()
{
  v1 = *((*(v0[7] + 32))() + 56);
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v1;

  v0[11] = [v2 newBackgroundContext];

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10004203C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_1000562D0(v5, v4);
}

uint64_t sub_10004203C(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_10004213C, 0, 0);
}

uint64_t sub_10004213C()
{
  v1 = v0[13];
  v2 = v0[11];
  v15 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_allocObject();
  v0[14] = v9;
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v2;
  v9[7] = v1;
  (*(v4 + 104))(v15, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v10 = v2;
  v11 = swift_task_alloc();
  v0[15] = v11;
  v12 = sub_100022F18(&qword_1000B8E38, &qword_10008D520);
  *v11 = v0;
  v11[1] = sub_1000422A4;
  v13 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100056B54, v9, v12);
}

uint64_t sub_1000422A4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v3 = sub_10004249C;
  }

  else
  {
    v3 = sub_100042428;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100042428()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10004249C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100042508@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v37 = a5;
  v35 = a6;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100039D3C(a1, a2, a3, a4);
  if (!v6)
  {
    v17 = result;
    v18 = a1;
    v36 = v12;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v11;
    if (v19)
    {
      v40 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      while (1)
      {
        a2 = 0;
        v18 = v17 & 0xC000000000000001;
        v36 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v11 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          if (v18)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v22 = v37;
          }

          else
          {
            if (a2 >= *(v36 + 16))
            {
              goto LABEL_14;
            }

            v23 = v37;
            v24 = *(v17 + 8 * a2 + 32);
            v22 = v23;
            v21 = v24;
          }

          v38 = v21;
          sub_100043620(&v38, v22, &v39);

          v15 = v39;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++a2;
          if (v11 == v19)
          {

            v25 = v40;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        v20 = v11;
        v27 = v35;
        if (!v26)
        {
          break;
        }

        v28 = _CocoaArrayWrapper.endIndex.getter();
        if (!v28)
        {

          *v27 = _swiftEmptyArrayStorage;
          return result;
        }

        v19 = v28;
        v40 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v19 < 0)
        {
          __break(1u);
          break;
        }
      }
    }

    v29 = v15;
    static FamilyLogger.daemon.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000373D4(v18, a2, &v40);
      _os_log_impl(&_mh_execute_header, v30, v31, "No cached records exist for altDSID: %s.", v32, 0xCu);
      sub_100024F7C(v33);
    }

    result = (*(v36 + 8))(v29, v20);
    v25 = _swiftEmptyArrayStorage;
LABEL_22:
    *v35 = v25;
  }

  return result;
}

uint64_t AgeRangeDaemonService.fetchAgeRanges(with:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000429B8, 0, 0);
}

uint64_t sub_1000429B8(uint64_t a1)
{
  v29 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000015, 0x8000000100088590, v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  static FamilyLogger.daemon.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[11];
  v15 = v1[9];
  if (v13)
  {
    v27 = v10;
    v17 = v1[3];
    v16 = v1[4];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000373D4(v17, v16, v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching age ranges for altDSID: %s", v18, 0xCu);
    sub_100024F7C(v19);

    v20 = v27(v14, v15);
  }

  else
  {

    v20 = (v10)(v14, v15);
  }

  v21 = *((*(v1[5] + 32))(v20) + 56);
  if (!v21)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v22 = v21;

  v1[13] = [v22 newBackgroundContext];

  v23 = swift_task_alloc();
  v1[14] = v23;
  *v23 = v1;
  v23[1] = sub_100042DA8;
  v25 = v1[3];
  v24 = v1[4];

  return sub_1000562D0(v25, v24);
}

uint64_t sub_100042DA8(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100042EA8, 0, 0);
}

uint64_t sub_100042EA8()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v8[5] = v1;
  (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);

  v9 = v2;
  v10 = swift_task_alloc();
  v0[17] = v10;
  v11 = sub_100022F18(&qword_1000B8E38, &qword_10008D520);
  *v10 = v0;
  v10[1] = sub_100042FFC;
  v12 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_100056B78, v8, v11);
}

uint64_t sub_100042FFC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_100043214;
  }

  else
  {
    v3 = sub_100043180;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100043180()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100043214()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10004329C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, void *a5@<X8>)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100039948(a1, a2, a3);
  if (!v5)
  {
    v17 = result;
    v34 = a4;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v32 = a5;
      v37 = _swiftEmptyArrayStorage;
      v15 = &v37;
      specialized ContiguousArray.reserveCapacity(_:)();
      while (1)
      {
        v11 = 0;
        v12 = v17 & 0xC000000000000001;
        v33 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          a5 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v33 + 16))
            {
              goto LABEL_14;
            }

            v19 = *(v17 + 8 * v11 + 32);
          }

          v20 = v19;
          v35 = v19;
          sub_100043620(&v35, v34, &v36);

          a2 = v36;
          v15 = &v37;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a1 = v37[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v11;
          if (a5 == v18)
          {

            v21 = v37;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          break;
        }

        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (!v22)
        {

          goto LABEL_24;
        }

        v18 = v22;
        v32 = a5;
        v37 = _swiftEmptyArrayStorage;
        v15 = &v37;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v18 < 0)
        {
          __break(1u);
          break;
        }
      }
    }

    static FamilyLogger.daemon.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = v23;
      v26 = v25;
      v27 = swift_slowAlloc();
      v32 = a5;
      v28 = v27;
      v37 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000373D4(a1, a2, &v37);
      v29 = v24;
      v30 = v34;
      _os_log_impl(&_mh_execute_header, v34, v29, "No cached records exist for altDSID: %s.", v26, 0xCu);
      sub_100024F7C(v28);

      result = (*(v12 + 8))(v15, v11);
      v21 = _swiftEmptyArrayStorage;
LABEL_21:
      *v32 = v21;
    }

    else
    {

      result = (*(v12 + 8))(v15, v11);
LABEL_24:
      *a5 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_100043620@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = a2;
  v60 = a3;
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = &v47 - v18;
  v20 = *a1;
  v21 = [*a1 altDSID];
  if (v21)
  {
    v22 = v21;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v23;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  v24 = [v20 bundleID];
  if (v24)
  {
    v25 = v24;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v26;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
  }

  if ([v20 lowerbound])
  {
    v56 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(v20, "lowerbound")}];
  }

  else
  {
    v56 = 0;
  }

  if ([v20 upperbound])
  {
    v52 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(v20, "upperbound")}];
  }

  else
  {
    v52 = 0;
  }

  v51 = [v20 response];
  v50 = [v20 responseType];
  v27 = [v20 createdAt];
  if (v27)
  {
    v28 = v27;
    v29 = v48;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v13 + 32);
    v30(v11, v29, v12);
    v31 = *(v13 + 56);
    v31(v11, 0, 1, v12);
    v30(v19, v11, v12);
  }

  else
  {
    v31 = *(v13 + 56);
    v31(v11, 1, 1, v12);
    static Date.now.getter();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_10002624C(v11, &qword_1000B89A8, &qword_10008CE90);
    }
  }

  v32 = [v20 invalidatedAt];
  if (v32)
  {
    v33 = v32;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v31(v8, v34, 1, v12);
  v35 = String._bridgeToObjectiveC()();

  v36 = String._bridgeToObjectiveC()();

  v37.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v38 = (*(v13 + 48))(v8, 1, v12);
  v55 = v19;
  v49 = v12;
  if (v38 == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v8, v12);
  }

  v40 = v51;
  v41 = v50;
  v42 = objc_allocWithZone(FAAgeRange);
  v43 = v56;
  v44 = v52;
  v45 = [v42 initWithAltDSID:v35 bundleID:v36 lowerbound:v56 upperbound:v52 response:v40 responseType:v41 createdAt:v37.super.isa invalidatedAt:isa validationLevel:v59];

  result = (*(v13 + 8))(v55, v49);
  *v60 = v45;
  return result;
}

uint64_t sub_100043CB8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100043D8C;

  return AgeRangeDaemonService.fetchAgeRanges(with:)(v4, v6);
}

uint64_t sub_100043D8C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_100002B10(0, &qword_1000B9038, FAAgeRange_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t AgeRangeDaemonService.deleteAgeRanges(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100044070, 0, 0);
}

uint64_t sub_100044070(uint64_t a1)
{
  v24 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000016, 0x80000001000885B0, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = (*(v6 + 8))(v5, v7);
  v11 = *((*(v1[4] + 32))(v10) + 56);
  if (!v11)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v13 = v1[6];
  v12 = v1[7];
  v14 = v1[5];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v11;

  v18 = [v17 newBackgroundContext];
  v1[11] = v18;

  v19 = swift_allocObject();
  v1[12] = v19;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v18;
  (*(v13 + 104))(v12, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v14);

  v18;
  v20 = swift_task_alloc();
  v1[13] = v20;
  *v20 = v1;
  v20[1] = sub_1000443B8;
  v21 = v1[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_100056B98, v19, &type metadata for () + 8);
}

uint64_t sub_1000443B8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000445C4;
  }

  else
  {
    v5 = sub_10004454C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004454C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000445C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10004463C(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = type metadata accessor for Logger();
  v42 = *(v45 - 8);
  v7 = __chkstk_darwin(v45, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v41 - v11;
  v13 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  __chkstk_darwin(v13 - 8, v14);
  v15 = type metadata accessor for AgeAttestationEntity();
  v16 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  v43 = a2;
  v44 = a1;
  v47 = a1;
  v48 = a2;
  v49[1] = v15;
  Predicate.init(_:)();
  v17 = NSPredicate.init<A>(_:)();
  [v16 setPredicate:v17];

  v18 = v46;
  v19 = NSManagedObjectContext.fetch<A>(_:)();

  if (v18)
  {
    return;
  }

  v21 = v44;
  v20 = v45;
  v46 = v12;
  if (v19 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v21;
    if (v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v44;
    if (v22)
    {
LABEL_4:
      if (v22 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v22; ++i)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v19 + 8 * i + 32);
        }

        v26 = v25;
        [a3 deleteObject:v25];
      }

      v49[0] = 0;
      if ([a3 save:v49])
      {
        v27 = v49[0];
        v28 = v46;
        static FamilyLogger.daemon.getter();
        v29 = v43;

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v49[0] = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_1000373D4(v23, v29, v49);
          _os_log_impl(&_mh_execute_header, v30, v31, "Deleted age attestations with altDSID: %s", v32, 0xCu);
          sub_100024F7C(v33);
        }

        (*(v42 + 8))(v28, v45);
      }

      else
      {
        v34 = v49[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      return;
    }
  }

  v35 = v9;
  static FamilyLogger.daemon.getter();
  v36 = v43;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v49[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1000373D4(v21, v36, v49);
    _os_log_impl(&_mh_execute_header, v37, v38, "No cached records exist for altDSID: %s, skipping deletion.", v39, 0xCu);
    sub_100024F7C(v40);
  }

  (*(v42 + 8))(v35, v20);
}

uint64_t sub_100044CD8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100044DAC;

  return AgeRangeDaemonService.deleteAgeRanges(with:)(v4, v6);
}

uint64_t sub_100044DAC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_100044F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100045018, 0, 0);
}

uint64_t sub_100045018()
{
  v1 = *((*(v0[6] + 32))() + 56);
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[8];
  v14 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = v1;

  v9 = [v8 newBackgroundContext];
  v0[10] = v9;

  v10 = swift_allocObject();
  v0[11] = v10;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = v9;
  (*(v2 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v9;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_100045274;
  v12 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, sub_100058320, v10, &type metadata for () + 8);
}

uint64_t sub_100045274()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_100045474;
  }

  else
  {
    v5 = sub_100045408;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100045408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045474()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000454E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v57 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a1;
  v20 = a2;
  v21 = a2;
  v22 = a3;
  v23 = a3;
  v24 = a4;
  v25 = a4;
  v26 = a5;
  v27 = v60;
  result = sub_100039D3C(v19, v21, v23, v25);
  if (!v27)
  {
    v29 = result;
    v55 = v26;
    v56 = v13;
    v31 = v58;
    v30 = v59;
    v60 = v18;
    v53 = v20;
    v54 = v24;
    v51 = v22;
    if (result >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v60;
    v34 = v30;
    v35 = v31;
    v36 = v55;
    v37 = v56;
    v52 = 0;
    if (v32)
    {
      if (v32 < 1)
      {
        __break(1u);
      }

      v38 = 0;
      v39 = (v57 + 8);
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v40 = *(v29 + 8 * v38 + 32);
        }

        v41 = v40;
        ++v38;
        static Date.now.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v39)(v17, v14);
        [v41 setInvalidatedAt:{isa, v51, v52}];
      }

      while (v32 != v38);

      v35 = v58;
      v34 = v59;
      v36 = v55;
      v37 = v56;
      v33 = v60;
    }

    else
    {
    }

    v61 = 0;
    v43 = [v36 save:{&v61, v51}];
    v45 = v53;
    v44 = v54;
    if (v43)
    {
      v46 = v61;
      static FamilyLogger.daemon.getter();

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v49 = 136315394;
        *(v49 + 4) = sub_1000373D4(v33, v45, &v61);
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_1000373D4(v51, v44, &v61);
        _os_log_impl(&_mh_execute_header, v47, v48, "Invalidated all attestations with altDSID %s and %s", v49, 0x16u);
        swift_arrayDestroy();

        return (*(v35 + 8))(v56, v34);
      }

      else
      {

        return (*(v35 + 8))(v37, v34);
      }
    }

    else
    {
      v50 = v61;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100045928(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000459EC, 0, 0);
}

uint64_t sub_1000459EC()
{
  v1 = *((*(v0[4] + 32))() + 56);
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v1;

  v8 = [v7 newBackgroundContext];
  v0[8] = v8;

  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);

  v8;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_100045C34;
  v11 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100058FF4, v9, &type metadata for () + 8);
}

uint64_t sub_100045C34()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_100045E34;
  }

  else
  {
    v5 = sub_100045DC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100045DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045E34()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100045EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100039B5C(a1, a2);
  if (!v3)
  {
    v17 = result;
    v42 = v12;
    v43 = a3;
    v18 = v44;
    v39 = a1;
    v40 = a2;
    v41 = v10;
    if (result >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v18;
    v21 = v7;
    v22 = v43;
    v38[1] = 0;
    if (v19)
    {
      v38[0] = v7;
      if (v19 < 1)
      {
        __break(1u);
      }

      v23 = 0;
      v24 = (v42 + 8);
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v17 + 8 * v23 + 32);
        }

        v26 = v25;
        ++v23;
        static Date.now.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v24)(v15, v11);
        [v26 setInvalidatedAt:isa];
      }

      while (v19 != v23);

      v21 = v38[0];
      v22 = v43;
      v20 = v44;
    }

    else
    {
    }

    v45 = 0;
    v28 = [v22 save:{&v45, v38[0]}];
    v30 = v40;
    v29 = v41;
    v31 = v39;
    if (v28)
    {
      v32 = v45;
      static FamilyLogger.daemon.getter();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v45 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1000373D4(v31, v30, &v45);
        _os_log_impl(&_mh_execute_header, v33, v34, "Invalidated all declined age attestations with altDSID %s", v35, 0xCu);
        sub_100024F7C(v36);
      }

      return (*(v20 + 8))(v29, v21);
    }

    else
    {
      v37 = v45;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t AgeRangeDaemonService.saveAgeRange(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10004638C, 0, 0);
}

uint64_t sub_10004638C(uint64_t a1)
{
  v24 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000013, 0x80000001000885D0, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = (*(v6 + 8))(v5, v7);
  v11 = *((*(v1[3] + 32))(v10) + 56);
  if (!v11)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v13 = v1[5];
  v12 = v1[6];
  v14 = v1[4];
  v15 = v1[2];
  v16 = v11;

  v17 = [v16 newBackgroundContext];
  v1[10] = v17;

  v18 = swift_allocObject();
  v1[11] = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  (*(v13 + 104))(v12, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v14);
  v17;
  v19 = v15;
  v20 = swift_task_alloc();
  v1[12] = v20;
  *v20 = v1;
  v20[1] = sub_1000466BC;
  v21 = v1[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_100056BB8, v18, &type metadata for () + 8);
}

uint64_t sub_1000466BC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000468C8;
  }

  else
  {
    v5 = sub_100046850;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100046850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000468C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100046940(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - v11;
  type metadata accessor for AgeAttestationEntity();
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v36 = a1;
  v14 = [v13 initWithContext:a1];
  v15 = [a2 altDSID];
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v14 setAltDSID:v15];

  v16 = [a2 bundleID];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v14 setBundleID:v16];

  v17 = [a2 lowerbound];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = [a2 lowerbound];
  if (!v18)
  {
    __break(1u);
    goto LABEL_35;
  }

  v19 = v18;
  v20 = [v18 integerValue];

  if (v20 < 0xFFFFFFFF80000000)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (v20 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_10:
    v20 = 0;
  }

  [v14 setLowerbound:v20];
  v21 = [a2 upperbound];
  if (!v21)
  {
LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  v22 = [a2 upperbound];
  if (!v22)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 integerValue];

  if (v24 < 0xFFFFFFFF80000000)
  {
    goto LABEL_33;
  }

  if (v24 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  [v14 setUpperbound:v24];
  v25 = [a2 response];
  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v25 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v14 setResponse:v25];
  v26 = [a2 responseType];
  if (v26 < 0xFFFFFFFF80000000)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v14 setResponseType:v26];
  v27 = [a2 createdAt];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v29 = *(v5 + 8);
  v29(v12, v4);
  [v14 setCreatedAt:isa];

  v30 = [a2 invalidatedAt];
  if (v30)
  {
    v31 = v30;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v32.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v29(v9, v4);
  }

  else
  {
    v32.super.isa = 0;
  }

  [v14 setInvalidatedAt:v32.super.isa];

  v37 = 0;
  if ([v36 save:&v37])
  {
    v33 = v37;
  }

  else
  {
    v34 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100046F68(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10004702C;

  return AgeRangeDaemonService.saveAgeRange(with:)(v5);
}

uint64_t sub_10004702C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t AgeRangeDaemonService.updateAgeRange(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000472E8, 0, 0);
}

uint64_t sub_1000472E8(uint64_t a1)
{
  v24 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000015, 0x80000001000885F0, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = (*(v6 + 8))(v5, v7);
  v11 = *((*(v1[3] + 32))(v10) + 56);
  if (!v11)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v13 = v1[5];
  v12 = v1[6];
  v14 = v1[4];
  v15 = v1[2];
  v16 = v11;

  v17 = [v16 newBackgroundContext];
  v1[10] = v17;

  v18 = swift_allocObject();
  v1[11] = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  (*(v13 + 104))(v12, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v14);
  v19 = v15;
  v17;
  v20 = swift_task_alloc();
  v1[12] = v20;
  *v20 = v1;
  v20[1] = sub_100047618;
  v21 = v1[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_100056BD4, v18, &type metadata for () + 8);
}

uint64_t sub_100047618()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000591DC;
  }

  else
  {
    v5 = sub_1000591E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000477AC(void *a1, void *a2)
{
  v74 = a2;
  v3 = type metadata accessor for Logger();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3, v4);
  v72 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Date();
  v71 = *(v6 - 8);
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v67 - v12;
  v14 = [a1 altDSID];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a1 bundleID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v73;
  v23 = sub_10003A510(v15, v17, v19, v21);
  if (v22)
  {

    return;
  }

  v24 = v23;
  v73 = 0;
  v67 = v13;
  v68 = v10;
  v25 = v71;
  p_prots = v72;

  if (!v24)
  {
    goto LABEL_14;
  }

  v27 = [a1 altDSID];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  [v24 setAltDSID:v27];

  v28 = [a1 bundleID];
  v29 = v6;
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  [v24 setBundleID:v28];

  v30 = [a1 lowerbound];
  p_prots = &OBJC_CATEGORY_NSUserDefaults___familycircled.prots;
  v31 = v25;
  if (v30)
  {

    v32 = [a1 lowerbound];
    v33 = v68;
    if (!v32)
    {
      __break(1u);
      goto LABEL_42;
    }

    v34 = v32;
    v35 = [v32 integerValue];

    if (v35 < 0xFFFFFFFF80000000)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v35 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_14:
      v36 = p_prots;
      static FamilyLogger.daemon.getter();
      v37 = a1;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v40 = 136315394;
        v41 = [v37 altDSID];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = sub_1000373D4(v42, v44, &v75);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        v46 = [v37 bundleID];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = sub_1000373D4(v47, v49, &v75);

        *(v40 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v38, v39, "No cached record exist for altDSID: %s, bundleID: %s, skipping deletion.", v40, 0x16u);
        swift_arrayDestroy();
      }

      (*(v69 + 8))(v36, v70);
      return;
    }
  }

  else
  {
    v35 = 0;
    v33 = v68;
  }

  [v24 setLowerbound:v35];
  v51 = [a1 upperbound];
  if (!v51)
  {
LABEL_23:
    v54 = 0;
    goto LABEL_24;
  }

  v52 = [a1 upperbound];
  if (!v52)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v53 = v52;
  v54 = [v52 integerValue];

  if (v54 < 0xFFFFFFFF80000000)
  {
    goto LABEL_40;
  }

  if (v54 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  [v24 setUpperbound:v54];
  v55 = [a1 response];
  if (v55 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_36;
  }

  v56 = v67;
  if (v55 > 0x7FFFFFFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v24 setResponse:v55];
  v57 = [a1 responseType];
  if (v57 < 0xFFFFFFFF80000000)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v57 > 0x7FFFFFFF)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v24 setResponseType:v57];
  v58 = [a1 createdAt];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v60 = v56;
  v61 = *(v31 + 8);
  v61(v60, v29);
  [v24 setCreatedAt:isa];

  v62 = [a1 invalidatedAt];
  if (v62)
  {
    v63 = v62;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v61(v33, v29);
  }

  else
  {
    v64.super.isa = 0;
  }

  [v24 setInvalidatedAt:v64.super.isa];

  v75 = 0;
  if ([v74 save:&v75])
  {
    v65 = v75;
  }

  else
  {
    v66 = v75;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100048068(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000591E0;

  return AgeRangeDaemonService.updateAgeRange(with:)(v5);
}

uint64_t AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 240) = a1;
  type metadata accessor for Date();
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for ShareOptionMetadata();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v8 = sub_100022F18(&qword_1000B8E40, &qword_10008D550);
  *(v6 + 104) = v8;
  *(v6 + 112) = *(v8 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  sub_100022F18(&qword_1000B8E48, &qword_10008D558);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100048388, 0, 0);
}

uint64_t sub_100048388(uint64_t a1)
{
  v33 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 176);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD00000000000003CLL, 0x8000000100088610, &v32);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 184) = v10;
  v11 = *(v1 + 128);
  v12 = *(v1 + 104);
  v13 = *(v1 + 112);
  sub_10005901C(&qword_1000B8E50, &type metadata accessor for ShareOptionMetadata, &protocol conformance descriptor for ShareOptionMetadata);
  sub_10005901C(&qword_1000B8E58, &type metadata accessor for ShareOptionMetadata, &protocol conformance descriptor for ShareOptionMetadata);
  UserDefaultsBackedShareOption.init()();
  UserDefaultsBackedShareOption.value(for:)();
  v14 = *(v13 + 8);
  *(v1 + 192) = v14;
  *(v1 + 200) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = *(v1 + 136);
  v16 = *(v1 + 64);
  v17 = *(v1 + 72);
  sub_100024C08(*(v1 + 144), v15, &qword_1000B8E48, &qword_10008D558);
  v18 = (*(v17 + 48))(v15, 1, v16);
  v19 = *(v1 + 136);
  if (v18 == 1)
  {
    sub_10002624C(*(v1 + 136), &qword_1000B8E48, &qword_10008D558);
    v20 = 0;
  }

  else
  {
    v26 = *(v1 + 64);
    v27 = *(v1 + 72);
    v20 = ShareOptionMetadata.shareOption.getter();
    result = (*(v27 + 8))(v19, v26);
    if (v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      return result;
    }

    if (v20 > 0x7FFFFFFF)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  v21 = *(v1 + 240);
  UserDefaultsBackedShareOption.init()();
  if (v20 != 1 && v21 == 1)
  {
    v22 = swift_task_alloc();
    *(v1 + 208) = v22;
    *v22 = v1;
    v22[1] = sub_100048804;
    v24 = *(v1 + 16);
    v23 = *(v1 + 24);

    return sub_100045928(v24, v23);
  }

LABEL_13:
  v28 = swift_task_alloc();
  *(v1 + 224) = v28;
  *v28 = v1;
  v28[1] = sub_10004897C;
  v29 = *(v1 + 96);
  v30 = *(v1 + 16);
  v31 = *(v1 + 24);

  return sub_10004C3A4(v29, v30, v31);
}

uint64_t sub_100048804()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100048DFC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[28] = v3;
    *v3 = v2;
    v3[1] = sub_10004897C;
    v4 = v2[12];
    v5 = v2[2];
    v6 = v2[3];

    return sub_10004C3A4(v4, v5, v6);
  }
}

uint64_t sub_10004897C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100048F10;
  }

  else
  {
    v2 = sub_100048A90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100048A90(uint64_t a1)
{
  v23 = *(v1 + 232);
  v2 = *(v1 + 96);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 72);
  v24 = *(v1 + 64);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 240);
  static Date.now.getter();
  [v7 doubleValue];
  [v6 integerValue];
  sub_100024C08(v2, v4, &qword_1000B89A8, &qword_10008CE90);
  ShareOptionMetadata.init(shareOption:updatedAt:cacheDuration:privacyVersion:birthdate:)();
  UserDefaultsBackedShareOption.write(key:value:)();
  (*(v5 + 8))(v3, v24);
  if (v23)
  {
    sub_10002624C(*(v1 + 96), &qword_1000B89A8, &qword_10008CE90);
    v9 = *(v1 + 144);
    (*(v1 + 192))(*(v1 + 120), *(v1 + 104));
    sub_10002624C(v9, &qword_1000B8E48, &qword_10008D558);

    v10 = *(v1 + 8);
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully updated age range sharing option to: %ld", v13, 0xCu);
    }

    v22 = *(v1 + 192);
    v14 = *(v1 + 184);
    v15 = *(v1 + 168);
    v17 = *(v1 + 144);
    v16 = *(v1 + 152);
    v18 = *(v1 + 120);
    v20 = *(v1 + 96);
    v19 = *(v1 + 104);

    v14(v15, v16);
    sub_10002624C(v20, &qword_1000B89A8, &qword_10008CE90);
    v22(v18, v19);
    sub_10002624C(v17, &qword_1000B8E48, &qword_10008D558);

    v10 = *(v1 + 8);
  }

  return v10();
}

uint64_t sub_100048DFC()
{
  v1 = *(v0 + 144);
  (*(v0 + 192))(*(v0 + 120), *(v0 + 104));
  sub_10002624C(v1, &qword_1000B8E48, &qword_10008D558);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100048F10()
{
  v1 = *(v0 + 144);
  (*(v0 + 192))(*(v0 + 120), *(v0 + 104));
  sub_10002624C(v1, &qword_1000B8E48, &qword_10008D558);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000491D4(int a1, uint64_t a2, void *a3, void *a4, void *aBlock, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a3;
  v6[5] = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v6[6] = v11;
  v13 = a3;
  v14 = a4;

  v15 = swift_task_alloc();
  v6[7] = v15;
  *v15 = v6;
  v15[1] = sub_10003DC90;

  return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(a1, v10, v12, v13, v14);
}

uint64_t sub_1000492E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DeclaredAgeRangeServerResponse();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = sub_100022F18(&qword_1000B9058, &qword_10008D850);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = sub_100022F18(&qword_1000B8E40, &qword_10008D550);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  sub_100022F18(&qword_1000B8E48, &qword_10008D558);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v7 = type metadata accessor for FamilyFeatureFlags();
  v3[36] = v7;
  v3[37] = *(v7 - 8);
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(sub_1000496E4, 0, 0);
}

uint64_t sub_1000496E4(uint64_t a1)
{
  v28 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 384);
  v6 = *(v1 + 312);
  v7 = *(v1 + 320);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000029, 0x8000000100088C30, &v27);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s called.", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 392) = v10;
  v12 = *(v1 + 296);
  v11 = *(v1 + 304);
  v13 = *(v1 + 288);
  (*(v12 + 104))(v11, enum case for FamilyFeatureFlags.fetchParentalControlsFromServer(_:), v13);
  v14 = static FamilyFeatureFlags.enabled(_:)();
  v15 = v14 & 1;
  *(v1 + 25) = v14 & 1;
  (*(v12 + 8))(v11, v13);
  static FamilyLogger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "serverFeatureFlagEnabled : %{BOOL}d", v18, 8u);
  }

  v19 = *(v1 + 376);
  v20 = *(v1 + 312);
  v21 = *(v1 + 320);

  *(v1 + 400) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v19, v20);
  v22 = swift_task_alloc();
  *(v1 + 408) = v22;
  *v22 = v1;
  v22[1] = sub_100049994;
  v23 = *(v1 + 280);
  v24 = *(v1 + 40);
  v25 = *(v1 + 32);

  return sub_10004C3A4(v23, v25, v24);
}

uint64_t sub_100049994()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_10004BD28;
  }

  else
  {
    v2 = sub_100049AA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100049AA8()
{
  v130 = v0;
  v1 = *(v0 + 416);
  v2 = type metadata accessor for ShareOptionMetadata();
  sub_10005901C(&qword_1000B8E50, &type metadata accessor for ShareOptionMetadata, &protocol conformance descriptor for ShareOptionMetadata);
  sub_10005901C(&qword_1000B8E58, &type metadata accessor for ShareOptionMetadata, &protocol conformance descriptor for ShareOptionMetadata);
  UserDefaultsBackedShareOption.init()();
  UserDefaultsBackedShareOption.value(for:)();
  if (v1)
  {
    v3 = *(v0 + 280);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    sub_10002624C(v3, &qword_1000B89A8, &qword_10008CE90);

    v4 = *(v0 + 8);

    return v4();
  }

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_100024C08(v6, v7, &qword_1000B8E48, &qword_10008D558);
  v8 = *(v2 - 8);
  v127 = *(v8 + 48);
  v9 = v127(v7, 1, v2);
  v10 = *(v0 + 272);
  v11 = *(v0 + 232);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  if (v9 == 1)
  {
    sub_10002624C(*(v0 + 232), &qword_1000B8E48, &qword_10008D558);
    (*(v13 + 56))(v10, 1, 1, v12);
  }

  else
  {
    ShareOptionMetadata.birthdate.getter();
    (*(v8 + 8))(v11, v2);
    v14 = *(v13 + 48);
    if (v14(v10, 1, v12) != 1)
    {
      v125 = v8;
      v121 = v2;
      v123 = *(v0 + 280);
      v50 = *(v0 + 264);
      v51 = *(v0 + 144);
      v52 = *(v0 + 104);
      v53 = *(v0 + 112);
      v54 = *(v0 + 88);
      v18 = *(v0 + 96);
      v120 = *(v53 + 32);
      v120(v51, *(v0 + 272), v52);
      (*(v53 + 16))(v50, v51, v52);
      (*(v53 + 56))(v50, 0, 1, v52);
      v2 = *(v54 + 48);
      sub_100024C08(v50, v18, &qword_1000B89A8, &qword_10008CE90);
      sub_100024C08(v123, v18 + v2, &qword_1000B89A8, &qword_10008CE90);
      if (v14(v18, 1, v52) != 1)
      {
        goto LABEL_31;
      }

      v55 = *(v0 + 104);
      sub_10002624C(*(v0 + 264), &qword_1000B89A8, &qword_10008CE90);
      if (v14(v18 + v2, 1, v55) == 1)
      {
        v56 = *(v0 + 112);
        sub_10002624C(*(v0 + 96), &qword_1000B89A8, &qword_10008CE90);
        (*(v56 + 8))(*(v0 + 144), *(v0 + 104));
        goto LABEL_40;
      }

LABEL_33:
      sub_10002624C(*(v0 + 96), &qword_1000B9058, &qword_10008D850);
LABEL_34:
      v63 = swift_task_alloc();
      *(v0 + 424) = v63;
      *v63 = v0;
      v63[1] = sub_10004AD50;
      v64 = *(v0 + 40);
      v65 = *(v0 + 32);

      return AgeRangeDaemonService.deleteAgeRanges(with:)(v65, v64);
    }
  }

  sub_10002624C(*(v0 + 272), &qword_1000B89A8, &qword_10008CE90);
  while (*(v0 + 25) == 1)
  {
    v15 = *(v0 + 224);
    sub_100024C08(*(v0 + 240), v15, &qword_1000B8E48, &qword_10008D558);
    v16 = v127;
    v17 = v127(v15, 1, v2);
    v18 = *(v0 + 224);
    if (v17 == 1)
    {
      sub_10002624C(*(v0 + 224), &qword_1000B8E48, &qword_10008D558);
      v19 = 0;
LABEL_12:
      v126 = v8;
      static FamilyLogger.daemon.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "Current declaredAgeRangeSharingOption: %d", v22, 8u);
      }

      v122 = v19;
      v23 = *(v0 + 392);
      v24 = *(v0 + 368);
      v25 = *(v0 + 312);
      v26 = *(v0 + 240);
      v27 = *(v0 + 216);

      v23(v24, v25);
      static FamilyLogger.daemon.getter();
      sub_100024C08(v26, v27, &qword_1000B8E48, &qword_10008D558);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v0 + 208);
        v30 = *(v0 + 216);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v129[0] = v33;
        *v32 = 136315138;
        sub_100024C08(v30, v31, &qword_1000B8E48, &qword_10008D558);
        v34 = v127(v31, 1, v2);
        v35 = *(v0 + 208);
        if (v34 == 1)
        {
          sub_10002624C(*(v0 + 208), &qword_1000B8E48, &qword_10008D558);
          v36 = 0;
          v37 = 1;
        }

        else
        {
          v36 = ShareOptionMetadata.privacyVersion.getter();
          v37 = v75;
          (*(v126 + 8))(v35, v2);
        }

        v119 = *(v0 + 392);
        v118 = *(v0 + 360);
        v76 = *(v0 + 312);
        v77 = *(v0 + 216);
        *(v0 + 16) = v36;
        *(v0 + 24) = v37 & 1;
        sub_100022F18(&qword_1000B9060, &qword_10008D858);
        v78 = String.init<A>(describing:)();
        v80 = v79;
        sub_10002624C(v77, &qword_1000B8E48, &qword_10008D558);
        v81 = sub_1000373D4(v78, v80, v129);

        *(v32 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v28, v29, "Current privacyVersion: %s", v32, 0xCu);
        sub_100024F7C(v33);

        v119(v118, v76);
        v16 = v127;
      }

      else
      {
        v66 = *(v0 + 392);
        v67 = *(v0 + 360);
        v68 = *(v0 + 312);
        v69 = *(v0 + 216);

        sub_10002624C(v69, &qword_1000B8E48, &qword_10008D558);
        v66(v67, v68);
      }

      v82 = *(v0 + 200);
      sub_100024C08(*(v0 + 240), v82, &qword_1000B8E48, &qword_10008D558);
      v83 = v16(v82, 1, v2);
      v84 = *(v0 + 248);
      v85 = *(v0 + 200);
      v86 = *(v0 + 128);
      v87 = *(v0 + 104);
      v88 = *(v0 + 112);
      if (v83 == 1)
      {
        sub_10002624C(*(v0 + 200), &qword_1000B8E48, &qword_10008D558);
        (*(v88 + 56))(v84, 1, 1, v87);
        static Date.now.getter();
        if ((*(v88 + 48))(v84, 1, v87) != 1)
        {
          sub_10002624C(*(v0 + 248), &qword_1000B89A8, &qword_10008CE90);
        }
      }

      else
      {
        ShareOptionMetadata.updatedAt.getter();
        (*(v126 + 8))(v85, v2);
        (*(v88 + 56))(v84, 0, 1, v87);
        (*(v88 + 32))(v86, v84, v87);
      }

      v89 = *(v0 + 192);
      sub_100024C08(*(v0 + 240), v89, &qword_1000B8E48, &qword_10008D558);
      v90 = v16(v89, 1, v2);
      v91 = *(v0 + 192);
      if (v90 == 1)
      {
        sub_10002624C(*(v0 + 192), &qword_1000B8E48, &qword_10008D558);
        if (!v122)
        {
          goto LABEL_52;
        }
      }

      else
      {
        ShareOptionMetadata.cacheDuration.getter();
        (*(v126 + 8))(v91, v2);
        if (!v122)
        {
LABEL_52:
          v98 = swift_task_alloc();
          *(v0 + 464) = v98;
          *v98 = v0;
          v98[1] = sub_10004B554;
          v99 = *(v0 + 80);
          v100 = *(v0 + 40);
          v101 = *(v0 + 32);

          return sub_10004CFFC(v99, v101, v100);
        }
      }

      v92 = *(v0 + 136);
      v94 = *(v0 + 112);
      v93 = *(v0 + 120);
      v95 = *(v0 + 104);
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v96 = static Date.> infix(_:_:)();
      v97 = *(v94 + 8);
      v97(v93, v95);
      v97(v92, v95);
      if (v96)
      {
        goto LABEL_52;
      }

      static FamilyLogger.daemon.getter();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 67109120;
        *(v104 + 4) = v122;
        _os_log_impl(&_mh_execute_header, v102, v103, "Returning declaredAgeRangeSharingOption: %d from cache", v104, 8u);
      }

      v105 = *(v0 + 392);
      v106 = *(v0 + 336);
      v107 = *(v0 + 312);
      v108 = *(v0 + 240);
      v109 = *(v0 + 184);

      v105(v106, v107);
      sub_100024C08(v108, v109, &qword_1000B8E48, &qword_10008D558);
      v110 = v127(v109, 1, v2);
      v111 = *(v0 + 184);
      if (v110 == 1)
      {
        sub_10002624C(*(v0 + 184), &qword_1000B8E48, &qword_10008D558);
      }

      else
      {
        v112 = ShareOptionMetadata.privacyVersion.getter();
        v114 = v113;
        (*(v126 + 8))(v111, v2);
        if ((v114 & 1) == 0)
        {
LABEL_61:
          v48 = *(v0 + 280);
          v49 = *(v0 + 240);
          v115 = *(v0 + 128);
          v116 = *(v0 + 104);
          v128.super.super.isa = [objc_allocWithZone(NSNumber) initWithInteger:v112];
          v97(v115, v116);
          goto LABEL_62;
        }
      }

      v112 = 0;
      goto LABEL_61;
    }

    v19 = ShareOptionMetadata.shareOption.getter();
    result = (*(v8 + 8))(v18, v2);
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_66:
      __break(1u);
      return result;
    }

    if (v19 <= 0x7FFFFFFF)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_28:
    v47 = ShareOptionMetadata.shareOption.getter();
    v14 = (v125 + 8);
    result = (*(v125 + 8))(v18, v2);
    if (v47 < 0xFFFFFFFF80000000)
    {
      goto LABEL_66;
    }

    if (v47 <= 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_31:
    v57 = *(v0 + 104);
    sub_100024C08(*(v0 + 96), *(v0 + 256), &qword_1000B89A8, &qword_10008CE90);
    v58 = v14(v18 + v2, 1, v57);
    v60 = *(v0 + 256);
    v59 = *(v0 + 264);
    if (v58 == 1)
    {
      v62 = *(v0 + 104);
      v61 = *(v0 + 112);
      sub_10002624C(*(v0 + 264), &qword_1000B89A8, &qword_10008CE90);
      (*(v61 + 8))(v60, v62);
      goto LABEL_33;
    }

    v70 = *(v0 + 136);
    v71 = *(v0 + 104);
    v72 = *(v0 + 112);
    v124 = *(v0 + 96);
    v120(v70, v18 + v2, v71);
    sub_10005901C(&qword_1000B9068, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    v74 = *(v72 + 8);
    v74(v70, v71);
    sub_10002624C(v59, &qword_1000B89A8, &qword_10008CE90);
    v74(v60, v71);
    sub_10002624C(v124, &qword_1000B89A8, &qword_10008CE90);
    if ((v73 & 1) == 0)
    {
      goto LABEL_34;
    }

    v74(*(v0 + 144), *(v0 + 104));
LABEL_40:
    v2 = v121;
    v8 = v125;
  }

  v125 = v8;
  static FamilyLogger.daemon.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Fetching parental controls from local database", v40, 2u);
  }

  v41 = *(v0 + 392);
  v42 = *(v0 + 328);
  v43 = *(v0 + 312);
  v44 = *(v0 + 240);
  v45 = *(v0 + 176);

  v41(v42, v43);
  sub_100024C08(v44, v45, &qword_1000B8E48, &qword_10008D558);
  v46 = v127(v45, 1, v2);
  v18 = *(v0 + 176);
  if (v46 != 1)
  {
    goto LABEL_28;
  }

  sub_10002624C(*(v0 + 176), &qword_1000B8E48, &qword_10008D558);
  v47 = 0;
LABEL_21:
  v48 = *(v0 + 280);
  v49 = *(v0 + 240);
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v128.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v122 = v47;
LABEL_62:
  sub_10002624C(v49, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v48, &qword_1000B89A8, &qword_10008CE90);

  v117 = *(v0 + 8);

  return v117(v122, v128.super.super.isa);
}

uint64_t sub_10004AD50()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 456) = v0;
    v3 = sub_10004B31C;
  }

  else
  {
    v3 = sub_10004AE70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004AE70()
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v0[54] = v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_10004AF30;
  v3 = v0[5];
  v4 = v0[4];

  return AgeRangeDaemonService.setAgeRangeGlobalState(_:for:privacyVersion:)(0, v4, v3, v1);
}

uint64_t sub_10004AF30()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_10004B2AC;
  }

  else
  {

    v3 = sub_10004B04C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004B04C()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v8 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  (*(v5 + 8))(v3, v4);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);

  v6 = v0[1];

  return v6(0, v8);
}

uint64_t sub_10004B2AC()
{
  *(v0 + 456) = *(v0 + 448);

  return _swift_task_switch(sub_10004B31C, 0, 0);
}

uint64_t sub_10004B31C()
{
  v1 = v0[35];
  v2 = v0[30];
  (*(v0[14] + 8))(v0[18], v0[13]);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10004B554()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10004BF10;
  }

  else
  {
    v2 = sub_10004B668;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B668(uint64_t a1)
{
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  static FamilyLogger.daemon.getter();
  (*(v5 + 16))(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 56);
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    v13 = DeclaredAgeRangeServerResponse.featureEnabled.getter() & 1;
    v14 = *(v10 + 8);
    v14(v9, v11);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Parental controls, declaredAgeRangeEnabled: %{BOOL}d", v12, 8u);
  }

  else
  {
    v14 = *(v10 + 8);
    v14(*(v1 + 72), *(v1 + 56));
  }

  *(v1 + 480) = v14;
  v15 = *(v1 + 392);
  v16 = *(v1 + 352);
  v17 = *(v1 + 312);

  v15(v16, v17);
  if (DeclaredAgeRangeServerResponse.featureEnabled.getter())
  {
    v18 = DeclaredAgeRangeServerResponse.shareOption.getter();
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 28) = v18;
  static FamilyLogger.daemon.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Fetched parental controls, declaredAgeRangeShareOption: %d", v21, 8u);
  }

  v22 = *(v1 + 392);
  v23 = *(v1 + 344);
  v24 = *(v1 + 312);

  v22(v23, v24);
  DeclaredAgeRangeServerResponse.cacheDuration.getter();
  v26 = [objc_allocWithZone(NSNumber) initWithDouble:v25];
  *(v1 + 488) = v26;
  v27 = [objc_allocWithZone(NSNumber) initWithInteger:DeclaredAgeRangeServerResponse.privacyVersion.getter()];
  *(v1 + 496) = v27;
  v28 = swift_task_alloc();
  *(v1 + 504) = v28;
  *v28 = v1;
  v28[1] = sub_10004B944;
  v29 = *(v1 + 40);
  v30 = *(v1 + 32);

  return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(v18, v30, v29, v26, v27);
}

uint64_t sub_10004B944()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 488);

  if (v0)
  {
    v4 = sub_10004C148;
  }

  else
  {
    v4 = sub_10004BA90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004BA90()
{
  v1 = *(v0 + 480);
  v10 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v12 = [objc_allocWithZone(NSNumber) initWithInteger:DeclaredAgeRangeServerResponse.privacyVersion.getter()];
  v1(v6, v7);
  (*(v5 + 8))(v3, v4);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v10, &qword_1000B89A8, &qword_10008CE90);
  v11 = *(v0 + 28);

  v8 = *(v0 + 8);

  return v8(v11, v12);
}

uint64_t sub_10004BD28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004BF10()
{
  v1 = v0[35];
  v2 = v0[30];
  (*(v0[14] + 8))(v0[16], v0[13]);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10004C148()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  (*(v0 + 480))(*(v0 + 80), *(v0 + 56));
  (*(v5 + 8))(v3, v4);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004C3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10004C444, 0, 0);
}

uint64_t sub_10004C444()
{
  v1 = v0[7];
  v2 = [*(*sub_1000297A8((v1 + 48) *(v1 + 72)) + 16)];
  if (!v2 || (v3 = v2, v4 = [v2 aa_altDSID], v3, !v4))
  {
LABEL_8:
    v12 = v0[4];
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == v6 && v9 == v5)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_1000297A8((v1 + 48), *(v1 + 72));
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_10004C624;
  v17 = v0[8];

  return sub_100033084(v17);
}

uint64_t sub_10004C624()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10004C914;
  }

  else
  {
    v2 = sub_10004C738;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004C738()
{
  v1 = v0[8];
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);
    type metadata accessor for AgeRangeError(0);
    v0[3] = -4020;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    v5 = v0[4];
    (*(v3 + 32))(v5, v1, v2);
    (*(v3 + 56))(v5, 0, 1, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004C914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AgeRangeDaemonService.ageRangeGlobalState(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004CA1C;

  return sub_1000492E4(a1, a2);
}

uint64_t sub_10004CA1C(uint64_t a1, void *a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_10004CCEC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10004CDC0;

  return sub_1000492E4(v4, v6);
}

uint64_t sub_10004CDC0(int a1, void *a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = *(v7 + 24);

    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);

    _Block_release(*(v7 + 24));
    v11 = *(v8 + 8);

    return v11();
  }

  else
  {

    *(v7 + 48) = a1;

    return _swift_task_switch(sub_10004CF78, 0, 0);
  }
}

uint64_t sub_10004CF78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004D0C0, 0, 0);
}

uint64_t sub_10004D0C0()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10004D15C;
  v3 = v0[5];
  v2 = v0[6];

  return sub_10006D428(v3, v2);
}

uint64_t sub_10004D15C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return _swift_task_switch(sub_10004D2B0, 0, 0);
  }
}

void sub_10004D2B0()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for AgeRangeError(0);
  v0[3] = -4012;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v3 = v0[1];

  v3();
}