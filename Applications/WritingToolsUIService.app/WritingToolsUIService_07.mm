uint64_t sub_1000CB480(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000CB510(void *a1)
{
  v3 = v1;
  v5 = sub_10000341C(&qword_100260F58, &unk_1001D64C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100027874(a1, a1[3]);
  sub_1000CCC44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_1000CCC98(&qword_100260F68, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    sub_10000341C(&qword_100260F70, &qword_1001D64D8);
    sub_1000CCC98(&qword_100260F78, &qword_100260F70, &qword_1001D64D8, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000CB79C(__int128 *a1)
{
  v2 = v1;
  String.hash(into:)();
  v4 = v2[2];
  v5 = *(v4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1000CC7CC(a1, v2[3]);
  if (!v2[5])
  {
    Hasher._combine(_:)(0);
    if (v2[7])
    {
      goto LABEL_6;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2[7])
  {
    goto LABEL_10;
  }

LABEL_6:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_1000CB8AC()
{
  v1 = *v0;
  v2 = 0x736E4174726F6873;
  v3 = 0x4449656372756F73;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x676F6C616964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73656372756F73;
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

uint64_t sub_1000CB94C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000CCF50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000CB980(uint64_t a1)
{
  v2 = sub_1000CCC44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CB9BC(uint64_t a1)
{
  v2 = sub_1000CCC44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CBA10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1000CC928(v7, v8) & 1;
}

Swift::Int sub_1000CBA5C()
{
  Hasher.init(_seed:)();
  sub_1000CB79C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CBAA0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000CB79C(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000CBADC()
{
  v0 = sub_10000341C(&qword_100260F38, &unk_1001D63C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for SnippetEnvironment();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
  return AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
}

uint64_t sub_1000CBC5C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CBCB8()
{
  v1 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_100260F40, &qword_1001D63D8);
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IntentsServices.DispatcherOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultEnvironment];
  v16[3] = sub_1000CCB90();
  v16[4] = &protocol witness table for LNEnvironment;
  v16[0] = v10;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v2 + 104))(v4, enum case for IntentsServices.PayloadPrivacy.default(_:), v1);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v11 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_10000F4B4(v16);
  *(v0 + 16) = v11;
  *(v0 + 24) = v13;
  return v0;
}

uint64_t sub_1000CBF08(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000CC2B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000CC058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
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

Swift::Int sub_1000CC2B8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000CC058(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000CC438();
      goto LABEL_16;
    }

    sub_1000CC594(v8 + 1);
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

void *sub_1000CC438()
{
  v1 = v0;
  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
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

Swift::Int sub_1000CC594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
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

void sub_1000CC7CC(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1000CC928(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10017BA1C(a1[2], a2[2]) & 1) == 0 || (sub_10017CBE0(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  if (v5)
  {
    if (!v6 || (a1[4] != a2[4] || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a2[7];
  if (v7)
  {
    if (v8 && (a1[6] == a2[6] && v7 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
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

unint64_t sub_1000CCA10()
{
  result = qword_100260F10;
  if (!qword_100260F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F10);
  }

  return result;
}

unint64_t sub_1000CCA64()
{
  result = qword_100260F18;
  if (!qword_100260F18)
  {
    sub_100003E34(&qword_100260F20, &qword_1001D63B0);
    sub_1000CCB18(&qword_100260F28, type metadata accessor for SearchEntity, &unk_1001D7078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F18);
  }

  return result;
}

uint64_t sub_1000CCB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CCB90()
{
  result = qword_100260F48;
  if (!qword_100260F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100260F48);
  }

  return result;
}

unint64_t sub_1000CCBF0()
{
  result = qword_100260F50;
  if (!qword_100260F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F50);
  }

  return result;
}

unint64_t sub_1000CCC44()
{
  result = qword_100260F60;
  if (!qword_100260F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F60);
  }

  return result;
}

uint64_t sub_1000CCC98(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000CCE4C()
{
  result = qword_100260F80;
  if (!qword_100260F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F80);
  }

  return result;
}

unint64_t sub_1000CCEA4()
{
  result = qword_100260F88;
  if (!qword_100260F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F88);
  }

  return result;
}

unint64_t sub_1000CCEFC()
{
  result = qword_100260F90;
  if (!qword_100260F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F90);
  }

  return result;
}

uint64_t sub_1000CCF50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E4174726F6873 && a2 == 0xEB00000000726577;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
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

uint64_t sub_1000CD178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7469746E45707061;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (a1 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  if (a1 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x6C61626F6C67;
  if (a1 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  v12 = 0x726577736E61;
  if (!a1)
  {
    v12 = 0x7469746E45707061;
    v10 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v11 = v12;
    v2 = v10;
  }

  if (a1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  if (v5 <= 3)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v4 = 0xE500000000000000;
        if (v13 != 0x616964656DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4 = 0xE800000000000000;
        if (v13 != 0x6E65657263536E6FLL)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xE500000000000000;
      if (v13 != 0x746E657665)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x647261436469)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = 0xE600000000000000;
        if (v13 != 0x6C61626F6C67)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6867696C746F7073;
      v4 = 0xE900000000000074;
    }

    else if (a2)
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x726577736E61)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v4)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_1000CD3F4()
{
  v0 = 7104878;
  _StringGuts.grow(_:)(63);
  v1._object = 0x80000001001E5F30;
  v1._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v1);

  EntityProperty.wrappedValue.getter();

  if (v15 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {

    EntityProperty.wrappedValue.getter();

    if (v15)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v15)
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  v4 = v2;
  String.append(_:)(*&v3);

  v5._countAndFlagsBits = 0x656E4F6B63697020;
  v5._object = 0xE90000000000003DLL;
  String.append(_:)(v5);

  EntityProperty.wrappedValue.getter();

  if (v15 == 2)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {

    EntityProperty.wrappedValue.getter();

    if (v15)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v15)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v8 = v6;
  String.append(_:)(*&v7);

  v9._countAndFlagsBits = 0x5468637261657320;
  v9._object = 0xED00003D736D7265;
  String.append(_:)(v9);

  EntityProperty.wrappedValue.getter();

  if (v15)
  {

    EntityProperty.wrappedValue.getter();

    v0 = Array.description.getter();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  v12._countAndFlagsBits = v0;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t sub_1000CD6AC(uint64_t a1)
{
  v2 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_100260F98;
  sub_10000341C(&qword_1002613E0, &qword_1001D7440);
  swift_allocObject();
  *(v6 + v7) = EntityProperty.init(identifier:)();
  v8 = qword_100260FA0;
  swift_allocObject();
  *(v6 + v8) = EntityProperty.init(identifier:)();
  v9 = qword_100260FA8;
  sub_10000341C(&qword_1002613B0, &qword_1001D7410);
  swift_allocObject();
  *(v6 + v9) = EntityProperty.init(identifier:)();
  (*(v3 + 16))(v5, a1, v2);
  v10 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t sub_1000CD868(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1000CD8B8()
{
  CustomAppEntityRepresentationBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CD9B0(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261378, type metadata accessor for StructuredQueryEntity, &unk_1001D7274);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CDA20()
{
  v1 = sub_1000D076C(&qword_100261368, type metadata accessor for StructuredQueryEntity, &unk_1001D72FC);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CDA80(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261378, type metadata accessor for StructuredQueryEntity, &unk_1001D7274);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CDAF0()
{
  v0 = 7104878;
  _StringGuts.grow(_:)(74);
  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001001E5F90;
  String.append(_:)(v1);

  EntityProperty.wrappedValue.getter();

  if (v27)
  {
    v2 = v26;
  }

  else
  {
    v2 = 7104878;
  }

  v3 = 0xE300000000000000;
  if (v27)
  {
    v4 = v27;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v2);

  v6._countAndFlagsBits = 0x3D6570797420;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);

  EntityProperty.wrappedValue.getter();

  v7 = 7104878;
  if (v26 != 8)
  {

    EntityProperty.wrappedValue.getter();

    v7 = String.init<A>(describing:)();
    v3 = v8;
  }

  v9 = v3;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x69746E4570706120;
  v10._object = 0xEB000000003D7974;
  String.append(_:)(v10);

  EntityProperty.wrappedValue.getter();

  if (v26)
  {

    EntityProperty.wrappedValue.getter();

    v11 = sub_1000CEA08();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._object = 0x80000001001E5FB0;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);

  EntityProperty.wrappedValue.getter();

  if (v26)
  {

    EntityProperty.wrappedValue.getter();

    v16 = sub_1000CF050();
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x3D726577736E6120;
  v20._object = 0xE800000000000000;
  String.append(_:)(v20);

  EntityProperty.wrappedValue.getter();

  if (v26)
  {

    EntityProperty.wrappedValue.getter();

    v0 = sub_1000CFA58();
    v22 = v21;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  v23._countAndFlagsBits = v0;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return 0;
}

uint64_t sub_1000CDEA4(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100261000;
  sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  swift_allocObject();
  *(v1 + v7) = EntityProperty.init(identifier:)();
  v8 = qword_100261008;
  sub_10000341C(&qword_1002613C0, &qword_1001D7420);
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v9 = qword_100261010;
  sub_10000341C(&qword_1002613C8, &qword_1001D7428);
  swift_allocObject();
  *(v1 + v9) = EntityProperty.init(identifier:)();
  v10 = qword_100261018;
  sub_10000341C(&qword_1002613D0, &qword_1001D7430);
  swift_allocObject();
  *(v1 + v10) = EntityProperty.init(identifier:)();
  v11 = qword_100261020;
  sub_10000341C(&qword_1002613D8, &qword_1001D7438);
  swift_allocObject();
  *(v1 + v11) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v6, a1, v3);
  v12 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_1000CE0D4(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1000CE144()
{
  CustomAppEntityRepresentationBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CE2F4(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261330, type metadata accessor for SearchEntity, &unk_1001D7048);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CE364()
{
  v1 = sub_1000D076C(&qword_100261320, type metadata accessor for SearchEntity, &unk_1001D70D0);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CE3E8(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261330, type metadata accessor for SearchEntity, &unk_1001D7048);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CE458@<X0>(uint64_t *a1@<X8>)
{
  result = static CustomAppEntityRepresentationBase.from(_:context:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE4F0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_1000CE614(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CE748@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D1434(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CE778@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x7469746E45707061;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (v3 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  result = 0x647261436469;
  if (v3 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C61626F6C67;
  if (v3 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  if (*v1)
  {
    v5 = 0x726577736E61;
    v4 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 3u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1000CE890(uint64_t a1)
{
  v2 = sub_1000D1480();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_1000CE8CC(uint64_t a1)
{
  v2 = sub_1000D1480();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_1000CE908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D03F4();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_1000CE954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1480();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_1000CE9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D03F4();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_1000CEA08()
{
  _StringGuts.grow(_:)(59);
  v0._object = 0x80000001001E5FD0;
  v0._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v0);

  EntityProperty.wrappedValue.getter();

  if (v19)
  {
    v1 = v18;
  }

  else
  {
    v1 = 7104878;
  }

  if (v19)
  {
    v2 = v19;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 0x49656C646E756220;
  v4._object = 0xEA00000000003D64;
  String.append(_:)(v4);

  EntityProperty.wrappedValue.getter();

  if (v19)
  {
    v5 = v18;
  }

  else
  {
    v5 = 7104878;
  }

  if (v19)
  {
    v6 = v19;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x3D64496570797420;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);

  EntityProperty.wrappedValue.getter();

  if (v19)
  {
    v9 = v18;
  }

  else
  {
    v9 = 7104878;
  }

  if (v19)
  {
    v10 = v19;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 0x6F636F746F727020;
  v12._object = 0xEC0000003D64496CLL;
  String.append(_:)(v12);

  EntityProperty.wrappedValue.getter();

  if (v19)
  {
    v13 = v18;
  }

  else
  {
    v13 = 7104878;
  }

  if (v19)
  {
    v14 = v19;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_1000CEC34(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100261078;
  sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  swift_allocObject();
  *(v1 + v7) = EntityProperty.init(identifier:)();
  v8 = qword_100261080;
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v9 = qword_100261088;
  swift_allocObject();
  *(v1 + v9) = EntityProperty.init(identifier:)();
  v10 = qword_100261090;
  swift_allocObject();
  *(v1 + v10) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v6, a1, v3);
  v11 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_1000CEF10(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612F0, type metadata accessor for SearchAppEntity, &unk_1001D6E1C);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CEF80()
{
  v1 = sub_1000D076C(&qword_1002612E0, type metadata accessor for SearchAppEntity, &unk_1001D6EA4);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CEFE0(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612F0, type metadata accessor for SearchAppEntity, &unk_1001D6E1C);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CF050()
{
  v0 = sub_10000341C(&qword_100261380, &qword_1001D73F0);
  v1 = __chkstk_darwin(v0 - 8);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - v4;
  v6 = __chkstk_darwin(v3);
  v40 = &v39 - v7;
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(93);
  v10._countAndFlagsBits = 0xD000000000000026;
  v10._object = 0x80000001001E5FF0;
  String.append(_:)(v10);

  EntityProperty.wrappedValue.getter();

  if (v42)
  {
    v11 = v41;
  }

  else
  {
    v11 = 7104878;
  }

  v12 = 0xE300000000000000;
  if (v42)
  {
    v13 = v42;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 0x3D656C74697420;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);

  EntityProperty.wrappedValue.getter();

  if (v42)
  {
    v16 = v41;
  }

  else
  {
    v16 = 7104878;
  }

  if (v42)
  {
    v17 = v42;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._object = 0x80000001001E6020;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);

  EntityProperty.wrappedValue.getter();

  v20 = type metadata accessor for IntentFileRepresentation();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v9, 1, v20);
  sub_1000D13CC(v9);
  v24 = 7104878;
  if (v23 != 1)
  {

    v25 = v40;
    EntityProperty.wrappedValue.getter();

    result = v22(v25, 1, v20);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_1000D076C(&qword_100261388, &type metadata accessor for IntentFileRepresentation, &protocol conformance descriptor for IntentFileRepresentation);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v28;
    (*(v21 + 8))(v25, v20);
    v24 = v27;
  }

  v29 = v12;
  String.append(_:)(*&v24);

  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x80000001001E6040;
  String.append(_:)(v30);

  EntityProperty.wrappedValue.getter();

  v31 = v22(v5, 1, v20);
  sub_1000D13CC(v5);
  if (v31 == 1)
  {
    v32 = 0xE300000000000000;
    v33 = 7104878;
LABEL_20:
    v37 = v32;
    String.append(_:)(*&v33);

    v38._countAndFlagsBits = 62;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    return v43;
  }

  v34 = v39;
  EntityProperty.wrappedValue.getter();

  result = v22(v34, 1, v20);
  if (result != 1)
  {
    sub_1000D076C(&qword_100261388, &type metadata accessor for IntentFileRepresentation, &protocol conformance descriptor for IntentFileRepresentation);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v36;
    (*(v21 + 8))(v34, v20);
    v33 = v35;
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000CF51C(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1002610E8;
  sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  swift_allocObject();
  *(v1 + v7) = EntityProperty.init(identifier:)();
  v8 = qword_1002610F0;
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v9 = qword_1002610F8;
  sub_10000341C(&qword_1002613B8, &qword_1001D7418);
  swift_allocObject();
  *(v1 + v9) = EntityProperty.init(identifier:)();
  v10 = qword_100261100;
  swift_allocObject();
  *(v1 + v10) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v6, a1, v3);
  v11 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_1000CF71C(void *a1, void *a2, void *a3, void *a4)
{
}

uint64_t sub_1000CF7AC(void *a1, void *a2, void *a3, void *a4)
{
  CustomAppEntityRepresentationBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CF918(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612A8, type metadata accessor for SearchSpotlightEntity, &unk_1001D6BF0);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CF988()
{
  v1 = sub_1000D076C(&qword_100261298, type metadata accessor for SearchSpotlightEntity, &unk_1001D6C78);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CF9E8(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612A8, type metadata accessor for SearchSpotlightEntity, &unk_1001D6BF0);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CFA58()
{
  _StringGuts.grow(_:)(79);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x80000001001E6060;
  String.append(_:)(v0);

  EntityProperty.wrappedValue.getter();

  if (v22)
  {
    v1 = v21;
  }

  else
  {
    v1 = 7104878;
  }

  if (v22)
  {
    v2 = v22;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 0x3D676F6C61696420;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);

  EntityProperty.wrappedValue.getter();

  if (v22)
  {
    v5 = v21;
  }

  else
  {
    v5 = 7104878;
  }

  if (v22)
  {
    v6 = v22;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x73656372756F7320;
  v8._object = 0xE90000000000003DLL;
  String.append(_:)(v8);

  EntityProperty.wrappedValue.getter();

  sub_10000341C(&qword_100261390, &qword_1001D73F8);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._object = 0x80000001001E6080;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);

  EntityProperty.wrappedValue.getter();

  if (v21)
  {

    EntityProperty.wrappedValue.getter();

    v11 = Array.description.getter();
    v13 = v12;
  }

  else
  {
    v11 = 7104878;
    v13 = 0xE300000000000000;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3D656C74697420;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);

  EntityProperty.wrappedValue.getter();

  if (v22)
  {
    v16 = v21;
  }

  else
  {
    v16 = 7104878;
  }

  if (v22)
  {
    v17 = v22;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 0;
}

uint64_t sub_1000CFDA8(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100261158;
  sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  swift_allocObject();
  *(v1 + v7) = EntityProperty.init(identifier:)();
  v8 = qword_100261160;
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v9 = qword_100261168;
  sub_10000341C(&qword_1002613A8, &qword_1001D7408);
  swift_allocObject();
  *(v1 + v9) = EntityProperty.init(identifier:)();
  v10 = qword_100261170;
  sub_10000341C(&qword_1002613B0, &qword_1001D7410);
  swift_allocObject();
  *(v1 + v10) = EntityProperty.init(identifier:)();
  v11 = qword_100261178;
  swift_allocObject();
  *(v1 + v11) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v6, a1, v3);
  v12 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_1000CFFBC(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1000D002C()
{
  CustomAppEntityRepresentationBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SearchResultType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchResultType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000D022C()
{
  result = qword_1002611D0;
  if (!qword_1002611D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611D0);
  }

  return result;
}

unint64_t sub_1000D0284()
{
  result = qword_1002611D8;
  if (!qword_1002611D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611D8);
  }

  return result;
}

unint64_t sub_1000D02DC()
{
  result = qword_1002611E0;
  if (!qword_1002611E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611E0);
  }

  return result;
}

unint64_t sub_1000D0334()
{
  result = qword_1002611E8;
  if (!qword_1002611E8)
  {
    sub_100003E34(&qword_1002611F0, &qword_1001D67E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611E8);
  }

  return result;
}

unint64_t sub_1000D039C()
{
  result = qword_1002611F8;
  if (!qword_1002611F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611F8);
  }

  return result;
}

unint64_t sub_1000D03F4()
{
  result = qword_100261200;
  if (!qword_100261200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261200);
  }

  return result;
}

unint64_t sub_1000D044C()
{
  result = qword_100261208;
  if (!qword_100261208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261208);
  }

  return result;
}

unint64_t sub_1000D04A4()
{
  result = qword_100261210;
  if (!qword_100261210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261210);
  }

  return result;
}

unint64_t sub_1000D0508()
{
  result = qword_100261218;
  if (!qword_100261218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261218);
  }

  return result;
}

uint64_t sub_1000D059C(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261260, type metadata accessor for SearchAnswerEntity, &unk_1001D69C4);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000D060C()
{
  v1 = sub_1000D076C(&qword_100261250, type metadata accessor for SearchAnswerEntity, &unk_1001D6A4C);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000D066C(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261260, type metadata accessor for SearchAnswerEntity, &unk_1001D69C4);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000D076C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D13CC(uint64_t a1)
{
  v2 = sub_10000341C(&qword_100261380, &qword_1001D73F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D1434(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10024A9D8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D1480()
{
  result = qword_100261398;
  if (!qword_100261398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261398);
  }

  return result;
}

id sub_1000D1524(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AttributedString();
  __chkstk_darwin(v5 - 8);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v7 - 8);
  v9 = (v42 - v8);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v14._object = 0x80000001001E60A0;
  v14._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a1;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000022;
  v16._object = 0x80000001001E60C0;
  String.append(_:)(v16);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v17 = JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;

  (*(v11 + 8))(v13, v10);
  if (v20 >> 60 == 15)
  {
    v21 = 0x80000001001E60F0;
    sub_100099280();
    swift_allocError();
    *v22 = 0xD00000000000001FLL;
    v22[1] = 0x80000001001E60F0;
    swift_willThrow();
LABEL_5:

    return v21;
  }

  sub_10009A06C();
  v23 = v18;
  v21 = v17;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    sub_10009A0C0(v23, v20);
    goto LABEL_5;
  }

  v44 = v17;
  v45 = v23;
  v25 = v48;
  v26 = v49;
  v27 = v50;
  v51 = &type metadata for WritingTools;
  v52 = sub_10002AC88();
  LOBYTE(v48) = 15;
  v28 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v48);
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  v42[1] = v27;
  v43 = v25;
  swift_getKeyPath();
  v29 = v47;
  v48 = v47;
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000B11B4(v29 + v30, v9);
  v31 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v31 - 8) + 48))(v9, 1, v31) == 1)
  {
    sub_1000B1224(v9);
    v25 = v43;
LABEL_10:

    sub_100039044(v25, v26, v46);

    sub_1000D1B30();
    v32 = NSAttributedString.init(_:)();
LABEL_13:
    swift_getKeyPath();
    v39 = v47;
    v53 = v47;
    sub_1000637F0();
    v40 = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v39 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) == 1)
    {
      v41 = [v40 string];
      if (!v41)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = String._bridgeToObjectiveC()();
      }

      v21 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v41];

      v40 = v41;
    }

    else
    {
      v21 = v40;
    }

    sub_10009A0C0(v45, v20);

    return v21;
  }

  v33 = v9[1];
  sub_100099074(v9);
  v34 = [v33 attributedText];
  v35 = sub_10007A450();
  v36 = [objc_allocWithZone(TCAttributedStringFormatter) initWithDigestedAttributedString:v34 formatOptions:v35];

  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 digestedAttributedStringFromFormattedString:v37];

  result = [v38 mutableCopy];
  if (result)
  {
    v32 = result;

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D1B30()
{
  result = qword_10025F378;
  if (!qword_10025F378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025F378);
  }

  return result;
}

unint64_t sub_1000D1BA0()
{
  result = qword_1002613E8;
  if (!qword_1002613E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002613E8);
  }

  return result;
}

unint64_t sub_1000D1BF8()
{
  result = qword_1002613F0;
  if (!qword_1002613F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002613F0);
  }

  return result;
}

unint64_t sub_1000D1C50()
{
  result = qword_1002613F8;
  if (!qword_1002613F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002613F8);
  }

  return result;
}

unint64_t sub_1000D1CA8()
{
  result = qword_100261400;
  if (!qword_100261400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261400);
  }

  return result;
}

uint64_t sub_1000D1CFC()
{
  swift_getKeyPath();
  sub_1000D2224();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000D1D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D2224();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

void sub_1000D1DE4(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
    v3 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    sub_1000D2224();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v3 setValue:isa forKey:v5];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D2224();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000D1F64(uint64_t a1, char a2)
{
  *(a1 + 32) = a2;
  v2 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_1000D2224();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v4];
}

uint64_t sub_1000D203C()
{

  v1 = OBJC_IVAR____TtC21WritingToolsUIService25CompositionEducationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionEducationModel(uint64_t a1)
{
  result = qword_100261438;
  if (!qword_100261438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D2134(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1000D2224()
{
  result = qword_100261538;
  if (!qword_100261538)
  {
    type metadata accessor for CompositionEducationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261538);
  }

  return result;
}

uint64_t sub_1000D227C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
  return swift_errorRetain();
}

uint64_t sub_1000D2328(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1000D23F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  *a2 = v4;

  return v4;
}

void sub_1000D24B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B2ACC(v1);
}

uint64_t sub_1000D24E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000D25BC(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v3, &unk_10025B1C0, &unk_1001CFA90);
  swift_getKeyPath();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v3, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000D26F4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  State.init(wrappedValue:)();
  return v3;
}

uint64_t sub_1000D2734@<X0>(BOOL *a2@<X8>)
{
  type metadata accessor for ModelResponseView(0);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v3 = sub_100037954();

  *a2 = (v3 & 1) == 0;
  return result;
}

uint64_t ModelResponseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v19 = type metadata accessor for ContainerBackgroundPlacement();
  v18[0] = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_100261560, &qword_1001D7790);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  v12 = sub_10000341C(&qword_100261568, &qword_1001D7798);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - v14;
  sub_1000D2AF0(v2, v11);
  (*(v6 + 104))(v8, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  v16 = sub_1000D3048();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v6 + 8))(v8, v5);
  sub_10000F500(v11, &qword_100261560, &qword_1001D7790);
  v22 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v20 = v9;
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  View.containerBackground<A>(_:for:)();
  (*(v18[0] + 8))(v4, v19);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000D2AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_10000341C(&qword_100261888, &qword_1001D7C30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - v5;
  v7 = sub_10000341C(&qword_100261890, &qword_1001D7C38);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v35 = sub_10000341C(&qword_100261590, &qword_1001D77A8);
  __chkstk_darwin(v35);
  v11 = &v34 - v10;
  v12 = (a1 + *(type metadata accessor for ModelResponseView(0) + 28));
  v14 = *v12;
  v13 = v12[1];
  v37 = v14;
  v38 = v13;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v15 = v41;
  swift_getKeyPath();
  v37 = v15;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  if (v16 == 1)
  {
    sub_1000D3544(v11);
    sub_1000081F8(v11, v9, &qword_100261590, &qword_1001D77A8);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1000D3288();
    v17 = sub_100003E34(&qword_100261598, &qword_1001D77B8);
    v18 = sub_100003E34(&qword_1002615A0, &qword_1001D77C0);
    v19 = sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    v20 = sub_1000D33B4();
    v37 = v19;
    v38 = &type metadata for Bool;
    v39 = v20;
    v40 = &protocol witness table for Bool;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
    v23 = sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v37 = v22;
    v38 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v37 = v17;
    v38 = v18;
    v39 = OpaqueTypeConformance2;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v11, &qword_100261590, &qword_1001D77A8);
  }

  else
  {
    sub_1000D38BC(v6);
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1000D3288();
    v26 = sub_100003E34(&qword_100261598, &qword_1001D77B8);
    v27 = sub_100003E34(&qword_1002615A0, &qword_1001D77C0);
    v28 = sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    v29 = sub_1000D33B4();
    v37 = v28;
    v38 = &type metadata for Bool;
    v39 = v29;
    v40 = &protocol witness table for Bool;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
    v32 = sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v37 = v31;
    v38 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v37 = v26;
    v38 = v27;
    v39 = v30;
    v40 = v33;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_1000D3048()
{
  result = qword_100261570;
  if (!qword_100261570)
  {
    sub_100003E34(&qword_100261560, &qword_1001D7790);
    sub_1000D30CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261570);
  }

  return result;
}

unint64_t sub_1000D30CC()
{
  result = qword_100261578;
  if (!qword_100261578)
  {
    sub_100003E34(&qword_100261580, &qword_1001D77A0);
    sub_1000D3288();
    sub_100003E34(&qword_100261598, &qword_1001D77B8);
    sub_100003E34(&qword_1002615A0, &qword_1001D77C0);
    sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    sub_1000D33B4();
    swift_getOpaqueTypeConformance2();
    sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
    sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261578);
  }

  return result;
}

unint64_t sub_1000D3288()
{
  result = qword_100261588;
  if (!qword_100261588)
  {
    sub_100003E34(&qword_100261590, &qword_1001D77A8);
    sub_100003E34(&qword_10025C4B0, &qword_1001D77B0);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000DDA04(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261588);
  }

  return result;
}

unint64_t sub_1000D33B4()
{
  result = qword_1002615B0;
  if (!qword_1002615B0)
  {
    sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    sub_1000D3470();
    sub_1000DDA04(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002615B0);
  }

  return result;
}

unint64_t sub_1000D3470()
{
  result = qword_1002615B8;
  if (!qword_1002615B8)
  {
    sub_100003E34(&qword_1002615C0, &qword_1001D77D0);
    sub_100007120(&qword_1002615C8, &qword_1002615D0, &qword_1001D77D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002615B8);
  }

  return result;
}

uint64_t sub_1000D3544@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000341C(&qword_10025C4B0, &qword_1001D77B0);
  __chkstk_darwin(v3);
  v5 = (&v30 - v4);
  *v5 = static Alignment.center.getter();
  v5[1] = v6;
  v7 = sub_10000341C(&qword_10025C6D0, &unk_1001D7C70);
  sub_1000D44C0(v1, v5 + *(v7 + 44));
  sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0, &protocol conformance descriptor for ZStack<A>);
  View.navigationBarBackButtonHidden(_:)();
  sub_10000F500(v5, &qword_10025C4B0, &qword_1001D77B0);
  v8 = (v1 + *(type metadata accessor for ModelResponseView(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  *&v32 = v10;
  *(&v32 + 1) = v9;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v11 = a1 + *(sub_10000341C(&qword_100261590, &qword_1001D77A8) + 36);
  v12 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v32) = 0;
  static Binding.constant(_:)();
  v13 = v34;
  v14 = v35;
  v15 = v36;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v11 + 8) = 1;
  v16 = v11 + v12[8];
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v16 + 16) = v15;
  v17 = (v11 + v12[9]);
  *v17 = 0xD00000000000001DLL;
  v17[1] = 0x80000001001E6270;
  v18 = v11 + v12[10];
  type metadata accessor for CGSize(0);
  v30 = 0;
  v31 = 0;
  State.init(wrappedValue:)();
  v19 = v33;
  *v18 = v32;
  *(v18 + 16) = v19;
  v20 = v11 + v12[11];
  LOBYTE(v30) = 0;
  State.init(wrappedValue:)();
  v21 = *(&v32 + 1);
  *v20 = v32;
  *(v20 + 8) = v21;
  v22 = v11 + v12[12];
  v30 = 0;
  LOBYTE(v31) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v23 = BYTE8(v32);
  v24 = v33;
  *v22 = v32;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24;
  v25 = v11 + v12[13];
  LOBYTE(v30) = 0;
  State.init(wrappedValue:)();
  v26 = *(&v32 + 1);
  *v25 = v32;
  *(v25 + 8) = v26;
  v27 = v11 + v12[14];
  type metadata accessor for PresentationModel(0);
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  result = Environment.init<A>(_:)();
  *v27 = result;
  *(v27 + 8) = v29 & 1;
  return result;
}

uint64_t sub_1000D38BC@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for ModelResponseView(0);
  v3 = v2 - 8;
  v60 = *(v2 - 8);
  __chkstk_darwin(v2);
  v61 = v4;
  v73 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_1002615D0, &qword_1001D77D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_10000341C(&qword_1002615C0, &qword_1001D77D0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v12 = sub_10000341C(&qword_1002615A8, &qword_1001D77C8);
  v68 = v12;
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v59 = &v58 - v13;
  v70 = sub_10000341C(&qword_100261598, &qword_1001D77B8);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v58 - v15;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = sub_10000341C(&qword_1002618A0, &qword_1001D7D48);
  sub_1000D6058(v1, &v7[*(v16 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v67 = v11;
  sub_10002A894(v7, v11, &qword_1002615D0, &qword_1001D77D8);
  v17 = &v11[*(v9 + 44)];
  v18 = v85;
  *(v17 + 4) = v84;
  *(v17 + 5) = v18;
  *(v17 + 6) = v86;
  v19 = v81;
  *v17 = v80;
  *(v17 + 1) = v19;
  v20 = v83;
  *(v17 + 2) = v82;
  *(v17 + 3) = v20;
  v21 = (v1 + *(v3 + 36));
  v23 = *v21;
  v22 = v21[1];
  v66 = v23;
  v65 = v22;
  *&v75 = v23;
  *(&v75 + 1) = v22;
  v62 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v24 = &v14[*(v12 + 36)];
  v25 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v63 = v1;
  Binding.projectedValue.getter();
  v64 = type metadata accessor for ModelResponseView;
  v26 = v73;
  sub_1000DDF2C(v1, v73, type metadata accessor for ModelResponseView);
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v28 = *(v60 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = &protocol witness table for MainActor;
  sub_1000DDF94(v26, v29 + ((v28 + 32) & ~v28), type metadata accessor for ModelResponseView);
  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v32 = v75;
  LOBYTE(v3) = v76;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v24 + 4) = 1;
  v33 = &v24[v25[8]];
  *v33 = v32;
  v33[16] = v3;
  v34 = &v24[v25[9]];
  *v34 = 0xD000000000000011;
  *(v34 + 1) = 0x80000001001D7830;
  v35 = &v24[v25[10]];
  type metadata accessor for CGSize(0);
  v78 = 0;
  v79 = 0;
  State.init(wrappedValue:)();
  v36 = v76;
  *v35 = v75;
  *(v35 + 2) = v36;
  v37 = &v24[v25[11]];
  LOBYTE(v78) = 0;
  State.init(wrappedValue:)();
  v38 = *(&v75 + 1);
  *v37 = v75;
  *(v37 + 1) = v38;
  v39 = &v24[v25[12]];
  v78 = 0;
  LOBYTE(v79) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v40 = BYTE8(v75);
  v41 = v76;
  *v39 = v75;
  v39[8] = v40;
  *(v39 + 2) = v41;
  v42 = &v24[v25[13]];
  LOBYTE(v78) = 0;
  State.init(wrappedValue:)();
  v43 = *(&v75 + 1);
  *v42 = v75;
  *(v42 + 1) = v43;
  v44 = &v24[v25[14]];
  type metadata accessor for PresentationModel(0);
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v44 = Environment.init<A>(_:)();
  v44[8] = v45 & 1;
  v46 = v59;
  sub_10002A894(v67, v59, &qword_1002615C0, &qword_1001D77D0);
  *&v75 = v66;
  *(&v75 + 1) = v65;
  State.wrappedValue.getter();
  v47 = v78;
  swift_getKeyPath();
  *&v75 = v47;
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v42) = *(v47 + 112);

  LOBYTE(v75) = v42;
  v48 = v63;
  v49 = v73;
  sub_1000DDF2C(v63, v73, v64);
  v50 = swift_allocObject();
  sub_1000DDF94(v49, v50 + ((v28 + 16) & ~v28), type metadata accessor for ModelResponseView);
  v51 = sub_1000D33B4();
  v52 = v69;
  v53 = v68;
  View.onChange<A>(of:initial:_:)();

  sub_10000F500(v46, &qword_1002615A8, &qword_1001D77C8);
  v74 = v48;
  sub_10000341C(&qword_1002615A0, &qword_1001D77C0);
  *&v75 = v53;
  *(&v75 + 1) = &type metadata for Bool;
  v76 = v51;
  v77 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v54 = sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
  v55 = sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  *&v75 = v54;
  *(&v75 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v56 = v70;
  View.toolbar<A>(content:)();
  return (*(v71 + 8))(v52, v56);
}

uint64_t sub_1000D4208(char a1)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for ModelResponseView(0) + 28);
  v16[0] = v1;
  v8 = (v1 + v7);
  v10 = *v8;
  v9 = v8[1];
  v17 = *v8;
  v18 = v9;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  if (a1)
  {
    v17 = v10;
    v18 = v9;
    State.wrappedValue.getter();
    v11 = v16[1];
    swift_getKeyPath();
    v17 = v11;
    sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);

    sub_1000C2BCC((v12 & 1) == 0, 0, 0);
  }

  else
  {
    sub_1000C2BCC(0, 0, 0);

    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v13 = NavigationPath.count.getter();
    (*(v4 + 8))(v6, v3);
    if (v13 >= 1)
    {
      Binding.wrappedValue.getter();
      NavigationPath.removeLast(_:)(1);
      return Binding.wrappedValue.setter();
    }
  }

  v17 = v10;
  v18 = v9;
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D44C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_10000341C(&qword_10025C6D8, &unk_1001D7C80);
  __chkstk_darwin(v22);
  v5 = &v19 - v4;
  v6 = sub_10000341C(&qword_10025C6E0, &unk_1001D1770);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v21 = static Color.clear.getter();
  v20 = static Edge.Set.vertical.getter();
  v19 = static SafeAreaRegions.all.getter();
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v13 = sub_10000341C(&qword_10025C6E8, &unk_1001D7C90);
  sub_1000D47B8(&v5[*(v13 + 44)]);
  v23 = a1;
  sub_10000341C(&qword_10025C6F0, &unk_1001D1780);
  sub_100007120(&qword_10025C6F8, &qword_10025C6D8, &unk_1001D7C80, &protocol conformance descriptor for VStack<A>);
  sub_100007120(&qword_10025C700, &qword_10025C6F0, &unk_1001D1780, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  sub_10000F500(v5, &qword_10025C6D8, &unk_1001D7C80);
  v14 = *(v7 + 16);
  v14(v10, v12, v6);
  v15 = v19;
  *a2 = v21;
  *(a2 + 8) = v15;
  *(a2 + 16) = v20;
  v16 = sub_10000341C(&qword_10025C708, &unk_1001D7CA0);
  v14((a2 + *(v16 + 48)), v10, v6);
  v17 = *(v7 + 8);

  v17(v12, v6);
  v17(v10, v6);
}

uint64_t sub_1000D47B8@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v1 - 8);
  v82 = v1;
  v83 = v2;
  __chkstk_darwin(v1);
  v80 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v81 = sub_10000341C(&qword_10025C760, &unk_1001D1830) - 8;
  v7 = __chkstk_darwin(v81);
  v77 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v76 = v74 - v10;
  v11 = __chkstk_darwin(v9);
  v75 = v74 - v12;
  __chkstk_darwin(v11);
  v79 = v74 - v13;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2065736F706D6F43;
  v14._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v84 = String.init(localized:table:bundle:locale:comment:)();
  v85 = v17;
  v74[3] = sub_10002AC34();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v23 = Text.bold()();
  v25 = v24;
  v27 = v26;
  sub_10002A984(v18, v20, v22 & 1);

  LODWORD(v84) = static HierarchicalShapeStyle.primary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  LOBYTE(v18) = v31;
  v33 = v32;
  sub_10002A984(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v84 = v28;
  v85 = v30;
  v86 = v18 & 1;
  v87 = v33;
  v88 = KeyPath;
  v89 = 1;
  v35 = v80;
  static ParagraphTypesetting.balanced.getter();
  v74[2] = sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  v74[1] = sub_10004882C();
  v36 = v79;
  View.paragraphTypesetting(_:isEnabled:)();
  v37 = *(v83 + 8);
  v83 += 8;
  v37(v35, v82);
  sub_10002A984(v28, v30, v18 & 1);

  LOBYTE(v25) = static Edge.Set.bottom.getter();
  v38 = EdgeInsets.init(_all:)();
  v39 = v36 + *(v81 + 44);
  *v39 = v25;
  *(v39 + 8) = v40;
  *(v39 + 16) = v41;
  *(v39 + 24) = v42;
  *(v39 + 32) = v43;
  *(v39 + 40) = 0;
  v84 = sub_100149E4C(v38);
  v85 = v44;
  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  LODWORD(v84) = static HierarchicalShapeStyle.secondary.getter();
  v50 = Text.foregroundStyle<A>(_:)();
  v52 = v51;
  LOBYTE(v30) = v53;
  sub_10002A984(v45, v47, v49 & 1);

  static Font.callout.getter();
  v54 = Text.font(_:)();
  v56 = v55;
  LOBYTE(v47) = v57;
  v59 = v58;

  sub_10002A984(v50, v52, v30 & 1);

  v60 = swift_getKeyPath();
  v84 = v54;
  v85 = v56;
  v86 = v47 & 1;
  v87 = v59;
  v88 = v60;
  v89 = 1;
  v61 = v80;
  static ParagraphTypesetting.balanced.getter();
  v62 = v75;
  View.paragraphTypesetting(_:isEnabled:)();
  v37(v61, v82);
  sub_10002A984(v54, v56, v47 & 1);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v63 = v62 + *(v81 + 44);
  *v63 = v45;
  *(v63 + 8) = v64;
  *(v63 + 16) = v65;
  *(v63 + 24) = v66;
  *(v63 + 32) = v67;
  *(v63 + 40) = 0;
  v68 = v79;
  v69 = v76;
  sub_1000081F8(v79, v76, &qword_10025C760, &unk_1001D1830);
  v70 = v77;
  sub_1000081F8(v62, v77, &qword_10025C760, &unk_1001D1830);
  v71 = v78;
  sub_1000081F8(v69, v78, &qword_10025C760, &unk_1001D1830);
  v72 = sub_10000341C(&qword_10025C770, &qword_1001D1840);
  sub_1000081F8(v70, v71 + *(v72 + 48), &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v62, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v68, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v70, &qword_10025C760, &unk_1001D1830);
  return sub_10000F500(v69, &qword_10025C760, &unk_1001D1830);
}

uint64_t sub_1000D4E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_10000341C(&qword_10025C710, &unk_1001D1790);
  __chkstk_darwin(v23);
  v21 = &v19 - v3;
  v22 = sub_10000341C(&qword_10025C718, &unk_1001D7CB0);
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v20 = sub_10000341C(&qword_10025C720, &unk_1001D17A0);
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = &v19 - v9;
  static ToolbarItemPlacement.cancellationAction.getter();
  v26 = a1;
  sub_10000341C(&qword_10025C728, &unk_1001D7CC0);
  sub_100007120(&qword_10025C730, &qword_10025C728, &unk_1001D7CC0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v25 = a1;
  sub_10000341C(&qword_10025C738, &unk_1001D17B0);
  v11 = sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  v12 = sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v27 = v11;
  v28 = v12;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v23 + 48);
  v15 = v20;
  v14 = v21;
  (*(v8 + 16))(v21, v10, v20);
  v16 = &v14[v13];
  v17 = v22;
  (*(v4 + 16))(v16, v6, v22);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v17);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_1000D522C(uint64_t a1)
{
  v2 = type metadata accessor for ModelResponseView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000DDF2C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ModelResponseView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000DDF94(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ModelResponseView);
  v9 = a1;
  sub_10000341C(&qword_10025C740, &qword_1001DCDD0);
  sub_10004876C();
  return Button.init(action:label:)();
}

__n128 sub_1000D539C@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ModelResponseView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v6 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
    v26 = v8 & 1;
    v14[8] = 1;
    v18 = v7;
    v19 = v9;
    v20 = v8 & 1;
    *v21 = v17[0];
    *&v21[3] = *(v17 + 3);
    v22 = v10;
    v23 = v15;
    v24 = v16;
    v25 = 1;
  }

  else
  {
    v11 = static VerticalAlignment.center.getter();
    sub_1000405A4(v27);
    LOBYTE(v17[0]) = 1;
    v26 = v27[24];
    LOBYTE(v15) = 0;
    v18 = v11;
    v19 = 0;
    v20 = 1;
    v22 = *v27;
    v23 = *&v27[8];
    LOBYTE(v24) = v27[24];
    *(&v24 + 1) = v28;
    v25 = 0;
  }

  sub_10000341C(&qword_10025C758, &qword_1001D1800);
  sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800, &protocol conformance descriptor for HStack<A>);
  _ConditionalContent<>.init(storage:)();
  v12 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v12;
  *(a1 + 64) = v30;
  result = *&v27[16];
  *a1 = *v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000D5604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 543519573;
  v7._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v8);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10 = LocalizedStringKey.init(stringInterpolation:)();
  v42 = v11;
  v43 = v10;
  LODWORD(v44) = v12;
  v41 = v13;
  v14 = type metadata accessor for ModelResponseView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1000DDF2C(a1, &v41 - v17, type metadata accessor for ModelResponseView);
  v18 = *(v15 + 80);
  v19 = swift_allocObject();
  sub_1000DDF94(&v41 - v17, v19 + ((v18 + 16) & ~v18), type metadata accessor for ModelResponseView);
  v44 = v5;
  v20 = Button<>.init(_:action:)();
  __chkstk_darwin(v20);
  v21 = &v41 - v17;
  sub_1000DDF2C(a1, &v41 - v17, type metadata accessor for ModelResponseView);
  type metadata accessor for MainActor();
  v22 = static MainActor.shared.getter();
  v23 = (v18 + 32) & ~v18;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_1000DDF94(v21, v24 + v23, type metadata accessor for ModelResponseView);
  v25 = type metadata accessor for TaskPriority();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v41 - v28;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v42 = type metadata accessor for _TaskModifier2();
    v43 = &v41;
    v41 = *(v42 - 8);
    __chkstk_darwin(v42);
    v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v49 = 0xD00000000000003ALL;
    v50 = 0x80000001001E6290;
    v48 = 149;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    __chkstk_darwin(v33);
    (*(v26 + 16))(&v41 - v28, v29, v25);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v26 + 8))(v29, v25);
    v34 = v47;
    (*(v45 + 32))(v47, v44, v46);
    v35 = sub_10000341C(&qword_10025A980, &qword_1001CE160);
    return (*(v41 + 32))(v34 + *(v35 + 36), v31, v42);
  }

  else
  {
    v37 = sub_10000341C(&qword_10025A988, &qword_1001CE168);
    v38 = v47;
    v39 = (v47 + *(v37 + 36));
    v40 = type metadata accessor for _TaskModifier();
    (*(v26 + 32))(&v39[*(v40 + 20)], &v41 - v28, v25);
    *v39 = &unk_1001D7CE8;
    *(v39 + 1) = v24;
    return (*(v45 + 32))(v38, v44, v46);
  }
}

uint64_t sub_1000D5BE0(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModelResponseView(0);
  v7 = (a1 + *(v6 + 28));
  v8 = v7[1];
  v17[0] = *v7;
  v18 = v17[0];
  v19 = v8;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  sub_1000C2BCC(0, 0, 0);

  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v9 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v5, v2);
  if ((v9 & 1) == 0)
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    result = Binding.wrappedValue.setter();
  }

  v11 = *(a1 + *(v6 + 44));
  if (v11)
  {
    v18 = v17[0];
    v19 = v8;
    State.wrappedValue.getter();
    v12 = v17[1];
    swift_getKeyPath();
    v18 = v12;
    sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + 96);
    if (v13 == 255)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v15 = *(v12 + 72);
      v14 = *(v12 + 80);
      v16 = *(v12 + 88);
      sub_10000F3F4(v15, v14, v16, *(v12 + 96));

      if (v13)
      {
        sub_1000278C0(v15, v14, v16, v13);
        v14 = 0;
        v16 = 0;
      }

      v11(v14, v16);
    }
  }

  return result;
}

uint64_t sub_1000D5EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D5F74, v5, v4);
}

uint64_t sub_1000D5F74(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];

  v4 = (v3 + *(type metadata accessor for ModelResponseView(0) + 28));
  v6 = *v4;
  v5 = v4[1];
  v2[2] = v6;
  v2[3] = v5;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"resetPresentationSelectedDetent"])
    {
      [Strong resetPresentationSelectedDetent];
    }

    swift_unknownObjectRelease();
  }

  v8 = v2[1];

  return v8();
}

uint64_t sub_1000D6058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for ModelResponseView(0);
  v81 = *(v3 - 8);
  __chkstk_darwin(v3);
  *&v82 = v4;
  *&v83 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10000341C(&qword_1002618D0, &qword_1001D7DC8);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v6 = &v66 - v5;
  v76 = sub_10000341C(&qword_1002618D8, &qword_1001D7DD0);
  __chkstk_darwin(v76);
  v77 = &v66 - v7;
  v80 = sub_10000341C(&qword_1002618E0, &qword_1001D7DD8);
  __chkstk_darwin(v80);
  v9 = &v66 - v8;
  v71 = sub_10000341C(&qword_1002618E8, &qword_1001D7DE0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v66 - v10;
  v68 = sub_10000341C(&qword_1002618F0, &qword_1001D7DE8);
  __chkstk_darwin(v68);
  v67 = &v66 - v11;
  v86 = sub_10000341C(&qword_1002618F8, &qword_1001D7DF0);
  __chkstk_darwin(v86);
  v72 = &v66 - v12;
  v87 = sub_10000341C(&qword_100261900, &qword_1001D7DF8);
  v74 = *(v87 - 8);
  __chkstk_darwin(v87);
  v73 = &v66 - v13;
  v84 = sub_10000341C(&qword_100261908, &qword_1001D7E00);
  __chkstk_darwin(v84);
  v15 = &v66 - v14;
  v85 = type metadata accessor for InputWarningView(0);
  __chkstk_darwin(v85);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v3;
  v18 = (a1 + *(v3 + 28));
  v20 = *v18;
  v19 = v18[1];
  *&v94 = *v18;
  *(&v94 + 1) = v19;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v21 = sub_100037954();

  if (v21)
  {
    if (qword_10025A810 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for LocalizedStringResource();
    v24 = sub_10000F34C(v23, qword_1002771D0);
    (*(*(v23 - 8) + 16))(v17, v24, v23);
    sub_1000DDF2C(v17, v15, type metadata accessor for InputWarningView);
    swift_storeEnumTagMultiPayload();
    sub_1000DDA04(&qword_100261960, type metadata accessor for InputWarningView, &unk_1001D78F4);
    v25 = sub_1000DEAE8();
    *&v94 = v86;
    *(&v94 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_1000DEC58(v17, type metadata accessor for InputWarningView);
  }

  v66 = v15;
  __chkstk_darwin(v22);
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_100261910, &qword_1001D7E08);
  sub_1000DE86C();
  ScrollView.init(_:showsIndicators:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v77;
  (*(v78 + 32))(v77, v6, v79);
  v28 = (v27 + *(v76 + 36));
  v29 = v99;
  v28[4] = v98;
  v28[5] = v29;
  v28[6] = v100;
  v30 = v95;
  *v28 = v94;
  v28[1] = v30;
  v31 = v97;
  v28[2] = v96;
  v28[3] = v31;
  v79 = a1;
  v32 = v83;
  sub_1000DDF2C(a1, v83, type metadata accessor for ModelResponseView);
  v33 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v34 = swift_allocObject();
  sub_1000DDF94(v32, v34 + v33, type metadata accessor for ModelResponseView);
  sub_10002A894(v27, v9, &qword_1002618D8, &qword_1001D7DD0);
  v35 = v9;
  v36 = &v9[*(v80 + 36)];
  *v36 = 0;
  *(v36 + 1) = 0;
  *(v36 + 2) = sub_1000DE978;
  *(v36 + 3) = v34;
  v89 = v20;
  v90 = v19;
  State.wrappedValue.getter();
  v37 = v92;
  swift_getKeyPath();
  v89 = v37;
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v37 + 72);
  v38 = *(v37 + 80);
  v40 = *(v37 + 88);
  v41 = *(v37 + 96);
  sub_10002879C(v39, v38, v40, *(v37 + 96));

  if (v41 == 255)
  {
    __break(1u);
    return result;
  }

  v42 = v66;
  if (v41 || v39 != 5)
  {
    goto LABEL_11;
  }

  if (!v40)
  {
    sub_10000F3F4(v39, v38, 0, 0);
LABEL_11:
    v43 = v42;
    v45 = sub_100106A3C(v39, v38, v40, v41);
    v44 = v46;
    sub_1000278C0(v39, v38, v40, v41);
    v38 = v45;
    goto LABEL_12;
  }

  v43 = v66;
  v44 = v40;
LABEL_12:
  v89 = v38;
  v90 = v44;
  sub_1000DE9A4();
  sub_10002AC34();
  v47 = v69;
  View.navigationTitle<A>(_:)();

  sub_10000F500(v35, &qword_1002618E0, &qword_1001D7DD8);
  v48 = static Edge.Set.top.getter();
  if (qword_10025A798 != -1)
  {
    swift_once();
  }

  v49 = byte_100261558;
  v50 = 0uLL;
  v51 = 0uLL;
  if ((byte_100261558 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v51 + 1) = v52;
    *(&v50 + 1) = v53;
  }

  v82 = v51;
  v83 = v50;
  v54 = v67;
  (*(v70 + 32))(v67, v47, v71);
  v55 = v54 + *(v68 + 36);
  *v55 = v48;
  *(v55 + 24) = v82;
  *(v55 + 8) = v83;
  *(v55 + 40) = v49;
  v56 = v72;
  sub_10002A894(v54, v72, &qword_1002618F0, &qword_1001D7DE8);
  v57 = (v79 + *(v75 + 36));
  v59 = *v57;
  v58 = v57[1];
  v92 = v59;
  v93 = v58;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v60 = v91;
  v61 = sub_1000DEAE8();
  v62 = v73;
  v63 = v86;
  View.inlineFeedback(controller:completion:)();

  sub_10000F500(v56, &qword_1002618F8, &qword_1001D7DF0);
  v64 = v74;
  v65 = v87;
  (*(v74 + 16))(v43, v62, v87);
  swift_storeEnumTagMultiPayload();
  sub_1000DDA04(&qword_100261960, type metadata accessor for InputWarningView, &unk_1001D78F4);
  v89 = v63;
  v90 = v61;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v64 + 8))(v62, v65);
}

uint64_t sub_1000D6CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10000341C(&qword_100261968, &unk_1001D7E20);
  return sub_1000D6D18(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1000D6D18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v144 = a2;
  v3 = type metadata accessor for FeedbackView(0);
  v141 = *(v3 - 8);
  v142 = v3;
  v4 = __chkstk_darwin(v3);
  v128 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v129 = &v121 - v6;
  v7 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v8 = __chkstk_darwin(v7 - 8);
  v143 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v150 = &v121 - v10;
  v134 = sub_10000341C(&qword_100261970, &qword_1001D7E30);
  __chkstk_darwin(v134);
  v136 = (&v121 - v11);
  v123 = type metadata accessor for ScrollBounceBehavior();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  *&v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10000341C(&qword_100261978, &qword_1001D7E38);
  v121 = *(v133 - 8);
  __chkstk_darwin(v133);
  v125 = &v121 - v13;
  v135 = sub_10000341C(&qword_100261980, &qword_1001D7E40);
  v124 = *(v135 - 8);
  __chkstk_darwin(v135);
  *(&v126 + 1) = &v121 - v14;
  v15 = sub_10000341C(&qword_100261988, &qword_1001D7E48);
  v16 = __chkstk_darwin(v15 - 8);
  v140 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v149 = &v121 - v18;
  v132 = type metadata accessor for Divider();
  *(&v131 + 1) = *(v132 - 8);
  __chkstk_darwin(v132);
  *&v131 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000341C(&unk_100264220, &qword_1001D7E50);
  v21 = __chkstk_darwin(v20 - 8);
  v148 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v151 = &v121 - v23;
  v24 = type metadata accessor for ActionButtonView(0);
  __chkstk_darwin(v24);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000341C(&qword_100261990, &qword_1001D7E58);
  v138 = *(v27 - 8);
  v139 = v27;
  v28 = __chkstk_darwin(v27);
  v147 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v121 - v30;
  sub_1000D81D8(v26);
  v127 = type metadata accessor for ModelResponseView(0);
  v32 = *(v127 + 28);
  v130 = a1;
  v33 = (a1 + v32);
  v34 = v33[1];
  v152 = *v33;
  v35 = v152;
  v153 = v34;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  type metadata accessor for RewritingModel(0);
  sub_1000DDA04(&qword_100261998, type metadata accessor for ActionButtonView, &unk_1001D7944);
  v145 = sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  v146 = v31;
  v36 = v34;
  View.environment<A>(_:)();

  sub_1000DEC58(v26, type metadata accessor for ActionButtonView);
  v152 = v35;
  v153 = v34;
  State.wrappedValue.getter();
  v37 = v156;
  swift_getKeyPath();
  v152 = v37;
  v38 = sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v137 = *(v37 + 136);

  v39 = v131;
  Divider.init()();
  v40 = *(&v131 + 1);
  v41 = v151;
  v42 = v39;
  v43 = v132;
  (*(*(&v131 + 1) + 32))(v151, v42, v132);
  (*(v40 + 56))(v41, 0, 1, v43);
  v152 = v35;
  v153 = v34;
  State.wrappedValue.getter();
  v44 = v156;
  swift_getKeyPath();
  v152 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = &qword_100260000;
  if (*(v44 + 96))
  {

LABEL_7:
    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v57 = v156;
    swift_getKeyPath();
    v152 = v57;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    v59 = v58;

    type metadata accessor for CommonUIManager(0);
    sub_1000DDA04(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    v60 = Environment.init<A>(_:)();
    v61 = v136;
    *v136 = v60;
    *(v61 + 8) = v62 & 1;
    v61[2] = v58;
    *(v61 + 24) = 0;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_1002619A0, &qword_1001D7E88);
    v63 = sub_100007120(&qword_1002619A8, &qword_100261978, &qword_1001D7E38, &protocol conformance descriptor for ScrollView<A>);
    v152 = v133;
    v153 = v63;
    swift_getOpaqueTypeConformance2();
    sub_1000DECC0();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_8;
  }

  v46 = v125;
  v47 = v126;
  v48 = *(v44 + 72);

  if (v48 != 9)
  {
    goto LABEL_7;
  }

  v132 = v38;
  v49 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v49);
  *(&v121 - 2) = v130;
  sub_10000341C(&qword_1002619C8, &qword_1001D7F98);
  sub_1000DEDD8();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v50 = static Axis.Set.horizontal.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v50)
  {
    Axis.Set.init(rawValue:)();
  }

  v51 = sub_100007120(&qword_1002619A8, &qword_100261978, &qword_1001D7E38, &protocol conformance descriptor for ScrollView<A>);
  v52 = *(&v126 + 1);
  v53 = v133;
  View.scrollBounceBehavior(_:axes:)();
  (*(v122 + 8))(v47, v123);
  (*(v121 + 8))(v46, v53);
  v54 = v124;
  v55 = v52;
  v56 = v135;
  (*(v124 + 16))(v136, v55, v135);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_1002619A0, &qword_1001D7E88);
  v152 = v53;
  v153 = v51;
  swift_getOpaqueTypeConformance2();
  sub_1000DECC0();
  _ConditionalContent<>.init(storage:)();
  (*(v54 + 8))(*(&v126 + 1), v56);
  v38 = v132;
  v45 = &qword_100260000;
