id sub_100017F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  if (dispatch thunk of SettingMetadataProtocol.isPrivacySensitive.getter())
  {
    v19[5] = 0x657463616465523CLL;
    v19[6] = 0xEA00000000003E64;
    v10 = swift_checkMetadataState();
    if (!swift_dynamicCastMetatype() && swift_conformsToProtocol2() && v10)
    {
      dispatch thunk of static Persistable.value(from:)();
      (*(v4 + 16))(v7, v9, AssociatedTypeWitness);
      sub_10000637C(&qword_10007ADB8, &qword_100066680);
      if (swift_dynamicCast())
      {
        sub_100003AA0(&v16._countAndFlagsBits, v19);
        v16._countAndFlagsBits = 0x203A746E756F6320;
        v16._object = 0xE800000000000000;
        sub_100008578(v19, v19[3]);
        v15[1] = dispatch thunk of Collection.count.getter();
        v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v14);

        String.append(_:)(v16);

        (*(v4 + 8))(v9, AssociatedTypeWitness);
        sub_10000210C(v19);
      }

      else
      {
        (*(v4 + 8))(v9, AssociatedTypeWitness);
        v18 = 0;
        v16 = 0;
        v17 = 0u;
        sub_100008630(&v16, &qword_10007ADC0, &qword_100066688);
      }
    }

    v11 = String._bridgeToObjectiveC()();

    return v11;
  }

  else
  {
    v13 = v15[0];

    return v13;
  }
}

unint64_t sub_1000182E8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100018804(a1, a2, v4);
}

