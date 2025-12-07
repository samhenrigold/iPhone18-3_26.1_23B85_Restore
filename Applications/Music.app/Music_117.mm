uint64_t sub_100C7B4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C7B560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE **sub_100C7B6CC(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

void sub_100C7B70C(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))(a1, a2);
  v8 = sub_1000109A8(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_100C7B768(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    sub_10010FC20(&qword_1011BC168, &unk_100F10820);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EBC6B0;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    debugPrint<A>(_:separator:terminator:to:)();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10._countAndFlagsBits = 8236;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
        sub_10010FC20(&qword_1011BC168, &unk_100F10820);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100EBC6B0;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;

        debugPrint<A>(_:separator:terminator:to:)();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 91;
}

uint64_t sub_100C7B91C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100C7B9B8()
{
  result = qword_1011BBB20;
  if (!qword_1011BBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB20);
  }

  return result;
}

unint64_t sub_100C7BA10()
{
  result = qword_1011BBB28;
  if (!qword_1011BBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB28);
  }

  return result;
}

unint64_t sub_100C7BA68()
{
  result = qword_1011BBB30;
  if (!qword_1011BBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB30);
  }

  return result;
}

uint64_t sub_100C7BB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100C7BB50()
{
  result = qword_1011BBB40;
  if (!qword_1011BBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB40);
  }

  return result;
}

unint64_t sub_100C7BBA8()
{
  result = qword_1011BBB48;
  if (!qword_1011BBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB48);
  }

  return result;
}

unint64_t sub_100C7BC00()
{
  result = qword_1011BBB50;
  if (!qword_1011BBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB50);
  }

  return result;
}

unint64_t sub_100C7BC58()
{
  result = qword_1011BBB58;
  if (!qword_1011BBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB58);
  }

  return result;
}

unint64_t sub_100C7BCB0()
{
  result = qword_1011BBB60;
  if (!qword_1011BBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB60);
  }

  return result;
}

unint64_t sub_100C7BD08()
{
  result = qword_1011BBB68;
  if (!qword_1011BBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB68);
  }

  return result;
}

unint64_t sub_100C7BDA4()
{
  result = qword_1011BBB80;
  if (!qword_1011BBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB80);
  }

  return result;
}