LABEL_8:
  v64 = type metadata accessor for FeedbackFeatureFlags();
  v154 = v64;
  v155 = sub_1000DDA04(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v65 = sub_10002DB6C(&v152);
  (*(*(v64 - 8) + 104))(v65, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v64);
  LOBYTE(v64) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v152);
  if (v64)
  {
    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v66 = v156;
    swift_getKeyPath();
    v152 = v66;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = *(v66 + 80);
    v68 = *(v66 + 88);
    v69 = *(v66 + 96);
    v135 = *(v66 + 72);
    v134 = v67;
    v133 = v68;
    LODWORD(v136) = v69;
    sub_10002879C(v135, v67, v68, v69);

    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v70 = v156;
    swift_getKeyPath();
    v152 = v70;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v71 = *(v70 + 40);
    *&v131 = *(v70 + 32);
    *(&v131 + 1) = v71;

    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v72 = v156;
    swift_getKeyPath();
    v152 = v72;
    v132 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v73 = *(v72 + 56);
    *&v126 = *(v72 + 48);
    *(&v126 + 1) = v73;

    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v74 = v156;
    swift_getKeyPath();
    v152 = v74;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v75 = *(v74 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
    v124 = *(v74 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
    v125 = v75;

    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v76 = v156;
    swift_getKeyPath();
    v152 = v76;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v77 = *(v76 + v45[45]);
    if (v77)
    {
      v78 = v77;
      v79 = [v78 string];
      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v80;
    }

    else
    {

      v123 = 0;
      v122 = 0xE000000000000000;
    }

    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v84 = v156;
    swift_getKeyPath();
    v152 = v84;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v85 = *(v84 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
    v121 = *(v84 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);

    v86 = (v130 + *(v127 + 36));
    v88 = *v86;
    v87 = v86[1];
    v152 = v88;
    v153 = v87;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v89 = v156;
    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v90 = v156;
    swift_getKeyPath();
    v152 = v90;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v91 = *(v90 + 112);

    v152 = v35;
    v153 = v36;
    State.wrappedValue.getter();
    v92 = v156;
    swift_getKeyPath();
    v152 = v92;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v94 = *(v92 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    v93 = *(v92 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

    v95 = v128;
    *(v128 + 25) = 0;
    v96 = v142;
    v97 = *(v142 + 92);
    *(v95 + v97) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    v83 = v96;
    swift_storeEnumTagMultiPayload();
    v98 = v134;
    *(v95 + 128) = v135;
    *(v95 + 136) = v98;
    *(v95 + 144) = v133;
    v99 = v131;
    v100 = v126;
    *(v95 + 152) = v136;
    *(v95 + 24) = v100;
    *(v95 + 8) = v99;
    v101 = v125;
    *(v95 + 40) = v124;
    *(v95 + 48) = v101;
    *(v95 + 56) = 0;
    *(v95 + 64) = 0;
    v102 = v122;
    *(v95 + 72) = v123;
    *(v95 + 80) = v102;
    *(v95 + 88) = v121;
    *(v95 + 96) = v85;
    *v95 = v89;
    *(v95 + 153) = v91;
    *(v95 + 154) = 1;
    *(v95 + 156) = 0;
    v156 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v103 = v153;
    *(v95 + 208) = v152;
    *(v95 + 160) = 0u;
    *(v95 + 176) = 0u;
    *(v95 + 192) = 0;
    *(v95 + 104) = _swiftEmptyArrayStorage;
    *(v95 + 112) = _swiftEmptyArrayStorage;
    *(v95 + 120) = _swiftEmptyArrayStorage;
    *(v95 + 216) = v103;
    *(v95 + 224) = v94;
    *(v95 + 232) = v93;
    v104 = v129;
    sub_1000DDF94(v95, v129, type metadata accessor for FeedbackView);
    v105 = v104;
    v82 = v150;
    sub_1000DDF94(v105, v150, type metadata accessor for FeedbackView);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v150;
    v83 = v142;
  }

  v106 = v137;
  (*(v141 + 56))(v82, v81, 1, v83);
  LODWORD(v145) = (v106 & 2) == 0;
  v108 = v138;
  v107 = v139;
  v109 = *(v138 + 16);
  v110 = v147;
  v109(v147, v146, v139);
  v111 = v82;
  v112 = v148;
  sub_1000081F8(v151, v148, &unk_100264220, &qword_1001D7E50);
  v113 = v149;
  v114 = v140;
  sub_1000081F8(v149, v140, &qword_100261988, &qword_1001D7E48);
  v115 = v111;
  v116 = v143;
  sub_1000081F8(v115, v143, &qword_10025DFB0, &qword_1001D33E0);
  v117 = v144;
  v109(v144, v110, v107);
  v118 = sub_10000341C(&qword_1002619C0, &qword_1001D7E90);
  v117[v118[12]] = v145;
  sub_1000081F8(v112, &v117[v118[16]], &unk_100264220, &qword_1001D7E50);
  sub_1000081F8(v114, &v117[v118[20]], &qword_100261988, &qword_1001D7E48);
  sub_1000081F8(v116, &v117[v118[24]], &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v150, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v113, &qword_100261988, &qword_1001D7E48);
  sub_10000F500(v151, &unk_100264220, &qword_1001D7E50);
  v119 = *(v108 + 8);
  v119(v146, v107);
  sub_10000F500(v116, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v114, &qword_100261988, &qword_1001D7E48);
  sub_10000F500(v148, &unk_100264220, &qword_1001D7E50);
  return (v119)(v147, v107);
}

uint64_t sub_1000D81D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  type metadata accessor for RewritingModel(0);
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v9 & 1;
  type metadata accessor for PresentationModel(0);
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *(a1 + 16) = Environment.init<A>(_:)();
  *(a1 + 24) = v10 & 1;
  v16 = 0;
  v17 = 1;
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  v11 = v19;
  v12 = v20;
  *(a1 + 32) = v18;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  LOBYTE(v16) = 0;
  State.init(wrappedValue:)();
  v13 = v19;
  *(a1 + 56) = v18;
  *(a1 + 64) = v13;
  type metadata accessor for ActionButtonView(0);
  static PresentationDetent.medium.getter();
  (*(v3 + 16))(v6, v8, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(v8, v2);
}

double sub_1000D842C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v11 + 1) = *(a1 + *(type metadata accessor for ModelResponseView(0) + 28) + 8);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v11 = v9;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v9 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v4 = v3;

  type metadata accessor for CommonUIManager(0);
  sub_1000DDA04(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  v5 = Environment.init<A>(_:)();
  v7 = v6;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v10[71] = v15;
  *&v10[55] = v14;
  *&v10[23] = v12;
  *&v10[7] = v11;
  *&v10[87] = v16;
  *&v10[103] = v17;
  *&v10[39] = v13;
  *(a2 + 89) = *&v10[64];
  *(a2 + 105) = *&v10[80];
  *(a2 + 121) = *&v10[96];
  *(a2 + 25) = *v10;
  *(a2 + 41) = *&v10[16];
  result = *&v10[32];
  *(a2 + 57) = *&v10[32];
  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = 1;
  *(a2 + 136) = *(&v17 + 1);
  *(a2 + 73) = *&v10[48];
  return result;
}

void *sub_1000D864C(uint64_t a1)
{
  type metadata accessor for ModelResponseView(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if ((v3 & 1) == 0)
  {
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    v2 = sub_100037954();

    if ((v2 & 1) == 0)
    {
      State.wrappedValue.getter();
      sub_1000C2BCC(0, 0, 0);
    }
  }

  return result;
}

uint64_t sub_1000D8750(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = (a3 + *(type metadata accessor for ModelResponseView(0) + 20));
  v11 = *v10;
  v12 = *(v10 + 8);

  v13 = v11;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v13 = v19;
  }

  swift_getKeyPath();
  v19 = v13;
  sub_1000DDA04(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + 81);

  if (v9 != v15)
  {

    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
    }

    sub_1001537FC(v9);
  }

  return result;
}

uint64_t sub_1000D89DC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000341C(&qword_1002615D8, &qword_1001D77E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_10000341C(&qword_1002618A8, &qword_1001D7D50);
  sub_1000DE6C0();
  ToolbarItem<>.init(placement:content:)();
  sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000D8B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v3 - 8);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v44 - v6;
  v7 = sub_10000341C(&unk_100262BE0, &unk_1001D7D60);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v45 = &v44 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10000341C(&qword_1002618C0, &qword_1001D7D58);
  __chkstk_darwin(v57);
  v54 = &v44 - v11;
  v59 = sub_10000341C(&qword_1002618C8, &qword_1001D7D70);
  __chkstk_darwin(v59);
  v13 = &v44 - v12;
  v14 = type metadata accessor for ModelResponseView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v53 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v20 = a1;
  v21 = (a1 + *(v14 + 28));
  v23 = *v21;
  v22 = v21[1];
  v60 = v23;
  v61 = v22;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v24 = sub_100037954();

  if (v24)
  {
    v56 = LocalizedStringKey.init(stringLiteral:)();
    sub_1000DDF2C(a1, &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModelResponseView);
    v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v26 = swift_allocObject();
    sub_1000DDF94(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ModelResponseView);
    Button<>.init(_:action:)();
    v27 = v53;
    (*(v53 + 16))(v13, v19, v17);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_1000DE778();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v19, v17);
  }

  v44 = v15;
  v53 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1 + *(v14 + 24);
  v30 = *v29;
  v31 = *(v29 + 8);

  if ((v31 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v33 = v50;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v30, 0);
    (*(v51 + 8))(v33, v52);
    v30 = v60;
  }

  if (!v30)
  {
    v43 = 1;
LABEL_11:
    v42 = v54;
    goto LABEL_12;
  }

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (v35 != 6 && !sub_10016FEDC())
  {

    v43 = 1;
    goto LABEL_11;
  }

  static ButtonRole.confirm.getter();
  v36 = v53;
  sub_1000DDF2C(v20, v53, type metadata accessor for ModelResponseView);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_1000DDF94(v36, v38 + v37, type metadata accessor for ModelResponseView);
  v39 = v47;
  Button<>.init(role:action:)();
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
  v40 = v45;
  v41 = v49;
  View.accessibilityIdentifier(_:)();

  (*(v48 + 8))(v39, v41);
  v42 = v54;
  sub_10002A894(v40, v54, &unk_100262BE0, &unk_1001D7D60);
  v43 = 0;
LABEL_12:
  (*(v55 + 56))(v42, v43, 1, v56);
  sub_1000081F8(v42, v13, &qword_1002618C0, &qword_1001D7D58);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  sub_1000DE778();
  _ConditionalContent<>.init(storage:)();
  return sub_10000F500(v42, &qword_1002618C0, &qword_1001D7D58);
}