unint64_t sub_100018360(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001E110(&qword_10007AD58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v2, &type metadata accessor for UUID, &qword_10007AD60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100018434(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(a1 + 32) & 1);
  v2 = Hasher._finalize()();

  return sub_1000188BC(a1, v2);
}

unint64_t sub_1000184BC(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000189CC(a1, v2);
}

unint64_t sub_100018500(uint64_t a1)
{
  type metadata accessor for WebDomain();
  sub_10001E110(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v2, &type metadata accessor for WebDomain, &qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
}

unint64_t sub_1000185D4(uint64_t a1, __n128 a2)
{
  type metadata accessor for Application();
  sub_10001E110(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v3, &type metadata accessor for Application, &qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
}

unint64_t sub_1000186A8(uint64_t a1)
{
  type metadata accessor for ActivityCategory();
  sub_10001E110(&qword_10007ACF0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v2, &type metadata accessor for ActivityCategory, &qword_10007AD80, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
}

unint64_t sub_10001877C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100018BD8(a1, v4);
}

unint64_t sub_1000187C0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100018CA0(a1, v4);
}

unint64_t sub_100018804(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000188BC(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 40 * v5;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *v11 == v8 && *(v11 + 8) == v9;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v12 == a1[2] && v13 == a1[3];
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == (a1[4] & 1))
        {
          break;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000189CC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100018A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10001E110(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100018BD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001E428(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001E484(v8);
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

unint64_t sub_100018CA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100009638();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_100018D64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007ADC8, &qword_100066690);
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

uint64_t sub_100018E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100018500(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001D9DC(&type metadata accessor for WebDomain, &qword_10007AD90, &qword_100066668);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for WebDomain();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_10004849C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_10001901C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v6 = sub_1000185D4(a1, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001D9DC(&type metadata accessor for Application, &qword_10007AD88, &qword_100066660);
      v10 = v22;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for Application();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v10 + 56);
    v14 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a2, v13 + *(v21 + 72) * v8, v14);
    sub_1000484E4(v8, v10);
    *v4 = v10;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1000191E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000186A8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001D9DC(&type metadata accessor for ActivityCategory, &qword_10007AD78, &qword_100066658);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ActivityCategory();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_10004882C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000193A4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1000187C0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100048A24(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10001E158();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100035710(v4, v7);

  v9 = sub_1000187C0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100048A24(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1000194F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000637C(&qword_10007A268, &qword_100065BA0);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10001E110(&qword_10007AD58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000198CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007A388, &unk_100065BE8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:bytes:count:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100019B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007ADA0, &qword_100066670);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 40 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 24);
      v41 = *(v22 + 16);
      v40 = *(v22 + 32);
      v26 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v40);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v41;
      *(v16 + 24) = v25;
      *(v16 + 32) = v40;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100019E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007ADD0, &qword_100066698);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10001A0C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007A270, &qword_100065BA8);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *(v25 + 8);
      v39 = *(v25 + 16);
      v40 = *v25;
      v37 = *(v25 + 25);
      v38 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v40;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      *(v17 + 24) = v38;
      *(v17 + 25) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10001A398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebDomain();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000637C(&qword_10007AD90, &qword_100066668);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10001E110(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_10001A840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Application();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000637C(&qword_10007AD88, &qword_100066660);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10001E110(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_10001ACE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityCategory();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000637C(&qword_10007AD78, &qword_100066658);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10001E110(&qword_10007ACF0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_10001B190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007A258, &unk_100065B90);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10001B434(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_10000637C(&qword_10007AD68, &qword_100066650);
  v41 = v5;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v37 = v3;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v7 + 16);
    v39 = v7;
    v42 = (v7 + 32);
    v19 = result + 64;
    v40 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v22 = (v17 - 1) & v17;
LABEL_15:
      v25 = v21 | (v13 << 6);
      v43 = v22;
      v26 = *(v7 + 72);
      v27 = *(v10 + 48) + v26 * v25;
      if (v41)
      {
        (*v42)(v44, v27, v6);
      }

      else
      {
        (*v38)(v44, v27, v6);
      }

      v28 = *(*(v10 + 56) + v25);
      sub_10001E110(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v42)(*(v12 + 48) + v26 * v20, v44, v6);
      *(*(v12 + 56) + v20) = v28;
      ++*(v12 + 16);
      v7 = v39;
      v10 = v40;
      v17 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero(v14, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v4 = v12;
  return result;
}

Swift::Int sub_10001B7F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007ADB0, &unk_100066F70);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10001BA5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000637C(&qword_10007ADA8, &qword_100066678);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10001BD04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100018360(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10001D174();
      goto LABEL_7;
    }

    sub_1000194F0(v17, a3 & 1);
    v22 = sub_100018360(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10001CE64(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_10001BED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000184BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100019E3C(v16, a4 & 1);
      result = sub_1000184BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10001D6E0();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void sub_10001C030(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1000182E8(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_10001D848();
      v17 = v25;
      goto LABEL_8;
    }

    sub_10001A0C0(v22, a7 & 1);
    v17 = sub_1000182E8(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;
    *(v28 + 25) = HIBYTE(a4) & 1;
  }

  else
  {
    sub_10001CF1C(v17, a5, a6, a1, a2, a3, a4 & 0x101, v27);
  }
}

uint64_t sub_10001C1B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WebDomain();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100018500(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10001D9DC(&type metadata accessor for WebDomain, &qword_10007AD90, &qword_100066668);
      goto LABEL_7;
    }

    sub_10001A398(v17, a3 & 1);
    v28 = sub_100018500(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10001CF7C(v14, v11, a1, v20, &type metadata accessor for WebDomain);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_10001C3F0(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = type metadata accessor for Application();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v16 = sub_1000185D4(a2, v14);
  v17 = v13[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10001D9DC(&type metadata accessor for Application, &qword_10007AD88, &qword_100066660);
      goto LABEL_7;
    }

    sub_10001A840(v19, a3 & 1);
    v31 = sub_1000185D4(a2, v30);
    if ((v20 & 1) == (v32 & 1))
    {
      v16 = v31;
      v22 = *v5;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v12, a2, v9);
      return sub_10001CF7C(v16, v12, a1, v22, &type metadata accessor for Application);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v5;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

uint64_t sub_10001C62C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ActivityCategory();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000186A8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10001D9DC(&type metadata accessor for ActivityCategory, &qword_10007AD78, &qword_100066658);
      goto LABEL_7;
    }

    sub_10001ACE8(v17, a3 & 1);
    v28 = sub_1000186A8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10001CF7C(v14, v11, a1, v20, &type metadata accessor for ActivityCategory);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_10001C868(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000182E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10001B190(v16, a4 & 1);
      v11 = sub_1000182E8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10001DD34();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_10001C9E0(char a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = type metadata accessor for Application();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v16 = sub_1000185D4(a2, v14);
  v18 = v13[2];
  v19 = (v15 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v15;
  v22 = v13[3];
  if (v22 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v23 = *v5;
    if (v21)
    {
LABEL_8:
      *(v23[7] + v16) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v22 >= result && (a3 & 1) == 0)
  {
    result = sub_10001DEA0(v17);
    goto LABEL_7;
  }

  sub_10001B434(result, a3 & 1, v17);
  result = sub_1000185D4(a2, v24);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
  v23 = *v5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26.n128_f64[0] = (*(v10 + 16))(v12, a2, v9);
  return sub_10001D0BC(v16, v12, a1 & 1, v23, v26);
}

uint64_t sub_10001CB80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000187C0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10001B7F4(v13, a3 & 1);
      v8 = sub_1000187C0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009638();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10001E158();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return _objc_retain_x1();
}

void sub_10001CCE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000182E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10001BA5C(v16, a4 & 1);
      v11 = sub_1000182E8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10001E2B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_10001CE64(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10001CF1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7 & 1;
  *(v9 + 25) = HIBYTE(a7) & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_10001CF7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  v11 = a4[7];
  v12 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a3, v12);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_10001D074(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10001D0BC(unint64_t a1, uint64_t a2, char a3, void *a4, __n128 a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = type metadata accessor for Application();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

char *sub_10001D174()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_10007A268, &qword_100065BA0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10001D3F4()
{
  v1 = v0;
  sub_10000637C(&qword_10007A388, &unk_100065BE8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10001D550()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADA0, &qword_100066670);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 40 * v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v18;
        *(*(v4 + 56) + 8 * v17) = v23;

        result = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_10001D6E0()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADD0, &qword_100066698);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_10001D848()
{
  v1 = v0;
  sub_10000637C(&qword_10007A270, &qword_100065BA8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        LOBYTE(v22) = *(v22 + 25);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
        *(v28 + 25) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

char *sub_10001D9DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = v3;
  v47 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1(0);
  v49 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v36 - v9;
  sub_10000637C(a2, a3);
  v10 = *v3;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }

  return result;
}

id sub_10001DD34()
{
  v1 = v0;
  sub_10000637C(&qword_10007A258, &unk_100065B90);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_10001DEA0(__n128 a1)
{
  v2 = v1;
  v32 = type metadata accessor for Application();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_10007AD68, &qword_100066650);
  v4 = *v1;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v2;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001E110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10001E158()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADB0, &unk_100066F70);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_10001E2B8()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADA8, &qword_100066678);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

Swift::Int sub_10001E4E0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001E54C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_10001E58C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void *sub_10001E674(uint64_t a1)
{
  v2 = a1;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v52 = _swiftEmptyArrayStorage;
  sub_1000577B0(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (v40)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v6 = *(v2 + 36);
  }

  v49 = result;
  v50 = v6;
  v51 = v40 != 0;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v34[1] = v1;
    v7 = 0;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 < 0)
    {
      v8 = v2;
    }

    v36 = v2 + 56;
    v37 = v8;
    v35 = v2 + 64;
    v9 = &type metadata for ApplicationExtensionRecord;
    v38 = v3;
    v39 = v2;
    while (v7 < v3)
    {
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_39;
      }

      v12 = v49;
      v42 = v50;
      v41 = v51;
      sub_10001EE9C(v49, v50, v51, v2);
      v47 = v9;
      v48 = &off_100075FC0;
      v46[0] = v13;
      v52 = v4;
      v15 = v4[2];
      v14 = v4[3];
      v16 = v9;
      v17 = v9;
      if (v15 >= v14 >> 1)
      {
        sub_1000577B0((v14 > 1), v15 + 1, 1);
        v16 = v47;
        v4 = v52;
      }

      v18 = sub_100005AE4(v46, v16);
      __chkstk_darwin(v18);
      v20 = (v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v44 = v17;
      v45 = &off_100075FC0;
      *&v43 = v22;
      v4[2] = v15 + 1;
      sub_100003AA0(&v43, &v4[5 * v15 + 4]);
      result = sub_10000210C(v46);
      v9 = v17;
      if (v40)
      {
        if (!v41)
        {
          goto LABEL_44;
        }

        v23 = __CocoaSet.Index.handleBitPattern.getter();
        v2 = v39;
        if (v23)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v3 = v38;
        sub_10000637C(&qword_10007ADF0, &qword_1000667B0);
        v10 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v10(v46, 0);
      }

      else
      {
        if (v41)
        {
          goto LABEL_45;
        }

        v2 = v39;
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v24 = 1 << *(v39 + 32);
        if (v12 >= v24)
        {
          goto LABEL_40;
        }

        v25 = v12 >> 6;
        v26 = *(v36 + 8 * (v12 >> 6));
        if (((v26 >> v12) & 1) == 0)
        {
          goto LABEL_41;
        }

        if (*(v39 + 36) != v42)
        {
          goto LABEL_42;
        }

        v27 = v26 & (-2 << (v12 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v3 = v38;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          v3 = v38;
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_10001F0C0(v12, v42, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_34;
            }
          }

          result = sub_10001F0C0(v12, v42, 0);
LABEL_34:
          v9 = v17;
        }

        v33 = *(v2 + 36);
        v49 = v24;
        v50 = v33;
        v51 = 0;
      }

      if (v7 == v3)
      {
        sub_10001F0C0(v49, v50, v51);
        return v4;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10001EAA4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001F0CC(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001EAE8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t getEnumTagSinglePayload for ApplicationRecordError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ApplicationRecordError(_WORD *result, int a2, int a3)
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

unint64_t sub_10001EC48()
{
  result = qword_10007ADD8;
  if (!qword_10007ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ADD8);
  }

  return result;
}

uint64_t sub_10001EC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 dataContainerURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void *sub_10001ED40()
{
  v1 = [*v0 applicationExtensionRecords];
  sub_100006820(0, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
  sub_10001EE34();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001E674(v2);

  return v3;
}

uint64_t sub_10001EDDC()
{
  v1 = [*v0 localizedName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10001EE34()
{
  result = qword_10007ADE8;
  if (!qword_10007ADE8)
  {
    sub_100006820(255, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ADE8);
  }

  return result;
}

void sub_10001EE9C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100006820(0, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100006820(0, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10001F0C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001F0CC(uint64_t a1, uint64_t a2)
{
  sub_100006820(0, &qword_10007ADF8, LSBundleRecord_ptr);
  v5 = sub_10001E58C(a1, a2, 0);
  if (!v2)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 containingBundleRecord];
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          a1 = v12;

          return a1;
        }
      }

      sub_100008524();
      a1 = swift_allocError();
      swift_willThrow();
    }

    else
    {
      objc_opt_self();
      a1 = swift_dynamicCastObjCClass();
      if (a1)
      {
        return a1;
      }

      sub_100008524();
      a1 = swift_allocError();
      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_10001F264(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.overrideSettings.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v4;
    v11 = v10;
    v17 = swift_slowAlloc();
    v20 = v17;
    *v11 = 136446466;
    *(v11 + 4) = sub_100001ED8(0xD000000000000040, 0x80000001000693F0, &v20);
    *(v11 + 12) = 2082;
    v19 = a1;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    v12 = String.init<A>(describing:)();
    v14 = a2;
    v15 = sub_100001ED8(v12, v13, &v20);

    *(v11 + 14) = v15;
    a2 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to create or lost connection to remote object proxy for extension with ID %{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v18);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(0, a1);
}

uint64_t sub_10001F57C()
{
  sub_10000210C((v0 + 16));
  sub_10000210C((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_10001F5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.overrideSettings.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a2;
    v11 = v10;
    v19 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100001ED8(0xD000000000000040, 0x80000001000693F0, &v19);
    *(v11 + 12) = 2082;
    v18 = a1;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    v12 = String.init<A>(describing:)();
    v14 = sub_100001ED8(v12, v13, &v19);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to create or lost connection to remote object proxy for extension with ID %{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    a2 = v17;
  }

  (*(v5 + 8))(v7, v4);
  v15 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v15);
}

void sub_10001F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v49[2] = a4;
  v49[1] = a3;
  v60 = a2;
  v62 = a1;
  v8 = type metadata accessor for OverrideSettingsResponse();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v50 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Application();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v63 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = v49 - v14;
  v15 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  __chkstk_darwin(v15 - 8);
  v54 = v49 - v16;
  v55 = swift_allocObject();
  *(v55 + 16) = a6;
  v17 = *(a5 + 80);
  v51 = a5;
  sub_100008578((a5 + 56), v17);
  _Block_copy(a6);
  v56 = a6;
  _Block_copy(a6);
  v18 = sub_100034798();
  v19 = v18;
  v20 = v18 + 56;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 56);
  v24 = (v21 + 63) >> 6;
  v61 = v11 + 32;
  v57 = (v11 + 8);
  v58 = v11 + 16;

  v25 = 0;
  while (v23)
  {
LABEL_11:
    v28 = v59;
    (*(v11 + 16))(v59, *(v19 + 48) + *(v11 + 72) * (__clz(__rbit64(v23)) | (v25 << 6)), v10);
    v29 = *(v11 + 32);
    v30 = v28;
    v31 = v10;
    v29(v63, v30, v10);
    v32 = Application.bundleIdentifier.getter();
    if (v33)
    {
      if (v32 == v62 && v33 == v60)
      {

        goto LABEL_23;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {

LABEL_23:
        v35 = v54;
        v10 = v31;
        v29(v54, v63, v31);
        v34 = 0;
        v36 = v55;
LABEL_16:
        (*(v11 + 56))(v35, v34, 1, v10);

        v37 = (*(v11 + 48))(v35, 1, v10);
        sub_10001FE50(v35);
        if (v37 == 1)
        {
          v39 = v52;
          v38 = v53;
          v40 = v50;
          (*(v52 + 104))(v50, enum case for OverrideSettingsResponse.approved(_:), v53);
          v41 = OverrideSettingsResponse.rawValue.getter();
          (*(v39 + 8))(v40, v38);
          v42 = [objc_allocWithZone(NSNumber) initWithInteger:v41];
          v43 = v56;
          (v56)[2](v56, v42, 0);
        }

        else
        {
          v44 = *sub_100008578((v51 + 16), *(v51 + 40));

          v43 = v56;
          _Block_copy(v56);

          v45 = sub_100026784(0xD000000000000040, 0x80000001000693F0, v44, v43);
          _Block_release(v43);

          if (v45)
          {
            v46 = String._bridgeToObjectiveC()();
            v47 = String._bridgeToObjectiveC()();
            aBlock[4] = sub_10001FE48;
            aBlock[5] = v36;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100055788;
            aBlock[3] = &unk_100076000;
            v48 = _Block_copy(aBlock);

            [v45 askToOverrideUnremovabilityOfApplicationWithBundleIdentifier:v46 teamIdentifier:v47 replyHandler:v48];

            _Block_release(v48);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        _Block_release(v43);
        return;
      }
    }

    v23 &= v23 - 1;
    v10 = v31;
    (*v57)(v63, v31);
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      v34 = 1;
      v35 = v54;
      v36 = v55;
      goto LABEL_16;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10001FE50(uint64_t a1)
{
  v2 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FED0(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = String.init(cString:)();
    sub_100002624(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_10001FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_10001FF84(uint64_t a1)
{
  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x7370756F7247202CLL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  v3._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v3);

  return 0x203A6E656B6F54;
}

void *sub_100020074(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = String.utf8CString.getter();
  v3 = swift_unknownObjectRetain();
  v4 = xpc_dictionary_get_array(v3, (v2 + 32));

  if (!v4)
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  v11 = &_swiftEmptySetSingleton;
  v5 = swift_allocObject();
  *(v5 + 16) = &v11;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100020264;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10002026C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001FF2C;
  aBlock[3] = &unk_1000760F8;
  v7 = _Block_copy(aBlock);

  xpc_array_apply(v4, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v1 = v11;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000202A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a1;
  aBlock[4] = sub_100020A58;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076148;
  v15 = _Block_copy(aBlock);

  a4;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100020EF4(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_100020F3C(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);
}

void sub_100020578(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v41 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v40 - v8;
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  static Logger.nanoSync.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Syncing store data to watch", v14, 2u);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 createAccessorWithDomain:v17];

  if (v18)
  {
    sub_10000637C(&qword_10007AF18, &unk_1000668D0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20 = String._bridgeToObjectiveC()();
    [v18 setObject:isa forKey:v20];

    v21 = [v18 synchronize];
    if (v21)
    {
      v22 = v21;
      v41 = v15;
      static Logger.nanoSync.getter();
      v23 = v22;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v23;
        v43 = v27;
        *v26 = 136446210;
        v40 = v23;
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v28 = String.init<A>(describing:)();
        v30 = v2;
        v31 = sub_100001ED8(v28, v29, &v43);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unable to synchronize accessor after updating sync stores. Error: %{public}s", v26, 0xCu);
        sub_10000210C(v27);

        swift_unknownObjectRelease();
        v32 = v6;
        v33 = v30;
      }

      else
      {

        swift_unknownObjectRelease();
        v32 = v6;
        v33 = v2;
      }

      v41(v32, v33);
    }

    else
    {
      v37 = [objc_opt_self() createManager];
      v38 = String._bridgeToObjectiveC()();
      sub_100020D38(&off_1000756C8);
      sub_100020EA0(&unk_1000756E8);
      v39 = Set._bridgeToObjectiveC()().super.isa;

      [v37 synchronizeNanoDomain:v38 keys:v39];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    static Logger.nanoSync.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to create accessor to update sync stores", v36, 2u);
    }

    v15(v9, v2);
  }
}

uint64_t sub_100020A64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_100020AB0(void *a1, uint64_t a2)
{
  v13 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000AA70();
  v12[2] = a2;
  v12[3] = v9;
  v15 = a1;
  v16 = a2;

  v10._object = 0x8000000100069490;
  v10._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v10);
  v12[1] = v16;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100020EF4(&qword_10007A970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000637C(&unk_10007A370, &qword_100065BD8);
  sub_100020F3C(&qword_10007A980, &unk_10007A370, &qword_100065BD8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v13;
}

Swift::Int sub_100020D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000637C(&qword_10007AF20, &unk_1000668E0);
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

uint64_t sub_100020EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020F3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100020F90(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100020FA4(uint64_t a1, int a2)
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

uint64_t sub_100020FEC(uint64_t result, int a2, int a3)
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

unint64_t sub_10002103C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_100021470(a1, &v15 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  v12 = [v3 _extensionContextForUUID:isa];

  result = 0;
  if (v12)
  {
    result = sub_1000214E0();
    v14 = &off_100076238;
  }

  else
  {
    v14 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v12;
  a2[3] = result;
  a2[4] = v14;
  return result;
}

id sub_1000211C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v10 = 0;
  v6 = [v3 beginExtensionRequestWithOptions:a1 inputItems:v5.super.isa error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_1000212EC(uint64_t a1)
{
  v3 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  sub_100021470(a1, &v12 - v4);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = [v6 pidForRequestIdentifier:isa];

  return v10;
}

uint64_t sub_100021470(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000214E0()
{
  result = qword_10007AF28;
  if (!qword_10007AF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007AF28);
  }

  return result;
}

id sub_10002152C()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10007AF30 = result;
  return result;
}

void sub_100021560()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = String._bridgeToObjectiveC()();
  v3 = *(v0 + 88);
  v5[4] = sub_100023540;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000315B8;
  v5[3] = &unk_100076300;
  v4 = _Block_copy(v5);

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

id sub_10002166C(void *a1, _BYTE *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_100023548;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076328;
  v8 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v8];
  _Block_release(v8);
  if (qword_10007A218 != -1)
  {
    swift_once();
  }

  [qword_10007AF30 lock];
  if (a2[16] != 6)
  {
    sub_10002221C();
  }

  [qword_10007AF30 unlock];
  if (a2[16] == 6)
  {
    return [a1 setTaskCompleted];
  }

  aBlock[0] = 0;
  if ([a1 setTaskExpiredWithRetryAfter:aBlock error:0.0])
  {

    return _objc_retain_x1();
  }

  else
  {
    v20[0] = aBlock[0];
    v10 = aBlock[0];
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.migrator.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = v5;
      v15 = v14;
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v20[1] = v11;
      swift_errorRetain();
      sub_10000637C(&qword_10007A380, &qword_100065BE0);
      v17 = String.init<A>(describing:)();
      v19 = sub_100001ED8(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to expire task with error: %{public}s", v15, 0xCu);
      sub_10000210C(v16);

      (*(v20[0] + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    [a1 setTaskCompleted];
  }
}

uint64_t sub_100021A64()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_100023484;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_1000762D8;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100023494(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_1000234DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

id sub_100021CE8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v31 - v6;
  v8 = objc_opt_self();
  v9 = [v8 sharedScheduler];
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 taskRequestForIdentifier:v12];

  if (v13)
  {

    v14 = [v8 sharedScheduler];
    v15 = String._bridgeToObjectiveC()();
    v35 = 0;
    v16 = [v14 cancelTaskRequestWithIdentifier:v15 error:&v35];

    v17 = v35;
    if (v16)
    {

      return v17;
    }

    else
    {
      v31[1] = v35;
      v23 = v35;
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.migrator.getter();

      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v27 = 136446466;
        *(v27 + 4) = sub_100001ED8(v10, v11, &v35);
        *(v27 + 12) = 2080;
        v34 = v24;
        swift_errorRetain();
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v28 = String.init<A>(describing:)();
        v30 = sub_100001ED8(v28, v29, &v35);

        *(v27 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to cancel task with identifier %{public}s. Error: %s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v32 + 8))(v5, v33);
    }
  }

  else
  {
    static Logger.migrator.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100001ED8(v10, v11, &v35);
      _os_log_impl(&_mh_execute_header, v19, v20, "No task scheduled with identifier %{public}s", v21, 0xCu);
      sub_10000210C(v22);
    }

    return (*(v32 + 8))(v7, v33);
  }
}

id sub_100022170(char a1)
{
  if (qword_10007A218 != -1)
  {
    swift_once();
  }

  [qword_10007AF30 lock];
  if (*(v1 + 16) != 6)
  {
    sub_10002221C();
    if ((a1 & 1) != 0 && *(v1 + 16) == 6)
    {
      sub_100021A64();
    }
  }

  v3 = qword_10007AF30;

  return [v3 unlock];
}

void sub_10002221C()
{
  v1 = v0;
  v56 = type metadata accessor for URL();
  v2 = *(v56 - 8);
  v3 = __chkstk_darwin(v56);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v46 - v6;
  v8 = type metadata accessor for Logger();
  v9 = __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v47 = &v46 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = &v46 - v15;
  __chkstk_darwin(v14);
  v19 = &v46 - v17;
  if (*(v1 + 17))
  {
LABEL_2:
    *(v1 + 17) = 0;
    return;
  }

  v20 = (v16 + 8);
  v54 = (v2 + 8);
  LOBYTE(v16) = *(v1 + 16);
  v18.n128_u64[0] = 136446210;
  v53 = v18;
  v18.n128_u64[0] = 136446466;
  v48 = v18;
  v50 = &v46 - v17;
  v51 = v5;
  v49 = v7;
  v55 = v11;
  while (1)
  {
    if (v16 <= 2u)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          sub_10003E3E8(v18);
          LOBYTE(v16) = 2;
        }

        else
        {
          sub_100040550();
          LOBYTE(v16) = 3;
        }
      }

      else
      {
        static Logger.migrator.getter();

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v57 = v24;
          *v23 = v53.n128_u32[0];
          *(v23 + 4) = sub_100001ED8(*(v1 + 72), *(v1 + 80), &v57);
          _os_log_impl(&_mh_execute_header, v21, v22, "PostInstallMigrator migration start for %{public}s", v23, 0xCu);
          sub_10000210C(v24);
        }

        v25 = *v20;
        (*v20)(v19, v8);
        if (([objc_opt_self() isUpgradeDisposition] & 1) != 0 || (type metadata accessor for Persistence(), sub_100008578((v1 + 24), *(v1 + 48)), v28 = v49, dispatch thunk of Locatable.dataVersionPath.getter(), static Persistence.dataVersion(from:)(), v33 = v32, (*v54)(v28, v56), (v33 & 1) == 0))
        {
          type metadata accessor for Persistence();
          sub_100008578((v1 + 24), *(v1 + 48));
          v26 = v51;
          dispatch thunk of Locatable.dataVersionPath.getter();
          v27 = static Persistence.dataVersion(from:)();
          v30 = v29;
          v31 = v27;
          (*v54)(v26, v56);
          LOBYTE(v16) = 1;
          if ((v30 & 1) == 0 && v31 <= 4)
          {
            v16 = 0x603030301uLL >> (8 * v31);
          }
        }

        else
        {
          v34 = v52;
          static Logger.migrator.getter();

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = v34;
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v57 = v39;
            *v38 = v53.n128_u32[0];
            *(v38 + 4) = sub_100001ED8(*(v1 + 72), *(v1 + 80), &v57);
            _os_log_impl(&_mh_execute_header, v35, v36, "Disposition is not an upgrade. Skipping migration for %{public}s", v38, 0xCu);
            sub_10000210C(v39);

            v40 = v37;
            v19 = v50;
          }

          else
          {

            v40 = v34;
          }

          v25(v40, v8);
          LOBYTE(v16) = 5;
        }
      }

      goto LABEL_6;
    }

    if (v16 <= 4u)
    {
      if (v16 == 3)
      {
        sub_10003D780();
        LOBYTE(v16) = 4;
      }

      else
      {
        sub_10003BE20();
        LOBYTE(v16) = 5;
      }

      goto LABEL_6;
    }

    if (v16 != 5)
    {
      break;
    }

    sub_100022A78();
    LOBYTE(v16) = 6;
LABEL_6:
    *(v1 + 16) = v16;
    if (*(v1 + 17))
    {
      goto LABEL_2;
    }
  }

  v41 = v47;
  static Logger.migrator.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = v53.n128_u32[0];
    *(v44 + 4) = sub_100001ED8(*(v1 + 72), *(v1 + 80), &v57);
    _os_log_impl(&_mh_execute_header, v42, v43, "PostInstallMigrator migration end for %{public}s", v44, 0xCu);
    sub_10000210C(v45);
  }

  (*v20)(v41, v8);
}

uint64_t sub_100022A78()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CocoaError.Code();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = __chkstk_darwin(v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v42 = &v40 - v10;
  v11 = __chkstk_darwin(v9);
  v45 = &v40 - v12;
  v13 = __chkstk_darwin(v11);
  v46 = &v40 - v14;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v47 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v40 - v21;
  static Logger.migrator.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v1;
    v26 = v18;
    v27 = v17;
    v28 = v25;
    v29 = swift_slowAlloc();
    v53 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_100001ED8(v3[9], v3[10], &v53);
    _os_log_impl(&_mh_execute_header, v23, v24, "Write new data version for %{public}s", v28, 0xCu);
    sub_10000210C(v29);

    v17 = v27;
    v18 = v26;
    v2 = v41;
  }

  v44 = *(v18 + 8);
  v44(v22, v17);
  type metadata accessor for Persistence();
  sub_100008578(v3 + 3, v3[6]);
  dispatch thunk of Locatable.dataVersionPath.getter();
  static Persistence.write(dataVersion:to:)();
  if (v2)
  {
    v40 = v17;
    v30 = v16;
    v31 = v52;
    v41 = *(v51 + 8);
    v41(v30, v52);
    swift_errorRetain();
    v32 = v48;
    static CocoaError.fileNoSuchFile.getter();
    sub_100023494(&qword_10007A460, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v33 = v50;
    v34 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v49 + 8))(v32, v33);
    if ((v34 & 1) == 0)
    {
      return result;
    }

    v50 = v18;

    sub_100008578(v3 + 3, v3[6]);
    v36 = v45;
    dispatch thunk of Locatable.dataVersionDirectory.getter();
    static Persistence.createDirectory(at:)();
    v38 = v41;
    v41(v36, v31);
    sub_100008578(v3 + 3, v3[6]);
    v39 = v42;
    dispatch thunk of Locatable.dataVersionPath.getter();
    static Persistence.write(dataVersion:to:)();
    v38(v39, v31);
  }

  else
  {
    v50 = v18;
    v38 = *(v51 + 8);
    v38(v16, v52);
  }

  sub_100008578(v3 + 3, v3[6]);
  v37 = v46;
  dispatch thunk of Locatable.dataVersionPath.getter();
  static Persistence.setFileAttributes(of:)();
  return (v38)(v37, v52);
}

uint64_t sub_100023268()
{
  sub_10000210C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MigrationStep(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MigrationStep(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100023430()
{
  result = qword_10007B070;
  if (!qword_10007B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B070);
  }

  return result;
}

uint64_t sub_100023494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000234DC()
{
  result = qword_10007B290;
  if (!qword_10007B290)
  {
    sub_100006914(&qword_10007AF10, &unk_1000670A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B290);
  }

  return result;
}

uint64_t sub_100023564(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100002624(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int ExtensionError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t ExtensionFinder.__allocating_init(extensionPointName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006820(0, &qword_10007A220, NSExtension_ptr);
  type metadata accessor for ExtensionFinder();
  v5 = swift_allocObject();
  sub_100023798(v4, a1, a2);
  return v5;
}

uint64_t sub_100023798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = xmmword_100066AA0;
  *(v3 + 64) = 0x3FE0000000000000;
  *(v3 + 72) = 0xD00000000000002FLL;
  *(v3 + 80) = 0x8000000100068A10;
  *(v3 + 88) = 0xD000000000000038;
  *(v3 + 96) = 0x8000000100068A40;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  *(v3 + 16) = a2;
  sub_10000637C(&qword_10007B2E0, &unk_100067080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066AB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "SettingsGroups");
  *(inited + 95) = -18;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD00000000000003DLL;
  *(inited + 136) = 0x80000001000696C0;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;

  v8 = sub_100005B34(inited);
  swift_setDeallocating();
  sub_10000637C(&unk_10007A280, &qword_100066D10);
  swift_arrayDestroy();
  *(v3 + 40) = v8;
  return v3;
}

void *ExtensionFinder.extensions.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v34 - v6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10002400C(*(v0 + 40));
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35 = 0;
  v10 = [ObjCClassFromMetadata extensionsWithMatchingAttributes:isa error:&v35];

  v11 = v35;
  if (v10)
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;

    v14 = sub_100024440(v12);
    if (v14)
    {
      v15 = v14;

      return v15;
    }

    static Logger.agent.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136446210;
      v30 = Array.description.getter();
      v32 = v31;

      v33 = sub_100001ED8(v30, v32, &v35);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid matching extensions %{public}s", v28, 0xCu);
      sub_10000210C(v29);
    }

    else
    {
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v17 = v35;
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.agent.getter();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136446210;
      v34[0] = v18;
      swift_errorRetain();
      sub_10000637C(&qword_10007A380, &qword_100065BE0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100001ED8(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to match extensions: %{public}s", v21, 0xCu);
      sub_10000210C(v22);
    }

    (*(v2 + 8))(v5, v1);
  }

  return _swiftEmptyArrayStorage;
}

void sub_100023D44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000637C(&qword_10007B2A0, &qword_100065BC0);
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100002614(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100002614(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100002614(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10002400C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000637C(&qword_10007B2A0, &qword_100065BC0);
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100001FA4(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100002614(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100002614(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100002614(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
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
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100002614(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t *sub_1000242D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000577F0(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100001FA4(i, v10);
      sub_10000637C(&qword_10007B258, &qword_100067210);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_100003AA0(v8, v11);
      sub_100003AA0(v11, v8);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000577F0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_100003AA0(v8, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_100008630(v8, &qword_10007B298, qword_100066CA0);
    return 0;
  }

  return v3;
}

void *sub_100024440(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100001FA4(i, v5);
    sub_100006820(0, &qword_10007A220, NSExtension_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *ExtensionFinder.extensionsForGroups(_:)(uint64_t a1)
{

  v2 = sub_100026624(v1);

  v3 = ExtensionFinder.extensions.getter();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v18 = _swiftEmptyArrayStorage;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = sub_1000246DC(v8, v2);
    v13 = v12;

    ++v7;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000262B8(0, v18[2] + 1, 1, v18);
      }

      v15 = v18[2];
      v14 = v18[3];
      if (v15 >= v14 >> 1)
      {
        v18 = sub_1000262B8((v14 > 1), v15 + 1, 1, v18);
      }

      v18[2] = v15 + 1;
      v16 = &v18[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v7 = v10;
    }
  }

  return v18;
}

id sub_1000246DC(void *a1, uint64_t a2)
{
  result = [a1 attributes];
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = result;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v16, "SettingsGroups");
  HIBYTE(v16[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (*(v6 + 16) && (v7 = sub_10001877C(&v17), (v8 & 1) != 0))
  {
    sub_100001FA4(*(v6 + 56) + 32 * v7, v18);
    sub_10001E484(&v17);

    sub_10000637C(&qword_10007B2D8, &unk_100066D00);
    if (swift_dynamicCast())
    {
      v9 = sub_100026624(v16[0]);

      v10 = sub_10000DF68(a2, v9);
      v11 = v10;
      v12 = *(v10 + 16);
      if (!v12)
      {

        if (_swiftEmptyArrayStorage[2])
        {
          goto LABEL_8;
        }

LABEL_13:

        return 0;
      }

      v13 = sub_1000479A4(*(v10 + 16), 0);
      v14 = sub_10004DB84(&v17, v13 + 4, v12, v11);
      result = sub_100003AB8(v17);
      if (v14 == v12)
      {
        if (v13[2])
        {
LABEL_8:
          v15 = a1;
          return a1;
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }
  }

  else
  {

    sub_10001E484(&v17);
  }

  return 0;
}

void *sub_1000248D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024A98(v11, a1, *(v3 + 72), *(v3 + 80), a2, a3, *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    v6 = result;
    sub_100002614(v11, &v9);
    v10 = v6;
    sub_10000637C(&qword_10007B2A8, &unk_100066CB8);
    sub_10000637C(&qword_10007B2B8, &unk_100066CD8);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      sub_100026724();
      swift_allocError();
      *v7 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1000249B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024A98(v11, a1, *(v3 + 88), *(v3 + 96), a2, a3, *(v3 + 48), *(v3 + 64));
  if (!v4)
  {
    v6 = result;
    sub_100002614(v11, &v9);
    v10 = v6;
    sub_10000637C(&qword_10007B2A8, &unk_100066CB8);
    sub_10000637C(&qword_10007B2B0, &unk_100066CC8);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      sub_100026724();
      swift_allocError();
      *v7 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_100024A98(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v101 = a6;
  v100 = a5;
  v93 = a1;
  v13 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v14 = __chkstk_darwin(v13 - 8);
  v94 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v95 = (v87 - v16);
  v98 = type metadata accessor for UUID();
  v97 = *(v98 - 8);
  v17 = __chkstk_darwin(v98);
  v92 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v18;
  __chkstk_darwin(v17);
  v96 = v87 - v19;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_10007B230, &qword_100066C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065C80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v25;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v26;
  v27 = *sub_100008578(a2, a2[3]);

  v28 = [v27 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = URL.path.getter();
  v31 = v30;
  (*(v21 + 8))(v23, v20);
  *(inited + 80) = v29;
  *(inited + 88) = v31;
  v32 = sub_100006504(inited);
  swift_setDeallocating();
  sub_10000637C(&qword_10007B238, &unk_100066C68);
  swift_arrayDestroy();
  sub_100023D44(v32);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = &type metadata for Any;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&aBlock = 0;
  v36 = [ObjCClassFromMetadata extensionsWithMatchingAttributes:isa error:&aBlock];

  v37 = aBlock;
  if (!v36)
  {
    v73 = aBlock;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return v34;
  }

  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v37;

  v40 = sub_1000242D4(v38);

  if (!v40)
  {
LABEL_12:
    sub_100026724();
    swift_allocError();
    *v74 = 2;
    goto LABEL_13;
  }

  if (!v40[2])
  {

    goto LABEL_12;
  }

  sub_10000695C((v40 + 4), &aBlock);

  sub_100003AA0(&aBlock, v108);
  sub_10000695C(v108, &aBlock);
  v41 = swift_allocObject();
  sub_100003AA0(&aBlock, v41 + 16);
  v42 = v101;
  *(v41 + 56) = v100;
  *(v41 + 64) = v42;

  v34 = sub_100026F98(sub_100026778, v41, a7);

  v43 = v109;
  v44 = v110;
  sub_100008578(v108, v109);
  v45 = v99;
  v46 = (v44[1])(1, 0, v43, v44);
  if (v45)
  {
LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    sub_10000210C(v108);
    return v34;
  }

  *&aBlock = v46;
  sub_10000637C(&qword_10007B248, &qword_100066C78);
  v47 = v95;
  v48 = v98;
  v49 = swift_dynamicCast();
  v50 = v97;
  v51 = *(v97 + 56);
  if ((v49 & 1) == 0)
  {
    v51(v47, 1, 1, v48);
    sub_100008630(v47, &unk_10007B400, &unk_100066D80);
    sub_100026724();
    swift_allocError();
    *v75 = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v51(v47, 0, 1, v48);
  v52 = *(v50 + 32);
  v53 = v96;
  v89 = v50 + 32;
  v88 = v52;
  v52(v96, v47, v48);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v54 = v109;
  v99 = v110;
  sub_100008578(v108, v109);
  v55 = v50 + 16;
  v56 = *(v50 + 16);
  v57 = v94;
  v58 = v53;
  v59 = v55;
  v90 = v56;
  v56(v94, v58, v48);
  v95 = v51;
  v51(v57, 0, 1, v48);
  v99[3](v107, v57, v54);
  sub_100008630(v57, &unk_10007B400, &unk_100066D80);
  sub_100027590(v107, &aBlock);
  v60 = v104;
  if (!v104)
  {
    sub_100008630(&aBlock, &qword_10007B250, &unk_100066C80);
    goto LABEL_19;
  }

  v61 = v105;
  sub_100008578(&aBlock, v104);
  v62 = (*(v61 + 8))(v60, v61);
  sub_10000210C(&aBlock);
  if (!v62)
  {
LABEL_19:
    sub_100026724();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100008630(v107, &qword_10007B250, &unk_100066C80);
    (*(v97 + 8))(v96, v98);
    goto LABEL_16;
  }

  v99 = v62;
  v63 = v109;
  v64 = v110;
  sub_100008578(v108, v109);
  v65 = v94;
  v66 = v59;
  v67 = v98;
  v68 = v90;
  v87[1] = v66;
  v90(v94, v96, v98);
  v95(v65, 0, 1, v67);
  (v64)[4](v65, v63, v64);
  sub_100008630(v65, &unk_10007B400, &unk_100066D80);
  if (BSPIDIsBeingDebugged())
  {
    v69 = v97;
    v70 = v96;
    v71 = v100;
    v72 = v101;
  }

  else
  {
    sub_10000695C(v108, &aBlock);
    v78 = v98;
    v79 = v92;
    v68(v92, v96, v98);
    v69 = v97;
    v80 = (*(v97 + 80) + 56) & ~*(v97 + 80);
    v81 = (v91 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    sub_100003AA0(&aBlock, v82 + 16);
    v88(v82 + v80, v79, v78);
    v83 = (v82 + v81);
    v71 = v100;
    v72 = v101;
    *v83 = v100;
    v83[1] = v72;

    v84 = sub_100026F98(sub_100027600, v82, a8);

    swift_unknownObjectRelease();
    v34 = v84;
    v70 = v96;
  }

  v105 = v71;
  v106 = v72;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v103 = sub_100025B00;
  v104 = &unk_100076468;
  v85 = _Block_copy(&aBlock);

  v86 = [v99 synchronousRemoteObjectProxyWithErrorHandler:v85];
  _Block_release(v85);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100008630(v107, &qword_10007B250, &unk_100066C80);
  (*(v69 + 8))(v70, v98);
  sub_10000210C(v108);
  return v34;
}

uint64_t sub_1000255EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.agent.getter();
  sub_10000695C(a1, v28);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24[1] = a3;
    v15 = v14;
    v27 = v14;
    *v13 = 136446210;
    sub_10000695C(v28, v26);
    sub_10000637C(&qword_10007B258, &qword_100067210);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    sub_10000210C(v28);
    v19 = sub_100001ED8(v16, v18, &v27);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Killing %{public}s because it took too long to start.", v13, 0xCu);
    sub_10000210C(v15);

    a2 = v25;
  }

  else
  {

    sub_10000210C(v28);
  }

  (*(v7 + 8))(v9, v6);
  v20 = a1[3];
  v21 = a1[4];
  sub_100008578(a1, v20);
  (*(v21 + 40))(9, v20, v21);
  sub_100026724();
  swift_allocError();
  *v22 = 4;
  a2();
}

uint64_t sub_10002586C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v28 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.agent.getter();
  sub_10000695C(a1, v31);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a4;
    v16 = v15;
    v30 = v15;
    *v14 = 136446210;
    sub_10000695C(v31, v29);
    sub_10000637C(&qword_10007B258, &qword_100067210);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    sub_10000210C(v31);
    v20 = sub_100001ED8(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Canceling request to %{public}s because it exceeded its allowed time.", v14, 0xCu);
    sub_10000210C(v16);

    a3 = v27;
  }

  else
  {

    sub_10000210C(v31);
  }

  (*(v8 + 8))(v10, v7);
  v21 = a1[3];
  v22 = a1[4];
  sub_100008578(a1, v21);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v22 + 16))(isa, v21, v22);

  sub_100026724();
  swift_allocError();
  *v24 = 4;
  a3();
}

void sub_100025B00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100025B68()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10002769C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_100020F3C(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void *ExtensionFinder.deinit()
{

  return v0;
}

uint64_t ExtensionFinder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_100025CC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000637C(&unk_10007B200, &unk_100066C30);
  v10 = *(sub_10000637C(&qword_10007A468, &qword_100065C10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000637C(&qword_10007A468, &qword_100065C10) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100025EB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000637C(&qword_10007B1F8, &qword_100066C28);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100026090(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B1E8, &qword_100066C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000261AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&unk_10007B220, &unk_100066C50);
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

void *sub_1000262B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000637C(&qword_10007B2C8, &qword_100066CF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000637C(&qword_10007B2D0, &qword_100066CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000263EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B1F0, &qword_100066C20);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000264F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000637C(&unk_10007B210, &unk_100066C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000637C(&qword_10007AF18, &unk_1000668D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100026624(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100002624(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1000266C0()
{
  result = qword_10007B080;
  if (!qword_10007B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B080);
  }

  return result;
}

unint64_t sub_100026724()
{
  result = qword_10007B240;
  if (!qword_10007B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B240);
  }

  return result;
}

uint64_t sub_100026784(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = __chkstk_darwin(v8 - 8);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for UUID();
  v55 = *(v13 - 8);
  v56 = v13;
  __chkstk_darwin(v13);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10001FE48;
  *(v16 + 24) = v15;
  v57 = v16;
  sub_10000637C(&qword_10007B230, &qword_100066C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065C80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  v19 = a3[3];
  *(inited + 48) = a3[2];
  *(inited + 56) = v19;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v20;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  _Block_copy(a4);
  _Block_copy(a4);

  v21 = sub_100006504(inited);
  swift_setDeallocating();
  sub_10000637C(&qword_10007B238, &unk_100066C68);
  swift_arrayDestroy();
  sub_100023D44(v21);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v58 = 0;
  v24 = [ObjCClassFromMetadata extensionsWithMatchingAttributes:isa error:&v58];

  v25 = v58;
  if (!v24)
  {
    v31 = v58;
    v32 = _convertNSErrorToError(_:)();

LABEL_8:
    swift_willThrow();
    goto LABEL_15;
  }

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v25;

  v28 = sub_1000242D4(v26);

  if (!v28)
  {
LABEL_7:
    sub_100026724();
    v32 = swift_allocError();
    *v33 = 2;
    goto LABEL_8;
  }

  if (!v28[2])
  {

    goto LABEL_7;
  }

  sub_10000695C((v28 + 4), &v58);

  sub_100003AA0(&v58, v64);
  v29 = v65;
  v30 = v66;
  sub_100008578(v64, v65);
  *&v58 = (*(v30 + 8))(0, 0, v29, v30);
  sub_10000637C(&qword_10007B248, &qword_100066C78);
  v34 = v56;
  v35 = swift_dynamicCast();
  v36 = v55;
  v37 = *(v55 + 56);
  if ((v35 & 1) == 0)
  {
    v37(v12, 1, 1, v34);
    sub_100008630(v12, &unk_10007B400, &unk_100066D80);
    sub_100026724();
    v32 = swift_allocError();
    *v48 = 3;
    swift_willThrow();
    sub_10000210C(v64);
    goto LABEL_15;
  }

  v37(v12, 0, 1, v34);
  v38 = v54;
  (*(v36 + 32))(v54, v12, v34);
  v51 = v66;
  v52 = v65;
  sub_100008578(v64, v65);
  v39 = *(v36 + 16);
  v40 = v53;
  v39(v53, v38, v34);
  v37(v40, 0, 1, v34);
  (*(v51 + 24))(v63, v40, v52);
  sub_100008630(v40, &unk_10007B400, &unk_100066D80);
  sub_100027590(v63, &v58);
  v41 = v60;
  if (!v60)
  {
    sub_100008630(&v58, &qword_10007B250, &unk_100066C80);
    goto LABEL_18;
  }

  v42 = v61;
  sub_100008578(&v58, v60);
  v43 = (*(v42 + 1))(v41, v42);
  sub_10000210C(&v58);
  if (!v43)
  {
LABEL_18:
    sub_100026724();
    v32 = swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_100008630(v63, &qword_10007B250, &unk_100066C80);
    (*(v55 + 8))(v54, v56);
    sub_10000210C(v64);
    goto LABEL_15;
  }

  v61 = sub_1000276E4;
  v62 = v57;
  *&v58 = _NSConcreteStackBlock;
  *(&v58 + 1) = 1107296256;
  v59 = sub_100025B00;
  v60 = &unk_100076508;
  v44 = _Block_copy(&v58);

  v45 = [v43 synchronousRemoteObjectProxyWithErrorHandler:v44];
  _Block_release(v44);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100008630(v63, &qword_10007B250, &unk_100066C80);
  (*(v55 + 8))(v54, v56);
  sub_10000210C(v64);
  sub_10000637C(&qword_10007B2C0, &qword_100066CE8);
  if (swift_dynamicCast())
  {
    v46 = v58;

    _Block_release(a4);
    return v46;
  }

  sub_100026724();
  v32 = swift_allocError();
  *v50 = 0;
LABEL_15:
  _Block_copy(a4);
  sub_10001F5E0(v32, a4);
  _Block_release(a4);

  _Block_release(a4);
  return 0;
}

uint64_t sub_100026F98(uint64_t a1, uint64_t a2, double a3)
{
  v35 = a2;
  v44 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v35 - v11;
  v38 = type metadata accessor for DispatchTime();
  v51 = *(v38 - 8);
  v12 = __chkstk_darwin(v38);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = &v35 - v15;
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006820(0, &qword_10007B260, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002769C(&qword_10007B268, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000637C(&qword_10007B270, &unk_100066C90);
  sub_100020F3C(&qword_10007B278, &qword_10007B270, &unk_100066C90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v17 + 8))(v19, v16);
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  v22 = v37;
  + infix(_:_:)();
  v23 = *(v51 + 8);
  v51 += 8;
  v36 = v23;
  v24 = v38;
  v23(v14, v38);
  v26 = v41;
  v25 = v42;
  v27 = *(v42 + 104);
  v28 = v43;
  v27(v41, enum case for DispatchTimeInterval.never(_:), v43);
  *v10 = 0;
  v27(v10, enum case for DispatchTimeInterval.nanoseconds(_:), v28);
  v39 = v20;
  v40 = ObjectType;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v29 = *(v25 + 8);
  v29(v10, v28);
  v29(v26, v28);
  v36(v22, v24);
  if (v44)
  {
    aBlock[4] = v44;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020A64;
    aBlock[3] = &unk_100076490;
    v30 = _Block_copy(aBlock);
  }

  else
  {
    v30 = 0;
  }

  v31 = v45;
  static DispatchQoS.unspecified.getter();
  v32 = v48;
  sub_100025B68();
  v33 = v39;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v30);
  (*(v49 + 8))(v32, v50);
  (*(v46 + 8))(v31, v47);
  OS_dispatch_source.resume()();
  return v33;
}

uint64_t sub_100027590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&qword_10007B250, &unk_100066C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027600()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_10002586C((v0 + 16), v0 + v2, v4, v5);
}

uint64_t sub_10002769C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Dictionary<>.incorporate(persistableKeysAndValues:scope:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v71 = type metadata accessor for Logger();
  v5 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SettingScope();
  __chkstk_darwin(v77);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v75 = (v7 + 8);
  v70 = (v5 + 8);

  v14 = 0;
  v15 = 0;
  *&v16 = 136446210;
  v69 = v16;
  v74 = v3;
  while (v12)
  {
LABEL_10:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v18 | (v14 << 6);
    v20 = (*(a1 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(a1 + 56) + 8 * v19);

    v24 = v23;
    static SettingMetadataDirectory.metadata(for:)();
    if (v15)
    {

      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      sub_100027D78(&v82);
      v15 = 0;
    }

    else
    {
      v80 = v24;
      v81 = v21;
      v79 = 0;
      v25 = a1;
      sub_100003AA0(&v82, v85);
      sub_100008578(v85, v86);
      v26 = v76;
      dispatch thunk of SettingMetadataProtocol.scope.getter();
      sub_100027DE0();
      v27 = v77;
      v28 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*v75)(v26, v27);
      if (v28)
      {

        sub_10000210C(v85);
        a1 = v25;
        v15 = v79;
      }

      else
      {
        v29 = v74;
        v30 = *v74;
        v31 = *(*v74 + 16);
        v73 = v25;
        if (v31 && (v32 = sub_1000182E8(v81, v22), (v33 & 1) != 0))
        {
          v34 = *(*(v30 + 56) + 8 * v32);
          sub_100008578(v85, v86);
          v35 = v34;
          dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
          sub_100008578(&v82, *(&v83 + 1));
          v36 = v80;
          v37 = CombineOperator.combinePeristableValues(_:_:scope:)();
          sub_10000210C(&v82);
          if (v37)
          {
            v38 = v74;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v82 = *v38;
            sub_10001C868(v37, v81, v22, isUniquelyReferenced_nonNull_native);

            *v38 = v82;
            a1 = v73;
            goto LABEL_28;
          }

          v58 = v72;
          static Logger.effective.getter();

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v68 = v59;
            v62 = v61;
            v63 = swift_slowAlloc();
            *&v82 = v63;
            *v62 = v69;
            v64 = sub_100001ED8(v81, v22, &v82);

            *(v62 + 4) = v64;
            v65 = v68;
            _os_log_impl(&_mh_execute_header, v68, v60, "Failed to combine setting values for %{public}s", v62, 0xCu);
            sub_10000210C(v63);

            (*v70)(v72, v71);
          }

          else
          {

            (*v70)(v58, v71);
          }

          a1 = v73;
          v15 = v79;
          sub_10000210C(v85);
        }

        else
        {
          v40 = swift_isUniquelyReferenced_nonNull_native();
          *&v82 = *v29;
          v41 = v82;
          v43 = sub_1000182E8(v81, v22);
          v44 = *(v41 + 16);
          v45 = (v42 & 1) == 0;
          v46 = v44 + v45;
          if (__OFADD__(v44, v45))
          {
            goto LABEL_35;
          }

          v47 = v42;
          if (*(v41 + 24) >= v46)
          {
            if ((v40 & 1) == 0)
            {
              sub_10001DD34();
            }
          }

          else
          {
            sub_10001B190(v46, v40);
            v48 = sub_1000182E8(v81, v22);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_37;
            }

            v43 = v48;
          }

          a1 = v73;
          v50 = v80;
          v51 = v82;
          if (v47)
          {
            v52 = *(v82 + 56);
            v53 = *(v52 + 8 * v43);
            *(v52 + 8 * v43) = v80;
          }

          else
          {
            *(v82 + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v54 = (v51[6] + 16 * v43);
            *v54 = v81;
            v54[1] = v22;
            *(v51[7] + 8 * v43) = v50;
            v55 = v51[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_36;
            }

            v51[2] = v57;
          }

          *v74 = v51;
LABEL_28:
          sub_10000210C(v85);
          v15 = v79;
        }
      }
    }
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100027D78(uint64_t a1)
{
  v2 = sub_10000637C(&qword_10007AC50, &unk_1000672E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100027DE0()
{
  result = qword_10007B2E8;
  if (!qword_10007B2E8)
  {
    type metadata accessor for SettingScope();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B2E8);
  }

  return result;
}

uint64_t sub_100027E38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_listener];
  [v2 setDelegate:v1];
  [v2 activate];
  v3 = *&v1[OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_publisherListener];
  [v3 setDelegate:v1];
  NSXPCListener.setNonLaunching(_:)(1);
  [v3 activate];
  sub_100021560();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_10003146C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10002A394;
  v7[3] = &unk_100076918;
  v5 = _Block_copy(v7);
  v1;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v5);
  _Block_release(v5);
  return sub_10000C2E0();
}

uint64_t sub_100027F94(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___shieldExtension;
  if (*(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___shieldExtension))
  {
    v4 = *(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___shieldExtension);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
    v6 = *(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
    sub_10000695C(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_extensionFinder, v14);
    v7 = sub_100005AE4(v14, v14[3]);
    __chkstk_darwin(v7);
    v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;

    v4 = sub_10002A818(v5, v6, v11);
    sub_10000210C(v14);
    *(v2 + v3) = v4;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

void *sub_100028108(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___overrideSettingsExtension;
  if (*(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___overrideSettingsExtension))
  {
    v4 = *(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___overrideSettingsExtension);
  }

  else
  {
    v25 = *(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
    v5 = v25;
    sub_10000695C(v2 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_extensionFinder, v31);
    v6 = sub_100005AE4(v31, v31[3]);
    v26 = &v24;
    __chkstk_darwin(v6);
    v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for EffectiveSettings();
    v30[3] = v11;
    v30[4] = &off_100076A48;
    v30[0] = v5;
    v12 = type metadata accessor for ExtensionFinder();
    v28 = v12;
    v29 = &off_100076350;
    v27[0] = v10;
    type metadata accessor for OverrideSettingsExtension();
    v4 = swift_allocObject();
    v13 = sub_100005AE4(v30, v11);
    __chkstk_darwin(v13);
    v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_100005AE4(v27, v28);
    __chkstk_darwin(v17);
    v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v15;
    v22 = *v19;
    v4[10] = v11;
    v4[11] = &off_100076A48;
    v4[7] = v21;
    v4[5] = v12;
    v4[6] = &off_100076350;
    v4[2] = v22;

    sub_10000210C(v27);
    sub_10000210C(v30);
    sub_10000210C(v31);
    *(v2 + v3) = v4;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

double sub_100028434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_overrideEntitlements);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = sub_1000182E8(a1, a2);
      if (v7)
      {
        v8 = *(v5 + 56) + 32 * v6;

        sub_100001FA4(v8, a3);
        return result;
      }
    }

LABEL_10:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v10 = [objc_opt_self() currentConnection];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 valueForEntitlement:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  result = *&v14;
  *a3 = v14;
  a3[1] = v15;
  return result;
}

id sub_100028584()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002873C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, void (*a8)(id, char *, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v13 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = _Block_copy(a7);
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  _Block_copy(v16);
  v25 = a3;
  v26 = a1;
  a8(v25, v15, v19, v21, v22, v24, v26, v16);
  _Block_release(v16);
  _Block_release(v16);

  return sub_100008630(v15, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_100028C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const char *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), ...)
{
  v13 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = _Block_copy(a6);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  _Block_copy(v16);
  v25 = a1;
  sub_10002E1BC(v15, v19, v21, v22, v24, v25, v16, a7, a8);
  _Block_release(v16);
  _Block_release(v16);

  return sub_100008630(v15, &unk_10007B400, &unk_100066D80);
}

void sub_100029228(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100029324(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_100029444(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v11 = _Block_copy(aBlock);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  _Block_copy(v11);
  v21 = a1;
  sub_10003040C(v12, v14, v15, v17, v18, v20, v21, v11, a7, a8, a9, a10);
  _Block_release(v11);
  _Block_release(v11);
}

uint64_t sub_100029698(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  _Block_copy(v13);
  v20 = a1;
  sub_100030968(a3, v14, v16, v17, v19, v20, v13, a7, a8, a9, a10);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_100029790(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1000298E0(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  _Block_copy(v13);
  v20 = a1;
  sub_100030E9C(v14, v16, v17, v19, v20, v13, a6, a7, a8, a9);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_1000299EC(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

id sub_100029A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getObjectType();
  v5 = dispatch thunk of XPCConnectable.processIdentifier.getter();
  return sub_100009A5C(v5, a4);
}

uint64_t sub_100029BBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100029BFC()
{
  sub_100028434(0xD000000000000028, 0x8000000100069A60, &v2);
  if (v3)
  {
    if (swift_dynamicCast() && (v1 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    sub_100008630(&v2, &unk_10007B3F0, &unk_100066D70);
  }

  sub_100028434(0xD000000000000023, 0x8000000100069A90, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_100008630(&v2, &unk_10007B3F0, &unk_100066D70);
    return 0;
  }

  return result;
}

uint64_t sub_100029D08(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v9))
  {
    v10 = String.init(cString:)();
    v12 = v11;
    static Logger.agent.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100001ED8(v10, v12, &v27);
      _os_log_impl(&_mh_execute_header, v13, v14, "Received notification %s", v15, 0xCu);
      sub_10000210C(v16);
    }

    (*(v3 + 8))(v6, v2);
    v17 = [objc_opt_self() pairedDeviceRegistryDeviceDidPairDarwinNotification];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v10 && v20 == v12)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        return result;
      }
    }

    return sub_10002A014();
  }

  else
  {
    static Logger.agent.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to retrieve notifyd event name", v23, 2u);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_10002A014()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v18;
  aBlock[4] = sub_100031474;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076968;
  v14 = _Block_copy(aBlock);
  v15 = v13;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000025CC(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_1000234DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v19);
}

uint64_t sub_10002A394(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002A3F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
  if ((*(v14 + 264) & 1) == 0)
  {
    *(v14 + 264) = 1;
    sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v15 = static OS_dispatch_queue.global(qos:)();
    v19 = v6;
    v16 = v15;
    (*(v10 + 8))(v13, v9);
    aBlock[4] = sub_10003147C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020A64;
    aBlock[3] = &unk_100076990;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_1000025CC(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000637C(&qword_10007AF10, &unk_1000670A0);
    sub_1000234DC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v3 + 8))(v5, v2);
    (*(v20 + 8))(v8, v19);
  }

  return result;
}

unint64_t *sub_10002A77C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10002B320(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_10002A818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EffectiveSettings();
  v23[3] = v6;
  v23[4] = &off_100076A48;
  v23[0] = a1;
  v7 = type metadata accessor for ExtensionFinder();
  v21 = v7;
  v22 = &off_100076350;
  v20[0] = a3;
  type metadata accessor for ShieldExtension();
  v8 = swift_allocObject();
  v9 = sub_100005AE4(v23, v6);
  __chkstk_darwin(v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_100005AE4(v20, v21);
  __chkstk_darwin(v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  *(v8 + 96) = v6;
  *(v8 + 104) = &off_100076A48;
  *(v8 + 144) = v7;
  *(v8 + 152) = &off_100076350;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  *(v8 + 72) = v17;
  *(v8 + 112) = a2;
  *(v8 + 120) = v18;
  sub_10000210C(v20);
  sub_10000210C(v23);
  return v8;
}

uint64_t sub_10002AA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 processIdentifier];
  }

  else
  {
    v10 = 0;
  }

  static Logger.agent.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Update effective settings received from process %{public}d", v13, 8u);
  }

  (*(v5 + 8))(v7, v4);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      v14 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
      [*(v14 + 216) lock];
      sub_10003B7C4(1);
      [*(v14 + 216) unlock];
      return (*(a2 + 16))(a2, 0);
    }

    sub_100031408();
    swift_allocError();
    *v16 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v15 = 2;
  }

  swift_willThrow();
  swift_errorRetain();
  v17 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, v17);
}

void sub_10002ACF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 processIdentifier];
  }

  else
  {
    v9 = 0;
  }

  static Logger.agent.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Effective media settings received from process %{public}d", v12, 8u);
  }

  (*(v4 + 8))(v6, v3);
  if (![objc_opt_self() isAfterFirstUnlock])
  {
    sub_100031408();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    swift_errorRetain();
    v18 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, 0, 0, v18);

    return;
  }

  sub_100022170(1);
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (*(&v37 + 1))
  {
    sub_100006820(0, &qword_10007B410, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v19 = v35;
      v34 = [v35 integerValue];

      goto LABEL_16;
    }
  }

  else
  {
    sub_100008630(&v38, &unk_10007B3F0, &unk_100066D70);
  }

  v34 = sub_10003423C();
LABEL_16:
  v20 = [v13 standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 objectForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (*(&v37 + 1))
  {
    sub_100006820(0, &qword_10007B410, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v23 = v35;
      v24 = [v35 integerValue];

      goto LABEL_24;
    }
  }

  else
  {
    sub_100008630(&v38, &unk_10007B3F0, &unk_100066D70);
  }

  v24 = sub_100034254();
LABEL_24:
  v25 = [v13 standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKey:v26];

  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {
    sub_100008630(&v38, &unk_10007B3F0, &unk_100066D70);
    goto LABEL_31;
  }

  sub_100006820(0, &qword_10007B410, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v29 = sub_100034508();
    goto LABEL_32;
  }

  v28 = v35;
  v29 = [v35 BOOLValue];

LABEL_32:
  v30 = objc_allocWithZone(NSNumber);
  v31 = [v30 initWithInteger:v34];
  v32 = [objc_allocWithZone(NSNumber) initWithInteger:v24];
  v33 = [objc_allocWithZone(NSNumber) initWithBool:v29 & 1];
  (*(a2 + 16))(a2, v31, v32, v33, 0);
}

void sub_10002B320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v28 = v14;
      v18 = *(*(a3 + 56) + 8 * v14);
      Hasher.init(_seed:)();

      v31 = v18;
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(a4 + 48) + 16 * v21);
          v24 = *v23 == v17 && v23[1] == v16;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_26:
          sub_10004C74C(a1, a2, v29, a3);
          return;
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_10002B53C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_10002A77C(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_10002B320((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void sub_10002B6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a6;
  v65 = a8;
  v58 = a5;
  v59 = a3;
  v60 = a4;
  v61 = a1;
  v62 = a2;
  v57 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = __chkstk_darwin(v57);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v63 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v53 - v18;
  v20 = [objc_opt_self() currentConnection];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 processIdentifier];
  }

  else
  {
    v22 = 0;
  }

  static Logger.agent.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67240192;
    *(v25 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Get received from process %{public}d", v25, 8u);
  }

  v26 = *(v15 + 8);
  v26(v19, v14);
  if (![objc_opt_self() isAfterFirstUnlock])
  {
    sub_100031408();
    swift_allocError();
    *v30 = 2;
LABEL_15:
    swift_willThrow();
    swift_errorRetain();
    v33 = _convertErrorToNSError(_:)();
    (*(v65 + 16))(v65, 0, v33);

    return;
  }

  if ((sub_100029BFC() & 1) == 0)
  {
    sub_100031408();
    swift_allocError();
    *v31 = 0;
    goto LABEL_15;
  }

  sub_100022170(1);
  *&v67 = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  if (!v67)
  {
    sub_100031408();
    swift_allocError();
    *v32 = 1;
    goto LABEL_15;
  }

  v27 = v67;
  v55 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
  sub_100028434(0xD000000000000028, 0x8000000100069A60, &v67);
  if (v68)
  {
    v28 = swift_dynamicCast();
    v29 = v60;
    if (v28)
    {
      LODWORD(v61) = v66;
    }

    else
    {
      LODWORD(v61) = 0;
    }
  }

  else
  {
    sub_100008630(&v67, &unk_10007B3F0, &unk_100066D70);
    LODWORD(v61) = 0;
    v29 = v60;
  }

  static Logger.persistenceRecordStore.getter();
  sub_100006754(v62, v13, &unk_10007B400, &unk_100066D80);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v54 = v35;
  v56 = v34;
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v67 = v53;
    *v36 = 136447234;
    v37 = Set.description.getter();
    v39 = v27;
    v40 = sub_100001ED8(v37, v38, &v67);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    sub_100006754(v13, v11, &unk_10007B400, &unk_100066D80);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_100008630(v13, &unk_10007B400, &unk_100066D80);
    v44 = sub_100001ED8(v41, v43, &v67);
    v29 = v60;

    *(v36 + 14) = v44;
    *(v36 + 22) = 2082;
    *(v36 + 24) = sub_100001ED8(v59, v29, &v67);
    *(v36 + 32) = 2082;
    v45 = v58;
    *(v36 + 34) = sub_100001ED8(v58, v64, &v67);
    *(v36 + 42) = 2082;
    v46 = v61;
    if (v61)
    {
      v47 = 7562585;
    }

    else
    {
      v47 = 28494;
    }

    if (v61)
    {
      v48 = 0xE300000000000000;
    }

    else
    {
      v48 = 0xE200000000000000;
    }

    v49 = sub_100001ED8(v47, v48, &v67);

    *(v36 + 44) = v49;
    v50 = v56;
    _os_log_impl(&_mh_execute_header, v56, v54, "Get settings %{public}s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v36, 0x34u);
    swift_arrayDestroy();

    v26(v63, v14);
  }

  else
  {

    sub_100008630(v13, &unk_10007B400, &unk_100066D80);
    v26(v63, v14);
    v45 = v58;
    v39 = v27;
    v46 = v61;
  }

  if (*(v39 + 16))
  {
    v51 = sub_100036D80(v62, v59, v29, v45, v64, v46);

    sub_10002B53C(v51, v39);
  }

  else
  {
    sub_100006278(_swiftEmptyArrayStorage);
  }

  sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v65 + 16))(v65, isa, 0);
}

uint64_t sub_10002BEA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a4;
  v94 = a8;
  v91 = a6;
  v92 = a2;
  v86 = a5;
  v88 = a1;
  v85 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = __chkstk_darwin(v85);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v78 - v14;
  v16 = __chkstk_darwin(v13);
  v83 = v78 - v17;
  v18 = __chkstk_darwin(v16);
  v84 = v78 - v19;
  v20 = __chkstk_darwin(v18);
  v89 = v78 - v21;
  __chkstk_darwin(v20);
  v23 = v78 - v22;
  v95 = type metadata accessor for Logger();
  v24 = *(v95 - 8);
  v25 = __chkstk_darwin(v95);
  v90 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = v78 - v27;
  v29 = [objc_opt_self() currentConnection];
  v87 = a3;
  if (v29)
  {
    v30 = v29;
    v31 = [v29 processIdentifier];
  }

  else
  {
    v31 = 0;
  }

  static Logger.agent.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    *(v34 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Set received from process %{public}d", v34, 8u);
  }

  v35 = *(v24 + 8);
  v35(v28, v95);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      *&v97 = 0;
      v36 = sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v97)
      {
        v78[1] = v36;
        v88 = v97;
        v82 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v97);
        if (v98)
        {
          v37 = swift_dynamicCast();
          v38 = v93;
          v39 = v91;
          v40 = v89;
          if (v37)
          {
            v41 = v96;
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          sub_100008630(&v97, &unk_10007B3F0, &unk_100066D70);
          v41 = 0;
          v38 = v93;
          v39 = v91;
          v40 = v89;
        }

        v81 = v41;
        static Logger.persistenceRecordStore.getter();
        sub_100006754(v92, v40, &unk_10007B400, &unk_100066D80);
        v51 = v88;

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        v79 = v53;
        v80 = v52;
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v78[0] = swift_slowAlloc();
          *&v97 = v78[0];
          *v54 = 136381699;
          v55 = Dictionary.description.getter();
          v57 = sub_100001ED8(v55, v56, &v97);
          v58 = v89;
          v59 = v57;

          *(v54 + 4) = v59;
          *(v54 + 12) = 2082;
          sub_100006754(v58, v84, &unk_10007B400, &unk_100066D80);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          sub_100008630(v58, &unk_10007B400, &unk_100066D80);
          v63 = sub_100001ED8(v60, v62, &v97);

          *(v54 + 14) = v63;
          *(v54 + 22) = 2082;
          *(v54 + 24) = sub_100001ED8(v87, v93, &v97);
          *(v54 + 32) = 2082;
          v64 = v86;
          *(v54 + 34) = sub_100001ED8(v86, v91, &v97);
          *(v54 + 42) = 2082;
          v65 = v81;
          if (v81)
          {
            v66 = 7562585;
          }

          else
          {
            v66 = 28494;
          }

          if (v81)
          {
            v67 = 0xE300000000000000;
          }

          else
          {
            v67 = 0xE200000000000000;
          }

          v68 = sub_100001ED8(v66, v67, &v97);

          *(v54 + 44) = v68;
          v69 = v80;
          _os_log_impl(&_mh_execute_header, v80, v79, "Set values %{private}s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v54, 0x34u);
          swift_arrayDestroy();

          v39 = v91;
          v38 = v93;

          v70 = v87;
          v35(v90, v95);
          v71 = v64;
          v72 = v88;
        }

        else
        {

          sub_100008630(v89, &unk_10007B400, &unk_100066D80);
          v35(v90, v95);
          v71 = v86;
          v70 = v87;
          v72 = v51;
          v65 = v81;
        }

        v73 = sub_100006278(_swiftEmptyArrayStorage);
        sub_1000395A4(v72, &_swiftEmptySetSingleton, v73, 0, v92, v70, v38, v71, v23, v39, v65);

        v74 = v83;
        sub_100006754(v23, v83, &unk_10007B400, &unk_100066D80);
        v75 = type metadata accessor for UUID();
        v76 = *(v75 - 8);
        isa = 0;
        if ((*(v76 + 48))(v74, 1, v75) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v76 + 8))(v74, v75);
        }

        (*(v94 + 16))(v94, isa, 0);

        return sub_100008630(v23, &unk_10007B400, &unk_100066D80);
      }

      sub_100031408();
      swift_allocError();
      *v44 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v43 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v42 = 2;
  }

  swift_willThrow();
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  (*(v46 + 56))(v15, 1, 1, v45);
  sub_100006754(v15, v12, &unk_10007B400, &unk_100066D80);
  v47 = (*(v46 + 48))(v12, 1, v45);
  swift_errorRetain();
  v48 = 0;
  if (v47 != 1)
  {
    v48 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v46 + 8))(v12, v45);
  }

  v49 = _convertErrorToNSError(_:)();
  (*(v94 + 16))(v94, v48, v49);

  v23 = v15;
  return sub_100008630(v23, &unk_10007B400, &unk_100066D80);
}