void sub_100C7BE00(uint64_t a1)
{
  sub_100C7BFB4(319, &qword_1011BBBC0, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    sub_100C7BFB4(319, &unk_1011BD710, type metadata accessor for Lyrics.Translation);
    if (v2 <= 0x3F)
    {
      sub_100C7BFB4(319, &unk_1011BBBC8, type metadata accessor for Lyrics.Transliteration);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100C7BFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

__n128 sub_100C7C008(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100C7C024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C7C06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Lyrics.Word.Emphasis(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 sub_100C7C0F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100C7C10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C7C154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100C7C1D8(uint64_t a1)
{
  sub_100C7BFB4(319, &qword_1011BBBC0, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    sub_100C7C330(319, &qword_1011BBE20, &type metadata for Lyrics.Capability, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100C7C330(319, &unk_1011BBE28, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10001F928();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100C7C330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_100C7C380(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100C7C3A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100C7C3B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100C7C3FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100C7C454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C7C49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100C7C53C(uint64_t a1, __n128 a2)
{
  type metadata accessor for Locale.Language();
  if (v2 <= 0x3F)
  {
    sub_100C7C5DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100C7C5DC()
{
  if (!qword_1011BBEF8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BBEF8);
    }
  }
}

void sub_100C7C684(uint64_t a1)
{
  sub_100C7C330(319, &unk_1011BBE28, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Locale.Language();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C7C758(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for Locale.Language();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100C7C82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  result = type metadata accessor for Locale.Language();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100C7C8E8(uint64_t a1, __n128 a2)
{
  type metadata accessor for Locale.Language();
  if (v2 <= 0x3F)
  {
    sub_100C7C5DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C7C9E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100C7C9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100C7CA1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100C7CA64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100C7CAC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC068, &qword_100F0EF88);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100C7CD10()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void sub_100C7CD94(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_1011BC0F0, &qword_100F0F020);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100C7D060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_100C7D0C8()
{
  result = qword_1011BC178;
  if (!qword_1011BC178)
  {
    sub_100009F78(255, &qword_1011BBB18, MSVLyricsAgent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC178);
  }

  return result;
}

uint64_t sub_100C7D1DC()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int sub_100C7D308()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F0F300[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C7D390(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F0F300[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100C7D3DC@<X0>(Swift::Int *a1@<X0>, LyricsX::LyricsOptionsManager::Option_optional *a2@<X8>)
{
  result = _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

void *sub_100C7D440()
{
  type metadata accessor for LyricsOptionsManager();
  v0 = swift_allocObject();
  result = sub_100C7DCB0(v0);
  static LyricsOptionsManager.shared = v0;
  return result;
}

double static LyricsOptionsManager.shared.getter()
{
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_100C7D4D8()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = v0, v7 = sub_1000160B4(v22), (v8 & 1) != 0))
      {
        sub_10000DD18(*(v5 + 56) + 32 * v7, &v23);
        sub_10001621C(v22);

        sub_10010FC20(&qword_1011BC220, &qword_100F0F1B8);
        if (swift_dynamicCast())
        {
          if (!sub_100C6E398(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v9 = sub_10000F8B8(0xD00000000000001CLL, 0x8000000100E6A220);
              if (v10)
              {
                sub_1000160F8(MEMORY[0xD00000000000004D] + 40 * v9, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_100C7F580(&v23, 0);
                  }

                  else
                  {

                    sub_100C81A84(0);
                  }

                  v11 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_100C7DA4C(v11);
                }
              }
            }
          }

          if (!sub_100C6E398(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v12 = sub_10000F8B8(0xD000000000000020, 0x8000000100E6A240);
              if (v13)
              {
                sub_1000160F8(MEMORY[0xD00000000000004D] + 40 * v12, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_100C7F580(&v23, 1);
                  }

                  else
                  {

                    sub_100C81A84(1);
                  }

                  v14 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_100C7DA4C(v14);
                }
              }
            }
          }

          if (sub_100C6E398(8, *(v0 + 40)))
          {
            goto LABEL_35;
          }

          if (!MEMORY[0xD000000000000025])
          {
            goto LABEL_35;
          }

          v15 = sub_10000F8B8(0xD000000000000018, 0x8000000100E6A270);
          if ((v16 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_1000160F8(MEMORY[0xD00000000000004D] + 40 * v15, v22);

          if (swift_dynamicCast())
          {
            v18 = v23;
            v17 = v24;
            if (v23 == 0x73636972796CLL && v24 == 0xE600000000000000)
            {

              v19 = v6;
LABEL_33:
              v22[0] = *(v19 + 40);

              sub_100C81A84(3);
LABEL_34:
              v20 = *(v19 + 40);
              *(v19 + 40) = v22[0];
              sub_100C7DA4C(v20);
LABEL_35:

              return result;
            }

            v19 = v6;
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              goto LABEL_33;
            }

            if (v18 == 0x74696C736E617274 && v17 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v22[0] = *(v19 + 40);

              sub_100C7F580(&v23, 3);
              goto LABEL_34;
            }

            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        sub_10001621C(v22);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_100C7D4D8();
}

double (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100C7DA18;
}

double sub_100C7DA18(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100C7D4D8();
  }

  return result;
}

void sub_100C7DA4C(uint64_t a1)
{
  if ((sub_100C7F064(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        sub_10010FC20(&qword_1011BC1D8, &qword_100F0F1C0);
        sub_100C82CD8();
        BidirectionalCollection<>.joined(separator:)();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = String._bridgeToObjectiveC()();

        v21 = String._bridgeToObjectiveC()();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100C7094C(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_100C7094C((v16 > 1), v17 + 1, 1, v11);
          }

          v8 &= v8 - 1;
          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *sub_100C7DCB0(uint64_t a1)
{
  v2 = v1;
  v1[2] = 0;
  v3 = type metadata accessor for LyricsOptionsManager.Observer();
  v1[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v3);
  v1[4] = 0;
  v1[5] = &_swiftEmptySetSingleton;
  sub_100009F78(0, &qword_1011BC440, NSUserDefaults_ptr);
  strcpy(v8, "lyricsOptions");
  v8[7] = -4864;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = sub_100009988();

  v6 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v8, 0, 0, sub_100C82D3C, v4, &type metadata for String, v5);

  v2[4] = v6;

  sub_100C7DF2C();
  return v2;
}

double sub_100C7DDFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 40);

    sub_100C7DF2C();
    swift_beginAccess();
    v6 = *(v4 + 24);
    v7 = type metadata accessor for LyricsOptionsManager.Observer();

    v10 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v10 != WeakArray.endIndex.getter(v6, v7, v8, v9))
    {
      v12 = WeakArray.subscript.getter(v10, v6, v7, v11);
      v10 = FixedLengthCollection.index(after:)(v10);
      if (v12)
      {
        v13 = *(v12 + 16);

        v13(v5);
      }
    }
  }

  return result;
}

void sub_100C7DF2C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v45 = v3;
  v46 = v5;
  sub_100009988();
  v6 = StringProtocol.components<A>(separatedBy:)();

  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_100:

    v42 = sub_100C9C0E4(v9);

    v43 = *(v44 + 40);
    *(v44 + 40) = v42;
    sub_100C7DA4C(v43);

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v8 < *(v6 + 16))
  {
    v10 = (v6 + 32 + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    ++v8;
    v13 = HIBYTE(v12) & 0xF;
    v14 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_7;
    }

    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v45 = v11;
        v46 = v12 & 0xFFFFFFFFFFFFFFLL;
        if (v11 == 43)
        {
          if (!v13)
          {
            goto LABEL_102;
          }

          if (--v13)
          {
            v18 = 0;
            v28 = &v45 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v11 == 45)
        {
          if (!v13)
          {
            goto LABEL_104;
          }

          if (--v13)
          {
            v18 = 0;
            v22 = &v45 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v13)
        {
          v18 = 0;
          v33 = &v45;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v13)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v16 = _StringObject.sharedUTF8.getter();
        }

        v17 = *v16;
        if (v17 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_105;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v16)
            {
              goto LABEL_61;
            }

            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_103;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (v16)
            {
              v19 = v16 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_69;
                }

                v18 = v21 - v20;
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++v19;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v13) = 0;
LABEL_70:
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_69;
          }

          v18 = 0;
          if (!v16)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_70;
    }

    sub_100C82448(v11, v12, 10);
    v18 = v39;
    v41 = v40;

    if (v41)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          v36 = 5;
        }

        else
        {
          v36 = 6;
        }

        goto LABEL_92;
      }

      switch(v18)
      {
        case 7:
          v36 = 7;
          goto LABEL_92;
        case 8:
          v36 = 8;
          goto LABEL_92;
        case 1000:
          v36 = 9;
LABEL_92:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100C70A58(0, *(v9 + 2) + 1, 1, v9);
          }

          v38 = *(v9 + 2);
          v37 = *(v9 + 3);
          if (v38 >= v37 >> 1)
          {
            v9 = sub_100C70A58((v37 > 1), v38 + 1, 1, v9);
          }

          *(v9 + 2) = v38 + 1;
          v9[v38 + 32] = v36;
          break;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v36 = 2;
        }

        else if (v18 == 3)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_92;
      }

      if (!v18)
      {
        v36 = 0;
        goto LABEL_92;
      }

      if (v18 == 1)
      {
        v36 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v8 == v7)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  v5 = sub_10010FC20(&qword_1011BC218, &qword_100F0F1B0);
  WeakArray.append(_:)(v4, v5);
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100C7F580(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_100C7DA4C(v5);
  }

  v6 = *(v1 + 40);

  sub_100C7F580(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  sub_100C7DA4C(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100C7F580(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_100C7DA4C(v5);
  }

  v7 = *(v1 + 40);

  sub_100C81A84(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  sub_100C7DA4C(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return sub_100C6E398(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011BBA80, &qword_100F0E5E0);
  __chkstk_darwin();
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v49 - v5;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = type metadata accessor for Locale.Language();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (!v15)
  {
    return 1;
  }

  v16 = [v15 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v16)
  {
    return 1;
  }

  v58 = v4;
  v59 = a1;
  v17 = v16;
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = 0xD000000000000015;
  v61 = 0x8000000100E6A150;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v19 = sub_1000160B4(&v62), (v20 & 1) != 0))
  {
    sub_10000DD18(*(v18 + 56) + 32 * v19, v64);
    sub_10001621C(&v62);

    sub_10010FC20(&qword_1011BC220, &qword_100F0F1B8);
    if (swift_dynamicCast())
    {
      v21 = v60;
      if (!*(v60 + 16) || (v22 = sub_10000F8B8(0xD000000000000021, 0x8000000100E6A170), (v23 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      sub_1000160F8(*(v21 + 56) + 40 * v22, &v62);

      sub_10010FC20(&qword_1011BC1D8, &qword_100F0F1C0);
      if (swift_dynamicCast())
      {
        result = v64[0];
        v51 = *(v64[0] + 16);
        if (v51)
        {
          v25 = 0;
          v49 = (v12 + 8);
          v26 = v64[0] + 40;
          v50 = v64[0];
          while (1)
          {
            v27 = *(result + 16);
            v56 = v25;
            if (v25 >= v27)
            {
              __break(1u);
              return result;
            }

            v55 = v26;

            Locale.Language.init(identifier:)();
            Locale.Language.languageCode.getter();
            v28 = type metadata accessor for Locale.LanguageCode();
            v29 = *(v28 - 8);
            v57 = *(v29 + 48);
            v30 = v57(v10, 1, v28);
            v52 = v29;
            if (v30 == 1)
            {
              sub_1000095E8(v10, &qword_1011BBA50, &unk_100F0E5B0);
              v54 = 0;
              v31 = 0;
            }

            else
            {
              v32 = Locale.LanguageCode.identifier.getter();
              v31 = v33;
              (*(v29 + 8))(v10, v28);
              v54 = v32;
              if (v32 == 26746 && v31 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v53 = v31;
                Locale.Language.script.getter();
                v34 = type metadata accessor for Locale.Script();
                v35 = *(v34 - 8);
                if ((*(v35 + 48))(v6, 1, v34) == 1)
                {
                  sub_1000095E8(v6, &qword_1011BBA80, &qword_100F0E5E0);
                  v31 = v53;
                }

                else
                {

                  v37 = Locale.Script.identifier.getter();
                  v53 = v38;
                  v54 = v37;
                  (*(v35 + 8))(v6, v34);
                  v62 = 2975866;
                  v63 = 0xE300000000000000;
                  v39._countAndFlagsBits = v54;
                  v39._object = v53;
                  String.append(_:)(v39);

                  v31 = v63;
                  v54 = v62;
                }
              }
            }

            Locale.Language.languageCode.getter();
            if (v57(v8, 1, v28) == 1)
            {
              break;
            }

            v40 = Locale.LanguageCode.identifier.getter();
            v36 = v41;
            (*(v52 + 8))(v8, v28);
            if (v40 == 26746 && v36 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v57 = v40;
              v53 = v31;
              v42 = v58;
              Locale.Language.script.getter();
              v43 = type metadata accessor for Locale.Script();
              v44 = *(v43 - 8);
              if ((*(v44 + 48))(v42, 1, v43) == 1)
              {
                sub_1000095E8(v42, &qword_1011BBA80, &qword_100F0E5E0);
                v31 = v53;
                v40 = v57;
              }

              else
              {

                v57 = Locale.Script.identifier.getter();
                v46 = v45;
                (*(v44 + 8))(v42, v43);
                v62 = 2975866;
                v63 = 0xE300000000000000;
                v47._countAndFlagsBits = v57;
                v47._object = v46;
                String.append(_:)(v47);

                v40 = v62;
                v36 = v63;
                v31 = v53;
              }
            }

            if (!v31)
            {
              goto LABEL_40;
            }

            if (!v36)
            {
LABEL_15:

              (*v49)(v14, v11);
              goto LABEL_16;
            }

            if (v54 == v40 && v31 == v36)
            {

              (*v49)(v14, v11);
LABEL_44:

              return 0;
            }

            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v49)(v14, v11);
            if (v48)
            {
              goto LABEL_44;
            }

LABEL_16:
            v25 = v56 + 1;
            v26 = v55 + 16;
            result = v50;
            if (v51 == v56 + 1)
            {
              goto LABEL_42;
            }
          }

          sub_1000095E8(v8, &qword_1011BBA50, &unk_100F0E5B0);
          if (v31)
          {
            goto LABEL_15;
          }

          v36 = 0;
LABEL_40:
          (*v49)(v14, v11);
          if (!v36)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    sub_10001621C(&v62);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100C7F064(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    v14 = qword_100F0F300[v13];
    Hasher._combine(_:)(v14);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_100F0F300[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C7F1E8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100C80898(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100C7F338(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100C7FAC4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_1011BC120, &qword_100F0F050);
    }

    v18 = v8;
    sub_10066FD84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100C80A18(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100C7F580(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = qword_100F0F300[a2];
  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_100F0F300[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100C80BB8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100C7F698(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      _s4WordCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100C7FCD4(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100C805A4(v17 + 1);
    }

    sub_100C807F4(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100C80D20(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100C7F89C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for SyncedLyricsLineView(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100C7FED4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_1011BC0F0, &qword_100F0F020);
    }

    v18 = v8;
    sub_10066FD84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SyncedLyricsLineView(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100C80E7C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100C7FAC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BC120, &qword_100F0F050);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1538(v9 + 1, &qword_1011BC120, &qword_100F0F050);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100C7FCD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BC430, "FH\n");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      _s4WordCMa();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100C805A4(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100C7FED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BC0F0, &qword_100F0F020);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SyncedLyricsLineView(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1538(v9 + 1, &qword_1011BC0F0, &qword_100F0F020);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_100C800D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011BC448, &unk_100F0F2F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100C80348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011BC438, &unk_100F0F2E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100F0F300[v17]);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100C805A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011BC430, "FH\n");
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_100C807F4(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100C80898(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100C800D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100C8100C();
      goto LABEL_16;
    }

    sub_100C813F8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100C80A18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &qword_1011BC120, &qword_100F0F050);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A48(&qword_1011BC120, &qword_100F0F050);
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &qword_1011BC120, &qword_100F0F050);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100C80BB8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100C80348(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100C81168();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100C81630(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = qword_100F0F300[v4];
  Hasher._combine(_:)(v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_100F0F300[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100C80D20(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100C805A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100C812A8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100C8185C(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    _s4WordCMa();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100C80E7C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &qword_1011BC0F0, &qword_100F0F020);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A48(&qword_1011BC0F0, &qword_100F0F020);
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &qword_1011BC0F0, &qword_100F0F020);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100C8100C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC448, &unk_100F0F2F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_100C81168()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC438, &unk_100F0F2E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_100C812A8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC430, "FH\n");
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_100C813F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011BC448, &unk_100F0F2F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
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
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_100C81630(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011BC438, &unk_100F0F2E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100F0F300[v16]);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_100C8185C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011BC430, "FH\n");
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

uint64_t sub_100C81A84(char a1)
{
  v2 = v1;
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = qword_100F0F300[a1];
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 10;
  }

  v9 = ~v7;
  while (qword_100F0F300[*(*(v4 + 48) + v8)] != v5)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 10;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100C81168();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_100C820F0(v8);
  result = v13;
  *v2 = v14;
  return result;
}

Swift::Int sub_100C81B9C(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100C81EA4(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100C812A8();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_100C822A0(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_100C81D0C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100C81F98(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for SyncedLyricsLineView(0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100194A48(&qword_1011BC0F0, &qword_100F0F020);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10019745C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

Swift::Int sub_100C81EA4(uint64_t a1, Swift::UInt a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100C7FCD4(v5, v4);
  v14 = v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_100C822A0(v10);
  *v2 = v14;
  return v6;
}

uint64_t sub_100C81F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100C7FED4(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for SyncedLyricsLineView(0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10019745C(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100C820F0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(qword_100F0F300[v10]);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100C822A0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100C82448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100C829D4(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_100C829D4(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100C82A54(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100C82A54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000DCA0(v9, 0), v12 = sub_1002CEF28(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

uint64_t _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 8)
  {
    if (result == 1000)
    {
      return 9;
    }

    return 10;
  }

  return result;
}

unint64_t sub_100C82C50()
{
  result = qword_1011BC228;
  if (!qword_1011BC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC228);
  }

  return result;
}

unint64_t sub_100C82CD8()
{
  result = qword_1011BC1E0;
  if (!qword_1011BC1E0)
  {
    sub_1001109D0(&qword_1011BC1D8, &qword_100F0F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC1E0);
  }

  return result;
}

void sub_100C82D44(double *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100C71CF0(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_100C82D94(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100C71CF0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_100C82DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100C742F4(a1, a2, isUniquelyReferenced_nonNull_native);
    v16 = *(a2 + 16);
    sub_100015BB0(&v16);
    v15 = *(a2 + 32);
    sub_1000095E8(&v15, &qword_1011BC0A0, &unk_100F0EFD0);
    *v2 = v13;
  }

  else
  {
    v7 = sub_100C71CF0(a2);
    v9 = v8;
    v16 = *(a2 + 16);
    sub_100015BB0(&v16);
    v15 = *(a2 + 32);
    sub_1000095E8(&v15, &qword_1011BC0A0, &unk_100F0EFD0);
    if (v9)
    {
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v14 = *v3;
      if (!v10)
      {
        sub_100C750DC();
        v11 = v14;
      }

      sub_100C962B4(v7, v11, v12);
      *v3 = v11;
    }
  }
}

id sub_100C82F2C(unsigned __int8 *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
  sub_1002AD8C8(__dst, v6);
  LOBYTE(a1) = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  result = sub_100C9C2C4(__dst);
  if ((a1 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
    v5 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
    if (v5)
    {
      if (*(v5 + 96))
      {
        [*(v5 + 96) removeFromSuperview];
      }
    }

    *&v1[v4] = 0;

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100C82FD8(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = a1 & 1;
    v3 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v3)
    {
      v5 = a1;
      v6 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
      v86 = a1 & 1;
      if (v6 && (v7 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel)) != 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);

        v9 = v7;
        v11 = sub_100C8DF2C(v8, v6, v10);

        [v9 setAttributedText:v11];
      }

      else
      {
      }

      v12 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v13 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v13 = 384;
      }

      v14 = *(v12 + 368);
      v15 = *(v12 + v13);
      v16 = v14;
      v17 = String._bridgeToObjectiveC()();
      v18 = [objc_opt_self() animationWithKeyPath:v17];

      v78 = v12;
      CASpringAnimation.springParameters.setter([objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v12 + 664) stiffness:*(v12 + 672) damping:*(v12 + 680) initialVelocity:{0.0, 0.0}]);
      v19 = v18;
      if (v5)
      {
        v20 = v16;
      }

      else
      {
        v20 = v15;
      }

      if (v5)
      {
        v21 = v15;
      }

      else
      {
        v21 = v16;
      }

      v22 = [v20 CGColor];
      [v19 setFromValue:v22];

      v90 = v21;
      v23 = [v21 CGColor];
      [v19 setToValue:v23];
      v74 = v19;

      v24 = swift_allocObject();
      *(v24 + 16) = _swiftEmptyArrayStorage;
      v25 = (v24 + 16);
      v26 = *(v3 + 56);
      v76 = v15;
      v77 = v16;
      v89 = v24;
      v84 = *(v26 + 16);
      if (v84)
      {
        v82 = v26 + 32;
        if (v5)
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.0;
        }

        v28 = 0;
        v80 = v26;
        v75 = a2;
        while (1)
        {
          if (v28 >= *(v26 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v29 = *(v82 + 8 * v28);
          if ((a2 & 1) != 0 && (v30 = *(v29 + 112)) != 0 && (v31 = *(v30 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer)) != 0)
          {

            v32 = v31;
            v33 = String._bridgeToObjectiveC()();
            [v32 addAnimation:v74 forKey:v33];

            v34 = *(v29 + 112);
            if (!v34)
            {
              goto LABEL_31;
            }
          }

          else
          {

            v34 = *(v29 + 112);
            if (!v34)
            {
              goto LABEL_31;
            }
          }

          v35 = *(v34 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer);
          if (v35)
          {
            v36 = v35;
            v37 = [v90 CGColor];
            [v36 setBackgroundColor:v37];
          }

LABEL_31:
          v5 = swift_allocObject();
          *(v5 + 16) = v29;
          *(v5 + 24) = v86;
          *(v5 + 32) = v24;
          *(v5 + 40) = v15;
          *(v5 + 48) = v16;
          v88 = v28;
          if (a2)
          {
            sub_100009F78(0, &qword_1011BC570, UIView_ptr);
            v38 = v78[83];
            v39 = v78[84];
            v40 = v78[85];
            v41 = objc_allocWithZone(UISpringTimingParameters);
            v42 = v15;
            v43 = v16;

            v44 = [v41 initWithMass:v38 stiffness:v39 damping:v40 initialVelocity:{0.0, 0.0}];
            v45 = swift_allocObject();
            *(v45 + 16) = sub_100C9E3E4;
            *(v45 + 24) = v5;

            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v44, 0, sub_100029B6C, v45, 0, 0, 0.0);
          }

          else
          {
            v46 = *(v29 + 112);
            if (v46 && (v47 = *(v46 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
            {
              v48 = v15;
              v49 = v16;

              [v47 setAlpha:v27];
            }

            else
            {
              v50 = v15;
              v51 = v16;
            }

            swift_beginAccess();
            v52 = *(v29 + 16);
            if (v52 >> 62)
            {
              v53 = _CocoaArrayWrapper.endIndex.getter();
              if (v53)
              {
LABEL_39:
                if (v53 < 1)
                {
                  goto LABEL_87;
                }

                for (i = 0; i != v53; ++i)
                {
                  if ((v52 & 0xC000000000000001) != 0)
                  {
                    v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v55 = *(v52 + 8 * i + 32);
                  }

                  swift_beginAccess();

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v56 = *(v55 + 208);
                  if (v56)
                  {
                    v57 = *(v56 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
                    [v57 setBackgroundColor:v90];
                  }
                }

                v15 = v76;
                v16 = v77;
                a2 = v75;
                goto LABEL_21;
              }
            }

            else
            {
              v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v53)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_21:
          v24 = v89;
          v28 = v88 + 1;
          v26 = v80;
          if (v88 + 1 == v84)
          {

            break;
          }
        }
      }

      swift_beginAccess();
      v5 = *v25;
      if (*v25 >> 62)
      {
        goto LABEL_88;
      }

      v58 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58)
      {
        while (1)
        {
          v87 = v5 & 0xC000000000000001;
          v79 = v5 + 32;
          v81 = v5 & 0xFFFFFFFFFFFFFF8;
          v15 = &v93;

          v59 = 0;
          v83 = v58;
          v85 = v5;
          while (1)
          {
            if (v87)
            {
              v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v61 = __OFADD__(v59++, 1);
              if (v61)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v59 >= *(v81 + 16))
              {
                goto LABEL_86;
              }

              v60 = *(v79 + 8 * v59);

              v61 = __OFADD__(v59++, 1);
              if (v61)
              {
                goto LABEL_84;
              }
            }

            sub_100CA3FE4();
            v62 = *(v60 + 104);
            if (!(v62 >> 62))
            {
              v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v63)
              {
                break;
              }

              goto LABEL_81;
            }

            v63 = _CocoaArrayWrapper.endIndex.getter();
            if (v63)
            {
              break;
            }

LABEL_81:

LABEL_56:
            if (v59 == v58)
            {

              goto LABEL_90;
            }
          }

          if (v63 >= 1)
          {
            break;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v58 = _CocoaArrayWrapper.endIndex.getter();
          if (!v58)
          {
            goto LABEL_89;
          }
        }

        v64 = 0;
        while (1)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v70 = *(v62 + 8 * v64 + 32);
          }

          v71 = *(v70 + 136);
          v72 = *(v70 + 144);
          if (v72 == 1)
          {
            if (!v71)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (*(v70 + 144))
            {
              v73 = 1;
            }

            else
            {
              v73 = v71 == 0;
            }

            if (v73)
            {
LABEL_79:
              sub_100009F78(0, &qword_1011BD500, UIViewPropertyAnimator_ptr);
              v71 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
              goto LABEL_69;
            }
          }

          sub_100C9E408(*(v70 + 136), *(v70 + 144));
          sub_100C9E408(v71, v72);
          [(objc_class *)v71 stopAnimation:1];
LABEL_69:
          ++v64;
          v95 = sub_100C9E3F8;
          v96 = v70;
          aBlock = _NSConcreteStackBlock;
          v92 = 1107296256;
          v93 = sub_10002BC98;
          v94 = &unk_1010F5EC8;
          v65 = _Block_copy(&aBlock);

          [(objc_class *)v71 addAnimations:v65];
          _Block_release(v65);
          v95 = sub_100C9E400;
          v96 = v70;
          aBlock = _NSConcreteStackBlock;
          v92 = 1107296256;
          v93 = sub_100338AB8;
          v94 = &unk_1010F5EF0;
          v66 = _Block_copy(&aBlock);

          v67 = v71;

          [(objc_class *)v67 addCompletion:v66];
          _Block_release(v66);
          v68 = *(v70 + 136);
          *(v70 + 136) = v67;
          v69 = *(v70 + 144);
          *(v70 + 144) = 1;
          sub_100C9E32C(v68, v69);
          [(objc_class *)v67 startAnimation];

          if (v63 == v64)
          {

            v58 = v83;
            v5 = v85;
            goto LABEL_56;
          }
        }
      }

LABEL_89:

LABEL_90:
    }
  }
}

void sub_100C83AAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v11)
    {
      v12 = 0.0;
      if (a2)
      {
        v12 = 1.0;
      }

      [v11 setAlpha:v12];
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      a4 = a5;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v17 = *(v16 + 208);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
        [v18 setBackgroundColor:a4];
      }
    }
  }
}

void sub_100C83C9C(char a1, double a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
  {
    if (a1)
    {
      v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
      if (!v5)
      {
        return;
      }

      v6 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448];
      memcpy(__dst, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
      v7 = *(v5 + 56);
      v8 = *(v7 + 16);
      if (!v8)
      {
        return;
      }

      v9 = v6 + a2;

      sub_1002AD8C8(__dst, v58);

      v10 = 0;
      while (v10 < *(v7 + 16))
      {
        ++v10;

        sub_100CA03C8(__dst, v9);

        if (v8 == v10)
        {

          sub_100C9C2C4(__dst);
          return;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v45 = objc_opt_self();
      v46 = swift_allocObject();
      *(v46 + 16) = v3;
      *(v46 + 24) = a2;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_100C9E388;
      *(v47 + 24) = v46;
      __dst[4] = sub_10018A020;
      __dst[5] = v47;
      __dst[0] = _NSConcreteStackBlock;
      __dst[1] = 1107296256;
      __dst[2] = sub_100029B9C;
      __dst[3] = &unk_1010F5E50;
      v48 = _Block_copy(__dst);
      v49 = v3;

      [v45 performWithoutAnimation:v48];
      _Block_release(v48);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  v11 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v11)
  {
    sub_100C8B404(_swiftEmptyArrayStorage);
    v12 = v51;
    v13 = *(v51 + 16);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_43:

    return;
  }

  v12 = *(v11 + 56);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_43;
  }

LABEL_11:
  sub_100009F78(0, &qword_1011BD580, OS_dispatch_queue_ptr);
  v14 = 0;
  v15 = v12 + 32;
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v54 = v12;
  v55 = v2;
  v53 = v13;
  v52 = v12 + 32;
  v56 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  while (1)
  {
    v17 = *(v15 + 8 * v14++);
    memcpy(__dst, &v3[v16], 0x2B0uLL);
    *(v17 + 120) = 1;

    sub_1002AD8C8(__dst, v58);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = *&__dst[80];
    v20 = swift_allocObject();
    swift_weakInit();

    OS_dispatch_queue.asyncAfter(_:block:)(sub_100C9E340, v20, v19);

    if ((*(v17 + 57) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    v21 = *(v17 + 16);
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
LABEL_36:
        sub_100C9C2C4(__dst);

        v16 = v56;
        if (v14 == v13)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_47;
    }

    v57 = v14;

    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 208);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v25 = *(v21 + 8 * i + 32);

        v24 = *(v25 + 208);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      v26 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
      if (v26)
      {
        v27 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
        v28 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
        v29 = v24;
        sub_100C9E348(v26, v27);
        v30 = v28;
        v31 = v26;
        [v30 setBackgroundColor:v31];
      }

LABEL_17:
    }

    sub_100C9C2C4(__dst);

    v12 = v54;
    v3 = v55;
    v13 = v53;
    v16 = v56;
    v14 = v57;
    v15 = v52;
    if (v57 == v53)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v32 = *(v17 + 112);
  if (v32 && (v33 = *(v32 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
  {
    v34 = __dst[25];
    v35 = v33;
    [v34 lineHeight];
    v37 = vabdd_f64(v36 * *&__dst[32] + *&__dst[58] + *&__dst[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
    if (*(v17 + 58))
    {
      v38 = v37 + CGRectGetWidth(*(v17 + 80));
      v39 = -v37;
    }

    else
    {
      v39 = -v37;
      v38 = -v37;
    }

    v40 = *(v17 + 80);
    v41 = *(v17 + 88);
    v42 = *(v17 + 96);
    v43 = *(v17 + 104);
    v44 = v35;
    v61.origin.x = v40;
    v61.origin.y = v41;
    v61.size.width = v42;
    v61.size.height = v43;
    [v44 setFrame:{v38, v39, v37, v37 + v37 + CGRectGetHeight(v61)}];
    sub_100C9C2C4(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_100C9C2C4(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
}

void sub_100C84354(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    v4 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448);
    memcpy(__dst, (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs), sizeof(__dst));
    v5 = *(v2 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 + a2;

      sub_1002AD8C8(__dst, &v9);

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        ++v8;

        sub_100CA03C8(__dst, v7);

        if (v6 == v8)
        {

          sub_100C9C2C4(__dst);
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100C8448C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    if (vabdd_f64(a1, *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth)) < 1.0)
    {
      return 0;
    }

    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[10];
    v7 = v2[11];

    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    if (vabdd_f64(a1, CGRectGetWidth(v21)) < 1.0)
    {

      return 0;
    }

    v8 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (!v8)
    {

      return 1;
    }

    v9 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    if (*(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate) >= 3uLL)
    {
      v16 = v9[3];
      v15 = v9[4];
      v18 = v9[1];
      v17 = v9[2];
      v19 = v8;
      v10 = v18;
      v11 = v17;
      v12 = v16;
      v13 = v15;
    }

    else
    {
      [v8 frame];
    }

    Width = CGRectGetWidth(*&v10);

    if (vabdd_f64(a1, Width) < 1.0)
    {
      return 0;
    }
  }

  return 1;
}

double sub_100C845CC(double a1, double a2)
{
  v4 = 0.0;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = sub_100C8448C(a1);
    if (v6)
    {
      v7 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
      sub_100009988();
      *v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v7[1] = v8;

      *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = a1;
    }

    sub_100C8A7F8(v6 & 1, 0, a1, a2);
    v9 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v10 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (v11)
    {
      v12 = v10 == 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v13)
      {
        return *(v13 + 80);
      }
    }

    else
    {
      v14 = v9[1];
      v15 = v9[2];
      v4 = v9[3];
      v16 = v9[4];
      v17 = v11;
      v18 = v17;
      if (v10 <= 2)
      {
        [v17 frame];
        v14 = v19;
        v15 = v20;
        v4 = v21;
        v16 = v22;
      }

      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v4;
      v24.size.height = v16;
      CGRectGetMaxY(v24);
    }
  }

  return v4;
}

void sub_100C847DC()
{
  v10.receiver = v0;
  v10.super_class = _s8TextViewCMa(0);
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v2 = sub_100C8448C(v1);
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v8 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v9 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
    v7 = sub_100009988();
    *v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v3[1] = v4;

    [v0 bounds];
    *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = CGRectGetWidth(v11);
  }

  [v0 bounds];
  sub_100C8A7F8(v2 & 1, 0, v5, v6);
  sub_100C84960();
  sub_100C83C9C(0, *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress]);
}

void sub_100C84960()
{
  v3 = v0;
  [v0 bounds];
  if (v4 <= 0.0 || !*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer])
  {
    return;
  }

  v124 = v0;
  v125 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v5 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v7 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  swift_beginAccess();
  v8 = *(v7 + 48);
  v143[2] = *(v7 + 32);
  v143[3] = v8;
  v9 = *(v7 + 80);
  v143[4] = *(v7 + 64);
  v143[5] = v9;
  v10 = *(v7 + 16);
  v143[0] = *v7;
  v143[1] = v10;
  v11 = *(&v9 + 1);
  v12 = v9;
  if (*(&v143[0] + 1))
  {

    v13 = v12;
    v14 = v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v140[0] = v143[0];
  v15 = *(v7 + 32);
  v140[1] = *(v7 + 16);
  v140[2] = v15;
  v16 = *(v7 + 64);
  v140[3] = *(v7 + 48);
  v140[4] = v16;
  v141 = v12;
  v142 = v11;

  v17 = v125;

  sub_1000089F8(v143, __dst, &qword_1011BC540, &unk_100F0F580);
  sub_1000095E8(v140, &qword_1011BC540, &unk_100F0F580);
  v18 = &selRef_setContacts_;
  v19 = off_1011BC000;
  if (!v5)
  {
    if (!v14)
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:
    v20 = v124;

    goto LABEL_13;
  }

  if (v6 == v13 && v5 == v14)
  {

LABEL_46:
    LODWORD(rect) = 1;
    v20 = v124;
    goto LABEL_49;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v20 = v124;
  if ((v85 & 1) == 0)
  {
LABEL_13:
    v21 = *(v7 + 16);
    __dst[0] = *v7;
    __dst[1] = v21;
    v22 = *(v7 + 48);
    __dst[2] = *(v7 + 32);
    __dst[3] = v22;
    v23 = *(v7 + 80);
    __dst[4] = *(v7 + 64);
    __dst[5] = v23;
    if (*(&__dst[0] + 1))
    {
      v126 = *(&__dst[1] + 1);
      v24 = *&__dst[1];
      v25 = *(&__dst[2] + 1);
      v114 = __dst[4];
      v115 = __dst[3];
      v26 = objc_opt_self();
      v136 = __dst[2];
      v137 = __dst[3];
      v138 = __dst[4];
      v139 = __dst[5];
      v134 = __dst[0];
      v135 = __dst[1];
      sub_100C9DFD4(&v134, &aBlock);
      if ([v26 _isInAnimationBlockWithAnimationsEnabled] && v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == 1 && *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] == 2)
      {
        v119 = *(v25 + 16);
        v113 = v7;
        if (!v119)
        {
          goto LABEL_77;
        }

        v118 = v25 + 32;

        v27 = 0.0;
        v116 = v25;
        v117 = v24;
        while (1)
        {
          if (*&v27 >= *(v25 + 16))
          {
            goto LABEL_95;
          }

          v7 = *(v118 + 8 * *&v27);
          recta = v27;
          if (v24[2] && (v28 = sub_1006BE788(v7), (v29 & 1) != 0))
          {
            v24 = *(v24[7] + 8 * v28);
          }

          else
          {
            v24 = &_swiftEmptySetSingleton;
          }

          swift_beginAccess();

          v32 = sub_100C9C158(v30, v31);

          v33 = sub_100C857A4(v32, v24);

          if ((v33 & 0xC000000000000001) != 0)
          {
            v24 = __CocoaSet.makeIterator()();
            _s4WordCMa();
            sub_100C9DE48(&qword_1011BC530, _s4WordCMa, &unk_100F0FBD8);
            Set.Iterator.init(_cocoa:)();
            v33 = v144;
            v34 = v145;
            v35 = v146;
            v19 = v147;
            v36 = v148;
          }

          else
          {
            v19 = 0;
            v37 = -1 << *(v33 + 32);
            v34 = v33 + 56;
            v35 = ~v37;
            v38 = -v37;
            v39 = v38 < 64 ? ~(-1 << v38) : -1;
            v36 = v39 & *(v33 + 56);
          }

          *&rect = *&recta + 1;
          v18 = ((v35 + 64) >> 6);
          while (1)
          {
            v17 = v19;
            if ((v33 & 0x8000000000000000) == 0)
            {
              break;
            }

            v24 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v43 = __CocoaSet.Iterator.next()();
            if (!v43)
            {
              goto LABEL_19;
            }

            *&v127[0] = v43;
            _s4WordCMa();
            swift_dynamicCast();
            v42 = aBlock;
            if (!aBlock)
            {
              goto LABEL_19;
            }

LABEL_42:
            if (v126[2])
            {
              v24 = v126;
              v44 = sub_1006BE788(v7);
              if (v45)
              {
                v46 = *(v42 + 208);
                if (v46)
                {
                  v47 = v126[7] + 32 * v44;
                  v49 = *(v47 + 16);
                  v48 = *(v47 + 24);
                  v2 = *v47;
                  v1 = *(v47 + 8);
                  v24 = v46;
                  v151.origin.x = v2;
                  v151.origin.y = v1;
                  v151.size.width = v49;
                  v151.size.height = v48;
                  Width = CGRectGetWidth(v151);
                  v51 = Width - CGRectGetWidth(*(v7 + 80));
                  [v24 frame];
                  [v24 setFrame:v52 - v51];
                }
              }
            }
          }

          v40 = v19;
          v41 = v36;
          if (v36)
          {
            break;
          }

          while (1)
          {
            v19 = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              __break(1u);
              goto LABEL_93;
            }

            if (v19 >= v18)
            {
              break;
            }

            v41 = *(v34 + 8 * v19);
            v40 = (v40 + 1);
            if (v41)
            {
              goto LABEL_38;
            }
          }

LABEL_19:
          sub_10005C9F8(v33);

          v27 = rect;
          v17 = v125;
          v18 = &selRef_setContacts_;
          v25 = v116;
          v24 = v117;
          if (*&rect == v119)
          {

            v7 = v113;
LABEL_77:
            v92 = *(v17 + 8);
            v93 = v17[9];
            v94 = v17[10];
            v95 = v17[11];
            *(v17 + 4) = v115;
            *(v17 + 5) = v114;
            v24 = swift_allocObject();
            v24[2] = v17;
            v126 = v92;
            v24[3] = v92;
            *(v24 + 4) = v93;
            rect = v93;
            v1 = v94;
            *(v24 + 5) = v94;
            *(v24 + 6) = v95;
            v2 = v95;

            v19 = _swiftEmptyArrayStorage;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_96;
          }
        }

LABEL_38:
        v36 = (v41 - 1) & v41;
        v42 = *(*(v33 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v41)))));

        if (!v42)
        {
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      sub_1000095E8(__dst, &qword_1011BC540, &unk_100F0F580);
    }

    LODWORD(rect) = 0;
    goto LABEL_49;
  }

  LODWORD(rect) = 1;
LABEL_49:
  v53 = *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment];
  if (v53 == 1)
  {
    [v20 bounds];
    v54 = (CGRectGetMaxX(v153) - v125[10]) * 0.5;
    goto LABEL_53;
  }

  if (v53 == 2)
  {
    [v20 bounds];
    v54 = CGRectGetMaxX(v152) - v125[10];
LABEL_53:
    v125[8] = v54;
  }

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_55:
    if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v56 = (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] & 1) != 0;
      if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
      {
        v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 384];
      }

      else
      {
        v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 360];
      }
    }

    else
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 368];
      v56 = v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind];
    }

    v58 = *v57;
    memcpy(__dst, &v20[v55], 0x2B0uLL);
    v59 = v58;
    sub_1002AD8C8(__dst, &v134);
    sub_100CA33F8(v59, v56, __dst);
    v61 = v60;
    sub_100C9C2C4(__dst);

    [v20 addSubview:v61];
    v126 = objc_opt_self();
    if (![v126 v18[201]])
    {

      goto LABEL_68;
    }

    v62 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v63 = v62 + 8;
    v64 = *v62;
    if (*v62 != 2)
    {
      v125 = v19;
      v120 = v61;
      v66 = *(v62 + 3);
      v65 = *(v62 + 4);
      v67 = v7;
      v68 = *(v62 + 1);
      v69 = *(v62 + 2);
      v149[0] = *v62;
      v149[1] = v68;
      v149[2] = v69;
      v149[3] = v66;
      v149[4] = v65;
      sub_100C9E2F8(v64);
      sub_100C864C0(v149);
      v7 = v67;
      v61 = v120;
      v19 = v125;
      sub_100C9DE90(v64);
      v70 = *v62;
      *v62 = 2;
      *v63 = 0u;
      *(v62 + 24) = 0u;
      sub_100C9DE90(v70);
    }

    v71 = *(v7 + 16);
    aBlock = *v7;
    v72 = *(v7 + 32);
    v73 = *(v7 + 64);
    v74 = *(v7 + 80);
    v131 = *(v7 + 48);
    v132 = v73;
    v133 = v74;
    v129 = v71;
    v130 = v72;
    if (*(&aBlock + 1))
    {
      v134 = aBlock;
      v75 = *(v7 + 64);
      v137 = *(v7 + 48);
      v138 = v75;
      v139 = *(v7 + 80);
      v76 = *(v7 + 32);
      v135 = *(v7 + 16);
      v136 = v76;
      if ((LOBYTE(rect) & 1) == 0)
      {
        break;
      }
    }

    if (v64 != 2)
    {

      goto LABEL_74;
    }

    v20 = v124;
LABEL_68:
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v17;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_100C9E2E8;
    *(v77 + 24) = v24;
    *&v130 = sub_10018A020;
    *(&v130 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v129 = sub_100029B9C;
    *(&v129 + 1) = &unk_1010F5D38;
    v78 = _Block_copy(&aBlock);
    v18 = *(&v130 + 1);

    v17 = v20;

    [v126 performWithoutAnimation:v78];

    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if ((v78 & 1) == 0)
    {
      v79 = v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
      v80 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
      *v79 = 2;
      *(v79 + 8) = 0u;
      *(v79 + 24) = 0u;
      sub_100C9DE90(v80);
      v81 = *(v7 + 32);
      v82 = *(v7 + 64);
      v83 = *(v7 + 80);
      v131 = *(v7 + 48);
      v132 = v82;
      v133 = v83;
      v84 = *(v7 + 16);
      aBlock = *v7;
      v129 = v84;
      v130 = v81;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      sub_1000095E8(&aBlock, &qword_1011BC540, &unk_100F0F580);

      return;
    }

    while (1)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v19 = sub_100064418(0, v19[2] + 1, 1, v19);
LABEL_78:
      v97 = v19[2];
      v96 = v19[3];
      if (v97 >= v96 >> 1)
      {
        v19 = sub_100064418((v96 > 1), v97 + 1, 1, v19);
      }

      v19[2] = (v97 + 1);
      v98 = &v19[2 * v97];
      v98[4] = sub_100C9E308;
      v98[5] = v24;
      v24 = *(v17 + 7);
      v99 = v24[2];
      if (!v99)
      {
        break;
      }

      v121 = Int.seconds.getter(0);

      v7 = 0;
      while (v7 < v24[2])
      {
        v18 = v24[v7 + 4];
        v100 = *(v18 + 10);
        v101 = *(v18 + 11);
        v103 = *(v18 + 12);
        v102 = *(v18 + 13);

        v154.origin.x = v100;
        v154.origin.y = v101;
        v154.size.width = v103;
        v154.size.height = v102;
        MaxX = CGRectGetMaxX(v154);
        *&v155.origin.x = v126;
        v155.origin.y = rect;
        v155.size.width = v1;
        v155.size.height = v2;
        v105 = v121;
        if (CGRectGetWidth(v155) < MaxX)
        {
          v106 = CGRectGetMaxX(*(v18 + 10));
          *&v156.origin.x = v126;
          v156.origin.y = rect;
          v156.size.width = v1;
          v156.size.height = v2;
          v105 = v106 - CGRectGetWidth(v156);
        }

        v107 = CGRectGetWidth(*(v17 + 8));
        v157.origin.x = v105 + v107 - CGRectGetWidth(*(v18 + 10));
        *&v157.size.width = v18[12];
        *&v157.size.height = v18[13];
        *&v158.origin.x = v18[10];
        *&v157.origin.y = v18[11];
        v18[10] = *&v157.origin.x;
        v158.origin.y = v157.origin.y;
        v158.size.width = v157.size.width;
        v158.size.height = v157.size.height;
        if (!CGRectEqualToRect(v157, v158))
        {
          v18[16] = 0;
        }

        v108 = swift_allocObject();
        *(v108 + 2) = v18;
        v108[3] = v100;
        v108[4] = v101;
        v108[5] = v103;
        v108[6] = v102;
        v109 = v19[2];
        v110 = v19[3];
        v111 = v19;

        if (v109 >= v110 >> 1)
        {
          v111 = sub_100064418((v110 > 1), v109 + 1, 1, v19);
        }

        ++v7;

        v111[2] = (v109 + 1);
        v19 = v111;
        v112 = &v111[2 * v109];
        v112[4] = sub_100C9E31C;
        v112[5] = v108;
        v17 = v125;
        if (v99 == v7)
        {

          sub_1000095E8(__dst, &qword_1011BC540, &unk_100F0F580);
          LODWORD(rect) = 0;
          v7 = v113;
          v20 = v124;
          v18 = &selRef_setContacts_;
          goto LABEL_55;
        }
      }

LABEL_93:
      __break(1u);
    }

    sub_1000095E8(__dst, &qword_1011BC540, &unk_100F0F580);
    LODWORD(rect) = 0;
    v20 = v124;
  }

  v86 = swift_allocObject();
  *(v86 + 16) = v19;
  *(v86 + 24) = v124;
  sub_1000089F8(&aBlock, v127, &qword_1011BC540, &unk_100F0F580);
  v87 = v124;
  sub_100C871AC(&v134, sub_100C9E2F0, v86);

  sub_1000095E8(&aBlock, &qword_1011BC540, &unk_100F0F580);
LABEL_74:
  v88 = *v62;
  *v62 = 2;
  *v63 = 0u;
  *(v62 + 24) = 0u;
  sub_100C9DE90(v88);
  v89 = *(v7 + 48);
  v127[2] = *(v7 + 32);
  v127[3] = v89;
  v90 = *(v7 + 80);
  v127[4] = *(v7 + 64);
  v127[5] = v90;
  v91 = *(v7 + 16);
  v127[0] = *v7;
  v127[1] = v91;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  sub_1000095E8(v127, &qword_1011BC540, &unk_100F0F580);
}

void *sub_100C857A4(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100C98000(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100C7FCD4(v5, v6);
LABEL_10:

  return sub_100C98238(a1, v2);
}

double sub_100C85898(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  if (!CGRectEqualToRect(*&a2, v8))
  {
    *(a1 + 128) = 0;
  }

  return result;
}

void sub_100C858F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v2;
    }

    while (v2);
    sub_100C84960();
    v7 = [a2 superview];
    [v7 setNeedsLayout];
  }
}

void sub_100C859BC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  swift_beginAccess();
  v4 = v3[1];
  v129 = *v3;
  v130 = v4;
  v5 = v3[3];
  v131 = v3[2];
  v132 = v5;
  v6 = v3[5];
  v133 = v3[4];
  v134 = v6;
  v7 = *(&v129 + 1);
  if (*(&v129 + 1))
  {
    v8 = v129;
    v10 = *(&v131 + 1);
    v9 = v131;
    v105 = *(*(&v131 + 1) + 16);
    if (!v105)
    {

      goto LABEL_62;
    }

    v102 = v129;
    v106 = *(&v131 + 1) + 32;
    v108 = v130;
    sub_1000089F8(&v129, v128, &qword_1011BC540, &unk_100F0F580);
    v101 = v9;

    v11 = 0;
    v104 = v10;
LABEL_5:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_129;
    }

    v112 = v11;
    v12 = *(v106 + 8 * v11);
    swift_beginAccess();

    v15 = sub_100C9C158(v13, v14);

    if (*(v108 + 16) && (sub_1006BE788(v12), (v16 & 1) != 0))
    {
    }

    else
    {
      v17 = &_swiftEmptySetSingleton;
    }

    v18 = sub_100C857A4(v15, v17);

    if ((v18 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      _s4WordCMa();
      sub_100C9DE48(&qword_1011BC530, _s4WordCMa, &unk_100F0FBD8);
      Set.Iterator.init(_cocoa:)();
      v18 = v128[0];
      v19 = v128[1];
      v20 = v128[2];
      v21 = v128[3];
      v22 = v128[4];
    }

    else
    {
      v21 = 0;
      v23 = -1 << *(v18 + 32);
      v19 = v18 + 56;
      v20 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v18 + 56);
    }

    v26 = (v20 + 64) >> 6;
    v116 = v18;
    v117 = v19;
    v113 = v112 + 1;
    for (i = v26; ; v26 = i)
    {
      if (v18 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (_s4WordCMa(), swift_dynamicCast(), v32 = v127, v121 = v22, v123 = v21, !v127))
        {
LABEL_4:
          sub_10005C9F8(v18);

          v10 = v104;
          v11 = v113;
          if (v113 == v105)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v29 = v21;
        v30 = v22;
        for (j = v21; !v30; ++v29)
        {
          j = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_128;
          }

          if (j >= v26)
          {
            goto LABEL_4;
          }

          v30 = *(v19 + 8 * j);
        }

        v121 = (v30 - 1) & v30;
        v123 = j;

        if (!v32)
        {
          goto LABEL_4;
        }
      }

      v119 = v32;
      v33 = *(v32 + 104);
      v125 = v33;
      if (v33 >> 62)
      {
        break;
      }

      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_29;
      }

LABEL_53:
      v49 = *(v119 + 208);
      if (v49)
      {
        [v49 removeFromSuperview];
        v50 = *(v119 + 208);
      }

      else
      {
        v50 = 0;
      }

      v18 = v116;
      *(v119 + 208) = 0;

      if (!*(v119 + 208))
      {
        v51 = *(v119 + 128);
        *(v119 + 128) = 0;
        v52 = *(v119 + 136);
        *(v119 + 136) = 2;
        sub_100C9E32C(v51, v52);
      }

      v27 = *(v119 + 128);
      *(v119 + 128) = 0;
      v28 = *(v119 + 136);
      *(v119 + 136) = 2;
      sub_100C9E32C(v27, v28);

      v22 = v121;
      v21 = v123;
      v19 = v117;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
      goto LABEL_53;
    }

LABEL_29:
    v35 = 0;
    v36 = v125 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v42 = __OFADD__(v35++, 1);
        if (v42)
        {
          break;
        }

        goto LABEL_39;
      }

      if (v35 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v41 = *(v125 + 32 + 8 * v35);

      v42 = __OFADD__(v35++, 1);
      if (v42)
      {
        break;
      }

LABEL_39:
      v43 = *(v41 + 88);
      if (!(v43 >> 62))
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44)
      {
LABEL_41:
        if (v44 < 1)
        {
          goto LABEL_60;
        }

        v45 = 0;
        while (2)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v47 = *(v46 + 96);
            if (!v47)
            {
LABEL_48:
              v48 = 0;
LABEL_45:
              ++v45;
              *(v46 + 96) = 0;

              if (v44 == v45)
              {
                goto LABEL_30;
              }

              continue;
            }
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);

            v47 = *(v46 + 96);
            if (!v47)
            {
              goto LABEL_48;
            }
          }

          break;
        }

        [v47 removeFromSuperview];
        v48 = *(v46 + 96);
        goto LABEL_45;
      }

LABEL_30:
      v37 = *(v41 + 184);
      if (v37)
      {
        [v37 removeFromSuperview];
        v38 = *(v41 + 184);
      }

      else
      {
        v38 = 0;
      }

      *(v41 + 184) = 0;

      v39 = *(v41 + 136);
      *(v41 + 136) = 0;
      v40 = *(v41 + 144);
      *(v41 + 144) = 2;
      sub_100C9E32C(v39, v40);

      if (v35 == v34)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    v7 = *(&v102 + 1);
    v8 = v102;
LABEL_62:
    v53 = *(a2 + 48);
    v54 = *(a2 + 56);

    sub_100C98B30(v53, v54, v8, v7);
    v56 = v55;

    v110 = *(v56 + 16);
    if (v110)
    {
      v57 = 0;
      v111 = v56 + 32;
      v109 = v56;
      while (1)
      {
        if (v57 >= *(v56 + 16))
        {
          goto LABEL_130;
        }

        v114 = v57;
        v58 = *(v111 + 8 * v57);
        swift_beginAccess();
        v59 = v58;
        v60 = *(v58 + 16);
        if (!(v60 >> 62))
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            break;
          }

          goto LABEL_105;
        }

        v84 = *(v58 + 16);
        v85 = _CocoaArrayWrapper.endIndex.getter();
        v60 = v84;
        v61 = v85;
        v59 = v58;
        if (v61)
        {
          break;
        }

LABEL_105:
        v83 = v59;

LABEL_106:
        v86 = *(v83 + 112);
        v87 = v83;
        if (v86)
        {
          [v86 removeFromSuperview];
          v87 = v83;
          v88 = *(v83 + 112);
        }

        else
        {
          v88 = 0;
        }

        *(v87 + 112) = 0;

        v57 = v114 + 1;
        v56 = v109;
        if (v114 + 1 == v110)
        {
          goto LABEL_110;
        }
      }

      if (v61 < 1)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v120 = v60 & 0xC000000000000001;
      v107 = v59;

      v62 = 0;
      v118 = v61;
      while (2)
      {
        if (v120)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v66 = *(v65 + 104);
        v126 = v66;
        v122 = v65;
        v124 = v62;
        if (!(v66 >> 62))
        {
          v34 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_75;
          }

LABEL_98:
          v79 = *(v122 + 208);
          if (v79)
          {
            [v79 removeFromSuperview];
            v80 = *(v122 + 208);
          }

          else
          {
            v80 = 0;
          }

          *(v122 + 208) = 0;

          if (!*(v122 + 208))
          {
            v81 = *(v122 + 128);
            *(v122 + 128) = 0;
            v82 = *(v122 + 136);
            *(v122 + 136) = 2;
            sub_100C9E32C(v81, v82);
          }

          v62 = v124 + 1;
          v63 = *(v122 + 128);
          *(v122 + 128) = 0;
          v64 = *(v122 + 136);
          *(v122 + 136) = 2;
          sub_100C9E32C(v63, v64);

          if (v124 + 1 == v118)
          {

            v83 = v107;
            goto LABEL_106;
          }

          continue;
        }

        break;
      }

      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (!v34)
      {
        goto LABEL_98;
      }

LABEL_75:
      v67 = 0;
      while (2)
      {
        if ((v126 & 0xC000000000000001) != 0)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v42 = __OFADD__(v67++, 1);
          if (v42)
          {
            goto LABEL_118;
          }

LABEL_84:
          v72 = *(v71 + 88);
          if (!(v72 >> 62))
          {
            v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v73)
            {
              goto LABEL_86;
            }

LABEL_95:
            v78 = *(v71 + 184);
            if (v78)
            {
              [v78 removeFromSuperview];
              v68 = *(v71 + 184);
            }

            else
            {
              v68 = 0;
            }

            *(v71 + 184) = 0;

            v69 = *(v71 + 136);
            *(v71 + 136) = 0;
            v70 = *(v71 + 144);
            *(v71 + 144) = 2;
            sub_100C9E32C(v69, v70);

            if (v67 == v34)
            {
              goto LABEL_98;
            }

            continue;
          }

          v73 = _CocoaArrayWrapper.endIndex.getter();
          if (!v73)
          {
            goto LABEL_95;
          }

LABEL_86:
          if (v73 >= 1)
          {
            v74 = 0;
            while (1)
            {
              if ((v72 & 0xC000000000000001) != 0)
              {
                v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v76 = *(v75 + 96);
                if (!v76)
                {
LABEL_93:
                  v77 = 0;
                  goto LABEL_90;
                }
              }

              else
              {
                v75 = *(v72 + 8 * v74 + 32);

                v76 = *(v75 + 96);
                if (!v76)
                {
                  goto LABEL_93;
                }
              }

              [v76 removeFromSuperview];
              v77 = *(v75 + 96);
LABEL_90:
              ++v74;
              *(v75 + 96) = 0;

              if (v73 == v74)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if (v67 >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v71 = *(v126 + 32 + 8 * v67);

          v42 = __OFADD__(v67++, 1);
          if (!v42)
          {
            goto LABEL_84;
          }

LABEL_118:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_110:

    sub_1000095E8(&v129, &qword_1011BC540, &unk_100F0F580);
  }

  v36 = a1;
  v89 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  v90 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  if (v90)
  {
    if (v90 == 1)
    {
      v34 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v97 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      if (v97)
      {
        [v97 removeFromSuperview];
        v36 = a1;
        v98 = *(a1 + v34);
LABEL_122:
        *(v36 + v34) = 0;

        return;
      }

LABEL_121:
      v98 = 0;
      goto LABEL_122;
    }

    if (v90 != 2)
    {
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[3];
      v94 = v89[4];
      v95 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v96 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      sub_100C9E2F8(*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate));
      if (v96)
      {
        [v96 setAttributedText:v90];
      }

      v99 = *(a1 + v95);
      if (v99)
      {
        v100 = v99;
        [v100 setFrame:{v91, v92, v93, v94}];
        sub_100C9DE90(v90);
      }

      else
      {
        sub_100C9DE90(v90);
      }
    }
  }
}

void sub_100C864C0(double *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (v2)
  {
    v3 = *a1;
    if (*a1 == 1)
    {
      v19 = objc_allocWithZone(UISpringTimingParameters);
      v20 = v2;
      v21 = [v19 initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      sub_100009F78(0, &qword_1011BD500, UIViewPropertyAnimator_ptr);
      v22 = v21;
      v23 = v1;
      isa = UIViewPropertyAnimator.init(springTimingParameters:)(v22).super.isa;
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v60 = sub_100C9E28C;
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10002BC98;
      v59 = &unk_1010F5B08;
      v26 = _Block_copy(&aBlock);
      v27 = v20;

      [(objc_class *)isa addAnimations:v26];
      _Block_release(v26);
      v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v60 = sub_1001D2724;
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10002BC98;
      v59 = &unk_1010F5B58;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v28 addAnimations:v30];
      _Block_release(v30);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v23;
      v60 = sub_100C9E294;
      v61 = v32;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100338AB8;
      v59 = &unk_1010F5BA8;
      v33 = _Block_copy(&aBlock);
      v18 = v31;
      v34 = v23;

      [(objc_class *)isa addCompletion:v33];
      _Block_release(v33);
      [(objc_class *)isa startAnimation];
      [v28 startAnimation];

LABEL_11:
      return;
    }

    if (!v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_100C9E2E0;
      *(v6 + 24) = v5;
      v60 = sub_10018A020;
      v61 = v6;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100029B9C;
      v59 = &unk_1010F5C20;
      v7 = _Block_copy(&aBlock);
      v8 = v2;

      [v4 performWithoutAnimation:v7];
      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if ((v4 & 1) == 0)
      {
        v9 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        sub_100009F78(0, &qword_1011BD500, UIViewPropertyAnimator_ptr);
        v10 = v9;
        v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        v60 = sub_1005EB424;
        v61 = v12;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5C70;
        v13 = _Block_copy(&aBlock);
        v14 = v8;

        [(objc_class *)v11.super.isa addAnimations:v13];
        _Block_release(v13);
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v60 = sub_1001D2178;
        v61 = v16;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5CC0;
        v17 = _Block_copy(&aBlock);
        v18 = v14;

        [v15 addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimation];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    v36 = a1[1];
    v35 = a1[2];
    v38 = a1[3];
    v37 = a1[4];
    v54 = v2;
    v40 = [v54 snapshotViewAfterScreenUpdates:0];
    if (v40)
    {
      v41 = v40;
      v42 = objc_opt_self();
      v43 = swift_allocObject();
      *(v43 + 2) = v41;
      *(v43 + 3) = v54;
      *(v43 + 4) = v1;
      *(v43 + 5) = v3;
      v43[6] = v36;
      v43[7] = v35;
      v43[8] = v38;
      v43[9] = v37;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_100C9E240;
      *(v44 + 24) = v43;
      v60 = sub_10018A020;
      v61 = v44;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100029B9C;
      v59 = &unk_1010F5A18;
      v45 = _Block_copy(&aBlock);
      v46 = v54;
      v47 = v1;
      v48 = v41;
      sub_100C9E254(a1, v55);

      [v42 performWithoutAnimation:v45];
      _Block_release(v45);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v48 frame];
        [v48 setFrame:?];
        [v46 setFrame:{v36, v35, v38, v37}];

        v11.super.isa = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        v60 = sub_1001D3178;
        v61 = v50;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5A68;
        v51 = _Block_copy(&aBlock);
        v10 = v48;

        [(objc_class *)v11.super.isa addAnimations:v51];
        _Block_release(v51);
        v52 = swift_allocObject();
        *(v52 + 16) = v46;
        v60 = sub_1005EBD78;
        v61 = v52;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5AB8;
        v53 = _Block_copy(&aBlock);
        v18 = v46;

        [v15 addAnimations:v53];
        _Block_release(v53);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimationAfterDelay:0.1];
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      return;
    }

    [v54 setAttributedText:v3];
    [v54 setFrame:{v36, v35, v38, v37}];
  }
}

id sub_100C86F74(void *a1)
{
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.0];
}

id sub_100C87040(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 frame];
  [a1 setFrame:?];
  [a3 addSubview:a1];
  [a2 setAlpha:0.0];
  [a2 setAttributedText:a4];
  [a2 frame];

  return [a2 setFrame:?];
}

void sub_100C87114(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setFilters:isa];

  v4 = String._bridgeToObjectiveC()();
  [a2 removeAnimationForKey:v4];
}

void sub_100C871AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (!v4)
  {
    return;
  }

  v203 = a2;
  v204 = a3;
  if (a1[11])
  {
    v212 = 0;
  }

  else
  {
    v212 = v4[5] != 0;
  }

  sub_100009F78(0, &qword_1011BD500, UIViewPropertyAnimator_ptr);
  v6 = objc_allocWithZone(UISpringTimingParameters);

  isa = UIViewPropertyAnimator.init(springTimingParameters:)([v6 initWithMass:1.0 stiffness:120.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v221 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v226 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.32 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *a1;
  v10 = a1[1];

  sub_100C98B30(v9, v10, v7, v8);
  v208 = v11;
  v12 = v4[6];
  v13 = v4[7];

  sub_100C98B30(v12, v13, v9, v10);
  v209 = v14;

  v15 = a1[5];
  v16 = &stru_101148000;
  v207 = *(v15 + 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v207)
  {
    goto LABEL_54;
  }

  v20 = 0;
  v206 = v15 + 32;
  v220 = a1;
  v21 = a1[2];
  v219 = kCAFilterGaussianBlur;
  v217 = kCAFilterInputRadius;
  v205 = v21;
LABEL_8:
  v213 = v20;
  v22 = *(v206 + 8 * v20);
  swift_beginAccess();

  v25 = sub_100C9C158(v23, v24);

  if (*(v21 + 16) && (v26 = sub_1006BE788(v22), (v27 & 1) != 0))
  {
    v28 = *(*(v21 + 56) + 8 * v26);
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

  v29 = sub_100C857A4(v28, v25);
  v230 = sub_100C857A4(v25, v28);

  if ((v29 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa, &unk_100F0FBD8);
    Set.Iterator.init(_cocoa:)();
    v29 = v249;
    v30 = v250;
    v31 = v251;
    v32 = v252;
    v33 = v253;
  }

  else
  {
    v32 = 0;
    v34 = -1 << *(v29 + 32);
    v30 = v29 + 56;
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v29 + 56);
  }

  v214 = v213 + 1;
  v37 = (v31 + 64) >> 6;
  v227 = v30;
  v222 = v37;
  v225 = v29;
  while ((v29 & 0x8000000000000000) == 0)
  {
    v38 = v32;
    v39 = v33;
    v40 = v32;
    if (!v33)
    {
      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          goto LABEL_33;
        }

        v39 = *(v30 + 8 * v40);
        ++v38;
        if (v39)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_25:
    v41 = (v39 - 1) & v39;
    v42 = *(*(v29 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));

    if (!v42)
    {
      goto LABEL_33;
    }

LABEL_29:
    v235 = v41;
    v44 = objc_opt_self();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v238;
    v46 = *(v220 + 3);
    *(v45 + 64) = *(v220 + 2);
    *(v45 + 80) = v46;
    v47 = *(v220 + 5);
    *(v45 + 96) = *(v220 + 4);
    *(v45 + 112) = v47;
    v48 = *(v220 + 1);
    *(v45 + 32) = *v220;
    *(v45 + 48) = v48;
    *(v45 + 128) = v22;
    v49 = v238;
    v50 = v22;

    sub_100C9DFD4(v220, &aBlock);
    sub_100020438(v17, v18);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_100C9DFC4;
    *(v51 + 24) = v45;
    v246 = sub_10018A020;
    v247 = v51;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_100029B9C;
    v245 = &unk_1010F5928;
    v52 = _Block_copy(&aBlock);

    [v44 performWithoutAnimation:v52];
    _Block_release(v52);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      goto LABEL_125;
    }

    v246 = sub_100C9E00C;
    v247 = v42;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_10002BC98;
    v245 = &unk_1010F5950;
    v53 = _Block_copy(&aBlock);

    [(objc_class *)isa addAnimations:v53];
    _Block_release(v53);
    v54 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v246 = sub_100C9E054;
    v247 = v42;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_10002BC98;
    v245 = &unk_1010F5978;
    v55 = _Block_copy(&aBlock);

    [v54 addAnimations:v55];
    _Block_release(v55);
    v56 = v42[26];
    if (v56)
    {
      v57 = [v56 layer];
      if (v57)
      {
        v58 = v57;
        v59 = [objc_allocWithZone(CAFilter) initWithType:v219];
        v60 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v59 setValue:v60 forKey:v217];

        sub_10010FC20(&qword_1011BC168, &unk_100F10820);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_100EBC6B0;
        *(v61 + 56) = sub_100009F78(0, &qword_1011BC578, CAFilter_ptr);
        *(v61 + 32) = v59;
        v62 = v59;
        v63 = Array._bridgeToObjectiveC()().super.isa;

        [v58 setFilters:v63];

        v64 = String._bridgeToObjectiveC()();
        v65 = [objc_opt_self() animationWithKeyPath:v64];

        v66 = v65;
        [v66 setDuration:0.23];
        [v66 setBeginTime:CACurrentMediaTime() + 0.15];
        [v66 setFillMode:kCAFillModeBoth];
        v67 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v66 setFromValue:v67];

        v68 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v66 setToValue:v68];

        [v66 setRemovedOnCompletion:0];
        v69 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v70) = 1051260355;
        LODWORD(v71) = 1059816735;
        LODWORD(v72) = 1.0;
        v73 = [v69 initWithControlPoints:v70 :0.0 :v71 :v72];
        [v66 setTimingFunction:v73];

        v74 = swift_allocObject();
        *(v74 + 16) = v58;
        v75 = v58;
        CAAnimation.completion.setter(sub_100C9E7E4, v74);

        v76 = String._bridgeToObjectiveC()();
        [v75 addAnimation:v66 forKey:v76];
      }
    }

    [v54 startAnimationAfterDelay:{0.1, v203, v204}];

    v19 = 1;
    v17 = sub_100C9DFC4;
    v18 = v45;
    v32 = v40;
    v33 = v235;
    v22 = v50;
    v37 = v222;
    v29 = v225;
    v30 = v227;
  }

  v43 = __CocoaSet.Iterator.next()();
  if (v43)
  {
    v248 = v43;
    _s4WordCMa();
    swift_dynamicCast();
    v42 = aBlock;
    v40 = v32;
    v41 = v33;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v223 = v17;
  sub_10005C9F8(v29);
  v77 = v230;
  v210 = v18;
  v78 = v19;
  if ((v230 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa, &unk_100F0FBD8);
    Set.Iterator.init(_cocoa:)();
    v77 = v254;
    v79 = v255;
    v80 = v256;
    v81 = v257;
    v82 = v258;
  }

  else
  {
    v81 = 0;
    v83 = -1 << *(v230 + 32);
    v79 = (v230 + 56);
    v80 = ~v83;
    v84 = -v83;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    else
    {
      v85 = -1;
    }

    v82 = v85 & *(v230 + 56);
  }

  v231 = v77;
  v86 = (v80 + 64) >> 6;
  while (2)
  {
    if (v77 < 0)
    {
      v92 = __CocoaSet.Iterator.next()();
      if (v92)
      {
        v248 = v92;
        _s4WordCMa();
        swift_dynamicCast();
        v91 = aBlock;
        v89 = v81;
        v90 = v82;
        if (aBlock)
        {
LABEL_51:
          v236 = v90;
          v93 = swift_allocObject();
          *(v93 + 16) = v238;
          *(v93 + 24) = v91;
          v246 = sub_100C9DF9C;
          v247 = v93;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_10002BC98;
          v245 = &unk_1010F5838;
          v94 = _Block_copy(&aBlock);
          v95 = v238;

          [(objc_class *)v221 addAnimations:v94];
          _Block_release(v94);
          v246 = sub_100C9DFA4;
          v247 = v91;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_100338AB8;
          v245 = &unk_1010F5860;
          v96 = _Block_copy(&aBlock);

          [(objc_class *)v221 addCompletion:v96];
          _Block_release(v96);
          v246 = sub_100C9DFA8;
          v247 = v91;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_10002BC98;
          v245 = &unk_1010F5888;
          v97 = _Block_copy(&aBlock);

          [v226 addAnimations:v97];
          _Block_release(v97);
          v98 = v91[26];
          if (v98 && (v99 = [v98 layer]) != 0)
          {
            v100 = v99;
            v101 = [objc_allocWithZone(CAFilter) initWithType:v219];
            v102 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v101 setValue:v102 forKey:v217];

            sub_10010FC20(&qword_1011BC168, &unk_100F10820);
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_100EBC6B0;
            *(v103 + 56) = sub_100009F78(0, &qword_1011BC578, CAFilter_ptr);
            *(v103 + 32) = v101;
            v104 = v101;
            v105 = Array._bridgeToObjectiveC()().super.isa;

            [v100 setFilters:v105];

            v106 = String._bridgeToObjectiveC()();
            v107 = [objc_opt_self() animationWithKeyPath:v106];

            v108 = v107;
            [v108 setDuration:0.32];
            [v108 setBeginTime:CACurrentMediaTime() + 0.15];
            [v108 setFillMode:kCAFillModeBoth];
            v109 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v108 setFromValue:v109];

            v110 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v108 setToValue:v110];

            [v108 setRemovedOnCompletion:0];
            v111 = objc_allocWithZone(CAMediaTimingFunction);
            LODWORD(v112) = 1051260355;
            LODWORD(v113) = 1059816735;
            LODWORD(v114) = 1.0;
            v115 = [v111 initWithControlPoints:v112 :0.0 :v113 :v114];
            [v108 setTimingFunction:v115];

            v116 = swift_allocObject();
            *(v116 + 16) = v100;
            v117 = v100;
            CAAnimation.completion.setter(sub_100C9E7E4, v116);

            v118 = String._bridgeToObjectiveC()();
            [v117 addAnimation:v108 forKey:v118];
          }

          else
          {
          }

          v78 = 1;
          v81 = v89;
          v82 = v236;
          v77 = v231;
          continue;
        }
      }

LABEL_7:
      sub_10005C9F8(v231);
      v20 = v214;
      v16 = &stru_101148000;
      v17 = v223;
      v19 = v78;
      v21 = v205;
      v18 = v210;
      if (v214 != v207)
      {
        goto LABEL_8;
      }

LABEL_54:
      v211 = v18;
      v224 = v17;
      v228 = *(v208 + 16);
      if (v228)
      {
        v239 = objc_opt_self();
        v119 = *(v208 + 16);

        if (!v119)
        {
          goto LABEL_126;
        }

        v120 = 0;
        v121 = 0;
        v232 = 0;
        v122 = 0;
        v123 = 0;
        v216 = kCAFilterGaussianBlur;
        v215 = kCAFilterInputRadius;
        v237 = v19;
        while (1)
        {
          v124 = *(v208 + 32 + 8 * v120);
          v234 = v120;
          if (*(v124 + 56) == 1)
          {
            if (v19)
            {

              v237 = 1;
            }

            else
            {
              swift_beginAccess();
              v125 = *(v124 + 16);
              if (v125 >> 62)
              {
                v126 = _CocoaArrayWrapper.endIndex.getter();
                if (v126)
                {
LABEL_63:
                  if (v126 < 1)
                  {
                    goto LABEL_129;
                  }

                  v127 = 0;
                  do
                  {
                    if ((v125 & 0xC000000000000001) != 0)
                    {
                      v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v128 = *(v125 + 8 * v127 + 32);
                    }

                    sub_100020438(v123, v122);
                    v129 = swift_allocObject();
                    *(v129 + 16) = sub_100C9DF94;
                    *(v129 + 24) = v128;
                    v246 = sub_10018A020;
                    v247 = v129;
                    aBlock = _NSConcreteStackBlock;
                    v243 = 1107296256;
                    v244 = sub_100029B9C;
                    v245 = &unk_1010F57C0;
                    v130 = _Block_copy(&aBlock);

                    [v239 performWithoutAnimation:v130];
                    _Block_release(v130);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_124;
                    }

                    ++v127;
                    v246 = sub_100C9E750;
                    v247 = v128;
                    aBlock = _NSConcreteStackBlock;
                    v243 = 1107296256;
                    v244 = sub_10002BC98;
                    v245 = &unk_1010F57E8;
                    v132 = _Block_copy(&aBlock);

                    [(objc_class *)isa addAnimations:v132];
                    _Block_release(v132);

                    v123 = sub_100C9DF94;
                    v122 = v128;
                  }

                  while (v126 != v127);

                  v237 = 0;
                  v123 = sub_100C9DF94;
                  v122 = v128;
                  v16 = &stru_101148000;
                  goto LABEL_73;
                }
              }

              else
              {
                v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v126)
                {
                  goto LABEL_63;
                }
              }

              v237 = 0;
            }
          }

          else
          {
          }

LABEL_73:
          v133 = swift_allocObject();
          *(v133 + 16) = v212;
          *(v133 + 24) = v124;

          sub_100020438(v232, v121);
          v134 = swift_allocObject();
          *(v134 + 16) = sub_100C9DEA0;
          *(v134 + 24) = v133;
          v246 = sub_100029B94;
          v247 = v134;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_100029B9C;
          v245 = &unk_1010F5540;
          v135 = v124;
          v136 = _Block_copy(&aBlock);

          [v239 performWithoutAnimation:v136];
          _Block_release(v136);
          LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

          if (v136)
          {
            goto LABEL_128;
          }

          v120 = v234 + 1;
          v246 = sub_100C9DEAC;
          v247 = v135;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_10002BC98;
          v245 = &unk_1010F5568;
          v137 = _Block_copy(&aBlock);

          [isa v16[187].attr];
          _Block_release(v137);
          v246 = sub_100C9DEF0;
          v247 = v135;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_10002BC98;
          v245 = &unk_1010F5590;
          v138 = _Block_copy(&aBlock);

          [v226 v16[187].attr];
          _Block_release(v138);
          if ((v237 & 1) == 0)
          {
            goto LABEL_86;
          }

          v139 = v135[14];
          if (!v139)
          {
            goto LABEL_86;
          }

          v140 = [v139 maskView];
          if (v140)
          {
            goto LABEL_77;
          }

          v160 = v135[14];
          if (!v160)
          {
            goto LABEL_86;
          }

          v161 = [v160 subviews];
          sub_100009F78(0, &qword_1011BC570, UIView_ptr);
          v162 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v162 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_82:
              if ((v162 & 0xC000000000000001) != 0)
              {
                v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_131;
                }

                v163 = *(v162 + 32);
              }

              v140 = v163;

LABEL_77:
              v141 = [v140 layer];

              if (v141)
              {
                v142 = [objc_allocWithZone(CAFilter) initWithType:v216];
                v143 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v142 setValue:v143 forKey:v215];

                sub_10010FC20(&qword_1011BC168, &unk_100F10820);
                v144 = swift_allocObject();
                *(v144 + 16) = xmmword_100EBC6B0;
                *(v144 + 56) = sub_100009F78(0, &qword_1011BC578, CAFilter_ptr);
                *(v144 + 32) = v142;
                v145 = v142;
                v146 = Array._bridgeToObjectiveC()().super.isa;

                [v141 setFilters:v146];

                v147 = String._bridgeToObjectiveC()();
                v148 = [objc_opt_self() animationWithKeyPath:v147];

                v149 = v148;
                [v149 setDuration:0.32];
                [v149 setBeginTime:CACurrentMediaTime() + 0.15];
                [v149 setFillMode:kCAFillModeBoth];
                v150 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v149 setFromValue:v150];

                v151 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v149 setToValue:v151];

                [v149 setRemovedOnCompletion:0];
                v152 = objc_allocWithZone(CAMediaTimingFunction);
                LODWORD(v153) = 1051260355;
                LODWORD(v154) = 1059816735;
                LODWORD(v155) = 1.0;
                v156 = [v152 initWithControlPoints:v153 :0.0 :v154 :v155];
                [v149 setTimingFunction:v156];

                v157 = swift_allocObject();
                *(v157 + 16) = v141;
                v158 = v141;
                CAAnimation.completion.setter(sub_100C9E7E4, v157);

                v159 = String._bridgeToObjectiveC()();
                [v158 addAnimation:v149 forKey:v159];

                v120 = v234 + 1;

                goto LABEL_87;
              }

LABEL_86:

              goto LABEL_87;
            }
          }

          else if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