uint64_t sub_1000D9430(uint64_t a1)
{
  type metadata accessor for ModelResponseView(0);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  if (*(v3 + 144) == 1)
  {
    *(v3 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D9590(uint64_t a1)
{
  type metadata accessor for ModelResponseView(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  sub_1000C2BCC(2, 0, 0);

  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D96C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000D9814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000D9970(uint64_t a1)
{
  sub_1000DA048(319, &qword_100261658, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000DA048(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000D9FE4(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000DA048(319, &unk_100261660, type metadata accessor for RewritingModel, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10006A8F0();
          if (v5 <= 0x3F)
          {
            sub_1000DA048(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_1000DA048(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
              if (v7 <= 0x3F)
              {
                sub_1000D9FE4(319, &qword_10025C560, &unk_10025C568, &unk_1001D7870, &type metadata accessor for Optional);
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

uint64_t sub_1000D9BCC()
{
  sub_100003E34(&qword_100261568, &qword_1001D7798);
  sub_100003E34(&qword_100261560, &qword_1001D7790);
  sub_1000D3048();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000D9D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000D9E60(uint64_t a1)
{
  sub_1000DA048(319, &unk_100261710, type metadata accessor for RewritingModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000D9FE4(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000D9FE4(319, &unk_10025B4D0, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10006A8F0();
        if (v4 <= 0x3F)
        {
          sub_1000DA048(319, &unk_10025DE48, &type metadata accessor for PresentationDetent, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000D9FE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000DA048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000DA0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DA140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000DA1D0(uint64_t a1)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000DA258@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v46 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v5);
  (*(v7 + 16))(&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v47 = String.init(localized:)();
  v48 = v8;
  sub_10002AC34();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  LODWORD(v47) = static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10002A984(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v47 = v14;
  v48 = v16;
  v18 &= 1u;
  v49 = v18;
  v50 = v20;
  v51 = KeyPath;
  v52 = 1;
  static ParagraphTypesetting.balanced.getter();
  sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  sub_10004882C();
  v22 = v45;
  View.paragraphTypesetting(_:isEnabled:)();
  (*(v2 + 8))(v4, v46);
  sub_10002A984(v14, v16, v18);

  v23 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v22 + *(sub_10000341C(&qword_10025C760, &unk_1001D1830) + 36);
  *v32 = v23;
  *(v32 + 8) = v25;
  *(v32 + 16) = v27;
  *(v32 + 24) = v29;
  *(v32 + 32) = v31;
  *(v32 + 40) = 0;
  v33 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = sub_10000341C(&qword_100261880, &qword_1001D7C28);
  v43 = v22 + *(result + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

double sub_1000DA5A4@<D0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = type metadata accessor for ParagraphTypesetting();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  LODWORD(v24) = static HierarchicalShapeStyle.secondary.getter();
  v9 = Text.foregroundStyle<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10002A984(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v24 = v9;
  v25 = v11;
  v13 &= 1u;
  v26 = v13;
  v27 = v15;
  v28 = KeyPath;
  v29 = 1;
  static ParagraphTypesetting.balanced.getter();
  sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  sub_10004882C();
  v17 = v22;
  View.paragraphTypesetting(_:isEnabled:)();
  (*(v1 + 8))(v3, v23);
  sub_10002A984(v9, v11, v13);

  v18 = static Edge.Set.bottom.getter();
  v19 = v17 + *(sub_10000341C(&qword_10025C760, &unk_1001D1830) + 36);
  *v19 = v18;
  result = 0.0;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 1;
  return result;
}

void *sub_1000DA7F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v14;
  }

  if (!v5 || (swift_getKeyPath(), v14 = v5, sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = *(v5 + 32), v9 = *(v5 + 40), , v10 = &_swiftEmptySetSingleton, (v9 & 1) == 0) && v8 == 1)
  {
    sub_10000341C(&qword_10025E0A0, &qword_1001D3670);
    type metadata accessor for PresentationDetent();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001CF9E0;
    static PresentationDetent.medium.getter();
    static PresentationDetent.large.getter();
    v10 = sub_10000771C(v11);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  return v10;
}

uint64_t sub_1000DAAAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v90 = a2;
  v2 = type metadata accessor for ActionButtonView(0);
  v87 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v88 = v3;
  v89 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for EnvironmentValues();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for SmallIconTitleLabelStyle(0);
  __chkstk_darwin(v75);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100261848, &unk_1001D7AB8);
  __chkstk_darwin(v7);
  v9 = &v71 - v8;
  v10 = sub_10000341C(&qword_100261830, &qword_1001D7AA8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v71 - v12;
  *&v81 = sub_10000341C(&qword_100261820, &qword_1001D7AA0);
  __chkstk_darwin(v81);
  *&v83 = &v71 - v14;
  v82 = sub_10000341C(&qword_100261810, &qword_1001D7A98);
  __chkstk_darwin(v82);
  v84 = &v71 - v15;
  v85 = sub_10000341C(&qword_1002617F8, &unk_1001D7A88);
  __chkstk_darwin(v85);
  v86 = &v71 - v16;
  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = *(v7 + 48);
  *&v9[v20] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  v21 = v76;
  swift_storeEnumTagMultiPayload();
  *v9 = 0;
  *(v9 + 1) = v17;
  *(v9 + 2) = v19;
  __asm { FMOV            V0.2D, #10.0 }

  *(v9 + 24) = _Q0;
  v9[40] = 0;
  sub_1000DB5A4(v21, &v9[*(v7 + 44)]);
  v27 = *(v21 + 40);
  v28 = *(v21 + 48);
  v77 = *(v21 + 32);
  v94 = v77;
  v80 = v27;
  LOBYTE(v95) = v27;
  v79 = v28;
  v96 = v28;
  v78 = sub_10000341C(&qword_10025B840, &unk_1001D7B00);
  State.projectedValue.getter();
  v29 = v92;
  v30 = v93;
  *v6 = v91;
  *(v6 + 2) = v29;
  v6[24] = v30;
  v31 = *(v75 + 20);
  *&v6[v31] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_100261850, &qword_100261848, &unk_1001D7AB8, &unk_1001DCEDC);
  sub_1000DDA04(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle, &unk_1001DB568);
  View.labelStyle<A>(_:)();
  sub_1000DEC58(v6, type metadata accessor for SmallIconTitleLabelStyle);
  v32 = v9;
  v33 = v13;
  sub_10000F500(v32, &qword_100261848, &unk_1001D7AB8);
  v94 = 0;
  v95 = 0;
  LOBYTE(v96) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v35 = *(&v91 + 1);
  v34 = v91;
  v36 = v93;
  v98 = v92;
  v37 = &v13[*(sub_10000341C(&qword_100261840, &qword_1001D7AB0) + 36)];
  *v37 = 0x10000;
  *(v37 + 1) = v34;
  *(v37 + 2) = v35;
  v37[24] = v98;
  *(v37 + 25) = *v97;
  *(v37 + 7) = *&v97[3];
  *(v37 + 4) = v36;
  *&v13[*(v11 + 44)] = 256;
  v38 = *v21;
  v39 = *(v21 + 8);

  v40 = v38;
  if ((v39 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v73 + 8))(v42, v74);
    v40 = v91;
  }

  swift_getKeyPath();
  *&v91 = v40;
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v40 + 112);

  if (v43)
  {
    goto LABEL_8;
  }

  if ((v39 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v73 + 8))(v45, v74);
    v38 = v91;
  }

  swift_getKeyPath();
  *&v91 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(v38 + 120);
  swift_errorRetain();

  if (v46)
  {

LABEL_8:
    v47 = 1;
    goto LABEL_9;
  }

  v47 = 0;
LABEL_9:
  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  v50 = v83;
  sub_10002A894(v33, v83, &qword_100261830, &qword_1001D7AA8);
  v51 = (v50 + *(v81 + 36));
  *v51 = KeyPath;
  v51[1] = sub_10002AAC0;
  v51[2] = v49;
  v52 = static Edge.Set.bottom.getter();
  if (qword_10025A790 != -1)
  {
    swift_once();
  }

  v53 = byte_100261548;
  v54 = 0uLL;
  v55 = 0uLL;
  if ((byte_100261548 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v55 + 1) = v56;
    *(&v54 + 1) = v57;
  }

  v75 = v55;
  v81 = v54;
  v58 = v50;
  v59 = v84;
  sub_10002A894(v58, v84, &qword_100261820, &qword_1001D7AA0);
  v60 = v59 + *(v82 + 36);
  *v60 = v52;
  *(v60 + 24) = v75;
  *(v60 + 8) = v81;
  *(v60 + 40) = v53;
  v94 = v77;
  LOBYTE(v95) = v80;
  v96 = v79;
  State.projectedValue.getter();
  v83 = v91;
  v61 = v92;
  v62 = v93;
  v63 = v86;
  sub_10002A894(v59, v86, &qword_100261810, &qword_1001D7A98);
  v64 = v63 + *(v85 + 36);
  *v64 = v83;
  *(v64 + 16) = v61;
  *(v64 + 24) = v62;
  v65 = *(v21 + 64);
  LOBYTE(v94) = *(v21 + 56);
  v95 = v65;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v66 = v89;
  sub_1000DDF2C(v21, v89, type metadata accessor for ActionButtonView);
  v67 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v68 = swift_allocObject();
  sub_1000DDF94(v66, v68 + v67, type metadata accessor for ActionButtonView);
  sub_10000341C(&unk_10025E090, &qword_1001D3660);
  sub_1000DD65C();
  v69 = sub_10006BC84();
  *&v91 = &type metadata for SharingActivityView;
  *(&v91 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10000F500(v63, &qword_1002617F8, &unk_1001D7A88);
}

uint64_t sub_1000DB5A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v65 = type metadata accessor for TapGesture();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000341C(&qword_100261858, &qword_1001D7BE0);
  v66 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v54 - v4;
  v71 = sub_10000341C(&qword_100261860, &qword_1001D7BE8);
  v69 = *(v71 - 8);
  v5 = __chkstk_darwin(v71);
  v68 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v54 - v7;
  v56 = type metadata accessor for EnvironmentValues();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025E0A8, &qword_1001D36A0);
  v10 = __chkstk_darwin(v9 - 8);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v54 - v12;
  v13 = type metadata accessor for ActionButtonView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = sub_10000341C(&qword_10025E0B0, &qword_1001D36A8);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v74 = sub_10000341C(&qword_10025E0B8, &qword_1001D36B0);
  v58 = *(v74 - 8);
  v19 = __chkstk_darwin(v74);
  v77 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  sub_1000DDF2C(a1, &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionButtonView);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v73 = *(v14 + 80);
  v24 = swift_allocObject();
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DDF94(v60, v24 + v23, type metadata accessor for ActionButtonView);
  sub_10000341C(&qword_10025E0C0, &qword_1001D36B8);
  v25 = sub_10006BFC8();
  Button.init(action:label:)();
  v18[*(v16 + 36)] = 0;
  v26 = sub_10006C0D4();
  v75 = v22;
  v72 = v26;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v18, &qword_10025E0B0, &qword_1001D36A8);
  LOBYTE(v22) = *(a1 + 8);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v28 = v54;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v55 + 8))(v28, v56);
  }

  v29 = sub_1000B18A4();

  v57 = v25;
  if (v29)
  {
    v30 = v60;
    sub_1000DDF2C(a1, v60, type metadata accessor for ActionButtonView);
    v31 = swift_allocObject();
    sub_1000DDF94(v30, v31 + v23, type metadata accessor for ActionButtonView);
    Button.init(action:label:)();
    v18[*(v16 + 36)] = 0;
    v32 = v77;
    View.accessibilityIdentifier(_:)();
    sub_10000F500(v18, &qword_10025E0B0, &qword_1001D36A8);
    sub_10002A894(v32, v76, &qword_10025E0B8, &qword_1001D36B0);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v30 = v60;
  }

  (*(v58 + 56))(v76, v33, 1, v74);
  sub_1000DDF2C(a1, v30, type metadata accessor for ActionButtonView);
  v34 = swift_allocObject();
  sub_1000DDF94(v30, v34 + v23, type metadata accessor for ActionButtonView);
  Button.init(action:label:)();
  v18[*(v16 + 36)] = 0;
  v35 = v77;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v18, &qword_10025E0B0, &qword_1001D36A8);
  v36 = v59;
  TapGesture.init(count:)();
  sub_1000DDF2C(a1, v30, type metadata accessor for ActionButtonView);
  v37 = v35;
  v38 = swift_allocObject();
  sub_1000DDF94(v30, v38 + v23, type metadata accessor for ActionButtonView);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1000DDD90;
  *(v39 + 24) = v38;
  v41 = v64;
  v40 = v65;
  Gesture.onEnded(_:)();

  (*(v63 + 8))(v36, v40);
  static GestureMask.all.getter();
  sub_1000DDE1C();
  sub_100007120(&qword_100261870, &qword_100261858, &qword_1001D7BE0, &protocol conformance descriptor for _EndedGesture<A>);
  v42 = v67;
  v43 = v61;
  View.simultaneousGesture<A>(_:including:)();
  (*(v66 + 8))(v41, v43);
  sub_10000F500(v35, &qword_10025E0B8, &qword_1001D36B0);
  sub_1000081F8(v75, v35, &qword_10025E0B8, &qword_1001D36B0);
  v44 = v76;
  v45 = v62;
  sub_1000081F8(v76, v62, &qword_10025E0A8, &qword_1001D36A0);
  v46 = v68;
  v47 = v69;
  v48 = *(v69 + 16);
  v49 = v71;
  v48(v68, v42, v71);
  v50 = v70;
  sub_1000081F8(v37, v70, &qword_10025E0B8, &qword_1001D36B0);
  v51 = sub_10000341C(&qword_100261878, &qword_1001D7BF0);
  sub_1000081F8(v45, v50 + *(v51 + 48), &qword_10025E0A8, &qword_1001D36A0);
  v48((v50 + *(v51 + 64)), v46, v49);
  v52 = *(v47 + 8);
  v52(v42, v49);
  sub_10000F500(v44, &qword_10025E0A8, &qword_1001D36A0);
  sub_10000F500(v75, &qword_10025E0B8, &qword_1001D36B0);
  v52(v46, v49);
  sub_10000F500(v45, &qword_10025E0A8, &qword_1001D36A0);
  return sub_10000F500(v77, &qword_10025E0B8, &qword_1001D36B0);
}

uint64_t sub_1000DC130(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v8 = v23[0];
  }

  swift_getKeyPath();
  v23[0] = v8;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v8 + v10, v23, &unk_10025B1C0, &unk_1001CFA90);

  if (v23[3])
  {
    sub_100028458(v23, v22);
    sub_10000F500(v23, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v22, v22[3]);
    sub_10000E064(IAPayloadValueWritingToolsInteractionTypeCopy);
    sub_10000F4B4(v22);
  }

  else
  {
    sub_10000F500(v23, &unk_10025B1C0, &unk_1001CFA90);
  }

  v11 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v11 = v23[0];
  }

  swift_getKeyPath();
  v23[0] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v14 = v13;

  if (v13)
  {

    if ((v7 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v17 = [objc_opt_self() presentableAttributedString:v14 withAttributes:0];
      [Strong copyText:v17];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v19 = swift_unknownObjectWeakLoadStrong();

  if (v19)
  {
    [v19 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000DC648(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v8 = v22[0];
  }

  swift_getKeyPath();
  v22[0] = v8;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v8 + v10, v22, &unk_10025B1C0, &unk_1001CFA90);

  if (v22[3])
  {
    sub_100028458(v22, v21);
    sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v21, v21[3]);
    if (qword_10025A5F8 != -1)
    {
      swift_once();
    }

    sub_10000E064(qword_100276E08);
    sub_10000F4B4(v21);
  }

  else
  {
    sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
  }

  v11 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v11 = v22[0];
  }

  swift_getKeyPath();
  v22[0] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v14 = v13;

  if (v13)
  {

    if ((v7 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong replaceSelectionWithText:v14];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v18 = swift_unknownObjectWeakLoadStrong();

  if (v18)
  {
    [v18 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000DCBBC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000DCC30@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(19);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000DCCC0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v12[0];
  }

  swift_getKeyPath();
  v12[0] = v6;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v6 + v8, v12, &unk_10025B1C0, &unk_1001CFA90);

  if (!v12[3])
  {
    return sub_10000F500(v12, &unk_10025B1C0, &unk_1001CFA90);
  }

  sub_100028458(v12, v11);
  sub_10000F500(v12, &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874(v11, v11[3]);
  sub_10000E064(IAPayloadValueWritingToolsInteractionTypeShare);
  return sub_10000F4B4(v11);
}

void sub_1000DCF20(uint64_t *a1)
{
  v2 = sub_10000341C(&qword_10025E088, &qword_1001D3658);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for AttributedString();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v17[0];
  }

  swift_getKeyPath();
  v17[0] = v10;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v14 = v13;

  if (!v13)
  {
    sub_1000DDB24();
    AttributedString.init(stringLiteral:)();
    v14 = NSAttributedString.init(_:)();
  }

  sub_10000341C(&qword_100264130, &qword_1001D3668);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001CF9D0;
  *(v15 + 32) = UIActivityTypeCopyToPasteboard;
  v17[0] = v14;
  v17[1] = v15;
  v16 = UIActivityTypeCopyToPasteboard;
  sub_1000DA7F8();
  type metadata accessor for ActionButtonView(0);
  sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
  State.projectedValue.getter();
  sub_10006BC84();
  View.presentationDetents(_:selection:)();

  sub_10000F500(v4, &qword_10025E088, &qword_1001D3658);
}

void sub_1000DD288()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4024000000000000;
  if (v1 == 6)
  {
    v2 = 0x401C000000000000;
  }

  qword_100261540 = v2;
  byte_100261548 = 0;
}

uint64_t sub_1000DD2FC()
{
  sub_10000341C(&qword_1002617F0, &qword_1001D7A80);
  sub_100003E34(&qword_1002617F8, &unk_1001D7A88);
  sub_100003E34(&unk_10025E090, &qword_1001D3660);
  sub_1000DD65C();
  sub_10006BC84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return Section<>.init(content:)();
}

__n128 sub_1000DD440@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v4 = sub_10000341C(&qword_1002617E0, &qword_1001D7A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10000341C(&qword_1002617E8, &qword_1001D7A40) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

void sub_1000DD538()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0xC024000000000000;
  if (v1 == 6)
  {
    v2 = 0xC036000000000000;
  }

  qword_100261550 = v2;
  byte_100261558 = 0;
}

uint64_t sub_1000DD5AC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DD5D8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000DD65C()
{
  result = qword_100261800;
  if (!qword_100261800)
  {
    sub_100003E34(&qword_1002617F8, &unk_1001D7A88);
    sub_1000DD6E8();
    sub_100029424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261800);
  }

  return result;
}

unint64_t sub_1000DD6E8()
{
  result = qword_100261808;
  if (!qword_100261808)
  {
    sub_100003E34(&qword_100261810, &qword_1001D7A98);
    sub_1000DD774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261808);
  }

  return result;
}

unint64_t sub_1000DD774()
{
  result = qword_100261818;
  if (!qword_100261818)
  {
    sub_100003E34(&qword_100261820, &qword_1001D7AA0);
    sub_1000DD82C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261818);
  }

  return result;
}

unint64_t sub_1000DD82C()
{
  result = qword_100261828;
  if (!qword_100261828)
  {
    sub_100003E34(&qword_100261830, &qword_1001D7AA8);
    sub_1000DD8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261828);
  }

  return result;
}

unint64_t sub_1000DD8B8()
{
  result = qword_100261838;
  if (!qword_100261838)
  {
    sub_100003E34(&qword_100261840, &qword_1001D7AB0);
    sub_100003E34(&qword_100261848, &unk_1001D7AB8);
    type metadata accessor for SmallIconTitleLabelStyle(255);
    sub_100007120(&qword_100261850, &qword_100261848, &unk_1001D7AB8, &unk_1001DCEDC);
    sub_1000DDA04(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle, &unk_1001DB568);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261838);
  }

  return result;
}

uint64_t sub_1000DDA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000DDA80()
{
  v1 = *(type metadata accessor for ActionButtonView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1000DCF20(v2);
}

void sub_1000DDAF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B2ACC(v1);
}

unint64_t sub_1000DDB24()
{
  result = qword_10025F2D0;
  if (!qword_10025F2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025F2D0);
  }

  return result;
}

uint64_t sub_1000DDB94()
{
  v1 = (type metadata accessor for ActionButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  j__swift_release(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for PresentationDetent();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DDD14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1000DDDBC(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

unint64_t sub_1000DDE1C()
{
  result = qword_100261868;
  if (!qword_100261868)
  {
    sub_100003E34(&qword_10025E0B8, &qword_1001D36B0);
    sub_10006C0D4();
    sub_1000DDA04(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261868);
  }

  return result;
}

uint64_t sub_1000DDF2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DDF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DE028()
{
  v2 = *(type metadata accessor for ModelResponseView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100028688;

  return sub_1000D5EDC(v4, v5, v0 + v3);
}

uint64_t sub_1000DE10C()
{
  v1 = type metadata accessor for ModelResponseView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  j__swift_release(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v7 = v5 + v1[10];

  v8 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  if (*(v5 + v1[11]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DE37C()
{
  v1 = type metadata accessor for ModelResponseView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  j__swift_release(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v7 = v5 + v1[10];

  v8 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  if (*(v5 + v1[11]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DE580@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for ModelResponseView(0);

  return sub_1000D2734(a1);
}

uint64_t sub_1000DE5F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DE630(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for ModelResponseView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000D8750(a1, a2, v6);
}

unint64_t sub_1000DE6C0()
{
  result = qword_1002618B0;
  if (!qword_1002618B0)
  {
    sub_100003E34(&qword_1002618A8, &qword_1001D7D50);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_1000DE778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002618B0);
  }

  return result;
}

unint64_t sub_1000DE778()
{
  result = qword_1002618B8;
  if (!qword_1002618B8)
  {
    sub_100003E34(&qword_1002618C0, &qword_1001D7D58);
    sub_10006B6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002618B8);
  }

  return result;
}

unint64_t sub_1000DE86C()
{
  result = qword_100261918;
  if (!qword_100261918)
  {
    sub_100003E34(&qword_100261910, &qword_1001D7E08);
    sub_100007120(&qword_100261920, &qword_100261928, &unk_1001D7E10, &protocol conformance descriptor for VStack<A>);
    sub_1000DE924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261918);
  }

  return result;
}

unint64_t sub_1000DE924()
{
  result = qword_100261930;
  if (!qword_100261930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261930);
  }

  return result;
}

unint64_t sub_1000DE9A4()
{
  result = qword_100261938;
  if (!qword_100261938)
  {
    sub_100003E34(&qword_1002618E0, &qword_1001D7DD8);
    sub_1000DEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261938);
  }

  return result;
}

unint64_t sub_1000DEA30()
{
  result = qword_100261940;
  if (!qword_100261940)
  {
    sub_100003E34(&qword_1002618D8, &qword_1001D7DD0);
    sub_100007120(&qword_100261948, &qword_1002618D0, &qword_1001D7DC8, &protocol conformance descriptor for ScrollView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261940);
  }

  return result;
}

unint64_t sub_1000DEAE8()
{
  result = qword_100261950;
  if (!qword_100261950)
  {
    sub_100003E34(&qword_1002618F8, &qword_1001D7DF0);
    sub_1000DEB74();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261950);
  }

  return result;
}

unint64_t sub_1000DEB74()
{
  result = qword_100261958;
  if (!qword_100261958)
  {
    sub_100003E34(&qword_1002618F0, &qword_1001D7DE8);
    sub_100003E34(&qword_1002618E0, &qword_1001D7DD8);
    sub_1000DE9A4();
    sub_10002AC34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261958);
  }

  return result;
}

uint64_t sub_1000DEC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000DECC0()
{
  result = qword_1002619B0;
  if (!qword_1002619B0)
  {
    sub_100003E34(&qword_1002619A0, &qword_1001D7E88);
    sub_10009BED4();
    sub_1000DED4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619B0);
  }

  return result;
}

unint64_t sub_1000DED4C()
{
  result = qword_1002619B8;
  if (!qword_1002619B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619B8);
  }

  return result;
}

unint64_t sub_1000DEDD8()
{
  result = qword_1002619D0;
  if (!qword_1002619D0)
  {
    sub_100003E34(&qword_1002619C8, &qword_1001D7F98);
    sub_1000DECC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619D0);
  }

  return result;
}

unint64_t sub_1000DEE68()
{
  result = qword_1002619D8;
  if (!qword_1002619D8)
  {
    sub_100003E34(&qword_1002617E8, &qword_1001D7A40);
    sub_100007120(&qword_1002619E0, &qword_1002617E0, &qword_1001D7A38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619D8);
  }

  return result;
}

unint64_t sub_1000DEF24()
{
  result = qword_1002619E8;
  if (!qword_1002619E8)
  {
    sub_100003E34(&qword_10025C760, &unk_1001D1830);
    sub_100003E34(&qword_10025C768, &unk_1001D9F80);
    sub_10004882C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619E8);
  }

  return result;
}

unint64_t sub_1000DEFF0()
{
  result = qword_1002619F0;
  if (!qword_1002619F0)
  {
    sub_100003E34(&qword_1002619F8, &unk_1001D7FA0);
    sub_100003E34(&qword_1002617F8, &unk_1001D7A88);
    sub_100003E34(&unk_10025E090, &qword_1001D3660);
    sub_1000DD65C();
    sub_10006BC84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619F0);
  }

  return result;
}

unint64_t sub_1000DF118()
{
  result = qword_100261A00;
  if (!qword_100261A00)
  {
    sub_100003E34(&qword_100261880, &qword_1001D7C28);
    sub_1000DEF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261A00);
  }

  return result;
}

uint64_t sub_1000DF1CC()
{
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000DF23C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000DF2DC(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E0CBC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000DF3BC()
{
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1000DF43C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1000DF4B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000DF4F8(v1, v2);
}

uint64_t sub_1000DF4F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E0CBC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000DF628()
{
  v1[5] = v0;
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v1[6] = swift_task_alloc();
  sub_10000341C(&qword_100261B78, &qword_1001D8040);
  v1[7] = swift_task_alloc();
  sub_10000341C(&qword_100261B80, &qword_1001D8048);
  v1[8] = swift_task_alloc();
  v2 = type metadata accessor for RateLimitBudgets();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_10000341C(&qword_100261B88, &unk_1001D8050);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for ExternalPartnerAuthenticator();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_10000341C(&qword_10025F480, &qword_1001D4510);
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for ModelBundle();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v6;
  v1[24] = v5;

  return _swift_task_switch(sub_1000DF8FC, v6, v5);
}

uint64_t sub_1000DF8FC()
{
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v1 = static GenerativeAssistantSettingsUserDefaults.forcedRateLimitState()();
  if (v1 != 2 && (v1 & 1) != 0)
  {

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F34C(v2, qword_100276F08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "RateLimited is forced by UserDefaults", v5, 2u);
    }

    v6 = v0[5];

    if (*(v6 + 16) == 1)
    {
      *(v6 + 16) = 1;
    }

    else
    {
      v37 = v0[5];
      swift_getKeyPath();
      v38 = swift_task_alloc();
      *(v38 + 16) = v37;
      *(v38 + 24) = 1;
      v0[4] = v37;
      sub_1000E0CBC();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    goto LABEL_14;
  }

  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[17];
  type metadata accessor for CompositionModel(0);
  sub_100071008(v9);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v10 = v0[17];

    v11 = &qword_10025F480;
    v12 = &qword_1001D4510;
    v13 = v10;
LABEL_13:
    sub_10000F500(v13, v11, v12);
    goto LABEL_14;
  }

  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[13];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  static ExternalPartnerAuthenticator.sharedAuthenticator(for:)();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v11 = &qword_100261B88;
    v12 = &unk_1001D8050;
    v13 = v17;
    goto LABEL_13;
  }

  v25 = v0[9];
  v26 = v0[10];
  v27 = v0[8];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  ExternalPartnerAuthenticator.lastRateLimitBudgets.getter();
  if ((*(v26 + 48))(v27, 1, v25) != 1)
  {
    v39 = v0[12];
    v40 = v0[9];
    v41 = v0[10];
    v42 = v0[8];
    v43 = v0[5];

    (*(v41 + 32))(v39, v42, v40);
    v44 = RateLimitBudgets.isRateLimited.getter() & 1;
    v46 = v0[19];
    v45 = v0[20];
    v47 = v0[18];
    v48 = v0[15];
    v57 = v0[14];
    v58 = v0[16];
    v49 = v0[12];
    v51 = v0[9];
    v50 = v0[10];
    if (v44 == *(v43 + 16))
    {
      (*(v50 + 8))(v0[12], v0[9]);
      (*(v48 + 8))(v58, v57);
      (*(v46 + 8))(v45, v47);
      *(v43 + 16) = v44;
    }

    else
    {
      v56 = v0[18];
      v52 = v0[5];
      swift_getKeyPath();
      v53 = swift_task_alloc();
      *(v53 + 16) = v52;
      *(v53 + 24) = v44;
      v0[3] = v52;
      sub_1000E0CBC();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      (*(v50 + 8))(v49, v51);
      (*(v48 + 8))(v58, v57);
      (*(v46 + 8))(v45, v56);
    }

LABEL_14:
    v19 = v0[5];
    v18 = v0[6];
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);

    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v19;
    sub_10015C9C8(0, 0, v18, &unk_1001D8068, v22);

    v23 = v0[1];

    return v23();
  }

  v28 = v0[7];
  sub_10000F500(v0[8], &qword_100261B80, &qword_1001D8048);
  ExternalPartnerAuthenticator.credentials.getter();
  v29 = type metadata accessor for Credentials();
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    v31 = v0[19];
    v30 = v0[20];
    v32 = v0[18];
    v34 = v0[15];
    v33 = v0[16];
    v35 = v0[14];
    v36 = v0[7];

    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
    v11 = &qword_100261B78;
    v12 = &qword_1001D8040;
    v13 = v36;
    goto LABEL_13;
  }

  sub_10000F500(v0[7], &qword_100261B78, &qword_1001D8040);
  v54 = swift_task_alloc();
  v0[25] = v54;
  *v54 = v0;
  v54[1] = sub_1000E0028;
  v55 = v0[11];

  return ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()(v55);
}

uint64_t sub_1000E0028()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000E042C;
  }

  else
  {
    v5 = sub_1000E0164;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000E0164(uint64_t a1, uint64_t a2)
{
  v4 = v2[10];
  v3 = v2[11];
  v5 = v2[9];
  v6 = v2[5];

  v7 = RateLimitBudgets.isRateLimited.getter() & 1;
  (*(v4 + 8))(v3, v5);
  if (v7 == *(v6 + 16))
  {
    v14 = v2[19];
    v13 = v2[20];
    v15 = v2[18];
    (*(v2[15] + 8))(v2[16], v2[14]);
    (*(v14 + 8))(v13, v15);
    *(v6 + 16) = v7;
  }

  else
  {
    v8 = v2[19];
    v24 = v2[18];
    v25 = v2[20];
    v9 = v2[15];
    v23 = v2[16];
    v10 = v2[14];
    v11 = v2[5];
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v7;
    v2[2] = v11;
    sub_1000E0CBC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v9 + 8))(v23, v10);
    (*(v8 + 8))(v25, v24);
  }

  v17 = v2[5];
  v16 = v2[6];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v17;
  sub_10015C9C8(0, 0, v16, &unk_1001D8068, v20);

  v21 = v2[1];

  return v21();
}

uint64_t sub_1000E042C(uint64_t a1, uint64_t a2)
{
  v24 = v2;
  v4 = v2[19];
  v3 = v2[20];
  v5 = v2[18];
  v7 = v2[15];
  v6 = v2[16];
  v8 = v2[14];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F08);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10002510C(0x2868736572666572, 0xE900000000000029, &v23);
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s failed: %@", v12, 0x16u);
    sub_10000F500(v13, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v14);
  }

  else
  {
  }

  v17 = v2[5];
  v16 = v2[6];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v17;
  sub_10015C9C8(0, 0, v16, &unk_1001D8068, v20);

  v21 = v2[1];

  return v21();
}