LABEL_87:
          if (v120 == v228)
          {

            v218 = sub_100C9DEA0;
            goto LABEL_96;
          }

          v232 = sub_100C9DEA0;
          v121 = v133;
          if (v120 >= *(v208 + 16))
          {
            goto LABEL_126;
          }
        }
      }

      v123 = 0;
      v122 = 0;
      v218 = 0;
      v133 = 0;
      v237 = v19;
LABEL_96:
      v240 = *(v209 + 16);
      if (!v240)
      {
LABEL_120:
        v198 = swift_allocObject();
        *(v198 + 16) = 0;
        v199 = swift_allocObject();
        v199[2] = v198;
        v199[3] = v203;
        v199[4] = v204;
        v246 = sub_100C9DF48;
        v247 = v199;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_100338AB8;
        v245 = &unk_1010F5680;
        v200 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v200];
        _Block_release(v200);
        [(objc_class *)isa startAnimation];
        v201 = swift_allocObject();
        v201[2] = v198;
        v201[3] = v203;
        v201[4] = v204;
        v246 = sub_100C9E758;
        v247 = v201;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_100338AB8;
        v245 = &unk_1010F56D0;
        v202 = _Block_copy(&aBlock);

        [(objc_class *)v221 addCompletion:v202];
        _Block_release(v202);
        [(objc_class *)v221 startAnimation];
        [v226 startAnimationAfterDelay:0.1];

        sub_100020438(v224, v211);
        sub_100020438(v123, v122);
        sub_100020438(v218, v133);
        return;
      }

      v233 = kCAFilterGaussianBlur;
      v229 = kCAFilterInputRadius;

      v164 = 0;
      while (1)
      {
        if (v164 >= *(v209 + 16))
        {
          goto LABEL_127;
        }

        v165 = *(v209 + 8 * v164 + 32);
        if (v212)
        {
          v246 = sub_100C9DF70;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_10002BC98;
          v245 = &unk_1010F5720;
          v166 = _Block_copy(&aBlock);
          swift_retain_n();

          v167 = isa;
          [isa v16[187].attr];
          _Block_release(v166);
          v246 = sub_100C9DF90;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_100338AB8;
          v168 = &unk_1010F5748;
        }

        else
        {
          v246 = sub_100C9DF0C;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_10002BC98;
          v245 = &unk_1010F55B8;
          v169 = _Block_copy(&aBlock);
          swift_retain_n();

          v167 = v221;
          [v221 v16[187].attr];
          _Block_release(v169);
          v246 = sub_100C9E7E0;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_100338AB8;
          v168 = &unk_1010F55E0;
        }

        v245 = v168;
        v170 = _Block_copy(&aBlock);

        [(objc_class *)v167 addCompletion:v170];
        _Block_release(v170);
        v171 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v246 = sub_100C9DF2C;
        v247 = v165;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_10002BC98;
        v245 = &unk_1010F5608;
        v172 = _Block_copy(&aBlock);

        [v171 v16[187].attr];
        _Block_release(v172);
        if (v237)
        {
          v173 = v165[14];
          if (v173)
          {
            v174 = [v173 maskView];
            if (v174)
            {
              goto LABEL_107;
            }

            v194 = v165[14];
            if (v194)
            {
              v195 = [v194 subviews];
              sub_100009F78(0, &qword_1011BC570, UIView_ptr);
              v196 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v196 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_112:
                  if ((v196 & 0xC000000000000001) != 0)
                  {
                    v197 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (!*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_130;
                    }

                    v197 = *(v196 + 32);
                  }

                  v174 = v197;

LABEL_107:
                  v175 = [v174 layer];

                  if (v175)
                  {
                    v176 = [objc_allocWithZone(CAFilter) initWithType:v233];
                    v177 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v176 setValue:v177 forKey:v229];

                    sub_10010FC20(&qword_1011BC168, &unk_100F10820);
                    v178 = swift_allocObject();
                    *(v178 + 16) = xmmword_100EBC6B0;
                    *(v178 + 56) = sub_100009F78(0, &qword_1011BC578, CAFilter_ptr);
                    *(v178 + 32) = v176;
                    v179 = v176;
                    v180 = Array._bridgeToObjectiveC()().super.isa;

                    [v175 setFilters:v180];

                    v181 = String._bridgeToObjectiveC()();
                    v182 = [objc_opt_self() animationWithKeyPath:v181];

                    v183 = v182;
                    [v183 setDuration:0.23];
                    [v183 setBeginTime:CACurrentMediaTime() + 0.0];
                    [v183 setFillMode:kCAFillModeBoth];
                    v184 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v183 setFromValue:v184];

                    v185 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v183 setToValue:v185];

                    [v183 setRemovedOnCompletion:0];
                    v186 = objc_allocWithZone(CAMediaTimingFunction);
                    LODWORD(v187) = 1051260355;
                    LODWORD(v188) = 1059816735;
                    LODWORD(v189) = 1.0;
                    v190 = [v186 initWithControlPoints:v187 :0.0 :v188 :v189];
                    [v183 setTimingFunction:v190];

                    v191 = swift_allocObject();
                    *(v191 + 16) = v175;
                    v192 = v175;
                    CAAnimation.completion.setter(sub_100C9DF68, v191);

                    v193 = String._bridgeToObjectiveC()();
                    [v192 addAnimation:v183 forKey:v193];

                    v16 = &stru_101148000;
                  }

                  goto LABEL_99;
                }
              }

              else if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_99:
        ++v164;
        [v171 startAnimation];

        if (v240 == v164)
        {

          goto LABEL_120;
        }
      }
    }

    break;
  }

  v87 = v81;
  v88 = v82;
  v89 = v81;
  if (v82)
  {
LABEL_47:
    v90 = (v88 - 1) & v88;
    v91 = *(*(v77 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));

    if (!v91)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v89 >= v86)
    {
      goto LABEL_7;
    }

    v88 = *&v79[8 * v89];
    ++v87;
    if (v88)
    {
      goto LABEL_47;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_100C89624(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Width = CGRectGetWidth(*(a1 + 176));
  if (*(a2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == 1)
  {
    v9 = *(a3 + 24);
    if (*(v9 + 16))
    {
      v10 = Width;
      v11 = sub_1006BE788(a4);
      Width = v10;
      if (v12)
      {
        v13 = CGRectGetWidth(*(*(v9 + 56) + 32 * v11));
        Width = v10 + vabdd_f64(v13, CGRectGetWidth(*(a4 + 80)));
      }
    }

    Width = -Width;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    CGAffineTransformMakeTranslation(&v16, Width, 0.0);
    [v14 setTransform:&v16];
    v15 = *(a1 + 208);
    if (v15)
    {
      [v15 setAlpha:0.0];
    }
  }
}

void sub_100C89728(uint64_t a1, uint64_t a2)
{
  v4 = Int.seconds.getter(50);
  v5 = *(a2 + 208);
  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction))
    {
      v4 = -v4;
    }

    CGAffineTransformMakeTranslation(&v6, v4, 0.0);
    [v5 setTransform:&v6];
  }
}

void sub_100C897AC(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    v5 = *(a1 + 168);
    v7 = v1;
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    MinX = CGRectGetMinX(v11);
    v9 = CGRectGetMinX(*(a1 + 176));
    CGAffineTransformMakeTranslation(&v10, MinX - v9, 0.0);
    [v7 setTransform:&v10];
  }
}

id sub_100C8985C(char a1, double *a2)
{
  v3 = *(a2 + 14);
  if (a1)
  {
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = v3;
      v12.origin.x = v4;
      v12.origin.y = v5;
      v12.size.width = v6;
      v12.size.height = v7;
      Height = CGRectGetHeight(v12);
      CGAffineTransformMakeTranslation(&v11, 0.0, -Height);
      [v8 setTransform:&v11];
    }
  }

  else if (v3)
  {
    CGAffineTransformMakeTranslation(&v11, 0.0, 20.0);
    [v3 setTransform:&v11];
  }

  result = *(a2 + 14);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

void *sub_100C89950(void *result, CGFloat a2)
{
  v2 = result[14];
  if (v2)
  {
    CGAffineTransformMakeTranslation(&v3, 0.0, a2);
    return [v2 setTransform:&v3];
  }

  return result;
}

void sub_100C899B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = swift_beginAccess();
    *(a2 + 16) = 1;
    a3(v5);
  }
}