uint64_t sub_1000E0784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1000E0830;

  return static SettingsRemoteLocalization.upgradeIAPString()();
}

uint64_t sub_1000E0830(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0974, v5, v4);
}

uint64_t sub_1000E0974(uint64_t a1, uint64_t a2)
{
  v3 = v2[6];
  v4 = v2[7];

  sub_1000DF4F8(v3, v4);
  v5 = v2[1];

  return v5();
}

uint64_t sub_1000E09F0()
{

  v1 = OBJC_IVAR____TtC21WritingToolsUIService25CompositionRateLimitModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionRateLimitModel(uint64_t a1)
{
  result = qword_100261A38;
  if (!qword_100261A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0AE8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000E0B8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E0BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_1000E0784(a1, v4, v5, v6);
}

unint64_t sub_1000E0CBC()
{
  result = qword_100261B90;
  if (!qword_100261B90)
  {
    type metadata accessor for CompositionRateLimitModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261B90);
  }

  return result;
}

uint64_t sub_1000E0D18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000DF4F8(v1, v2);
}

uint64_t sub_1000E0D58()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_1000E0DF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = sub_10000341C(&qword_100261B98, &qword_1001D8220);
  sub_1000E1064(a1, a2 & 1, a3 + *(v6 + 44));
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a3 + *(sub_10000341C(&qword_100261BA0, &qword_1001D8228) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a3 + *(sub_10000341C(&qword_100261BA8, &qword_1001D8230) + 36);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = (a3 + *(sub_10000341C(&qword_100261BB0, &qword_1001D8238) + 36));
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #10.0 }

  *v27 = _Q0;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v36 = qword_100277188;
  v37 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v27[*(v37 + 52)] = v36;
  *&v27[*(v37 + 56)] = 256;

  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = &v27[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v41 = v38;
  v41[1] = v40;
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  result = sub_10000341C(&qword_100261BB8, &unk_1001D8240);
  v51 = a3 + *(result + 36);
  *v51 = v38;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_1000E1064@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v5 = type metadata accessor for EnvironmentValues();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v58 = &v50 - v9;
  v10 = sub_10000341C(&qword_100261BC0, &qword_1001D8250);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = __chkstk_darwin(v10);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x1000000000000026;
  v16._object = 0x80000001001E6370;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17);

  v18._object = 0x80000001001E63A0;
  v18._countAndFlagsBits = 0x100000000000001ALL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  LocalizedStringKey.init(stringInterpolation:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  static Font.headline.getter();
  v24 = Text.font(_:)();
  v65 = v25;
  v66 = v24;
  v56 = v26;
  v67 = v27;

  sub_10002A984(v19, v21, v23 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v28 = Text.init(_:tableName:bundle:comment:)();
  v57 = v29;
  v54 = v30;
  v64 = v31;

  if ((v55 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v50 + 8))(v7, v51);
    a1 = v68;
  }

  swift_getKeyPath();
  v68 = a1;
  sub_1000E2714(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  swift_getKeyPath();
  v68 = v33;
  sub_1000E2714(&qword_100261B90, type metadata accessor for CompositionRateLimitModel, &unk_1001D8018);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v33 + 24);
  v34 = *(v33 + 32);

  v68 = v35;
  v69 = v34;
  sub_10002AC34();
  v36 = v58;
  Button<>.init<A>(_:action:)();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v53 = v14;
  v37 = v61;
  View.bold(_:)();
  (*(v60 + 8))(v36, v37);
  LOBYTE(v36) = v56 & 1;
  LOBYTE(v68) = v56 & 1;
  v38 = v62;
  v39 = *(v62 + 16);
  v40 = v59;
  v41 = v14;
  v42 = v63;
  v39(v59, v41, v63);
  v43 = v65;
  *a3 = v66;
  *(a3 + 8) = v43;
  *(a3 + 16) = v36;
  *(a3 + 24) = v67;
  *(a3 + 32) = v28;
  v52 = v28;
  v44 = v57;
  *(a3 + 40) = v57;
  LOBYTE(v37) = v54 & 1;
  *(a3 + 48) = v54 & 1;
  *(a3 + 56) = v64;
  v45 = sub_10000341C(&qword_100261BC8, &unk_1001D82A8);
  v39((a3 + *(v45 + 64)), v40, v42);
  v46 = v66;
  sub_100007D98(v66, v43, v36);

  v47 = v52;
  sub_100007D98(v52, v44, v37);
  v48 = *(v38 + 8);

  v48(v53, v42);
  v48(v40, v42);
  sub_10002A984(v47, v44, v37);

  sub_10002A984(v46, v65, v68);
}

void sub_1000E1748()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsDestination.Origin();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultWorkspace];
  if (v12)
  {
    v13 = v12;
    (*(v5 + 104))(v7, enum case for GenerativeAssistantSettingsDestination.upgradePlan(_:), v4);
    (*(v1 + 104))(v3, enum case for GenerativeAssistantSettingsDestination.Origin.writingTools(_:), v0);
    GenerativeAssistantSettingsDestination.fullURL(origin:)();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    sub_1000057A8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 openSensitiveURL:v16 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E1A38(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 10;
  v17 = 0xE100000000000000;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v15;
  }

  swift_getKeyPath();
  v15 = a1;
  sub_1000E2714(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  swift_getKeyPath();
  v15 = v9;
  sub_1000E2714(&qword_100261B90, type metadata accessor for CompositionRateLimitModel, &unk_1001D8018);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 24);
  v11 = *(v9 + 32);

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  return v16;
}