id *sub_100C89A28(double a1, double a2)
{
  v3 = v2;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v100 - v7;
  sub_10010FC20(&qword_1011BBA80, &qword_100F0E5E0);
  __chkstk_darwin();
  v9 = &v100 - v8;
  sub_10010FC20(&qword_1011BBA48, &qword_100F0E5A8);
  __chkstk_darwin();
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = (&v100 - v11);
  __chkstk_darwin();
  v13 = &v100 - v12;
  v14 = type metadata accessor for Locale.Language();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v101 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v100 - v17;
  __chkstk_darwin();
  v110 = &v100 - v18;
  v19 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v19 setAlignment:*&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];
  v111 = v19;
  [v19 setLineBreakStrategy:3];
  v20 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
  v21 = v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 216];
  v103 = v15;
  if ((v21 & 1) == 0)
  {
    v22 = *(v20 + 26);
    v23 = v14;
    v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind;
    if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
    {
      v25 = 224;
    }

    else
    {
      v25 = 200;
    }

    [*&v20[v25] ascender];
    v27 = v3[v24];
    v14 = v23;
    v15 = v103;
    if (v27)
    {
      v28 = 224;
    }

    else
    {
      v28 = 200;
    }

    v29 = v22 - v26;
    [*&v20[v28] descender];
    [v111 setLineSpacing:v29 + v30];
  }

  v31 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v33 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v32 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];

  LOBYTE(v33) = String.containsExcessiveHeightCharacters.getter(v33, v32);

  if (v33)
  {
    v113 = Int.seconds.getter(0);
    v112[0] = v113;
    CTFontGetLanguageAwareOutsets();
    v34 = v113 + v112[0];
    v35 = v111;
    [v111 lineSpacing];
    [v35 setLineSpacing:v34 + v36];
  }

  v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_1000089F8(&v3[v37], v13, &qword_1011BBA48, &qword_100F0E5A8);
  v109 = *(v15 + 48);
  v38 = v109(v13, 1, v14);
  v107 = v37;
  v106 = v15 + 48;
  if (v38 == 1)
  {
    v39 = &qword_1011BBA48;
    v40 = &qword_100F0E5A8;
    v41 = v13;
LABEL_17:
    sub_1000095E8(v41, v39, v40);
    goto LABEL_20;
  }

  v42 = v110;
  (*(v15 + 32))(v110, v13, v14);
  Locale.Language.script.getter();
  v43 = type metadata accessor for Locale.Script();
  if ((*(*(v43 - 8) + 48))(v9, 1, v43) != 1)
  {
    (*(v15 + 8))(v42, v14);
    v39 = &qword_1011BBA80;
    v40 = &qword_100F0E5E0;
    v41 = v9;
    goto LABEL_17;
  }

  sub_1000095E8(v9, &qword_1011BBA80, &qword_100F0E5E0);
  v44 = v105;
  sub_1000089F8(&v3[v37], v105, &qword_1011BBA48, &qword_100F0E5A8);
  if (v109(v44, 1, v14))
  {
    sub_1000095E8(v44, &qword_1011BBA48, &qword_100F0E5A8);
    (*(v15 + 8))(v42, v14);
LABEL_20:
    v49 = v14;
    goto LABEL_21;
  }

  v45 = v100;
  (*(v15 + 16))(v100, v44, v14);
  sub_1000095E8(v44, &qword_1011BBA48, &qword_100F0E5A8);
  v46 = v104;
  Locale.Language.languageCode.getter();
  v47 = *(v15 + 8);
  (v47)(v45, v14);
  v48 = type metadata accessor for Locale.LanguageCode();
  v49 = v14;
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v46, 1, v48) == 1)
  {
    sub_1000095E8(v46, &qword_1011BBA50, &unk_100F0E5B0);
    v14 = v49;
    (v47)(v42, v49);
    goto LABEL_20;
  }

  v105 = v47;
  Locale.LanguageCode.identifier.getter();
  (*(v50 + 8))(v46, v48);

  (v105)(v42, v49);