uint64_t sub_1000E1CA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a1;
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - v5;
  v6 = type metadata accessor for GenerativeAssistantSettingsDestination.Origin();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL();
  v14 = *(v49 - 8);
  __chkstk_darwin(v49);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v17 = a3 + *(sub_10000341C(&qword_100261BD0, &qword_1001D82B8) + 44);
  (*(v11 + 104))(v13, enum case for GenerativeAssistantSettingsDestination.upgradePlan(_:), v10);
  (*(v7 + 104))(v9, enum case for GenerativeAssistantSettingsDestination.Origin.writingTools(_:), v6);
  GenerativeAssistantSettingsDestination.fullURL(origin:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = sub_10000341C(&qword_100261BD8, &qword_1001D82C0);
  sub_1000E21B8(v51, v50 & 1, v16, v17 + *(v18 + 44));
  (*(v14 + 8))(v16, v49);
  v19 = type metadata accessor for Font.Design();
  v20 = v52;
  (*(*(v19 - 8) + 56))(v52, 1, 1, v19);
  v21 = static Font.system(size:weight:design:)();
  sub_1000E26A4(v20);
  KeyPath = swift_getKeyPath();
  v23 = (a3 + *(sub_10000341C(&qword_100261BE0, &qword_1001D82F8) + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  LOBYTE(v21) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = a3 + *(sub_10000341C(&qword_100261BE8, &qword_1001D8300) + 36);
  *v32 = v21;
  *(v32 + 8) = v25;
  *(v32 + 16) = v27;
  *(v32 + 24) = v29;
  *(v32 + 32) = v31;
  *(v32 + 40) = 0;
  v33 = (a3 + *(sub_10000341C(&qword_100261BF0, &qword_1001D8308) + 36));
  v34 = *(type metadata accessor for RoundedRectangle() + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #10.0 }

  *v33 = _Q0;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v42 = qword_100277188;
  v43 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v33[*(v43 + 52)] = v42;
  *&v33[*(v43 + 56)] = 256;

  v44 = static Alignment.center.getter();
  v46 = v45;
  result = sub_10000341C(&qword_10025C5C8, &qword_1001DC380);
  v48 = &v33[*(result + 36)];
  *v48 = v44;
  v48[1] = v46;
  return result;
}

uint64_t sub_1000E21B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001001E6410;
  v12._countAndFlagsBits = 0xD000000000000024;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

  v14._object = 0x80000001001E6440;
  v14._countAndFlagsBits = 0x1000000000000027;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = sub_1000E1A38(a1, a2 & 1);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);

  v16._countAndFlagsBits = 10333;
  v16._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  sub_1000E2714(&qword_100261BF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)();
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  LocalizedStringKey.init(stringInterpolation:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  v31 = v23;
  KeyPath = swift_getKeyPath();
  v25 = v32;
  (*(v9 + 16))(v32, a3, v8);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v26, v25, v8);
  v28 = (a4 + *(sub_10000341C(&qword_100261C00, &qword_1001D8340) + 36));
  sub_10000341C(&qword_100261C08, &qword_1001D8348);
  result = OpenURLAction.init(handler:)();
  *v28 = KeyPath;
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 16) = v22 & 1;
  *(a4 + 24) = v31;
  return result;
}