LABEL_21:
  v105 = *v31;
  sub_10010FC20(&unk_1011BD910, &unk_100F0FEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = NSFontAttributeName;
  v104 = (inited + 32);
  v52 = 200;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
  {
    v52 = 224;
  }

  v53 = *&v20[v52];
  v54 = sub_100009F78(0, &qword_1011BD920, UIFont_ptr);
  *(inited + 40) = v53;
  v110 = v3;
  *(inited + 64) = v54;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v55 = sub_100009F78(0, &qword_1011BC560, NSMutableParagraphStyle_ptr);
  v56 = v111;
  *(inited + 80) = v111;
  *(inited + 104) = v55;
  *(inited + 112) = NSForegroundColorAttributeName;
  v57 = objc_opt_self();
  v58 = v53;

  v59 = NSFontAttributeName;
  v60 = NSParagraphStyleAttributeName;
  v61 = v110;
  v111 = v56;
  v62 = NSForegroundColorAttributeName;
  v63 = [v57 whiteColor];
  v64 = sub_100009F78(0, &unk_1011BD3E0, UIColor_ptr);
  *(inited + 120) = v63;
  *(inited + 144) = v64;
  *(inited + 152) = NSLanguageIdentifierAttributeName;
  v65 = v108;
  sub_1000089F8(&v61[v107], v108, &qword_1011BBA48, &qword_100F0E5A8);
  if (v109(v65, 1, v49))
  {
    v66 = NSLanguageIdentifierAttributeName;
    v67 = &qword_1011BBA48;
    v68 = &qword_100F0E5A8;
LABEL_27:
    sub_1000095E8(v65, v67, v68);
    v74 = (inited + 160);
    *(inited + 184) = &type metadata for String;
LABEL_28:
    *v74 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_29;
  }

  v69 = v103;
  v70 = v101;
  (*(v103 + 16))(v101, v65, v49);
  v71 = NSLanguageIdentifierAttributeName;
  sub_1000095E8(v65, &qword_1011BBA48, &qword_100F0E5A8);
  v65 = v102;
  Locale.Language.languageCode.getter();
  (*(v69 + 8))(v70, v49);
  v72 = type metadata accessor for Locale.LanguageCode();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v65, 1, v72) == 1)
  {
    v67 = &qword_1011BBA50;
    v68 = &unk_100F0E5B0;
    goto LABEL_27;
  }

  v98 = Locale.LanguageCode.identifier.getter();
  v75 = v99;
  (*(v73 + 8))(v65, v72);
  v74 = (inited + 160);
  *(inited + 184) = &type metadata for String;
  if (!v75)
  {
    goto LABEL_28;
  }

  *v74 = v98;
LABEL_29:
  *(inited + 168) = v75;
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080, &unk_100F0EFA0);
  swift_arrayDestroy();
  v76 = objc_allocWithZone(NSAttributedString);
  v77 = String._bridgeToObjectiveC()();

  _s3__C3KeyVMa_2(0);
  sub_100C9DE48(&qword_1011BD930, _s3__C3KeyVMa_2, &unk_100F0E4D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v79 = [v76 initWithString:v77 attributes:isa];

  v80 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager;
  v81 = *&v61[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager];
  if (v81)
  {
    v82 = v81[3];

    v83 = [v82 attributedString];
    if (!v83 || (v84 = v83, sub_100009F78(0, &qword_1011BC568, NSAttributedString_ptr), v85 = v79, v86 = static NSObject.== infix(_:_:)(), v84, v85, v87 = v81, (v86 & 1) == 0))
    {
      v87 = v81;
      (*(*v81 + 176))(v79);
    }
  }

  else
  {
    type metadata accessor for TextKitManager();
    swift_allocObject();
    TextKitManager.init(text:size:)(v79, a1);
    v87 = v88;
    *&v61[v80] = v88;
    swift_retain_n();
  }

  v89 = *(*v87 + 112);

  v91 = v89(v90);

  [v91 size];
  v93 = v92;

  if (v93 == a1)
  {
  }

  else
  {
    (*(*v87 + 184))(a1, a2);
    v94 = sub_100C76C78(_swiftEmptyArrayStorage);

    v95 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v96 = v110;
    swift_beginAccess();
    *&v96[v95] = v94;
  }

  return v87;
}