uint64_t sub_1000E24C8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1000E2590()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    sub_1000057A8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  else
  {
    __break(1u);
  }

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_1000E26A4(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E2784()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E280C()
{
  type metadata accessor for URL();

  return sub_1000E2590();
}

unint64_t sub_1000E2890()
{
  result = qword_100261C10;
  if (!qword_100261C10)
  {
    sub_100003E34(&qword_100261BB8, &unk_1001D8240);
    sub_1000E2A74(&qword_100261C18, &qword_100261BB0, &qword_1001D8238, sub_1000E2948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261C10);
  }

  return result;
}

unint64_t sub_1000E2978()
{
  result = qword_100261C28;
  if (!qword_100261C28)
  {
    sub_100003E34(&qword_100261BA0, &qword_1001D8228);
    sub_100007120(&qword_100261C30, &qword_100261C38, &qword_1001D8350, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261C28);
  }

  return result;
}

uint64_t sub_1000E2A74(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E2B54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E2BD8()
{
  result = qword_100261C50;
  if (!qword_100261C50)
  {
    sub_100003E34(&qword_100261BE0, &qword_1001D82F8);
    sub_100007120(&qword_100261C58, &qword_100261C60, &qword_1001D8358, &protocol conformance descriptor for VStack<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261C50);
  }

  return result;
}

void sub_1000E2D20()
{
  v0 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v0 - 8);
  v71 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for QuestionnaireView(0);
  __chkstk_darwin(v70);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_100261CA0, &unk_1001D8380);
  v72 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v63 - v7;
  v9 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v63 - v13;
  v15 = type metadata accessor for NavigationPath();
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  v65 = v15;
  Binding.init(get:set:)();
  type metadata accessor for CommonUIManager(0);
  swift_allocObject();
  sub_10015671C();
  v21 = v68;
  v66 = v14;
  sub_1000E3754(v14, v12);

  sub_10015DDD8(v22, v12, v3);
  sub_1000E37C4(&qword_10025B380, type metadata accessor for QuestionnaireView, &unk_1001DDA64);
  sub_1000E37C4(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);

  View.environment<A>(_:)();

  sub_1000E380C(v3);
  v23 = *(v72 + 16);
  v67 = v8;
  v70 = v4;
  v23(v69, v8, v4);
  v24 = objc_allocWithZone(sub_10000341C(&qword_100261CA8, &unk_1001D8390));
  v25 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v26 = [v21 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = v25;
  v29 = [v28 view];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  [v27 addSubview:v29];

  v31 = [v28 view];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v21 addChildViewController:v28];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001CE090;
  v34 = [v28 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v21 view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v33 + 32) = v40;
  v41 = [v28 view];
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v21 view];
  if (!v44)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v43 constraintEqualToAnchor:v46];
  *(v33 + 40) = v47;
  v48 = [v28 view];
  if (!v48)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = [v21 view];
  if (!v51)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v33 + 48) = v54;
  v55 = [v28 view];

  if (!v55)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v56 = [v55 bottomAnchor];

  v57 = [v21 view];
  if (v57)
  {
    v58 = v57;
    v59 = objc_opt_self();
    v60 = [v58 bottomAnchor];

    v61 = [v56 constraintEqualToAnchor:v60];
    *(v33 + 56) = v61;
    sub_1000B128C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v59 activateConstraints:isa];

    (*(v72 + 8))(v67, v70);
    sub_1000E3868(v66);
    (*(v64 + 8))(v63, v65);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_1000E3674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuestionnaireOnlyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E371C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E3754(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E37C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E380C(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E3868(uint64_t a1)
{
  v2 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E38E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_100261CB0, &unk_1001D83A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 92);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E39B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_100261CB0, &unk_1001D83A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 92);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FeedbackView(uint64_t a1)
{
  result = qword_100261D10;
  if (!qword_100261D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E3AB4(uint64_t a1)
{
  sub_1000E3E10(319, &qword_100261D20, &type metadata accessor for FBKEvaluationController, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000E3DC0(319, &qword_10025B490, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000E3E10(319, &qword_100261D28, type metadata accessor for Attachment, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1000E3DC0(319, &qword_100261D30, &type metadata for String, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1000E3DC0(319, &qword_100261D38, &type metadata for Data, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_1000E3DC0(319, &qword_100261D40, &type metadata for Mode, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1000E3D5C(319);
              if (v7 <= 0x3F)
              {
                sub_1000E3DC0(319, &qword_100261D58, &type metadata for CGFloat, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_1000E3E10(319, &unk_100261D60, &type metadata accessor for AccessibilityTechnologies, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
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
}

void sub_1000E3D5C(uint64_t a1)
{
  if (!qword_100261D48)
  {
    sub_100003E34(&qword_100261D50, &qword_1001D83C8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100261D48);
    }
  }
}

void sub_1000E3DC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000E3E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000E3E88()
{
  result = qword_100261DD8;
  if (!qword_100261DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261DD8);
  }

  return result;
}

uint64_t sub_1000E3EDC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v32;
  v7 = v32 * 0.5;
  v8 = v33;
  v9 = DWORD1(v33);
  v10 = *(&v33 + 1);
  v11 = v34;

  v12 = static Alignment.center.getter();
  *v35 = v32 * 0.5;
  *(v35 + 1) = v32;
  v35[1] = v33;
  *v36 = v34;
  *&v36[16] = a1;
  *&v36[24] = 256;
  *v31 = v34;
  *&v31[10] = *&v36[10];
  v13 = *v31;
  v14 = *&v31[16];
  v39 = *v31;
  v40 = *&v31[16];
  v29 = v35[0];
  v30 = v33;
  v37 = v35[0];
  v38 = v33;
  *&v41 = v12;
  *(&v41 + 1) = v15;
  v16 = v3[1];
  *a2 = *v3;
  a2[1] = v16;
  *(a2 + 89) = *(v3 + 89);
  v17 = v3[5];
  a2[4] = v3[4];
  a2[5] = v17;
  v18 = v3[3];
  a2[2] = v3[2];
  a2[3] = v18;
  v19 = v41;
  a2[10] = v40;
  a2[11] = v19;
  v20 = v39;
  a2[8] = v38;
  a2[9] = v20;
  a2[7] = v37;
  v42[2] = v13;
  v42[3] = v14;
  v42[0] = v29;
  v42[1] = v30;
  v43 = v12;
  v44 = v15;
  sub_1000081F8(v35, v22, &qword_100261FD8, &qword_1001D8628);
  sub_1000081F8(v3, v22, &qword_10025BAF0, &qword_1001D0988);
  sub_1000081F8(&v37, v22, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v42, &qword_100261FA8, &qword_1001D8600);
  *v22 = v7;
  *&v22[1] = v6;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = a1;
  v28 = 256;
  return sub_10000F500(v22, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E4100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = v7;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v13 = v38;
  v14 = v38 * 0.5;
  v16 = v39;
  v15 = DWORD1(v39);
  v17 = *(&v39 + 1);
  v18 = v40;

  v19 = static Alignment.center.getter();
  v21 = v20;
  *v41 = v38 * 0.5;
  *(v41 + 1) = v38;
  v41[1] = v39;
  *v42 = v40;
  *&v42[16] = a1;
  *&v42[24] = 256;
  v36 = v39;
  *v37 = v40;
  *&v37[10] = *&v42[10];
  v35 = v41[0];
  v45 = *v37;
  v46 = *&v37[16];
  v43 = v41[0];
  v44 = v39;
  *&v47 = v19;
  *(&v47 + 1) = v20;
  sub_1000081F8(v10, a6, a2, a3);
  v22 = (a6 + *(sub_10000341C(a4, a5) + 36));
  v23 = *&v37[16];
  v22[2] = *v37;
  v22[3] = v23;
  v22[4] = v47;
  v24 = v44;
  *v22 = v43;
  v22[1] = v24;
  v48[2] = *v37;
  v48[3] = *&v37[16];
  v48[0] = v35;
  v48[1] = v36;
  v49 = v19;
  v50 = v21;
  sub_1000081F8(v41, v28, &qword_100261FD8, &qword_1001D8628);
  sub_1000081F8(&v43, v28, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v48, &qword_100261FA8, &qword_1001D8600);
  *v28 = v14;
  *&v28[1] = v13;
  v29 = v16;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = a1;
  v34 = 256;
  return sub_10000F500(v28, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E42E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;

  v13 = static Alignment.center.getter();
  v15 = v14;
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v38 = *v30;
  v39 = *&v30[16];
  v36 = v34[0];
  v37 = v32;
  *&v40 = v13;
  *(&v40 + 1) = v14;
  v16 = sub_10000341C(&qword_100261FE8, &qword_1001D8638);
  (*(*(v16 - 8) + 16))(a2, v4, v16);
  v17 = (a2 + *(sub_10000341C(&qword_100261FF0, &unk_1001D8640) + 36));
  v18 = *&v30[16];
  v17[2] = *v30;
  v17[3] = v18;
  v17[4] = v40;
  v19 = v37;
  *v17 = v36;
  v17[1] = v19;
  v41[2] = *v30;
  v41[3] = *&v30[16];
  v41[0] = v28;
  v41[1] = v29;
  v42 = v13;
  v43 = v15;
  sub_1000081F8(v34, v21, &qword_100261FD8, &qword_1001D8628);
  sub_1000081F8(&v36, v21, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v41, &qword_100261FA8, &qword_1001D8600);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_10000F500(v21, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E44F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v13 = v36;
  v14 = v36 * 0.5;
  v15 = v37;
  v16 = DWORD1(v37);
  v17 = *(&v37 + 1);
  v18 = v38;

  v19 = static Alignment.center.getter();
  *v39 = v36 * 0.5;
  *(v39 + 1) = v36;
  v39[1] = v37;
  *v40 = v38;
  *&v40[16] = a1;
  *&v40[24] = 256;
  *v35 = v38;
  *&v35[10] = *&v40[10];
  v20 = *v35;
  v21 = *&v35[16];
  v43 = *v35;
  v44 = *&v35[16];
  v33 = v39[0];
  v34 = v37;
  v41 = v39[0];
  v42 = v37;
  *&v45 = v19;
  *(&v45 + 1) = v22;
  *a6 = a2;
  *(a6 + 8) = a3;
  a4 &= 1u;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  v23 = v45;
  *(a6 + 80) = v44;
  *(a6 + 96) = v23;
  v24 = v43;
  *(a6 + 48) = v42;
  *(a6 + 64) = v24;
  *(a6 + 32) = v41;
  v46[2] = v20;
  v46[3] = v21;
  v46[0] = v33;
  v46[1] = v34;
  v47 = v19;
  v48 = v22;
  sub_1000081F8(v39, v26, &qword_100261FD8, &qword_1001D8628);
  sub_100007D98(a2, a3, a4);

  sub_1000081F8(&v41, v26, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v46, &qword_100261FA8, &qword_1001D8600);
  *v26 = v14;
  *&v26[1] = v13;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = a1;
  v32 = 256;
  return sub_10000F500(v26, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E4714@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v33;
  v7 = v33 * 0.5;
  v8 = v34;
  v9 = DWORD1(v34);
  v10 = *(&v34 + 1);
  v11 = v35;

  v12 = static Alignment.center.getter();
  *v41 = v33 * 0.5;
  *(v41 + 1) = v33;
  v41[1] = v34;
  *v42 = v35;
  *&v42[16] = a1;
  *&v42[24] = 256;
  *v32 = v35;
  *&v32[10] = *&v42[10];
  v13 = *v32;
  v14 = *&v32[16];
  v45 = *v32;
  v46 = *&v32[16];
  v30 = v41[0];
  v31 = v34;
  v43 = v41[0];
  v44 = v34;
  *&v47 = v12;
  *(&v47 + 1) = v15;
  v17 = *(v3 + 3);
  v16 = *(v3 + 4);
  v18 = *v3;
  v40 = *(v3 + 16);
  v39 = v18;
  v38 = v17;
  v37 = *(v3 + 40);
  v36 = v16;
  *(a2 + 25) = *(v3 + 25);
  v19 = v3[1];
  *a2 = *v3;
  a2[1] = v19;
  v20 = v47;
  a2[6] = v46;
  a2[7] = v20;
  v21 = v45;
  a2[4] = v44;
  a2[5] = v21;
  a2[3] = v43;
  v48[2] = v13;
  v48[3] = v14;
  v48[0] = v30;
  v48[1] = v31;
  v49 = v12;
  v50 = v15;
  sub_1000081F8(v41, v23, &qword_100261FD8, &qword_1001D8628);
  sub_1000F49D4(&v39, v23);
  sub_1000081F8(&v38, v23, &qword_1002620C8, &qword_1001D87D0);
  sub_1000F4A30(&v36, v23);
  sub_1000081F8(&v43, v23, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v48, &qword_100261FA8, &qword_1001D8600);
  *v23 = v7;
  *&v23[1] = v6;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = a1;
  v29 = 256;
  return sub_10000F500(v23, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E4968()
{
  v0 = sub_100007A3C(&off_10024AAE0);
  result = swift_arrayDestroy();
  qword_100277100 = v0;
  return result;
}

uint64_t sub_1000E49B4()
{
  v0 = sub_100007A3C(&off_10024AB40);
  result = swift_arrayDestroy();
  qword_100277108 = v0;
  return result;
}

uint64_t sub_1000E4A1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for FBKSEvaluation.Subject();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(sub_1000E4B10, v5, v4);
}

uint64_t sub_1000E4B10()
{
  sub_1000E4F4C(*(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000E4BBC;
  v2 = *(v0 + 16);

  return FBKSEvaluation.Subject._remoteEvaluate(action:showFeedbackForm:)(v2, 1);
}

uint64_t sub_1000E4BBC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1000E4D7C;
  }

  else
  {
    v5 = sub_1000E4CF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000E4CF8(uint64_t a1, uint64_t a2)
{

  (*(v2[5] + 8))(v2[6], v2[4]);

  v3 = v2[1];

  return v3();
}

uint64_t sub_1000E4D7C(uint64_t a1, uint64_t a2)
{

  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F80);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unexpected error trying to launch remote evaluation: %@.", v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  (*(v2[5] + 8))(v2[6], v2[4]);

  v9 = v2[1];

  return v9();
}

uint64_t sub_1000E4F4C@<X0>(uint64_t *a1@<X8>)
{
  v274 = a1;
  v250 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v249 = *(v250 - 8);
  v2 = __chkstk_darwin(v250);
  v247 = v242 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v245 = v242 - v5;
  __chkstk_darwin(v4);
  v7 = v242 - v6;
  v283 = type metadata accessor for FBKSForm.Question();
  v281 = *(v283 - 8);
  v8 = __chkstk_darwin(v283);
  v263 = (v242 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v248 = v242 - v11;
  __chkstk_darwin(v10);
  v264 = (v242 - v12);
  v13 = type metadata accessor for FeedbackView(0);
  v14 = __chkstk_darwin(v13 - 8);
  v277 = v242 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v253 = v242 - v17;
  __chkstk_darwin(v16);
  v19 = v242 - v18;
  v282 = type metadata accessor for FBKSInteraction.Content();
  *&v279 = *(v282 - 8);
  v20 = __chkstk_darwin(v282);
  v265 = (v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v272 = (v242 - v23);
  __chkstk_darwin(v22);
  v266 = (v242 - v24);
  v262 = type metadata accessor for CharacterSet();
  v261 = *(v262 - 1);
  __chkstk_darwin(v262);
  v260 = v242 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000341C(&qword_100261EF0, &qword_1001D8568);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v291 = v242 - v31;
  v32 = __chkstk_darwin(v30);
  v280 = (v242 - v33);
  __chkstk_darwin(v32);
  v290 = v242 - v34;
  v35 = sub_10000341C(&qword_100261EF8, &qword_1001D8570);
  v36 = __chkstk_darwin(v35 - 8);
  v271 = v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v285 = v242 - v39;
  __chkstk_darwin(v38);
  v41 = v242 - v40;
  v42 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v284 = v242 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = v242 - v46;
  v48 = *(v1 + 128);
  v49 = *(v1 + 144);
  v50 = *(v1 + 152);
  v276 = *(v1 + 136);
  v273 = v49;
  sub_1000ED2BC(v48, v276, v49, v50, v294);
  v267 = v294[1];
  v268 = v294[3];
  v269 = v294[5];
  v270 = v294[7];
  v288 = v1;
  v246 = v7;
  v275 = v29;
  v256 = v19;
  v252 = v294[6];
  v251 = v294[4];
  v255 = v294[2];
  v254 = v294[0];
  v257 = v48;
  if (v50 != 255)
  {
    if (v50 == 1)
    {
      if (v276 == 1)
      {
        v51 = &enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:);
        goto LABEL_10;
      }
    }

    else if (v50 == 2 && v48 == 2 && !(v273 | v276))
    {
      v51 = &enum case for FBKSInteraction.FeatureDomain.smartReplies(_:);
      goto LABEL_10;
    }
  }

  v51 = &enum case for FBKSInteraction.FeatureDomain.writingTools(_:);
LABEL_10:
  v52 = *(v43 + 104);
  v52(v47, *v51, v42);
  v53 = v42;
  v54 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  v242[0] = *(v54 - 8);
  v55 = v242[0] + 56;
  v56 = *(v242[0] + 56);
  v56(v41, 1, 1, v54);
  v244 = v54;
  v243 = v56;
  v242[1] = v55;
  v56(v285, 1, 1, v54);
  v57 = v288;
  v287 = v53;
  v289 = v43;
  v278 = v41;
  v286 = v47;
  v259 = v43 + 104;
  v258 = v52;
  if (v50 == 255)
  {
    if (qword_10025A708 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_10000F34C(v64, qword_100276F80);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v63 = v282;
    if (!v67)
    {
      goto LABEL_19;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Feedback Initiated - No Subject";
    goto LABEL_18;
  }

  v58 = v284;
  v52(v284, enum case for FBKSInteraction.FeatureDomain.writingTools(_:), v53);
  v59 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
  v60 = *(v43 + 8);
  v60(v58, v53);
  if ((v59 & 1) == 0)
  {
    v52(v58, enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:), v53);
    v61 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
    v60(v58, v53);
    if ((v61 & 1) == 0)
    {
      v52(v58, enum case for FBKSInteraction.FeatureDomain.smartReplies(_:), v53);
      v147 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
      v60(v58, v53);
      if (v147)
      {
        v57 = v288;
        if (qword_10025A7A8 != -1)
        {
          swift_once();
        }

        v148 = v57[2];
        v63 = v282;
        if (!v148)
        {
          goto LABEL_124;
        }

        v149 = v57[1];
        if (sub_10013845C(v149, v57[2], qword_100277108))
        {
          v276 = 0x80000001001E65C0;
          v150 = v285;
          sub_10000F500(v285, &qword_100261EF8, &qword_1001D8570);
          v151 = v278;
          sub_10000F500(v278, &qword_100261EF8, &qword_1001D8570);
          v152 = *(v242[0] + 104);
          v153 = v244;
          v152(v151, enum case for FBKSInteraction.AnnotatedContent.IconType.singleMessage(_:), v244);
          v154 = v151;
          v155 = v243;
          v243(v154, 0, 1, v153);
          v152(v150, enum case for FBKSInteraction.AnnotatedContent.IconType.smartReplyMessageGenerated(_:), v153);
          v57 = v288;
          v155(v150, 0, 1, v153);
          v273 = 0xD000000000000014;
          goto LABEL_21;
        }

        if (qword_10025A7A0 != -1)
        {
          swift_once();
        }

        if (sub_10013845C(v149, v148, qword_100277100))
        {
          v273 = 0xD000000000000010;
          v276 = 0x80000001001E65A0;
          v236 = v285;
          sub_10000F500(v285, &qword_100261EF8, &qword_1001D8570);
          v237 = v278;
          sub_10000F500(v278, &qword_100261EF8, &qword_1001D8570);
          v238 = *(v242[0] + 104);
          v239 = v244;
          v238(v237, enum case for FBKSInteraction.AnnotatedContent.IconType.mailMessage(_:), v244);
          v240 = v237;
          v241 = v243;
          v243(v240, 0, 1, v239);
          v238(v236, enum case for FBKSInteraction.AnnotatedContent.IconType.smartReplyMailGenerated(_:), v239);
          v57 = v288;
          v241(v236, 0, 1, v239);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v57 = v288;
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v188 = type metadata accessor for Logger();
      sub_10000F34C(v188, qword_100276F80);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      v189 = os_log_type_enabled(v65, v66);
      v63 = v282;
      if (!v189)
      {
LABEL_19:

LABEL_20:
        v273 = 0;
        v276 = 0;
        goto LABEL_21;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = "Feedback Initiated - Ignoring subject for domain";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v65, v66, v69, v68, 2u);

      goto LABEL_19;
    }
  }

  v273 = sub_1000EEF90(v257, v276, v273, v50);
  v276 = v62;
  v57 = v288;
  v63 = v282;
LABEL_21:
  v70 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v71 = *(v70 - 8);
  v72 = *(v71 + 56);
  v73 = v71 + 56;
  v72(v290, 1, 1, v70);
  v74 = v57[6];
  if (v74)
  {
    v75 = v57[5];
    v292[0] = v75;
    v292[1] = v74;
    v76 = v260;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10002AC34();
    v77 = StringProtocol.trimmingCharacters(in:)();
    v79 = v78;
    (*(v261 + 8))(v76, v262);

    v80 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v80 = v77 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {
      v81 = v266;
      *v266 = v75;
      v81[1] = v74;
      v82 = v279;
      (*(v279 + 104))(v81, enum case for FBKSInteraction.Content.text(_:), v63);
      v83 = *(v82 + 16);
      v262 = v72;
      v83(v272, v81, v63);
      swift_bridgeObjectRetain_n();
      sub_1000081F8(v294, v292, &qword_100261F00, &qword_1001D8578);

      v84 = v73;

      sub_1000081F8(v294, v292, &qword_100261F00, &qword_1001D8578);

      sub_1000081F8(v278, v271, &qword_100261EF8, &qword_1001D8570);
      v85 = v280;
      v72 = v262;
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      v86 = v290;
      sub_10000F500(v290, &qword_100261EF0, &qword_1001D8568);
      v261 = v84;
      v72(v85, 0, 1, v70);
      sub_10002A894(v85, v86, &qword_100261EF0, &qword_1001D8568);
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_10000F34C(v87, qword_100276F80);
      v57 = v288;
      v88 = v256;
      sub_1000F3AC4(v288, v256, type metadata accessor for FeedbackView);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v292[0] = v92;
        *v91 = 136642819;
        v93 = *(v88 + 48);
        if (!v93)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v94 = v92;
        v95 = *(v88 + 40);

        sub_1000F3B94(v88, type metadata accessor for FeedbackView);
        v96 = sub_10002510C(v95, v93, v292);

        *(v91 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v89, v90, "Feedback Initiated - originalContent: %{sensitive}s", v91, 0xCu);
        sub_10000F4B4(v94);

        v63 = v282;
        (*(v279 + 8))(v266, v282);
        v72 = v262;
      }

      else
      {

        sub_1000F3B94(v88, type metadata accessor for FeedbackView);
        v63 = v282;
        (*(v279 + 8))(v266, v282);
      }

      v73 = v261;
    }
  }

  v72(v291, 1, 1, v70);
  v97 = v57[10];
  if (v97)
  {
    v98 = v57[9];
    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v98 & 0xFFFFFFFFFFFFLL;
    }

    if (v99)
    {
      v261 = v73;
      v100 = v265;
      *v265 = v98;
      v100[1] = v97;
      v101 = v279;
      (*(v279 + 104))(v100, enum case for FBKSInteraction.Content.text(_:), v63);
      (*(v101 + 16))(v272, v100, v63);

      sub_1000081F8(v294, v292, &qword_100261F00, &qword_1001D8578);

      v262 = v72;

      sub_1000081F8(v294, v292, &qword_100261F00, &qword_1001D8578);

      sub_1000081F8(v285, v271, &qword_100261EF8, &qword_1001D8570);
      v102 = v280;
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      v103 = v291;
      sub_10000F500(v291, &qword_100261EF0, &qword_1001D8568);
      v262(v102, 0, 1, v70);
      sub_10002A894(v102, v103, &qword_100261EF0, &qword_1001D8568);
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_10000F34C(v104, qword_100276F80);
      v105 = v253;
      sub_1000F3AC4(v57, v253, type metadata accessor for FeedbackView);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v292[0] = v109;
        *v108 = 136642819;
        v110 = *(v105 + 80);
        v111 = v282;
        if (v110)
        {
          v112 = v109;
          v113 = *(v105 + 72);

          sub_1000F3B94(v105, type metadata accessor for FeedbackView);
          v114 = sub_10002510C(v113, v110, v292);

          *(v108 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v106, v107, "Feedback Initiated - generatedContent: %{sensitive}s", v108, 0xCu);
          sub_10000F4B4(v112);

          (*(v279 + 8))(v265, v111);
          goto LABEL_42;
        }

        goto LABEL_123;
      }

      sub_1000F3B94(v105, type metadata accessor for FeedbackView);
      (*(v279 + 8))(v265, v282);
    }
  }

LABEL_42:
  v115 = sub_1000ED7E0();
  (*(v289 + 16))(v284, v286, v287);
  sub_1000081F8(v290, v280, &qword_100261EF0, &qword_1001D8568);
  sub_1000081F8(v291, v275, &qword_100261EF0, &qword_1001D8568);
  objc_allocWithZone(type metadata accessor for FBKSInteraction());

  v280 = v115;
  v116 = FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)();
  v117 = v276;
  v282 = v116;
  if (!v276)
  {
    v142 = v289;
    goto LABEL_84;
  }

  sub_10000341C(&qword_100261F08, &unk_1001D8580);
  v118 = (sub_10000341C(&qword_10025AC40, &qword_1001CE920) - 8);
  v119 = (*(*v118 + 80) + 32) & ~*(*v118 + 80);
  v120 = swift_allocObject();
  v279 = xmmword_1001CF9D0;
  *(v120 + 16) = xmmword_1001CF9D0;
  v121 = v120 + v119;
  v122 = v118[14];
  strcpy(v121, ":sub_feature");
  *(v121 + 13) = 0;
  *(v121 + 14) = -5120;
  v123 = *(v281 + 104);
  LODWORD(v275) = enum case for FBKSForm.Question.custom(_:);
  v272 = v123;
  (v123)(v121);
  sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
  v124 = swift_allocObject();
  *(v124 + 16) = v279;
  *(v124 + 32) = v273;
  *(v124 + 40) = v117;
  *(v121 + v122) = v124;

  sub_10000688C(v120);
  swift_setDeallocating();
  sub_10000F500(v121, &qword_10025AC40, &qword_1001CE920);
  swift_deallocClassInstance();
  dispatch thunk of FBKSInteraction.prefillQuestions.setter();
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v125 = type metadata accessor for Logger();
  sub_10000F34C(v125, qword_100276F80);

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v292[0] = v129;
    *v128 = 136315138;
    *(v128 + 4) = sub_10002510C(v273, v117, v292);
    _os_log_impl(&_mh_execute_header, v126, v127, "Feedback Initiated - Subject: %s", v128, 0xCu);
    sub_10000F4B4(v129);
  }

  v57 = v288;
  v130 = v284;
  v131 = v287;
  v258(v284, enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:), v287);
  v132 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
  (*(v289 + 8))(v130, v131);
  if (v132)
  {
    v133 = dispatch thunk of FBKSInteraction.prefillQuestions.modify();
    if (!*v134)
    {
      v156 = v133;

      v156(v292, 0);
      v117 = 0;
LABEL_74:
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v284 = swift_slowAlloc();
        v292[0] = v284;
        *v181 = 136315138;
        type metadata accessor for GenerativeAssistantSettingsProvider();
        static GenerativeAssistantSettingsProvider.shared.getter();
        v182 = v247;
        dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

        v183 = v249;
        v184 = v182;
        v185 = v250;
        if ((*(v249 + 88))(v184, v250) == enum case for GenerativeAssistantSettingsProvider.LLMProvider.chatGPT(_:))
        {
          v186 = 0xE600000000000000;
          v187 = 0x49416E65704FLL;
        }

        else
        {
          static GenerativeAssistantSettingsProvider.shared.getter();
          *&v279 = v117;
          v190 = v245;
          dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

          v187 = GenerativeAssistantSettingsProvider.LLMProvider.rawValue.getter();
          v186 = v191;
          v192 = *(v183 + 8);
          v193 = v190;
          v117 = v279;
          v192(v193, v185);
          v192(v247, v185);
        }

        v194 = sub_10002510C(v187, v186, v292);

        *(v181 + 4) = v194;
        _os_log_impl(&_mh_execute_header, v179, v180, "Feedback Initiated - Model: %s", v181, 0xCu);
        sub_10000F4B4(v284);

        v142 = v289;
      }

      else
      {

        v142 = v289;
      }

LABEL_84:
      v143 = v277;
      v144 = v57[29];
      if (v144)
      {
        goto LABEL_85;
      }

      goto LABEL_53;
    }

    v135 = v134;
    v284 = v133;
    v136 = v264;
    *v264 = 0xD000000000000012;
    v136[1] = 0x80000001001E6580;
    v272();
    type metadata accessor for GenerativeAssistantSettingsProvider();
    static GenerativeAssistantSettingsProvider.shared.getter();
    v137 = v246;
    dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

    v138 = v249;
    v139 = v250;
    if ((*(v249 + 88))(v137, v250) == enum case for GenerativeAssistantSettingsProvider.LLMProvider.chatGPT(_:))
    {
      v140 = 0xE600000000000000;
      v141 = 0x49416E65704FLL;
    }

    else
    {
      static GenerativeAssistantSettingsProvider.shared.getter();
      v157 = v245;
      dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

      v158 = GenerativeAssistantSettingsProvider.LLMProvider.rawValue.getter();
      v140 = v159;
      v160 = v138;
      v141 = v158;
      v161 = *(v160 + 8);
      v161(v157, v139);
      v161(v137, v139);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v293 = *v135;
    v163 = v293;
    *v135 = 0x8000000000000000;
    v165 = sub_100005298(v264);
    v166 = *(v163 + 2);
    v167 = (v164 & 1) == 0;
    v168 = v166 + v167;
    if (__OFADD__(v166, v167))
    {
      __break(1u);
    }

    else
    {
      v169 = v164;
      if (*(v163 + 3) >= v168)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000F30C0(&type metadata accessor for FBKSForm.Question, &qword_10025AC48, &qword_1001CE928);
        }
      }

      else
      {
        sub_1000F1634(v168, isUniquelyReferenced_nonNull_native);
        v170 = sub_100005298(v264);
        if ((v169 & 1) != (v171 & 1))
        {
          goto LABEL_125;
        }

        v165 = v170;
      }

      *v135 = v293;

      v172 = *v135;
      if ((v169 & 1) == 0)
      {
        v173 = v248;
        (*(v281 + 16))(v248, v264, v283);
        sub_1000F20AC(v165, v173, _swiftEmptyArrayStorage, v172, &type metadata accessor for FBKSForm.Question);
      }

      v135 = *(v172 + 7);
      v163 = v135[v165];
      v174 = swift_isUniquelyReferenced_nonNull_native();
      v135[v165] = v163;
      if (v174)
      {
        goto LABEL_71;
      }
    }

    v163 = sub_10017DD84(0, *(v163 + 2) + 1, 1, v163);
    v135[v165] = v163;
LABEL_71:
    v176 = *(v163 + 2);
    v175 = *(v163 + 3);
    if (v176 >= v175 >> 1)
    {
      v135[v165] = sub_10017DD84((v175 > 1), v176 + 1, 1, v163);
    }

    (*(v281 + 8))(v264, v283);
    v177 = v135[v165];
    *(v177 + 2) = v176 + 1;
    v178 = &v177[16 * v176];
    *(v178 + 4) = v141;
    *(v178 + 5) = v140;
    (v284)(v292, 0);
    v117 = sub_1000F4AD8;
    v57 = v288;
    goto LABEL_74;
  }

  v117 = 0;
  v143 = v277;
  v142 = v289;
  v144 = v57[29];
  if (v144)
  {
LABEL_85:
    v195 = v117;
    v284 = v57[28];
    v196 = v292;
    v197 = dispatch thunk of FBKSInteraction.prefillQuestions.modify();
    v199 = v197;
    if (!*v198)
    {
      sub_10000F500(v294, &qword_100261F00, &qword_1001D8578);

      v199(v292, 0);
      v145 = v142;
      v146 = 0;
      v210 = v284;
LABEL_99:
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v218 = type metadata accessor for Logger();
      sub_10000F34C(v218, qword_100276F80);

      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v292[0] = v222;
        *v221 = 136315138;
        v223 = sub_10002510C(v210, v144, v292);

        *(v221 + 4) = v223;
        _os_log_impl(&_mh_execute_header, v219, v220, "Feedback Initiated - model language: %s", v221, 0xCu);
        sub_10000F4B4(v222);
        v145 = v289;
      }

      else
      {
      }

      goto LABEL_105;
    }

    v117 = v198;
    *&v279 = v197;
    v200 = v263;
    *v263 = 0x6C5F6C65646F6D3ALL;
    *(v200 + 8) = 0xEF65676175676E61;
    (*(v281 + 104))(v200, enum case for FBKSForm.Question.custom(_:), v283);

    v143 = swift_isUniquelyReferenced_nonNull_native();
    v293 = *v117;
    v201 = v293;
    *v117 = 0x8000000000000000;
    v203 = sub_100005298(v200);
    v204 = *(v201 + 2);
    v205 = (v202 & 1) == 0;
    v206 = v204 + v205;
    if (__OFADD__(v204, v205))
    {
      __break(1u);
LABEL_119:
      v196 = sub_10017DD84(0, *(v196 + 2) + 1, 1, v196);
      *(v142 + 8 * v203) = v196;
LABEL_96:
      v215 = *(v196 + 2);
      v214 = *(v196 + 3);
      v210 = v284;
      if (v215 >= v214 >> 1)
      {
        *(v142 + 8 * v203) = sub_10017DD84((v214 > 1), v215 + 1, 1, v196);
      }

      (*(v281 + 8))(v263, v283);
      v216 = *(v142 + 8 * v203);
      *(v216 + 16) = v215 + 1;
      v217 = v216 + 16 * v215;
      *(v217 + 32) = v210;
      *(v217 + 40) = v144;
      (v279)(v292, 0);
      v146 = sub_1000F4AD8;
      v57 = v288;
      v145 = v289;
      goto LABEL_99;
    }

    v207 = v202;
    if (*(v201 + 3) >= v206)
    {
      if ((v143 & 1) == 0)
      {
        sub_1000F30C0(&type metadata accessor for FBKSForm.Question, &qword_10025AC48, &qword_1001CE928);
      }

LABEL_93:
      v143 = v277;
      sub_10000F500(v294, &qword_100261F00, &qword_1001D8578);

      *v117 = v293;

      v211 = *v117;
      if ((v207 & 1) == 0)
      {
        v212 = v248;
        (*(v281 + 16))(v248, v200, v283);
        sub_1000F20AC(v203, v212, _swiftEmptyArrayStorage, v211, &type metadata accessor for FBKSForm.Question);
      }

      v142 = *(v211 + 7);
      v196 = *(v142 + 8 * v203);
      v213 = swift_isUniquelyReferenced_nonNull_native();
      *(v142 + 8 * v203) = v196;
      v117 = v195;
      if (v213)
      {
        goto LABEL_96;
      }

      goto LABEL_119;
    }

    sub_1000F1634(v206, v143);
    v208 = sub_100005298(v200);
    if ((v207 & 1) == (v209 & 1))
    {
      v203 = v208;
      goto LABEL_93;
    }

LABEL_125:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_53:
  sub_10000F500(v294, &qword_100261F00, &qword_1001D8578);

  v145 = v142;
  v146 = 0;
LABEL_105:
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v224 = type metadata accessor for Logger();
  sub_10000F34C(v224, qword_100276F80);
  sub_1000F3AC4(v57, v143, type metadata accessor for FeedbackView);
  v225 = Logger.logObject.getter();
  v226 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v225, v226))
  {
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v292[0] = v228;
    *v227 = 136380675;
    if (*(v143 + 96))
    {
      v229 = *(v143 + 88);
      v230 = *(v143 + 96);
    }

    else
    {
      v229 = 0;
      v230 = 0xE000000000000000;
    }

    sub_1000F3B94(v143, type metadata accessor for FeedbackView);
    v231 = sub_10002510C(v229, v230, v292);

    *(v227 + 4) = v231;
    _os_log_impl(&_mh_execute_header, v225, v226, "Feedback Initiated - modelInfoString: %{private}s", v227, 0xCu);
    sub_10000F4B4(v228);
  }

  else
  {

    sub_1000F3B94(v143, type metadata accessor for FeedbackView);
  }

  sub_10000F500(v291, &qword_100261EF0, &qword_1001D8568);
  sub_10000F500(v290, &qword_100261EF0, &qword_1001D8568);
  sub_10000F500(v285, &qword_100261EF8, &qword_1001D8570);
  sub_10000F500(v278, &qword_100261EF8, &qword_1001D8570);
  (*(v145 + 8))(v286, v287);
  v232 = v274;
  *v274 = v282;
  v233 = enum case for FBKSEvaluation.Subject.interaction(_:);
  v234 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v234 - 8) + 104))(v232, v233, v234);
  sub_1000F3AB4(v117, 0);
  return sub_1000F3AB4(v146, 0);
}

uint64_t sub_1000E7628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = type metadata accessor for FeedbackView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v35 = sub_10000341C(&qword_100261F90, &unk_1001DE270);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v34 - v8;
  v38 = sub_10000341C(&qword_100262040, &qword_1001D86A8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = &v34 - v10;
  v12 = sub_10000341C(&qword_100261F88, &unk_1001D85F0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  sub_1000F3AC4(v3, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackView);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1000F3B2C(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FeedbackView);
  v40 = a1;
  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v18 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v19 = type metadata accessor for IconOnlyLabelStyle();
  v20 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v21 = sub_1000F48D8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100007120(&qword_100261F98, &qword_100261F90, &unk_1001DE270, &protocol conformance descriptor for Button<A>);
  v22 = v35;
  View.help(_:)();

  (*(v37 + 8))(v9, v22);
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v36 + 32))(v15, v11, v38);
  v31 = &v15[*(v13 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Color.blue.getter();
  sub_1000E4100(v32, &qword_100261F88, &unk_1001D85F0, &qword_100261F70, &qword_1001D85E8, v39);

  return sub_10000F500(v15, &qword_100261F88, &unk_1001D85F0);
}

uint64_t sub_1000E7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = type metadata accessor for FeedbackView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v35 = sub_10000341C(&qword_100262070, &qword_1001D86E0);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v34 - v8;
  v38 = sub_10000341C(&qword_100262078, &qword_1001D86E8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = &v34 - v10;
  v12 = sub_10000341C(&qword_100262080, &qword_1001D86F0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  sub_1000F3AC4(v3, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackView);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1000F3B2C(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FeedbackView);
  v40 = a1;
  sub_10000341C(&qword_100262088, &qword_1001D86F8);
  v18 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v19 = type metadata accessor for TitleAndIconLabelStyle();
  v20 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v21 = sub_1000F48D8(&qword_100262090, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100007120(&qword_100262098, &qword_100262070, &qword_1001D86E0, &protocol conformance descriptor for Button<A>);
  v22 = v35;
  View.help(_:)();

  (*(v37 + 8))(v9, v22);
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v36 + 32))(v15, v11, v38);
  v31 = &v15[*(v13 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Color.blue.getter();
  sub_1000E4100(v32, &qword_100262080, &qword_1001D86F0, &qword_100262058, &qword_1001D86D0, v39);

  return sub_10000F500(v15, &qword_100262080, &qword_1001D86F0);
}

uint64_t sub_1000E8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1000E8114, v7, v6);
}

uint64_t sub_1000E8114()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Report a Concern button pressed - launching remote eval", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FBKSEvaluation.Action.reportConcern(_:), v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000E8294;
  v9 = v0[5];

  return sub_1000E4A1C(v9);
}

uint64_t sub_1000E8294()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_1000E8418, v6, v5);
}

uint64_t sub_1000E8418(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000E8480@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a4;
  v21 = a5;
  v18 = a2;
  v19 = a3;
  v22 = a6;
  v23 = a1;
  v6 = type metadata accessor for FBKSEvaluation.Action();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v11 = *(v10 - 8);
  v16 = v10;
  v17 = v11;
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for FBKEvaluationController();
  (*(v7 + 104))(v9, enum case for FBKSEvaluation.Action.reportConcern(_:), v6);
  static FBKEvaluationController.systemImageName(for:hasResponse:)();
  (*(v7 + 8))(v9, v6);
  Label<>.init(_:systemImage:)();
  v18(0);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_1000F48D8(v19, v20, v21);
  v14 = v16;
  View.labelStyle<A>(_:)();
  return (*(v17 + 8))(v13, v14);
}

uint64_t sub_1000E8700@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v96) = a2;
  v109 = a3;
  v110 = a1;
  v4 = type metadata accessor for FeedbackView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v111 = sub_10000341C(&qword_100261FE0, &qword_1001D8630);
  __chkstk_darwin(v111);
  v8 = &v86 - v7;
  v9 = sub_10000341C(&qword_100261FE8, &qword_1001D8638);
  v10 = *(v9 - 8);
  v112 = v9;
  v113 = v10;
  __chkstk_darwin(v9);
  v12 = &v86 - v11;
  v13 = sub_10000341C(&qword_100261FF0, &unk_1001D8640);
  v14 = __chkstk_darwin(v13 - 8);
  v107 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v86 - v17;
  v18 = __chkstk_darwin(v16);
  v106 = &v86 - v19;
  __chkstk_darwin(v18);
  v21 = &v86 - v20;
  sub_1000F3AC4(a1, &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackView);
  v22 = *(v5 + 80);
  v23 = (v22 + 16) & ~v22;
  v101 = v6;
  v99 = v22;
  v24 = swift_allocObject();
  v100 = v23;
  v102 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F3B2C(v102, v24 + v23, type metadata accessor for FeedbackView);
  v25 = sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v26 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v27 = type metadata accessor for IconOnlyLabelStyle();
  v28 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v29 = sub_1000F48D8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  *&v195 = v26;
  *(&v195 + 1) = v27;
  *&v196 = v28;
  *(&v196 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = v25;
  Button.init(action:label:)();
  v97 = "ints, list, or table.";
  LocalizedStringKey.init(stringLiteral:)();
  v31 = sub_1000F3F70();
  View.help(_:)();

  v104 = v8;
  sub_10000F500(v8, &qword_100261FE0, &qword_1001D8630);
  v32 = static Color.red.getter();
  v105 = v21;
  sub_1000E42E8(v32, v21);

  v33 = *(v113 + 8);
  v103 = v12;
  v113 += 8;
  v33(v12, v112);
  if (v96)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v183);
    v92 = v185;
    v93 = v183;
    v90 = v188;
    v91 = v187;
    v116 = 1;
    v115 = v184;
    v114 = v186;
    LocalizedStringKey.init(stringLiteral:)();
    v34 = Text.init(_:tableName:bundle:comment:)();
    v36 = v35;
    v38 = v37;
    v94 = v33;
    static Font.footnote.getter();
    v96 = OpaqueTypeConformance2;
    v39 = Text.font(_:)();
    v95 = v31;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    sub_10002A984(v34, v36, v38 & 1);

    LODWORD(v195) = static HierarchicalShapeStyle.secondary.getter();
    v45 = Text.foregroundStyle<A>(_:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_10002A984(v40, v42, v44 & 1);

    v52 = static Color.red.getter();
    sub_1000E44F4(v52, v45, v47, v49 & 1, v51, &v195);

    sub_10002A984(v45, v47, v49 & 1);

    v121 = v199;
    v122 = v200;
    v123 = v201;
    v117 = v195;
    v118 = v196;
    v119 = v197;
    v120 = v198;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v189);
    v139 = v121;
    v140 = v122;
    v141 = v123;
    v135 = v117;
    v136 = v118;
    v137 = v119;
    v138 = v120;
    v88 = v191;
    v89 = v189;
    LOBYTE(v51) = v192;
    v87 = v193;
    v53 = v194;
    v126 = 1;
    v125 = v190;
    v124 = v192;
    LOBYTE(v45) = v116;
    v54 = v115;
    v55 = v114;
    v56 = v190;
    v127[4] = v121;
    v127[5] = v122;
    v127[6] = v123;
    v128 = v117;
    v127[0] = v117;
    v127[1] = v118;
    v127[2] = v119;
    v127[3] = v120;
    v132 = v121;
    v133 = v122;
    v134 = v123;
    v129 = v118;
    v130 = v119;
    v131 = v120;
    sub_1000081F8(&v117, &v195, &qword_100262038, &unk_1001D8670);
    sub_1000081F8(v127, &v195, &qword_100262038, &unk_1001D8670);
    sub_10000F500(&v135, &qword_100262038, &unk_1001D8670);
    *&v167 = 0;
    BYTE8(v167) = v45;
    *&v168 = v93;
    BYTE8(v168) = v54;
    *&v169 = v92;
    BYTE8(v169) = v55;
    *&v170 = v91;
    *(&v170 + 1) = v90;
    v175 = v132;
    v176 = v133;
    v177 = v134;
    v171 = v128;
    v172 = v129;
    v174 = v131;
    v173 = v130;
    *&v178 = 0;
    BYTE8(v178) = 1;
    *&v179 = v89;
    BYTE8(v179) = v56;
    *&v180 = v88;
    BYTE8(v180) = v51;
    *&v181 = v87;
    *(&v181 + 1) = v53;
    sub_1000F413C(&v167);
    v207 = v179;
    v208 = v180;
    v209 = v181;
    v210 = v182;
    v203 = v175;
    v204 = v176;
    v205 = v177;
    v206 = v178;
    v199 = v171;
    v200 = v172;
    v201 = v173;
    v202 = v174;
    v195 = v167;
    v196 = v168;
    v197 = v169;
    v198 = v170;
    sub_10000341C(&qword_100262008, &qword_1001D8650);
    sub_10000341C(&qword_100262010, &qword_1001D8658);
    sub_100007120(&qword_100262018, &qword_100262008, &qword_1001D8650, &protocol conformance descriptor for TupleView<A>);
    sub_1000F4088();
    v33 = v94;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(&v117, &qword_100262038, &unk_1001D8670);
    v207 = v163;
    v208 = v164;
    v209 = v165;
    v210 = v166;
    v203 = v159;
    v204 = v160;
    v205 = v161;
    v206 = v162;
    v199 = v155;
    v200 = v156;
    v201 = v157;
    v202 = v158;
    v195 = v151;
    v196 = v152;
    v197 = v153;
    v198 = v154;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v128);
    LOBYTE(v117) = 1;
    LOBYTE(v189) = BYTE8(v128);
    LOBYTE(v183) = BYTE8(v129);
    LOBYTE(v127[0]) = 1;
    *&v195 = 0;
    BYTE8(v195) = 1;
    *&v196 = v128;
    BYTE8(v196) = BYTE8(v128);
    *&v197 = v129;
    BYTE8(v197) = BYTE8(v129);
    v198 = v130;
    LOBYTE(v199) = 1;
    sub_10000341C(&qword_10025B9C0, &qword_1001D6190);
    sub_10002AF84();
    _ConditionalContent<>.init(storage:)();
    v169 = v137;
    v170 = v138;
    LOBYTE(v171) = v139;
    v168 = v136;
    v167 = v135;
    sub_1000F407C(&v167);
    v163 = v179;
    v164 = v180;
    v165 = v181;
    v166 = v182;
    v160 = v176;
    v161 = v177;
    v162 = v178;
    v155 = v171;
    v156 = v172;
    v157 = v173;
    v158 = v174;
    v159 = v175;
    v151 = v167;
    v152 = v168;
    v153 = v169;
    v154 = v170;
    sub_10000341C(&qword_100262008, &qword_1001D8650);
    sub_10000341C(&qword_100262010, &qword_1001D8658);
    sub_100007120(&qword_100262018, &qword_100262008, &qword_1001D8650, &protocol conformance descriptor for TupleView<A>);
    sub_1000F4088();
    _ConditionalContent<>.init(storage:)();
  }

  v57 = v102;
  sub_1000F3AC4(v110, v102, type metadata accessor for FeedbackView);
  v58 = v100;
  v59 = swift_allocObject();
  sub_1000F3B2C(v57, v59 + v58, type metadata accessor for FeedbackView);
  v60 = v104;
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v61 = v103;
  View.help(_:)();

  sub_10000F500(v60, &qword_100261FE0, &qword_1001D8630);
  v62 = static Color.red.getter();
  v63 = v106;
  sub_1000E42E8(v62, v106);

  v33(v61, v112);
  v64 = v105;
  v65 = v108;
  sub_1000081F8(v105, v108, &qword_100261FF0, &unk_1001D8640);
  v147 = v207;
  v148 = v208;
  v149 = v209;
  v150 = v210;
  v143 = v203;
  v144 = v204;
  v145 = v205;
  v146 = v206;
  v139 = v199;
  v140 = v200;
  v141 = v201;
  v142 = v202;
  v135 = v195;
  v136 = v196;
  v137 = v197;
  v138 = v198;
  v66 = v107;
  sub_1000081F8(v63, v107, &qword_100261FF0, &unk_1001D8640);
  v67 = v109;
  sub_1000081F8(v65, v109, &qword_100261FF0, &unk_1001D8640);
  v68 = sub_10000341C(&qword_100262028, &qword_1001D8660);
  v69 = *(v68 + 48);
  v70 = v148;
  v163 = v147;
  v164 = v148;
  v71 = v149;
  v165 = v149;
  v72 = v143;
  v73 = v144;
  v159 = v143;
  v160 = v144;
  v74 = v145;
  v75 = v146;
  v161 = v145;
  v162 = v146;
  v76 = v139;
  v77 = v140;
  v155 = v139;
  v156 = v140;
  v78 = v141;
  v79 = v142;
  v157 = v141;
  v158 = v142;
  v80 = v135;
  v81 = v136;
  v151 = v135;
  v152 = v136;
  v82 = v137;
  v83 = v138;
  v153 = v137;
  v154 = v138;
  v84 = v67 + v69;
  *(v84 + 192) = v147;
  *(v84 + 208) = v70;
  *(v84 + 224) = v71;
  *(v84 + 128) = v72;
  *(v84 + 144) = v73;
  *(v84 + 160) = v74;
  *(v84 + 176) = v75;
  *(v84 + 64) = v76;
  *(v84 + 80) = v77;
  *(v84 + 96) = v78;
  *(v84 + 112) = v79;
  *v84 = v80;
  *(v84 + 16) = v81;
  v166 = v150;
  *(v84 + 240) = v150;
  *(v84 + 32) = v82;
  *(v84 + 48) = v83;
  sub_1000081F8(v66, v67 + *(v68 + 64), &qword_100261FF0, &unk_1001D8640);
  sub_1000081F8(&v151, &v167, &qword_100262030, &qword_1001D8668);
  sub_10000F500(v63, &qword_100261FF0, &unk_1001D8640);
  sub_10000F500(v64, &qword_100261FF0, &unk_1001D8640);
  sub_10000F500(v66, &qword_100261FF0, &unk_1001D8640);
  v179 = v147;
  v180 = v148;
  v181 = v149;
  v182 = v150;
  v175 = v143;
  v176 = v144;
  v177 = v145;
  v178 = v146;
  v171 = v139;
  v172 = v140;
  v173 = v141;
  v174 = v142;
  v167 = v135;
  v168 = v136;
  v169 = v137;
  v170 = v138;
  sub_10000F500(&v167, &qword_100262030, &qword_1001D8668);
  return sub_10000F500(v65, &qword_100261FF0, &unk_1001D8640);
}