void sub_100C8A7F8(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
  v11 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
  }

  else
  {
    v13 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
    v12 = 0;
  }

  v153 = v12;
  v154 = v13;
  v151 = 0;
  v152 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
  v132 = v10;
  if (a2)
  {
    goto LABEL_48;
  }

  v14 = *(v5 + v10);
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14[3];
  *&v137[0] = v14[2];
  *(&v137[0] + 1) = v15;
  v140 = 10;
  v141 = 0xE100000000000000;
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_100009988();

  if (StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)() == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text) && v16 == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8))
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v21 = sub_100C76C78(_swiftEmptyArrayStorage);
      v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
      swift_beginAccess();
      *(v5 + v22) = v21;

      sub_100CA3998();

      *(v5 + v10) = 0;

      v153 = 0;
      v154 = _swiftEmptyArrayStorage;
      goto LABEL_48;
    }
  }

  v18 = v14[5];
  v19 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  if (v18)
  {
    if (!v19 || (v14[4] != *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText) || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((a1 & 1) == 0)
    {
      sub_100C8E50C(a1 & 1, a3);

      goto LABEL_84;
    }

    goto LABEL_19;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    goto LABEL_48;
  }

  v126 = v20;
  v127 = v13;
  v128 = v12;
  v23 = sub_100C76C78(_swiftEmptyArrayStorage);
  v129 = v14;
  v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  swift_beginAccess();
  *(v5 + v24) = v23;
  v25 = v129;

  v26 = sub_100C76EF0(_swiftEmptyArrayStorage);
  v27 = sub_100C77014(_swiftEmptyArrayStorage);
  v28 = v129[7];
  v130 = *(v28 + 16);
  if (!v130)
  {
    goto LABEL_47;
  }

  v125 = v5;

  v29 = 0;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      goto LABEL_87;
    }

    v30 = *(v28 + 8 * v29 + 32);
    swift_beginAccess();
    swift_retain_n();

    v33 = sub_100C9C158(v31, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v137[0] = v26;
    v36 = sub_1006BE788(v30);
    v37 = v26[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v26[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *&v137[0];
        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_100C753E4();
        v26 = *&v137[0];
        if ((v40 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_100C73758(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_1006BE788(v30);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_91;
      }

      v36 = v41;
      v26 = *&v137[0];
      if ((v40 & 1) == 0)
      {
LABEL_31:
        sub_100C746D4(v36, v30, v33, v26);
        goto LABEL_35;
      }
    }

    *(v26[7] + 8 * v36) = v33;

LABEL_35:
    v133 = *(v30 + 80);
    v135 = *(v30 + 96);

    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v137[0] = v27;
    v44 = sub_1006BE788(v30);
    v46 = v27[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_89;
    }

    v50 = v45;
    if (v27[3] < v49)
    {
      sub_100C734C4(v49, v43);
      v44 = sub_1006BE788(v30);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_91;
      }

LABEL_40:
      v27 = *&v137[0];
      if (v50)
      {
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v43)
    {
      goto LABEL_40;
    }

    v53 = v44;
    sub_100C7527C();
    v44 = v53;
    v27 = *&v137[0];
    if (v50)
    {
LABEL_41:
      v52 = (v27[7] + 32 * v44);
      *v52 = v133;
      v52[1] = v135;

      goto LABEL_25;
    }

LABEL_24:
    sub_100C74688(v44, v30, v27, *&v133, *(&v133 + 1), *&v135, *(&v135 + 1));
LABEL_25:
    ++v29;

    if (v130 == v29)
    {

      v5 = v125;
      v25 = v129;
LABEL_47:

      v54 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
      v55 = v25[5];
      v136 = v25[4];

      v134 = *(v25 + 5);
      v131 = *(v25 + 4);

      v56 = *(v126 + 48);
      v137[2] = *(v126 + 32);
      v137[3] = v56;
      v57 = *(v126 + 80);
      v137[4] = *(v126 + 64);
      v137[5] = v57;
      v58 = *(v126 + 16);
      v137[0] = *v126;
      v137[1] = v58;
      *v126 = v128;
      *(v126 + 8) = v127;
      *(v126 + 16) = v26;
      *(v126 + 24) = v27;
      *(v126 + 32) = 0;
      *(v126 + 40) = v54;
      *(v126 + 48) = v131;
      *(v126 + 64) = v134;
      *(v126 + 80) = v136;
      *(v126 + 88) = v55;
      sub_1000095E8(v137, &qword_1011BC540, &unk_100F0F580);
LABEL_48:
      v150 = 0;
      v148 = Int.seconds.getter(0);
      v149 = v148;
      v146 = 0;
      v147 = 0;
      if (*(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords))
      {

        sub_100C8BB34(v59);
        v146 = v60;
        v147 = v61;
      }

      v145 = 0;
      v62 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
      v143 = 0;
      v144 = v62;
      v142 = _swiftEmptyArrayStorage;
      v63 = v5;
      v64 = sub_100C89A28(a3, a4);
      v65 = [v64[2] usageBoundsForTextContainer];
      v67 = v66;
      MaxY = v68;
      v70 = (*(*v64 + 24))(v65);
      v71 = (v70 + 80);
      v72 = -*(v70 + 16);
      v73 = -1;
      while (v72 + v73 != -1)
      {
        if (++v73 >= *(v70 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v74 = *(v71 - 5);
        v75 = *(v71 - 4);
        v76 = *(v71 - 3);
        v77 = *(v71 - 2);
        v78 = *(v71 - 1);
        v79 = *v71;
        v80 = *(v71 - 6);
        v81 = [v80 lineRef];
        if (!v81)
        {
          goto LABEL_90;
        }

        v82 = v81;
        v71 += 7;
        sub_100C8BD44(v80, v81, v78, v79, 0, &v149, v63, &v153, v74, v75, v76, v77, a3, a4, &v143, &v150, &v142, &v146, &v148, &v145, &v151);
        v84 = v83;

        if ((v84 & 1) == 0)
        {

          sub_100B46144(v146, v147);

          goto LABEL_84;
        }
      }

      v85 = v63;
      v86 = (v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
      if (*(v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
      {
        swift_beginAccess();
        if (v148 > v67)
        {
          v87 = v148;
        }

        else
        {
          v87 = v67;
        }

        v88 = v132;
        if (*(v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) == 2)
        {
          swift_beginAccess();
          v89 = v144;
          v90 = v144[2];
          if (v90)
          {
            v91 = 0;
            v92 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
            do
            {
              if (v91 >= v89[2])
              {
                goto LABEL_86;
              }

              v93 = v89[v91 + 4];
              if (*(v93 + 56) == 1)
              {
                v94 = *(v93 + 58) ^ v85[v92];
                v95 = *(v93 + 104);
                if (!v85[v92])
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v94 = 0;
                v95 = *(v93 + 104);
                if (!v85[v92])
                {
                  goto LABEL_71;
                }
              }

              if (v94)
              {
LABEL_71:
                v96 = *(v93 + 88);
                v98 = *(v93 + 96);
                v99 = v87 - v98;
                v97 = *(v93 + 80);
                goto LABEL_72;
              }

              v97 = *(v93 + 80);
              v96 = *(v93 + 88);
              v98 = *(v93 + 96);
              v99 = v87 - v67 + v97;
LABEL_72:
              *(v93 + 80) = v99;
              v100 = v96;
              v101 = v98;
              v102 = v95;
              if (!CGRectEqualToRect(*(&v95 - 3), *&v97))
              {
                *(v93 + 128) = 0;
              }

              ++v91;
            }

            while (v90 != v91);
          }
        }

        swift_beginAccess();
        v103 = v144[2];
        if (v103)
        {
          v104 = v144[v103 + 3];

          if (v104)
          {
            MaxY = CGRectGetMaxY(*(v104 + 80));

            v67 = v87;
          }
        }

        v105 = *&v85[v132];
        if (v105)
        {
LABEL_78:
          v106 = v105[8];
          v107 = v105[9];
          v108 = v105[10];
          v109 = v105[11];
          v110 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
          v105[2] = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
          *(v105 + 3) = v110;

          v111 = *(v86 + 1);
          v105[4] = *v86;
          *(v105 + 5) = v111;

          swift_beginAccess();
          v112 = v144;
          *(v105 + 6) = v143;
          *(v105 + 7) = v112;

          v105[8] = 0.0;
          v105[9] = 0.0;
          v105[10] = v67;
          v105[11] = MaxY;
          v156.origin.x = 0.0;
          v156.origin.y = 0.0;
          v155.origin.x = v106;
          v155.origin.y = v107;
          v155.size.width = v108;
          v155.size.height = v109;
          v156.size.width = v67;
          v156.size.height = MaxY;
          v113 = CGRectEqualToRect(v155, v156);
          sub_100C8E50C(!v113, a3);

          goto LABEL_81;
        }
      }

      else
      {
        v88 = v132;
        v105 = *(v63 + v132);
        if (v105)
        {
          goto LABEL_78;
        }
      }

      v114 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
      v115 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
      v116 = *v86;
      v117 = *(v86 + 1);
      swift_beginAccess();
      v118 = v143;
      v119 = v144;
      _s13TextContainerCMa();
      v120 = swift_allocObject();
      *(v120 + 96) = 0;
      *(v120 + 16) = v114;
      *(v120 + 24) = v115;
      *(v120 + 32) = v116;
      *(v120 + 40) = v117;
      *(v120 + 48) = v118;
      *(v120 + 56) = v119;
      *(v120 + 64) = 0;
      *(v120 + 72) = 0;
      *(v120 + 80) = v67;
      *(v120 + 88) = MaxY;
      *&v85[v88] = v120;

      sub_100C8E50C(1, a3);
LABEL_81:
      v122 = sub_100C8A798(v137);
      if (*(v121 + 8))
      {
        v123 = v121;
        swift_beginAccess();
        v124 = v152;
        *(v123 + 32) = v151;
        *(v123 + 40) = v124;
      }

      (v122)(v137, 0);
      [v85 setNeedsLayout];

      sub_100B46144(v146, v147);

LABEL_84:

      return;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  _s4LineCMa();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}