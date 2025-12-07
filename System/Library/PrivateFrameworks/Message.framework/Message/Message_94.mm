uint64_t sub_1B0DECA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B0E44928();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1B0E458B8();
  result = sub_1B0E44928();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DECB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  result = v5(a2, a3);
  v7 = (result - 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1B0E44A08();
  result = v5(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= result)
  {
    return v7 | (result << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B0DECBE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E228C8(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1B0DECC38()
{
  result = qword_1EB6DE220;
  if (!qword_1EB6DE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE220);
  }

  return result;
}

uint64_t sub_1B0DECF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0DECFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7890, &unk_1B0EF87F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0DED020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1B0DED088(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0DED09C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t MessageIdentifierSetNonEmpty.init(set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MessageIdentifierSetNonEmpty(0, a2, a3, a4);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v13 = type metadata accessor for MessageIdentifierSet(0, a2, a3, v12);
  v14 = MessageIdentifierSet.count.getter();
  v15 = *(v13 - 8);
  if (v14 < 1)
  {
    (*(v15 + 8))(a1, v13);
    v17 = *(v19 + 56);

    return v17(a5, 1, 1, v9);
  }

  else
  {
    (*(v15 + 32))(v11, a1, v13);
    (*(v19 + 32))(a5, v11, v9);
    return (*(v19 + 56))(a5, 0, 1, v9);
  }
}

uint64_t MessageIdentifierSetNonEmpty.init(range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MessageIdentifierRange(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v7, v9);
  MessageIdentifierSet.init(_:)(v11, a2, a3);
  return (*(v8 + 8))(a1, v7);
}

uint64_t MessageIdentifierSetNonEmpty.writeIntoBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MessageIdentifierSet(0, *(a2 + 16), *(a2 + 24), a4);

  return MessageIdentifierSet.writeIntoBuffer(_:)(a1, v5);
}

uint64_t static MessageIdentifierSetNonEmpty.all.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for MessageIdentifierSet(0, a1, a2, a3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v11 = type metadata accessor for MessageIdentifierSetNonEmpty(255, a1, a2, v10);
  v12 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  static MessageIdentifierSet.all.getter(a1, a2, v15, v16);
  MessageIdentifierSetNonEmpty.init(set:)(v9, a1, a2, v17, v14);
  v18 = *(v11 - 8);
  result = (*(v18 + 48))(v14, 1, v11);
  if (result != 1)
  {
    return (*(v18 + 32))(a4, v14, v11);
  }

  __break(1u);
  return result;
}

uint64_t MessageIdentifierSetNonEmpty.set.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MessageIdentifierSet(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t MessageIdentifierSetNonEmpty.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MessageIdentifierSet(0, *(a2 + 16), *(a2 + 24), a4);

  return MessageIdentifierSet.hash(into:)(a1);
}

uint64_t MessageIdentifierSetNonEmpty.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  type metadata accessor for MessageIdentifierSet(0, *(a1 + 16), *(a1 + 24), v2);
  MessageIdentifierSet.hash(into:)(v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DED6E0(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  MessageIdentifierSetNonEmpty.hash(into:)(v6, a2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t MessageIdentifierSetNonEmpty.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MessageIdentifierSet(0, *(a1 + 16), *(a1 + 24), a4);

  return MessageIdentifierSet.debugDescription.getter();
}

uint64_t MessageIdentifierSetNonEmpty.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MessageIdentifierRange(0, a2, a3, a4);
  result = sub_1B0E452A8();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = a1;
    v8 = sub_1B0E45358();
    swift_getWitnessTable();
    return MessageIdentifierSet.init<A>(_:)(&v9, a2, v8);
  }

  return result;
}

uint64_t sub_1B0DED854@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v11 = type metadata accessor for MessageIdentifierSet(0, v6, *(a1 + 24), v10);
  a2(v11);
  v12 = *(v6 - 8);
  result = (*(v12 + 48))(v9, 1, v6);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v9, v6);
  }

  __break(1u);
  return result;
}

__n128 MessagePath.init(mailboxReference:iUID:section:range:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int32 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int16 a10)
{
  v13[68] = BYTE4(a3) & 1;
  v13[67] = HIBYTE(a10) & 1;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u32[0] = a3;
  v15.n128_u8[4] = BYTE4(a3) & 1;
  v15.n128_u32[2] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10 & 0x1FF;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = BYTE4(a3) & 1;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10 & 0x1FF;
  sub_1B0DC3BB4(&v14, v13);
  sub_1B0DC2084(v19);
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

uint64_t MessagePath.mailboxReference.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessagePath.mailboxReference.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

uint64_t MessagePath.section.getter()
{
  v1 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessagePath.section.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MessagePath.range.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 65) = HIBYTE(a3) & 1;
  return result;
}

uint64_t MessagePath.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((v2 & 1) == 0)
  {
    sub_1B0E46C88();
  }

  sub_1B0E46C88();
  if (*(v1 + 40))
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  if (*(v1 + 65) == 1)
  {
    return sub_1B0E46C68();
  }

  v3 = *(v1 + 64);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_1B0E46C68();
  MEMORY[0x1B2728D70](v4);
  if (v3)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v5);
}

uint64_t MessagePath.hashValue.getter()
{
  sub_1B0E46C28();
  MessagePath.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEDD20()
{
  sub_1B0E46C28();
  MessagePath.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEDD64(uint64_t a1)
{
  sub_1B0E46C28();
  MessagePath.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DEDDA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

uint64_t sub_1B0DEDDFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0DDBB80(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32));
  result = sub_1B0DC7DC0(*(a1 + 24));
  v6 = v4 + result;
  if (__OFADD__(v4, result))
  {
    goto LABEL_17;
  }

  if (*(a1 + 40))
  {
    MEMORY[0x1B2726E80](*(a1 + 32));
    v7 = *(v1 + 20);
    v8 = sub_1B0CFC1B0(0x4F49544345533B2FuLL, 0xEA00000000003D4ELL, v1 + 8, v7);
    if (v9)
    {
      v10._countAndFlagsBits = 0x4F49544345533B2FLL;
      v10._object = 0xEA00000000003D4ELL;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = v8;

    v12 = *(v2 + 20);
    v13 = __CFADD__(v12, v11);
    v14 = v12 + v11;
    if (v13)
    {
      goto LABEL_19;
    }

    *(v2 + 20) = v14;
    v15 = __OFADD__(v6, v11);
    v6 += v11;
    if (v15)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  if (*(a1 + 65))
  {
    v16 = 0;
  }

  else
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v20 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x4149545241503B2FuLL, 0xEA00000000003D4CLL, v2 + 8, v20);
    if (v21)
    {
      v22._countAndFlagsBits = 0x4149545241503B2FLL;
      v22._object = 0xEA00000000003D4CLL;
      result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
    }

    v23 = result;
    v24 = *(v2 + 20);
    v13 = __CFADD__(v24, result);
    v25 = v24 + result;
    if (v13)
    {
      goto LABEL_20;
    }

    *(v2 + 20) = v25;
    result = sub_1B0D57928(v17, v18, v19 & 1);
    v16 = v23 + result;
    if (__OFADD__(v23, result))
    {
LABEL_21:
      __break(1u);
      return result;
    }
  }

  result = v6 + v16;
  if (__OFADD__(v6, v16))
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a2 + 24) == *(a1 + 6))
    {
      v10 = a1[5];
      v11 = *(a2 + 40);
      if (v10)
      {
        if (!v11 || (a1[4] != *(a2 + 32) || v10 != v11) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v12 = *(a2 + 65);
      if ((*(a1 + 65) & 1) == 0)
      {
        if ((*(a2 + 65) & 1) != 0 || a1[6] != *(a2 + 48))
        {
          return 0;
        }

        v12 = *(a2 + 64);
        if ((a1[8] & 1) == 0)
        {
          return (*(a2 + 64) & 1) == 0 && a1[7] == *(a2 + 56);
        }
      }

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if ((v7 & 1) == 0 && v4 == v6)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1B0DEE0EC()
{
  result = qword_1EB6E7908;
  if (!qword_1EB6E7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7908);
  }

  return result;
}

uint64_t sub_1B0DEE140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1B0DEE188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MessagePath.ByteRange.range.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t static MessagePath.ByteRange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MessagePath.ByteRange.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x1B2728D70](a2);
  if (a4)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](a3);
}

uint64_t MessagePath.ByteRange.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  sub_1B0E46C68();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1B2728D70](a2);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0DEE334()
{
  result = qword_1EB6E7910;
  if (!qword_1EB6E7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7910);
  }

  return result;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v3 = sub_1B0E44C68();

  return v3;
}

uint64_t MetadataEntryName.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEE56C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  sub_1B0E46C28();
  MetadataEntryName.hash(into:)(v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEE5DC(unint64_t a1, unint64_t a2)
{
  v2 = ByteBufferAllocator.buffer(string:)(a1, a2, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v2;
}

uint64_t sub_1B0DEE668@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = ByteBufferAllocator.buffer(string:)(*a1, a1[1], j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 20) = WORD2(v7);
  *(a2 + 22) = BYTE6(v7);
  return result;
}

unint64_t sub_1B0DEE720()
{
  result = qword_1EB6DE620;
  if (!qword_1EB6DE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE620);
  }

  return result;
}

unint64_t sub_1B0DEE778()
{
  result = qword_1EB6E7918;
  if (!qword_1EB6E7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7918);
  }

  return result;
}

unint64_t sub_1B0DEE7D0()
{
  result = qword_1EB6E7920;
  if (!qword_1EB6E7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7920);
  }

  return result;
}

uint64_t MetadataOption.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for MetadataOption(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0DEF230(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1B0D78E60(v16, v13);
      MEMORY[0x1B2728D70](2);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0D78ED0(&v13[*(v11 + 52)], v10);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        sub_1B0E46C68();
      }

      else
      {
        sub_1B0D06280(v10, v7);
        sub_1B0E46C68();
        ParameterValue.hash(into:)(a1);
        sub_1B0DEF398(v7, type metadata accessor for ParameterValue);
      }

      return sub_1B0398EFC(v13, &qword_1EB6E6F58, &unk_1B0EF5150);
    }
  }

  else
  {
    v18 = *v16;
    MEMORY[0x1B2728D70](0);
    return MEMORY[0x1B2728D70](v18);
  }
}

uint64_t MetadataOption.hashValue.getter()
{
  sub_1B0E46C28();
  MetadataOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEEB78()
{
  sub_1B0E46C28();
  MetadataOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEEBBC(uint64_t a1)
{
  sub_1B0E46C28();
  MetadataOption.hash(into:)(v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DEEBFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v25 - v4);
  v6 = type metadata accessor for MetadataOption(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0DEF230(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_1B0E196AC(*v8);
    }

    else
    {
      sub_1B0D78E60(v8, v5);
      v24 = sub_1B0E3001C(v5);
      sub_1B0398EFC(v5, &qword_1EB6E6F58, &unk_1B0EF5150);
      return v24;
    }
  }

  else
  {
    v11 = *v8;
    v26 = 0x20455A495358414DLL;
    v27 = 0xE800000000000000;
    v25[1] = v11;
    v12 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v12);
    v13 = v1;

    v15 = v26;
    v14 = v27;
    v16 = *(v1 + 20);
    v17 = sub_1B0CFC1B0(v26, v27, v13 + 8, *(v13 + 20));
    if (v18)
    {
      v19._countAndFlagsBits = v15;
      v19._object = v14;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
      v13 = v1;
    }

    v20 = v17;

    v21 = *(v13 + 20);
    result = v20;
    v22 = __CFADD__(v21, v20);
    v23 = v21 + v20;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      *(v13 + 20) = v23;
    }
  }

  return result;
}

BOOL _s12NIOIMAPCore214MetadataOptionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v28 - v5);
  v7 = type metadata accessor for MetadataOption(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7930, &qword_1B0EF9478);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  sub_1B0DEF230(a1, &v28 - v17);
  sub_1B0DEF230(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0DEF230(v18, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (*v12)
        {
          if (*v12 == 1)
          {
            v22 = 0xE100000000000000;
            v23 = 49;
            if (!v18[v20])
            {
LABEL_22:
              v26 = 0xE100000000000000;
              if (v23 != 48)
              {
                goto LABEL_27;
              }

LABEL_25:
              if (v22 == v26)
              {

LABEL_28:
                sub_1B0DEF398(v18, type metadata accessor for MetadataOption);
                return 1;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v22 = 0xE800000000000000;
            v23 = 0x7974696E69666E69;
            if (!v18[v20])
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v22 = 0xE100000000000000;
          v23 = 48;
          if (!v18[v20])
          {
            goto LABEL_22;
          }
        }

        if (v18[v20] == 1)
        {
          v26 = 0xE100000000000000;
          if (v23 == 49)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v26 = 0xE800000000000000;
          if (v23 == 0x7974696E69666E69)
          {
            goto LABEL_25;
          }
        }

LABEL_27:
        v27 = sub_1B0E46A78();

        if (v27)
        {
          goto LABEL_28;
        }

        sub_1B0DEF398(v18, type metadata accessor for MetadataOption);
        return 0;
      }

LABEL_14:
      sub_1B0398EFC(v18, &qword_1EB6E7930, &qword_1B0EF9478);
      return 0;
    }

    sub_1B0DEF230(v18, v9);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
      goto LABEL_14;
    }

    sub_1B0D78E60(&v18[v20], v6);
    v24 = sub_1B0DCA3C4(v9, v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
  }

  else
  {
    sub_1B0DEF230(v18, v15);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_14;
    }

    v24 = *v15 == *&v18[v20];
  }

  sub_1B0DEF398(v18, type metadata accessor for MetadataOption);
  return v24;
}

uint64_t type metadata accessor for MetadataOption(uint64_t a1)
{
  result = qword_1EB6DE748;
  if (!qword_1EB6DE748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0DEF230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B0DEF2DC(uint64_t a1)
{
  sub_1B041B648(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1B0DEF350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B0DEF398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MetadataResponse.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  if (v4 < 0)
  {
    v8 = *v2;
    MEMORY[0x1B2728D70](1);
    v9 = *(v8 + 16);
    MEMORY[0x1B2728D70](v9);
    if (v9)
    {
      v10 = v8 + 54;
      do
      {
        v10 += 24;
        swift_beginAccess();
        sub_1B0E46C38();
        --v9;
      }

      while (v9);
    }

    v7 = v4 | (v4 << 32);
  }

  else
  {
    v5 = *(v2 + 8);
    v6 = v2[1];
    MEMORY[0x1B2728D70](0);
    sub_1B0D3AC68(a1, v6, v4);
    v7 = v5 | (v5 << 32);
  }

  return MEMORY[0x1B2728D70](v7);
}

uint64_t MetadataResponse.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[2];
  if (v1 < 0)
  {
    v5 = *v0;
    MEMORY[0x1B2728D70](1);
    v6 = *(v5 + 16);
    MEMORY[0x1B2728D70](v6);
    if (v6)
    {
      v7 = v5 + 54;
      do
      {
        v7 += 24;
        swift_beginAccess();
        sub_1B0E46C38();
        --v6;
      }

      while (v6);
    }

    v4 = v1 | (v1 << 32);
  }

  else
  {
    v2 = *(v0 + 8);
    v3 = v0[1];
    MEMORY[0x1B2728D70](0);
    sub_1B0D3AC68(v9, v3, v1);
    v4 = v2 | (v2 << 32);
  }

  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEF5FC(uint64_t a1)
{
  sub_1B0E46C28();
  MetadataResponse.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEF638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void sub_1B0DEF684(uint64_t *a1)
{
  v2 = 0x415441444154454DLL;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (v5 < 0)
  {
    goto LABEL_13;
  }

  v6 = a1[3];
  v7 = *(v1 + 20);
  v8 = sub_1B0CFC1B0(0x415441444154454DuLL, 0xE900000000000020, v1 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x415441444154454DLL;
    v10._object = 0xE900000000000020;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v1 + 20);
  v13 = __CFADD__(v12, v8);
  v14 = v12 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  sub_1B0DD59A4(v6);
  v16 = v11 + v15;
  if (__OFADD__(v11, v15))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = *(v1 + 20);
  v17 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v2);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v2);
  }

  v20 = *(v1 + 20);
  v13 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v13)
  {
    goto LABEL_25;
  }

  *(v1 + 20) = v21;
  v22 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1B0D7FE00(v3, v4, v5);
  if (!__OFADD__(v22, v23))
  {
    return;
  }

  __break(1u);
LABEL_13:
  v24 = *(v1 + 20);
  v25 = sub_1B0CFC1B0(v2, 0xE900000000000020, v1 + 8, v24);
  if (v26)
  {
    v27._countAndFlagsBits = v2;
    v27._object = 0xE900000000000020;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;
  v29 = *(v1 + 20);
  v13 = __CFADD__(v29, v25);
  v30 = v29 + v25;
  if (v13)
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v30;
  sub_1B0DD59A4(v4);
  v32 = __OFADD__(v28, v31);
  v33 = v28 + v31;
  if (v32)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = *(v1 + 20);
  v35 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v34);
  if (v36)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
  }

  v38 = *(v1 + 20);
  v13 = __CFADD__(v38, v35);
  v39 = v38 + v35;
  if (v13)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v39;
  if (__OFADD__(v33, v35))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFADD__(v33 + v35, sub_1B0D80464(v3)))
  {
LABEL_31:
    __break(1u);
  }
}

uint64_t _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 < 0)
  {
    v10 = *(a2 + 16);
    if (v10 < 0)
    {
      v11 = v3;
      v12 = *(a2 + 8);
      if (sub_1B0D3CF14() & 1) != 0 && v4 == v10 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v11, v12))
      {
        return 1;
      }
    }
  }

  else
  {
    v5 = *(a2 + 16);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 24);
      v8 = *(a2 + 32);
      v9 = *(a2 + 24);
      if (sub_1B0D3A070(v3, *(a2 + 8)) & 1) != 0 && (sub_1B0D3A1B8(v4, v5) & 1) != 0 && (v6 | (v6 << 32)) == (v8 | (v8 << 32)) && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v7, v9))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1B0DEF974()
{
  result = qword_1EB6E7938;
  if (!qword_1EB6E7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7938);
  }

  return result;
}

uint64_t sub_1B0DEF9D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 36))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 16) >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*(a1 + 16) >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0DEFA28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1B0DEFAB8(uint64_t *a1)
{
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v4 = *(v1 + 20);
  v5 = sub_1B0CFC1B0(0x7B7EuLL, 0xE200000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 31614;
    v7._object = 0xE200000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;

  v9 = *(v1 + 20);
  result = (v9 + v8);
  if (__CFADD__(v9, v8))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  *(v1 + 20) = result;
  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(result);
  }

  sub_1B0D79300(a1);
  v12 = __OFADD__(v8, v11);
  result = v8 + v11;
  if (v12)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1B0DEFBDC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
    }

    else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
    {
      v11[0] = result;
      v11[1] = a2;
      v12 = a3;
      v13 = WORD2(a3);
      v14 = BYTE6(a3);
      v15 = a2;
      v16 = HIDWORD(a2);

      v4 = sub_1B0DEFAB8(v11);
      sub_1B04394F4(v11);
      return v4;
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v3 + 8, v5);
  if (v6)
  {
    v7._countAndFlagsBits = 4999502;
    v7._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = *(v3 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(v3 + 20) = v10;
  return result;
}

uint64_t MetadataValue.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  swift_beginAccess();
  return sub_1B0E46C38();
}

uint64_t MetadataValue.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (a1)
  {
    swift_beginAccess();
    sub_1B0E46C38();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DEFE74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  sub_1B0E46C28();
  MetadataValue.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

void sub_1B0DEFF28(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 15) = 0;
}

uint64_t sub_1B0DEFF34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a4)
    {

      LOBYTE(a6) = sub_1B0C2DB54(v11, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);

      if (a6)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B0DEFFD4()
{
  result = qword_1EB6E7940;
  if (!qword_1EB6E7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7940);
  }

  return result;
}

uint64_t sub_1B0DF0028(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 23))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B0DF0084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ModificationSequenceValue.init<A>(exactly:)(char *a1, uint64_t a2, uint64_t a3)
{
  v30[2] = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30[1] = v30 - v6;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  if (sub_1B0E45FB8())
  {
    if (sub_1B0E45FA8() < 64)
    {
LABEL_9:
      (*(v7 + 16))(v13, a1, a2);
      v18 = sub_1B0E45F98();
      v17 = *(v7 + 8);
      v17(v13, a2);
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v17(a1, a2);
      return 0;
    }

    goto LABEL_6;
  }

  v14 = sub_1B0E45FB8();
  v15 = sub_1B0E45FA8();
  if (v14)
  {
    if (v15 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1B0E46B38();
      sub_1B0E46A38();
      v24 = sub_1B0E44908();
      v30[0] = a1;
      v17 = *(v7 + 8);
      v17(v13, a2);
      if (v24)
      {
        a1 = v30[0];
      }

      else
      {
        (*(v7 + 16))(v13, v30[0], a2);
        v29 = sub_1B0E45F98();
        v17(v13, a2);
        a1 = v30[0];
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_17;
    }

LABEL_6:
    v31 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v16 = sub_1B0E44908();
    v17 = *(v7 + 8);
    v17(v13, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v15 < 64)
  {
    goto LABEL_9;
  }

LABEL_10:
  (*(v7 + 16))(v10, a1, a2);
  if (sub_1B0E45FB8())
  {
    swift_getAssociatedConformanceWitness();
    sub_1B0E46B38();
    sub_1B0E46A38();
    v19 = sub_1B0E44908();
    v20 = *(v7 + 8);
    v20(v13, a2);
    if (v19)
    {
      goto LABEL_22;
    }
  }

  if (sub_1B0E45FA8() < 64)
  {
    goto LABEL_24;
  }

  v31 = -1;
  v21 = sub_1B0E45FB8();
  v22 = sub_1B0E45FA8();
  if (v21)
  {
    if (v22 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1B0E46B38();
      sub_1B0E46A38();
      v23 = sub_1B0E448F8();
      (*(v7 + 8))(v13, a2);
      if ((v23 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v22 >= 65)
  {
LABEL_21:
    sub_1B0A44710();
    sub_1B0E45F78();
    v25 = sub_1B0E44908();
    v20 = *(v7 + 8);
    v20(v13, a2);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v20(a1, a2);
    v20(v10, a2);
    return 0;
  }

LABEL_23:
  sub_1B0E45F98();
LABEL_24:
  v26 = sub_1B0E45F98();
  v27 = *(v7 + 8);
  v27(a1, a2);
  v27(v10, a2);
  if ((v26 & 0x8000000000000000) == 0)
  {
    return v26;
  }

  return 0;
}

uint64_t ModificationSequenceValue.init(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ModificationSequenceValue.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

uint64_t ModificationSequenceValue.distance(to:)(uint64_t result, uint64_t a2)
{
  if ((a2 | result) < 0)
  {
    __break(1u);
  }

  else
  {
    result -= a2;
  }

  return result;
}

uint64_t ModificationSequenceValue.advanced(by:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = __OFADD__(a2, result);
  result += a2;
  if (v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DF08F0()
{
  result = qword_1EB6E7948;
  if (!qword_1EB6E7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7948);
  }

  return result;
}

void *sub_1B0DF0944@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (((*v2 | *result) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_1B0DF0964@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  if (*v2 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = __OFADD__(v3, *result);
  v5 = v3 + *result;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    *a2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B0DF0990(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  if (*a4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = __OFADD__(v6, *a6);
  v8 = v6 + *a6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ModifiedUTF7.EncodingRoundtripError.buffer.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

void sub_1B0DF0B3C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a2);
  v6 = a2;
  MEMORY[0x1B2726D20]((HIDWORD(a2) - a2));
  v7 = v5;
  v8 = v6;

  v51 = a1;
  swift_beginAccess();
  if (v6 == v7)
  {
LABEL_2:
  }

  else
  {
    v48 = v7;
    v49 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
    v50 = -v7;
    while (1)
    {
      v10 = v8 + 1;
      if (v8 == -1)
      {
        break;
      }

      v11 = *(v51 + 24) + v49;
      if (*(v11 + v8) == 38)
      {
        if (v10 == v7)
        {
          LODWORD(v12) = v7;
          v13 = MEMORY[0x1E69E7CC0];
LABEL_29:
          v20 = *(v13 + 2);
          v46 = v12;
          if ((v20 & 3) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1B0C0C114(0, v20 + 1, 1, v13);
            }

            v22 = *(v13 + 2);
            v21 = *(v13 + 3);
            v23 = v22 + 1;
            if (v22 >= v21 >> 1)
            {
              v13 = sub_1B0C0C114((v21 > 1), v22 + 1, 1, v13);
            }

            *(v13 + 2) = v23;
            v13[v22 + 32] = 61;
            if ((v23 & 3) != 0)
            {
              v24 = *(v13 + 3);
              v25 = v22 + 2;
              if (v23 >= v24 >> 1)
              {
                v13 = sub_1B0C0C114((v24 > 1), v22 + 2, 1, v13);
              }

              *(v13 + 2) = v25;
              v13[v23 + 32] = 61;
              if ((v25 & 3) != 0)
              {
                v26 = *(v13 + 3);
                v27 = v22 + 3;
                if (v25 >= v26 >> 1)
                {
                  v13 = sub_1B0C0C114((v26 > 1), v22 + 3, 1, v13);
                }

                *(v13 + 2) = v27;
                v13[v25 + 32] = 61;
                if ((v27 & 3) != 0)
                {
                  v28 = *(v13 + 3);
                  if (v27 >= v28 >> 1)
                  {
                    v13 = sub_1B0C0C114((v28 > 1), v22 + 4, 1, v13);
                  }

                  *(v13 + 2) = v22 + 4;
                  v13[v27 + 32] = 61;
                }
              }
            }
          }

          v29 = sub_1B0D5E2A0(v13, 0);
          if (v47)
          {

            return;
          }

          v30 = v29;

          v31 = *(v30 + 16);
          if (v31)
          {

            sub_1B0DF1AA8();
            swift_allocError();
            *v45 = v31;
            swift_willThrow();

            return;
          }

          if (v31)
          {
            v32 = 0;
            v33 = (v30 + 33);
            v34 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v35 = *(v30 + 16);
              if (v32 >= v35)
              {
                break;
              }

              v36 = v32 + 1;
              if (v32 + 1 == v31)
              {
                goto LABEL_56;
              }

              if (v36 >= v35)
              {
                goto LABEL_61;
              }

              v37 = *(v33 - 1);
              v38 = *v33;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_1B0DF553C(0, *(v34 + 2) + 1, 1, v34);
              }

              v40 = *(v34 + 2);
              v39 = *(v34 + 3);
              if (v40 >= v39 >> 1)
              {
                v34 = sub_1B0DF553C((v39 > 1), v40 + 1, 1, v34);
              }

              *(v34 + 2) = v40 + 1;
              *&v34[2 * v40 + 32] = v38 | (v37 << 8);
              v33 += 2;
              v32 = v36 + 1;
              if (v36 + 1 == v31)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            break;
          }

LABEL_56:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7958, &qword_1B0EF9938);
          sub_1B0DF1AFC();
          sub_1B0CB3A28();
          v41 = sub_1B0E44BD8();
          if (!v42)
          {
            goto LABEL_66;
          }

          v43 = v41;
          v44 = v42;

          MEMORY[0x1B2726E80](v43, v44);

          v8 = v46;
        }

        else
        {
          if (*(v11 + v10) != 45)
          {
            v12 = v10 - 0xFFFFFFFFLL;
            v14 = v49 + v10;
            v13 = MEMORY[0x1E69E7CC0];
            while (v12)
            {
              v15 = *(*(v51 + 24) + v14);
              if (v15 == 44)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_1B0C0C114(0, *(v13 + 2) + 1, 1, v13);
                }

                v17 = *(v13 + 2);
                v19 = *(v13 + 3);
                v18 = v17 + 1;
                if (v17 >= v19 >> 1)
                {
                  v13 = sub_1B0C0C114((v19 > 1), v17 + 1, 1, v13);
                }

                LOBYTE(v15) = 47;
              }

              else
              {
                if (v15 == 45)
                {
                  goto LABEL_29;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_1B0C0C114(0, *(v13 + 2) + 1, 1, v13);
                }

                v17 = *(v13 + 2);
                v16 = *(v13 + 3);
                v18 = v17 + 1;
                if (v17 >= v16 >> 1)
                {
                  v13 = sub_1B0C0C114((v16 > 1), v17 + 1, 1, v13);
                }
              }

              *(v13 + 2) = v18;
              v13[v17 + 32] = v15;
              ++v12;
              ++v14;
              if (v50 + v12 == 1)
              {
                LODWORD(v12) = v48;
                goto LABEL_29;
              }
            }

            goto LABEL_62;
          }

          v8 += 2;
          if (v10 == -1)
          {
            goto LABEL_64;
          }

          if (v8 > v7)
          {
            goto LABEL_65;
          }

          MEMORY[0x1B2726E80](38, 0xE100000000000000);
        }
      }

      else
      {
        v9 = sub_1B0E44C78();
        MEMORY[0x1B2726E70](v9);

        ++v8;
      }

      v7 = v48;
      if (v8 == v48)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }
}

uint64_t sub_1B0DF1158(unint64_t *a1, unint64_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (qword_1EB6DE5C0 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v4 = dword_1EB737EB8;
    v5 = word_1EB737EBC;
    v6 = byte_1EB737EBE;
    v80 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v81 = HIDWORD(qword_1EB737EB0);
    v82 = dword_1EB737EB8;
    v83 = word_1EB737EBC;
    v84 = byte_1EB737EBE;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v7 = sub_1B0E44DC8();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v7 <= v4 - (v6 | (v5 << 8)))
    {
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        ByteBuffer._ensureAvailableCapacity(_:at:)(v7, 0);
      }

      else
      {
        v8 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v7, v8 & 1);
      }
    }

    v9 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    if (!v9)
    {
      return v80;
    }

    v79 = 4 * v9;
    v10 = 15;
    v76 = a1;
    v77 = a2;
    while (1)
    {
      while (1)
      {
        v11 = v10;
        v13 = sub_1B0E44EA8();
        v14 = v12;
        if (v13 == 2573 && v12 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
        {
          goto LABEL_51;
        }

        if ((v14 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v15 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
          goto LABEL_131;
        }

        v16 = (v14 & 0x1000000000000000) != 0 ? sub_1B0E44C18() : sub_1B0E46278() << 16;
        if (v16 >> 14 != 4 * v15)
        {
          goto LABEL_51;
        }

        v17 = sub_1B0C04CF0(v13, v14);
        if ((v17 & 0x100000000) != 0)
        {
          __break(1u);
LABEL_138:
          __break(1u);
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_51:

          break;
        }

        v18 = sub_1B0C04CF0(v13, v14);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_138;
        }

        v19 = v18;

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_132;
        }

        v20 = v19;
        if (v19 - 32 > 0x5E)
        {
          break;
        }

        v21 = v81 + 1;
        if (v81 == -1)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v21 >= v82)
          {
            v22 = v21 - v82;
          }

          else
          {
            v22 = 0;
          }

          v23 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v81);
        swift_beginAccess();
        v24 = v84 | (v83 << 8);
        v25 = v82 - v24;
        if (v82 - v24 >= v81)
        {
          v25 = v81;
        }

        if (!v81)
        {
          v25 = 0;
        }

        *(*(v80 + 24) + v24 + v25) = v20;
        v26 = ++v81;
        if (v20 == 38)
        {
          v27 = v26 + 1;
          if (v26 == -1)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v27 >= v82)
            {
              v28 = v27 - v82;
            }

            else
            {
              v28 = 0;
            }

            v29 = sub_1B03904C0();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v28, v29 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v26);
          swift_beginAccess();
          v30 = sub_1B04391FC(v26, *(v80 + 24) + (v84 | (v83 << 8)), *(v80 + 24) + (v84 | (v83 << 8)) + v82 - (v84 | (v83 << 8)));
          if (v31)
          {
            *(v31 + v30) = 45;
          }

          v81 = v26 + 1;
        }

        v10 = sub_1B0E44D08();
        if (v79 <= v10 >> 14)
        {
          return v80;
        }
      }

      v32 = v11;
      if (v79 <= v11 >> 14)
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v34 = v32;
          v35 = sub_1B0E44EA8();
          v37 = v36;
          v38 = sub_1B0E447F8();
          if ((v38 & 0x100) == 0 && v38 - 127 >= 0xFFFFFFA1)
          {
            break;
          }

          v39 = HIBYTE(v37) & 0xF;
          v85[0] = v35;
          v85[1] = v37;
          if ((v37 & 0x2000000000000000) == 0)
          {
            v39 = v35 & 0xFFFFFFFFFFFFLL;
          }

          v85[2] = 0;
          v85[3] = v39;
          v86 = 0;
          v87 = 1;
          v40 = sub_1B0E44E48();
          if ((v40 & 0x10000) == 0)
          {
            LOWORD(v41) = v40;
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_1B0C0C114(0, *(v33 + 2) + 1, 1, v33);
              }

              v43 = *(v33 + 2);
              v42 = *(v33 + 3);
              v44 = v42 >> 1;
              v45 = v43 + 1;
              if (v42 >> 1 <= v43)
              {
                v33 = sub_1B0C0C114((v42 > 1), v43 + 1, 1, v33);
                v42 = *(v33 + 3);
                v44 = v42 >> 1;
              }

              *(v33 + 2) = v45;
              v33[v43 + 32] = BYTE1(v41);
              if (v44 < (v43 + 2))
              {
                v33 = sub_1B0C0C114((v42 > 1), v43 + 2, 1, v33);
              }

              *(v33 + 2) = v43 + 2;
              v33[v45 + 32] = v41;
              v41 = sub_1B0E44E48();
            }

            while ((v41 & 0x10000) == 0);
          }

          v32 = sub_1B0E44D08();
          if (v79 <= v32 >> 14)
          {
            goto LABEL_71;
          }
        }

        v32 = v34;
      }

LABEL_71:
      v46 = *(v33 + 2);
      v47 = v46 + 2;
      if (__OFADD__(v46, 2))
      {
        break;
      }

      v48 = v47 / 3;
      if ((v47 / 3 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_122;
      }

      v49 = 4 * v48;
      if (((4 * v48) & 0x8000000000000000) != 0)
      {
        goto LABEL_123;
      }

      v78 = v32;
      a1 = MEMORY[0x1E69E7CC0];
      if (v47 >= 3)
      {
        a1 = sub_1B0E45278();
        a1[2] = v49;
      }

      v85[0] = 0;
      sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, (v33 + 32), v46, (a1 + 4), v49, 0, v85);
      v50 = v85[0];
      if (v49 < v85[0])
      {
        goto LABEL_124;
      }

      a1[2] = v85[0];
      if (v50)
      {
        v85[0] = MEMORY[0x1E69E7CC0];
        sub_1B03A4BAC(0, v50 & ~(v50 >> 63), 0);
        if (v50 < 1)
        {
          goto LABEL_130;
        }

        v51 = v85[0];
        v52 = *(v85[0] + 16);
        v53 = 32;
        do
        {
          if (*(a1 + v53) == 47)
          {
            v54 = 44;
          }

          else
          {
            v54 = *(a1 + v53);
          }

          v85[0] = v51;
          v55 = *(v51 + 24);
          if (v52 >= v55 >> 1)
          {
            sub_1B03A4BAC((v55 > 1), v52 + 1, 1);
            v51 = v85[0];
          }

          *(v51 + 16) = v52 + 1;
          *(v51 + v52 + 32) = v54;
          ++v53;
          ++v52;
          --v50;
        }

        while (v50);

        a2 = *(v51 + 16);
        if (!a2)
        {
LABEL_96:
          a1 = MEMORY[0x1E69E7CC0];
          goto LABEL_97;
        }
      }

      else
      {

        v51 = MEMORY[0x1E69E7CC0];
        a2 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!a2)
        {
          goto LABEL_96;
        }
      }

      v56 = (v51 + 32);
      a1 = MEMORY[0x1E69E7CC0];
      do
      {
        v60 = *v56++;
        v59 = v60;
        if (v60 != 61)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B03A4BAC(0, a1[2] + 1, 1);
            a1 = v85[0];
          }

          v58 = a1[2];
          v57 = a1[3];
          if (v58 >= v57 >> 1)
          {
            sub_1B03A4BAC((v57 > 1), v58 + 1, 1);
            a1 = v85[0];
          }

          a1[2] = v58 + 1;
          *(a1 + v58 + 32) = v59;
        }

        --a2;
      }

      while (a2);
LABEL_97:

      LOBYTE(v85[0]) = 38;
      v62 = v81 + 1;
      if (v81 == -1)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v62 >= v82)
        {
          v63 = v62 - v82;
        }

        else
        {
          v63 = 0;
        }

        v64 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v63, v64 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v81);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v85, v85 + 1, v81);
      v65 = v81 + 1;
      v66 = a1[2];
      v67 = v81 + 1 + v66;
      if (__CFADD__(v81 + 1, v66))
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v67 >= v82)
        {
          v68 = v67 - v82;
        }

        else
        {
          v68 = 0;
        }

        v69 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v68, v69 & 1);
      }

      if (HIDWORD(v66))
      {
        goto LABEL_127;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(v66, v65);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1 + 4, a1 + v66 + 32, v65);

      v70 = __CFADD__(v65, v66);
      v71 = v65 + v66;
      if (v70)
      {
        goto LABEL_128;
      }

      LOBYTE(v85[0]) = 45;
      v72 = v71 + 1;
      if (v71 == -1)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v72 >= v82)
        {
          v73 = v72 - v82;
        }

        else
        {
          v73 = 0;
        }

        v74 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v73, v74 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v71);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v85, v85 + 1, v71);
      a1 = v76;
      a2 = v77;
      v81 = v71 + 1;
      v10 = v78;
      if (v79 <= v78 >> 14)
      {
        return v80;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    __break(1u);
LABEL_134:
    __break(1u);
    __break(1u);
LABEL_135:
    swift_once();
  }
}

unint64_t sub_1B0DF1AA8()
{
  result = qword_1EB6E7950;
  if (!qword_1EB6E7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7950);
  }

  return result;
}

unint64_t sub_1B0DF1AFC()
{
  result = qword_1EB6E7960;
  if (!qword_1EB6E7960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7958, &qword_1B0EF9938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7960);
  }

  return result;
}

void sub_1B0DF1B64(uint64_t a1)
{
  sub_1B0DF1F10(0, *a1, v1);
  v4 = v3;
  v5 = *(v1 + 20);
  v6 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, v6);
  v11 = v9 + v6;
  if (v10)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 20) = v11;
  v12 = __OFADD__(v4, v6);
  v13 = v4 + v6;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = sub_1B0DDD958(*(a1 + 8), *(a1 + 16));
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v40 = *(a1 + 72);
    v41 = *(a1 + 56);
    v20 = *(v1 + 20);
    v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v20);
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
    }

    v24 = v21;
    v25 = *(v1 + 20);
    v10 = __CFADD__(v25, v21);
    v26 = v25 + v21;
    if (v10)
    {
      goto LABEL_25;
    }

    *(v1 + 20) = v26;
    sub_1B0DF7A38(v17, v16, v18);
    v28 = v27;
    if (v41 == 1)
    {
      v29 = 0;
    }

    else
    {
      v31 = *(v1 + 20);
      v32 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v31);
      if (v33)
      {
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        v32 = ByteBuffer._setStringSlowpath(_:at:)(v34, v31);
      }

      v35 = v32;
      v36 = *(v1 + 20);
      v10 = __CFADD__(v36, v32);
      v37 = v36 + v32;
      if (v10)
      {
        goto LABEL_28;
      }

      *(v1 + 20) = v37;
      v42 = v19;
      v43 = v41;
      v44 = v40;
      sub_1B0D7A960(&v42);
      v29 = v35 + v38;
      if (__OFADD__(v35, v38))
      {
LABEL_29:
        __break(1u);
        return;
      }
    }

    v12 = __OFADD__(v28, v29);
    v39 = v28 + v29;
    if (v12)
    {
      goto LABEL_26;
    }

    v12 = __OFADD__(v24, v39);
    v30 = v24 + v39;
    if (v12)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v30 = 0;
  }

  if (__OFADD__(v15, v30))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

double BodyStructure.Multipart.Extension.init(parameters:dispositionAndLanguage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&v12[8] = xmmword_1B0EA4610;
  memset(&v12[24], 0, 56);
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  sub_1B0C8C870(a4, &v12[8], &qword_1EB6E6F88, &qword_1B0EEEB30);
  v15 = *&v12[16];
  v16 = *&v12[32];
  v17 = *&v12[48];
  v18 = *&v12[64];
  v13 = v11;
  v14 = *v12;
  v19[2] = *&v12[16];
  v19[3] = *&v12[32];
  v19[4] = *&v12[48];
  v19[5] = *&v12[64];
  v19[0] = v11;
  v19[1] = *v12;
  sub_1B0D995BC(&v13, &v10);
  sub_1B0D99618(v19);
  v6 = v16;
  a5[2] = v15;
  a5[3] = v6;
  v7 = v18;
  a5[4] = v17;
  a5[5] = v7;
  result = *&v13;
  v9 = v14;
  *a5 = v13;
  a5[1] = v9;
  return result;
}

double BodyStructure.Multipart.init(parts:mediaSubtype:extension:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(&v12[8], 0, 96);
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  sub_1B0C8C870(a4, &v12[8], &qword_1EB6E6F78, &qword_1B0EEEB20);
  v17 = *&v12[48];
  v18 = *&v12[64];
  v19 = *&v12[80];
  v20 = *&v12[96];
  v13 = v11;
  v14 = *v12;
  v15 = *&v12[16];
  v16 = *&v12[32];
  v22 = *&v12[96];
  v21[5] = *&v12[64];
  v21[6] = *&v12[80];
  v21[3] = *&v12[32];
  v21[4] = *&v12[48];
  v21[1] = *v12;
  v21[2] = *&v12[16];
  v21[0] = v11;
  sub_1B07AD120(&v13, v10);
  sub_1B0717020(v21);
  v6 = v18;
  *(a5 + 64) = v17;
  *(a5 + 80) = v6;
  *(a5 + 96) = v19;
  *(a5 + 112) = v20;
  v7 = v14;
  *a5 = v13;
  *(a5 + 16) = v7;
  result = *&v15;
  v9 = v16;
  *(a5 + 32) = v15;
  *(a5 + 48) = v9;
  return result;
}

void sub_1B0DF1F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    for (i = (a2 + 32); ; i = (i + 184))
    {
      v9 = i[9];
      v112 = i[8];
      v113 = v9;
      v114 = i[10];
      v115 = *(i + 176);
      v10 = i[5];
      v108 = i[4];
      v109 = v10;
      v11 = i[7];
      v110 = i[6];
      v111 = v11;
      v12 = i[1];
      v104 = *i;
      v105 = v12;
      v13 = i[3];
      v106 = i[2];
      v107 = v13;
      v14 = *(a3 + 20);
      sub_1B07169CC(&v104, v99);
      v15 = v4;
      v16 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, a3 + 8, v14);
      v17 = v4;
      if (v18)
      {
        v19._countAndFlagsBits = 40;
        v19._object = 0xE100000000000000;
        v16 = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
      }

      v20 = v16;
      v21 = *(a3 + 20);
      v22 = __CFADD__(v21, v16);
      v23 = v21 + v16;
      if (v22)
      {
        break;
      }

      *(a3 + 20) = v23;
      v102[8] = v112;
      v102[9] = v113;
      v102[10] = v114;
      v103 = v115;
      v102[4] = v108;
      v102[5] = v109;
      v102[6] = v110;
      v102[7] = v111;
      v102[0] = v104;
      v102[1] = v105;
      v102[2] = v106;
      v102[3] = v107;
      if (sub_1B0717014(v102) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v25 = *(v24 + 80);
        v126[4] = *(v24 + 64);
        v126[5] = v25;
        v126[6] = *(v24 + 96);
        v127 = *(v24 + 112);
        v26 = *(v24 + 16);
        v126[0] = *v24;
        v126[1] = v26;
        v27 = *(v24 + 48);
        v126[2] = *(v24 + 32);
        v126[3] = v27;
        v28 = sub_1B0DF1B64(v126);
        v29 = v20 + v28;
        if (__OFADD__(v20, v28))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v128 = v15;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v31 = v30;
        v32 = *v30;
        v33 = *v30 >> 62;
        if (v33)
        {
          v34 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
          if (v33 == 1)
          {
            memcpy(__dst, v34 + 2, sizeof(__dst));
            v35 = *(v31 + 24);
            v36 = *(v31 + 56);
            v124[2] = *(v31 + 40);
            v124[3] = v36;
            v124[4] = *(v31 + 72);
            v37 = *(v31 + 8);
            v124[1] = v35;
            v124[0] = v37;
            sub_1B0C6700C(__dst, v99);
            sub_1B0E2C7EC(__dst, v124);
            v39 = v38;
            sub_1B0C67068(__dst);
          }

          else
          {
            v67 = v34[2];
            v68 = v34[3];
            v69 = v34[4];
            v70 = *(v30 + 24);
            v71 = *(v30 + 56);
            v125[2] = *(v30 + 40);
            v125[3] = v71;
            v125[4] = *(v30 + 72);
            v72 = *(v30 + 8);
            v125[1] = v70;
            v125[0] = v72;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0E2CB04(v67, v68, v69, v125);
            v39 = v73;
          }
        }

        else
        {
          v41 = *(v32 + 16);
          v40 = *(v32 + 24);
          v42 = *(v32 + 40);
          v97 = *(v32 + 32);
          v43 = *(v30 + 24);
          v44 = *(v30 + 56);
          v122[2] = *(v30 + 40);
          v122[3] = v44;
          v122[4] = *(v30 + 72);
          v122[0] = *(v30 + 8);
          v122[1] = v43;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v98 = v42;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v45 = sub_1B0DDD890(v41, v40);
          v46 = *(a3 + 20);
          v47 = v128;
          v48 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v46);
          v128 = v47;
          if (v49)
          {
            v50._countAndFlagsBits = 32;
            v50._object = 0xE100000000000000;
            v48 = ByteBuffer._setStringSlowpath(_:at:)(v50, v46);
          }

          v51 = *(a3 + 20);
          v22 = __CFADD__(v51, v48);
          v52 = v51 + v48;
          if (v22)
          {
            goto LABEL_49;
          }

          *(a3 + 20) = v52;
          v53 = v45 + v48;
          if (__OFADD__(v45, v48))
          {
            goto LABEL_50;
          }

          v54 = sub_1B0DDD958(v97, v98);
          v55 = __OFADD__(v53, v54);
          v56 = v53 + v54;
          if (v55)
          {
            goto LABEL_51;
          }

          v57 = *(a3 + 20);
          v58 = v128;
          v59 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v57);
          v128 = v58;
          if (v60)
          {
            v61._countAndFlagsBits = 32;
            v61._object = 0xE100000000000000;
            v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v57);
          }

          v62 = *(a3 + 20);
          v22 = __CFADD__(v62, v59);
          v63 = v62 + v59;
          if (v22)
          {
            goto LABEL_52;
          }

          *(a3 + 20) = v63;
          v55 = __OFADD__(v56, v59);
          v64 = v56 + v59;
          if (v55)
          {
            goto LABEL_53;
          }

          sub_1B0D8A738(v122);
          v66 = v65;

          v55 = __OFADD__(v64, v66);
          v39 = v64 + v66;
          if (v55)
          {
            goto LABEL_54;
          }
        }

        v74 = *(v31 + 96);
        if (v74 != 1)
        {
          v116[0] = *(v31 + 88);
          v116[1] = v74;
          v75 = *(v31 + 120);
          v76 = *(v31 + 152);
          v119 = *(v31 + 136);
          v120 = v76;
          v121 = *(v31 + 168);
          v117 = *(v31 + 104);
          v118 = v75;
          v77 = *(a3 + 20);
          v78 = *(v31 + 136);
          v99[2] = *(v31 + 120);
          v99[3] = v78;
          v99[4] = *(v31 + 152);
          v100 = *(v31 + 168);
          v79 = *(v31 + 104);
          v99[0] = *(v31 + 88);
          v99[1] = v79;
          sub_1B0D98E14(v99, v101);
          v80 = v128;
          v81 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v77);
          v128 = v80;
          if (v82)
          {
            v83._countAndFlagsBits = 32;
            v83._object = 0xE100000000000000;
            v81 = ByteBuffer._setStringSlowpath(_:at:)(v83, v77);
          }

          v84 = *(a3 + 20);
          v22 = __CFADD__(v84, v81);
          v85 = v84 + v81;
          if (v22)
          {
            goto LABEL_46;
          }

          *(a3 + 20) = v85;
          v55 = __OFADD__(v39, v81);
          v86 = v39 + v81;
          if (v55)
          {
            goto LABEL_47;
          }

          sub_1B0E2CCD8(v116);
          v88 = v87;
          sub_1B0398EFC(v31 + 88, &qword_1EB6E6F98, &qword_1B0EEEB40);
          v55 = __OFADD__(v86, v88);
          v39 = v86 + v88;
          if (v55)
          {
            goto LABEL_48;
          }
        }

        v29 = v20 + v39;
        v17 = v128;
        if (__OFADD__(v20, v39))
        {
          goto LABEL_45;
        }
      }

      v89 = *(a3 + 20);
      v90 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, a3 + 8, v89);
      v4 = v17;
      if (v91)
      {
        v92._countAndFlagsBits = 41;
        v92._object = 0xE100000000000000;
        v90 = ByteBuffer._setStringSlowpath(_:at:)(v92, v89);
      }

      v93 = v90;
      v94 = *(a3 + 20);
      v22 = __CFADD__(v94, v90);
      v95 = v94 + v90;
      if (v22)
      {
        goto LABEL_41;
      }

      *(a3 + 20) = v95;
      sub_1B075E648(&v104);
      v96 = v29 + v93;
      if (__OFADD__(v29, v93))
      {
        goto LABEL_42;
      }

      v55 = __OFADD__(a1, v96);
      a1 += v96;
      if (v55)
      {
        goto LABEL_43;
      }

      if (!--v6)
      {
        return;
      }
    }

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
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }
}

uint64_t BodyStructure.Multipart.parts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BodyStructure.Multipart.mediaSubtype.getter()
{
  v1 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Multipart.mediaSubtype.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t BodyStructure.Multipart.hash(into:)(uint64_t a1)
{
  sub_1B0D48CF0(a1, *v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = v1[4];
  if (!v3)
  {
    return sub_1B0E46C68();
  }

  v4 = v1[5];
  v20 = v1[9];
  v14 = v1[10];
  v18 = v1[11];
  v19 = v1[7];
  v16 = v1[13];
  v17 = v1[12];
  v15 = v1[14];
  sub_1B0E46C68();
  v5 = *(v4 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 40;
    v9 = v3 + 40;
    while (v7 < *(v3 + 16))
    {
      ++v7;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:

  if (v19 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (v19)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v10 = *(v14 + 16);
    MEMORY[0x1B2728D70](v10);

    if (v10)
    {
      v11 = 0;
      v12 = v14 + 40;
      v13 = v20 + 40;
      while (v11 < *(v20 + 16))
      {
        ++v11;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v12 += 16;
        v13 += 16;
        if (v10 == v11)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_13:
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D4A030(a1, v18, v17, v16, v15);
}

uint64_t BodyStructure.Multipart.hashValue.getter()
{
  sub_1B0E46C28();
  BodyStructure.Multipart.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF2860()
{
  sub_1B0E46C28();
  BodyStructure.Multipart.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF28A4(uint64_t a1)
{
  sub_1B0E46C28();
  BodyStructure.Multipart.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DF28E0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

uint64_t BodyStructure.Multipart.Extension.parameters.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BodyStructure.Multipart.Extension.parameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t BodyStructure.Multipart.Extension.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v25 = v2;
  v4 = *(v2 + 16);
  MEMORY[0x1B2728D70](v4);

  if (v4)
  {
    v7 = 0;
    v8 = v2 + 40;
    v9 = v3 + 40;
    while (v7 < *(v3 + 16))
    {
      ++v7;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      v9 += 16;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  sub_1B0398EFC(&v25, &qword_1EB6E5578, &qword_1B0ED2740);
  v10 = v23[4];
  if (v10 == 1)
  {
    return sub_1B0E46C68();
  }

  v11 = v23[7];
  v24 = v23[6];
  v12 = v23[8];
  v13 = v23[9];
  v14 = v23[10];
  v15 = v23[11];
  sub_1B0E46C68();
  if (v10)
  {
    v20 = v15;
    v21 = v14;
    v22 = v13;
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v16 = *(v11 + 16);
    MEMORY[0x1B2728D70](v16);

    if (v16)
    {
      v17 = 0;
      v18 = v11 + 40;
      v19 = v24 + 40;
      while (v17 < *(v24 + 16))
      {
        ++v17;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v18 += 16;
        v19 += 16;
        if (v16 == v17)
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      __break(1u);
      return result;
    }

LABEL_12:

    v13 = v22;
    v15 = v20;
    v14 = v21;
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D4A030(a1, v12, v13, v14, v15);
}

uint64_t BodyStructure.Multipart.Extension.hashValue.getter()
{
  sub_1B0E46C28();
  v2 = v0[1];
  v1 = v0[2];
  v23 = v1;
  v3 = *(v1 + 16);
  MEMORY[0x1B2728D70](v3);

  if (v3)
  {
    v5 = 0;
    v6 = v1 + 40;
    v7 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      ++v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      v7 += 16;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  sub_1B0398EFC(&v23, &qword_1EB6E5578, &qword_1B0ED2740);
  v8 = v0[4];
  if (v8 == 1)
  {
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[9];
  v14 = v0[10];
  v13 = v0[11];
  sub_1B0E46C68();
  if (!v8)
  {
    sub_1B0E46C68();
    goto LABEL_14;
  }

  v19 = v13;
  v20 = v12;
  v21 = v11;
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v15 = *(v10 + 16);
  MEMORY[0x1B2728D70](v15);

  if (!v15)
  {
LABEL_12:

    v12 = v20;
    v11 = v21;
    v13 = v19;
LABEL_14:
    sub_1B0D4A030(v22, v11, v12, v14, v13);
    return sub_1B0E46CB8();
  }

  v16 = 0;
  v17 = v10 + 40;
  v18 = v9 + 40;
  while (v16 < *(v9 + 16))
  {
    ++v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v17 += 16;
    v18 += 16;
    if (v15 == v16)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B0DF2F0C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_1B0D3AB6C(a1, v1[1], v1[2]);
  if (v3 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  sub_1B0E46C68();
  if (v3)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D3AB6C(a1, v4, v5);
  }

  return sub_1B0D4A030(a1, v6, v7, v8, v9);
}

uint64_t sub_1B0DF3004(uint64_t a1)
{
  v3 = v1[1];
  v2 = v1[2];
  v4 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[9];
  v11 = v1[8];
  v8 = v1[10];
  v9 = v1[11];
  sub_1B0E46C28();
  sub_1B0D3AB6C(v12, v3, v2);
  if (v4 == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    sub_1B0E46C68();
    if (v4)
    {
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0D3AB6C(v12, v5, v6);
    }

    sub_1B0D4A030(v12, v11, v7, v8, v9);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0DF30F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v9, v10);
}

BOOL _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (sub_1B045202C(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1B045202C(v4, v5))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 72);
    v40[2] = *(a1 + 56);
    v40[3] = v7;
    v41 = *(a1 + 88);
    v40[0] = *(a1 + 24);
    v40[1] = v6;
    v8 = *(a2 + 40);
    v9 = *(a2 + 72);
    v38[2] = *(a2 + 56);
    v38[3] = v9;
    v39 = *(a2 + 88);
    v38[0] = *(a2 + 24);
    v38[1] = v8;
    v10 = v40[0];
    if (*(&v40[0] + 1) == 1)
    {
      if (*(&v38[0] + 1) == 1)
      {
        v11 = 1;
        *&v28 = *&v40[0];
        *(&v28 + 1) = 1;
        v12 = *(a1 + 56);
        v29 = *(a1 + 40);
        v30 = v12;
        v31 = *(a1 + 72);
        v32 = *(a1 + 88);
        sub_1B03B5C80(v40, v42, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B03B5C80(v38, v42, &qword_1EB6E6F88, &qword_1B0EEEB30);
        v13 = &v28;
LABEL_11:
        sub_1B0398EFC(v13, &qword_1EB6E6F88, &qword_1B0EEEB30);
        return v11;
      }
    }

    else if (*(&v38[0] + 1) != 1)
    {
      v21 = v38[0];
      v16 = *(a2 + 56);
      v22 = *(a2 + 40);
      v23 = v16;
      v24 = *(a2 + 72);
      v25 = *(a2 + 88);
      v32 = v25;
      v30 = v16;
      v31 = v24;
      v28 = v38[0];
      v29 = v22;
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      v19 = *(a1 + 72);
      v43 = *(a1 + 88);
      v42[2] = v18;
      v42[3] = v19;
      v42[1] = v17;
      v42[0] = v40[0];
      sub_1B03B5C80(v40, v26, &qword_1EB6E6F88, &qword_1B0EEEB30);
      sub_1B03B5C80(v38, v26, &qword_1EB6E6F88, &qword_1B0EEEB30);
      v11 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v28);
      sub_1B0398EFC(&v21, &qword_1EB6E6F88, &qword_1B0EEEB30);
      v26[0] = v10;
      v20 = *(a1 + 56);
      v26[1] = *(a1 + 40);
      v26[2] = v20;
      v26[3] = *(a1 + 72);
      v27 = *(a1 + 88);
      v13 = v26;
      goto LABEL_11;
    }

    v28 = v40[0];
    v15 = *(a1 + 56);
    v29 = *(a1 + 40);
    v30 = v15;
    v31 = *(a1 + 72);
    v32 = *(a1 + 88);
    v33 = v38[0];
    v34 = *(a2 + 40);
    v35 = *(a2 + 56);
    v36 = *(a2 + 72);
    v37 = *(a2 + 88);
    sub_1B03B5C80(v40, v42, &qword_1EB6E6F88, &qword_1B0EEEB30);
    sub_1B03B5C80(v38, v42, &qword_1EB6E6F88, &qword_1B0EEEB30);
    sub_1B0398EFC(&v28, &qword_1EB6E6F90, &qword_1B0EEEB38);
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B0D36050(*a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v49[2] = *(a1 + 56);
  v49[3] = v5;
  v6 = *(a1 + 104);
  v49[4] = *(a1 + 88);
  v49[5] = v6;
  v7 = *(a1 + 40);
  v49[0] = *(a1 + 24);
  v49[1] = v7;
  v8 = *(a2 + 72);
  v48[2] = *(a2 + 56);
  v48[3] = v8;
  v9 = *(a2 + 104);
  v48[4] = *(a2 + 88);
  v48[5] = v9;
  v10 = *(a2 + 40);
  v48[0] = *(a2 + 24);
  v48[1] = v10;
  v11 = v49[0];
  if (!*(&v49[0] + 1))
  {
    if (!*(&v48[0] + 1))
    {
      v36 = *&v49[0];
      v27 = *(a1 + 56);
      v28 = *(a1 + 88);
      v39 = *(a1 + 72);
      v40 = v28;
      v41 = *(a1 + 104);
      v37 = *(a1 + 40);
      v38 = v27;
      sub_1B03B5C80(v49, v50, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B03B5C80(v48, v50, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0398EFC(&v36, &qword_1EB6E6F78, &qword_1B0EEEB20);
      return 1;
    }

    goto LABEL_11;
  }

  if (!*(&v48[0] + 1))
  {
LABEL_11:
    v36 = v49[0];
    v21 = *(a1 + 56);
    v22 = *(a1 + 88);
    v39 = *(a1 + 72);
    v40 = v22;
    v41 = *(a1 + 104);
    v37 = *(a1 + 40);
    v38 = v21;
    v42 = v48[0];
    v23 = *(a2 + 104);
    v24 = *(a2 + 72);
    v46 = *(a2 + 88);
    v47 = v23;
    v25 = *(a2 + 40);
    v44 = *(a2 + 56);
    v45 = v24;
    v43 = v25;
    sub_1B03B5C80(v49, v50, &qword_1EB6E6F78, &qword_1B0EEEB20);
    sub_1B03B5C80(v48, v50, &qword_1EB6E6F78, &qword_1B0EEEB20);
    sub_1B0398EFC(&v36, &qword_1EB6E6F80, &qword_1B0EEEB28);
    return 0;
  }

  v29 = v48[0];
  v12 = *(a2 + 56);
  v13 = *(a2 + 88);
  v32 = *(a2 + 72);
  v33 = v13;
  v34 = *(a2 + 104);
  v30 = *(a2 + 40);
  v31 = v12;
  v40 = v13;
  v41 = v34;
  v38 = v12;
  v39 = v32;
  v36 = v48[0];
  v37 = v30;
  v14 = *(a1 + 40);
  v15 = *(a1 + 104);
  v16 = *(a1 + 72);
  v50[4] = *(a1 + 88);
  v50[5] = v15;
  v17 = *(a1 + 56);
  v50[1] = v14;
  v50[2] = v17;
  v50[3] = v16;
  v50[0] = v49[0];
  sub_1B03B5C80(v49, v35, &qword_1EB6E6F78, &qword_1B0EEEB20);
  sub_1B03B5C80(v48, v35, &qword_1EB6E6F78, &qword_1B0EEEB20);
  v18 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v50, &v36);
  sub_1B0398EFC(&v29, &qword_1EB6E6F78, &qword_1B0EEEB20);
  v35[0] = v11;
  v19 = *(a1 + 56);
  v20 = *(a1 + 88);
  v35[3] = *(a1 + 72);
  v35[4] = v20;
  v35[5] = *(a1 + 104);
  v35[1] = *(a1 + 40);
  v35[2] = v19;
  sub_1B0398EFC(v35, &qword_1EB6E6F78, &qword_1B0EEEB20);
  return v18;
}

unint64_t sub_1B0DF36E4()
{
  result = qword_1EB6E7968;
  if (!qword_1EB6E7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7968);
  }

  return result;
}

unint64_t sub_1B0DF373C()
{
  result = qword_1EB6E7970;
  if (!qword_1EB6E7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7970);
  }

  return result;
}

uint64_t sub_1B0DF37A0(uint64_t a1, int a2)
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

uint64_t sub_1B0DF37E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0DF3850(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v35 = a1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v10;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_26;
  }

  *(v1 + 20) = v15;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](result);
  v34[2] = sub_1B0DF3A94;
  v34[3] = 0;
  v34[4] = v2;
  v34[5] = &v35;
  v34[6] = 0;
  v34[7] = 0xE000000000000000;
  result = sub_1B0DE6FAC(0, sub_1B0DF3B54, v34, a1);
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_29;
  }

  *(v2 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = v17 + result;
  if (v23)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = *(v2 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v29 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v29);
  if (v30)
  {
    v31._countAndFlagsBits = 4999502;
    v31._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
  }

  v32 = *(v2 + 20);
  v14 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v14)
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v33;
  return result;
}

uint64_t sub_1B0DF3A94(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_1B0DF3C10(v4);
}

uint64_t sub_1B0DF3AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 48);
  v17 = *a6;
  v19[0] = *a2;
  v19[1] = v12;
  v19[2] = *(a2 + 16);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = *(a2 + 32);
  v24 = v16;
  v25 = *(a2 + 56);
  result = sub_1B0E24234(v11, v19, a3, a4, a5, v17, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

double NamespaceDescription.init(string:char:responseExtensions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  LODWORD(v15) = a3;
  WORD2(v15) = WORD2(a3);
  BYTE6(v15) = BYTE6(a3);
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18[0] = a1;
  v18[1] = a2;
  v19 = a3;
  v20 = WORD2(a3);
  v21 = BYTE6(a3);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  sub_1B0D3CB18(&v14, &v13);
  sub_1B0CF98D4(v18);
  v10 = v15;
  *a9 = v14;
  a9[1] = v10;
  result = *&v16;
  v12 = v17;
  a9[2] = v16;
  a9[3] = v12;
  return result;
}

uint64_t sub_1B0DF3C10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v11;
  result = sub_1B0D4B6B8(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!*(a1 + 32))
  {
LABEL_16:
    result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v17);
    if (v27)
    {
      v28._countAndFlagsBits = 4999502;
      v28._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v17);
    }

    v29 = *(v2 + 20);
    v10 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (v10)
    {
      goto LABEL_34;
    }

    *(v2 + 20) = v30;
    v26 = v18 + result;
    if (__OFADD__(v18, result))
    {
LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  MEMORY[0x1B2726E80](34, 0xE100000000000000);
  sub_1B0E44858();
  MEMORY[0x1B2726E80](34, 0xE100000000000000);
  v19 = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v17);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
  }

  v22 = v19;

  v23 = *(v2 + 20);
  v10 = __CFADD__(v23, v22);
  v24 = v23 + v22;
  if (v10)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v18, v22);
  v26 = v18 + v22;
  if (v25)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  result = sub_1B0DF43EC(0, *(a1 + 48), *(a1 + 56), v2);
  v31 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v32);
  if (v33)
  {
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v34, v32);
  }

  v35 = *(v2 + 20);
  v10 = __CFADD__(v35, result);
  v36 = v35 + result;
  if (v10)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v36;
  v25 = __OFADD__(v31, result);
  result += v31;
  if (v25)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  return result;
}

uint64_t NamespaceDescription.string.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t NamespaceDescription.delimiter.getter()
{
  v1 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t NamespaceDescription.delimiter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NamespaceDescription.responseExtensions.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NamespaceDescription.responseExtensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return result;
}

uint64_t NamespaceDescription.hash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1B0E46C38();
  if (v2[4])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D3ADE4(a1, v2[6], v2[7]);
}

uint64_t NamespaceDescription.hashValue.getter()
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  if (v0[4])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  sub_1B0D3ADE4(v2, v0[6], v0[7]);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF4234(uint64_t a1)
{
  sub_1B0E46C28();
  NamespaceDescription.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DF4270(_OWORD *a1, _OWORD *a2)
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
  return _s12NIOIMAPCore220NamespaceDescriptionV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

BOOL _s12NIOIMAPCore220NamespaceDescriptionV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || (*(a1 + 24) != *(a2 + 24) || v4 != v5) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  return (sub_1B0D3A070(v6, v8) & 1) != 0 && (sub_1B0D39EA8(v7, v9) & 1) != 0;
}

unint64_t sub_1B0DF4388()
{
  result = qword_1EB6E7978;
  if (!qword_1EB6E7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7978);
  }

  return result;
}

uint64_t sub_1B0DF43EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = v4;
  v9 = a1;
  v10 = *(a3 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = (a2 + 54);
    while (v12 < *(a2 + 16))
    {
      v14 = *(v13 - 6);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 32 + 8 * v12);
      v18[0] = *(v13 - 22);
      v18[1] = *(v13 - 14);
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = v17;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0DF4B18(&v23, v18, a4);
      if (v5)
      {

        return v9;
      }

      ++v12;
      v9 = v18[0];

      v13 += 24;
      if (v10 == v12)
      {
        v9 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v9;
  }

  return result;
}

uint64_t static NamespaceResponse.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1B0D38730(a1, a4) & 1) == 0 || (sub_1B0D38730(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0D38730(a3, a6);
}

uint64_t sub_1B0DF45A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x43415053454D414EuLL, 0xEA00000000002045, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x43415053454D414ELL;
    v10._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 20) = v14;
  result = sub_1B0DF3850(a1);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_18;
  }

  *(v3 + 20) = v20;
  v21 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1B0DF3850(a2);
  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v13 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v13)
  {
    goto LABEL_21;
  }

  *(v3 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = sub_1B0DF3850(a3);
  v22 = __OFADD__(v29, v30);
  result = v29 + v30;
  if (v22)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t NamespaceResponse.userNamespace.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NamespaceResponse.otherUserNamespace.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t NamespaceResponse.sharedNamespace.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void NamespaceResponse.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0D48988(a1, a2);
  sub_1B0D48988(a1, a3);

  sub_1B0D48988(a1, a4);
}

uint64_t NamespaceResponse.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  sub_1B0D48988(v7, a1);
  sub_1B0D48988(v7, a2);
  sub_1B0D48988(v7, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF4904()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  sub_1B0D48988(v5, v1);
  sub_1B0D48988(v5, v2);
  sub_1B0D48988(v5, v3);
  return sub_1B0E46CB8();
}

void sub_1B0DF4970(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B0D48988(a1, v3);
  sub_1B0D48988(a1, v4);

  sub_1B0D48988(a1, v5);
}

uint64_t sub_1B0DF49C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  sub_1B0D48988(v6, v2);
  sub_1B0D48988(v6, v3);
  sub_1B0D48988(v6, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF4A30(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B0D38730(*a1, *a2) & 1) == 0 || (sub_1B0D38730(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0D38730(v3, v5);
}

unint64_t sub_1B0DF4AB4()
{
  result = qword_1EB6E7980;
  if (!qword_1EB6E7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7980);
  }

  return result;
}

uint64_t sub_1B0DF4B18(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *(a2 + 22);
  v51 = *(a2 + 24);
  v9 = *(a3 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(a3 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_34;
  }

  *(a3 + 20) = v16;
  result = sub_1B0D4B6B8(v4, v5, v6 | (v7 << 32) | (v8 << 48));
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = *(a3 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = v51;
  v22 = *(a3 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_36;
  }

  *(a3 + 20) = v23;
  v24 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v52 = v21;
  if (*(v21 + 16))
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, a3 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = result;
    v28 = *(a3 + 20);
    LODWORD(v23) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_45;
    }

    *(a3 + 20) = v23;
  }

  else
  {
    v27 = 0;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, a3 + 8, v23);
  if (v29)
  {
    v30._countAndFlagsBits = 40;
    v30._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v23);
  }

  v31 = *(a3 + 20);
  v15 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v15)
  {
    goto LABEL_38;
  }

  *(a3 + 20) = v32;
  v33 = v27 + result;
  if (__OFADD__(v27, result))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  MEMORY[0x1EEE9AC00](result);
  v49[2] = sub_1B0DE0F1C;
  v49[3] = 0;
  v49[4] = a3;
  v49[5] = &v52;
  v49[6] = 32;
  v49[7] = 0xE100000000000000;
  result = sub_1B0DE6128(0, sub_1B0DE163C, v49, v21);
  v34 = __OFADD__(v33, result);
  v35 = v33 + result;
  if (v34)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = *(a3 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, a3 + 8, v36);
  if (v37)
  {
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(a3 + 20);
  v40 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_41;
  }

  *(a3 + 20) = v40;
  v41 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!*(v21 + 16))
  {
    result = 0;
    v46 = v41;
    goto LABEL_29;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, a3 + 8, v40);
  if (v42)
  {
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
  }

  v44 = *(a3 + 20);
  v15 = __CFADD__(v44, result);
  v45 = v44 + result;
  if (v15)
  {
    goto LABEL_46;
  }

  *(a3 + 20) = v45;
  v46 = v41 + result;
  if (__OFADD__(v41, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  v34 = __OFADD__(v24, v46);
  v47 = v24 + v46;
  if (!v34)
  {
    v34 = __OFADD__(*v50, v47);
    v48 = *v50 + v47;
    if (!v34)
    {
      *v50 = v48;
      return result;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B0DF4E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, uint64_t (*a4)(void *, uint64_t)@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t *a7@<X5>, unint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B0E22FDC(*a1, *a2, a2[1], a2[2], *(a2 + 6) | (*(a2 + 14) << 32) | (*(a2 + 30) << 48), a4, a5, a6, *a7, a8, a9);
  if (!v9)
  {
    *a3 = result;
  }

  return result;
}

uint64_t String.init(buffer:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v3 = sub_1B0E44C68();

  return v3;
}

uint64_t ByteToMessageDecoder.wrapInboundOut<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  type metadata accessor for Response(0);
  return swift_dynamicCast();
}

double ChannelHandlerContext.responses.getter()
{
  swift_beginAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t ChannelHandlerContext.responses.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ChannelHandlerContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ChannelHandlerContext.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ChannelHandlerContext.fireChannelRead(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Response(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0DF52FC(a1, v6);
  swift_beginAccess();
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1B0DF6750(0, v7[2] + 1, 1, v7, &qword_1EB6E6530, &unk_1B0EE7CC0, type metadata accessor for Response);
    *(v1 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1B0DF6750((v9 > 1), v10 + 1, 1, v7, &qword_1EB6E6530, &unk_1B0EE7CC0, type metadata accessor for Response);
  }

  v7[2] = v10 + 1;
  sub_1B0DF692C(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10);
  *(v1 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1B0DF52FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ChannelHandlerContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DecodingState.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

char *sub_1B0DF5438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0DF553C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A08, &qword_1B0EF9F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1B0DF5638(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E77D8, "(\r\a");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0DF57EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E79B0, &qword_1B0EF9ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0DF5930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E79A8, &qword_1B0EF9ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0DF5A98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E79E0, &unk_1B0EF9F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0DF5BD0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0DF5D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D98, &unk_1B0EF9F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0DF5E28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E79D8, &qword_1B0EF9F28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0DF5F34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1B0DF6054(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B0DF61B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0DF62BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E79D0, &unk_1B0EF9F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0DF63C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B0DF64E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E79F8, &unk_1B0EF9F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38A0, &unk_1B0EA2EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0DF661C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A00, &unk_1B0EF9F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A8, &unk_1B0E9E120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0DF6750(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1B0DF692C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0DF6994()
{
  result = qword_1EB6E7988;
  if (!qword_1EB6E7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7988);
  }

  return result;
}

unint64_t sub_1B0DF6A40()
{
  result = qword_1EB6E7A18;
  if (!qword_1EB6E7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A18);
  }

  return result;
}

uint64_t sub_1B0DF6A94(unint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (a1[4])
  {
    result = sub_1B0DF6F58(*a1, v4, a1[2], a1[3]);
  }

  else
  {
    v6 = *(v1 + 20);
    result = sub_1B0CFC1B0(*a1, v4, v1 + 8, v6);
    if (v7)
    {
      v8._countAndFlagsBits = v3;
      v8._object = v4;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v6);
    }

    v9 = *(v1 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    *(v1 + 20) = v11;
  }

  v12 = a1[7];
  if (HIBYTE(v12) == 255)
  {
    return result;
  }

  v13 = result;
  v15 = a1[5];
  v14 = a1[6];
  v16 = *(v1 + 20);
  sub_1B0D3C8F0(v15, v14, v12, HIBYTE(v12) & 1);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v1 + 20);
  v10 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v10)
  {
    goto LABEL_15;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = sub_1B0DF7268(v15, v14, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) & 1) << 56));
  sub_1B0D3CB98(v15, v14, v12);
  result = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t OptionExtensionKind.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t OptionExtensionKind.hashValue.getter()
{
  sub_1B0E46C28();
  if (*(v0 + 32))
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF6D3C()
{
  v1 = *(v0 + 32);
  sub_1B0E46C28();
  if (v1)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF6DDC(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DF6E70(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1B0E46C28();
  if (v2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF6F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore219OptionExtensionKindO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_1B0DF6F58(unint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v9 = *(v4 + 20);
  result = sub_1B0CFC1B0(a1, a2, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 20) = v15;
  result = sub_1B0CFC1B0(0x2DuLL, 0xE100000000000000, v4 + 8, v15);
  if (v16)
  {
    v17._countAndFlagsBits = 45;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v4 + 20);
  v19 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_14;
  }

  *(v4 + 20) = v19;
  v20 = __OFADD__(v13, result);
  v21 = v13 + result;
  if (v20)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B0CFC1B0(a3, a4, v4 + 8, v19);
  if (v22)
  {
    v23._countAndFlagsBits = a3;
    v23._object = a4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v4 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_16;
  }

  *(v4 + 20) = v26;
  v20 = __OFADD__(v21, result);
  result += v21;
  if (v20)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore219OptionExtensionKindO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if (a2[4])
    {
      v8 = a1[2];
      v9 = a1[3];
      v10 = a2[2];
      v11 = a2[3];
      v12 = v4 == v6 && v5 == v7;
      if (v12 || (sub_1B0E46A78() & 1) != 0)
      {
        v13 = v8 == v10 && v9 == v11;
        if (v13 || (sub_1B0E46A78() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[4])
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

unint64_t sub_1B0DF7168()
{
  result = qword_1EB6E7A20;
  if (!qword_1EB6E7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A20);
  }

  return result;
}

uint64_t sub_1B0DF71BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B0DF7204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B0DF7268(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 40;
    v10._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + 20) = v14;
  result = sub_1B0DF7670(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a3) & 1) << 56));
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v3 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_12;
  }

  *(v3 + 20) = v20;
  v21 = __OFADD__(v15, result);
  result += v15;
  if (v21)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static OptionValueComp.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) == 0)
  {
    if ((a6 & 0x100000000000000) == 0)
    {
      return sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a6 & 0x100000000000000) == 0)
  {
    return 0;
  }

  return sub_1B0D312C0(a1, a4);
}

uint64_t OptionValueComp.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1, a2, a3);

    return sub_1B0D46B40(a1, a2);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    swift_beginAccess();
    return sub_1B0E46C38();
  }
}

uint64_t OptionValueComp.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  if ((a3 & 0x100000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);
    sub_1B0D46B40(v6, a1);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    swift_beginAccess();
    sub_1B0E46C38();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF7564(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  v5 = *(v1 + 23);
  sub_1B0E46C28();
  OptionValueComp.hash(into:)(v7, v2, v3, v4 | (v5 << 56));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF75D8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 23))
  {
    if (*(a2 + 23))
    {
      return sub_1B0D312C0(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 23))
  {
    return 0;
  }

  return sub_1B0C2DB54(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), *a2, *(a2 + 8), (*(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

uint64_t sub_1B0DF7660@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0x100000000000000;
  return result;
}

uint64_t sub_1B0DF7670(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a3 & 0x100000000000000) != 0)
  {
    v35 = a1;
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = a1;
      v9 = *(v3 + 20);
      result = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 8, v9);
      if (v10)
      {
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v11, v9);
      }

      v12 = result;
      v13 = *(v3 + 20);
      v14 = __CFADD__(v13, result);
      v15 = v13 + result;
      if (v14)
      {
        goto LABEL_33;
      }

      *(v3 + 20) = v15;
    }

    else
    {
      v8 = a1;
      v12 = 0;
      v15 = *(v3 + 20);
    }

    v16 = v15;
    result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v3 + 8, v15);
    if (v17)
    {
      v18._countAndFlagsBits = 40;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = *(v3 + 20);
    v14 = __CFADD__(v19, result);
    v20 = v19 + result;
    if (!v14)
    {
      *(v3 + 20) = v20;
      v21 = v12 + result;
      if (__OFADD__(v12, result))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      MEMORY[0x1EEE9AC00](result);
      v34[2] = sub_1B0DF78C8;
      v34[3] = 0;
      v34[4] = v4;
      v34[5] = &v35;
      v34[6] = 32;
      v34[7] = 0xE100000000000000;
      result = sub_1B0DE69F0(0, sub_1B0DF7A14, v34, v8);
      v22 = v21 + result;
      if (__OFADD__(v21, result))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v23 = *(v4 + 20);
      result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v4 + 8, v23);
      if (v24)
      {
        v25._countAndFlagsBits = 41;
        v25._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
      }

      v26 = *(v4 + 20);
      v27 = (v26 + result);
      if (__CFADD__(v26, result))
      {
        goto LABEL_31;
      }

      *(v4 + 20) = v27;
      v28 = __OFADD__(v22, result);
      v29 = v22 + result;
      if (v28)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (!v7)
      {
        return v29;
      }

      result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v27);
      if (v30)
      {
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
      }

      v32 = *(v4 + 20);
      v14 = __CFADD__(v32, result);
      v33 = v32 + result;
      if (v14)
      {
        goto LABEL_34;
      }

      *(v4 + 20) = v33;
      v28 = __OFADD__(v29, result);
      result += v29;
      if (!v28)
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v5 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_1B0D4B6B8(a1, a2, v5);
}

uint64_t sub_1B0DF7920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23AD0(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32) | (*(a2 + 31) << 56), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

unint64_t sub_1B0DF79B0()
{
  result = qword_1EB6E7A28;
  if (!qword_1EB6E7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A28);
  }

  return result;
}

void sub_1B0DF7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 20);
  v64 = *(a3 + 16);
  if (!v64)
  {
    goto LABEL_36;
  }

  v7 = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 8, v5);
  if (v8)
  {
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
  }

  v10 = v7;
  v11 = *(v3 + 20);
  v5 = (v11 + v7);
  if (__CFADD__(v11, v7))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v3 + 20) = v5;
  v12 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v3 + 8, v5);
  if (v13)
  {
    v14._countAndFlagsBits = 40;
    v14._object = 0xE100000000000000;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v5);
  }

  v15 = *(v3 + 20);
  v16 = __CFADD__(v15, v12);
  v17 = v15 + v12;
  if (v16)
  {
    goto LABEL_48;
  }

  *(v3 + 20) = v17;
  if (__OFADD__(v10, v12))
  {
    goto LABEL_49;
  }

  v61 = v10 + v12;

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v62 = a2;
  while (v64 != v19)
  {
    if (v19 >= *(a2 + 16))
    {
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
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v23 = *(a2 + v18 + 32);
    v24 = *(a2 + v18 + 40);
    v5 = *(a3 + v18 + 40);
    v65 = *(a3 + v18 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0DD55E0(v23, v24);
    v26 = v25;
    v27 = *(v4 + 20);
    v28 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v27);
    if (v29)
    {
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
    }

    v31 = *(v4 + 20);
    v16 = __CFADD__(v31, v28);
    v32 = v31 + v28;
    if (v16)
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v32;
    v33 = v26 + v28;
    if (__OFADD__(v26, v28))
    {
      goto LABEL_42;
    }

    sub_1B0DD55E0(v65, v5);
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_43;
    }

    v22 = __OFADD__(v20, v35);
    v36 = v20 + v35;
    if (v22)
    {
      goto LABEL_44;
    }

    if (v19 >= v64 - 1)
    {

      v21 = 0;
      a2 = v62;
    }

    else
    {
      v37 = *(v4 + 20);
      v38 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v37);
      a2 = v62;
      if (v39)
      {
        v40._countAndFlagsBits = 32;
        v40._object = 0xE100000000000000;
        v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
      }

      v21 = v38;

      v41 = *(v4 + 20);
      v16 = __CFADD__(v41, v21);
      v42 = v41 + v21;
      if (v16)
      {
        goto LABEL_46;
      }

      *(v4 + 20) = v42;
    }

    v18 += 16;
    ++v19;
    v22 = __OFADD__(v36, v21);
    v20 = v36 + v21;
    if (v22)
    {
      goto LABEL_45;
    }
  }

  v22 = __OFADD__(v61, v20);
  v43 = v61 + v20;
  if (v22)
  {
    goto LABEL_50;
  }

  v44 = *(v4 + 20);
  v45 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v4 + 8, v44);
  if (v46)
  {
    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
  }

  v48 = *(v4 + 20);
  v49 = (v48 + v45);
  if (__CFADD__(v48, v45))
  {
    goto LABEL_51;
  }

  *(v4 + 20) = v49;
  v22 = __OFADD__(v43, v45);
  v50 = v43 + v45;
  if (v22)
  {
    goto LABEL_52;
  }

  v51 = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v49);
  if (v52)
  {
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v51 = ByteBuffer._setStringSlowpath(_:at:)(v53, v49);
  }

  v54 = *(v4 + 20);
  v16 = __CFADD__(v54, v51);
  v55 = v54 + v51;
  if (v16)
  {
    goto LABEL_53;
  }

  *(v4 + 20) = v55;
  if (!__OFADD__(v50, v51))
  {
    return;
  }

  __break(1u);
LABEL_36:
  v56 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v4 + 8, v5);
  if (v57)
  {
    v58._countAndFlagsBits = 4999502;
    v58._object = 0xE300000000000000;
    v56 = ByteBuffer._setStringSlowpath(_:at:)(v58, v5);
  }

  v59 = *(v4 + 20);
  v16 = __CFADD__(v59, v56);
  v60 = v59 + v56;
  if (!v16)
  {
    *(v4 + 20) = v60;
    return;
  }

LABEL_54:
  __break(1u);
}

uint64_t ParameterValue.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D062E4(v1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728D70](*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 40;
      do
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    sub_1B03C60A4(v14, v11, &qword_1EB6E4050, &unk_1B0EC2B20);
    MEMORY[0x1B2728D70](0);
    sub_1B0DF8610(v11, v8);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      MEMORY[0x1B2728D70](1);
    }

    else
    {
      sub_1B03C60A4(v8, v5, &qword_1EB6E4040, &qword_1B0EC2B10);
      MEMORY[0x1B2728D70](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      sub_1B0398EFC(v5, &qword_1EB6E4040, &qword_1B0EC2B10);
    }

    return sub_1B0398EFC(v11, &qword_1EB6E4050, &unk_1B0EC2B20);
  }
}

uint64_t ParameterValue.hashValue.getter()
{
  sub_1B0E46C28();
  ParameterValue.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF8108()
{
  sub_1B0E46C28();
  ParameterValue.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF814C(uint64_t a1)
{
  sub_1B0E46C28();
  ParameterValue.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DF818C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-v5];
  v7 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0D062E4(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_12;
  }

  v10 = *v9;
  v11 = *(v2 + 20);
  v6 = 0;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v11);
  if (v13)
  {
    v14._countAndFlagsBits = 40;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = result;
  v16 = *(v2 + 20);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v18;
  v9 = sub_1B0E30270(v10);

  v19 = __OFADD__(v15, v9);
  v20 = v9 + v15;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v21);
  if (v22)
  {
    v9 = (v2 + 8);
    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v2 + 20);
  v17 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v17)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v25;
  v19 = __OFADD__(v20, result);
  result += v20;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  sub_1B03C60A4(v9, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
  v26 = sub_1B0E1F248(v6);
  sub_1B0398EFC(v6, &qword_1EB6E4050, &unk_1B0EC2B20);
  return v26;
}

uint64_t _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_1B0D062E4(a1, &v21 - v14);
  sub_1B0D062E4(a2, &v15[v17]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D062E4(v15, v9);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1B045202C(v18, *&v15[v17]);

LABEL_9:
      sub_1B0D06348(v15);
      return v19 & 1;
    }
  }

  else
  {
    sub_1B0D062E4(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B03C60A4(&v15[v17], v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      v19 = sub_1B0E1A984(v12, v6);
      sub_1B0398EFC(v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0398EFC(v12, &qword_1EB6E4050, &unk_1B0EC2B20);
      goto LABEL_9;
    }

    sub_1B0398EFC(v12, &qword_1EB6E4050, &unk_1B0EC2B20);
  }

  sub_1B0398EFC(v15, &qword_1EB6E6F18, &qword_1B0EEEAD8);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1B0DF8610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0DF8680(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B0E46368();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1B0B6D434(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t *sub_1B0DF8980(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v12 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v10 = *(result + 10);
    v11 = *(result + 22);

    sub_1B0DACC9C(v6, v4, a3, &v13);
    if (v3)
    {

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v13;
  }

  return result;
}

void sub_1B0DF8A78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B0DF8980(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0DF8B28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(a1 + 4);
      v10 = *(a1 + 10);
      v11 = *(a1 + 22);

      sub_1B0DFE880(0x44495520uLL, 0xE400000000000000, 0, 0, a1, v4, a3);
      v12 = v3;
      if (!v3)
      {

        return;
      }

      *a1 = v7;
      a1[1] = v8;
      *(a1 + 4) = v9;
      *(a1 + 10) = v10;
      *(a1 + 22) = v11;
    }

    swift_willThrow();
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

uint64_t sub_1B0DF8CA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {

      sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1B0439BCC();
    v17 = swift_allocError();
    *v18 = a3;

    swift_willThrow();
    v23 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v23 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {

      sub_1B0DFE828(a1, v16, a3, &v22);

      return v22;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DF8FB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {

      sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1B0439BCC();
    v17 = swift_allocError();
    *v18 = a3;

    swift_willThrow();
    v23 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v23 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {

      sub_1B0DFE828(a1, v16, a3, &v22);

      return v22;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DF92C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {

      sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1B0439BCC();
    v17 = swift_allocError();
    *v18 = a3;

    swift_willThrow();
    v23 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v23 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {

      sub_1B0DFE854(a1, v16, a3, &v22);

      return v22;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DF9640(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t BadCommand.commandTag.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BadCommand.commandTag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double BadCommand.parserError.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

__n128 BadCommand.parserError.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

uint64_t ParserError.hint.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ParserError.hint.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B0DF98E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B0DF992C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1B0DF99B8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = *(a1 + 10);
  v27 = *a1;
  v44 = *a1;
  v45 = v3;
  v46 = v2;
  v24 = v4;
  v47 = v4;
  v48 = v5;
  v25 = v6;
  v49 = v6;
  v50 = v3;
  v51 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1B04394F4(&v44);
    sub_1B0D3EA30();
    swift_allocError();
LABEL_26:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v45)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v45 >= v46 - v45)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v9 = *(*(v44 + 24) + (v49 | (v48 << 8)) + v3 + v7);
    if (v9 != 93)
    {
      v10 = v9 - 32;
      if (v9 < 0x20)
      {
        break;
      }

      v11 = v10 > 0x3C;
      v12 = (1 << v10) & 0x1000000000000725;
      v13 = v11 || v12 == 0;
      if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
      {
        break;
      }
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1B04394F4(&v44);
  v36 = v27;
  v37 = v3;
  v38 = v2;
  v39 = v24;
  v40 = v26;
  v41 = v25;
  v42 = v3;
  v43 = v2;

  sub_1B04394F4(&v36);
  if (v3 + v7 == v42)
  {
    v28 = v27;
    v29 = v3;
    v30 = v2;
    v31 = v24;
    v32 = v26;
    v33 = v25;
    v34 = v3;
    v35 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v18 = *(v27 + 24);
    v19 = *(v18 + v8);
    v20 = *(v18 + v8);

    sub_1B04394F4(&v28);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v21 = ((v20 >> 6) & 0xFFFFC0FF | ((v20 & 0x3F) << 8)) + 33217;
    if (v19 >= 0)
    {
      v21 = v20 + 1;
    }

    v52 = (v21 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v21) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = 0xD000000000000020;
    v22[3] = 0x80000001B0F2FA10;
    v22[4] = 118;
    goto LABEL_26;
  }

  v28 = v27;
  v29 = v3;
  v30 = v2;
  v31 = v24;
  v32 = v26;
  v33 = v25;
  v34 = v3;
  v35 = v2;
  v14 = v3 + v7;

  sub_1B04394F4(&v28);
  if (__OFSUB__(v14, v34))
  {
    goto LABEL_31;
  }

  v15 = ByteBuffer.readSlice(length:)(v14 - v34);
  if (v15)
  {
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 20) = WORD2(v17);
    *(a2 + 22) = BYTE6(v17);
    return;
  }

LABEL_33:
  __break(1u);
}

void sub_1B0DF9D90(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = *(a1 + 10);
  v27 = *a1;
  v44 = *a1;
  v45 = v3;
  v46 = v2;
  v24 = v4;
  v47 = v4;
  v48 = v5;
  v25 = v6;
  v49 = v6;
  v50 = v3;
  v51 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1B04394F4(&v44);
    sub_1B0D3EA30();
    swift_allocError();
LABEL_27:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v45)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v3 + v7 - v45 >= v46 - v45)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    v9 = *(*(v44 + 24) + (v49 | (v48 << 8)) + v3 + v7);
    if (v9 != 93)
    {
      v10 = v9 - 32;
      if (v9 < 0x20)
      {
        break;
      }

      v11 = v10 > 0x3C;
      v12 = (1 << v10) & 0x1000000000000725;
      v13 = v11 || v12 == 0;
      if (!v13 || v9 == 123 || (v9 & 0x80) != 0 || v9 == 43)
      {
        break;
      }
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1B04394F4(&v44);
  v36 = v27;
  v37 = v3;
  v38 = v2;
  v39 = v24;
  v40 = v26;
  v41 = v25;
  v42 = v3;
  v43 = v2;

  sub_1B04394F4(&v36);
  if (v3 + v7 == v42)
  {
    v28 = v27;
    v29 = v3;
    v30 = v2;
    v31 = v24;
    v32 = v26;
    v33 = v25;
    v34 = v3;
    v35 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_33;
    }

    swift_beginAccess();
    v18 = *(v27 + 24);
    v19 = *(v18 + v8);
    v20 = *(v18 + v8);

    sub_1B04394F4(&v28);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v21 = ((v20 >> 6) & 0xFFFFC0FF | ((v20 & 0x3F) << 8)) + 33217;
    if (v19 >= 0)
    {
      v21 = v20 + 1;
    }

    v52 = (v21 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v21) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = 0xD000000000000020;
    v22[3] = 0x80000001B0F2FA10;
    v22[4] = 118;
    goto LABEL_27;
  }

  v28 = v27;
  v29 = v3;
  v30 = v2;
  v31 = v24;
  v32 = v26;
  v33 = v25;
  v34 = v3;
  v35 = v2;
  v14 = v3 + v7;

  sub_1B04394F4(&v28);
  if (__OFSUB__(v14, v34))
  {
    goto LABEL_32;
  }

  v15 = ByteBuffer.readSlice(length:)(v14 - v34);
  if (v15)
  {
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 20) = WORD2(v17);
    *(a2 + 22) = BYTE6(v17);
    return;
  }

LABEL_34:
  __break(1u);
}

void sub_1B0DFA19C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = *(a1 + 10);
  v25 = *a1;
  v42 = *a1;
  v43 = v3;
  v44 = v2;
  v22 = v4;
  v45 = v4;
  v46 = v5;
  v23 = v6;
  v47 = v6;
  v48 = v3;
  v49 = v2;
  if (v2 == v3)
  {
LABEL_15:

    sub_1B04394F4(&v42);
    sub_1B0D3EA30();
    swift_allocError();
LABEL_16:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v43)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v3 + v7 - v43 >= v44 - v43)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v9 = *(*(v42 + 24) + (v47 | (v46 << 8)) + v3 + v7);
    v10 = (v9 - 45) >= 2 && (v9 - 48) >= 0xA;
    if (v10 && (v9 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_15;
    }
  }

  sub_1B04394F4(&v42);
  v34 = v25;
  v35 = v3;
  v36 = v2;
  v37 = v22;
  v38 = v24;
  v39 = v23;
  v40 = v3;
  v41 = v2;

  sub_1B04394F4(&v34);
  if (v3 + v7 == v40)
  {
    v26 = v25;
    v27 = v3;
    v28 = v2;
    v29 = v22;
    v30 = v24;
    v31 = v23;
    v32 = v3;
    v33 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v16 = *(v25 + 24);
    v17 = *(v16 + v8);
    v18 = *(v16 + v8);

    sub_1B04394F4(&v26);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v19 = ((v18 >> 6) & 0xFFFFC0FF | ((v18 & 0x3F) << 8)) + 33217;
    if (v17 >= 0)
    {
      v19 = v18 + 1;
    }

    v50 = (v19 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v19) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v20[2] = 0xD000000000000020;
    v20[3] = 0x80000001B0F2FA10;
    v20[4] = 118;
    goto LABEL_16;
  }

  v26 = v25;
  v27 = v3;
  v28 = v2;
  v29 = v22;
  v30 = v24;
  v31 = v23;
  v32 = v3;
  v33 = v2;
  v12 = v3 + v7;

  sub_1B04394F4(&v26);
  if (__OFSUB__(v12, v32))
  {
    goto LABEL_29;
  }

  v13 = ByteBuffer.readSlice(length:)(v12 - v32);
  if (v13)
  {
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 20) = WORD2(v15);
    *(a2 + 22) = BYTE6(v15);
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t *sub_1B0DFA554@<X0>(uint64_t *result@<X0>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v3 < v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(result + 4);
  v6 = *(result + 10);
  v7 = *(result + 22);
  if (v5 - (v7 | (v6 << 8)) < v3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(result + 10);
  v21 = *result;
  v38 = *result;
  v39 = v4;
  v40 = v3;
  v18 = v5;
  v41 = v5;
  v42 = v6;
  v19 = v7;
  v43 = v7;
  v44 = v4;
  v45 = v3;
  if (v3 == v4)
  {
LABEL_9:

    sub_1B04394F4(&v38);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v9 = 0;
  v10 = v4 + (v6 << 8) + v7;
  while (1)
  {
    if (v4 + v9 < v39)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v4 + v9 - v39 >= v40 - v39)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    result = (a2)(*(*(v38 + 24) + (v43 | (v42 << 8)) + v4 + v9));
    if (!result)
    {
      break;
    }

    ++v10;
    ++v9;
    if (!(v4 - v3 + v9))
    {
      goto LABEL_9;
    }
  }

  sub_1B04394F4(&v38);
  v30 = v21;
  v31 = v4;
  v32 = v3;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v36 = v4;
  v37 = v3;

  result = sub_1B04394F4(&v30);
  v11 = v4 + v9;
  if (v4 + v9 == v36)
  {
    v22 = v21;
    v23 = v4;
    v24 = v3;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = v4;
    v29 = v3;
    if (v9 >= (v3 - v4))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v14 = *(*(v21 + 24) + v10);

    sub_1B04394F4(&v22);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v15 = ((v14 >> 6) & 0xFFFFC0FF | ((v14 & 0x3F) << 8)) + 33217;
    if (v14 >= 0)
    {
      v15 = v14 + 1;
    }

    v46 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v16[2] = 0xD000000000000020;
    v16[3] = 0x80000001B0F2FA10;
    v16[4] = 118;
    return swift_willThrow();
  }

  v22 = v21;
  v23 = v4;
  v24 = v3;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v4;
  v29 = v3;

  sub_1B04394F4(&v22);
  result = (v11 - v28);
  if (__OFSUB__(v11, v28))
  {
    goto LABEL_23;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 20) = WORD2(v13);
    *(a3 + 22) = BYTE6(v13);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1B0DFA8F8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(a1 + 10);
  v24 = *a1;
  v41 = *a1;
  v42 = v3;
  v43 = v2;
  v21 = v4;
  v44 = v4;
  v45 = v5;
  v22 = v6;
  v46 = v6;
  v47 = v3;
  v48 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1B04394F4(&v41);
    sub_1B0D3EA30();
    swift_allocError();
LABEL_25:
    swift_willThrow();
    return;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v42)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v3 + v7 - v42 >= v43 - v42)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v9 = *(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7);
    v10 = v9 == 10 || v9 == 13;
    if (v10 || (v9 & 0x80) != 0 || !*(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7) || v9 == 93)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1B04394F4(&v41);
  v33 = v24;
  v34 = v3;
  v35 = v2;
  v36 = v21;
  v37 = v23;
  v38 = v22;
  v39 = v3;
  v40 = v2;

  sub_1B04394F4(&v33);
  if (v3 + v7 == v39)
  {
    v25 = v24;
    v26 = v3;
    v27 = v2;
    v28 = v21;
    v29 = v23;
    v30 = v22;
    v31 = v3;
    v32 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v15 = *(v24 + 24);
    v16 = *(v15 + v8);
    v17 = *(v15 + v8);

    sub_1B04394F4(&v25);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v18 = ((v17 >> 6) & 0xFFFFC0FF | ((v17 & 0x3F) << 8)) + 33217;
    if (v16 >= 0)
    {
      v18 = v17 + 1;
    }

    v49 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    v19[2] = 0xD000000000000020;
    v19[3] = 0x80000001B0F2FA10;
    v19[4] = 118;
    goto LABEL_25;
  }

  v25 = v24;
  v26 = v3;
  v27 = v2;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v2;
  v11 = v3 + v7;

  sub_1B04394F4(&v25);
  if (__OFSUB__(v11, v31))
  {
    goto LABEL_30;
  }

  v12 = ByteBuffer.readSlice(length:)(v11 - v31);
  if (v12)
  {
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 20) = WORD2(v14);
    *(a2 + 22) = BYTE6(v14);
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1B0DFACB0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v3)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
    goto LABEL_27;
  }

  v23 = *(a1 + 10);
  v24 = *a1;
  v41 = *a1;
  v42 = v3;
  v43 = v2;
  v21 = v4;
  v44 = v4;
  v45 = v5;
  v22 = v6;
  v46 = v6;
  v47 = v3;
  v48 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1B04394F4(&v41);
    sub_1B0D3EA30();
    swift_allocError();
    goto LABEL_23;
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v42)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 + v7 - v42 >= v43 - v42)
    {
      goto LABEL_25;
    }

    swift_beginAccess();
    v9 = *(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    if (v10 <= 0x3D)
    {
      if (v10 == 61)
      {
        goto LABEL_6;
      }

      if (((1 << (v9 - 32)) & 0x1000000000000725) != 0)
      {
        break;
      }
    }

    if (v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

LABEL_6:
    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1B04394F4(&v41);
  v33 = v24;
  v34 = v3;
  v35 = v2;
  v36 = v21;
  v37 = v23;
  v38 = v22;
  v39 = v3;
  v40 = v2;

  sub_1B04394F4(&v33);
  if (v3 + v7 != v39)
  {
    v25 = v24;
    v26 = v3;
    v27 = v2;
    v28 = v21;
    v29 = v23;
    v30 = v22;
    v31 = v3;
    v32 = v2;
    v11 = v3 + v7;

    sub_1B04394F4(&v25);
    if (__OFSUB__(v11, v31))
    {
      goto LABEL_28;
    }

    v12 = ByteBuffer.readSlice(length:)(v11 - v31);
    if (v12)
    {
      *a2 = v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
      *(a2 + 20) = WORD2(v14);
      *(a2 + 22) = BYTE6(v14);
      return;
    }

    goto LABEL_30;
  }

  v25 = v24;
  v26 = v3;
  v27 = v2;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v2;
  if (v7 >= (v2 - v3))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v15 = *(v24 + 24);
  v16 = *(v15 + v8);
  v17 = *(v15 + v8);

  sub_1B04394F4(&v25);
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
  v18 = ((v17 >> 6) & 0xFFFFC0FF | ((v17 & 0x3F) << 8)) + 33217;
  if (v16 >= 0)
  {
    v18 = v17 + 1;
  }

  v49 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
  sub_1B0E44C78();
  sub_1B0E44858();

  sub_1B0436554();
  swift_allocError();
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v19[2] = 0xD000000000000020;
  v19[3] = 0x80000001B0F2FA10;
  v19[4] = 118;
LABEL_23:
  swift_willThrow();
}

uint64_t sub_1B0DFB088(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_40;
  }

  v10 = a3;
  if (v9 >= a3)
  {
    sub_1B0439BCC();
    v46 = swift_allocError();
    *v47 = v10;
LABEL_35:
    swift_willThrow();
    v49 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }

  v11 = result;
  v12 = a2 + 2;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_32:
    sub_1B0439BCC();
    v8 = swift_allocError();
    *v48 = v10;

LABEL_34:
    swift_willThrow();

    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    v46 = v8;
    goto LABEL_35;
  }

  v50 = a2 + 1;
  while (1)
  {

    sub_1B0436204(v11);
    if (v8)
    {
      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
      goto LABEL_34;
    }

    sub_1B0D959A0(v11, v9, v10, a5, a6, a7, a8);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v57 = v28;

    v29 = a4;
    v31 = *a4;
    v30 = a4[1];
    v32 = *(v30 + 16);
    if (*a4)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v33 = sub_1B0C08B5C(v23, v25, v30 + 32, v32, (v31 + 16), v31 + 32);
      v35 = v34;
      v37 = v36;

      if (v35)
      {
        v29 = a4;
LABEL_22:
        sub_1B0DFD8C8(v23, v25, v37, sub_1B041D32C);

        v40 = v29[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29[2] = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B041D32C(0, *(v40 + 16) + 1, 1);
          v40 = v29[2];
        }

        v19 = *(v40 + 16);
        v18 = *(v40 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B041D32C((v18 > 1), v19 + 1, 1);
        }

        v20 = v29[2];
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v57;
        *(v21 + 40) = v27;
        goto LABEL_8;
      }

      v29 = a4;
    }

    else
    {
      if (!v32)
      {
LABEL_21:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = 0;
        goto LABEL_22;
      }

      v33 = 0;
      v38 = (v30 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v23 && *v38 == v25;
        if (v39 || (sub_1B0E46A78() & 1) != 0)
        {
          break;
        }

        ++v33;
        v38 += 2;
        if (v32 == v33)
        {
          goto LABEL_21;
        }
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v42 = v29[2];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v29[2] = v42;
    if ((v43 & 1) == 0)
    {
      v29[2] = sub_1B0C0E064(v42);
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    v44 = v29[2];
    if (v33 >= *(v44 + 16))
    {
      goto LABEL_39;
    }

    v45 = v44 + 16 * v33;
    *(v45 + 32) = v57;
    *(v45 + 40) = v27;

LABEL_8:
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    v16 = *(v11 + 20);
    v17 = *(v11 + 22);
    v9 = v50;
    v10 = a3;
    v8 = 0;
    if (v12 >= a3)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0DFB4B0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_40;
  }

  v10 = a3;
  if (v9 >= a3)
  {
    sub_1B0439BCC();
    v46 = swift_allocError();
    *v47 = v10;
LABEL_35:
    swift_willThrow();
    v49 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }

  v11 = result;
  v12 = a2 + 2;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_32:
    sub_1B0439BCC();
    v8 = swift_allocError();
    *v48 = v10;

LABEL_34:
    swift_willThrow();

    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    v46 = v8;
    goto LABEL_35;
  }

  v50 = a2 + 1;
  while (1)
  {

    sub_1B0436204(v11);
    if (v8)
    {
      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
      goto LABEL_34;
    }

    sub_1B0DBA4DC(v11, v9, v10, a5, a6, a7, a8);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v57 = v28;

    v29 = a4;
    v31 = *a4;
    v30 = a4[1];
    v32 = *(v30 + 16);
    if (*a4)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v33 = sub_1B0C08B5C(v23, v25, v30 + 32, v32, (v31 + 16), v31 + 32);
      v35 = v34;
      v37 = v36;

      if (v35)
      {
        v29 = a4;
LABEL_22:
        sub_1B0DFD8C8(v23, v25, v37, sub_1B041D32C);

        v40 = v29[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29[2] = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B041DB10(0, *(v40 + 16) + 1, 1);
          v40 = v29[2];
        }

        v19 = *(v40 + 16);
        v18 = *(v40 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B041DB10((v18 > 1), v19 + 1, 1);
        }

        v20 = v29[2];
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v57;
        *(v21 + 40) = v27;
        goto LABEL_8;
      }

      v29 = a4;
    }

    else
    {
      if (!v32)
      {
LABEL_21:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = 0;
        goto LABEL_22;
      }

      v33 = 0;
      v38 = (v30 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v23 && *v38 == v25;
        if (v39 || (sub_1B0E46A78() & 1) != 0)
        {
          break;
        }

        ++v33;
        v38 += 2;
        if (v32 == v33)
        {
          goto LABEL_21;
        }
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v42 = v29[2];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v29[2] = v42;
    if ((v43 & 1) == 0)
    {
      v29[2] = sub_1B0C0E078(v42);
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    v44 = v29[2];
    if (v33 >= *(v44 + 16))
    {
      goto LABEL_39;
    }

    v45 = v44 + 16 * v33;
    *(v45 + 32) = v57;
    *(v45 + 40) = v27;

LABEL_8:
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    v16 = *(v11 + 20);
    v17 = *(v11 + 22);
    v9 = v50;
    v10 = a3;
    v8 = 0;
    if (v12 >= a3)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0DFB8D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__OFADD__(a2, 1))
  {
    goto LABEL_65;
  }

  v9 = a6;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v75 = swift_allocError();
    *v76 = a3;
LABEL_59:
    swift_willThrow();
    v97[0] = v75;
    v78 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }

  v10 = result;
  v11 = *result;
  v12 = *(result + 8);
  v13 = *(result + 16);
  v14 = *(result + 20);
  v15 = *(result + 22);
  v89 = a2 + 2;
  if (a2 + 2 >= a3)
  {
LABEL_56:
    sub_1B0439BCC();
    v8 = swift_allocError();
    *v77 = a3;

LABEL_58:
    swift_willThrow();

    *v10 = v11;
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
    *(v10 + 20) = v14;
    *(v10 + 22) = v15;
    v75 = v8;
    goto LABEL_59;
  }

  v16 = a4;
  v83 = a2 + 1;
  v80 = result;
  while (1)
  {

    sub_1B0436204(v10);
    if (v8)
    {
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v15;
      goto LABEL_58;
    }

    sub_1B0D9ABAC(v10, v83, a3, a5, v9, a7, a8, &v102);

    v22 = v102;
    v23 = v103;
    v24 = v104;
    v95 = v105;
    v25 = v106;
    *&v109[15] = *&v108[15];
    *v109 = *v108;
    v26 = *v16;
    v27 = v16[1];
    v96 = v107;
    v87 = v103;
    v88 = v104;
    v94 = v106;
    if (*v16)
    {
      break;
    }

    v39 = *(v27 + 16);
    if (!v39)
    {

      sub_1B0E08520(v109, &v98);
      v72 = v79;
      v55 = v96;
      v9 = a6;
LABEL_51:
      v79 = v72 & 0xFF00000000000000 | v95 | (v25 << 32) | (v55 << 48);
      sub_1B0DFDA98(v22, v23 | (v24 << 32), v79, v39, sub_1B0D7DF5C);

      v73 = v16[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16[2] = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0D7DF3C(0, *(v73 + 16) + 1, 1);
        v73 = v16[2];
      }

      v18 = *(v73 + 16);
      v17 = *(v73 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B0D7DF3C((v17 > 1), v18 + 1, 1);
      }

      sub_1B0398EFC(&v102, &qword_1EB6E7558, &qword_1B0EF4670);
      v19 = v16[2];
      *(v19 + 16) = v18 + 1;
      v20 = v19 + 24 * v18;
      v21 = *v109;
      *(v20 + 47) = *&v109[15];
      *(v20 + 32) = v21;
      goto LABEL_8;
    }

    v93 = v104 - v103;
    v53 = v16[1];

    sub_1B0E08520(v109, &v98);
    v54 = v22;
    swift_beginAccess();
    v37 = 0;
    v55 = v96;
    v56 = v96 | (v25 << 8);
    v57 = (v53 + 54);
    v90 = v56 + v23;
    while (1)
    {
      v58 = *(v57 - 14);
      v59 = *(v57 - 10);
      if (v59 - v58 == v93)
      {
        v60 = *(v57 - 22);
        v61 = *(v57 - 1);
        v62 = *v57;
        v63 = *(v57 - 6) == v95 && v61 == v94;
        v64 = v63 && v62 == v55;
        if (v64 && v60 == v54)
        {
          break;
        }

        swift_beginAccess();
        v66 = memcmp((*(v60 + 24) + (v62 | (v61 << 8)) + v58), (*(v54 + 24) + v90), v59 - v58);
        v55 = v96;
        if (!v66)
        {
          break;
        }
      }

      v57 += 24;
      if (v39 == ++v37)
      {
        v39 = 0;
        v16 = a4;
        v9 = a6;
        v72 = v79;
        v10 = v80;
        v22 = v54;
        v23 = v87;
        v24 = v88;
        v25 = v94;
        goto LABEL_51;
      }
    }

LABEL_43:

    v16 = a4;
    v9 = a6;
    v67 = a4[2];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    a4[2] = v67;
    v10 = v80;
    if ((v68 & 1) == 0)
    {
      a4[2] = sub_1B0DFE794(v67);
    }

    result = sub_1B0398EFC(&v102, &qword_1EB6E7558, &qword_1B0EF4670);
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v69 = a4[2];
    if (v37 >= *(v69 + 16))
    {
      goto LABEL_64;
    }

    v70 = v69 + 24 * v37;
    v71 = *v109;
    *(v70 + 47) = *&v109[15];
    *(v70 + 32) = v71;

LABEL_8:
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 20);
    v15 = *(v10 + 22);
    v8 = 0;
    if (v89 >= a3)
    {
      goto LABEL_56;
    }
  }

  v28 = v107;
  sub_1B0E46C28();
  swift_beginAccess();
  v29 = v28 | (v25 << 8);
  sub_1B0E46C38();
  result = sub_1B0E46CB8();
  v30 = 1 << *(v26 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (!v31)
  {
    v33 = v32 & result;
    v34 = sub_1B0E434F8();
    *&v114 = v26 + 16;
    *(&v114 + 1) = v26 + 32;
    *&v115 = v33;
    *(&v115 + 1) = v34;
    *&v116 = v35;
    *(&v116 + 1) = v36;
    v117 = 0;
    v37 = sub_1B0E43528();
    LOBYTE(v33) = v38;
    v39 = v115;
    v98 = v114;
    v99 = v115;
    v100 = v116;
    v101 = v117;

    sub_1B0E08520(v109, v97);

    if (v33)
    {
      v16 = a4;
      v9 = a6;
    }

    else
    {
      v40 = v22;
      v41 = v27 + 32;
      v42 = v88 - v23;
      v92 = v29 + v23;
      do
      {
        v44 = (v41 + 24 * v37);
        v45 = *(v44 + 2);
        v46 = *(v44 + 3);
        if (v46 - v45 == v42)
        {
          v47 = *v44;
          v48 = *(v44 + 10);
          v49 = *(v44 + 22);
          v50 = *(v44 + 4) == v95 && v48 == v94;
          v51 = v50 && v49 == v96;
          v52 = v51 && v47 == v40;
          if (v52 || (swift_beginAccess(), !memcmp((*(v47 + 24) + (v49 | (v48 << 8)) + v45), (*(v40 + 24) + v92), v46 - v45)))
          {

            goto LABEL_43;
          }
        }

        sub_1B0E43548();
        v110 = v98;
        v111 = v99;
        v112 = v100;
        v113 = v101;
        v39 = v99;
        v37 = sub_1B0E43528();
      }

      while ((v43 & 1) == 0);
      v10 = v80;
      v16 = a4;
      v22 = v40;
      v9 = a6;
      v23 = v87;
    }

    v72 = v79;
    v24 = v88;
    v25 = v94;
    v55 = v96;
    goto LABEL_51;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void sub_1B0DFC004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v145 = a7;
  v146 = a8;
  v147 = a6;
  v144 = a5;
  v150 = a1;
  v168 = type metadata accessor for ParameterValue(0);
  v11 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v143 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v141 - v16;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7548, &unk_1B0EFA5D0);
  MEMORY[0x1EEE9AC00](v156);
  v18 = &v141 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v141 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A50, &qword_1B0EFA5E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v169 = &v141 - v23;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7598, &qword_1B0EF4E50);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v141 - v25;
  v26 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_112;
  }

  v27 = a2 + 2;
  v151 = (v24 + 48);
  v152 = a2 + 2;
  v157 = (v11 + 56);
  v158 = (v24 + 56);
  v149 = v11;
  v153 = (v11 + 48);
  v154 = v18;
  v164 = a4;
  v165 = v21;
  v155 = a3;
  v159 = a2 + 1;
  while (1)
  {
    while (1)
    {
      if (v26 >= a3)
      {
        sub_1B0439BCC();
        v36 = swift_allocError();
        *v37 = a3;
      }

      else
      {
        v28 = v150;
        v29 = *v150;
        v30 = *(v150 + 8);
        v31 = *(v150 + 12);
        v32 = *(v150 + 16);
        v33 = *(v150 + 20);
        v34 = *(v150 + 22);
        if (v27 >= a3)
        {
          sub_1B0439BCC();
          v35 = swift_allocError();
          *v38 = a3;
        }

        else
        {

          v35 = v162;
          sub_1B0436204(v28);
          if (!v35)
          {
            sub_1B0DA2640(v28, v159, a3, v144, v147, v145, v146, v169);

            (*v158)(v169, 0, 1, v167);
            v43 = v164;
            v42 = v165;
            goto LABEL_16;
          }

          *v28 = v29;
          *(v28 + 8) = v30;
          *(v28 + 12) = v31;
          *(v28 + 16) = v32;
          *(v28 + 20) = v33;
          *(v28 + 22) = v34;
        }

        swift_willThrow();

        *v28 = v29;
        *(v28 + 8) = v30;
        *(v28 + 12) = v31;
        *(v28 + 16) = v32;
        *(v28 + 20) = v33;
        *(v28 + 22) = v34;
        v36 = v35;
        a4 = v164;
        v21 = v165;
      }

      swift_willThrow();
      v179 = v36;
      v39 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (!swift_dynamicCast())
      {

        return;
      }

      v40 = v169;
      v41 = v167;
      (*v158)(v169, 1, 1, v167);

      if ((*v151)(v40, 1, v41) == 1)
      {
        sub_1B0398EFC(v169, &qword_1EB6E7A50, &qword_1B0EFA5E0);

        return;
      }

      v42 = v21;
      v43 = a4;
LABEL_16:
      v162 = 0;
      v44 = v166;
      sub_1B03C60A4(v169, v166, &qword_1EB6E7598, &qword_1B0EF4E50);
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = *(v44 + 12);
      v172 = *(v44 + 16);
      v48 = *(v44 + 20);
      v49 = *(v44 + 22);
      sub_1B0E085E4(v44 + *(v167 + 52), v42, type metadata accessor for ParameterValue);
      (*v157)(v42, 0, 1, v168);
      v50 = *v43;
      v51 = v43[1];
      v173 = v49;
      v174 = v48;
      v163 = v46;
      v161 = v47;
      if (v50)
      {
        break;
      }

      v67 = *(v51 + 16);
      if (v67)
      {
        v73 = v161 - v46;
        swift_beginAccess();
        v74 = v46;
        v64 = 0;
        v76 = v173;
        v75 = v174;
        v77 = (v51 + 54);
        v170 = (v173 | (v174 << 8)) + v74;
        LODWORD(v171) = v73;
        while (1)
        {
          v78 = *(v77 - 14);
          v79 = *(v77 - 10);
          if (v79 - v78 == v73)
          {
            v188 = v64;
            v80 = v67;
            v81 = *(v77 - 22);
            v82 = v45;
            v83 = *(v77 - 1);
            v84 = *v77;
            if (*(v77 - 6) == v172 && v83 == v75 && v84 == v76 && v81 == v82)
            {
              v67 = 0;
              v64 = v188;
              goto LABEL_58;
            }

            swift_beginAccess();
            v88 = memcmp((*(v81 + 24) + (v84 | (v83 << 8)) + v78), (*(v82 + 24) + v170), v79 - v78);
            v76 = v173;
            v75 = v174;
            v45 = v82;
            v67 = v80;
            v64 = v188;
            v73 = v171;
            if (!v88)
            {
              v67 = 0;
              goto LABEL_58;
            }
          }

          v77 += 24;
          if (v67 == ++v64)
          {
            v188 = v45;
            v67 = 0;
            goto LABEL_20;
          }
        }
      }

      v188 = v45;
      v68 = v43;
      v21 = v42;
LABEL_21:
      v69 = *(v156 + 48);
      v70 = v154;
      sub_1B03B5C80(v21, &v154[v69], &qword_1EB6E6440, &unk_1B0EF3530);
      v71 = (*v153)(&v70[v69], 1, v168);
      v72 = v155;
      if (v71 == 1)
      {
        sub_1B0398EFC(v21, &qword_1EB6E6440, &unk_1B0EF3530);
        sub_1B0398EFC(v166, &qword_1EB6E7598, &qword_1B0EF4E50);
        v26 = v159;
        v27 = v152;
        a4 = v68;
        a3 = v72;
      }

      else
      {
        v171 = type metadata accessor for ParameterValue;
        v124 = &v70[v69];
        v125 = v142;
        sub_1B0E0857C(v124, v142, type metadata accessor for ParameterValue);
        v141 = v141 & 0xFF00000000000000 | v172 | (v174 << 32) | (v173 << 48);
        v126 = v67;
        a4 = v68;
        sub_1B0DFDA98(v188, v163 | (v161 << 32), v141, v126, sub_1B0D7DF7C);
        sub_1B0E085E4(v125, v143, v171);
        v127 = v68[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68[2] = v127;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0CEF664(0, *(v127 + 16) + 1, 1);
          v127 = v68[2];
        }

        v130 = *(v127 + 16);
        v129 = *(v127 + 24);
        if (v130 >= v129 >> 1)
        {
          sub_1B0CEF664((v129 > 1), v130 + 1, 1);
        }

        sub_1B0E0864C(v142, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v21, &qword_1EB6E6440, &unk_1B0EF3530);
        sub_1B0398EFC(v166, &qword_1EB6E7598, &qword_1B0EF4E50);
        v131 = a4[2];
        *(v131 + 16) = v130 + 1;
        sub_1B0E0857C(v143, v131 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v130, type metadata accessor for ParameterValue);
        v26 = v159;
        v27 = v152;
        a3 = v72;
      }
    }

    v171 = v51;
    v52 = v50;
    v53 = (v50 + 16);
    sub_1B0E46C28();
    swift_beginAccess();
    v54 = v49 | (v48 << 8);
    sub_1B0E46C38();
    v55 = sub_1B0E46CB8();
    v56 = 1 << *v53;
    v57 = __OFSUB__(v56, 1);
    v58 = v56 - 1;
    if (v57)
    {
      break;
    }

    v59 = v47;
    v188 = v45;
    v60 = v58 & v55;
    v61 = sub_1B0E434F8();
    *&v184 = v53;
    *(&v184 + 1) = v52 + 32;
    *&v185 = v60;
    *(&v185 + 1) = v61;
    *&v186 = v62;
    *(&v186 + 1) = v63;
    v187 = 0;
    v64 = sub_1B0E43528();
    v66 = v65;
    v67 = v185;
    v175 = v184;
    v176 = v185;
    v177 = v186;
    v178 = v187;
    v160 = v52;

    if (v66)
    {
LABEL_19:

LABEL_20:
      v68 = v164;
      v21 = v165;
      goto LABEL_21;
    }

    v89 = v59 - v163;
    v170 = v54 + v163;
    v171 = (v171 + 32);
    while (1)
    {
      v91 = v171 + 24 * v64;
      v92 = *(v91 + 2);
      v93 = *(v91 + 3);
      if (v93 - v92 == v89)
      {
        v94 = *v91;
        v95 = *(v91 + 10);
        v96 = v91[22];
        v97 = *(v91 + 4) == v172 && v95 == v174;
        v98 = v97 && v96 == v173;
        if (v98 && v94 == v188)
        {
          break;
        }

        swift_beginAccess();
        if (!memcmp((*(v94 + 24) + (v96 | (v95 << 8)) + v92), (*(v188 + 24) + v170), v93 - v92))
        {
          break;
        }
      }

      sub_1B0E43548();
      v180 = v175;
      v181 = v176;
      v182 = v177;
      v183 = v178;
      v67 = v176;
      v64 = sub_1B0E43528();
      if (v90)
      {
        goto LABEL_19;
      }
    }

LABEL_58:
    v100 = *(v156 + 48);
    v101 = v154;
    sub_1B03B5C80(v165, &v154[v100], &qword_1EB6E6440, &unk_1B0EF3530);
    v102 = (*v153)(&v101[v100], 1, v168);
    v103 = v164;
    a3 = v155;
    if (v102 == 1)
    {
      v105 = *v164;
      v104 = v164[1];
      v106 = v164;
      v107 = *(v104 + 2);
      if (*v164)
      {
        swift_beginAccess();
        if ((*(v105 + 16) & 0x3FLL) == (*(v105 + 24) & 0x3FLL))
        {
          if (!v107)
          {
LABEL_81:
            v118 = swift_isUniquelyReferenced_nonNull_native();
            v103[1] = v104;
            if ((v118 & 1) == 0)
            {
              v104 = sub_1B0DFE7D4(v104);
              v106[1] = v104;
            }

            v119 = *(v104 + 2);
            if (v64 >= v119)
            {
              goto LABEL_113;
            }

            v120 = v119 - 1;
            memmove(&v104[24 * v64 + 32], &v104[24 * v64 + 56], 24 * (v119 - 1 - v64));
            *(v104 + 2) = v120;
            v106[1] = v104;
            v121 = *v106;
            if (*v106)
            {
              swift_beginAccess();
              v122 = *(v121 + 24) & 0x3FLL;
              v123 = *(v104 + 2);
              if (v122)
              {
LABEL_95:
                v132 = MEMORY[0x1B27256A0](v123);
                if (v122 <= v132)
                {
                  v133 = v132;
                }

                else
                {
                  v133 = v122;
                }

                v134 = sub_1B0DFE2F0(v104, v133, 0, v122, sub_1B0DFE3D0);

                a4 = v103;
                *v103 = v134;
                goto LABEL_99;
              }
            }

            else
            {
              v122 = 0;
              v123 = *(v104 + 2);
            }

            if (v123 >= 0x10)
            {
              goto LABEL_95;
            }

            a4 = v103;
            *v103 = 0;
LABEL_99:

            v135 = a4[2];
            v136 = swift_isUniquelyReferenced_nonNull_native();
            a4[2] = v135;
            if ((v136 & 1) == 0)
            {
              v135 = sub_1B0DFE72C(v135);
              a4[2] = v135;
            }

            v137 = v135[2];
            if (v64 >= v137)
            {
              goto LABEL_111;
            }

            v138 = v137 - 1;
            v139 = *(v149 + 72);
            v140 = v135 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + v139 * v64;
            sub_1B0E0864C(v140, type metadata accessor for ParameterValue);
            if (v139 > 0 || v140 >= v140 + v139 + v139 * (v138 - v64))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v139)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v135[2] = v138;
            a4[2] = v135;
            v21 = v165;
            sub_1B0398EFC(v165, &qword_1EB6E6440, &unk_1B0EF3530);
            sub_1B0398EFC(v166, &qword_1EB6E7598, &qword_1B0EF4E50);
            goto LABEL_5;
          }
        }

        else if (v107 <= MEMORY[0x1B2725680]())
        {
          goto LABEL_81;
        }

        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v115 = *v103;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v115)
          {
            goto LABEL_118;
          }

          v116 = sub_1B0E43578();

          *v103 = v116;
          v115 = v116;
        }

        if (!v115)
        {
          goto LABEL_117;
        }

        v117 = v67;
        a4 = v103;
        sub_1B0D983A8(v117, (v115 + 16), v115 + 32, v103);
        if (__OFADD__(v64, 1))
        {
          goto LABEL_114;
        }

        if ((v64 + 1) < v64)
        {
          goto LABEL_115;
        }

        sub_1B0D985F0(v64);
        sub_1B0D982D4(v64);
        goto LABEL_99;
      }

      if (!v107)
      {
        goto LABEL_81;
      }

      v111 = swift_isUniquelyReferenced_nonNull_native();
      a4 = v103;
      v103[1] = v104;
      if ((v111 & 1) == 0)
      {
        v104 = sub_1B0DFE7D4(v104);
        v106[1] = v104;
      }

      v112 = *(v104 + 2);
      if (v64 >= v112)
      {
        goto LABEL_116;
      }

      v113 = v112 - 1;
      memmove(&v104[24 * v64 + 32], &v104[24 * v64 + 56], 24 * (v112 - 1 - v64));
      *(v104 + 2) = v113;
      v106[1] = v104;
      goto LABEL_99;
    }

    sub_1B0E0857C(&v101[v100], v148, type metadata accessor for ParameterValue);
    v108 = v103[2];
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v103[2] = v108;
    a4 = v103;
    if ((v109 & 1) == 0)
    {
      v103[2] = sub_1B0DFE72C(v108);
    }

    v21 = v165;
    sub_1B0398EFC(v165, &qword_1EB6E6440, &unk_1B0EF3530);
    sub_1B0398EFC(v166, &qword_1EB6E7598, &qword_1B0EF4E50);
    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    v110 = a4[2];
    if (v64 >= *(v110 + 16))
    {
      goto LABEL_110;
    }

    sub_1B0D996D8(v148, v110 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v64);
LABEL_5:
    v26 = v159;
    v27 = v152;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
}

uint64_t sub_1B0DFCF10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__OFADD__(a2, 1))
  {
    goto LABEL_66;
  }

  v9 = a3;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v17 = swift_allocError();
    *v73 = v9;
LABEL_59:
    swift_willThrow();
    v97 = v17;
    v75 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }

  v10 = result;
  v11 = a2 + 2;
  v12 = *result;
  v13 = *(result + 8);
  v14 = *(result + 16);
  v15 = *(result + 20);
  v16 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_56:
    sub_1B0439BCC();
    v17 = swift_allocError();
    *v74 = v9;

LABEL_58:
    swift_willThrow();

    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 20) = v15;
    *(v10 + 22) = v16;
    goto LABEL_59;
  }

  v17 = v8;
  v18 = a4;
  v79 = a2 + 2;
  v80 = result;
  while (1)
  {
    swift_retain_n();
    sub_1B0DBE4E8(v10, v11, v9, a5, a6, a7, a8, &v93);
    if (v17)
    {

      goto LABEL_58;
    }

    v22 = v93;
    v23 = DWORD2(v93);
    v24 = HIDWORD(v93);
    v25 = BYTE6(v94);
    v26 = *(&v94 + 1);
    v27 = *v18;
    v28 = v18[1];
    v91 = WORD2(v94);
    v92 = v93;
    v89 = v94;
    v90 = BYTE6(v94);
    v85 = *(&v94 + 1);
    v86 = HIDWORD(v93);
    v87 = DWORD2(v93);
    if (*v18)
    {
      break;
    }

    v41 = *(v28 + 16);
    if (!v41)
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v79;
      v10 = v80;
      v57 = v90;
      v56 = v91;
      v17 = 0;
LABEL_51:
      v76 = v76 & 0xFF00000000000000 | v89 | (v56 << 32) | (v57 << 48);
      sub_1B0DFDA98(v22, v23 | (v24 << 32), v76, v41, sub_1B0D7DF7C);

      v71 = v18[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[2] = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0D7DF9C(0, *(v71 + 16) + 1, 1);
        v71 = v18[2];
      }

      v20 = *(v71 + 16);
      v19 = *(v71 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B0D7DF9C((v19 > 1), v20 + 1, 1);
      }

      v21 = v18[2];
      *(v21 + 16) = v20 + 1;
      *(v21 + 8 * v20 + 32) = v26;
      goto LABEL_8;
    }

    v54 = HIDWORD(v93) - DWORD2(v93);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_beginAccess();
    v55 = v23;
    v38 = 0;
    v57 = v90;
    v56 = v91;
    v58 = (v28 + 54);
    v88 = (v90 | (v91 << 8)) + v55;
    while (1)
    {
      v59 = *(v58 - 14);
      v60 = *(v58 - 10);
      if (v60 - v59 == v54)
      {
        v61 = *(v58 - 22);
        v62 = *(v58 - 1);
        v63 = *v58;
        v64 = *(v58 - 6) == v89 && v62 == v56;
        v65 = v64 && v63 == v57;
        if (v65 && v61 == v92)
        {
          break;
        }

        swift_beginAccess();
        v67 = memcmp((*(v61 + 24) + (v63 | (v62 << 8)) + v59), (*(v92 + 24) + v88), v60 - v59);
        v57 = v90;
        v56 = v91;
        if (!v67)
        {
          break;
        }
      }

      v58 += 24;
      if (v41 == ++v38)
      {
        v41 = 0;
        v26 = v85;
        v17 = 0;
        v11 = v79;
        v10 = v80;
        v18 = a4;
        v9 = a3;
        v22 = v92;
        v24 = v86;
        v23 = v87;
        goto LABEL_51;
      }
    }

LABEL_43:

    v18 = a4;
    v68 = a4[2];
    v69 = swift_isUniquelyReferenced_nonNull_native();
    a4[2] = v68;
    v17 = 0;
    v11 = v79;
    v10 = v80;
    v9 = a3;
    if ((v69 & 1) == 0)
    {
      a4[2] = sub_1B0DFE814(v68);
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v70 = a4[2];
    if (v38 >= *(v70 + 16))
    {
      goto LABEL_65;
    }

    *(v70 + 8 * v38 + 32) = v85;

LABEL_8:
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 16);
    v15 = *(v10 + 20);
    v16 = *(v10 + 22);
    if (v11 >= v9)
    {
      goto LABEL_56;
    }
  }

  v29 = WORD2(v94);
  sub_1B0E46C28();
  swift_beginAccess();
  v30 = v25 | (v29 << 8);
  sub_1B0E46C38();
  result = sub_1B0E46CB8();
  v31 = 1 << *(v27 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (!v32)
  {
    v34 = v33 & result;
    v35 = sub_1B0E434F8();
    *&v102 = v27 + 16;
    *(&v102 + 1) = v27 + 32;
    *&v103 = v34;
    *(&v103 + 1) = v35;
    *&v104 = v36;
    *(&v104 + 1) = v37;
    v105 = 0;
    v38 = sub_1B0E43528();
    v40 = v39;
    v41 = v103;
    v93 = v102;
    v94 = v103;
    v95 = v104;
    v96 = v105;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v40)
    {
      v9 = a3;
      v17 = 0;
      v10 = v80;
    }

    else
    {
      v42 = v28 + 32;
      v43 = v30 + v87;
      do
      {
        v45 = (v42 + 24 * v38);
        v46 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v47 - v46 == v86 - v87)
        {
          v48 = *v45;
          v49 = *(v45 + 10);
          v50 = *(v45 + 22);
          v51 = *(v45 + 4) == v89 && v49 == v91;
          v52 = v51 && v50 == v90;
          v53 = v52 && v48 == v92;
          if (v53 || (swift_beginAccess(), !memcmp((*(v48 + 24) + (v50 | (v49 << 8)) + v46), (*(v92 + 24) + v43), v47 - v46)))
          {

            goto LABEL_43;
          }
        }

        sub_1B0E43548();
        v98 = v93;
        v99 = v94;
        v100 = v95;
        v101 = v96;
        v41 = v94;
        v38 = sub_1B0E43528();
      }

      while ((v44 & 1) == 0);
      v26 = v85;
      v17 = 0;
      v10 = v80;
      v9 = a3;
      v22 = v92;
    }

    v18 = a4;
    v11 = v79;
    v24 = v86;
    v23 = v87;
    v57 = v90;
    v56 = v91;
    goto LABEL_51;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

unint64_t sub_1B0DFD5B4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v36 = *(a1 + 10);
  v9 = *(a1 + 22);
  v39 = *a1;
  swift_beginAccess();
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 4 * v10;
  v12 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v31 = (v7 - v8);
  if (v5 <= v8 + v31)
  {
    v14 = v8 + v31;
  }

  else
  {
    v14 = v5;
  }

  v15 = v5 - v8;
  v16 = v9 | (v36 << 8);
  result = 15;
  v35 = v8;
  v37 = v5;
  v18 = v5;
  v34 = v14;
  v33 = v16;
  while (v11 != result >> 14)
  {
    v19 = result & 0xC;
    v20 = result;
    if (v19 == v13)
    {
      v25 = result;
      v26 = sub_1B0A6D6C4(result, a2, a3);
      v16 = v33;
      v14 = v34;
      v11 = 4 * v10;
      v20 = v26;
      result = v25;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v10)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v30 = result;
      v27 = sub_1B0E44E08();
      v16 = v33;
      v14 = v34;
      v11 = 4 * v10;
      v24 = v27;
      result = v30;
      if (v19 != v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v38[0] = a2;
        v38[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        v22 = v38;
      }

      else
      {
        v22 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v29 = result;
          v23 = sub_1B0E46368();
          v16 = v33;
          v14 = v34;
          v11 = 4 * v10;
          v22 = v23;
          result = v29;
        }
      }

      v24 = *(v22 + v21);
      if (v19 != v13)
      {
LABEL_20:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    result = sub_1B0A6D6C4(result, a2, a3);
    v16 = v33;
    v14 = v34;
    v11 = 4 * v10;
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v6 == v18)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

LABEL_25:
    if (v10 <= result >> 16)
    {
      goto LABEL_44;
    }

    result = sub_1B0E44DD8();
    v16 = v33;
    v14 = v34;
    v11 = 4 * v10;
    if (v6 == v18)
    {
LABEL_38:
      sub_1B0D56C9C(a1, v38);
      goto LABEL_39;
    }

LABEL_27:
    if (v18 >= v6)
    {
      goto LABEL_41;
    }

    if (v37 < v35)
    {
      goto LABEL_42;
    }

    if (v14 == v18)
    {
      goto LABEL_43;
    }

    v28 = *(*(v39 + 24) + v16 + v18++);
    ++v15;
    if (((v28 ^ v24) & 0xDF) != 0)
    {
      sub_1B0D56C9C(a1, v38);
LABEL_37:

      return 0;
    }
  }

  result = sub_1B0D56C9C(a1, v38);
  if (v6 == v18)
  {
LABEL_39:

    return 1;
  }

  if (v18 < v37 || v18 >= v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v18 < v35)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v15 < v31)
  {
    goto LABEL_37;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1B0DFD8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = v4;
  v11 = v4[1];
  v9 = v4 + 1;
  v10 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((result & 1) == 0)
  {
    result = a4(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  if (v15 >= v14 >> 1)
  {
    result = a4(v14 > 1, v15 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v15 + 1;
  v16 = v10 + 16 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v6[1] = v10;
  v17 = *v6;
  if (*v6)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v17 + 16) & 0x3FLL) > v15)
    {
      result = swift_isUniquelyReferenced_native();
      v18 = *v6;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v19 = sub_1B0E43578();

        *v6 = v19;
        v18 = v19;
      }

      if (v18)
      {
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v15 < 0xF)
  {
    return result;
  }

  return sub_1B0DFE228(sub_1B0C08A2C, v13);
}

uint64_t sub_1B0DFDA98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v8 = a2;
  v10 = HIDWORD(a2);
  v11 = v5 + 1;
  v12 = v5[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0, *(v12 + 16) + 1, 1);
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    a5(v14 > 1, v15 + 1, 1);
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 24 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = v8;
  *(v16 + 44) = v10;
  *(v16 + 48) = a3;
  *(v16 + 52) = WORD2(a3);
  *(v16 + 54) = BYTE6(a3);
  v5[1] = v12;
  v17 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v17 + 16) & 0x3FLL) > v15)
    {

      result = swift_isUniquelyReferenced_native();
      v19 = *v5;
      if ((result & 1) == 0)
      {
        if (!v19)
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v20 = sub_1B0E43578();

        *v5 = v20;
        v19 = v20;
      }

      if (v19)
      {
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:

    return sub_1B0DFE228(sub_1B0DFE3D0, v21);
  }

  if (v15 >= 0xF)
  {
    goto LABEL_13;
  }
}

char *sub_1B0DFDCAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A58, &qword_1B0EFA5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1B0DFDDAC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6428, &qword_1B0EE6430);
  v10 = *(type metadata accessor for ParameterValue(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  v15 = *(type metadata accessor for ParameterValue(0) - 8);
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

char *sub_1B0DFDFD8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B0DFE0F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A30, &qword_1B0EFA580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A38, &qword_1B0EFA588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0DFE228(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a2)
{
  v4 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v5 = *(v4 + 24) & 0x3FLL;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  v7 = *(v6 + 16);
  if (v5 || v7 >= 0x10)
  {
    v9 = MEMORY[0x1B27256A0](v7);
    if (v5 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    v8 = sub_1B0DFE2F0(v6, v10, 0, v5, a1);
  }

  else
  {
    v8 = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B0DFE2F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1B27256A0](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1B27256B0](v10, a4);
    sub_1B0DFE378(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_1B0DFE3D0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1B0E46C28();
        swift_beginAccess();
        sub_1B0E46C38();
        v7 = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        v7 = sub_1B0E43538();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_1B0DFE514(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v10 = a2;
  v12 = HIDWORD(a2);
  sub_1B0E46C28();
  v13 = v10;
  swift_beginAccess();
  v30 = a3;
  v14 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
  sub_1B0E46C38();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    v16 = sub_1B0E43528();
    if ((v17 & 1) == 0)
    {
      v18 = v12 - v10;
      v29 = v14 + v13;
      do
      {
        v20 = (a4 + 24 * v16);
        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        if (v21 - v22 == v18)
        {
          v23 = *v20;
          v24 = *(v20 + 10);
          v25 = *(v20 + 22);
          v26 = *(v20 + 4) == v30 && v24 == WORD2(v30);
          v27 = v26 && v25 == BYTE6(v30);
          if (v27 && v23 == a1)
          {
            break;
          }

          swift_beginAccess();
          if (!memcmp((*(v23 + 24) + (v25 | (v24 << 8)) + v22), (*(a1 + 24) + v29), v21 - v22))
          {
            break;
          }
        }

        sub_1B0E43548();
        v16 = sub_1B0E43528();
      }

      while ((v19 & 1) == 0);
    }

    return v16;
  }

  return result;
}

uint64_t sub_1B0DFE828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_1B0D9F404(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B0DFE854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_1B0D9EA70(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B0DFE880(unint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, int64_t a7)
{
  if (__OFADD__(a6, 1))
  {
    __break(1u);
    goto LABEL_48;
  }

  v12 = a7;
  if (a6 + 1 < a7)
  {
    v16 = v8;
    v7 = a5;
    v10 = a2;
    v11 = a1;
    v9 = *a5;
    v17 = *(a5 + 8);
    v15 = *(a5 + 12);
    LODWORD(v14) = *(a5 + 16);
    v56 = *(a5 + 20);
    v18 = *(a5 + 22);
    v39 = v18;
    if ((a4 & 1) == 0)
    {

      v36 = v17;
      v37 = v14;
      if ((v10 & 0x1000000000000000) != 0)
      {
LABEL_34:
        v14 = sub_1B0E44DC8();
LABEL_13:
        v12 = v56;
        v13 = *(v7 + 8);
        v38 = v15;
        if ((v14 & 0x8000000000000000) == 0 && v14 <= (v15 - v13))
        {
          LODWORD(v15) = v18;
          swift_beginAccess();
          v20 = sub_1B0E44C68();
          if (!__CFADD__(v13, v14))
          {
            v12 = v21;
            *(v7 + 8) = v13 + v14;
            if (v20 == v11 && v21 == v10)
            {
              goto LABEL_21;
            }

            v15 = v20;
            if (sub_1B0E46A78())
            {
              goto LABEL_21;
            }

            if (a3)
            {
              sub_1B0E46298();

              MEMORY[0x1B2726E80](v11, v10);
              MEMORY[0x1B2726E80](0x20646E756F6620, 0xE700000000000000);
              MEMORY[0x1B2726E80](v15, v12);

              sub_1B0436554();
              swift_allocError();
              *v32 = 0xD00000000000001DLL;
              v32[1] = 0x80000001B0F30520;
              v32[2] = 0xD000000000000020;
              v32[3] = 0x80000001B0F2FA10;
              v32[4] = 283;
              swift_willThrow();

              v17 = v36;
              LODWORD(v14) = v37;
              LOWORD(v12) = v56;
              LODWORD(v15) = v38;
              goto LABEL_36;
            }

            v13 = v15;
            LODWORD(v15) = v38;
            if ((v12 & 0x1000000000000000) == 0)
            {
              if ((v12 & 0x2000000000000000) != 0)
              {
                v33 = HIBYTE(v12) & 0xF;
              }

              else
              {
                v33 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (v14 == v33)
              {
LABEL_45:
                if (sub_1B043D8AC(v11, v10, v13, v12))
                {
LABEL_21:
                }
              }

LABEL_52:
              sub_1B0E46298();

              MEMORY[0x1B2726E80](v11, v10);
              MEMORY[0x1B2726E80](0x20646E756F6620, 0xE700000000000000);
              MEMORY[0x1B2726E80](v13, v12);

              sub_1B0436554();
              swift_allocError();
              *v34 = 0xD00000000000001FLL;
              v34[1] = 0x80000001B0F30500;
              v34[2] = 0xD000000000000020;
              v34[3] = 0x80000001B0F2FA10;
              v34[4] = 280;
              swift_willThrow();

              v17 = v36;
              LODWORD(v14) = v37;
              LOWORD(v12) = v56;
              goto LABEL_36;
            }

LABEL_51:
            if (v14 == sub_1B0E44DC8())
            {
              goto LABEL_45;
            }

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        if (v15 >= v13)
        {
          v14 = v37;
          if (v37 - (v18 | (v56 << 8)) >= v15)
          {
            v48 = v9;
            v49 = v13;
            v50 = v15;
            v51 = v37;
            v52 = v56;
            v53 = v18;
            v54 = v13;
            v55 = v15;

            v24 = sub_1B0DFD5B4(&v48, v11, v10);
            sub_1B04394F4(&v48);
            if (v24)
            {
              sub_1B0D3EA30();
              swift_allocError();
            }

            else
            {
              sub_1B0E46298();

              MEMORY[0x1B2726E80](v11, v10);
              MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
              v40 = v9;
              v41 = v13;
              v42 = v15;
              v43 = v37;
              v44 = v12;
              v45 = v18;
              v46 = v13;
              v47 = v15;
              swift_beginAccess();

              v26 = sub_1B0E44C68();
              v28 = v27;
              sub_1B04394F4(&v40);
              MEMORY[0x1B2726E80](v26, v28);

              sub_1B0436554();
              swift_allocError();
              *v29 = 0x6F74206465697254;
              v29[1] = 0xEF20657372617020;
              v29[2] = 0xD000000000000020;
              v29[3] = 0x80000001B0F2FA10;
              LOWORD(v12) = v56;
              v29[4] = 264;
            }

            swift_willThrow();

            v17 = v36;
            goto LABEL_36;
          }

          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_10:
      if ((v10 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      goto LABEL_13;
    }

    if (a6 + 2 >= a7)
    {
      sub_1B0439BCC();
      v16 = swift_allocError();
      *v25 = v12;

      LOWORD(v12) = v56;
    }

    else
    {
      if (a6 + 3 >= a7)
      {
        sub_1B0439BCC();
        v16 = swift_allocError();
        *v30 = v12;
        swift_retain_n();
      }

      else
      {
        swift_retain_n();
        sub_1B0436204(v7);
        if (!v16)
        {

          goto LABEL_33;
        }
      }

      swift_willThrow();

      *v7 = v9;
      *(v7 + 8) = v17;
      *(v7 + 12) = v15;
      *(v7 + 16) = v14;
      LOWORD(v12) = v56;
      *(v7 + 20) = v56;
      *(v7 + 22) = v18;
    }

    swift_willThrow();
    v31 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

LABEL_36:
      *v7 = v9;
      *(v7 + 8) = v17;
      *(v7 + 12) = v15;
      *(v7 + 16) = v14;
      *(v7 + 20) = v12;
      *(v7 + 22) = v39;
      return swift_willThrow();
    }

LABEL_33:
    v36 = v17;
    v37 = v14;
    if ((v10 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v19 = v12;
  return swift_willThrow();
}

void sub_1B0DFEFA4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v39 = a5;
  if (__OFADD__(a2, 1))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v13 = a3;
    goto LABEL_8;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v7 < v8)
  {
    goto LABEL_39;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  if (v9 - (v11 | (v10 << 8)) < v7)
  {
    goto LABEL_40;
  }

  v19 = v11 | (v10 << 8);
  v12 = *a1;
  v31 = *a1;
  v32 = v8;
  v33 = v7;
  v21 = v10;
  v22 = v9;
  v34 = v9;
  v35 = v10;
  v20 = v11;
  v36 = v11;
  v37 = v8;
  v38 = v7;
  if (v8 == v7)
  {
LABEL_6:
    swift_retain_n();
    sub_1B04394F4(&v31);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v12;
    *(a1 + 8) = v8;
    *(a1 + 12) = v7;
    *(a1 + 16) = v22;
    *(a1 + 20) = v21;
    *(a1 + 22) = v20;
LABEL_8:
    swift_willThrow();
    return;
  }

  v15 = v8;
  while (1)
  {
    if (v15 < v32)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ((v15 - v32) >= v33 - v32)
    {
      goto LABEL_37;
    }

    swift_beginAccess();
    v16 = *(*(v31 + 24) + (v36 | (v35 << 8)) + v15);
    if (*a4 == 1)
    {
      *a4 = 0;
      if (v16 != 34 && v16 != 92)
      {
        break;
      }

      goto LABEL_11;
    }

    v17 = v16 == 10 || v16 == 13;
    if (v17 || (v16 & 0x80) != 0)
    {
      break;
    }

    if (v16 == 92)
    {
      *a4 = 1;
      *v39 = 1;
    }

    else
    {
      if (!*(*(v31 + 24) + (v36 | (v35 << 8)) + v15) || v16 == 34)
      {
        break;
      }

      *a4 = 0;
    }

LABEL_11:
    if (v7 == ++v15)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v31);
  v23 = v12;
  v24 = v8;
  v25 = v7;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v8;
  v30 = v7;

  sub_1B04394F4(&v23);
  v18 = v15 - v29;
  if (__OFSUB__(v15, v29))
  {
    goto LABEL_41;
  }

  if (v7 < v18 || (v7 - v18) < v8)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (__CFADD__(v19, v8))
  {
    goto LABEL_43;
  }

  if ((v19 + v8) >> 24)
  {
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v8, v18, v12);
  }

  else
  {
  }

  if (!__CFADD__(v8, v18))
  {
    *(a1 + 8) = v8 + v18;
    return;
  }

LABEL_44:
  __break(1u);
}

void sub_1B0DFF2E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) < HIDWORD(a2))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v19 = v6;
  v20 = v7;
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = WORD2(a3);
  v16 = BYTE6(a3);
  v17 = a2;
  v18 = HIDWORD(a2);

  sub_1B04407F4(v13);
  if (!v11)
  {
    sub_1B0436554();
    swift_allocError();
    strcpy(v12, "Invalid UTF8");
    v12[13] = 0;
    *(v12 + 7) = -5120;
    *(v12 + 2) = a4;
    *(v12 + 3) = a5;
    *(v12 + 4) = a6;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }
}

uint64_t *sub_1B0DFF3DC(uint64_t *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = result[1];
    v11 = *(result + 4);
    v12 = *(result + 10);
    v13 = *(result + 22);

    sub_1B043DDD8(v8, v5, a3, a4 & 1, &v15);
    if (v4)
    {

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v15;
  }

  return result;
}

void sub_1B0DFF4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v14 = a3;
    goto LABEL_16;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_29;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_30;
  }

  v16 = v9 | (v8 << 8);
  v10 = *a1;
  v27 = *a1;
  v28 = v5;
  v29 = v6;
  v35 = v7;
  v30 = v7;
  v17 = v9;
  v18 = v8;
  v31 = v8;
  v32 = v9;
  v33 = v5;
  v34 = v6;
  if (v5 == v6)
  {
LABEL_14:
    swift_retain_n();
    sub_1B04394F4(&v27);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v35;
    *(a1 + 20) = v18;
    *(a1 + 22) = v17;
LABEL_16:
    swift_willThrow();
    return;
  }

  v11 = v5;
  while (1)
  {
    if (v11 < v28)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ((v11 - v28) >= v29 - v28)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v12 = *(*(v27 + 24) + (v32 | (v31 << 8)) + v11);
    if (v12 == 10 || v12 == 13)
    {
      break;
    }

    if (v6 == ++v11)
    {
      goto LABEL_14;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v27);
  v19 = v10;
  v20 = v5;
  v21 = v6;
  v22 = v35;
  v23 = v18;
  v24 = v17;
  v25 = v5;
  v26 = v6;

  sub_1B04394F4(&v19);
  v15 = v11 - v25;
  if (__OFSUB__(v11, v25))
  {
    goto LABEL_31;
  }

  if (v6 >= v15 && (v6 - v15) >= v5)
  {
    if (__CFADD__(v16, v5))
    {
      goto LABEL_33;
    }

    if ((v16 + v5) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v5, v15, v10);
    }

    else
    {
    }

    if (!__CFADD__(v5, v15))
    {
      *(a1 + 8) = v5 + v15;
      return;
    }

    goto LABEL_34;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1B0DFF7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v11 = a3;
    goto LABEL_8;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v5 < v6)
  {
    goto LABEL_31;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v5)
  {
    goto LABEL_32;
  }

  v17 = v9 | (v8 << 8);
  v10 = *a1;
  v28 = *a1;
  v29 = v6;
  v30 = v5;
  v36 = v7;
  v31 = v7;
  v18 = v9;
  v19 = v8;
  v32 = v8;
  v33 = v9;
  v34 = v6;
  v35 = v5;
  if (v6 == v5)
  {
LABEL_6:
    swift_retain_n();
    sub_1B04394F4(&v28);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v6;
    *(a1 + 12) = v5;
    *(a1 + 16) = v36;
    *(a1 + 20) = v19;
    *(a1 + 22) = v18;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = v6;
  while (1)
  {
    if (v12 < v29)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ((v12 - v29) >= v30 - v29)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    v13 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v12);
    if ((v13 | 4) != 0x2F)
    {
      v14 = isalnum(v13);
      if (v13 != 61 && v14 == 0)
      {
        break;
      }
    }

    if (v5 == ++v12)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v28);
  v20 = v10;
  v21 = v6;
  v22 = v5;
  v23 = v36;
  v24 = v19;
  v25 = v18;
  v26 = v6;
  v27 = v5;

  sub_1B04394F4(&v20);
  v16 = v12 - v26;
  if (__OFSUB__(v12, v26))
  {
    goto LABEL_33;
  }

  if (v5 >= v16 && (v5 - v16) >= v6)
  {
    if (__CFADD__(v17, v6))
    {
      goto LABEL_35;
    }

    if ((v17 + v6) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v16, v10);
    }

    else
    {
    }

    if (!__CFADD__(v6, v16))
    {
      *(a1 + 8) = v6 + v16;
      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1B0DFFABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v10 = a3;
    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_32;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_33;
  }

  v17 = v9 | (v8 << 8);
  v19 = *(a1 + 16);
  v20 = *a1;
  v30 = *a1;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v18 = v8;
  v34 = v8;
  v21 = v9;
  v35 = v9;
  v36 = v5;
  v37 = v6;
  v38 = v5;
  if (v5 == v6)
  {
LABEL_6:
    swift_retain_n();
    sub_1B04394F4(&v30);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v20;
    *(a1 + 8) = v38;
    *(a1 + 12) = v6;
    *(a1 + 16) = v19;
    *(a1 + 20) = v18;
    *(a1 + 22) = v21;
LABEL_8:
    swift_willThrow();
    return;
  }

  v11 = v38;
  while (1)
  {
    if (v11 < v31)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if ((v11 - v31) >= v32 - v31)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v12 = *(*(v30 + 24) + (v35 | (v34 << 8)) + v11);
    if ((v12 - 59) <= 0xFFFFFFF4)
    {
      v13 = (v12 - 45) > 0x32 || ((1 << (v12 - 45)) & 0x4000000000003) == 0;
      if (v13 && (v12 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
      {
        break;
      }
    }

    if (v6 == ++v11)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v30);
  v22 = v20;
  v14 = v38;
  v23 = v38;
  v24 = v6;
  v25 = v19;
  v26 = v18;
  v27 = v21;
  v28 = v38;
  v29 = v6;

  sub_1B04394F4(&v22);
  v15 = v11 - v28;
  if (__OFSUB__(v11, v28))
  {
    goto LABEL_34;
  }

  if (v6 >= v15 && (v6 - v15) >= v14)
  {
    if (__CFADD__(v17, v14))
    {
      goto LABEL_36;
    }

    if ((v17 + v14) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v14, v15, v20);

      v16 = v15;
      LODWORD(v14) = v38;
    }

    else
    {

      v16 = v15;
    }

    if (!__CFADD__(v14, v16))
    {
      *(a1 + 8) = v14 + v16;
      return;
    }

    goto LABEL_37;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1B0DFFDF4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (__OFADD__(a2, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v12 = a3;
    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  if (v8 < v7)
  {
    goto LABEL_31;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  if (v9 - (v11 | (v10 << 8)) < v8)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = v11 | (v10 << 8);
  v20 = *a1;
  v21 = *(a1 + 22);
  v32 = *a1;
  v33 = v7;
  v34 = v8;
  v22 = v10;
  v23 = v9;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = v7;
  v39 = v8;
  v40 = v7;
  if (v7 == v8)
  {
LABEL_6:
    swift_retain_n();
    sub_1B04394F4(&v32);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v20;
    *(a1 + 8) = v40;
    *(a1 + 12) = v8;
    *(a1 + 16) = v23;
    *(a1 + 20) = v22;
    *(a1 + 22) = v21;
LABEL_8:
    swift_willThrow();
    return;
  }

  v15 = v40;
  while (1)
  {
    if (v15 < v33)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ((v15 - v33) >= v34 - v33)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    if (*a4 == 1)
    {
      *a4 = 0;
      goto LABEL_11;
    }

    v16 = *(*(v32 + 24) + (v37 | (v36 << 8)) + v15);
    if (v16 == 92)
    {
      *a4 = 1;
      *a5 = 1;
      goto LABEL_11;
    }

    if (v16 == 34)
    {
      break;
    }

LABEL_11:
    if (v8 == ++v15)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v32);
  v24 = v20;
  v17 = v40;
  v25 = v40;
  v26 = v8;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v40;
  v31 = v8;

  sub_1B04394F4(&v24);
  v18 = v15 - v30;
  if (__OFSUB__(v15, v30))
  {
    goto LABEL_33;
  }

  if (v8 < v18 || (v8 - v18) < v17)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (__CFADD__(v19, v17))
  {
    goto LABEL_35;
  }

  if ((v19 + v17) >> 24)
  {
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v17, v18, v20);

    LODWORD(v17) = v40;
  }

  else
  {
  }

  if (!__CFADD__(v17, v18))
  {
    *(a1 + 8) = v17 + v18;
    return;
  }

LABEL_36:
  __break(1u);
}

void sub_1B0E00124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v11 = a3;
    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_32;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_33;
  }

  v16 = v9 | (v8 << 8);
  v10 = *a1;
  v27 = *a1;
  v28 = v5;
  v29 = v6;
  v35 = v7;
  v30 = v7;
  v17 = v9;
  v18 = v8;
  v31 = v8;
  v32 = v9;
  v33 = v5;
  v34 = v6;
  if (v5 == v6)
  {
LABEL_6:
    swift_retain_n();
    sub_1B04394F4(&v27);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v35;
    *(a1 + 20) = v18;
    *(a1 + 22) = v17;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = v5;
  while (1)
  {
    if (v12 < v28)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if ((v12 - v28) >= v29 - v28)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v13 = *(*(v27 + 24) + (v32 | (v31 << 8)) + v12);
    v14 = v13 > 0x29 || ((1 << v13) & 0x30400000000) == 0;
    if (!v14 || v13 == 123)
    {
      break;
    }

    if (v6 == ++v12)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v27);
  v19 = v10;
  v20 = v5;
  v21 = v6;
  v22 = v35;
  v23 = v18;
  v24 = v17;
  v25 = v5;
  v26 = v6;

  sub_1B04394F4(&v19);
  v15 = v12 - v25;
  if (__OFSUB__(v12, v25))
  {
    goto LABEL_34;
  }

  if (v6 >= v15 && (v6 - v15) >= v5)
  {
    if (__CFADD__(v16, v5))
    {
      goto LABEL_36;
    }

    if ((v16 + v5) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v5, v15, v10);
    }

    else
    {
    }

    if (!__CFADD__(v5, v15))
    {
      *(a1 + 8) = v5 + v15;
      return;
    }

    goto LABEL_37;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1B0E0041C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v6 = *(result + 8);
    v7 = *(result + 12);
    if (v7 >= v6)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v7)
      {
        v15 = v10 | (v9 << 8);
        v3 = *result;
        v26 = *result;
        v27 = v6;
        v28 = v7;
        v34 = v8;
        v29 = v8;
        v16 = v10;
        v17 = v9;
        v30 = v9;
        v31 = v10;
        v32 = v6;
        v33 = v7;
        if (v6 == v7)
        {
LABEL_6:
          swift_retain_n();
          sub_1B04394F4(&v26);
          sub_1B0D3EA30();
          swift_allocError();
          swift_willThrow();

          *v5 = v3;
          *(v5 + 8) = v6;
          *(v5 + 12) = v7;
          *(v5 + 16) = v34;
          *(v5 + 20) = v17;
          *(v5 + 22) = v16;
          goto LABEL_8;
        }

        v12 = v6;
        while (1)
        {
          if (v12 < v27)
          {
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if ((v12 - v27) >= v28 - v27)
          {
            goto LABEL_27;
          }

          swift_beginAccess();
          result = *(*(v26 + 24) + (v31 | (v30 << 8)) + v12);
          if (result != 45 && result != 95)
          {
            result = isalnum(result);
            if (!result)
            {
              break;
            }
          }

          if (v7 == ++v12)
          {
            goto LABEL_6;
          }
        }

        swift_retain_n();
        sub_1B04394F4(&v26);
        v18 = v3;
        v19 = v6;
        v20 = v7;
        v21 = v34;
        v22 = v17;
        v23 = v16;
        v24 = v6;
        v25 = v7;

        result = sub_1B04394F4(&v18);
        v13 = v12 - v24;
        if (__OFSUB__(v12, v24))
        {
          goto LABEL_31;
        }

        if (v7 >= v13 && (v7 - v13) >= v6)
        {
          if (__CFADD__(v15, v6))
          {
            goto LABEL_33;
          }

          if ((v15 + v6) >> 24)
          {
            v14 = v12 - v24;
            v13 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v13, v3);

            v3 = v13;
            LODWORD(v13) = v14;
          }

          else
          {
          }

          if (!__CFADD__(v6, v13))
          {
            *(v5 + 8) = v6 + v13;
            return v3;
          }

          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}

void sub_1B0E00714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v11 = a3;
    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_33;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_34;
  }

  v17 = v9 | (v8 << 8);
  v10 = *a1;
  v28 = *a1;
  v29 = v5;
  v30 = v6;
  v36 = v7;
  v31 = v7;
  v18 = v9;
  v19 = v8;
  v32 = v8;
  v33 = v9;
  v34 = v5;
  v35 = v6;
  if (v5 == v6)
  {
LABEL_6:
    swift_retain_n();
    sub_1B04394F4(&v28);
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v36;
    *(a1 + 20) = v19;
    *(a1 + 22) = v18;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = v5;
  while (1)
  {
    if (v12 < v29)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if ((v12 - v29) >= v30 - v29)
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v13 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v12);
    v14 = v13 == 10 || v13 == 13;
    if (v14 || v13 < 1)
    {
      break;
    }

    if (v6 == ++v12)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1B04394F4(&v28);
  v20 = v10;
  v21 = v5;
  v22 = v6;
  v23 = v36;
  v24 = v19;
  v25 = v18;
  v26 = v5;
  v27 = v6;

  sub_1B04394F4(&v20);
  v16 = v12 - v26;
  if (__OFSUB__(v12, v26))
  {
    goto LABEL_35;
  }

  if (v6 >= v16 && (v6 - v16) >= v5)
  {
    if (__CFADD__(v17, v5))
    {
      goto LABEL_37;
    }

    if ((v17 + v5) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v5, v16, v10);
    }

    else
    {
    }

    if (!__CFADD__(v5, v16))
    {
      *(a1 + 8) = v5 + v16;
      return;
    }

    goto LABEL_38;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

char *sub_1B0E00A08(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *(result + 1);
    v20 = *(result + 10);
    v21 = *(result + 4);
    v19 = result[22];
    v22 = *result;

    sub_1B0DB89A0(v11, a4, a5, a6, a7, a8, &v23, a9);
    if (v9)
    {

      *v11 = v22;
      *(v11 + 1) = v12;
      *(v11 + 4) = v21;
      *(v11 + 10) = v20;
      v11[22] = v19;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

void sub_1B0E00B4C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B0E00A08(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

uint64_t *sub_1B0E00C00(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = v9;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 3);
      v13 = *(result + 4);
      v22 = *(result + 10);
      v23 = *(result + 2);
      v14 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v17 = v9;
      }

      else
      {

        sub_1B0436204(v10);
        if (!v7)
        {
          sub_1B0D9784C(v10, v8, v9, a4, a5, a6, a7);
          v9 = v18;

          return v9;
        }

        *v10 = v11;
        *(v10 + 8) = v23;
        *(v10 + 12) = v12;
        *(v10 + 16) = v13;
        *(v10 + 20) = v22;
        *(v10 + 22) = v14;
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v23;
      *(v10 + 12) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v22;
      *(v10 + 22) = v14;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

void sub_1B0E00DA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0E00C00(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

char *sub_1B0E00E54(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v14 = result;
    v15 = *result;
    v16 = *(result + 1);
    v17 = *(result + 4);
    v19 = result[22];
    v20 = *(result + 10);
    v21 = MEMORY[0x1E69E7CC0];

    sub_1B0DC024C(&v21, v14, v8, a3, a4, a5, a6, a7);
    if (v7)
    {

      *v14 = v15;
      *(v14 + 1) = v16;
      *(v14 + 4) = v17;
      *(v14 + 10) = v20;
      v14[22] = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

void sub_1B0E0106C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v14 = *a1;
      v15 = a1[1];
      v23 = *(a1 + 10);
      v24 = *(a1 + 4);
      v22 = *(a1 + 22);

      a8(a1, v9, a3, a4, a5, a6, a7);
      v19 = v8;
      if (!v8)
      {

        return;
      }

      *a1 = v14;
      a1[1] = v15;
      *(a1 + 4) = v24;
      *(a1 + 10) = v23;
      *(a1 + 22) = v22;
    }

    swift_willThrow();

    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

uint64_t sub_1B0E01250(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);

      sub_1B0DFE880(0x3CuLL, 0xE100000000000000, 0, 0, v7, v5, a3);
      if (!v3)
      {
        v13 = sub_1B0DFF3DC(v7, v5, a3, 1);
        v4 = v13;
        if ((v13 & 0x8000000000000000) == 0)
        {
          sub_1B0DFE880(0x3EuLL, 0xE100000000000000, 0, 0, v7, v5, a3);

          return v4;
        }

        sub_1B0436554();
        swift_allocError();
        *v15 = 0xD000000000000011;
        v15[1] = 0x80000001B0F2FEE0;
        v15[2] = 0xD000000000000020;
        v15[3] = 0x80000001B0F2FA10;
        v15[4] = 202;
        swift_willThrow();
      }

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E01410(uint64_t result, uint64_t a2, int64_t a3, unint64_t a4)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = a3;
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = v6;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);

      sub_1B0DFE880(a4, 0xE100000000000000, 0, 0, v8, v5, v6);
      if (!v4)
      {
        v14 = sub_1B0DFF3DC(v8, v5, v6, 1);
        v6 = v14;
        if ((v14 & 0x8000000000000000) == 0)
        {

          return v6;
        }

        v6 = 0x80000001B0F2FEE0;
        sub_1B0436554();
        swift_allocError();
        *v16 = 0xD000000000000011;
        v16[1] = 0x80000001B0F2FEE0;
        v16[2] = 0xD000000000000020;
        v16[3] = 0x80000001B0F2FA10;
        v16[4] = 202;
        swift_willThrow();
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
    }

    swift_willThrow();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0E015A0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = a3;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = v10;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = *(result + 2);
      v14 = *(result + 3);
      v15 = *(result + 4);
      v16 = *(result + 10);
      v25 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v19 = v10;

        v17 = v25;
      }

      else
      {

        sub_1B0436204(v11);
        if (!v8)
        {
          v10 = a8(v11, v9, v10, a4, a5, a6, a7);

          return v10;
        }

        *v11 = v12;
        *(v11 + 8) = v13;
        *(v11 + 12) = v14;
        *(v11 + 16) = v15;
        *(v11 + 20) = v16;
        v17 = v25;
        *(v11 + 22) = v25;
      }

      swift_willThrow();

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 12) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0E01764(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v21 = *(result + 10);
    v22 = *(result + 4);
    v20 = *(result + 22);

    a8(&v23, v12, v9, a3, a4, a5, a6, a7);
    if (v8)
    {

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v22;
      *(v12 + 20) = v21;
      *(v12 + 22) = v20;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

uint64_t *sub_1B0E018A0(uint64_t *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v11 = result;
      v8 = a7;
      v15 = *result;
      v16 = result[1];
      v19 = *(result + 10);
      v20 = *(result + 4);
      v18 = *(result + 22);

      sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, v11, v9, a3);
      if (!v7)
      {
        v8 = sub_1B043F064(v11, v9, a3, a4, a5, a6, v8);
        sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, v11, v9, a3);

        return v8;
      }

      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v20;
      *(v11 + 20) = v19;
      *(v11 + 22) = v18;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0E01A30(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v21 = *(result + 10);
    v22 = *(result + 4);
    v20 = *(result + 22);

    a8(&v23, v12, v9, a3, a4, a5, a6, a7);
    if (v8)
    {

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v22;
      *(v12 + 20) = v21;
      *(v12 + 22) = v20;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

void sub_1B0E01B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v21 = *(a1 + 22);
      v22 = *(a1 + 20);

      sub_1B0DBCD8C(a1, v8, a3, a4, a5, a6, a7);
      v18 = v7;
      if (!v7)
      {

        return;
      }

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 20) = v22;
      *(a1 + 22) = v21;
    }

    swift_willThrow();

    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

uint64_t *sub_1B0E01D60(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = result[1];
      v21 = *(result + 10);
      v22 = *(result + 4);
      v13 = *(result + 22);

      v18 = sub_1B0DBB5F8(v10, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        v20 = v18;
        sub_1B0DFE880(0x40uLL, 0xE100000000000000, 0, 0, v10, v8, a3);

        return v20;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v22;
      *(v10 + 20) = v21;
      *(v10 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0E01EE0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v10 = a4;
  if (v12 < a4)
  {
    v7 = a1;
    v43 = a2;
    v13 = *a1;
    v11 = a1[1];
    v14 = *(a1 + 4);
    v44 = *(a1 + 22);
    v45 = *(a1 + 10);

    v15 = sub_1B0DB7AD0(v7, v12, v10);
    v8 = v6;
    if (v6)
    {
LABEL_53:

      *v7 = v13;
      *(v7 + 8) = v11;
      *(v7 + 16) = v14;
      *(v7 + 20) = v45;
      *(v7 + 22) = v44;
      return swift_willThrow();
    }

    v50 = v15;
    v9 = v43;
    v51 = *v43;
    v42 = v13;
    v41 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v16 = v10;
      v17 = v50;
      v19 = v51[2];
      v18 = v51[3];
      if (v19 >= v18 >> 1)
      {
        v51 = sub_1B0DF6030((v18 > 1), v19 + 1, 1, v51);
        v17 = v50;
      }

      v51[2] = v19 + 1;
      v51[v19 + 4] = v17;
      if (v12 + 1 < v16)
      {
        v46 = v12 + 3;
        v47 = v12 + 2;
        while (1)
        {
          v12 = *v7;
          v10 = *(v7 + 8);
          LODWORD(v50) = *(v7 + 12);
          v9 = *(v7 + 16);
          v49 = *(v7 + 20);
          v48 = *(v7 + 22);
          if (v47 < v16)
          {
            break;
          }

          sub_1B0439BCC();
          v8 = swift_allocError();
          *v21 = v16;

LABEL_24:
          swift_willThrow();
          v54 = v8;
          v26 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            v8 = v52;
          }

          else
          {

            v54 = v8;
            v27 = v8;
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_49;
            }

            v8 = v52;
          }

          if (v47 >= v16)
          {
            sub_1B0439BCC();
            v8 = swift_allocError();
            *v36 = v16;
            goto LABEL_48;
          }

          if (v50 == v10)
          {
            sub_1B0D3EA30();
            v8 = swift_allocError();
            LODWORD(v50) = v10;
            goto LABEL_47;
          }

          swift_beginAccess();
          if (v10 == -1)
          {
            __break(1u);
            goto LABEL_56;
          }

          v28 = *(*(v12 + 24) + (v48 | (v49 << 8)) + v10);
          *(v7 + 8) = v10 + 1;
          if ((v28 - 47) > 0x11 || ((1 << (v28 - 47)) & 0x20801) == 0)
          {
            sub_1B0E46298();

            v37 = sub_1B0E469C8();
            MEMORY[0x1B2726E80](v37);

            sub_1B0436554();
            v8 = swift_allocError();
            *v38 = 0xD000000000000012;
            v38[1] = 0x80000001B0F30350;
            v38[2] = 0xD000000000000020;
            v38[3] = 0x80000001B0F2FA10;
            v38[4] = 1312;
LABEL_47:
            swift_willThrow();
LABEL_48:
            swift_willThrow();
LABEL_49:

            *v43 = v51;
            *v7 = v12;
            *(v7 + 8) = v10;
            *(v7 + 12) = v50;
            *(v7 + 16) = v9;
            *(v7 + 20) = v49;
            *(v7 + 22) = v48;
            goto LABEL_50;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1B0EC1E70;
          *(v33 + 32) = v28;

          v8 = 0;
LABEL_36:

          v31 = v51[2];
          v30 = v51[3];
          if (v31 >= v30 >> 1)
          {
            v51 = sub_1B0DF6030((v30 > 1), v31 + 1, 1, v51);
          }

          v51[2] = v31 + 1;
          v51[v31 + 4] = v33;
        }

        if (v46 >= v16)
        {
          sub_1B0439BCC();
          v8 = swift_allocError();
          *v22 = v16;
          swift_retain_n();
          swift_retain_n();
        }

        else
        {
          swift_retain_n();
          swift_retain_n();
          sub_1B0DBBBD0(v7, v46, v16);
          if (!v8)
          {
            v33 = v20;

            goto LABEL_40;
          }

          *v7 = v12;
          *(v7 + 8) = v10;
          *(v7 + 12) = v50;
          *(v7 + 16) = v9;
          *(v7 + 20) = v49;
          *(v7 + 22) = v48;
        }

        swift_willThrow();
        v53 = v8;
        v23 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {
        }

        else
        {

          v53 = v8;
          v24 = v8;
          if ((swift_dynamicCast() & 1) == 0)
          {

LABEL_23:

            *v7 = v12;
            *(v7 + 8) = v10;
            *(v7 + 12) = v50;
            *(v7 + 16) = v9;
            *(v7 + 20) = v49;
            *(v7 + 22) = v48;
            goto LABEL_24;
          }
        }

        if (v46 < v16)
        {
          sub_1B0DBCC38(v7);
          v8 = 0;
          v33 = v32;
LABEL_40:

          goto LABEL_36;
        }

        sub_1B0439BCC();
        v8 = swift_allocError();
        *v25 = v16;
        swift_willThrow();
        goto LABEL_23;
      }

      *v9 = v51;
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v35 = v16;
LABEL_50:
      v13 = v42;
      v14 = v41;
      swift_willThrow();
      v39 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      goto LABEL_53;
    }

LABEL_57:
    v51 = sub_1B0DF6030(0, v51[2] + 1, 1, v51);
    goto LABEL_5;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v34 = v10;
  return swift_willThrow();
}

void sub_1B0E02728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a8(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E027D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v16 = swift_allocError();
      *v17 = a3;
    }

    else
    {
      v11 = *a1;
      v12 = *(a1 + 12);
      v24 = *(a1 + 8);
      v13 = *(a1 + 16);
      v14 = *(a1 + 20);
      v15 = *(a1 + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v16 = swift_allocError();
        *v18 = a3;
      }

      else
      {

        sub_1B0436204(a1);
        v16 = v7;
        if (!v7)
        {
          sub_1B0D95138(a1, v8, a3, a4, a5, a6, a7);

          sub_1B0E00DA0(a1, v8, a3, a4, a5, a6, a7);

          return;
        }

        *a1 = v11;
        *(a1 + 8) = v24;
        *(a1 + 12) = v12;
        *(a1 + 16) = v13;
        *(a1 + 20) = v14;
        *(a1 + 22) = v15;
      }

      swift_willThrow();

      *a1 = v11;
      *(a1 + 8) = v24;
      *(a1 + 12) = v12;
      *(a1 + 16) = v13;
      *(a1 + 20) = v14;
      *(a1 + 22) = v15;
    }

    swift_willThrow();
    v19 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E02A4C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 20);
      v11 = *(a1 + 22);

      sub_1B0DFE880(0x3DuLL, 0xE100000000000000, 0, 0, a1, v4, a3);
      v12 = v3;
      if (!v3)
      {
        sub_1B0DC0A98(a1, v4, a3);

        return;
      }

      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 20) = v10;
      *(a1 + 22) = v11;
    }

    swift_willThrow();
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E02C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a9(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E02CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v21 = *(a1 + 22);
      v22 = *(a1 + 20);

      sub_1B0DB4FF8(a1, v8, a3, a4, a5, a6, a7);
      v18 = v7;
      if (!v7)
      {

        return;
      }

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 20) = v22;
      *(a1 + 22) = v21;
    }

    swift_willThrow();

    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E02E8C(uint64_t a1, uint64_t a2, int64_t a3)
{
  sub_1B0E01250(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E02F64(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  sub_1B0E01410(a1, a2, a3, a4);
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E0303C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      v14 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 4);
      v12 = *(a1 + 10);
      v13 = *(a1 + 22);

      a4(a1, v5, a3);
      v14 = v4;
      if (!v4)
      {

        return;
      }

      *a1 = v9;
      a1[1] = v10;
      *(a1 + 4) = v11;
      *(a1 + 10) = v12;
      *(a1 + 22) = v13;
    }

    swift_willThrow();
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E0326C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1B0E01764(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E03320(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = *(a1 + 4);
      v21 = *(a1 + 22);
      v22 = *(a1 + 10);

      sub_1B0DB5B34(a1, v8, a3, a4, a5, a6, a7);
      v18 = v7;
      if (!v7)
      {

        return;
      }

      *a1 = v12;
      a1[1] = v13;
      *(a1 + 4) = v14;
      *(a1 + 10) = v22;
      *(a1 + 22) = v21;
    }

    swift_willThrow();

    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E034F8(uint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0E018A0(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E035EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0E01D60(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E036A4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v13 = a3;
    }

    else
    {
      v10 = *a1;
      v11 = a1[1];
      v21 = *(a1 + 10);
      v22 = *(a1 + 4);
      v20 = *(a1 + 22);

      sub_1B0DAFDD8(a1, v6, a3, v23);
      v12 = v5;
      if (!v5)
      {
        v15 = v23[0];
        v16 = v23[1];
        v17 = v23[2];
        v18 = v23[3];
        v19 = v24;

LABEL_10:
        *a5 = v15;
        *(a5 + 8) = v16;
        *(a5 + 16) = v17;
        *(a5 + 24) = v18;
        *(a5 + 32) = v19;
        return;
      }

      *a1 = v10;
      a1[1] = v11;
      *(a1 + 4) = v22;
      *(a1 + 10) = v21;
      *(a1 + 22) = v20;
    }

    swift_willThrow();

    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1B0E03894(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v18 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v22 = *(a1 + 22);

      sub_1B0DFE880(0x3FuLL, 0xE100000000000000, 0, 0, a1, v8, a3);
      v17 = v7;
      if (!v7)
      {
        sub_1B0DB7D44(a1, v8, a3, a4, a5, a6, a7);

        return;
      }

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v22;
    }

    swift_willThrow();
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E03A64(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 20);
      v11 = *(a1 + 22);

      sub_1B0DFE880(0x494C41564449553BuLL, 0xED00003D59544944, 0, 0, a1, v4, a3);
      v12 = v3;
      if (!v3)
      {
        sub_1B0DB39E8(a1, v4, a3);

        return;
      }

      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 20) = v10;
      *(a1 + 22) = v11;
    }

    swift_willThrow();
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E03C58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v14 = *a1;
      v15 = a1[1];
      v23 = *(a1 + 10);
      v24 = *(a1 + 4);
      v22 = *(a1 + 22);

      a8(a1, v9, a3, a4, a5, a6, a7);
      v19 = v8;
      if (!v8)
      {

        return;
      }

      *a1 = v14;
      a1[1] = v15;
      *(a1 + 4) = v24;
      *(a1 + 10) = v23;
      *(a1 + 22) = v22;
    }

    swift_willThrow();

    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E03E8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v14 = *a1;
      v15 = a1[1];
      v23 = *(a1 + 10);
      v24 = *(a1 + 4);
      v22 = *(a1 + 22);

      a8(a1, v9, a3, a4, a5, a6, a7);
      v19 = v8;
      if (!v8)
      {

        return;
      }

      *a1 = v14;
      a1[1] = v15;
      *(a1 + 4) = v24;
      *(a1 + 10) = v23;
      *(a1 + 22) = v22;
    }

    swift_willThrow();

    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E040A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v14 = *a1;
      v15 = a1[1];
      v23 = *(a1 + 10);
      v24 = *(a1 + 4);
      v22 = *(a1 + 22);

      a8(a1, v9, a3, a4, a5, a6, a7);
      v19 = v8;
      if (!v8)
      {

        return;
      }

      *a1 = v14;
      a1[1] = v15;
      *(a1 + 4) = v24;
      *(a1 + 10) = v23;
      *(a1 + 22) = v22;
    }

    swift_willThrow();

    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E04278(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v18 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v22 = *(a1 + 22);

      sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, v8, a3);
      v17 = v7;
      if (!v7)
      {
        sub_1B0DBFC6C(a1, v8, a3, a4, a5, a6, a7);

        return;
      }

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v22;
    }

    swift_willThrow();
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }
  }
}

void sub_1B0E04448(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1B0E447F8();
  if ((v9 & 0x100) != 0)
  {
    goto LABEL_15;
  }

  if (__OFADD__(a5, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (a5 + 1 < a6)
  {
    v10 = *a4;
    v11 = *(a4 + 2);
    v12 = *(a4 + 10);
    v13 = *(a4 + 22);
    v21 = *(a4 + 12);
    if (v21 == v11)
    {
      sub_1B0D3EA30();
      swift_allocError();
LABEL_10:
      swift_willThrow();
      *a4 = v10;
      *(a4 + 2) = v11;
      *(a4 + 12) = v21;
      *(a4 + 10) = v12;
      *(a4 + 22) = v13;
      goto LABEL_11;
    }

    v15 = v9;
    swift_beginAccess();
    if (v11 != -1)
    {
      v16 = *(*(v10 + 24) + (v13 | (v12 << 8)) + v11);
      *(a4 + 2) = v11 + 1;
      if (v16 == v15)
      {
        return;
      }

      sub_1B0E46298();

      strcpy(v22, "looking for ");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      v17 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v17);

      MEMORY[0x1B2726E80](0x20646E756F6620, 0xE700000000000000);
      v23 = v16;
      v18 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v18);

      v19 = v22[1];
      sub_1B0436554();
      swift_allocError();
      *v20 = v22[0];
      v20[1] = v19;
      v20[2] = 0xD000000000000020;
      v20[3] = 0x80000001B0F2FA10;
      v20[4] = 295;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v14 = a6;
LABEL_11:
  swift_willThrow();
}

uint64_t sub_1B0E0469C(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_25:
    v12 = sub_1B0DF5930(0, *(v12 + 2) + 1, 1, v12);
    goto LABEL_12;
  }

  v11 = a4;
  if (v14 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v24 = v11;
    return swift_willThrow();
  }

  v8 = a1;
  v15 = *a1;
  v13 = a1[1];
  v16 = *(a1 + 4);
  v17 = *(a1 + 10);
  v18 = *(a1 + 22);
  if (a3 + 2 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v25 = v11;

    goto LABEL_8;
  }

  v48 = *(a1 + 10);
  v49 = *(a1 + 4);
  v47 = *(a1 + 22);
  v46 = a2;
  swift_retain_n();
  sub_1B0D9BC14(v8, v14 + 1, v11, a5, a6, a7, a8, v65);
  v23 = a8;
  v10 = v9;
  if (v9)
  {

    v18 = v47;
    v17 = v48;
    v16 = v49;
LABEL_8:
    swift_willThrow();

LABEL_9:
    *v8 = v15;
    *(v8 + 8) = v13;
    *(v8 + 16) = v16;
    *(v8 + 20) = v17;
    *(v8 + 22) = v18;
    return swift_willThrow();
  }

  v50 = a5;
  v51 = a6;
  v52 = a7;
  v67 = v23;
  v45 = v15;

  v62 = v65[2];
  v63 = v65[3];
  v64[0] = v66[0];
  *(v64 + 15) = *(v66 + 15);
  v60 = v65[0];
  v61 = v65[1];
  v12 = *v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v28 = *(v12 + 2);
  v27 = *(v12 + 3);
  if (v28 >= v27 >> 1)
  {
    v12 = sub_1B0DF5930((v27 > 1), v28 + 1, 1, v12);
  }

  *(v12 + 2) = v28 + 1;
  v29 = &v12[96 * v28];
  v30 = v61;
  *(v29 + 2) = v60;
  *(v29 + 3) = v30;
  v31 = v62;
  v32 = v63;
  v33 = v64[0];
  *(v29 + 111) = *(v64 + 15);
  *(v29 + 5) = v32;
  *(v29 + 6) = v33;
  *(v29 + 4) = v31;
  v34 = v14 + 2;
  v35 = *v8;
  v36 = *(v8 + 8);
  v37 = *(v8 + 16);
  v38 = *(v8 + 20);
  v39 = *(v8 + 22);
  if (v34 >= v11)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v43 = v11;
  }

  else
  {
    while (1)
    {
      swift_retain_n();
      sub_1B0D9BC14(v8, v34, v11, v50, v51, v52, v67, v58);
      if (v10)
      {
        break;
      }

      *&v57[15] = *(v59 + 15);
      v56 = v58[3];
      *v57 = v59[0];
      v54 = v58[1];
      v55 = v58[2];
      *v53 = v58[0];
      v41 = *(v12 + 2);
      v40 = *(v12 + 3);
      if (v41 >= v40 >> 1)
      {
        v12 = sub_1B0DF5930((v40 > 1), v41 + 1, 1, v12);
      }

      *(v12 + 2) = v41 + 1;
      v42 = &v12[96 * v41];
      *(v42 + 2) = *v53;
      *(v42 + 3) = v54;
      *(v42 + 111) = *&v57[15];
      *(v42 + 5) = v56;
      *(v42 + 6) = *v57;
      *(v42 + 4) = v55;
      v35 = *v8;
      v36 = *(v8 + 8);
      v37 = *(v8 + 16);
      v38 = *(v8 + 20);
      v39 = *(v8 + 22);
    }
  }

  swift_willThrow();

  *v8 = v35;
  *(v8 + 8) = v36;
  *(v8 + 16) = v37;
  *(v8 + 20) = v38;
  *(v8 + 22) = v39;
  swift_willThrow();
  v44 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v46 = v12;

    v15 = v45;
    v17 = v48;
    v16 = v49;
    v18 = v47;
    goto LABEL_9;
  }

  *v46 = v12;
  return result;
}

uint64_t sub_1B0E04AE8(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v14 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = a4;
    return swift_willThrow();
  }

  v11 = a1;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v72 = a8;
  v12 = *a1;
  v15 = *(a1 + 3);
  v66 = *(a1 + 2);
  v16 = *(a1 + 4);
  v17 = *(a1 + 10);
  v18 = *(a1 + 22);
  v79 = a4;
  v65 = v18;
  v68 = a3 + 2;
  if (a3 + 2 >= a4)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v22 = a4;

    goto LABEL_8;
  }

  sub_1B0436204(v11);
  if (v10)
  {
    *v11 = v12;
    *(v11 + 8) = v66;
    *(v11 + 12) = v15;
    *(v11 + 16) = v16;
    *(v11 + 20) = v17;
    *(v11 + 22) = v18;
LABEL_8:
    v23 = v72;
    swift_willThrow();

    goto LABEL_9;
  }

  v23 = v72;
LABEL_9:
  sub_1B0D8FADC(v11, v14, v79, v69, v70, v71, v23, v75);
  v8 = 0;
  v61 = v15;
  v13 = a2;
  v9 = *a2;
  v62 = v17;
  v63 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_29:
    v9 = sub_1B0DF5638(0, *(v9 + 2) + 1, 1, v9);
  }

  v25 = *(v9 + 2);
  v24 = *(v9 + 3);
  if (v25 >= v24 >> 1)
  {
    v9 = sub_1B0DF5638((v24 > 1), v25 + 1, 1, v9);
  }

  *(v9 + 2) = v25 + 1;
  v26 = &v9[184 * v25];
  v27 = v75[0];
  v28 = v75[1];
  v29 = v75[3];
  *(v26 + 4) = v75[2];
  *(v26 + 5) = v29;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v30 = v75[4];
  v31 = v75[5];
  v32 = v75[7];
  *(v26 + 8) = v75[6];
  *(v26 + 9) = v32;
  *(v26 + 6) = v30;
  *(v26 + 7) = v31;
  v33 = v75[8];
  v34 = v75[9];
  v35 = v75[10];
  v26[208] = v76;
  *(v26 + 11) = v34;
  *(v26 + 12) = v35;
  *(v26 + 10) = v33;
  v36 = v79;
  if (v68 < v79)
  {
    v37 = v14 + 2;
    for (i = v14 + 2; ; v37 = i)
    {
      v38 = *v11;
      v39 = *(v11 + 8);
      v40 = *(v11 + 12);
      v41 = *(v11 + 16);
      v73 = *(v11 + 20);
      v74 = *(v11 + 22);
      if (v37 >= v36)
      {
        break;
      }

      v42 = v8;
      sub_1B0436204(v11);
      if (v8)
      {
        *v11 = v38;
        *(v11 + 8) = v39;
        *(v11 + 12) = v40;
        *(v11 + 16) = v41;
        *(v11 + 20) = v73;
        *(v11 + 22) = v74;
LABEL_18:
        v44 = v71;
        swift_willThrow();

        goto LABEL_19;
      }

      v44 = v71;
LABEL_19:
      sub_1B0D8FADC(v11, v68, v79, v69, v70, v44, v72, v77);
      v8 = 0;

      v46 = *(v9 + 2);
      v45 = *(v9 + 3);
      if (v46 >= v45 >> 1)
      {
        v9 = sub_1B0DF5638((v45 > 1), v46 + 1, 1, v9);
      }

      *(v9 + 2) = v46 + 1;
      v47 = &v9[184 * v46];
      v48 = v77[0];
      v49 = v77[1];
      v50 = v77[3];
      *(v47 + 4) = v77[2];
      *(v47 + 5) = v50;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v51 = v77[4];
      v52 = v77[5];
      v53 = v77[7];
      *(v47 + 8) = v77[6];
      *(v47 + 9) = v53;
      *(v47 + 6) = v51;
      *(v47 + 7) = v52;
      v54 = v77[8];
      v55 = v77[9];
      v56 = v77[10];
      v47[208] = v78;
      *(v47 + 11) = v55;
      *(v47 + 12) = v56;
      *(v47 + 10) = v54;
      v36 = v79;
    }

    sub_1B0439BCC();
    v42 = swift_allocError();
    *v43 = v36;

    goto LABEL_18;
  }

  sub_1B0439BCC();
  v57 = swift_allocError();
  *v58 = v36;
  swift_willThrow();
  v59 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    *v13 = v9;
    return result;
  }

  *v13 = v9;

  *v11 = v12;
  *(v11 + 8) = v66;
  *(v11 + 12) = v61;
  *(v11 + 16) = v63;
  *(v11 + 20) = v62;
  *(v11 + 22) = v65;
  return swift_willThrow();
}

uint64_t *sub_1B0E04FB8(uint64_t *result, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a4)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v27 = a4;
    }

    else
    {
      v9 = result;
      v10 = *result;
      v11 = result[1];
      v12 = *(result + 4);
      v13 = *(result + 10);
      v14 = a3 + 2;
      v15 = *(result + 22);

      if (v14 >= a4)
      {
        sub_1B0439BCC();
        v5 = swift_allocError();
        *v28 = a4;
      }

      else
      {
        v31 = v13;
        v32 = v12;
        v33 = v10;
        while (1)
        {
          v16 = *v9;
          v17 = *(v9 + 8);
          v18 = *(v9 + 16);
          v19 = *(v9 + 20);
          v20 = *(v9 + 22);
          if (v6 + 2 >= a4)
          {
            sub_1B0439BCC();
            v5 = swift_allocError();
            *v29 = a4;

            goto LABEL_16;
          }

          sub_1B0436204(v9);
          if (v5)
          {
            break;
          }

          sub_1B0DC120C(v9, v6 + 1, a4, &v34);
          v5 = 0;

          v21 = *a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1B0DF5E0C(0, *(v21 + 2) + 1, 1, v21);
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          if (v23 >= v22 >> 1)
          {
            v21 = sub_1B0DF5E0C((v22 > 1), v23 + 1, 1, v21);
          }

          *(v21 + 2) = v23 + 1;
          v24 = &v21[40 * v23];
          v25 = v34;
          v26 = *v35;
          *(v24 + 63) = *&v35[15];
          *(v24 + 2) = v25;
          *(v24 + 3) = v26;
          *a2 = v21;
        }

        *v9 = v16;
        *(v9 + 8) = v17;
        *(v9 + 16) = v18;
        *(v9 + 20) = v19;
        *(v9 + 22) = v20;
LABEL_16:
        swift_willThrow();

        *v9 = v16;
        *(v9 + 8) = v17;
        *(v9 + 16) = v18;
        *(v9 + 20) = v19;
        *(v9 + 22) = v20;
        v10 = v33;
        v13 = v31;
        v12 = v32;
      }

      swift_willThrow();
      v36 = v5;
      v30 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v13;
      *(v9 + 22) = v15;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1B0E052C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A48, &unk_1B0EFA5C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40[-v15];
  v17 = type metadata accessor for SearchReturnData(0);
  v18 = *(v17 - 8);
  v55 = v17;
  v56 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v40[-v21];
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (a3 + 1 < a4)
    {
      v22 = *a1;
      v23 = *(a1 + 8);
      v43 = *(a1 + 16);
      v57 = a3 + 2;
      v42 = *(a1 + 20);
      v24 = a3 + 3;
      v54 = (v56 + 56);
      v52 = (v56 + 48);
      v41 = *(a1 + 22);
      v44 = v22;

      v49 = a2;
      v50 = a4;
      v53 = a3 + 3;
      v51 = v16;
      while (1)
      {
        if (v57 >= a4)
        {
          sub_1B0439BCC();
          v9 = swift_allocError();
          *v31 = a4;
        }

        else
        {
          v25 = *a1;
          v26 = *(a1 + 8);
          v27 = *(a1 + 12);
          v28 = *(a1 + 16);
          v29 = *(a1 + 20);
          v30 = *(a1 + 22);
          if (v24 >= a4)
          {
            sub_1B0439BCC();
            v9 = swift_allocError();
            *v32 = a4;
          }

          else
          {

            sub_1B0436204(a1);
            if (!v9)
            {
              sub_1B0DB1210(a1, v57, a4, v45, v46, v47, v48);
              v9 = 0;

              v16 = v51;
              (*v54)(v51, 0, 1, v55);
              a2 = v49;
              a4 = v50;
              goto LABEL_14;
            }

            *a1 = v25;
            *(a1 + 8) = v26;
            *(a1 + 12) = v27;
            *(a1 + 16) = v28;
            *(a1 + 20) = v29;
            *(a1 + 22) = v30;
          }

          swift_willThrow();

          *a1 = v25;
          *(a1 + 8) = v26;
          *(a1 + 12) = v27;
          *(a1 + 16) = v28;
          *(a1 + 20) = v29;
          *(a1 + 22) = v30;
          a2 = v49;
          a4 = v50;
          v16 = v51;
        }

        swift_willThrow();
        v60[0] = v9;
        v33 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (!swift_dynamicCast())
        {

          *a1 = v44;
          *(a1 + 8) = v23;
          *(a1 + 16) = v43;
          *(a1 + 20) = v42;
          *(a1 + 22) = v41;
          goto LABEL_22;
        }

        v34 = v55;
        (*v54)(v16, 1, 1, v55);

        if ((*v52)(v16, 1, v34) == 1)
        {
          sub_1B0398EFC(v16, &qword_1EB6E7A48, &unk_1B0EFA5C0);

          return;
        }

        v9 = 0;
LABEL_14:
        v35 = v58;
        sub_1B0E0857C(v16, v58, type metadata accessor for SearchReturnData);
        sub_1B0E085E4(v35, v59, type metadata accessor for SearchReturnData);
        v36 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1B0DF6188(0, v36[2] + 1, 1, v36);
        }

        v38 = v36[2];
        v37 = v36[3];
        if (v38 >= v37 >> 1)
        {
          v36 = sub_1B0DF6188((v37 > 1), v38 + 1, 1, v36);
        }

        sub_1B0E0864C(v58, type metadata accessor for SearchReturnData);
        v36[2] = v38 + 1;
        sub_1B0E0857C(v59, v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v38, type metadata accessor for SearchReturnData);
        *a2 = v36;
        v24 = v53;
      }
    }

    sub_1B0439BCC();
    swift_allocError();
    *v39 = a4;
LABEL_22:
    swift_willThrow();
  }
}

uint64_t sub_1B0E0581C(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v8 = a4;
  if (v16 < a4)
  {
    v10 = a1;
    v49 = a2;
    v13 = *a1;
    v15 = a1[1];
    v50 = *(a1 + 10);
    v51 = *(a1 + 4);
    v19 = *(a1 + 22);

    sub_1B0DBDCD4(v10, v16, v8, a5, a6, a7, a8, v60);
    v22 = a7;
    v11 = v9;
    if (v9)
    {
LABEL_24:

      *v10 = v13;
      *(v10 + 8) = v15;
      *(v10 + 16) = v51;
      *(v10 + 20) = v50;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    v52 = a5;
    v53 = a6;
    v54 = v22;
    v61 = a8;
    v12 = v49;
    v14 = *v49;
    v47 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v14;
LABEL_6:
      v24 = v8;
      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1B0DF62BC((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v27 = &v23[64 * v26];
      v28 = v60[0];
      v29 = v60[1];
      v30 = v60[3];
      *(v27 + 4) = v60[2];
      *(v27 + 5) = v30;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v48 = v23;
      if (v16 + 1 >= v24)
      {
        sub_1B0439BCC();
        v11 = swift_allocError();
        *v42 = v24;
      }

      else
      {
        v46 = v13;
        v31 = v16 + 2;
        v32 = *v10;
        v33 = *(v10 + 8);
        v34 = *(v10 + 16);
        v35 = *(v10 + 20);
        v36 = *(v10 + 22);
        if (v31 >= v24)
        {
LABEL_18:
          sub_1B0439BCC();
          v11 = swift_allocError();
          *v43 = v24;
        }

        else
        {
          v37 = v23;
          while (1)
          {
            swift_retain_n();
            sub_1B0DBDFC0(v10, v31, v24, v52, v53, v54, v61, v59);
            if (v11)
            {
              break;
            }

            v57 = v59[2];
            v58 = v59[3];
            *v55 = v59[0];
            v56 = v59[1];
            v39 = *(v37 + 2);
            v38 = *(v37 + 3);
            if (v39 >= v38 >> 1)
            {
              v37 = sub_1B0DF62BC((v38 > 1), v39 + 1, 1, v37);
            }

            *(v37 + 2) = v39 + 1;
            v40 = &v37[64 * v39];
            *(v40 + 4) = v57;
            *(v40 + 5) = v58;
            *(v40 + 2) = *v55;
            *(v40 + 3) = v56;
            v32 = *v10;
            v33 = *(v10 + 8);
            v34 = *(v10 + 16);
            v35 = *(v10 + 20);
            v36 = *(v10 + 22);
            if (v31 >= v24)
            {
              goto LABEL_18;
            }
          }

          v48 = v37;
        }

        swift_willThrow();

        *v10 = v32;
        *(v10 + 8) = v33;
        *(v10 + 16) = v34;
        *(v10 + 20) = v35;
        *(v10 + 22) = v36;
        v12 = v49;
        v13 = v46;
      }

      v19 = v47;
      swift_willThrow();
      v44 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        *v12 = v48;
        return result;
      }

      *v12 = v48;

      goto LABEL_24;
    }

LABEL_27:
    v23 = sub_1B0DF62BC(0, *(v14 + 2) + 1, 1, v14);
    goto LABEL_6;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v41 = v8;
  return swift_willThrow();
}

uint64_t sub_1B0E05BF8(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_25:
    v53 = sub_1B0DF57A0(0, *(v53 + 2) + 1, 1, v53);
    goto LABEL_12;
  }

  v11 = a4;
  if (v15 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v20 = v11;
    return swift_willThrow();
  }

  v8 = a1;
  v16 = *a1;
  v17 = *(a1 + 2);
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  v12 = a3 + 2;
  v61 = *(a1 + 22);
  v62 = *(a1 + 10);
  v59 = v19;
  v60 = v18;
  if (a3 + 2 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = v11;

    goto LABEL_8;
  }

  v56 = a5;
  v57 = a6;
  v55 = a7;
  v58 = a8;
  v52 = a2;

  sub_1B0436204(v8);
  if (v9)
  {
    *v8 = v16;
    *(v8 + 8) = v17;
    *(v8 + 12) = v18;
    *(v8 + 16) = v19;
    *(v8 + 20) = v62;
    *(v8 + 22) = v61;
LABEL_8:
    swift_willThrow();
LABEL_9:

    *v8 = v16;
    *(v8 + 8) = v17;
    *(v8 + 12) = v60;
    *(v8 + 16) = v59;
    *(v8 + 20) = v62;
    *(v8 + 22) = v61;
    return swift_willThrow();
  }

  v23 = sub_1B0DB3AC0(v8, v15, v11, v56, v57, v55, v58);
  v10 = 0;
  v14 = v24;
  v13 = v25;
  v49 = HIDWORD(v24);
  v50 = v23;
  v53 = *v52;
  v47 = v16;
  v46 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v26 = v53;
  v28 = *(v53 + 2);
  v27 = *(v53 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1B0DF57A0((v27 > 1), v28 + 1, 1, v53);
  }

  *(v26 + 2) = v28 + 1;
  v54 = v26;
  v29 = &v26[24 * v28];
  *(v29 + 4) = v50;
  *(v29 + 10) = v14;
  *(v29 + 11) = v49;
  *(v29 + 12) = v13;
  *(v29 + 26) = WORD2(v13);
  v29[54] = BYTE6(v13);
  v30 = v15 + 2;
  v31 = *(v8 + 8);
  v32 = *(v8 + 16);
  v33 = *(v8 + 20);
  v51 = *(v8 + 22);
  v48 = *v8;
  if (v30 >= v11)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v43 = v11;

    v16 = v47;
    v17 = v46;
    v44 = v51;
  }

  else
  {

    sub_1B0436204(v8);
    v16 = v47;
    v17 = v46;
    if (!v10)
    {
      while (1)
      {
        v34 = sub_1B0DB3AC0(v8, v12, v11, v56, v57, v55, v58);
        v36 = v35;
        v38 = v37;

        v39 = v54;
        v41 = *(v54 + 2);
        v40 = *(v54 + 3);
        if (v41 >= v40 >> 1)
        {
          v39 = sub_1B0DF57A0((v40 > 1), v41 + 1, 1, v54);
        }

        *(v39 + 2) = v41 + 1;
        v54 = v39;
        v42 = &v39[24 * v41];
        *(v42 + 4) = v34;
        *(v42 + 5) = v36;
        *(v42 + 12) = v38;
        *(v42 + 26) = WORD2(v38);
        v42[54] = BYTE6(v38);

        sub_1B0436204(v8);
      }
    }

    *v8 = v48;
    *(v8 + 8) = v31;
    *(v8 + 16) = v32;
    *(v8 + 20) = v33;
    v44 = v51;
    *(v8 + 22) = v51;
  }

  swift_willThrow();
  *v52 = v54;

  *v8 = v48;
  *(v8 + 8) = v31;
  *(v8 + 16) = v32;
  *(v8 + 20) = v33;
  *(v8 + 22) = v44;
  swift_willThrow();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }
}

uint64_t sub_1B0E060B0(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_26:
    v50 = sub_1B0DF5A98(0, *(v50 + 2) + 1, 1, v50);
    goto LABEL_12;
  }

  v13 = a4;
  if (v16 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v20 = v13;
    return swift_willThrow();
  }

  v9 = a1;
  v8 = *a1;
  v17 = *(a1 + 2);
  v15 = *(a1 + 4);
  v56 = *(a1 + 10);
  v57 = *(a1 + 3);
  v14 = a3 + 2;
  v12 = *(a1 + 22);
  if (a3 + 2 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = v13;

    v19 = v56;
    v18 = v57;
    goto LABEL_8;
  }

  v53 = a5;
  v54 = a6;
  v52 = a7;
  v55 = a8;
  v49 = a2;

  sub_1B0436204(v9);
  if (v10)
  {
    *v9 = v8;
    v19 = v56;
    v18 = v57;
    *(v9 + 8) = v17;
    *(v9 + 12) = v57;
    *(v9 + 16) = v15;
    *(v9 + 20) = v56;
    *(v9 + 22) = v12;
LABEL_8:
    swift_willThrow();
LABEL_9:

    *v9 = v8;
    *(v9 + 8) = v17;
    *(v9 + 12) = v18;
    *(v9 + 16) = v15;
    *(v9 + 20) = v19;
    *(v9 + 22) = v12;
    return swift_willThrow();
  }

  sub_1B0DB58A8(v9, v16, v13, v53, v54, v52, v55, &v58);
  v11 = 0;
  v50 = *v49;
  v47 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v23 = v50;
  v25 = *(v50 + 2);
  v24 = *(v50 + 3);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v44 = sub_1B0DF5A98((v24 > 1), v25 + 1, 1, v50);
    v26 = v25 + 1;
    v23 = v44;
  }

  *(v23 + 2) = v26;
  v51 = v23;
  v27 = &v23[48 * v25];
  v28 = v58;
  v29 = v59[0];
  *(v27 + 63) = *(v59 + 15);
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v30 = v16 + 2;
  v31 = *v9;
  v32 = *(v9 + 8);
  v45 = *(v9 + 20);
  v46 = *(v9 + 16);
  v48 = *(v9 + 22);
  if (v30 >= v13)
  {
    sub_1B0439BCC();
    v11 = swift_allocError();
    *v40 = v13;

    v41 = v46;
    v17 = v47;
    v42 = v45;
  }

  else
  {

    for (i = v9; ; i = v9)
    {
      sub_1B0436204(i);
      v17 = v47;
      if (v11)
      {
        break;
      }

      sub_1B0DB58A8(v9, v14, v13, v53, v54, v52, v55, &v60);
      v11 = 0;

      v34 = v51;
      v36 = *(v51 + 2);
      v35 = *(v51 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1B0DF5A98((v35 > 1), v36 + 1, 1, v51);
      }

      *(v34 + 2) = v36 + 1;
      v51 = v34;
      v37 = &v34[48 * v36];
      v38 = v60;
      v39 = v61[0];
      *(v37 + 63) = *(v61 + 15);
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v31 = *v9;
      v32 = *(v9 + 8);
      v45 = *(v9 + 20);
      v46 = *(v9 + 16);
      v48 = *(v9 + 22);
    }

    *v9 = v31;
    *(v9 + 8) = v32;
    v42 = v45;
    v41 = v46;
    *(v9 + 16) = v46;
    *(v9 + 20) = v45;
    *(v9 + 22) = v48;
  }

  swift_willThrow();

  *v9 = v31;
  *(v9 + 8) = v32;
  *(v9 + 16) = v41;
  *(v9 + 20) = v42;
  *(v9 + 22) = v48;
  swift_willThrow();
  v43 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v49 = v51;

    v19 = v56;
    v18 = v57;
    goto LABEL_9;
  }

  *v49 = v51;
  return result;
}

uint64_t sub_1B0E06538(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(unint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t (*)(void), uint64_t, uint64_t, uint64_t))
{
  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v13 = a4;
  if (v16 < a4)
  {
    v57 = a2;
    v19 = *a1;
    v15 = a1[1];
    v59 = *(a1 + 10);
    v60 = *(a1 + 4);
    v58 = *(a1 + 22);

    v61 = a1;
    a9(&v62, a1, v16, v13, a5, a6, a7, a8);
    v10 = v9;
    if (v9)
    {
      v24 = v59;
      v23 = v60;
LABEL_24:

      *v61 = v19;
      *(v61 + 8) = v15;
      *(v61 + 16) = v23;
      *(v61 + 20) = v24;
      *(v61 + 22) = v58;
      return swift_willThrow();
    }

    v55 = a5;
    v51 = v19;
    v14 = v63;
    v56 = v62;
    v12 = v64;
    v11 = *v57;
    v54 = v65;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v13;
      v27 = v11;
LABEL_8:
      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1B0441900((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[32 * v29];
      *(v30 + 4) = v56;
      *(v30 + 5) = v14;
      *(v30 + 6) = v12;
      v30[56] = v54;
      if (v16 + 1 >= v26)
      {
        *v57 = v27;
        sub_1B0439BCC();
        v10 = swift_allocError();
        *v46 = v26;
      }

      else
      {
        v31 = *v61;
        v32 = *(v61 + 8);
        v33 = *(v61 + 16);
        v34 = *(v61 + 20);
        v35 = *(v61 + 22);
        v50 = v27;
        if (v16 + 2 >= v26)
        {
LABEL_19:
          sub_1B0439BCC();
          v10 = swift_allocError();
          *v47 = v26;

          v36 = v50;
        }

        else
        {
          v53 = v26;
          v52 = v16 + 2;
          while (1)
          {
            v36 = v27;

            sub_1B0436204(v61);
            if (v10)
            {
              break;
            }

            sub_1B0441264(v61, &v62);
            v56 = v56 & 0xFF00000000000000 | v64 | (WORD2(v64) << 32) | (BYTE6(v64) << 48);
            sub_1B0DFF2E8(v62, v63, v56, 0xD000000000000020, 0x80000001B0F2FA10, 115);
            v10 = 0;
            v37 = v55();
            v39 = v38;

            v40 = sub_1B0441810(61, 0xE100000000000000, v37, v39);
            v42 = v41;

            v27 = v36;
            v43 = *(v36 + 2);
            v44 = *(v27 + 3);
            if (v43 >= v44 >> 1)
            {
              v27 = sub_1B0441900((v44 > 1), v43 + 1, 1, v27);
            }

            *(v27 + 2) = v43 + 1;
            v45 = &v27[32 * v43];
            *(v45 + 4) = v37;
            *(v45 + 5) = v39;
            *(v45 + 6) = v40;
            v45[56] = v42 & 1;
            v31 = *v61;
            v32 = *(v61 + 8);
            v33 = *(v61 + 16);
            v34 = *(v61 + 20);
            v35 = *(v61 + 22);
            v26 = v53;
            if (v52 >= v53)
            {
              goto LABEL_19;
            }
          }
        }

        swift_willThrow();

        *v57 = v36;
        *v61 = v31;
        *(v61 + 8) = v32;
        *(v61 + 16) = v33;
        *(v61 + 20) = v34;
        *(v61 + 22) = v35;
      }

      swift_willThrow();
      v66 = v10;
      v48 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      v19 = v51;
      v24 = v59;
      v23 = v60;
      if (swift_dynamicCast())
      {
      }

      goto LABEL_24;
    }

LABEL_27:
    v27 = sub_1B0441900(0, *(v11 + 2) + 1, 1, v11);
    v26 = v13;
    goto LABEL_8;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v25 = v13;
  return swift_willThrow();
}

uint64_t sub_1B0E069F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a1;
  v10 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 < a4)
  {
    v47 = a2;
    v12 = a1;
    v13 = *a1;
    v9 = *(a1 + 8);
    v50 = *(a1 + 16);
    v48 = *(a1 + 20);
    v14 = *(a1 + 22);

    v15 = v50;
    v16 = v48;
    v17 = sub_1B0DB7AD0(v54, v10, a4);
    v8 = v6;
    if (v6)
    {
LABEL_53:

      *v12 = v13;
      *(v12 + 8) = v9;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v14;
      return swift_willThrow();
    }

    v51 = v17;
    v53 = a4;
    v45 = v14;
    v7 = *v47;
    v46 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v12 = v54;
      v19 = v7[2];
      v18 = v7[3];
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1B0DF6030((v18 > 1), v19 + 1, 1, v7);
      }

      v7[2] = v19 + 1;
      v7[v19 + 4] = v51;
      v20 = v53;
      if (v10 + 1 < v53)
      {
        v52 = v10 + 2;
        v49 = v10 + 3;
        while (1)
        {
          v21 = *v12;
          v22 = *(v12 + 8);
          v10 = *(v12 + 12);
          LODWORD(v51) = *(v12 + 16);
          v23 = *(v12 + 20);
          v54 = *(v12 + 22);
          if (v52 < v20)
          {
            break;
          }

          sub_1B0439BCC();
          v8 = swift_allocError();
          *v25 = v20;

LABEL_24:
          swift_willThrow();
          v57 = v8;
          v30 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {
          }

          else
          {

            v57 = v8;
            v31 = v8;
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_49;
            }

            v8 = v55;
          }

          if (v52 >= v53)
          {
            sub_1B0439BCC();
            v8 = swift_allocError();
            *v40 = v53;
            goto LABEL_48;
          }

          if (v10 == v22)
          {
            sub_1B0D3EA30();
            v8 = swift_allocError();
            LODWORD(v10) = v22;
            goto LABEL_47;
          }

          swift_beginAccess();
          if (v22 == -1)
          {
            __break(1u);
            goto LABEL_56;
          }

          v32 = *(*(v21 + 24) + (v54 | (v23 << 8)) + v22);
          *(v12 + 8) = v22 + 1;
          if ((v32 - 47) > 0x11 || ((1 << (v32 - 47)) & 0x20801) == 0)
          {
            sub_1B0E46298();

            v41 = sub_1B0E469C8();
            MEMORY[0x1B2726E80](v41);

            sub_1B0436554();
            v8 = swift_allocError();
            *v42 = 0xD000000000000012;
            v42[1] = 0x80000001B0F30350;
            v42[2] = 0xD000000000000020;
            v42[3] = 0x80000001B0F2FA10;
            v42[4] = 1312;
LABEL_47:
            swift_willThrow();
LABEL_48:
            swift_willThrow();
LABEL_49:

            *v47 = v7;
            *v12 = v21;
            *(v12 + 8) = v22;
            *(v12 + 12) = v10;
            *(v12 + 16) = v51;
            *(v12 + 20) = v23;
            *(v12 + 22) = v54;
            goto LABEL_50;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_1B0EC1E70;
          *(v37 + 32) = v32;

          v8 = 0;
LABEL_36:

          v35 = v7[2];
          v34 = v7[3];
          if (v35 >= v34 >> 1)
          {
            v7 = sub_1B0DF6030((v34 > 1), v35 + 1, 1, v7);
          }

          v7[2] = v35 + 1;
          v7[v35 + 4] = v37;
          v20 = v53;
        }

        if (v49 >= v20)
        {
          sub_1B0439BCC();
          v8 = swift_allocError();
          *v26 = v20;
          swift_retain_n();
          swift_retain_n();
        }

        else
        {
          swift_retain_n();
          swift_retain_n();
          sub_1B0DC2934(v12, v49, v20);
          if (!v8)
          {
            v37 = v24;

            goto LABEL_40;
          }

          *v12 = v21;
          *(v12 + 8) = v22;
          *(v12 + 12) = v10;
          *(v12 + 16) = v51;
          *(v12 + 20) = v23;
          *(v12 + 22) = v54;
        }

        swift_willThrow();
        v56 = v8;
        v27 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {
        }

        else
        {

          v56 = v8;
          v28 = v8;
          if ((swift_dynamicCast() & 1) == 0)
          {

LABEL_23:

            *v12 = v21;
            *(v12 + 8) = v22;
            *(v12 + 12) = v10;
            *(v12 + 16) = v51;
            *(v12 + 20) = v23;
            *(v12 + 22) = v54;
            goto LABEL_24;
          }
        }

        if (v49 < v53)
        {
          sub_1B0DBCC38(v12);
          v8 = 0;
          v37 = v36;
LABEL_40:

          goto LABEL_36;
        }

        sub_1B0439BCC();
        v8 = swift_allocError();
        *v29 = v53;
        swift_willThrow();
        goto LABEL_23;
      }

      *v47 = v7;
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v39 = v53;
LABEL_50:
      v13 = v46;
      v15 = v50;
      swift_willThrow();
      v43 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      v16 = v48;
      v14 = v45;
      goto LABEL_53;
    }

LABEL_57:
    v7 = sub_1B0DF6030(0, v7[2] + 1, 1, v7);
    goto LABEL_5;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v38 = a4;
  return swift_willThrow();
}

uint64_t sub_1B0E07254(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v11 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    if (v11 >= a4)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v33 = a4;
      return swift_willThrow();
    }

    v45 = a2;
    v12 = a1;
    v13 = *a1;
    v10 = a1[1];
    v46 = *(a1 + 4);
    v14 = *(a1 + 10);
    v15 = *(a1 + 22);

    v16 = v46;
    v17 = sub_1B0DB7860(v12, v11, a4);
    v9 = v5;
    if (v5)
    {
      goto LABEL_39;
    }

    v6 = v17;
    v43 = v13;
    v44 = v12;
    v7 = v11;
    v41 = v15;
    v4 = v45;
    v8 = *v45;
    v42 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  v8 = sub_1B0DF6030(0, v8[2] + 1, 1, v8);
LABEL_5:
  v19 = v8[2];
  v18 = v8[3];
  if (v19 >= v18 >> 1)
  {
    v8 = sub_1B0DF6030((v18 > 1), v19 + 1, 1, v8);
  }

  v8[2] = v19 + 1;
  v8[v19 + 4] = v6;
  if (v7 + 1 >= a4)
  {
    *v4 = v8;
    sub_1B0439BCC();
    v9 = swift_allocError();
    *v34 = a4;
    v35 = v46;
    v14 = v42;
    v13 = v43;
    goto LABEL_36;
  }

  v20 = v7 + 2;
  v49 = v7 + 2;
  v4 = v44;
  while (1)
  {
    v21 = *v44;
    v7 = *(v44 + 8);
    v50 = *(v44 + 12);
    v48 = *(v44 + 16);
    v22 = *(v44 + 20);
    v23 = *(v44 + 22);
    if (v20 >= a4)
    {
      sub_1B0439BCC();
      v9 = swift_allocError();
      *v26 = a4;
    }

    else
    {
      v47 = v8;
      v24 = *(v44 + 22);
      swift_retain_n();

      sub_1B0DC2934(v44, v20, a4);
      if (!v9)
      {
        v30 = v25;

        v8 = v47;
        goto LABEL_24;
      }

      *v44 = v21;
      *(v44 + 8) = v7;
      *(v44 + 12) = v50;
      *(v44 + 16) = v48;
      *(v44 + 20) = v22;
      v23 = v24;
      *(v44 + 22) = v24;
      v8 = v47;
    }

    swift_willThrow();
    v53 = v9;
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v53 = v9;
      v28 = v9;
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_32;
      }

      v9 = v52;
    }

    if (v49 >= a4)
    {
      sub_1B0439BCC();
      v9 = swift_allocError();
      *v36 = a4;
      swift_willThrow();
LABEL_32:

      v35 = v46;
      goto LABEL_35;
    }

    if (v50 == v7)
    {
      break;
    }

    swift_beginAccess();
    if (v7 == -1)
    {
      goto LABEL_42;
    }

    v29 = *(*(v21 + 24) + (v23 | (v22 << 8)) + v7);
    *(v44 + 8) = v7 + 1;
    if (v29 != 38 && v29 != 61)
    {
      sub_1B0E46298();

      v37 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v37);

      sub_1B0436554();
      v9 = swift_allocError();
      *v38 = 0xD000000000000012;
      v38[1] = 0x80000001B0F30330;
      v4 = v44;
      v38[2] = 0xD000000000000020;
      v38[3] = 0x80000001B0F2FA10;
      v38[4] = 1293;
      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B0EC1E70;
    *(v30 + 32) = v29;

    v9 = 0;
LABEL_24:

    v32 = v8[2];
    v31 = v8[3];
    if (v32 >= v31 >> 1)
    {
      v8 = sub_1B0DF6030((v31 > 1), v32 + 1, 1, v8);
    }

    v8[2] = v32 + 1;
    v8[v32 + 4] = v30;
    v20 = v49;
  }

  sub_1B0D3EA30();
  v9 = swift_allocError();
  v50 = v7;
LABEL_34:
  v35 = v46;
  swift_willThrow();
  swift_willThrow();

LABEL_35:
  *v45 = v8;
  *v4 = v21;
  *(v4 + 8) = v7;
  *(v4 + 12) = v50;
  *(v4 + 16) = v48;
  *(v4 + 20) = v22;
  *(v4 + 22) = v23;
  v13 = v43;
  v14 = v42;
LABEL_36:
  swift_willThrow();
  v39 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  v15 = v41;
  v16 = v35;
  v12 = v44;
LABEL_39:

  *v12 = v13;
  *(v12 + 8) = v10;
  *(v12 + 16) = v16;
  *(v12 + 20) = v14;
  *(v12 + 22) = v15;
  return swift_willThrow();
}

uint64_t sub_1B0E0793C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a4)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v38 = a4;
      return swift_willThrow();
    }

    v6 = a1;
    v46 = a2;
    v14 = *a1;
    v11 = a1[1];
    v47 = *(a1 + 4);
    v15 = *(a1 + 10);
    v45 = *(a1 + 22);

    v52 = v12;
    v16 = v47;
    v17 = sub_1B0DB7AD0(v6, v12, a4);
    v9 = v7;
    if (v7)
    {
      goto LABEL_43;
    }

    v12 = v17;
    v10 = v52;
    v54 = a4;
    v43 = v15;
    v8 = *v46;
    v44 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  v8 = sub_1B0DF6030(0, v8[2] + 1, 1, v8);
LABEL_5:
  v19 = v8[2];
  v18 = v8[3];
  if (v19 >= v18 >> 1)
  {
    v8 = sub_1B0DF6030((v18 > 1), v19 + 1, 1, v8);
  }

  v8[2] = v19 + 1;
  v8[v19 + 4] = v12;
  v20 = v54;
  if (v10 + 1 >= v54)
  {
    *v46 = v8;
    sub_1B0439BCC();
    v9 = swift_allocError();
    *v39 = v54;
    goto LABEL_40;
  }

  v21 = v10 + 2;
  v22 = v10 + 3;
  for (i = v10 + 3; ; v22 = i)
  {
    v24 = *v6;
    v51 = *(v6 + 12);
    v53 = *(v6 + 8);
    v49 = *(v6 + 20);
    v50 = *(v6 + 16);
    v48 = *(v6 + 22);
    if (v21 >= v20)
    {
      sub_1B0439BCC();
      v9 = swift_allocError();
      *v26 = v20;

      goto LABEL_24;
    }

    if (v22 >= v20)
    {
      sub_1B0439BCC();
      v9 = swift_allocError();
      *v27 = v20;
      swift_retain_n();
      swift_retain_n();
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      sub_1B0DC2934(v6, v22, v20);
      if (!v9)
      {
        v37 = v25;

        goto LABEL_34;
      }

      *v6 = v24;
      *(v6 + 8) = v53;
      *(v6 + 12) = v51;
      *(v6 + 16) = v50;
      *(v6 + 20) = v49;
      *(v6 + 22) = v48;
    }

    swift_willThrow();
    v55 = v9;
    v28 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

LABEL_19:

      if (i < v54)
      {
        sub_1B0DC3848(v6);
        v9 = 0;
        v37 = v36;
LABEL_34:

        goto LABEL_30;
      }

      sub_1B0439BCC();
      v9 = swift_allocError();
      *v30 = v54;
      swift_willThrow();
      goto LABEL_23;
    }

    v55 = v9;
    v29 = v9;
    if (swift_dynamicCast())
    {

      goto LABEL_19;
    }

LABEL_23:

    *v6 = v24;
    *(v6 + 8) = v53;
    *(v6 + 12) = v51;
    *(v6 + 16) = v50;
    *(v6 + 20) = v49;
    *(v6 + 22) = v48;
LABEL_24:
    swift_willThrow();
    v56 = v9;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {
      break;
    }

LABEL_28:

    if (v21 >= v54)
    {
      sub_1B0439BCC();
      v9 = swift_allocError();
      *v40 = v54;
      swift_willThrow();
      goto LABEL_39;
    }

    sub_1B0DC39F4(v6);
    v9 = 0;
    v37 = v33;
LABEL_30:

    v35 = v8[2];
    v34 = v8[3];
    if (v35 >= v34 >> 1)
    {
      v8 = sub_1B0DF6030((v34 > 1), v35 + 1, 1, v8);
    }

    v8[2] = v35 + 1;
    v8[v35 + 4] = v37;
    v20 = v54;
  }

  v56 = v9;
  v32 = v9;
  if (swift_dynamicCast())
  {

    goto LABEL_28;
  }

LABEL_39:

  *v46 = v8;
  *v6 = v24;
  *(v6 + 8) = v53;
  *(v6 + 12) = v51;
  *(v6 + 16) = v50;
  *(v6 + 20) = v49;
  *(v6 + 22) = v48;
LABEL_40:
  v14 = v44;
  swift_willThrow();
  v41 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  v15 = v43;
  v16 = v47;
LABEL_43:

  *v6 = v14;
  *(v6 + 8) = v11;
  *(v6 + 16) = v16;
  *(v6 + 20) = v15;
  *(v6 + 22) = v45;
  return swift_willThrow();
}

uint64_t sub_1B0E08010(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a4)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v29 = a4;
      return swift_willThrow();
    }

    v5 = a1;
    v38 = a2;
    v12 = *a1;
    v9 = a1[1];
    v13 = *(a1 + 4);
    v14 = *(a1 + 10);
    v39 = *(a1 + 22);

    v37 = a4;
    v15 = v13;
    v16 = sub_1B0DB7860(v5, v10, a4);
    v7 = v6;
    if (v6)
    {
      goto LABEL_31;
    }

    v4 = v16;
    v34 = v14;
    v8 = *v38;
    v36 = v12;
    v35 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  v8 = sub_1B0DF6030(0, v8[2] + 1, 1, v8);
LABEL_5:
  v18 = v8[2];
  v17 = v8[3];
  if (v18 >= v17 >> 1)
  {
    v8 = sub_1B0DF6030((v17 > 1), v18 + 1, 1, v8);
  }

  v8[2] = v18 + 1;
  v8[v18 + 4] = v4;
  if (v10 + 1 >= v37)
  {
    *v38 = v8;
    sub_1B0439BCC();
    v7 = swift_allocError();
    *v30 = v37;
    goto LABEL_28;
  }

  v19 = v10 + 2;
  while (1)
  {
    v20 = *v5;
    v43 = *(v5 + 12);
    v44 = *(v5 + 8);
    v41 = *(v5 + 20);
    v42 = *(v5 + 16);
    v40 = *(v5 + 22);
    if (v19 >= v37)
    {
      sub_1B0439BCC();
      v7 = swift_allocError();
      *v22 = v37;
    }

    else
    {
      swift_retain_n();

      sub_1B0DC2934(v5, v19, v37);
      if (!v7)
      {
        v26 = v21;

        goto LABEL_19;
      }

      *v5 = v20;
      *(v5 + 8) = v44;
      *(v5 + 12) = v43;
      *(v5 + 16) = v42;
      *(v5 + 20) = v41;
      *(v5 + 22) = v40;
    }

    swift_willThrow();
    v45 = v7;
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {
      break;
    }

LABEL_17:

    if (v19 >= v37)
    {
      sub_1B0439BCC();
      v7 = swift_allocError();
      *v31 = v37;
      swift_willThrow();
      goto LABEL_27;
    }

    sub_1B0DC3848(v5);
    v7 = 0;
    v26 = v25;
LABEL_19:

    v28 = v8[2];
    v27 = v8[3];
    if (v28 >= v27 >> 1)
    {
      v8 = sub_1B0DF6030((v27 > 1), v28 + 1, 1, v8);
    }

    v8[2] = v28 + 1;
    v8[v28 + 4] = v26;
  }

  v45 = v7;
  v24 = v7;
  if (swift_dynamicCast())
  {

    goto LABEL_17;
  }

LABEL_27:

  *v38 = v8;
  *v5 = v20;
  *(v5 + 8) = v44;
  *(v5 + 12) = v43;
  *(v5 + 16) = v42;
  *(v5 + 20) = v41;
  *(v5 + 22) = v40;
LABEL_28:
  v12 = v36;
  swift_willThrow();
  v32 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  v14 = v34;
  v15 = v35;
LABEL_31:

  *v5 = v12;
  *(v5 + 8) = v9;
  *(v5 + 16) = v15;
  *(v5 + 20) = v14;
  *(v5 + 22) = v39;
  return swift_willThrow();
}

uint64_t sub_1B0E0857C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0E085E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0E0864C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0E086C0()
{
  result = qword_1EB6E7A60;
  if (!qword_1EB6E7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A60);
  }

  return result;
}

uint64_t sub_1B0E08768(unint64_t a1, char a2)
{
  LODWORD(v3) = a1;
  v4 = HIDWORD(a1);
  if (a2)
  {
    v5 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x2DuLL, 0xE100000000000000, v2 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 45;
      v8._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v2 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(v2 + 20) = v12;
    result = sub_1B0E298A0(v3);
    v13 = v9 + result;
    if (__OFADD__(v9, result))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v3 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x2D3AuLL, 0xE200000000000000, v2 + 8, v3);
    if (v14)
    {
      v15._countAndFlagsBits = 11578;
      v15._object = 0xE200000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v3);
    }

    v16 = *(v2 + 20);
    v11 = __CFADD__(v16, result);
    v17 = v16 + result;
    if (v11)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
    v18 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v19 = sub_1B0E298A0(v4);
    v20 = __OFADD__(v18, v19);
    result = v18 + v19;
    if (!v20)
    {
      return result;
    }

    __break(1u);
  }

  v21 = sub_1B0E298A0(v3);
  v22 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, v2 + 8, v22);
  if (v23)
  {
    v24._countAndFlagsBits = 58;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v2 + 20);
  v11 = __CFADD__(v25, result);
  v26 = v25 + result;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v2 + 20) = v26;
  v27 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = sub_1B0E298A0(v4);
  v20 = __OFADD__(v27, v28);
  result = v27 + v28;
  if (v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t PartialRange.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  MEMORY[0x1B2728D70](a3 & 1);
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t PartialRange.hashValue.getter(unint64_t a1, char a2)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 & 1);
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E089B4()
{
  v1 = *(v0 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E08A20()
{
  MEMORY[0x1B2728D70](*(v0 + 8));
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t sub_1B0E08A68(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E08B04()
{
  result = qword_1EB6E7A68;
  if (!qword_1EB6E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A68);
  }

  return result;
}

uint64_t sub_1B0E08B68(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0DE0F1C;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE6128(0, sub_1B0DE163C, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t PermanentFlag.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1B2728D70](1, a2);
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t PermanentFlag.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  if (a2)
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E08EA8()
{
  v1 = *(v0 + 8);
  sub_1B0E46C28();
  if (v1)
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E08F34(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0E08FC8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  if (v2)
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E09064(unint64_t a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v3 = v2 + 5;
    v4 = v2[5];
    result = sub_1B0CFC1B0(a1, a2, (v3 - 3), v4);
    if (v8)
    {
      v9._countAndFlagsBits = a1;
      v9._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v4);
    }

    v10 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v12 = v3[5];
  v3 += 5;
  v11 = v12;
  result = sub_1B0CFC1B0(0x2A5CuLL, 0xE200000000000000, (v3 - 3), v12);
  if (v13)
  {
    v14._countAndFlagsBits = 10844;
    v14._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v10 = *v3 + result;
  if (!__CFADD__(*v3, result))
  {
LABEL_10:
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E09134(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0E09354;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE7318(0, sub_1B0DC40FC, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1B0E09380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, uint64_t (*a4)(void *, uint64_t, __n128)@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t *a7@<X5>, unint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B0E229E8(*a1, *a2, a2[1], a2[2], a4, a5, a6, *a7, a8, a9);
  if (!v9)
  {
    *a3 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore213PermanentFlagO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (!a4)
  {
    return 0;
  }

  v4 = sub_1B0E44BB8();
  v6 = v5;
  if (v4 == sub_1B0E44BB8() && v6 == v7)
  {

    return 1;
  }

  v9 = sub_1B0E46A78();

  return v9 & 1;
}

unint64_t sub_1B0E094A0()
{
  result = qword_1EB6DE8C0;
  if (!qword_1EB6DE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE8C0);
  }

  return result;
}

uint64_t static PreviewText.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t PreviewText.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E09580()
{
  result = qword_1EB6E7A70;
  if (!qword_1EB6E7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A70);
  }

  return result;
}

uint64_t sub_1B0E095E8(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1B0CFC1B0(a1, a2, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v12;
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v12);
  if (v13)
  {
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v2 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_14;
  }

  *(v2 + 20) = v16;
  v17 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = sub_1B0E469C8();
  v20 = v19;
  v21 = sub_1B0CFC1B0(v18, v19, v2 + 8, v16);
  if (v22)
  {
    v23._countAndFlagsBits = v18;
    v23._object = v20;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v16);
  }

  v24 = v21;

  v25 = *(v3 + 20);
  v26 = __CFADD__(v25, v24);
  v27 = v25 + v24;
  if (v26)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v27;
  result = v17 + v24;
  if (__OFADD__(v17, v24))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t QuotaLimit.resourceName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static QuotaLimit.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1B0E46A78();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t QuotaLimit.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E098E8()
{
  v1 = *(v0 + 16);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0994C(uint64_t a1)
{
  v2 = *(v1 + 16);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0E09984(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E099E8()
{
  result = qword_1EB6E7A78;
  if (!qword_1EB6E7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A78);
  }

  return result;
}

BOOL sub_1B0E09A3C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B0E46A78();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t QuotaResource.resourceName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static QuotaResource.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v13 = sub_1B0E46A78();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

uint64_t QuotaResource.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](a4);
  return MEMORY[0x1B2728D70](a5);
}

uint64_t QuotaResource.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](a3);
  MEMORY[0x1B2728D70](a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E09CD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E09D50(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](v2);
  return MEMORY[0x1B2728D70](v3);
}

uint64_t sub_1B0E09D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E09E10()
{
  result = qword_1EB6E7A80;
  if (!qword_1EB6E7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A80);
  }

  return result;
}

BOOL sub_1B0E09E64(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1B0E46A78();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

void *sub_1B0E09EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B0452620(0, v3, 0);
    result = v28;
    v6 = a1 + 56;
    while (1)
    {
      v26 = v3;
      v27 = result;
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      v9 = *(a2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CFC1B0(v7, v8, a2 + 8, v9);
      if (v10)
      {
        v11._countAndFlagsBits = v7;
        v11._object = v8;
        result = ByteBuffer._setStringSlowpath(_:at:)(v11, v9);
      }

      v12 = *(a2 + 20);
      v13 = (v12 + result);
      if (__CFADD__(v12, result))
      {
        break;
      }

      v25 = result;
      *(a2 + 20) = v13;
      v14 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v14);

      MEMORY[0x1B2726E80](32, 0xE100000000000000);
      v15 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v15);

      v16 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a2 + 8, v13);
      if (v17)
      {
        v18._countAndFlagsBits = 32;
        v18._object = 0xE100000000000000;
        v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v13);
      }

      v19 = v16;

      result = v8;
      v20 = *(a2 + 20);
      v21 = __CFADD__(v20, v19);
      v22 = v20 + v19;
      if (v21)
      {
        goto LABEL_15;
      }

      *(a2 + 20) = v22;

      if (__OFADD__(v25, v19))
      {
        goto LABEL_16;
      }

      result = v27;
      v24 = *(v27 + 16);
      v23 = *(v27 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B0452620((v23 > 1), v24 + 1, 1);
        result = v27;
      }

      v6 += 32;
      result[2] = v24 + 1;
      result[v24 + 4] = v25 + v19;
      --v3;
      if (v26 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E0A12C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x2041544F5551uLL, 0xE600000000000000, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x2041544F5551;
    v12._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  result = sub_1B0D4B6B8(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v4 + 20);
  v15 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v4 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = sub_1B0E0A264(a4);
  v25 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v25)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E0A264(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v11;
  result = sub_1B0E09EF8(a1, v2);
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (result + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v13 = 0;
LABEL_10:

  v17 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
    goto LABEL_18;
  }

  v18 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v10 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v10)
  {
    goto LABEL_19;
  }

  *(v2 + 20) = v22;
  v16 = __OFADD__(v17, result);
  result += v17;
  if (v16)
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t QuotaRoot.storage.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t QuotaRoot.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_1B0D56EF8(&v20);
  v5 = *(&v21 + 1);
  v4 = v22;
  v6 = sub_1B0D4BDD0(a1, a2, &v20, v22);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = sub_1B0D4E9CC(a1, a2, v4);
  }

  else
  {
    v7 = v6;
  }

  v9 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(&v21 + 1) = v5;
  v22 = v4 + v7;
  if (v21 - (BYTE6(v21) | (WORD2(v21) << 8)) < v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  HIDWORD(v20) = v4 + v7;
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  v10 = v20;
  v11 = v21;
  v12 = WORD2(v21);
  v13 = BYTE6(v21);
  v14 = *(&v21 + 1);
  v15 = v22 - *(&v21 + 1);
  sub_1B0D56C9C(v18, v17);
  v16 = ByteBuffer.getSlice(at:length:)(v14, v15, v10, *(&v10 + 1), v11 | (v12 << 32) | (v13 << 48));
  result = sub_1B04394F4(v18);
  if (v16)
  {
    sub_1B04394F4(v18);
    return v16;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t QuotaRoot.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0A6DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  sub_1B0E46C28();
  QuotaRoot.hash(into:)(v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
  return sub_1B0E46CB8();
}

uint64_t String.init(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
  {
    v11 = v3;
    v12 = v4;
    v5[0] = result;
    v5[1] = a2;
    v6 = a3;
    v7 = WORD2(a3);
    v8 = BYTE6(a3);
    v9 = a2;
    v10 = HIDWORD(a2);
    return sub_1B04407F4(v5);
  }

  __break(1u);
  return result;
}

uint64_t QuotaRoot.debugDescription.getter(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a2) > a3 - (BYTE6(a3) | (WORD2(a3) << 8)))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5[0] = result;
  v5[1] = a2;
  v6 = a3;
  v7 = WORD2(a3);
  v8 = BYTE6(a3);
  v9 = a2;
  v10 = HIDWORD(a2);

  result = sub_1B04407F4(v5);
  if (!v3)
  {
    swift_beginAccess();

    v4 = sub_1B0E44C68();

    return v4;
  }

  return result;
}

unint64_t sub_1B0E0A8BC()
{
  result = qword_1EB6E7A88;
  if (!qword_1EB6E7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7A88);
  }

  return result;
}

void sub_1B0E0A920(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 20);
  v11 = sub_1B0CFC1B0(0x4F4F5241544F5551uLL, 0xEA00000000002054, v5 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x4F4F5241544F5551;
    v13._object = 0xEA00000000002054;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v17;
  sub_1B0DD59A4(a1);
  v19 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v5 + 20);
  v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v5 + 20);
  v16 = __CFADD__(v24, v21);
  v25 = v24 + v21;
  if (v16)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v25;
  if (__OFADD__(v19, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v19 + v21, sub_1B0D4B6B8(a3, a4, a5 & 0xFFFFFFFFFFFFFFLL)))
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t ResponseOrContinuationRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseOrContinuationRequest(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E0E034(v2, v9, type metadata accessor for ResponseOrContinuationRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B04453A4(v9, v6, type metadata accessor for Response);
    MEMORY[0x1B2728D70](1);
    Response.hash(into:)(a1);
    return sub_1B0446B00(v6, type metadata accessor for Response);
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    v13 = *(v9 + 2);
    v14 = v9[24];
    MEMORY[0x1B2728D70](0);
    if (v14)
    {
      MEMORY[0x1B2728D70](1);
      swift_beginAccess();
      sub_1B0E46C38();
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = 1;
    }

    else
    {
      MEMORY[0x1B2728D70](0);
      sub_1B0E46C68();
      if ((~v11 & 0xF000000000000007) != 0)
      {
        ResponseTextCode.hash(into:)(a1, v11);
      }

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = 0;
    }

    return sub_1B0BEFC7C(v15, v16, v17, v18);
  }
}

uint64_t Response.tag.getter()
{
  v1 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E0E034(v0, v3, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v5 = *v3;
      sub_1B0BB6FE0(*(v3 + 2), *(v3 + 3), *(v3 + 4), v3[40]);
      return v5;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3 || (v7 = EnumCaseMultiPayload, result = 0, v7 == 4))
  {
LABEL_6:
    sub_1B0446B00(v3, type metadata accessor for Response);
    return 0;
  }

  return result;
}

uint64_t Response.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E0E034(v2, v9, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = *v9;
      MEMORY[0x1B2728D70](3);
      sub_1B0E46C68();
      if ((~v18 & 0xF000000000000007) != 0)
      {
        ResponseTextCode.hash(into:)(a1, v18);
      }

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0447F00(v18);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      MEMORY[0x1B2728D70](4);
      swift_beginAccess();
      sub_1B0E46C38();
    }

    else
    {
      return MEMORY[0x1B2728D70](5);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v9 + 9);
      v23[8] = *(v9 + 8);
      v23[9] = v11;
      v23[10] = *(v9 + 10);
      v24 = *(v9 + 88);
      v12 = *(v9 + 5);
      v23[4] = *(v9 + 4);
      v23[5] = v12;
      v13 = *(v9 + 7);
      v23[6] = *(v9 + 6);
      v23[7] = v13;
      v14 = *(v9 + 1);
      v23[0] = *v9;
      v15 = *(v9 + 2);
      v16 = *(v9 + 3);
      v23[1] = v14;
      v23[2] = v15;
      v23[3] = v16;
      MEMORY[0x1B2728D70](1);
      FetchResponse.hash(into:)(a1);
      return sub_1B0D0CBE4(v23);
    }

    else
    {
      v19 = *(v9 + 2);
      v20 = *(v9 + 3);
      v21 = *(v9 + 4);
      v22 = v9[40];
      MEMORY[0x1B2728D70](2);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      TaggedResponse.State.hash(into:)(a1, v19, v20, v21, v22);

      return sub_1B0BB6FE0(v19, v20, v21, v22);
    }
  }

  else
  {
    sub_1B04453A4(v9, v6, type metadata accessor for ResponsePayload);
    MEMORY[0x1B2728D70](0);
    ResponsePayload.hash(into:)(a1);
    return sub_1B0446B00(v6, type metadata accessor for ResponsePayload);
  }
}

uint64_t sub_1B0E0B11C(uint64_t (*a1)(void *))
{
  sub_1B0E46C28();
  a1(v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0B17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1B0E46C28();
  a3(v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B0E46C28();
  a4(v6);
  return sub_1B0E46CB8();
}

void sub_1B0E0B268(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1B0E0E034(a2, v8, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = *v8;
      sub_1B0E10A9C(*v8, *(v8 + 1), *(v8 + 2));
      sub_1B0447F00(v15);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1B0E103B0(*v8, *(v8 + 1), *(v8 + 4) | (*(v8 + 10) << 32) | (v8[22] << 48));
    }

    else
    {
      ResponseEncodeBuffer.writeContinuationRequest(_:)(0xF000000000000007, 0x676E696C6469uLL, 0xE600000000000000, 0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v8 + 9);
      v24 = *(v8 + 8);
      v25 = v10;
      v26 = *(v8 + 10);
      v27 = *(v8 + 88);
      v11 = *(v8 + 5);
      v20 = *(v8 + 4);
      v21 = v11;
      v12 = *(v8 + 7);
      v22 = *(v8 + 6);
      v23 = v12;
      v13 = *(v8 + 1);
      v17 = *v8;
      *v18 = v13;
      v14 = *(v8 + 3);
      *&v18[16] = *(v8 + 2);
      v19 = v14;
      sub_1B0E0FDBC(&v17);
      sub_1B0D0CBE4(&v17);
    }

    else
    {
      v16 = *(v8 + 1);
      v17 = *v8;
      *v18 = v16;
      *&v18[9] = *(v8 + 25);
      sub_1B0E30484(&v17);
      v28 = v17;
      sub_1B03B1198(&v28);
      v29[0] = *v18;
      *(v29 + 9) = *&v18[9];
      sub_1B0D0CD48(v29);
    }
  }

  else
  {
    sub_1B04453A4(v8, v5, type metadata accessor for ResponsePayload);
    sub_1B0E0F2D4(v5);
    sub_1B0446B00(v5, type metadata accessor for ResponsePayload);
  }
}

void sub_1B0E0B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = a2;
  v6 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v165 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for Response(0);
  v172 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v159 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v167 = &v159 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v159 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v159 - v21;
  (*(v15 + 16))(v18, v171, a3, v20);
  v23 = v12;
  sub_1B0E44F08();
  v25 = v166;
  v24 = v167;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v170 = v22;
  v171 = AssociatedTypeWitness;
  v169 = AssociatedConformanceWitness;
  sub_1B0E45E38();
  v27 = *(v172 + 48);
  v172 += 48;
  v168 = v27;
  if (v27(v24, 1, v25) == 1)
  {
LABEL_2:
    (*(v159 + 8))(v170, v171);
    return;
  }

  v164 = v12;
  v160 = v9;
  while (1)
  {
    sub_1B04453A4(v24, v23, type metadata accessor for Response);
    sub_1B0E0E034(v23, v9, type metadata accessor for Response);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = *(v9 + 9);
        v183[8] = *(v9 + 8);
        v183[9] = v28;
        v183[10] = *(v9 + 10);
        v184 = *(v9 + 88);
        v29 = *(v9 + 5);
        v183[4] = *(v9 + 4);
        v183[5] = v29;
        v30 = *(v9 + 7);
        v183[6] = *(v9 + 6);
        v183[7] = v30;
        v31 = *(v9 + 1);
        v183[0] = *v9;
        v183[1] = v31;
        v32 = *(v9 + 3);
        v183[2] = *(v9 + 2);
        v183[3] = v32;
        sub_1B0E0FDBC(v183);
        sub_1B0D0CBE4(v183);
        sub_1B0446B00(v23, type metadata accessor for Response);
      }

      else
      {
        v34 = *v9;
        v35 = *(v9 + 1);
        v37 = *(v9 + 2);
        v36 = *(v9 + 3);
        v161 = *(v9 + 4);
        v162 = v36;
        LODWORD(v163) = v9[40];
        v176 = v34;
        v177 = v35;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](32, 0xE100000000000000);
        v39 = v176;
        v38 = v177;
        v40 = *(a1 + 20);
        v41 = sub_1B0CFC1B0(v176, v177, a1 + 8, v40);
        if (v42)
        {
          v43._countAndFlagsBits = v39;
          v43._object = v38;
          v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
        }

        v44 = v41;

        v45 = *(a1 + 20);
        v46 = __CFADD__(v45, v44);
        v47 = v45 + v44;
        if (v46)
        {
          goto LABEL_92;
        }

        v48 = v37;
        *(a1 + 20) = v47;
        v49 = v37;
        v51 = v161;
        v50 = v162;
        sub_1B0E30AF8(v49, v162, v161, v163);
        v52 = *(a1 + 20);
        v53 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, a1 + 8, v52);
        if (v54)
        {
          v55._countAndFlagsBits = 2573;
          v55._object = 0xE200000000000000;
          v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
        }

        v56 = v53;

        v24 = v167;
        sub_1B0BB6FE0(v48, v50, v51, v163);
        v23 = v164;
        sub_1B0446B00(v164, type metadata accessor for Response);
        v57 = *(a1 + 20);
        v46 = __CFADD__(v57, v56);
        v58 = v57 + v56;
        if (v46)
        {
          goto LABEL_93;
        }

        *(a1 + 20) = v58;
        v25 = v166;
      }
    }

    else
    {
      sub_1B04453A4(v9, v165, type metadata accessor for ResponsePayload);
      v69 = *(a1 + 20);
      v70 = v69 + 2;
      if (v69 >= 0xFFFFFFFE)
      {
        goto LABEL_89;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = *(a1 + 24);
        v46 = v70 >= v71;
        v72 = v70 - v71;
        if (v46)
        {
          v73 = v72;
        }

        else
        {
          v73 = 0;
        }

        v74 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v73, v74 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v69);
      v75 = *(a1 + 8);
      v76 = *(a1 + 24);
      v77 = *(a1 + 28);
      v78 = *(a1 + 30);
      swift_beginAccess();
      v79 = v78 | (v77 << 8);
      v80 = v76 - v79;
      if (v76 - v79 >= v69)
      {
        v80 = v69;
      }

      if (!v69)
      {
        v80 = 0;
      }

      *(*(v75 + 24) + v79 + v80) = 8234;
      v81 = *(a1 + 20);
      v46 = __CFADD__(v81, 2);
      v82 = v81 + 2;
      if (v46)
      {
        goto LABEL_94;
      }

      *(a1 + 20) = v82;
      sub_1B0E12A04(v165);
      v83 = *(a1 + 20);
      v84 = v83 + 2;
      if (v83 >= 0xFFFFFFFE)
      {
        goto LABEL_101;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = *(a1 + 24);
        v46 = v84 >= v85;
        v86 = v84 - v85;
        if (v46)
        {
          v87 = v86;
        }

        else
        {
          v87 = 0;
        }

        v88 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v87, v88 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v83);
      v89 = *(a1 + 8);
      v90 = *(a1 + 24);
      v91 = *(a1 + 28);
      v92 = *(a1 + 30);
      swift_beginAccess();
      v93 = v92 | (v91 << 8);
      v94 = v90 - v93;
      if (v90 - v93 >= v83)
      {
        v94 = v83;
      }

      if (!v83)
      {
        v94 = 0;
      }

      *(*(v89 + 24) + v93 + v94) = 2573;
      sub_1B0446B00(v165, type metadata accessor for ResponsePayload);
      v23 = v164;
      sub_1B0446B00(v164, type metadata accessor for Response);
      v95 = *(a1 + 20);
      v46 = __CFADD__(v95, 2);
      v96 = v95 + 2;
      if (v46)
      {
        goto LABEL_102;
      }

      *(a1 + 20) = v96;
      v24 = v167;
    }

LABEL_5:
    sub_1B0E45E38();
    if (v168(v24, 1, v25) == 1)
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v60 = *(v9 + 2);
      v59 = *(v9 + 3);
      if (v59 < v60)
      {
        goto LABEL_91;
      }

      v61 = *(v9 + 4);
      v62 = *(v9 + 10);
      v63 = v9[22];
      if (v61 - (v63 | (v62 << 8)) < v59)
      {
        goto LABEL_97;
      }

      v64 = *v9;
      v176 = *v9;
      v177 = __PAIR64__(v59, v60);
      v178 = v61;
      v179 = v62;
      v180 = v63;
      v181 = v60;
      v182 = v59;
      v65 = v59 - v60;
      swift_beginAccess();
      if (v65 < -4)
      {
        goto LABEL_99;
      }

      v66 = 4 * ((v65 + 2) / 3);
      v67 = *(v64 + 24);
      v163 = v64;

      if (v65 < 1)
      {
        v68 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v68 = sub_1B0E45278();
        *(v68 + 16) = v66;
      }

      v174 = 0;
      sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, v67 + (v63 | (v62 << 8)) + v60, v65, v68 + 32, v66, 0, &v174);
      if (v66 < v174)
      {
        goto LABEL_103;
      }

      *(v68 + 16) = v174;
      sub_1B04394F4(&v176);
      v138 = *(a1 + 20);
      v139 = sub_1B0CFC1B0(0x202BuLL, 0xE200000000000000, a1 + 8, v138);
      if (v140)
      {
        v141._countAndFlagsBits = 8235;
        v141._object = 0xE200000000000000;
        v139 = ByteBuffer._setStringSlowpath(_:at:)(v141, v138);
      }

      v25 = v166;
      v9 = v160;
      v142 = *(a1 + 20);
      v143 = (v142 + v139);
      if (__CFADD__(v142, v139))
      {
        goto LABEL_104;
      }

      *(a1 + 20) = v143;
      if (*a1 == 1)
      {
        v174 = 91;
        v175 = 0xE100000000000000;
        v173 = *(v68 + 16);
        v144 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v144);

        MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
        v146 = v174;
        v145 = v175;
        v147 = sub_1B0CFC1B0(v174, v175, a1 + 8, v143);
        if (v148)
        {
          v149._countAndFlagsBits = v146;
          v149._object = v145;
          v147 = ByteBuffer._setStringSlowpath(_:at:)(v149, v143);
        }

        v150 = v147;

        v151 = *(a1 + 20);
        v46 = __CFADD__(v151, v150);
        v152 = v151 + v150;
        v23 = v164;
        if (v46)
        {
          goto LABEL_106;
        }

        *(a1 + 20) = v152;
      }

      else
      {
        sub_1B0DB3EA0(v68);

        v152 = *(a1 + 20);
        v23 = v164;
      }

      v153 = v152;
      v154 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, a1 + 8, v152);
      if (v155)
      {
        v156._countAndFlagsBits = 2573;
        v156._object = 0xE200000000000000;
        v154 = ByteBuffer._setStringSlowpath(_:at:)(v156, v153);
      }

      v157 = v154;

      v24 = v167;
      sub_1B0446B00(v23, type metadata accessor for Response);
      v158 = *(a1 + 20);
      v46 = __CFADD__(v158, v157);
      v137 = v158 + v157;
      if (v46)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v117 = *(a1 + 20);
      v118 = sub_1B0CFC1B0(0x202BuLL, 0xE200000000000000, a1 + 8, v117);
      if (v119)
      {
        v120._countAndFlagsBits = 8235;
        v120._object = 0xE200000000000000;
        v118 = ByteBuffer._setStringSlowpath(_:at:)(v120, v117);
      }

      v121 = *(a1 + 20);
      v122 = (v121 + v118);
      if (__CFADD__(v121, v118))
      {
        goto LABEL_90;
      }

      *(a1 + 20) = v122;
      v123 = sub_1B0E44CF8();
      if (v123 <= 0)
      {
        v124 = 32;
      }

      else
      {
        v124 = 0x676E696C6469;
      }

      if (v123 <= 0)
      {
        v125 = 0xE100000000000000;
      }

      else
      {
        v125 = 0xE600000000000000;
      }

      v126 = sub_1B0CFC1B0(v124, v125, a1 + 8, v122);
      if (v127)
      {
        v128._countAndFlagsBits = v124;
        v128._object = v125;
        v126 = ByteBuffer._setStringSlowpath(_:at:)(v128, v122);
      }

      v129 = v126;

      v130 = *(a1 + 20);
      v131 = (v130 + v129);
      if (__CFADD__(v130, v129))
      {
        goto LABEL_96;
      }

      *(a1 + 20) = v131;
      v132 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, a1 + 8, (v130 + v129));
      if (v133)
      {
        v134._countAndFlagsBits = 2573;
        v134._object = 0xE200000000000000;
        v132 = ByteBuffer._setStringSlowpath(_:at:)(v134, v131);
      }

      v135 = v132;
      v24 = v167;
      sub_1B0446B00(v23, type metadata accessor for Response);
      v136 = *(a1 + 20);
      v46 = __CFADD__(v136, v135);
      v137 = v136 + v135;
      if (v46)
      {
        goto LABEL_98;
      }
    }

    *(a1 + 20) = v137;
    goto LABEL_5;
  }

  v98 = *v9;
  v97 = *(v9 + 1);
  v99 = *(v9 + 2);
  v100 = *(a1 + 20);
  v101 = sub_1B0CFC1B0(0x202AuLL, 0xE200000000000000, a1 + 8, v100);
  if (v102)
  {
    v103._countAndFlagsBits = 8234;
    v103._object = 0xE200000000000000;
    v101 = ByteBuffer._setStringSlowpath(_:at:)(v103, v100);
  }

  v104 = *(a1 + 20);
  v105 = (v104 + v101);
  if (!__CFADD__(v104, v101))
  {
    *(a1 + 20) = v105;
    v106 = sub_1B0CFC1B0(0x20455942uLL, 0xE400000000000000, a1 + 8, v105);
    if (v107)
    {
      v108._countAndFlagsBits = 541415746;
      v108._object = 0xE400000000000000;
      v106 = ByteBuffer._setStringSlowpath(_:at:)(v108, v105);
    }

    v109 = *(a1 + 20);
    v46 = __CFADD__(v109, v106);
    v110 = v109 + v106;
    if (v46)
    {
      goto LABEL_95;
    }

    *(a1 + 20) = v110;
    sub_1B0E14528(v98, v97, v99);
    v111 = *(a1 + 20);
    v112 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, a1 + 8, v111);
    if (v113)
    {
      v114._countAndFlagsBits = 2573;
      v114._object = 0xE200000000000000;
      v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v111);
    }

    v115 = *(a1 + 20);
    v46 = __CFADD__(v115, v112);
    v116 = v115 + v112;
    if (v46)
    {
      goto LABEL_100;
    }

    *(a1 + 20) = v116;
    sub_1B0447F00(v98);

    sub_1B0446B00(v23, type metadata accessor for Response);
    v25 = v166;
    v24 = v167;
    goto LABEL_5;
  }

  __break(1u);
LABEL_89:
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
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}

uint64_t FetchResponse.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v17[8] = *(v1 + 128);
  v17[9] = v3;
  v17[10] = *(v1 + 160);
  v18 = *(v1 + 176);
  v4 = *(v1 + 80);
  v17[4] = *(v1 + 64);
  v17[5] = v4;
  v5 = *(v1 + 112);
  v17[6] = *(v1 + 96);
  v17[7] = v5;
  v6 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v6;
  v7 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v7;
  v8 = sub_1B0D0CBC8(v17);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        v16 = sub_1B041BA38(v17);
        v27 = *(v16 + 128);
        v28 = *(v16 + 144);
        v29 = *(v16 + 160);
        v30 = *(v16 + 176);
        v23 = *(v16 + 64);
        v24 = *(v16 + 80);
        v25 = *(v16 + 96);
        v26 = *(v16 + 112);
        v19 = *v16;
        v20 = *(v16 + 16);
        v21 = *(v16 + 32);
        v22 = *(v16 + 48);
        MEMORY[0x1B2728D70](2);
        return MessageAttribute.hash(into:)(a1);
      }

      sub_1B041BA38(v17);
      v14 = 1;
    }

    else
    {
      sub_1B041BA38(v17);
      v14 = 0;
    }

    MEMORY[0x1B2728D70](v14);
    return sub_1B0E46C88();
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      v13 = 5;
    }

    else
    {
      v13 = 6;
    }
  }

  else
  {
    if (v8 != 3)
    {
      sub_1B041BA38(v17);
      MEMORY[0x1B2728D70](4);
      swift_beginAccess();
      return sub_1B0E46C38();
    }

    v9 = sub_1B041BA38(v17);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = *(v9 + 16);
    v19 = *v9;
    v20 = v12;
    LOBYTE(v21) = v10;
    MEMORY[0x1B2728D70](3);
    StreamingKind.hash(into:)(a1);
    v13 = v11;
  }

  return MEMORY[0x1B2728D70](v13);
}

uint64_t FetchResponse.hashValue.getter()
{
  sub_1B0E46C28();
  FetchResponse.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0C438()
{
  sub_1B0E46C28();
  FetchResponse.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0C47C(uint64_t a1)
{
  sub_1B0E46C28();
  FetchResponse.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0C4B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s12NIOIMAPCore213FetchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15) & 1;
}

uint64_t StreamingKind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  if (!(v7 >> 6))
  {
    MEMORY[0x1B2728D70](0);
    v10 = *(v5 + 16);
    MEMORY[0x1B2728D70](v10);
    if (v10)
    {
      v11 = (v5 + 32);
      do
      {
        v12 = *v11++;
        MEMORY[0x1B2728D70](v12);
        --v10;
      }

      while (v10);
    }

    if ((v6 & 1) == 0)
    {
      sub_1B0E46C68();
      v9 = v4;
      return MEMORY[0x1B2728D70](v9);
    }

    return sub_1B0E46C68();
  }

  v8 = *(v2 + 24);
  if (v7 >> 6 != 1)
  {
    v14 = (*(v2 + 17) << 8) | ((*(v2 + 21) | (*(v2 + 23) << 16)) << 40) | v6;
    if (v7 == 128 && (v8 | v4 | v5 | v14) == 0)
    {
      v9 = 2;
    }

    else if (v7 == 128 && v5 == 1 && !(v8 | v4 | v14))
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    return MEMORY[0x1B2728D70](v9);
  }

  MEMORY[0x1B2728D70](1);
  SectionSpecifier.hash(into:)(a1, v5, v4, v6);
  if (v7)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  v9 = v8;
  return MEMORY[0x1B2728D70](v9);
}

uint64_t StreamingKind.hashValue.getter()
{
  sub_1B0E46C28();
  StreamingKind.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0C6D0()
{
  sub_1B0E46C28();
  StreamingKind.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0C714(uint64_t a1)
{
  sub_1B0E46C28();
  StreamingKind.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0C750(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t StreamingKind.sectionSpecifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 >> 6)
  {
    v3 = v0[1];
    v4 = v0[2];
    if (v2 >> 6 == 1)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE964(v3, v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return v1;
}

uint64_t StreamingKind.offset.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 32);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      return *(v0 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t StreamingKind.debugDescription.getter()
{
  v1 = v0;
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1EB737EB0;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1B0E0F3C4(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v11) - v11);
    sub_1B0D547AC(v14, v20);
    sub_1B04394F4(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1B0D7E6B4(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  result = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  if (!(v6 >> 6))
  {
    if (a2[2].u8[0] > 0x3Fu)
    {
      return 0;
    }

    v15 = a2->i64[0];
    v16 = *(v4 + 16);
    if (v16 != *(a2->i64[0] + 16))
    {
      return 0;
    }

    if (v16)
    {
      v17 = v4 == v15;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v26 = (v4 + 32);
      v27 = (v15 + 32);
      while (v16)
      {
        if (*v26 != *v27)
        {
          return 0;
        }

        ++v26;
        ++v27;
        if (!--v16)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_81;
    }

LABEL_21:
    if (v5)
    {
      if ((a2[1].i8[0] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[1].i8[0] & 1) != 0 || result != a2->i64[1])
    {
      return 0;
    }

    return 1;
  }

  v7 = a1[3];
  if (v6 >> 6 != 1)
  {
    v18 = (*(a1 + 17) << 8) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 40) | v5;
    if (v6 == 128 && (v7 | result | v4 | v18) == 0)
    {
      v21 = a2[2].u8[0];
      if ((v21 & 0xC0) != 0x80)
      {
        return 0;
      }

      if (v21 != 128)
      {
        return 0;
      }

      v22 = vorrq_s8(*a2, a2[1]);
      return !*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    }

    if (v6 == 128 && v4 == 1 && !(v7 | result | v18))
    {
      v20 = a2[2].u8[0];
      if ((v20 & 0xC0) != 0x80 || v20 != 128 || a2->i64[0] != 1)
      {
        return 0;
      }
    }

    else
    {
      v23 = a2[2].u8[0];
      if ((v23 & 0xC0) != 0x80 || v23 != 128 || a2->i64[0] != 2)
      {
        return 0;
      }
    }

    return !(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]);
  }

  v8 = a2[2].i8[0];
  if ((v8 & 0xC0) != 0x40)
  {
    return 0;
  }

  v9 = a2->i64[0];
  v10 = *(v4 + 16);
  if (v10 != *(a2->i64[0] + 16))
  {
    return 0;
  }

  v11 = a2->i64[1];
  v12 = a2[1].i64[1];
  v13 = a2[1].u8[0];
  if (v10)
  {
    v14 = v4 == v9;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v24 = (v4 + 32);
    v25 = (v9 + 32);
    while (v10)
    {
      if (*v24 != *v25)
      {
        return 0;
      }

      ++v24;
      ++v25;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

LABEL_10:
  if (!v5)
  {
    if (!a2[1].i8[0])
    {
LABEL_56:
      if ((sub_1B045202C(result, a2->i64[1]) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_72;
    }

    return 0;
  }

  if (v5 == 1)
  {
    if (v13 != 1)
    {
      return 0;
    }

    goto LABEL_56;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      result = 0;
      if (v13 == 2 && v11 == 2)
      {
        goto LABEL_72;
      }
    }

    else
    {
      result = 0;
      if (v13 == 2 && v11 == 3)
      {
        goto LABEL_72;
      }
    }
  }

  else
  {
    if (!result)
    {
      if (v13 != 2 || v11)
      {
        return result;
      }

LABEL_72:
      if (v6)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) != 0 || v7 != v12)
      {
        return 0;
      }

      return 1;
    }

    result = 0;
    if (v13 == 2 && v11 == 1)
    {
      goto LABEL_72;
    }
  }

  return result;
}

uint64_t _s12NIOIMAPCore213FetchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v94[8] = *(a1 + 128);
  v94[9] = v3;
  v94[10] = *(a1 + 160);
  v95 = *(a1 + 176);
  v4 = *(a1 + 80);
  v94[4] = *(a1 + 64);
  v94[5] = v4;
  v5 = *(a1 + 112);
  v94[6] = *(a1 + 96);
  v94[7] = v5;
  v6 = *(a1 + 16);
  v94[0] = *a1;
  v94[1] = v6;
  v7 = *(a1 + 48);
  v94[2] = *(a1 + 32);
  v94[3] = v7;
  v8 = sub_1B0D0CBC8(v94);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        v38 = sub_1B041BA38(v94);
        v104 = *(v38 + 128);
        v105 = *(v38 + 144);
        v106 = *(v38 + 160);
        v107 = *(v38 + 176);
        v100 = *(v38 + 64);
        v101 = *(v38 + 80);
        v102 = *(v38 + 96);
        v103 = *(v38 + 112);
        v96 = *v38;
        v97 = *(v38 + 16);
        v98 = *(v38 + 32);
        v99 = *(v38 + 48);
        v39 = *(a2 + 16);
        v70 = *a2;
        v71 = v39;
        v40 = *(a2 + 48);
        v72 = *(a2 + 32);
        v73 = v40;
        v41 = *(a2 + 80);
        v74 = *(a2 + 64);
        v75 = v41;
        v42 = *(a2 + 112);
        v76 = *(a2 + 96);
        v77 = v42;
        v43 = *(a2 + 144);
        v78 = *(a2 + 128);
        v79 = v43;
        v80 = *(a2 + 160);
        v81 = *(a2 + 176);
        if (sub_1B0D0CBC8(&v70) == 2)
        {
          v44 = sub_1B041BA38(&v70);
          v45 = *(v44 + 144);
          v90 = *(v44 + 128);
          v91 = v45;
          v92 = *(v44 + 160);
          v93 = *(v44 + 176);
          v46 = *(v44 + 80);
          v86 = *(v44 + 64);
          v87 = v46;
          v47 = *(v44 + 112);
          v88 = *(v44 + 96);
          v89 = v47;
          v48 = *(v44 + 16);
          v82 = *v44;
          v83 = v48;
          v49 = *(v44 + 48);
          v84 = *(v44 + 32);
          v85 = v49;
          v21 = _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v96, v82.i8);
          return v21 & 1;
        }

LABEL_22:
        v21 = 0;
        return v21 & 1;
      }

      v22 = *sub_1B041BA38(v94);
      v23 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v23;
      v24 = *(a2 + 16);
      v96 = *a2;
      v97 = v24;
      v25 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v25;
      v26 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v26;
      v107 = *(a2 + 176);
      v27 = *(a2 + 160);
      v105 = *(a2 + 144);
      v106 = v27;
      v104 = *(a2 + 128);
      if (sub_1B0D0CBC8(&v96) != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = *sub_1B041BA38(v94);
      v33 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v33;
      v34 = *(a2 + 16);
      v96 = *a2;
      v97 = v34;
      v35 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v35;
      v36 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v36;
      v107 = *(a2 + 176);
      v37 = *(a2 + 160);
      v105 = *(a2 + 144);
      v106 = v37;
      v104 = *(a2 + 128);
      if (sub_1B0D0CBC8(&v96))
      {
        goto LABEL_22;
      }
    }

    v21 = *sub_1B041BA38(&v96) == v22;
    return v21 & 1;
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      v28 = *(a2 + 144);
      v104 = *(a2 + 128);
      v105 = v28;
      v106 = *(a2 + 160);
      v107 = *(a2 + 176);
      v29 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v29;
      v30 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v30;
      v31 = *(a2 + 16);
      v96 = *a2;
      v97 = v31;
      v32 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v32;
      if (sub_1B0D0CBC8(&v96) != 5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v62 = *(a2 + 144);
      v104 = *(a2 + 128);
      v105 = v62;
      v106 = *(a2 + 160);
      v107 = *(a2 + 176);
      v63 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v63;
      v64 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v64;
      v65 = *(a2 + 16);
      v96 = *a2;
      v97 = v65;
      v66 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v66;
      if (sub_1B0D0CBC8(&v96) != 6)
      {
        goto LABEL_22;
      }
    }

    v21 = 1;
    return v21 & 1;
  }

  if (v8 != 3)
  {
    v50 = sub_1B041BA38(v94);
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 20);
    v55 = *(v50 + 22);
    v56 = *(a2 + 144);
    v104 = *(a2 + 128);
    v105 = v56;
    v106 = *(a2 + 160);
    v107 = *(a2 + 176);
    v57 = *(a2 + 80);
    v100 = *(a2 + 64);
    v101 = v57;
    v58 = *(a2 + 112);
    v102 = *(a2 + 96);
    v103 = v58;
    v59 = *(a2 + 16);
    v96 = *a2;
    v97 = v59;
    v60 = *(a2 + 48);
    v98 = *(a2 + 32);
    v99 = v60;
    if (sub_1B0D0CBC8(&v96) == 4)
    {
      v61 = sub_1B041BA38(&v96);
      v21 = sub_1B0C2DB54(v51, v52, v53 | (v54 << 32) | (v55 << 48), *v61, *(v61 + 8), *(v61 + 16) | (*(v61 + 20) << 32) | (*(v61 + 22) << 48));
      return v21 & 1;
    }

    goto LABEL_22;
  }

  v9 = sub_1B041BA38(v94);
  v68 = *(v9 + 16);
  v69 = *v9;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(a2 + 48);
  v98 = *(a2 + 32);
  v99 = v12;
  v13 = *(a2 + 16);
  v96 = *a2;
  v97 = v13;
  v14 = *(a2 + 112);
  v102 = *(a2 + 96);
  v103 = v14;
  v15 = *(a2 + 80);
  v100 = *(a2 + 64);
  v101 = v15;
  v107 = *(a2 + 176);
  v16 = *(a2 + 160);
  v105 = *(a2 + 144);
  v106 = v16;
  v104 = *(a2 + 128);
  if (sub_1B0D0CBC8(&v96) != 3)
  {
    goto LABEL_22;
  }

  v17 = sub_1B041BA38(&v96);
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  v70 = v69;
  v71 = v68;
  LOBYTE(v72) = v10;
  v20 = *(v17 + 16);
  v82 = *v17;
  v83 = v20;
  LOBYTE(v84) = v18;
  if ((_s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(&v70, &v82) & 1) == 0)
  {
    goto LABEL_22;
  }

  v21 = v11 == v19;
  return v21 & 1;
}

uint64_t _s12NIOIMAPCore28ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v90 = a2;
  v3 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v87 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7AB0, &qword_1B0EFB400);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v87 + *(v22 + 56) - v21;
  v24 = a1;
  v25 = &v87 - v21;
  sub_1B0E0E034(v24, &v87 - v21, type metadata accessor for Response);
  sub_1B0E0E034(v90, v23, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B0E0E034(v25, v16, type metadata accessor for Response);
        v27 = *(v16 + 9);
        v91[8] = *(v16 + 8);
        v91[9] = v27;
        v91[10] = *(v16 + 10);
        v92 = *(v16 + 88);
        v28 = *(v16 + 5);
        v91[4] = *(v16 + 4);
        v91[5] = v28;
        v29 = *(v16 + 7);
        v91[6] = *(v16 + 6);
        v91[7] = v29;
        v30 = *(v16 + 1);
        v91[0] = *v16;
        v91[1] = v30;
        v31 = *(v16 + 3);
        v91[2] = *(v16 + 2);
        v91[3] = v31;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v32 = *(v23 + 9);
          v93[8] = *(v23 + 8);
          v93[9] = v32;
          v93[10] = *(v23 + 10);
          v94 = *(v23 + 88);
          v33 = *(v23 + 5);
          v93[4] = *(v23 + 4);
          v93[5] = v33;
          v34 = *(v23 + 7);
          v93[6] = *(v23 + 6);
          v93[7] = v34;
          v35 = *(v23 + 1);
          v93[0] = *v23;
          v93[1] = v35;
          v36 = *(v23 + 3);
          v93[2] = *(v23 + 2);
          v93[3] = v36;
          ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = _s12NIOIMAPCore213FetchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v91, v93);
          sub_1B0D0CBE4(v93);
          sub_1B0D0CBE4(v91);
LABEL_38:
          sub_1B0446B00(v25, type metadata accessor for Response);
          return ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 & 1;
        }

        sub_1B0D0CBE4(v91);
        goto LABEL_35;
      }

      sub_1B0E0E034(v25, v13, type metadata accessor for Response);
      v46 = *v13;
      v47 = *(v13 + 1);
      v49 = *(v13 + 2);
      v48 = *(v13 + 3);
      v50 = *(v13 + 4);
      v51 = v13[40];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v89 = v50;
        v90 = v25;
        v52 = *v23;
        v53 = *(v23 + 1);
        v55 = *(v23 + 2);
        v54 = *(v23 + 3);
        v88 = *(v23 + 4);
        v56 = v23[40];
        v57 = v46 == v52 && v47 == v53;
        if (!v57 && (sub_1B0E46A78() & 1) == 0)
        {
          v58 = v48;
          v59 = v49;
          goto LABEL_93;
        }

        v58 = v48;
        if (v51)
        {
          v59 = v49;
          if (v51 == 1)
          {
            if (v56 == 1)
            {
              v60 = v55 & 0xF000000000000007;
              if ((~v49 & 0xF000000000000007) != 0)
              {
                if (v60 == 0xF000000000000007)
                {
                  goto LABEL_71;
                }

                sub_1B04420EC(v55);
                v69 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v49, v55);
                sub_1B0447F00(v55);
                if ((v69 & 1) == 0)
                {
                  goto LABEL_71;
                }
              }

              else if (v60 != 0xF000000000000007)
              {
LABEL_71:
                LOBYTE(v56) = 1;
                LOBYTE(v51) = 1;
                goto LABEL_93;
              }

              v70 = v54;
              v57 = v58 == v54;
              v71 = v88;
              v72 = v89;
              if (!v57 || v89 != v88)
              {
                v74 = sub_1B0E46A78();

                sub_1B0BB6FE0(v55, v70, v71, 1u);

                v75 = v59;
                v76 = v58;
                v77 = v72;
                v78 = 1;
                goto LABEL_87;
              }

LABEL_89:

              sub_1B0BB6FE0(v55, v58, v72, v51);

              sub_1B0BB6FE0(v59, v58, v72, v51);
LABEL_90:
              v61 = v90;
              goto LABEL_30;
            }

            LOBYTE(v51) = 1;
LABEL_93:

            sub_1B0BB6FE0(v55, v54, v88, v56);

            sub_1B0BB6FE0(v59, v58, v89, v51);
LABEL_94:
            sub_1B0446B00(v90, type metadata accessor for Response);
            goto LABEL_36;
          }

          if (v56 != 2)
          {
            LOBYTE(v51) = 2;
            goto LABEL_93;
          }

          v68 = v55 & 0xF000000000000007;
          if ((~v49 & 0xF000000000000007) != 0)
          {
            if (v68 == 0xF000000000000007)
            {
              goto LABEL_79;
            }

            sub_1B04420EC(v55);
            v79 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v49, v55);
            sub_1B0447F00(v55);
            if ((v79 & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          else if (v68 != 0xF000000000000007)
          {
LABEL_79:
            LOBYTE(v56) = 2;
            LOBYTE(v51) = 2;
            goto LABEL_93;
          }

          v80 = v54;
          v57 = v58 == v54;
          v81 = v88;
          v72 = v89;
          if (v57 && v89 == v88)
          {
            goto LABEL_89;
          }

          v74 = sub_1B0E46A78();

          sub_1B0BB6FE0(v55, v80, v81, 2u);

          v75 = v59;
          v76 = v58;
          v77 = v72;
          v78 = 2;
LABEL_87:
          sub_1B0BB6FE0(v75, v76, v77, v78);
          if ((v74 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_90;
        }

        v59 = v49;
        if (v56)
        {
LABEL_92:
          LOBYTE(v51) = 0;
          goto LABEL_93;
        }

        v67 = v55 & 0xF000000000000007;
        if ((~v49 & 0xF000000000000007) != 0)
        {
          if (v67 == 0xF000000000000007)
          {
            goto LABEL_91;
          }

          sub_1B04420EC(v55);
          v83 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v49, v55);
          sub_1B0447F00(v55);
          if ((v83 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        else if (v67 != 0xF000000000000007)
        {
LABEL_91:
          LOBYTE(v56) = 0;
          goto LABEL_92;
        }

        v84 = v54;
        v57 = v58 == v54;
        v85 = v88;
        v72 = v89;
        if (v57 && v89 == v88)
        {
          goto LABEL_89;
        }

        v74 = sub_1B0E46A78();

        sub_1B0BB6FE0(v55, v84, v85, 0);

        v75 = v59;
        v76 = v58;
        v77 = v72;
        v78 = 0;
        goto LABEL_87;
      }

      sub_1B0BB6FE0(v49, v48, v50, v51);
    }

    else
    {
      sub_1B0E0E034(v25, v19, type metadata accessor for Response);
      if (!swift_getEnumCaseMultiPayload())
      {
        v62 = v89;
        sub_1B04453A4(v23, v89, type metadata accessor for ResponsePayload);
        ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = _s12NIOIMAPCore215ResponsePayloadO21__derived_enum_equalsySbAC_ACtFZ_0(v19, v62);
        sub_1B0446B00(v62, type metadata accessor for ResponsePayload);
        sub_1B0446B00(v19, type metadata accessor for ResponsePayload);
        goto LABEL_38;
      }

      sub_1B0446B00(v19, type metadata accessor for ResponsePayload);
    }

LABEL_35:
    sub_1B0398EFC(v25, &qword_1EB6E7AB0, &qword_1B0EFB400);
LABEL_36:
    ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = 0;
    return ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1B0E0E034(v25, v7, type metadata accessor for Response);
      v38 = *v7;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = sub_1B0C2DB54(v38, *(v7 + 1), *(v7 + 4) | (v7[22] << 48) | (*(v7 + 10) << 32), *v23, *(v23 + 1), *(v23 + 4) | (*(v23 + 10) << 32) | (v23[22] << 48));

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  sub_1B0E0E034(v25, v10, type metadata accessor for Response);
  v39 = *v10;
  v40 = v10[1];
  v41 = v10[2];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B0447F00(v39);

    goto LABEL_35;
  }

  v42 = *v23;
  v43 = *(v23 + 1);
  v44 = *(v23 + 2);
  v45 = *v23 & 0xF000000000000007;
  if ((~v39 & 0xF000000000000007) != 0)
  {
    if (v45 != 0xF000000000000007)
    {
      sub_1B04420EC(*v23);
      v64 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v39, v42);
      sub_1B0447F00(v42);
      if (v64)
      {
        goto LABEL_42;
      }

      sub_1B0447F00(v42);
    }

    sub_1B0447F00(v39);
    goto LABEL_61;
  }

  if (v45 != 0xF000000000000007)
  {
    sub_1B0447F00(*v23);

LABEL_61:

    goto LABEL_62;
  }

LABEL_42:
  if (v40 == v43 && v41 == v44)
  {
    sub_1B0447F00(v42);

    sub_1B0447F00(v39);

    goto LABEL_29;
  }

  v66 = sub_1B0E46A78();
  sub_1B0447F00(v42);

  sub_1B0447F00(v39);

  if ((v66 & 1) == 0)
  {
LABEL_62:
    sub_1B0446B00(v25, type metadata accessor for Response);
    goto LABEL_36;
  }

LABEL_29:
  v61 = v25;
LABEL_30:
  sub_1B0446B00(v61, type metadata accessor for Response);
  ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = 1;
  return ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 & 1;
}

uint64_t _s12NIOIMAPCore229ResponseOrContinuationRequestO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseOrContinuationRequest(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7AB8, &qword_1B0EFB408);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v17 = &v33 + *(v16 + 56) - v14;
  sub_1B0E0E034(a1, &v33 - v14, type metadata accessor for ResponseOrContinuationRequest);
  sub_1B0E0E034(a2, v17, type metadata accessor for ResponseOrContinuationRequest);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0E0E034(v15, v12, type metadata accessor for ResponseOrContinuationRequest);
    v20 = *v12;
    v19 = *(v12 + 1);
    v21 = *(v12 + 2);
    v22 = v12[24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0BEFC7C(v20, v19, v21, v22);
LABEL_7:
      sub_1B0398EFC(v15, &qword_1EB6E7AB8, &qword_1B0EFB408);
LABEL_28:
      v18 = 0;
      return v18 & 1;
    }

    v23 = *v17;
    v24 = *(v17 + 1);
    v25 = *(v17 + 2);
    if (v22)
    {
      if (v17[24])
      {
        v26 = sub_1B0C2DB54(v20, v19, v21 & 0xFFFFFFFFFFFFFFLL, *v17, *(v17 + 1), v25 & 0xFFFFFFFFFFFFFFLL);
        sub_1B0BEFC7C(v23, v24, v25, 1);
        sub_1B0BEFC7C(v20, v19, v21, 1);
        if (v26)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v17[24])
    {
      v27 = 1;
LABEL_26:
      sub_1B0BEFC7C(v23, v24, v25, v27);
      sub_1B0BEFC7C(v20, v19, v21, v22);
      goto LABEL_27;
    }

    v28 = v23 & 0xF000000000000007;
    if ((~v20 & 0xF000000000000007) != 0)
    {
      if (v28 != 0xF000000000000007)
      {
        sub_1B04420EC(*v17);
        v29 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v20, v23);
        sub_1B0447F00(v23);
        if (v29)
        {
LABEL_19:
          if (v19 == v24 && v21 == v25)
          {
            sub_1B0BEFC7C(v23, v19, v21, 0);
            sub_1B0BEFC7C(v20, v19, v21, 0);
LABEL_31:
            sub_1B0446B00(v15, type metadata accessor for ResponseOrContinuationRequest);
            v18 = 1;
            return v18 & 1;
          }

          v31 = sub_1B0E46A78();
          sub_1B0BEFC7C(v23, v24, v25, 0);
          sub_1B0BEFC7C(v20, v19, v21, 0);
          if (v31)
          {
            goto LABEL_31;
          }

LABEL_27:
          sub_1B0446B00(v15, type metadata accessor for ResponseOrContinuationRequest);
          goto LABEL_28;
        }
      }
    }

    else if (v28 == 0xF000000000000007)
    {
      goto LABEL_19;
    }

LABEL_25:
    v27 = 0;
    goto LABEL_26;
  }

  sub_1B0E0E034(v15, v9, type metadata accessor for ResponseOrContinuationRequest);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0446B00(v9, type metadata accessor for Response);
    goto LABEL_7;
  }

  sub_1B04453A4(v17, v6, type metadata accessor for Response);
  v18 = _s12NIOIMAPCore28ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v9, v6);
  sub_1B0446B00(v6, type metadata accessor for Response);
  sub_1B0446B00(v9, type metadata accessor for Response);
  sub_1B0446B00(v15, type metadata accessor for ResponseOrContinuationRequest);
  return v18 & 1;
}

uint64_t sub_1B0E0E034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0E0E140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B0E0E18C()
{
  result = qword_1EB6E7AA0;
  if (!qword_1EB6E7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AA0);
  }

  return result;
}

unint64_t sub_1B0E0E1E4()
{
  result = qword_1EB6E7AA8;
  if (!qword_1EB6E7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AA8);
  }

  return result;
}

uint64_t sub_1B0E0E238(uint64_t a1)
{
  result = type metadata accessor for Response(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0E0E2A4(uint64_t a1)
{
  result = type metadata accessor for ResponsePayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0E0E33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0E0E38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0E0E3DC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 32) & 1 | (a2 << 6);
    *(result + 16) &= 3uLL;
    *(result + 32) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t ResponseCodeAppend.init(uidValidity:uids:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for ResponseCodeAppend(0) + 20);

  return sub_1B074BA2C(a2, v4);
}

uint64_t type metadata accessor for ResponseCodeAppend(uint64_t a1)
{
  result = qword_1EB6DE5D8;
  if (!qword_1EB6DE5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResponseCodeAppend.uids.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResponseCodeAppend(0) + 20);

  return sub_1B03D08AC(v3, a1);
}

uint64_t ResponseCodeAppend.uids.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ResponseCodeAppend(0) + 20);

  return sub_1B0B4E054(a1, v3);
}

uint64_t static ResponseCodeAppend.__derived_struct_equals(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for ResponseCodeAppend(0);
  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t ResponseCodeAppend.hash(into:)(uint64_t a1)
{
  sub_1B0E46C88();
  type metadata accessor for ResponseCodeAppend(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  return sub_1B0E447C8();
}

uint64_t ResponseCodeAppend.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  type metadata accessor for ResponseCodeAppend(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0E73C()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0E7C4(uint64_t a1)
{
  sub_1B0E46C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  return sub_1B0E447C8();
}

uint64_t sub_1B0E0E834(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0E8B8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0E0E928()
{
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v2 = *(v0 + 20);
  v3 = sub_1B0CFC1B0(0x4955444E45505041uLL, 0xEA00000000002044, v0 + 8, v2);
  if (v4)
  {
    v5._countAndFlagsBits = 0x4955444E45505041;
    v5._object = 0xEA00000000002044;
    v3 = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = v3;

  v8 = *(v0 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 20) = v10;
  type metadata accessor for ResponseCodeAppend(0);
  v11 = sub_1B0E20018(v0);
  v12 = __OFADD__(v6, v11);
  result = v6 + v11;
  if (v12)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0E0EA4C()
{
  result = qword_1EB6E7AC0;
  if (!qword_1EB6E7AC0)
  {
    type metadata accessor for ResponseCodeAppend(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AC0);
  }

  return result;
}

unint64_t sub_1B0E0EACC(uint64_t a1)
{
  result = sub_1B09AFEB4(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ResponseCodeCopy.sourceUIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ResponseCodeCopy.destinationUIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ResponseCodeCopy.__derived_struct_equals(_:_:)(int a1, int32x2_t *a2, int32x2_t *a3, int a4, int32x2_t *a5, int32x2_t *a6)
{
  if (a1 != a4 || (sub_1B03D37DC(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03D37DC(a3, a6);
}

uint64_t ResponseCodeCopy.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C88();
  v6 = *(a3 + 16);
  MEMORY[0x1B2728D70](v6);
  if (v6)
  {
    v7 = a3 + 36;
    do
    {
      sub_1B0E46C88();
      sub_1B0E46C88();
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v8 = *(a4 + 16);
  result = MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v10 = a4 + 36;
    do
    {
      sub_1B0E46C88();
      result = sub_1B0E46C88();
      v10 += 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t ResponseCodeCopy.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  ResponseCodeCopy.hash(into:)(v7, a1, a2, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0ED84()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1B0E46C28();
  ResponseCodeCopy.hash(into:)(v5, v1, v3, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0EDEC(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  sub_1B0E46C28();
  ResponseCodeCopy.hash(into:)(v6, v2, v4, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E0EE44(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if ((sub_1B03D37DC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03D37DC(v3, v2);
}

uint64_t sub_1B0E0EEA8(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v7 = *(v3 + 20);
  v8 = sub_1B0CFC1B0(0x2044495559504F43uLL, 0xE800000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x2044495559504F43;
    v10._object = 0xE800000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;

  v13 = *(v3 + 20);
  v14 = __CFADD__(v13, v11);
  v15 = v13 + v11;
  if (v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + 20) = v15;
  result = sub_1B0E0F028(a2);
  v16 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v3 + 20);
  v14 = __CFADD__(v20, result);
  v21 = v20 + result;
  if (v14)
  {
    goto LABEL_13;
  }

  *(v3 + 20) = v21;
  v22 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = sub_1B0E0F028(a3);
  v24 = __OFADD__(v22, v23);
  result = v23 + v22;
  if (v24)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

void *sub_1B0E0F028(void *result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v19[2] = sub_1B0E0F1A4;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 44;
  v19[7] = 0xE100000000000000;
  result = sub_1B0DE710C(0, sub_1B0DD377C, v19, v3);
  v12 = result + v8;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return (result + v8);
  }

  v13 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result = (result + v12);
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0E0F1A4(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B0E31F9C();
  v6 = 0;
  if (v3 < v4)
  {
    v7 = *(a2 + 20);
    result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, a2 + 8, v7);
    if (v9)
    {
      v10._countAndFlagsBits = 58;
      v10._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = result;
    v12 = *(a2 + 20);
    v13 = __CFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      goto LABEL_9;
    }

    *(a2 + 20) = v14;
    result = sub_1B0E31F9C();
    v6 = v11 + result;
    if (__OFADD__(v11, result))
    {
LABEL_10:
      __break(1u);
      return result;
    }
  }

  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1B0E0F270()
{
  result = qword_1EB6E7AC8;
  if (!qword_1EB6E7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AC8);
  }

  return result;
}

void sub_1B0E0F2D4(uint64_t a1)
{
  v3 = *(v1 + 20);
  v4 = sub_1B0CFC1B0(0x202AuLL, 0xE200000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 8234;
    v6._object = 0xE200000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v4);
  v10 = v8 + v4;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v10;
  sub_1B0E12A04(a1);
  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v1 + 20);
  v14 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v1 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 2573;
    v16._object = 0xE200000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = *(v1 + 20);
  v9 = __CFADD__(v17, v14);
  v18 = v17 + v14;
  if (v9)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v18;
  if (__OFADD__(v12, v14))
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1B0E0F3C4(uint64_t a1)
{
  v5 = v1;
  v6 = *(a1 + 32);
  if (v6 >> 6)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v6 >> 6 == 1)
    {
      v9 = v1[5];
      result = sub_1B0CFC1B0(0x59444F42uLL, 0xE400000000000000, (v1 + 2), v9);
      if (v11)
      {
        v12._countAndFlagsBits = 1497648962;
        v12._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
      }

      v13 = result;
      v14 = v1[5];
      v15 = __CFADD__(v14, result);
      v16 = v14 + result;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        v1[5] = v16;
        result = sub_1B0E246D4(v7, v8, v2);
        v17 = __OFADD__(v13, result);
        v3 = v13 + result;
        if (!v17)
        {
          if (v6)
          {
            v18 = 0;
LABEL_37:
            result = v3 + v18;
            if (!__OFADD__(v3, v18))
            {
              return result;
            }

            __break(1u);
            goto LABEL_40;
          }

          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v7 = 0x5952414E4942;
    v5 = v1 + 5;
    v19 = v1[5];
    v8 = (v5 - 3);
    result = sub_1B0CFC1B0(0x5952414E4942uLL, 0xE600000000000000, (v5 - 3), v19);
    if (v20)
    {
      v21._countAndFlagsBits = 0x5952414E4942;
      v21._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
    }

    LODWORD(v22) = *v5 + result;
    if (!__CFADD__(*v5, result))
    {
      goto LABEL_43;
    }

    __break(1u);
  }

  v22 = v2 | v8;
  if (!(v2 | v8 | v7 | v4) && v6 == 128)
  {
    v7 = 0x323238434652;
    v24 = v5[5];
    v5 += 5;
    v23 = v24;
    result = sub_1B0CFC1B0(0x323238434652uLL, 0xE600000000000000, (v5 - 3), v24);
    if (v25)
    {
      v26._countAndFlagsBits = 0x323238434652;
      v26._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v22 = (*v5 + result);
    if (!__CFADD__(*v5, result))
    {
      goto LABEL_43;
    }

    __break(1u);
  }

  v27 = v22 | v4;
  if (v6 != 128 || v7 != 1 || v27 != 0)
  {
    v31 = v5[5];
    v5 += 5;
    v30 = v31;
    result = sub_1B0CFC1B0(0x482E323238434652uLL, 0xED00005245444145, (v5 - 3), v31);
    if (v32)
    {
      v33._countAndFlagsBits = 0x482E323238434652;
      v33._object = 0xED00005245444145;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    LODWORD(v22) = *v5 + result;
    if (!__CFADD__(*v5, result))
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_33:
    v34 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v34);

    MEMORY[0x1B2726E80](62, 0xE100000000000000);
    v35 = v5[5];
    v36 = sub_1B0CFC1B0(0x3CuLL, 0xE100000000000000, (v5 + 2), v35);
    if (v37)
    {
      v38._countAndFlagsBits = 60;
      v38._object = 0xE100000000000000;
      v36 = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
    }

    v18 = v36;

    v39 = v5[5];
    v15 = __CFADD__(v39, v18);
    v40 = v39 + v18;
    if (!v15)
    {
      v5[5] = v40;
      goto LABEL_37;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

LABEL_40:
  v42 = v5[5];
  v5 += 5;
  v41 = v42;
  result = sub_1B0CFC1B0(0x542E323238434652uLL, 0xEB00000000545845, (v5 - 3), v42);
  if (v43)
  {
    v44._countAndFlagsBits = 0x542E323238434652;
    v44._object = 0xEB00000000545845;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
  }

  LODWORD(v22) = *v5 + result;
  if (__CFADD__(*v5, result))
  {
    goto LABEL_48;
  }

LABEL_43:
  *v5 = v22;
  return result;
}

uint64_t ResponseEncodeBuffer.writeResponse(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v5 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1B0DF52FC(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = *v7;
      v15 = sub_1B0E10A9C(*v7, *(v7 + 1), *(v7 + 2));
      sub_1B0447F00(v18);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1B0E103B0(*v7, *(v7 + 1), *(v7 + 4) | (*(v7 + 10) << 32) | (v7[22] << 48));
      v15 = v16;
    }

    else
    {
      ResponseEncodeBuffer.writeContinuationRequest(_:)(0xF000000000000007, 0x676E696C6469uLL, 0xE600000000000000, 0);
      return v20;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v7 + 9);
      v29 = *(v7 + 8);
      v30 = v9;
      v31 = *(v7 + 10);
      v32 = *(v7 + 88);
      v10 = *(v7 + 5);
      v25 = *(v7 + 4);
      v26 = v10;
      v11 = *(v7 + 7);
      v27 = *(v7 + 6);
      v28 = v11;
      v12 = *(v7 + 1);
      v22 = *v7;
      *v23 = v12;
      v13 = *(v7 + 3);
      *&v23[16] = *(v7 + 2);
      v24 = v13;
      sub_1B0E0FDBC(&v22);
      v15 = v14;
      sub_1B0D0CBE4(&v22);
    }

    else
    {
      v19 = *(v7 + 1);
      v22 = *v7;
      *v23 = v19;
      *&v23[9] = *(v7 + 25);
      v15 = sub_1B0E30484(&v22);
      v33 = v22;
      sub_1B03B1198(&v33);
      v34[0] = *v23;
      *(v34 + 9) = *&v23[9];
      sub_1B0D0CD48(v34);
    }
  }

  else
  {
    sub_1B0E105CC(v7, v4);
    sub_1B0E0F2D4(v4);
    v15 = v17;
    sub_1B0DAF448(v4);
  }

  return v15;
}

unint64_t ResponseEncodeBuffer.readBytes()()
{
  v1 = v0;
  result = EncodeBuffer.nextChunk()();
  if (*(v0 + 20) == *(v0 + 16))
  {
    v3 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      swift_beginAccess();
      v6 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v5 + 16));

      *(v1 + 8) = v6;
      v5 = v6;
    }

    swift_beginAccess();
    *(v1 + 24) = *(v5 + 16);
    *(v1 + 28) = 0;
    *(v1 + 30) = 0;
    *(v1 + 16) = 0;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ResponseEncodeBuffer.init(buffer:options:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = a3;
  v8 = a2;
  v11 = HIDWORD(a2);
  v12 = HIDWORD(a3);
  v13 = HIWORD(a3);
  if (a4)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *a6 = a5;
  *(a6 + 5) = 0x80;
  *(a6 + 1) = v14;
  *(a6 + 8) = a1;
  *(a6 + 16) = v8;
  *(a6 + 20) = v11;
  *(a6 + 24) = v7;
  *(a6 + 28) = v12;
  *(a6 + 30) = v13;
  *(a6 + 32) = result;
  *(a6 + 40) = v16;
  *(a6 + 48) = v17;
  return result;
}

uint64_t ResponseEncodeBuffer.init(buffer:capabilities:loggingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t a5@<X8>)
{

  result = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *a5 = a4;
  *(a5 + 5) = 0x80;
  *(a5 + 1) = 256;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 28) = WORD2(a3);
  *(a5 + 30) = BYTE6(a3);
  *(a5 + 32) = result;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  return result;
}

void ResponseEncodeBuffer.writeContinuationRequest(_:)(unint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  v11 = sub_1B0CFC1B0(0x202BuLL, 0xE200000000000000, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 8235;
    v13._object = 0xE200000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v4 + 20) = v17;
  if ((a4 & 1) == 0)
  {
    v21 = sub_1B0E14528(a1, a2, a3);
    v22 = v14 + v21;
    if (!__OFADD__(v14, v21))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = a2;
  v4 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) < a2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = (WORD2(a3) << 8) | BYTE6(a3);
  if ((a3 - v19) < HIDWORD(a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32[0] = a1;
  v32[1] = a2;
  v33 = a3;
  v34 = WORD2(a3);
  v35 = BYTE6(a3);
  v36 = a2;
  v37 = HIDWORD(a2);
  swift_beginAccess();
  if (v4 < -4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  a3 = (4 * ((v4 + 2) / 3));
  a2 = *(a1 + 24);
  a4 = v19 + v18;

  if (v4 < 1)
  {
LABEL_13:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v20 = sub_1B0E45278();
  *(v20 + 16) = a3;
LABEL_14:
  v31 = 0;
  sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, a2 + a4, v4, v20 + 32, a3, 0, &v31);
  if (a3 < v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v20 + 16) = v31;
  sub_1B04394F4(v32);
  sub_1B0D791F8(v20);
  v24 = v23;

  v22 = v14 + v24;
  if (__OFADD__(v14, v24))
  {
LABEL_28:
    __break(1u);
    return;
  }

LABEL_16:
  v25 = *(v5 + 20);
  v26 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v5 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 2573;
    v28._object = 0xE200000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v5 + 20);
  v16 = __CFADD__(v29, v26);
  v30 = v29 + v26;
  if (v16)
  {
    goto LABEL_22;
  }

  *(v5 + 20) = v30;
  if (__OFADD__(v22, v26))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_1B0E0FDBC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 144);
  v87[8] = *(a1 + 128);
  v87[9] = v3;
  v87[10] = *(a1 + 160);
  v88 = *(a1 + 176);
  v4 = *(a1 + 80);
  v87[4] = *(a1 + 64);
  v87[5] = v4;
  v5 = *(a1 + 112);
  v87[6] = *(a1 + 96);
  v87[7] = v5;
  v6 = *(a1 + 16);
  v87[0] = *a1;
  v87[1] = v6;
  v7 = *(a1 + 48);
  v87[2] = *(a1 + 32);
  v87[3] = v7;
  v8 = sub_1B0D0CBC8(v87);
  if (v8 <= 2)
  {
LABEL_12:
    if (!v8)
    {
LABEL_31:
      v46 = *sub_1B041BA38(v87);
      v47 = *(v1 + 20);
      v48 = sub_1B0CFC1B0(0x202AuLL, 0xE200000000000000, v1 + 8, v47);
      if (v49)
      {
        v50._countAndFlagsBits = 8234;
        v50._object = 0xE200000000000000;
        v48 = ByteBuffer._setStringSlowpath(_:at:)(v50, v47);
      }

      v51 = v48;
      v52 = *(v1 + 20);
      v53 = (v52 + v48);
      if (!__CFADD__(v52, v48))
      {
        *(v1 + 20) = v53;
        LODWORD(v89) = v46;
        v54 = sub_1B0E469C8();
        v56 = v55;
        v57 = sub_1B0CFC1B0(v54, v55, v1 + 8, v53);
        if (v58)
        {
          v59._countAndFlagsBits = v54;
          v59._object = v56;
          v57 = ByteBuffer._setStringSlowpath(_:at:)(v59, v53);
        }

        v60 = v57;

        v61 = *(v2 + 20);
        v62 = (v61 + v60);
        if (!__CFADD__(v61, v60))
        {
          *(v2 + 20) = v62;
          if (!__OFADD__(v51, v60))
          {
            v63 = sub_1B0CFC1B0(0x2820484354454620uLL, 0xE800000000000000, v2 + 8, (v61 + v60));
            if (v64)
            {
              v65._countAndFlagsBits = 0x2820484354454620;
              v65._object = 0xE800000000000000;
              v63 = ByteBuffer._setStringSlowpath(_:at:)(v65, v62);
            }

            v66 = *(v2 + 20);
            v19 = __CFADD__(v66, v63);
            v67 = v66 + v63;
            if (!v19)
            {
              *(v2 + 20) = v67;
              if (!__OFADD__(v51 + v60, v63))
              {
                return;
              }

              __break(1u);
              goto LABEL_44;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v8 != 1)
    {
LABEL_44:
      v68 = sub_1B041BA38(v87);
      v97 = *(v68 + 128);
      v98 = *(v68 + 144);
      v99 = *(v68 + 160);
      v100 = *(v68 + 176);
      v93 = *(v68 + 64);
      v94 = *(v68 + 80);
      v95 = *(v68 + 96);
      v96 = *(v68 + 112);
      v89 = *v68;
      v90 = *(v68 + 16);
      v91 = *(v68 + 32);
      v92 = *(v68 + 48);
      v69 = *(v2 + 1) | (*(v2 + 5) << 32);
      if ((v69 & 0x8000000000000000) == 0)
      {
LABEL_73:
        __break(1u);
        return;
      }

      if ((*(v2 + 1) & 1) == 0)
      {
        *(v2 + 5) = 0x80;
        *(v2 + 1) = v69 & 0x100 | 1;
        sub_1B0DDE350(&v89);
        return;
      }

      v70 = *(v2 + 20);
      v71 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v70);
      if (v72)
      {
        v73._countAndFlagsBits = 32;
        v73._object = 0xE100000000000000;
        v71 = ByteBuffer._setStringSlowpath(_:at:)(v73, v70);
      }

      v74 = *(v2 + 20);
      v19 = __CFADD__(v74, v71);
      v75 = v74 + v71;
      if (v19)
      {
        goto LABEL_69;
      }

      *(v2 + 20) = v75;
      if (!__OFADD__(v71, sub_1B0DDE350(&v89)))
      {
        return;
      }

      __break(1u);
      goto LABEL_52;
    }

    sub_1B041BA38(v87);
    v23 = *(v1 + 20);
    v24 = sub_1B0CFC1B0(0x202AuLL, 0xE200000000000000, v1 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = 8234;
      v26._object = 0xE200000000000000;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v28 = *(v1 + 20);
    v19 = __CFADD__(v28, v24);
    v29 = v28 + v24;
    if (v19)
    {
      goto LABEL_62;
    }

    *(v1 + 20) = v29;
    v30 = sub_1B0E31F9C();
    v31 = v27 + v30;
    if (__OFADD__(v27, v30))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v32 = *(v1 + 20);
    v33 = sub_1B0CFC1B0(0x4354454644495520uLL, 0xEB00000000282048, v1 + 8, v32);
    if (v34)
    {
      v35._countAndFlagsBits = 0x4354454644495520;
      v35._object = 0xEB00000000282048;
      v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
    }

    v36 = *(v1 + 20);
    v19 = __CFADD__(v36, v33);
    v37 = v36 + v33;
    if (v19)
    {
      goto LABEL_66;
    }

    *(v1 + 20) = v37;
    v22 = __OFADD__(v31, v33);
    v8 = v31 + v33;
    if (!v22)
    {
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v8 <= 4)
  {
    if (v8 != 3)
    {
LABEL_52:
      v76 = sub_1B041BA38(v87);
      v77 = *v76;
      v78 = *(v76 + 8);
      v79 = *(v76 + 16);
      HIDWORD(v89) = *(v76 + 12);
      LODWORD(v90) = v79;
      *(&v90 + 3) = *(v76 + 19);
      *&v89 = v77;
      DWORD2(v89) = v78;
      if (*v2 != 1)
      {
        ByteBuffer.writeBuffer(_:)(&v89);
        return;
      }

      v80 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v80);

      MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
      v81 = *(v2 + 20);
      v82 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v2 + 8, v81);
      if (v83)
      {
        v84._countAndFlagsBits = 91;
        v84._object = 0xE100000000000000;
        v82 = ByteBuffer._setStringSlowpath(_:at:)(v84, v81);
      }

      v85 = v82;

      v86 = *(v2 + 20);
      v19 = __CFADD__(v86, v85);
      v45 = v86 + v85;
      if (!v19)
      {
LABEL_56:
        *(v2 + 20) = v45;
        return;
      }

      goto LABEL_68;
    }

    v9 = sub_1B041BA38(v87);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    v89 = *v9;
    v90 = v11;
    LOBYTE(v91) = v10;
    v12 = *(v1 + 1) | (*(v1 + 5) << 32);
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if ((*(v1 + 1) & 1) == 0)
    {
      *(v1 + 5) = 0x80;
      *(v1 + 1) = v12 & 0x100 | 1;
      sub_1B0E10630(&v89);
      return;
    }

    v13 = *(v1 + 20);
    v14 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 32;
      v16._object = 0xE100000000000000;
      v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = v14;
    v18 = *(v1 + 20);
    v19 = __CFADD__(v18, v14);
    v20 = v18 + v14;
    if (v19)
    {
      goto LABEL_70;
    }

    *(v1 + 20) = v20;
    v21 = sub_1B0E10630(&v89);
    v22 = __OFADD__(v17, v21);
    v8 = v17 + v21;
    if (!v22)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_24:
  if (v8 != 5)
  {
    v38 = *(v1 + 1) | (*(v1 + 5) << 32);
    if ((v38 & 0x8000000000000000) == 0)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v39 = v38 & 0x8000000100;
    *(v1 + 1) = v39;
    *(v1 + 5) = BYTE4(v39);
    v40 = *(v1 + 20);
    v41 = sub_1B0CFC1B0(0xA0D29uLL, 0xE300000000000000, v1 + 8, v40);
    if (v42)
    {
      v43._countAndFlagsBits = 658729;
      v43._object = 0xE300000000000000;
      v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
    }

    v44 = *(v1 + 20);
    v19 = __CFADD__(v44, v41);
    v45 = v44 + v41;
    if (!v19)
    {
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_31;
  }
}

void sub_1B0E103B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = (WORD2(a3) << 8) | BYTE6(a3);
  if ((a3 - v7) < HIDWORD(a2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32[0] = a1;
  v32[1] = a2;
  v33 = a3;
  v34 = WORD2(a3);
  v35 = BYTE6(a3);
  v36 = a2;
  v37 = HIDWORD(a2);
  swift_beginAccess();
  if (v6 < -4)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = 4 * ((v6 + 2) / 3);
  v10 = *(a1 + 24);
  v11 = v7 + v5;

  if (v6 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1B0E45278();
    *(v12 + 16) = v9;
  }

  v31 = 0;
  sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, v10 + v11, v6, v12 + 32, v9, 0, &v31);
  if (v9 < v31)
  {
    goto LABEL_20;
  }

  *(v12 + 16) = v31;
  sub_1B04394F4(v32);
  v13 = *(v4 + 20);
  v14 = sub_1B0CFC1B0(0x202BuLL, 0xE200000000000000, v4 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 8235;
    v16._object = 0xE200000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;
  v18 = *(v4 + 20);
  v19 = __CFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
    goto LABEL_21;
  }

  *(v4 + 20) = v20;
  sub_1B0D791F8(v12);
  v22 = v21;

  v23 = __OFADD__(v17, v22);
  v24 = v17 + v22;
  if (v23)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = *(v4 + 20);
  v26 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v4 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 2573;
    v28._object = 0xE200000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v4 + 20);
  v19 = __CFADD__(v29, v26);
  v30 = v29 + v26;
  if (v19)
  {
    goto LABEL_23;
  }

  *(v4 + 20) = v30;
  if (__OFADD__(v24, v26))
  {
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1B0E105CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponsePayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E10630(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B0E0F3C4(a1);
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = (v8 + result);
  if (__CFADD__(v8, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v9;
  v10 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v11);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v12 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v9);
  if (v13)
  {
    v14._countAndFlagsBits = 123;
    v14._object = 0xE100000000000000;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v9);
  }

  v15 = v12;

  v16 = *(v2 + 20);
  v17 = __CFADD__(v16, v15);
  v18 = v16 + v15;
  if (v17)
  {
    goto LABEL_12;
  }

  *(v2 + 20) = v18;
  result = v10 + v15;
  if (__OFADD__(v10, v15))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E1078C(char a1, uint64_t (*a2)(__int128 *))
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v4 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v5 = dword_1EB737EB8;
  v6 = word_1EB737EBC;
  v7 = byte_1EB737EBE;

  LOBYTE(v13) = a1 & 1;
  BYTE5(v13) = 0x80;
  *(&v13 + 1) = 256;
  *(&v13 + 1) = v4;
  *&v14 = qword_1EB737EB0;
  DWORD2(v14) = v5;
  WORD6(v14) = v6;
  BYTE14(v14) = v7;
  *&v15 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v15 + 1) = v8;
  v16 = v9;
  result = a2(&v13);
  if (DWORD1(v14) < v14)
  {
    __break(1u);
  }

  else if (DWORD2(v14) - (BYTE14(v14) | (WORD6(v14) << 8)) >= DWORD1(v14))
  {
    v17[0] = *(&v13 + 1);
    v17[1] = v14;
    v18 = DWORD2(v14);
    v19 = WORD6(v14);
    v20 = BYTE14(v14);
    v21 = v14;
    v22 = DWORD1(v14);
    v11 = DWORD1(v14) - v14;
    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](v11);
    sub_1B0D547AC(v17, v23);
    sub_1B04394F4(v17);
    v12 = *&v23[0];
    v23[0] = v13;
    v23[1] = v14;
    v23[2] = v15;
    v24 = v16;
    sub_1B0E10930(v23);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t ResponseEncodingOptions.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E10A38()
{
  result = qword_1EB6E7AD0;
  if (!qword_1EB6E7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AD0);
  }

  return result;
}

uint64_t sub_1B0E10A9C(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x202AuLL, 0xE200000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 8234;
    v10._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  result = sub_1B0CFC1B0(0x20455942uLL, 0xE400000000000000, v3 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 541415746;
    v15._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(v3 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_15;
  }

  *(v3 + 20) = v19;
  result = sub_1B0E14528(a1, a2, a3);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v11 + v20;
  if (__OFADD__(v11, v20))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = *(v3 + 20);
  result = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v3 + 8, v22);
  if (v23)
  {
    v24._countAndFlagsBits = 2573;
    v24._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v3 + 20);
  v18 = __CFADD__(v25, result);
  v26 = v25 + result;
  if (v18)
  {
    goto LABEL_18;
  }

  *(v3 + 20) = v26;
  v27 = __OFADD__(v21, result);
  result += v21;
  if (v27)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_1B0E10C04@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0E10CBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1B0E46C28();
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a3;
    }

    else
    {
      MEMORY[0x1B2728D70](2);
      v6 = a1;
      a1 = a2;
    }

    goto LABEL_7;
  }

  MEMORY[0x1B2728D70](0);
  v7 = 0;
  if ((a2 & 1) == 0)
  {
    v6 = 1;
LABEL_7:
    MEMORY[0x1B2728D70](v6);
    v7 = a1;
  }

  MEMORY[0x1B2728D70](v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E10D70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v3 != 1)
    {
      MEMORY[0x1B2728D70](2);
      v3 = v1;
      v1 = v2;
    }

    goto LABEL_6;
  }

  MEMORY[0x1B2728D70](0);
  v4 = 0;
  if ((v2 & 1) == 0)
  {
    v3 = 1;
LABEL_6:
    MEMORY[0x1B2728D70](v3);
    v4 = v1;
  }

  return MEMORY[0x1B2728D70](v4);
}

uint64_t sub_1B0E10DE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0E46C28();
  if (v4)
  {
    if (v4 != 1)
    {
      MEMORY[0x1B2728D70](2);
      v4 = v2;
      v2 = v3;
    }

    goto LABEL_6;
  }

  MEMORY[0x1B2728D70](0);
  v5 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
LABEL_6:
    MEMORY[0x1B2728D70](v4);
    v5 = v2;
  }

  MEMORY[0x1B2728D70](v5);
  return sub_1B0E46CB8();
}

uint64_t ResponseParser.Options.parsedStringCache.getter()
{
  v1 = *(v0 + 32);
  sub_1B0423B38(v1, *(v0 + 40));
  return v1;
}

uint64_t ResponseParser.Options.parsedStringCache.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B03B1AF0(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ResponseParser.Options.init(bufferLimit:messageAttributeLimit:bodySizeLimit:literalSizeLimit:parsedStringCache:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double ResponseParser.init(options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  if (v7)
  {
    v8 = a1[5];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_1B0441680;
  }

  else
  {
    v10 = sub_1B0E10C04;
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = a1[2];
  *a2 = sub_1B0441638;
  *(a2 + 8) = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v12;
  result = 0.0;
  *(a2 + 56) = xmmword_1B0EA4610;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1B0E110DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 4);
  v11 = *(a1 + 10);
  v12 = *(a1 + 22);

  sub_1B0DBEB44(a1, 1, 100, &v31);
  if (v4)
  {

    *a1 = v8;
    a1[1] = v9;
    *(a1 + 4) = v10;
    *(a1 + 10) = v11;
    *(a1 + 22) = v12;
    return swift_willThrow();
  }

  else
  {

    v19 = v31;
    LODWORD(v20) = v32;
    WORD2(v20) = v33;
    BYTE6(v20) = v34;
    sub_1B0D047A8(&v19);
    v14 = v28;
    *(a3 + 128) = v27;
    *(a3 + 144) = v14;
    *(a3 + 160) = v29;
    *(a3 + 176) = v30;
    v15 = v24;
    *(a3 + 64) = v23;
    *(a3 + 80) = v15;
    v16 = v26;
    *(a3 + 96) = v25;
    *(a3 + 112) = v16;
    v17 = v20;
    *a3 = v19;
    *(a3 + 16) = v17;
    v18 = v22;
    *(a3 + 32) = v21;
    *(a3 + 48) = v18;
    type metadata accessor for Response(0);
    result = swift_storeEnumTagMultiPayload();
    if (*(v3 + 72) == 1 && *(v3 + 56) == a2)
    {
      *(v3 + 56) = 0;
      *(v3 + 64) = a2;
      *(v3 + 72) = 2;
    }

    else
    {

      sub_1B0E46298();
      MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F30570);
      sub_1B0E46508();
      result = sub_1B0E465B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0E11320(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1B0E11368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_S2SIeghgo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0E113E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B0E11440(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1B0E114C4()
{
  result = qword_1EB6E7AD8;
  if (!qword_1EB6E7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AD8);
  }

  return result;
}

uint64_t sub_1B0E11518(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = swift_allocObject();
  v9 = v3[3];
  v8[3] = v3[2];
  v8[4] = v9;
  *(v8 + 73) = *(v3 + 57);
  v10 = v3[1];
  v8[1] = *v3;
  v8[2] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B0E126FC;
  *(v11 + 24) = v8;
  v33[0] = sub_1B0DA9340;
  v33[1] = v11;
  v12 = swift_allocObject();
  v13 = v3[3];
  v12[3] = v3[2];
  v12[4] = v13;
  *(v12 + 73) = *(v3 + 57);
  v14 = v3[1];
  v12[1] = *v3;
  v12[2] = v14;
  result = swift_allocObject();
  *(result + 16) = sub_1B0E12718;
  *(result + 24) = v12;
  v33[2] = sub_1B0DA938C;
  v33[3] = result;
  v16 = __OFADD__(a2, 1);
  v17 = a2 + 1;
  if (!v16)
  {
    sub_1B0E12598(v3, v32);
    sub_1B0E12598(v3, v32);
    v18 = 0;
    for (i = 0; ; i = 1)
    {
      v29 = v18;
      *(swift_allocObject() + 16) = *&v33[2 * i];
      if (v17 >= a3)
      {
        sub_1B0439BCC();
        v5 = swift_allocError();
        *v25 = a3;
      }

      else
      {
        v20 = *a1;
        v21 = a1[1];
        v22 = *(a1 + 4);
        v23 = *(a1 + 10);
        v24 = *(a1 + 22);

        sub_1B0DA9370(a1, v17, a3);
        if (!v5)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          return swift_arrayDestroy();
        }

        *a1 = v20;
        a1[1] = v21;
        *(a1 + 4) = v22;
        *(a1 + 10) = v23;
        *(a1 + 22) = v24;
      }

      swift_willThrow();
      v31 = v5;
      v26 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v5;
        v27 = v5;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v5 = 0;
      v18 = 1;
      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v28 = 0xD000000000000019;
        v28[1] = 0x80000001B0F2FF00;
        v28[2] = 0xD000000000000020;
        v28[3] = 0x80000001B0F2FA10;
        v28[4] = 284;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E11960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1B0DB72C4(a1, a2, a3, *a4, a4[1], a4[2], a4[3]);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
    *(a5 + 24) = v10 & 1;
    type metadata accessor for ResponseOrContinuationRequest(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_1B0E119C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  result = sub_1B0DA9CA8(a1, a2, a3, *a4, *(a4 + 8), *(a4 + 16), *(a4 + 24), &v9);
  if (!v5)
  {
    v8 = v10[0];
    *a5 = v9;
    a5[1] = v8;
    *(a5 + 25) = *(v10 + 9);
    type metadata accessor for Response(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResponseOrContinuationRequest(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0E11A4C()
{
  v1 = v0;
  v2 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResponseParser._Response(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E46C28();
  sub_1B0448354(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 9);
    v38 = *(v7 + 8);
    v39 = v8;
    v40 = *(v7 + 10);
    v41 = *(v7 + 88);
    v9 = *(v7 + 5);
    v34 = *(v7 + 4);
    v35 = v9;
    v10 = *(v7 + 7);
    v36 = *(v7 + 6);
    v37 = v10;
    v11 = *(v7 + 1);
    v30 = *v7;
    v31 = v11;
    v12 = *(v7 + 3);
    v32 = *(v7 + 2);
    v33 = v12;
    MEMORY[0x1B2728D70](1);
    v42[8] = v38;
    v42[9] = v39;
    v42[10] = v40;
    v43 = v41;
    v42[4] = v34;
    v42[5] = v35;
    v42[6] = v36;
    v42[7] = v37;
    v42[0] = v30;
    v42[1] = v31;
    v42[2] = v32;
    v42[3] = v33;
    v13 = sub_1B0D0CBC8(v42);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v20 = sub_1B041BA38(v42);
        v21 = *(v20 + 32);
        v17 = *(v20 + 40);
        v22 = *(v20 + 16);
        v45 = *v20;
        v46 = v22;
        LOBYTE(v47) = v21;
        v19 = 3;
      }

      else
      {
        if (v13 != 4)
        {
          MEMORY[0x1B2728D70](5);
          return sub_1B0E46CB8();
        }

        v15 = sub_1B041BA38(v42);
        v16 = *(v15 + 32);
        v17 = *(v15 + 40);
        v18 = *(v15 + 16);
        v45 = *v15;
        v46 = v18;
        LOBYTE(v47) = v16;
        v19 = 4;
      }

      MEMORY[0x1B2728D70](v19);
      StreamingKind.hash(into:)(v44);
      MEMORY[0x1B2728D70](v17);
    }

    else
    {
      if (!v13)
      {
        sub_1B041BA38(v42);
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == 1)
      {
        sub_1B041BA38(v42);
        v14 = 1;
LABEL_11:
        MEMORY[0x1B2728D70](v14);
        sub_1B0E46C88();
        return sub_1B0E46CB8();
      }

      v23 = sub_1B041BA38(v42);
      v24 = *(v23 + 144);
      v53 = *(v23 + 128);
      v54 = v24;
      v55 = *(v23 + 160);
      v56 = *(v23 + 176);
      v25 = *(v23 + 80);
      v49 = *(v23 + 64);
      v50 = v25;
      v26 = *(v23 + 112);
      v51 = *(v23 + 96);
      v52 = v26;
      v27 = *(v23 + 16);
      v45 = *v23;
      v46 = v27;
      v28 = *(v23 + 48);
      v47 = *(v23 + 32);
      v48 = v28;
      MEMORY[0x1B2728D70](2);
      MessageAttribute.hash(into:)(v44);
    }

    sub_1B0E12654(&v30);
    return sub_1B0E46CB8();
  }

  sub_1B04453A4(v7, v4, type metadata accessor for ResponsePayload);
  MEMORY[0x1B2728D70](0);
  ResponsePayload.hash(into:)(v44);
  sub_1B04483B8(v4, type metadata accessor for ResponsePayload);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E11D6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0448354(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v10 + 9);
    v17[8] = *(v10 + 8);
    v17[9] = v11;
    v17[10] = *(v10 + 10);
    v18 = *(v10 + 88);
    v12 = *(v10 + 5);
    v17[4] = *(v10 + 4);
    v17[5] = v12;
    v13 = *(v10 + 7);
    v17[6] = *(v10 + 6);
    v17[7] = v13;
    v14 = *(v10 + 1);
    v17[0] = *v10;
    v17[1] = v14;
    v15 = *(v10 + 3);
    v17[2] = *(v10 + 2);
    v17[3] = v15;
    MEMORY[0x1B2728D70](1);
    sub_1B0D9D6D8(a1);
    return sub_1B0E12654(v17);
  }

  else
  {
    sub_1B04453A4(v10, v7, type metadata accessor for ResponsePayload);
    MEMORY[0x1B2728D70](0);
    ResponsePayload.hash(into:)(a1);
    return sub_1B04483B8(v7, type metadata accessor for ResponsePayload);
  }
}

uint64_t sub_1B0E11F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E46C28();
  sub_1B0448354(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v9 + 9);
    v40 = *(v9 + 8);
    v41 = v10;
    v42 = *(v9 + 10);
    v43 = *(v9 + 88);
    v11 = *(v9 + 5);
    v36 = *(v9 + 4);
    v37 = v11;
    v12 = *(v9 + 7);
    v38 = *(v9 + 6);
    v39 = v12;
    v13 = *(v9 + 1);
    v32 = *v9;
    v33 = v13;
    v14 = *(v9 + 3);
    v34 = *(v9 + 2);
    v35 = v14;
    MEMORY[0x1B2728D70](1);
    v44[8] = v40;
    v44[9] = v41;
    v44[10] = v42;
    v45 = v43;
    v44[4] = v36;
    v44[5] = v37;
    v44[6] = v38;
    v44[7] = v39;
    v44[0] = v32;
    v44[1] = v33;
    v44[2] = v34;
    v44[3] = v35;
    v15 = sub_1B0D0CBC8(v44);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v22 = sub_1B041BA38(v44);
        v23 = *(v22 + 32);
        v19 = *(v22 + 40);
        v24 = *(v22 + 16);
        v47 = *v22;
        v48 = v24;
        LOBYTE(v49) = v23;
        v21 = 3;
      }

      else
      {
        if (v15 != 4)
        {
          MEMORY[0x1B2728D70](5);
          return sub_1B0E46CB8();
        }

        v17 = sub_1B041BA38(v44);
        v18 = *(v17 + 32);
        v19 = *(v17 + 40);
        v20 = *(v17 + 16);
        v47 = *v17;
        v48 = v20;
        LOBYTE(v49) = v18;
        v21 = 4;
      }

      MEMORY[0x1B2728D70](v21);
      StreamingKind.hash(into:)(v46);
      MEMORY[0x1B2728D70](v19);
    }

    else
    {
      if (!v15)
      {
        sub_1B041BA38(v44);
        v16 = 0;
        goto LABEL_11;
      }

      if (v15 == 1)
      {
        sub_1B041BA38(v44);
        v16 = 1;
LABEL_11:
        MEMORY[0x1B2728D70](v16);
        sub_1B0E46C88();
        return sub_1B0E46CB8();
      }

      v25 = sub_1B041BA38(v44);
      v26 = *(v25 + 144);
      v55 = *(v25 + 128);
      v56 = v26;
      v57 = *(v25 + 160);
      v58 = *(v25 + 176);
      v27 = *(v25 + 80);
      v51 = *(v25 + 64);
      v52 = v27;
      v28 = *(v25 + 112);
      v53 = *(v25 + 96);
      v54 = v28;
      v29 = *(v25 + 16);
      v47 = *v25;
      v48 = v29;
      v30 = *(v25 + 48);
      v49 = *(v25 + 32);
      v50 = v30;
      MEMORY[0x1B2728D70](2);
      MessageAttribute.hash(into:)(v46);
    }

    sub_1B0E12654(&v32);
    return sub_1B0E46CB8();
  }

  sub_1B04453A4(v9, v6, type metadata accessor for ResponsePayload);
  MEMORY[0x1B2728D70](0);
  ResponsePayload.hash(into:)(v46);
  sub_1B04483B8(v6, type metadata accessor for ResponsePayload);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E12224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseParser._Response(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B00, &qword_1B0EFB938);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v30 - v14;
  v17 = v30 + *(v16 + 56) - v14;
  sub_1B0448354(a1, v30 - v14);
  sub_1B0448354(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0448354(v15, v9);
    v18 = *(v9 + 9);
    v30[8] = *(v9 + 8);
    v30[9] = v18;
    v30[10] = *(v9 + 10);
    v31 = *(v9 + 88);
    v19 = *(v9 + 5);
    v30[4] = *(v9 + 4);
    v30[5] = v19;
    v20 = *(v9 + 7);
    v30[6] = *(v9 + 6);
    v30[7] = v20;
    v21 = *(v9 + 1);
    v30[0] = *v9;
    v30[1] = v21;
    v22 = *(v9 + 3);
    v30[2] = *(v9 + 2);
    v30[3] = v22;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *(v17 + 9);
      v32[8] = *(v17 + 8);
      v32[9] = v23;
      v32[10] = *(v17 + 10);
      v33 = *(v17 + 88);
      v24 = *(v17 + 5);
      v32[4] = *(v17 + 4);
      v32[5] = v24;
      v25 = *(v17 + 7);
      v32[6] = *(v17 + 6);
      v32[7] = v25;
      v26 = *(v17 + 1);
      v32[0] = *v17;
      v32[1] = v26;
      v27 = *(v17 + 3);
      v32[2] = *(v17 + 2);
      v32[3] = v27;
      v28 = sub_1B0D9E6BC(v30, v32);
      sub_1B0E12654(v32);
      sub_1B0E12654(v30);
LABEL_9:
      sub_1B04483B8(v15, type metadata accessor for ResponseParser._Response);
      return v28 & 1;
    }

    sub_1B0E12654(v30);
  }

  else
  {
    sub_1B0448354(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B04453A4(v17, v6, type metadata accessor for ResponsePayload);
      v28 = _s12NIOIMAPCore215ResponsePayloadO21__derived_enum_equalsySbAC_ACtFZ_0(v12, v6);
      sub_1B04483B8(v6, type metadata accessor for ResponsePayload);
      sub_1B04483B8(v12, type metadata accessor for ResponsePayload);
      goto LABEL_9;
    }

    sub_1B04483B8(v12, type metadata accessor for ResponsePayload);
  }

  sub_1B0E12860(v15);
  v28 = 0;
  return v28 & 1;
}

BOOL sub_1B0E1252C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a2)
      {
        if (a5)
        {
          return 1;
        }
      }

      else if (!(a5 & 1 | (a1 != a4)))
      {
        return 1;
      }
    }

    return 0;
  }

  v7 = a6 == 1 && a1 == a4;
  v10 = a6 == 2 && a1 == a4 && a2 == a5;
  if (a3 == 1)
  {
    return v7;
  }

  else
  {
    return v10;
  }
}

unint64_t sub_1B0E12600()
{
  result = qword_1EB6E7AE0;
  if (!qword_1EB6E7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AE0);
  }

  return result;
}

unint64_t sub_1B0E126A8()
{
  result = qword_1EB6E7AE8;
  if (!qword_1EB6E7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AE8);
  }

  return result;
}

uint64_t sub_1B0E12734(uint64_t a1)
{
  result = type metadata accessor for ResponsePayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0E127B0()
{
  result = qword_1EB6E7AF0;
  if (!qword_1EB6E7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AF0);
  }

  return result;
}

unint64_t sub_1B0E12808()
{
  result = qword_1EB6E7AF8;
  if (!qword_1EB6E7AF8)
  {
    type metadata accessor for ResponseParser._Response(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7AF8);
  }

  return result;
}

uint64_t sub_1B0E12860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B00, &qword_1B0EFB938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0E128D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 40);
  v6 = *(a2 + 16) + 1;
  while (1)
  {
    if (!--v6)
    {
      return a1;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = *(a3 + 20);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v9);
    if (v11)
    {
      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = *(a3 + 20);
    v14 = (v13 + result);
    if (__CFADD__(v13, result))
    {
      break;
    }

    *(a3 + 20) = v14;
    v15 = __OFADD__(a1, result);
    v16 = a1 + result;
    if (v15)
    {
      goto LABEL_15;
    }

    result = sub_1B0CFC1B0(v8, v7, a3 + 8, v14);
    if (v17)
    {
      v18._countAndFlagsBits = v8;
      v18._object = v7;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
    }

    v19 = result;
    v20 = *(a3 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_16;
    }

    v5 += 4;
    *(a3 + 20) = v22;

    v15 = __OFADD__(v16, v19);
    a1 = v16 + v19;
    if (v15)
    {
      __break(1u);
      return a1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1B0E12A04(uint64_t a1)
{
  v3 = type metadata accessor for MessageData(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E13DA8(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1B0E0A12C(*v8, *(v8 + 1), *(v8 + 4) | (*(v8 + 10) << 32) | (v8[22] << 48), *(v8 + 3));

        return;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v10 = *(v8 + 1);
        v46 = *v8;
        v47 = v10;
        LODWORD(v48) = *(v8 + 8);
        sub_1B0DEF684(&v46);
        sub_1B0E1414C(&v46);
        return;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v15 = *v8;
      v16 = *(v8 + 1);
      v17 = *(v8 + 2);
      v18 = *v1;
      *v1 = 0;
      v19 = *(v1 + 20);
      v20 = sub_1B0CFC1B0(0x204449uLL, 0xE300000000000000, v1 + 8, v19);
      if (v21)
      {
        v22._countAndFlagsBits = 2114633;
        v22._object = 0xE300000000000000;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
      }

      v23 = v20;
      v24 = *(v1 + 20);
      v25 = __CFADD__(v24, v20);
      v26 = v24 + v20;
      if (v25)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      *(v1 + 20) = v26;
      sub_1B0DC4120(v15, v16, v17);
      if (__OFADD__(v23, v27))
      {
LABEL_32:
        __break(1u);
        return;
      }

      *v1 = v18;
    }

    else
    {
      sub_1B0E0A920(*v8, *(v8 + 2), *(v8 + 2), *(v8 + 3), *(v8 + 8) | (*(v8 + 18) << 32) | (v8[38] << 48));
    }

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B0E13E98(v8, v5);
      sub_1B0DE07C0(v5);
      sub_1B0E14208(v5, type metadata accessor for MessageData);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1B0D5C638(*v8);

      return;
    }

    v28 = *v8;
    v29 = *(v1 + 20);
    v30 = sub_1B0CFC1B0(0x44454C42414E45uLL, 0xE700000000000000, v1 + 8, v29);
    if (v31)
    {
      v32._countAndFlagsBits = 0x44454C42414E45;
      v32._object = 0xE700000000000000;
      v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
    }

    v33 = v30;
    v34 = *(v1 + 20);
    v25 = __CFADD__(v34, v30);
    v35 = v34 + v30;
    if (!v25)
    {
      *(v1 + 20) = v35;
      v36 = sub_1B0E128D4(0, v28, v1);

      v8 = (v33 + v36);
      if (!__OFADD__(v33, v36))
      {
        return;
      }

      __break(1u);
LABEL_26:
      v37 = *v8;
      v38 = *(v8 + 1);
      v39 = *(v8 + 2);
      v40 = v8[24];
      sub_1B0D3D164(*v8, v38, v39, v40);
      sub_1B0C26CD4(v37, v38, v39, v40);
      return;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    v41 = *(v8 + 7);
    v52 = *(v8 + 6);
    v53 = v41;
    v54 = *(v8 + 8);
    v42 = *(v8 + 3);
    v48 = *(v8 + 2);
    v49 = v42;
    v43 = *(v8 + 5);
    v50 = *(v8 + 4);
    v51 = v43;
    v44 = *(v8 + 1);
    v46 = *v8;
    v47 = v44;
    sub_1B0DD221C(&v46);
    sub_1B0D0CDA8(&v46);
  }

  else
  {
    v11 = *v8;
    v12 = *(v8 + 1);
    v13 = *(v8 + 2);
    v14 = v8[24];
    sub_1B0E32DB0(*v8, v12, v13, v14);
    sub_1B0E13EFC(v11, v12, v13, v14);
  }
}

uint64_t ResponsePayload.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MessageData(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E13DA8(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v26 = *(v9 + 1);
        v27 = *(v9 + 2);
        MEMORY[0x1B2728D70](5);
        sub_1B0CF00E0(a1, v26, v27);
      }

      else
      {
        v41 = *(v9 + 2);
        MEMORY[0x1B2728D70](6);
        MEMORY[0x1B2728D70](v41 | (v41 << 32));

        swift_beginAccess();
        sub_1B0E46C38();
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v28 = *(v9 + 3);
      MEMORY[0x1B2728D70](7);
      swift_beginAccess();
      sub_1B0E46C38();
      MEMORY[0x1B2728D70](*(v28 + 16));
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (v28 + 56);
        do
        {
          v31 = *(v30 - 1);
          v32 = *v30;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          MEMORY[0x1B2728D70](v31);
          MEMORY[0x1B2728D70](v32);

          v30 += 4;
          --v29;
        }

        while (v29);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v13 = *v9;
      v14 = *(v9 + 1);
      v15 = *(v9 + 2);
      v16 = *(v9 + 3);
      v17 = *(v9 + 8);
      MEMORY[0x1B2728D70](8);
      if (v15 < 0)
      {
        v44[1] = v17;
        v44[2] = v16;
        v45 = v14;
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v13 + 16));
        v42 = *(v13 + 16);
        if (v42)
        {
          v43 = v13 + 54;
          do
          {
            v43 += 24;
            swift_beginAccess();
            sub_1B0E46C38();
            --v42;
          }

          while (v42);
        }

        MEMORY[0x1B2728D70](v15 | (v15 << 32));
        v18 = v13;
        v19 = v45;
        v20 = v15;
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0D3AC68(a1, v14, v15);
        MEMORY[0x1B2728D70](v17 | (v17 << 32));
        v18 = v13;
        v19 = v14;
        v20 = v15;
      }

      return sub_1B0E13E0C(v18, v19, v20);
    }

    else
    {
      v33 = *v9;
      v34 = *(v9 + 1);
      v35 = *(v9 + 2);
      v36 = v9[24];
      MEMORY[0x1B2728D70](9);
      ApplePushService.hash(into:)(a1, v33, v34, v35, v36);
      return sub_1B0C26CD4(v33, v34, v35, v36);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = *(v9 + 7);
      v46[6] = *(v9 + 6);
      v46[7] = v37;
      v46[8] = *(v9 + 8);
      v38 = *(v9 + 3);
      v46[2] = *(v9 + 2);
      v46[3] = v38;
      v39 = *(v9 + 5);
      v46[4] = *(v9 + 4);
      v46[5] = v39;
      v40 = *(v9 + 1);
      v46[0] = *v9;
      v46[1] = v40;
      MEMORY[0x1B2728D70](1);
      MailboxData.hash(into:)(a1);
      return sub_1B0D0CDA8(v46);
    }

    else
    {
      v21 = *v9;
      v22 = *(v9 + 1);
      v23 = *(v9 + 2);
      v24 = v9[24];
      MEMORY[0x1B2728D70](0);
      UntaggedStatus.hash(into:)(a1, v21, v22, v23, v24);
      return sub_1B0E13EFC(v21, v22, v23, v24);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1B0E13E98(v9, v6);
    MEMORY[0x1B2728D70](2);
    MessageData.hash(into:)(a1);
    return sub_1B0E14208(v6, type metadata accessor for MessageData);
  }

  else
  {
    v11 = *v9;
    if (EnumCaseMultiPayload == 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    MEMORY[0x1B2728D70](v12);
    sub_1B0CEFE18(a1, v11);
  }
}

uint64_t ResponsePayload.hashValue.getter()
{
  sub_1B0E46C28();
  ResponsePayload.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E13348()
{
  sub_1B0E46C28();
  ResponsePayload.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1338C(uint64_t a1)
{
  sub_1B0E46C28();
  ResponsePayload.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore215ResponsePayloadO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = type metadata accessor for MessageData(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v93 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v93 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v94 = (&v93 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v93 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v93 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v93 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B18, &qword_1B0EFB9D0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v93 - v31;
  v34 = &v93 + *(v33 + 56) - v31;
  sub_1B0E13DA8(v99, &v93 - v31);
  sub_1B0E13DA8(a2, v34);
  v100 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v42 = v34;
      if (EnumCaseMultiPayload)
      {
        v36 = v100;
        sub_1B0E13DA8(v100, v26);
        v70 = v26[7];
        v107 = v26[6];
        v108 = v70;
        v109 = v26[8];
        v71 = v26[3];
        v103 = v26[2];
        v104 = v71;
        v72 = v26[5];
        v105 = v26[4];
        v106 = v72;
        v73 = v26[1];
        v101 = *v26;
        v102 = v73;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v74 = *(v34 + 7);
          v116 = *(v34 + 6);
          v117 = v74;
          v118 = *(v34 + 8);
          v75 = *(v34 + 3);
          v112 = *(v34 + 2);
          v113 = v75;
          v76 = *(v34 + 5);
          v114 = *(v34 + 4);
          v115 = v76;
          v77 = *(v34 + 1);
          v110 = *v34;
          v111 = v77;
          v41 = _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(&v101, &v110);
          sub_1B0D0CDA8(&v110);
          sub_1B0D0CDA8(&v101);
          goto LABEL_34;
        }

        sub_1B0D0CDA8(&v101);
      }

      else
      {
        v43 = v100;
        sub_1B0E13DA8(v100, v29);
        v44 = *v29;
        v45 = *(v29 + 1);
        v46 = *(v29 + 2);
        v47 = v29[24];
        if (!swift_getEnumCaseMultiPayload())
        {
          v90 = *v42;
          v99 = *(v42 + 1);
          v91 = *(v42 + 2);
          v92 = v42[24];
          v41 = _s12NIOIMAPCore214UntaggedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(v44, v45, v46, v47, v90, v99, v91, v92);
          sub_1B0E13EFC(v90, v99, v91, v92);
          sub_1B0E13EFC(v44, v45, v46, v47);
          sub_1B0E14208(v43, type metadata accessor for ResponsePayload);
          return v41 & 1;
        }

        sub_1B0E13EFC(v44, v45, v46, v47);
        v36 = v43;
      }

      goto LABEL_48;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v36 = v100;
      if (EnumCaseMultiPayload == 3)
      {
        sub_1B0E13DA8(v100, v21);
        v59 = *v21;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
LABEL_28:
          v41 = sub_1B044DA4C(v59, *v34);

          goto LABEL_34;
        }
      }

      else
      {
        v58 = v94;
        sub_1B0E13DA8(v100, v94);
        v59 = *v58;
        v60 = swift_getEnumCaseMultiPayload();
        if (v60 == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_41;
    }

    v36 = v100;
    v52 = v95;
    sub_1B0E13DA8(v100, v95);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1B0E14208(v52, type metadata accessor for MessageData);
LABEL_48:
      sub_1B0E141A0(v36);
LABEL_49:
      v41 = 0;
      return v41 & 1;
    }

    v53 = v93;
    sub_1B0E13E98(v34, v93);
    v41 = _s12NIOIMAPCore211MessageDataO21__derived_enum_equalsySbAC_ACtFZ_0(v52, v53);
    sub_1B0E14208(v53, type metadata accessor for MessageData);
    sub_1B0E14208(v52, type metadata accessor for MessageData);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 6)
  {
    v36 = v100;
    v37 = v34;
    if (EnumCaseMultiPayload == 7)
    {
      v54 = v97;
      sub_1B0E13DA8(v100, v97);
      v55 = *v54;
      v56 = *(v54 + 24);
      if (swift_getEnumCaseMultiPayload() != 7)
      {

LABEL_41:

        goto LABEL_48;
      }

      v57 = *(v34 + 3);
      if (!sub_1B0C2DB54(v55, *(v54 + 8), *(v54 + 16) | (*(v54 + 22) << 48) | (*(v54 + 20) << 32), *v34, *(v34 + 1), *(v34 + 4) | (*(v34 + 10) << 32) | (v34[22] << 48)))
      {

        sub_1B0E14208(v36, type metadata accessor for ResponsePayload);
        goto LABEL_49;
      }

      v41 = sub_1B0D31DEC(v56, v57);

LABEL_34:
      sub_1B0E14208(v36, type metadata accessor for ResponsePayload);
      return v41 & 1;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v38 = v96;
      sub_1B0E13DA8(v100, v96);
      v39 = *(v38 + 16);
      v101 = *v38;
      v102 = v39;
      LODWORD(v103) = *(v38 + 32);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_1B0E1414C(&v101);
        goto LABEL_48;
      }

      v40 = *(v34 + 1);
      v110 = *v34;
      v111 = v40;
      LODWORD(v112) = *(v34 + 8);
      v41 = _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(&v101, &v110);
      sub_1B0E1414C(&v110);
      sub_1B0E1414C(&v101);
      goto LABEL_34;
    }

    v61 = v98;
    sub_1B0E13DA8(v100, v98);
    v62 = *v61;
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    v65 = *(v61 + 24);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      sub_1B0C26CD4(v62, v63, v64, v65);
      goto LABEL_48;
    }

    v66 = *v34;
    v67 = *(v34 + 1);
    v68 = *(v37 + 2);
    v69 = v37[24];
    v41 = _s12NIOIMAPCore216ApplePushServiceO21__derived_enum_equalsySbAC_ACtFZ_0(v62, v63, v64, v65, *v37, *(v37 + 1), v68, v69);
    sub_1B0C26CD4(v66, v67, v68, v69);
    sub_1B0C26CD4(v62, v63, v64, v65);
    goto LABEL_31;
  }

  v36 = v100;
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B0E13DA8(v100, v13);
    v78 = *v13;
    v79 = *(v13 + 2);
    v99 = *(v13 + 3);
    v80 = *(v13 + 8);
    v81 = *(v13 + 18);
    v82 = v13[38];
    v83 = swift_getEnumCaseMultiPayload();
    if (v83 == 6)
    {
      v84 = *(v13 + 2);
      v85 = *v34;
      v86 = *(v34 + 2);
      if ((v84 | (v84 << 32)) == (*(v34 + 2) | (*(v34 + 2) << 32)))
      {
        v87 = *(v34 + 3);
        v98 = *(v34 + 8);
        v97 = *(v34 + 18);
        v96 = v34[38];
        v88 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v78, v85);

        if (v88)
        {
          v41 = sub_1B0C2DB54(v79, v99, v80 | (v81 << 32) | (v82 << 48), v86, v87, v98 | (v97 << 32) | (v96 << 48));

LABEL_31:
          sub_1B0E14208(v100, type metadata accessor for ResponsePayload);
          return v41 & 1;
        }
      }

      else
      {
      }

      goto LABEL_55;
    }

LABEL_47:

    goto LABEL_48;
  }

  sub_1B0E13DA8(v100, v16);
  v48 = *(v16 + 1);
  v49 = *(v16 + 2);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    goto LABEL_47;
  }

  v50 = *(v34 + 2);
  if ((sub_1B045202C(v48, *(v34 + 1)) & 1) == 0)
  {

LABEL_55:

    goto LABEL_56;
  }

  v51 = sub_1B0C2DAB0(v49, v50);

  if ((v51 & 1) == 0)
  {
LABEL_56:
    sub_1B0E14208(v100, type metadata accessor for ResponsePayload);
    goto LABEL_49;
  }

  sub_1B0E14208(v100, type metadata accessor for ResponsePayload);
  v41 = 1;
  return v41 & 1;
}

uint64_t sub_1B0E13DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponsePayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E13E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1B0E13E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E13EFC(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 4u)
  {
    sub_1B0447F00(result);
  }

  return result;
}

unint64_t sub_1B0E13F48()
{
  result = qword_1EB6E7B08;
  if (!qword_1EB6E7B08)
  {
    type metadata accessor for ResponsePayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B08);
  }

  return result;
}

void sub_1B0E13FA0(uint64_t a1)
{
  type metadata accessor for MessageData(319);
  if (v1 <= 0x3F)
  {
    sub_1B043739C();
    if (v2 <= 0x3F)
    {
      sub_1B041C078(319);
      if (v3 <= 0x3F)
      {
        sub_1B0E14078();
        if (v4 <= 0x3F)
        {
          sub_1B0E140D8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0E14078()
{
  if (!qword_1EB6DE958)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE958);
    }
  }
}

void sub_1B0E140D8(uint64_t a1)
{
  if (!qword_1EB6DE058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7B10, &qword_1B0EFB9C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE058);
    }
  }
}

uint64_t sub_1B0E141A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B18, &qword_1B0EFB9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0E14208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ResponseText.debugDescription.getter(unint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v6 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v7 = qword_1EB737EB0;
  v8 = word_1EB737EBC;
  v9 = byte_1EB737EBE;

  v26 = HIDWORD(qword_1EB737EB0);
  LOBYTE(v29) = 0;
  BYTE5(v29) = 0;
  *(&v29 + 1) = 65537;
  *(&v29 + 1) = v6;
  LODWORD(v30) = v7;
  *(&v30 + 4) = *(&qword_1EB737EB0 + 4);
  WORD6(v30) = v8;
  BYTE14(v30) = v9;
  *&v31 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v31 + 1) = v10;
  v32 = v11;
  v12 = DWORD1(v30);
  if ((~a1 & 0xF000000000000007) != 0)
  {
    result = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, &v29 + 8, v26);
    if (v14)
    {
      v15._countAndFlagsBits = 91;
      v15._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v26);
    }

    if (__CFADD__(DWORD1(v30), result))
    {
      goto LABEL_22;
    }

    DWORD1(v30) += result;
    sub_1B0E15060(a1);
    v16 = DWORD1(v30);
    result = sub_1B0CFC1B0(0x205DuLL, 0xE200000000000000, &v29 + 8, DWORD1(v30));
    if (v17)
    {
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v12 = DWORD1(v30) + result;
    if (__CFADD__(DWORD1(v30), result))
    {
      goto LABEL_23;
    }

    DWORD1(v30) += result;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (sub_1B0E44CF8() <= 0)
  {

    a3 = 0xE100000000000000;
    a2 = 32;
  }

  v19 = sub_1B0CFC1B0(a2, a3, &v29 + 8, v12);
  if (v20)
  {
    v21._countAndFlagsBits = a2;
    v21._object = a3;
    v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v12);
  }

  v22 = v19;

  v23 = (DWORD1(v30) + v22);
  if (__CFADD__(DWORD1(v30), v22))
  {
    __break(1u);
  }

  else
  {
    DWORD1(v30) += v22;
    if (v23 >= v30)
    {
      if (DWORD2(v30) - (BYTE14(v30) | (WORD6(v30) << 8)) >= v23)
      {
        v33 = *(&v29 + 1);
        v34 = v30;
        v35 = v23;
        v36 = DWORD2(v30);
        v37 = WORD6(v30);
        v38 = BYTE14(v30);
        v39 = v30;
        v40 = v23;
        v24 = v23 - v30;
        *&v27[0] = 0;
        *(&v27[0] + 1) = 0xE000000000000000;

        MEMORY[0x1B2726D20](v24);
        sub_1B0D547AC(&v33, v27);
        sub_1B04394F4(&v33);
        v25 = *&v27[0];
        v27[0] = v29;
        v27[1] = v30;
        v27[2] = v31;
        v28 = v32;
        sub_1B0D7E6B4(v27);
        return v25;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0E14528(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = 0;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v9 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v3 + 8, v9);
    if (v11)
    {
      v12._countAndFlagsBits = 91;
      v12._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = result;
    v14 = *(v3 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      goto LABEL_19;
    }

    *(v3 + 20) = v16;
    result = sub_1B0E15060(a1);
    v17 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v18 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x205DuLL, 0xE200000000000000, v3 + 8, v18);
    if (v19)
    {
      v20._countAndFlagsBits = 8285;
      v20._object = 0xE200000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = *(v3 + 20);
    v15 = __CFADD__(v21, result);
    v22 = v21 + result;
    if (v15)
    {
      goto LABEL_21;
    }

    *(v3 + 20) = v22;
    v7 = v17 + result;
    if (__OFADD__(v17, result))
    {
LABEL_22:
      __break(1u);
      return result;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (sub_1B0E44CF8() <= 0)
  {

    a3 = 0xE100000000000000;
    a2 = 32;
  }

  v23 = *(v3 + 20);
  v24 = sub_1B0CFC1B0(a2, a3, v3 + 8, v23);
  if (v25)
  {
    v26._countAndFlagsBits = a2;
    v26._object = a3;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
  }

  v27 = v24;

  v28 = *(v4 + 20);
  v15 = __CFADD__(v28, v27);
  v29 = v28 + v27;
  if (v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v4 + 20) = v29;
  result = v7 + v27;
  if (__OFADD__(v7, v27))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t ResponseText.code.setter(uint64_t a1)
{
  result = sub_1B0447F00(*v1);
  *v1 = a1;
  return result;
}

uint64_t ResponseText.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ResponseText.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1B0E46C68();
    ResponseTextCode.hash(into:)(a1, a2);
  }

  else
  {
    sub_1B0E46C68();
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ResponseText.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if ((~a1 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v5, a1);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E148D0()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v3, v1);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E14958(uint64_t a1)
{
  v3 = *v1;
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    sub_1B0E46C68();
    ResponseTextCode.hash(into:)(a1, v3);
  }

  else
  {
    sub_1B0E46C68();
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0E149E0(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  sub_1B0E46C68();
  if ((~v2 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v4, v2);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore212ResponseTextV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    if (v6 == 0xF000000000000007)
    {
      return 0;
    }

    v7 = a1;
    v8 = a6;
    v9 = a5;
    v10 = a3;
    v11 = a2;
    sub_1B04420EC(a4);
    LOBYTE(v7) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v7, a4);
    sub_1B0447F00(a4);
    a2 = v11;
    a3 = v10;
    a5 = v9;
    a6 = v8;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6 != 0xF000000000000007)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

unint64_t sub_1B0E14B80()
{
  result = qword_1EB6E7B20;
  if (!qword_1EB6E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B20);
  }

  return result;
}

char *ResponseTextCode.debugDescription.getter(unint64_t a1)
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1EB737EB0;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1B0E15060(a1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v11) - v11);
    sub_1B0D547AC(v14, v20);
    sub_1B04394F4(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1B0D7E6B4(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E14D70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E8, &qword_1B0EF5010);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v26 - v21;
  sub_1B03B5C80(a1, v16, a2, a3);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v23 - 8) + 32))(v19, v16, v23);
  if (sub_1B0D73474() < 1)
  {
    sub_1B0398EFC(v19, &qword_1EB6E7438, &qword_1B0EFBF30);
    v24 = 1;
  }

  else
  {
    sub_1B03C60A4(v19, v13, &qword_1EB6E7438, &qword_1B0EFBF30);
    sub_1B03C60A4(v13, v22, &qword_1EB6E7430, &qword_1B0EFBC90);
    v24 = 0;
  }

  (*(v11 + 56))(v22, v24, 1, v10);
  result = (*(v11 + 48))(v22, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B0398EFC(a1, a4, v26);
    return sub_1B03C60A4(v22, v27, &qword_1EB6E7430, &qword_1B0EFBC90);
  }

  return result;
}

char *sub_1B0E15060(unint64_t a1)
{
  v2 = v1;
  v4 = v295;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v294[-1] - v6;
  v8 = type metadata accessor for ResponseCodeAppend(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v294[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v121 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B0D5C638(v121);
      goto LABEL_70;
    case 2uLL:
      v4 = 0xEF205347414C4654;
      v91 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v92 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CFC1B0(0x4E454E414D524550uLL, 0xEF205347414C4654, v2 + 8, v92);
      if (v93)
      {
        v94._countAndFlagsBits = 0x4E454E414D524550;
        v94._object = 0xEF205347414C4654;
        result = ByteBuffer._setStringSlowpath(_:at:)(v94, v92);
      }

      v95 = result;
      v96 = *(v2 + 20);
      v26 = __CFADD__(v96, result);
      v97 = v96 + result;
      if (v26)
      {
        goto LABEL_268;
      }

      *(v2 + 20) = v97;
      a1 = sub_1B0E09134(v91);

      result = (v95 + a1);
      if (!__OFADD__(v95, a1))
      {
        return result;
      }

      __break(1u);
LABEL_56:
      v98 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      *(v4 + 12) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      *(v4 + 13) = v98;
      v99 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      *(v4 + 14) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      *(v4 + 15) = v99;
      v100 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      *(v4 + 8) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      *(v4 + 9) = v100;
      v101 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      *(v4 + 10) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      *(v4 + 11) = v101;
      v102 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      *(v4 + 4) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      *(v4 + 5) = v102;
      v103 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      *(v4 + 6) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      *(v4 + 7) = v103;
      v104 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      *v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      *(v4 + 1) = v104;
      v105 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      *(v4 + 2) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      *(v4 + 3) = v105;
      v106 = *(v2 + 20);
      sub_1B0DC1FB8(v295, v294);
      result = sub_1B0CFC1B0(0x4C41525245464552uLL, 0xE900000000000020, v2 + 8, v106);
      if (v107)
      {
        v108._countAndFlagsBits = 0x4C41525245464552;
        v108._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v108, v106);
      }

      v109 = result;
      v110 = *(v2 + 20);
      v26 = __CFADD__(v110, result);
      v111 = v110 + result;
      if (v26)
      {
        goto LABEL_269;
      }

      *(v2 + 20) = v111;
      v112 = sub_1B0DC5DD0(v295);
      sub_1B0DC2014(v295);
      result = (v109 + v112);
      if (!__OFADD__(v109, v112))
      {
        return result;
      }

      __break(1u);
LABEL_62:
      v113 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x205458454E444955uLL, 0xE800000000000000, v2 + 8, v113);
      if (v114)
      {
        v115._countAndFlagsBits = 0x205458454E444955;
        v115._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v115, v113);
      }

      v10 = result;
      v116 = *(v2 + 20);
      v26 = __CFADD__(v116, result);
      v117 = v116 + result;
      if (v26)
      {
        goto LABEL_270;
      }

      *(v2 + 20) = v117;
      v118 = sub_1B0E31F9C();
      v28 = __OFADD__(v10, v118);
      result = &v10[v118];
      if (v28)
      {
        __break(1u);
LABEL_68:
        v119 = swift_projectBox();
        sub_1B0E18400(v119, v10);
        v120 = sub_1B0E0E928();
        sub_1B0E18464(v10);
        return v120;
      }

      return result;
    case 3uLL:
      goto LABEL_62;
    case 4uLL:
      goto LABEL_33;
    case 5uLL:
      goto LABEL_77;
    case 6uLL:
      v151 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v152 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v153 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v120 = sub_1B0DF45A4(v151, v152, v153);

      goto LABEL_98;
    case 7uLL:
      goto LABEL_68;
    case 8uLL:
      goto LABEL_97;
    case 9uLL:
      goto LABEL_47;
    case 0xAuLL:
      v154 = swift_projectBox();
      sub_1B03B5C80(v154, v7, &qword_1EB6E7440, &unk_1B0EF3200);
      v155 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x4445494649444F4DuLL, 0xE900000000000020, v2 + 8, v155);
      if (v156)
      {
        v157._countAndFlagsBits = 0x4445494649444F4DLL;
        v157._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v157, v155);
      }

      v158 = result;
      v159 = *(v2 + 20);
      v26 = __CFADD__(v159, result);
      v160 = v159 + result;
      if (v26)
      {
        goto LABEL_273;
      }

      *(v2 + 20) = v160;
      a1 = sub_1B0E1F668(v7);
      sub_1B0398EFC(v7, &qword_1EB6E7440, &unk_1B0EF3200);
      result = (v158 + a1);
      if (!__OFADD__(v158, a1))
      {
        return result;
      }

      __break(1u);
LABEL_97:
      v161 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v162 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v163 = *(v161 + 24);
      v164 = *(v161 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v120 = sub_1B0E0EEA8(v162, v163, v164);
LABEL_98:

LABEL_99:

      return v120;
    case 0xBuLL:
      v47 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v48 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x4D54534548474948uLL, 0xEE0020514553444FLL, v2 + 8, v48);
      if (v49)
      {
        v50._countAndFlagsBits = 0x4D54534548474948;
        v50._object = 0xEE0020514553444FLL;
        result = ByteBuffer._setStringSlowpath(_:at:)(v50, v48);
      }

      v51 = result;
      v52 = *(v2 + 20);
      v53 = (v52 + result);
      if (__CFADD__(v52, result))
      {
        goto LABEL_266;
      }

      *(v2 + 20) = v53;
      v295[0] = v47;
      v54 = sub_1B0E469C8();
      v56 = v55;
      v57 = sub_1B0CFC1B0(v54, v55, v2 + 8, v53);
      if (v58)
      {
        v59._countAndFlagsBits = v54;
        v59._object = v56;
        v57 = ByteBuffer._setStringSlowpath(_:at:)(v59, v53);
      }

      a1 = v57;

      v60 = *(v2 + 20);
      v26 = __CFADD__(v60, a1);
      v61 = v60 + a1;
      if (v26)
      {
        goto LABEL_275;
      }

      *(v2 + 20) = v61;
      result = (v51 + a1);
      if (!__OFADD__(v51, a1))
      {
        return result;
      }

      __break(1u);
LABEL_33:
      v62 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v63 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x44494C4156444955uLL, 0xEC00000020595449, v2 + 8, v63);
      if (v64)
      {
        v65._countAndFlagsBits = 0x44494C4156444955;
        v65._object = 0xEC00000020595449;
        result = ByteBuffer._setStringSlowpath(_:at:)(v65, v63);
      }

      v66 = result;
      v67 = *(v2 + 20);
      v68 = (v67 + result);
      if (__CFADD__(v67, result))
      {
        goto LABEL_267;
      }

      *(v2 + 20) = v68;
      LODWORD(v295[0]) = v62;
      v69 = sub_1B0E469C8();
      v71 = v70;
      v72 = sub_1B0CFC1B0(v69, v70, v2 + 8, v68);
      if (v73)
      {
        v74._countAndFlagsBits = v69;
        v74._object = v71;
        v72 = ByteBuffer._setStringSlowpath(_:at:)(v74, v68);
      }

      a1 = v72;

      v75 = *(v2 + 20);
      v26 = __CFADD__(v75, a1);
      v76 = v75 + a1;
      if (v26)
      {
        goto LABEL_276;
      }

      *(v2 + 20) = v76;
      result = (v66 + a1);
      if (!__OFADD__(v66, a1))
      {
        return result;
      }

      __break(1u);
LABEL_42:
      v77 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v295[0] = 0;
      v295[1] = 0xE000000000000000;
      sub_1B0E46298();

      v295[0] = 0xD000000000000015;
      v295[1] = 0x80000001B0F30610;
      v294[0] = v77;
      v78 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v78);

      v80 = v295[0];
      v79 = v295[1];
      v81 = *(v2 + 20);
      v82 = sub_1B0CFC1B0(v295[0], v295[1], v2 + 8, v81);
      if (v83)
      {
        v84._countAndFlagsBits = v80;
        v84._object = v79;
        v82 = ByteBuffer._setStringSlowpath(_:at:)(v84, v81);
      }

      a1 = v82;

      v85 = *(v2 + 20);
      result = a1;
      v26 = __CFADD__(v85, a1);
      v86 = v85 + a1;
      if (!v26)
      {
        goto LABEL_89;
      }

      __break(1u);
LABEL_47:
      v87 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v88 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v89 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v90 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

      return sub_1B0E175D8(v87, v88, v89, v90);
    case 0xCuLL:
      goto LABEL_42;
    case 0xDuLL:
      goto LABEL_86;
    case 0xEuLL:
      goto LABEL_16;
    case 0xFuLL:
      goto LABEL_56;
    case 0x10uLL:
      v14 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v13 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v15 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CFC1B0(0x49584F424C49414DuLL, 0xEB00000000282044, v2 + 8, v15);
      if (v17)
      {
        v18._countAndFlagsBits = 0x49584F424C49414DLL;
        v18._object = 0xEB00000000282044;
        result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
      }

      v19 = result;
      v20 = *(v2 + 20);
      v21 = (v20 + result);
      if (__CFADD__(v20, result))
      {
        goto LABEL_264;
      }

      *(v2 + 20) = v21;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = sub_1B0CFC1B0(v14, v13, v2 + 8, v21);
      if (v23)
      {
        v24._countAndFlagsBits = v14;
        v24._object = v13;
        v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
      }

      a1 = v22;

      v25 = *(v2 + 20);
      v26 = __CFADD__(v25, a1);
      v27 = v25 + a1;
      if (v26)
      {
        goto LABEL_274;
      }

      *(v2 + 20) = v27;

      v28 = __OFADD__(v19, a1);
      v29 = v19 + a1;
      if (v28)
      {
        goto LABEL_279;
      }

      v30 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v30);
      if (v31)
      {
        a1 = v2 + 8;
        v32._countAndFlagsBits = 41;
        v32._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
      }

      v33 = *(v2 + 20);
      v26 = __CFADD__(v33, result);
      v34 = v33 + result;
      if (v26)
      {
        goto LABEL_280;
      }

      *(v2 + 20) = v34;
      v28 = __OFADD__(v29, result);
      result += v29;
      if (!v28)
      {
        return result;
      }

      __break(1u);
LABEL_16:
      v35 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v36 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CFC1B0(0xD000000000000010, 0x80000001B0F30590, v2 + 8, v36);
      if (v37)
      {
        v38._object = 0x80000001B0F30590;
        v38._countAndFlagsBits = 0xD000000000000010;
        result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
      }

      v39 = result;
      v40 = *(v2 + 20);
      v41 = (v40 + result);
      if (__CFADD__(v40, result))
      {
        goto LABEL_265;
      }

      *(v2 + 20) = v41;
      v295[0] = v35;
      if (*(v35 + 16))
      {
        result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v41);
        if (v42)
        {
          v43._countAndFlagsBits = 32;
          v43._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v43, v41);
        }

        v44 = result;
        v45 = *(v2 + 20);
        v26 = __CFADD__(v45, result);
        v46 = v45 + result;
        if (v26)
        {
          goto LABEL_282;
        }

        *(v2 + 20) = v46;
      }

      else
      {
        v44 = 0;
      }

      MEMORY[0x1EEE9AC00](result);
      *(&v293 - 6) = sub_1B0E176FC;
      *(&v293 - 5) = 0;
      *(&v293 - 4) = v2;
      *(&v293 - 3) = v295;
      *(&v293 - 2) = 32;
      *(&v293 - 1) = 0xE100000000000000;
      result = sub_1B0DE7414(0, sub_1B0E18614, (&v293 - 8), v35);
      v165 = &result[v44];
      if (__OFADD__(v44, result))
      {
        goto LABEL_278;
      }

      if (!*(v35 + 16))
      {
        v169 = 0;
LABEL_110:

        v172 = &v165[v169];
        if (!__OFADD__(v165, v169))
        {
          result = &v172[v39];
          if (!__OFADD__(v39, v172))
          {
            return result;
          }

          __break(1u);
LABEL_114:
          v173 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x544F55515245564FuLL, 0xE900000000000041, v2 + 8, v173);
          if (v174)
          {
            v175._object = 0xE900000000000041;
            v175._countAndFlagsBits = 0x544F55515245564FLL;
            result = ByteBuffer._setStringSlowpath(_:at:)(v175, v173);
          }

          v176 = *(v2 + 20);
          v26 = __CFADD__(v176, result);
          v86 = v176 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_119:
          v177 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x44455249505845uLL, 0xE700000000000000, v2 + 8, v177);
          if (v178)
          {
            v179._countAndFlagsBits = 0x44455249505845;
            v179._object = 0xE700000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v179, v177);
          }

          v180 = *(v2 + 20);
          v26 = __CFADD__(v180, result);
          v86 = v180 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_124:
          v181 = *(v2 + 20);
          result = sub_1B0CFC1B0(0xD000000000000014, 0x80000001B0F30070, v2 + 8, v181);
          if (v182)
          {
            v183._countAndFlagsBits = 0xD000000000000014;
            v183._object = 0x80000001B0F30070;
            result = ByteBuffer._setStringSlowpath(_:at:)(v183, v181);
          }

          v184 = *(v2 + 20);
          v26 = __CFADD__(v184, result);
          v86 = v184 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_129:
          v185 = *(v2 + 20);
          result = sub_1B0CFC1B0(0xD000000000000010, 0x80000001B0F305D0, v2 + 8, v185);
          if (v186)
          {
            v187._object = 0x80000001B0F305D0;
            v187._countAndFlagsBits = 0xD000000000000010;
            result = ByteBuffer._setStringSlowpath(_:at:)(v187, v185);
          }

          v188 = *(v2 + 20);
          v26 = __CFADD__(v188, result);
          v86 = v188 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_134:
          v189 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4952572D44414552uLL, 0xEA00000000004554, v2 + 8, v189);
          if (v190)
          {
            v191._countAndFlagsBits = 0x4952572D44414552;
            v191._object = 0xEA00000000004554;
            result = ByteBuffer._setStringSlowpath(_:at:)(v191, v189);
          }

          v192 = *(v2 + 20);
          v26 = __CFADD__(v192, result);
          v86 = v192 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_139:
          v193 = *(v2 + 20);
          result = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F305B0, v2 + 8, v193);
          if (v194)
          {
            v195._countAndFlagsBits = 0xD000000000000012;
            v195._object = 0x80000001B0F305B0;
            result = ByteBuffer._setStringSlowpath(_:at:)(v195, v193);
          }

          v196 = *(v2 + 20);
          v26 = __CFADD__(v196, result);
          v86 = v196 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_144:
          v197 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4445534F4C43uLL, 0xE600000000000000, v2 + 8, v197);
          if (v198)
          {
            v199._countAndFlagsBits = 0x4445534F4C43;
            v199._object = 0xE600000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v199, v197);
          }

          v200 = *(v2 + 20);
          v26 = __CFADD__(v200, result);
          v86 = v200 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_149:
          v201 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x544F4E4E4143uLL, 0xE600000000000000, v2 + 8, v201);
          if (v202)
          {
            v203._countAndFlagsBits = 0x544F4E4E4143;
            v203._object = 0xE600000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v203, v201);
          }

          v204 = *(v2 + 20);
          v26 = __CFADD__(v204, result);
          v86 = v204 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_154:
          v205 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x5542544E45494C43uLL, 0xE900000000000047, v2 + 8, v205);
          if (v206)
          {
            v207._object = 0xE900000000000047;
            v207._countAndFlagsBits = 0x5542544E45494C43;
            result = ByteBuffer._setStringSlowpath(_:at:)(v207, v205);
          }

          v208 = *(v2 + 20);
          v26 = __CFADD__(v208, result);
          v86 = v208 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_159:
          v209 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4553524150uLL, 0xE500000000000000, v2 + 8, v209);
          if (v210)
          {
            v211._countAndFlagsBits = 0x4553524150;
            v211._object = 0xE500000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v211, v209);
          }

          v212 = *(v2 + 20);
          v26 = __CFADD__(v212, result);
          v86 = v212 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_164:
          v213 = *(v2 + 20);
          result = sub_1B0CFC1B0(0xD000000000000013, 0x80000001B0F30090, v2 + 8, v213);
          if (v214)
          {
            v215._countAndFlagsBits = 0xD000000000000013;
            v215._object = 0x80000001B0F30090;
            result = ByteBuffer._setStringSlowpath(_:at:)(v215, v213);
          }

          v216 = *(v2 + 20);
          v26 = __CFADD__(v216, result);
          v86 = v216 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_169:
          v217 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4C4E4F2D44414552uLL, 0xE900000000000059, v2 + 8, v217);
          if (v218)
          {
            v219._object = 0xE900000000000059;
            v219._countAndFlagsBits = 0x4C4E4F2D44414552;
            result = ByteBuffer._setStringSlowpath(_:at:)(v219, v217);
          }

          v220 = *(v2 + 20);
          v26 = __CFADD__(v220, result);
          v86 = v220 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_174:
          v221 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x52545441455355uLL, 0xE700000000000000, v2 + 8, v221);
          if (v222)
          {
            v223._countAndFlagsBits = 0x52545441455355;
            v223._object = 0xE700000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v223, v221);
          }

          v224 = *(v2 + 20);
          v26 = __CFADD__(v224, result);
          v86 = v224 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_179:
          v225 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4559444145524C41uLL, 0xED00005354534958, v2 + 8, v225);
          if (v226)
          {
            v227._countAndFlagsBits = 0x4559444145524C41;
            v227._object = 0xED00005354534958;
            result = ByteBuffer._setStringSlowpath(_:at:)(v227, v225);
          }

          v228 = *(v2 + 20);
          v26 = __CFADD__(v228, result);
          v86 = v228 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_184:
          v229 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x5259434156495250uLL, 0xEF44455249555145, v2 + 8, v229);
          if (v230)
          {
            v231._countAndFlagsBits = 0x5259434156495250;
            v231._object = 0xEF44455249555145;
            result = ByteBuffer._setStringSlowpath(_:at:)(v231, v229);
          }

          v232 = *(v2 + 20);
          v26 = __CFADD__(v232, result);
          v86 = v232 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_189:
          v233 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4553554E49uLL, 0xE500000000000000, v2 + 8, v233);
          if (v234)
          {
            v235._countAndFlagsBits = 0x4553554E49;
            v235._object = 0xE500000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v235, v233);
          }

          v236 = *(v2 + 20);
          v26 = __CFADD__(v236, result);
          v86 = v236 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_194:
          v237 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x5441455243595254uLL, 0xE900000000000045, v2 + 8, v237);
          if (v238)
          {
            v239._object = 0xE900000000000045;
            v239._countAndFlagsBits = 0x5441455243595254;
            result = ByteBuffer._setStringSlowpath(_:at:)(v239, v237);
          }

          v240 = *(v2 + 20);
          v26 = __CFADD__(v240, result);
          v86 = v240 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_199:
          v241 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4945474E55505845uLL, 0xED00004445555353, v2 + 8, v241);
          if (v242)
          {
            v243._countAndFlagsBits = 0x4945474E55505845;
            v243._object = 0xED00004445555353;
            result = ByteBuffer._setStringSlowpath(_:at:)(v243, v241);
          }

          v244 = *(v2 + 20);
          v26 = __CFADD__(v244, result);
          v86 = v244 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_204:
          v245 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x414C494156414E55uLL, 0xEB00000000454C42, v2 + 8, v245);
          if (v246)
          {
            v247._countAndFlagsBits = 0x414C494156414E55;
            v247._object = 0xEB00000000454C42;
            result = ByteBuffer._setStringSlowpath(_:at:)(v247, v245);
          }

          v248 = *(v2 + 20);
          v26 = __CFADD__(v248, result);
          v86 = v248 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_209:
          v249 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x5453544F4E444955uLL, 0xEC000000594B4349, v2 + 8, v249);
          if (v250)
          {
            v251._countAndFlagsBits = 0x5453544F4E444955;
            v251._object = 0xEC000000594B4349;
            result = ByteBuffer._setStringSlowpath(_:at:)(v251, v249);
          }

          v252 = *(v2 + 20);
          v26 = __CFADD__(v252, result);
          v86 = v252 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_214:
          v253 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x41544341544E4F43uLL, 0xEC0000004E494D44, v2 + 8, v253);
          if (v254)
          {
            v255._countAndFlagsBits = 0x41544341544E4F43;
            v255._object = 0xEC0000004E494D44;
            result = ByteBuffer._setStringSlowpath(_:at:)(v255, v253);
          }

          v256 = *(v2 + 20);
          v26 = __CFADD__(v256, result);
          v86 = v256 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_219:
          v257 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x514553444F4D4F4EuLL, 0xE800000000000000, v2 + 8, v257);
          if (v258)
          {
            v259._countAndFlagsBits = 0x514553444F4D4F4ELL;
            v259._object = 0xE800000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v259, v257);
          }

          v260 = *(v2 + 20);
          v26 = __CFADD__(v260, result);
          v86 = v260 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_224:
          v261 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4445564153544F4EuLL, 0xE800000000000000, v2 + 8, v261);
          if (v262)
          {
            v263._countAndFlagsBits = 0x4445564153544F4ELL;
            v263._object = 0xE800000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v263, v261);
          }

          v264 = *(v2 + 20);
          v26 = __CFADD__(v264, result);
          v86 = v264 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_229:
          v265 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4955514552444955uLL, 0xEB00000000444552, v2 + 8, v265);
          if (v266)
          {
            v267._countAndFlagsBits = 0x4955514552444955;
            v267._object = 0xEB00000000444552;
            result = ByteBuffer._setStringSlowpath(_:at:)(v267, v265);
          }

          v268 = *(v2 + 20);
          v26 = __CFADD__(v268, result);
          v86 = v268 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_234:
          v269 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4954505552524F43uLL, 0xEA00000000004E4FLL, v2 + 8, v269);
          if (v270)
          {
            v271._object = 0xEA00000000004E4FLL;
            v271._countAndFlagsBits = 0x4954505552524F43;
            result = ByteBuffer._setStringSlowpath(_:at:)(v271, v269);
          }

          v272 = *(v2 + 20);
          v26 = __CFADD__(v272, result);
          v86 = v272 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_239:
          v273 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x4D5245504F4EuLL, 0xE600000000000000, v2 + 8, v273);
          if (v274)
          {
            v275._countAndFlagsBits = 0x4D5245504F4ELL;
            v275._object = 0xE600000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v275, v273);
          }

          v276 = *(v2 + 20);
          v26 = __CFADD__(v276, result);
          v86 = v276 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_244:
          v277 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x5542524556524553uLL, 0xE900000000000047, v2 + 8, v277);
          if (v278)
          {
            v279._object = 0xE900000000000047;
            v279._countAndFlagsBits = 0x5542524556524553;
            result = ByteBuffer._setStringSlowpath(_:at:)(v279, v277);
          }

          v280 = *(v2 + 20);
          v26 = __CFADD__(v280, result);
          v86 = v280 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_249:
          v281 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x54534958454E4F4EuLL, 0xEB00000000544E45, v2 + 8, v281);
          if (v282)
          {
            v283._countAndFlagsBits = 0x54534958454E4F4ELL;
            v283._object = 0xEB00000000544E45;
            result = ByteBuffer._setStringSlowpath(_:at:)(v283, v281);
          }

          v284 = *(v2 + 20);
          v26 = __CFADD__(v284, result);
          v86 = v284 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_254:
          v285 = *(v2 + 20);
          result = sub_1B0CFC1B0(0xD000000000000011, 0x80000001B0F300B0, v2 + 8, v285);
          if (v286)
          {
            v287._countAndFlagsBits = 0xD000000000000011;
            v287._object = 0x80000001B0F300B0;
            result = ByteBuffer._setStringSlowpath(_:at:)(v287, v285);
          }

          v288 = *(v2 + 20);
          v26 = __CFADD__(v288, result);
          v86 = v288 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
LABEL_259:
          v289 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x54494D494CuLL, 0xE500000000000000, v2 + 8, v289);
          if (v290)
          {
            v291._countAndFlagsBits = 0x54494D494CLL;
            v291._object = 0xE500000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v291, v289);
          }

          v292 = *(v2 + 20);
          v26 = __CFADD__(v292, result);
          v86 = v292 + result;
          if (!v26)
          {
LABEL_89:
            *(v2 + 20) = v86;
            return result;
          }

          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
        }

        __break(1u);
LABEL_282:
        __break(1u);
        goto LABEL_283;
      }

      v166 = *(v2 + 20);
      result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v166);
      if (v167)
      {
        v168._countAndFlagsBits = 0;
        v168._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v168, v166);
      }

      v169 = result;
      v170 = *(v2 + 20);
      v26 = __CFADD__(v170, result);
      v171 = v170 + result;
      if (!v26)
      {
        *(v2 + 20) = v171;
        goto LABEL_110;
      }

LABEL_283:
      __break(1u);
      return result;
    case 0x11uLL:
      switch(__ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          goto LABEL_179;
        case 2:
          goto LABEL_159;
        case 3:
          goto LABEL_169;
        case 4:
          goto LABEL_134;
        case 5:
          goto LABEL_194;
        case 6:
          goto LABEL_209;
        case 7:
          goto LABEL_174;
        case 8:
          goto LABEL_224;
        case 9:
          goto LABEL_144;
        case 0xALL:
          goto LABEL_219;
        case 0xBLL:
          goto LABEL_129;
        case 0xCLL:
          goto LABEL_139;
        case 0xDLL:
          goto LABEL_204;
        case 0xELL:
          goto LABEL_124;
        case 0xFLL:
          goto LABEL_164;
        case 0x10:
          goto LABEL_119;
        case 0x11:
          goto LABEL_184;
        case 0x12:
          goto LABEL_214;
        case 0x13:
          goto LABEL_239;
        case 0x14:
          goto LABEL_189;
        case 0x15:
          goto LABEL_199;
        case 0x16:
          goto LABEL_234;
        case 0x17:
          goto LABEL_244;
        case 0x18:
          goto LABEL_154;
        case 0x19:
          goto LABEL_149;
        case 0x1ALL:
          goto LABEL_259;
        case 0x1BLL:
          goto LABEL_114;
        case 0x1CLL:
          goto LABEL_249;
        case 0x1DLL:
          goto LABEL_254;
        case 0x1ELL:
          goto LABEL_229;
        default:
          v122 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x5452454C41uLL, 0xE500000000000000, v2 + 8, v122);
          if (v123)
          {
            a1 = v2 + 8;
            v124._countAndFlagsBits = 0x5452454C41;
            v124._object = 0xE500000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v124, v122);
          }

          v125 = *(v2 + 20);
          v26 = __CFADD__(v125, result);
          v86 = v125 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
          break;
      }

LABEL_77:
      v126 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v127 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x204E4545534E55uLL, 0xE700000000000000, v2 + 8, v127);
      if (v128)
      {
        v129._countAndFlagsBits = 0x204E4545534E55;
        v129._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v129, v127);
      }

      v130 = result;
      v131 = *(v2 + 20);
      v132 = (v131 + result);
      if (__CFADD__(v131, result))
      {
        goto LABEL_271;
      }

      *(v2 + 20) = v132;
      LODWORD(v295[0]) = v126;
      v133 = sub_1B0E469C8();
      v135 = v134;
      v136 = sub_1B0CFC1B0(v133, v134, v2 + 8, v132);
      if (v137)
      {
        v138._countAndFlagsBits = v133;
        v138._object = v135;
        v136 = ByteBuffer._setStringSlowpath(_:at:)(v138, v132);
      }

      a1 = v136;

      v139 = *(v2 + 20);
      v26 = __CFADD__(v139, a1);
      v140 = v139 + a1;
      if (v26)
      {
        goto LABEL_277;
      }

      *(v2 + 20) = v140;
      result = (v130 + a1);
      if (!__OFADD__(v130, a1))
      {
        return result;
      }

      __break(1u);
LABEL_86:
      v141 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v295[0] = 0xD000000000000011;
      v295[1] = 0x80000001B0F305F0;
      v294[0] = v141;
      v142 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v142);

      v144 = v295[0];
      v143 = v295[1];
      v145 = *(v2 + 20);
      v146 = sub_1B0CFC1B0(v295[0], v295[1], v2 + 8, v145);
      if (v147)
      {
        v148._countAndFlagsBits = v144;
        v148._object = v143;
        v146 = ByteBuffer._setStringSlowpath(_:at:)(v148, v145);
      }

      v149 = v146;

      v150 = *(v2 + 20);
      result = v149;
      v26 = __CFADD__(v150, v149);
      v86 = v150 + v149;
      if (!v26)
      {
        goto LABEL_89;
      }

      goto LABEL_272;
    default:
      v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B0E17320(v11);
LABEL_70:
      v120 = v12;
      goto LABEL_99;
  }
}

uint64_t ResponseTextCode.hash(into:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v53 - v12;
  v14 = type metadata accessor for ResponseCodeAppend(0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      v41 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1B2728D70](3, v15.n128_f64[0]);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CEFE18(a1, v41);
      goto LABEL_32;
    case 2uLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1B2728D70](5, v15.n128_f64[0]);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0D48C38(a1, v31);
      goto LABEL_32;
    case 3uLL:
      v27 = 9;
      goto LABEL_28;
    case 4uLL:
      v27 = 10;
      goto LABEL_28;
    case 5uLL:
      v27 = 11;
LABEL_28:
      MEMORY[0x1B2728D70](v27, v15);
      return sub_1B0E46C88();
    case 6uLL:
      v43 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v45 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B2728D70](12, v15.n128_f64[0]);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0D48988(a1, v43);
      sub_1B0D48988(a1, v44);
      sub_1B0D48988(a1, v45);

      goto LABEL_32;
    case 7uLL:
      v40 = swift_projectBox();
      sub_1B0E18400(v40, v17);
      MEMORY[0x1B2728D70](13);
      sub_1B0E46C88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      return sub_1B0E18464(v17);
    case 8uLL:
      v48 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v47 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B2728D70](14, v15.n128_f64[0]);
      sub_1B0E46C88();
      MEMORY[0x1B2728D70](*(v48 + 16));
      v49 = *(v48 + 16);
      if (v49)
      {
        v50 = v48 + 36;
        do
        {
          sub_1B0E46C88();
          sub_1B0E46C88();
          v50 += 8;
          --v49;
        }

        while (v49);
      }

      result = MEMORY[0x1B2728D70](*(v47 + 16));
      v51 = *(v47 + 16);
      if (v51)
      {
        v52 = v47 + 36;
        do
        {
          sub_1B0E46C88();
          result = sub_1B0E46C88();
          v52 += 8;
          --v51;
        }

        while (v51);
      }

      return result;
    case 9uLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      MEMORY[0x1B2728D70](17, v15.n128_f64[0]);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (!v30)
      {
        return sub_1B0E46C68();
      }

      sub_1B0E46C68();

      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    case 0xAuLL:
      v46 = swift_projectBox();
      sub_1B03B5C80(v46, v13, &qword_1EB6E7440, &unk_1B0EF3200);
      MEMORY[0x1B2728D70](21);
      sub_1B03B5C80(v13, v10, &qword_1EB6E7440, &unk_1B0EF3200);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        sub_1B03C60A4(v10, v7, &qword_1EB6E7430, &qword_1B0EFBC90);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v7, &qword_1EB6E7430, &qword_1B0EFBC90);
      }

      return sub_1B0398EFC(v13, &qword_1EB6E7440, &unk_1B0EF3200);
    case 0xBuLL:
      v26 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1B2728D70](22, v15.n128_f64[0]);
      return MEMORY[0x1B2728DB0](v26);
    case 0xCuLL:
      v28 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v29 = 23;
      goto LABEL_30;
    case 0xDuLL:
      v28 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v29 = 24;
LABEL_30:
      MEMORY[0x1B2728D70](v29, v15);
      v42 = v28;
      return MEMORY[0x1B2728D70](v42);
    case 0xEuLL:
      v22 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1B2728D70](27, v15.n128_f64[0]);
      result = MEMORY[0x1B2728D70](*(v22 + 16));
      v23 = *(v22 + 16);
      if (!v23)
      {
        return result;
      }

      v53[2] = a1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53[1] = v22;
      v24 = v22 + 64;
      do
      {
        v25 = *(v24 - 16);
        v53[3] = *(v24 - 8);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1B0E46C68();
        if (v25)
        {
          swift_beginAccess();
          sub_1B0E46C38();
        }

        v24 += 40;
        --v23;
      }

      while (v23);

    case 0xFuLL:
      v32 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      v55[12] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      v55[13] = v32;
      v33 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      v55[14] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      v55[15] = v33;
      v34 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v55[8] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v55[9] = v34;
      v35 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      v55[10] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      v55[11] = v35;
      v36 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v55[4] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v55[5] = v36;
      v37 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v55[6] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v55[7] = v37;
      v38 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v55[0] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v55[1] = v38;
      v39 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v55[2] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v55[3] = v39;
      MEMORY[0x1B2728D70](28);
      sub_1B0DC1FB8(v55, &v54);
      IMAPURL.hash(into:)(a1);
      return sub_1B0DC2014(v55);
    case 0x10uLL:
      MEMORY[0x1B2728D70](46, v15.n128_f64[0]);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_32;
    case 0x11uLL:
      switch(__ROR8__(a2 + 0x7FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          v42 = 1;
          break;
        case 2:
          v42 = 4;
          break;
        case 3:
          v42 = 6;
          break;
        case 4:
          v42 = 7;
          break;
        case 5:
          v42 = 8;
          break;
        case 6:
          v42 = 15;
          break;
        case 7:
          v42 = 16;
          break;
        case 8:
          v42 = 18;
          break;
        case 9:
          v42 = 19;
          break;
        case 0xALL:
          v42 = 20;
          break;
        case 0xBLL:
          v42 = 25;
          break;
        case 0xCLL:
          v42 = 26;
          break;
        case 0xDLL:
          v42 = 29;
          break;
        case 0xELL:
          v42 = 30;
          break;
        case 0xFLL:
          v42 = 31;
          break;
        case 0x10:
          v42 = 32;
          break;
        case 0x11:
          v42 = 33;
          break;
        case 0x12:
          v42 = 34;
          break;
        case 0x13:
          v42 = 35;
          break;
        case 0x14:
          v42 = 36;
          break;
        case 0x15:
          v42 = 37;
          break;
        case 0x16:
          v42 = 38;
          break;
        case 0x17:
          v42 = 39;
          break;
        case 0x18:
          v42 = 40;
          break;
        case 0x19:
          v42 = 41;
          break;
        case 0x1ALL:
          v42 = 42;
          break;
        case 0x1BLL:
          v42 = 43;
          break;
        case 0x1CLL:
          v42 = 44;
          break;
        case 0x1DLL:
          v42 = 45;
          break;
        case 0x1ELL:
          v42 = 47;
          break;
        default:
          v42 = 0;
          break;
      }

      return MEMORY[0x1B2728D70](v42);
    default:
      v18 = *(a2 + 16);
      MEMORY[0x1B2728D70](2, v15.n128_f64[0]);
      result = MEMORY[0x1B2728D70](*(v18 + 16));
      v20 = *(v18 + 16);
      if (!v20)
      {
        return result;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = v18 + 40;
      do
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v21 += 16;
        --v20;
      }

      while (v20);
LABEL_32:
  }
}

uint64_t ResponseTextCode.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  ResponseTextCode.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E17104()
{
  v1 = *v0;
  sub_1B0E46C28();
  ResponseTextCode.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E17154(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  ResponseTextCode.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t static ResponseTextCode.modified(_:)(uint64_t a1)
{
  return sub_1B0E171EC(a1, &unk_1EB6E26C0, &unk_1B0E9DE10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

{
  return sub_1B0E171EC(a1, &qword_1EB6E4040, &qword_1B0EC2B10, &qword_1EB6E4030, &qword_1B0EC2B00);
}

uint64_t sub_1B0E171EC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  v13 = swift_allocBox();
  v15 = v14;
  sub_1B03B5C80(a1, v12, a2, a3);
  sub_1B0E14D70(v12, a4, a5, a2, a3, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return v13 | 0x5000000000000000;
}

uint64_t sub_1B0E17320(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x5352414843444142uLL, 0xEA00000000005445, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x5352414843444142;
    v7._object = 0xEA00000000005445;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v11 = a1[2];
  if (v11)
  {
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    v16 = (v15 + result);
    if (__CFADD__(v15, result))
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v16;
    v42 = a1;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = result;
    v20 = *(v1 + 20);
    v21 = (v20 + result);
    if (__CFADD__(v20, result))
    {
      goto LABEL_30;
    }

    *(v1 + 20) = v21;
    result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v21);
    if (v22)
    {
      v23._countAndFlagsBits = 40;
      v23._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = *(v1 + 20);
    v25 = __CFADD__(v24, result);
    v26 = v24 + result;
    if (v25)
    {
      goto LABEL_31;
    }

    *(v1 + 20) = v26;
    v27 = v19 + result;
    if (__OFADD__(v19, result))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    MEMORY[0x1EEE9AC00](result);
    v41[2] = sub_1B0D5C820;
    v41[3] = 0;
    v41[4] = v2;
    v41[5] = &v42;
    v41[6] = 32;
    v41[7] = 0xE100000000000000;
    result = sub_1B0DE5BC8(0, sub_1B0DC40FC, v41, a1);
    v28 = v27 + result;
    if (__OFADD__(v27, result))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v29 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v29);
    if (v30)
    {
      v31._countAndFlagsBits = 41;
      v31._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
    }

    v32 = *(v2 + 20);
    v33 = (v32 + result);
    if (__CFADD__(v32, result))
    {
      goto LABEL_34;
    }

    *(v2 + 20) = v33;
    v34 = __OFADD__(v28, result);
    v35 = v28 + result;
    if (v34)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v33);
    if (v36)
    {
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v33);
    }

    v38 = *(v2 + 20);
    v25 = __CFADD__(v38, result);
    v39 = v38 + result;
    if (v25)
    {
      goto LABEL_36;
    }

    *(v2 + 20) = v39;
    v40 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v34 = __OFADD__(v14, v40);
    v11 = v14 + v40;
    if (v34)
    {
LABEL_38:
      __break(1u);
      return result;
    }
  }

  result = v8 + v11;
  if (__OFADD__(v8, v11))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1B0E175D8(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(a1, a2, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  if (a4)
  {
    MEMORY[0x1B2726E80](a3, a4);
    v17 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v16);
    if (v18)
    {
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
    }

    v20 = v17;

    v21 = *(v5 + 20);
    v22 = __CFADD__(v21, v20);
    v23 = v21 + v20;
    if (v22)
    {
      goto LABEL_13;
    }

    *(v5 + 20) = v23;
    result = v14 + v20;
    if (!__OFADD__(v14, v20))
    {
      return result;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E176FC(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 15) = *(a1 + 31);
  return sub_1B0DDC4F4(&v3);
}

uint64_t sub_1B0E17744@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v19 = *a2;
  v13 = *(a2 + 24);
  v16 = *(a2 + 10);
  v14 = a2 + 40;
  v15 = v16;
  LOWORD(v16) = *(v14 + 2);
  v17 = *a6;
  v20 = v12;
  v21 = v13;
  v22 = v15;
  v23 = v16;
  v24 = v14[6];
  result = sub_1B0E24578(v11, &v19, a3, a4, a5, v17, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72[-v8];
  v10 = type metadata accessor for ResponseCodeAppend(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72[-v14];
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 1)
      {
        goto LABEL_148;
      }

      v55 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v56 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      return sub_1B044DA4C(v55, v56);
    case 2uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 2)
      {
        goto LABEL_148;
      }

      v33 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = sub_1B0D38AE4(v33, v34);
      goto LABEL_33;
    case 3uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 3)
      {
        goto LABEL_148;
      }

      goto LABEL_51;
    case 4uLL:
      goto LABEL_17;
    case 5uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 5)
      {
        goto LABEL_148;
      }

LABEL_51:
      v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = a1 & 0xFFFFFFFFFFFFFFBLL;
      goto LABEL_52;
    case 6uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 6)
      {
        goto LABEL_148;
      }

      v58 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v59 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v60 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v61 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v62 = *(v60 + 24);
      v63 = *(v60 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0D38730(v59, v61) & 1) != 0 && (sub_1B0D38730(v58, v62))
      {
        v64 = sub_1B0D38730(v57, v63);

        if (v64)
        {
          goto LABEL_147;
        }
      }

      else
      {
      }

      goto LABEL_148;
    case 7uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 7)
      {
        goto LABEL_148;
      }

      v52 = swift_projectBox();
      v53 = swift_projectBox();
      sub_1B0E18400(v52, v15);
      sub_1B0E18400(v53, v12);
      if (*v15 == *v12)
      {
        sub_1B03D06F8();
        v54 = sub_1B0E46E08();
        sub_1B0E18464(v12);
        sub_1B0E18464(v15);
        if (v54)
        {
          goto LABEL_147;
        }
      }

      else
      {
        sub_1B0E18464(v12);
        sub_1B0E18464(v15);
      }

      goto LABEL_148;
    case 8uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 8)
      {
        goto LABEL_148;
      }

      v67 = a2 & 0xFFFFFFFFFFFFFFBLL;
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_148;
      }

      v68 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v69 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v70 = *(v67 + 32);
      if ((sub_1B03D37DC(v68, *(v67 + 24)) & 1) == 0 || (sub_1B03D37DC(v69, v70) & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    case 9uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 9)
      {
        goto LABEL_148;
      }

      v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if (v26 != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) || v27 != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v32 = 0;
        if ((sub_1B0E46A78() & 1) == 0)
        {
          return v32 & 1;
        }
      }

      if (v28)
      {
        if (!v30 || (v29 != v31 || v28 != v30) && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_148;
        }

LABEL_147:
        v32 = 1;
        return v32 & 1;
      }

      if (!v30)
      {
        goto LABEL_147;
      }

LABEL_148:
      v32 = 0;
      return v32 & 1;
    case 0xAuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xA)
      {
        goto LABEL_148;
      }

      v65 = swift_projectBox();
      v66 = swift_projectBox();
      sub_1B03B5C80(v65, v9, &qword_1EB6E7440, &unk_1B0EF3200);
      sub_1B03B5C80(v66, v6, &qword_1EB6E7440, &unk_1B0EF3200);
      v32 = sub_1B0E1AC70(v9, v6);
      sub_1B0398EFC(v6, &qword_1EB6E7440, &unk_1B0EF3200);
      sub_1B0398EFC(v9, &qword_1EB6E7440, &unk_1B0EF3200);
      return v32 & 1;
    case 0xBuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xB)
      {
        goto LABEL_148;
      }

      v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (((v23 | v22) & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      __break(1u);
LABEL_17:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 4)
      {
        goto LABEL_148;
      }

      v24 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = a2 & 0xFFFFFFFFFFFFFFBLL;
LABEL_52:
      v32 = v24 == *(v25 + 16);
      return v32 & 1;
    case 0xCuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xC)
      {
        goto LABEL_148;
      }

      goto LABEL_54;
    case 0xDuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xD)
      {
        goto LABEL_148;
      }

LABEL_54:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
LABEL_55:
      v32 = v23 == v22;
      return v32 & 1;
    case 0xEuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xE)
      {
        goto LABEL_148;
      }

      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v20 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = sub_1B0D38BF0(v19, v20);
LABEL_33:
      v35 = v21;

      return v35 & 1;
    case 0xFuLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      v73[12] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      v73[13] = v36;
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      v73[14] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      v73[15] = v37;
      v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v73[8] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v73[9] = v38;
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      v73[10] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      v73[11] = v39;
      v40 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v73[4] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v73[5] = v40;
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v73[6] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v73[7] = v41;
      v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v73[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v73[1] = v42;
      v43 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v73[2] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v73[3] = v43;
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xF)
      {
        goto LABEL_148;
      }

      v44 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      v74[12] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      v74[13] = v44;
      v45 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      v74[14] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      v74[15] = v45;
      v46 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v74[8] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v74[9] = v46;
      v47 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      v74[10] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      v74[11] = v47;
      v48 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v74[4] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v74[5] = v48;
      v49 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v74[6] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v74[7] = v49;
      v50 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v74[0] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74[1] = v50;
      v51 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v74[2] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v74[3] = v51;
      sub_1B0DC1FB8(v74, v72);
      v32 = _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(v73, v74);
      sub_1B0DC2014(v74);
      return v32 & 1;
    case 0x10uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x10)
      {
        goto LABEL_148;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_147;
      }

      return sub_1B0E46A78();
    case 0x11uLL:
      switch(__ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000000CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 2:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000014)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 3:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000001CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 4:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000024)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 5:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 40;
          break;
        case 6:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000034)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 7:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000003CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 8:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000044)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 9:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 72;
          break;
        case 0xALL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 80;
          break;
        case 0xBLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 88;
          break;
        case 0xCLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000064)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0xDLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 104;
          break;
        case 0xELL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000074)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0xFLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000007CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x10:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000084)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x11:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 136;
          break;
        case 0x12:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 144;
          break;
        case 0x13:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 152;
          break;
        case 0x14:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 160;
          break;
        case 0x15:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 168;
          break;
        case 0x16:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 176;
          break;
        case 0x17:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 184;
          break;
        case 0x18:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x80000000000000C4)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x19:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 200;
          break;
        case 0x1ALL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 208;
          break;
        case 0x1BLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 216;
          break;
        case 0x1CLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x80000000000000E4)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x1DLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 232;
          break;
        case 0x1ELL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x80000000000000F4)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        default:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000004)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
      }

      if (a2 == (v71 | 0x8000000000000004))
      {
        goto LABEL_147;
      }

      goto LABEL_148;
    default:
      if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
      {
        goto LABEL_148;
      }

      v16 = *(a1 + 16);
      v17 = *(a2 + 16);

      return sub_1B045202C(v16, v17);
  }
}

uint64_t sub_1B0E18400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseCodeAppend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E18464(uint64_t a1)
{
  v2 = type metadata accessor for ResponseCodeAppend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0E184C4()
{
  result = qword_1EB6E7B28;
  if (!qword_1EB6E7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B28);
  }

  return result;
}

uint64_t sub_1B0E18518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6F && *(a1 + 8))
  {
    return (*a1 + 111);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0E18574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6E)
  {
    *result = a2 - 111;
    if (a3 >= 0x6F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1B0E185C4(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x11)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 17)) | 0x8000000000000004;
  }

  return result;
}

uint64_t sub_1B0E18638(uint64_t *a1)
{
  result = *a1;
  v4 = a1[4];
  if (v4 >> 62)
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = a1[3];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    if (v4 >> 62 == 1)
    {
      if (v4)
      {
        result = sub_1B0DF6F58(result, a1[1], v5, v7);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v8 | v9 | v10;
      if (v4 == 0x8000000000000000 && (v5 | v6 | result | v7 | v11) == 0)
      {
LABEL_32:
        v31 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x4249524353425553uLL, 0xEA00000000004445, v1 + 8, v31);
        if (v32)
        {
          v33._countAndFlagsBits = 0x4249524353425553;
          v33._object = 0xEA00000000004445;
          result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
        }

        v34 = *(v1 + 20);
        v16 = __CFADD__(v34, result);
        v17 = v34 + result;
        if (!v16)
        {
          goto LABEL_40;
        }

        __break(1u);
LABEL_37:
        v35 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x2D4C414943455053uLL, 0xEB00000000455355, v1 + 8, v35);
        if (v36)
        {
          v37._countAndFlagsBits = 0x2D4C414943455053;
          v37._object = 0xEB00000000455355;
          result = ByteBuffer._setStringSlowpath(_:at:)(v37, v35);
        }

        v38 = *(v1 + 20);
        v16 = __CFADD__(v38, result);
        v17 = v38 + result;
        if (!v16)
        {
LABEL_40:
          *(v1 + 20) = v17;
          return result;
        }

LABEL_45:
        __break(1u);
        return result;
      }

      if (v4 != 0x8000000000000000 || result != 1 || v5 | v6 | v7 | v11)
      {
        goto LABEL_37;
      }

      v8 = 0x4E4552444C494843;
      v10 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x4E4552444C494843uLL, 0xE800000000000000, v1 + 8, v10);
      if (v13)
      {
        v14._countAndFlagsBits = 0x4E4552444C494843;
        v14._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v14, v10);
      }

      v15 = *(v1 + 20);
      v16 = __CFADD__(v15, result);
      v17 = v15 + result;
      if (!v16)
      {
        goto LABEL_40;
      }

      __break(1u);
    }

    v18 = *(v1 + 20);
    v19 = result;
    result = sub_1B0CFC1B0(result, v6, v1 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = v19;
      v21._object = v6;
      result = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = *(v1 + 20);
    v16 = __CFADD__(v22, result);
    v23 = v22 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_43;
    }

    *(v1 + 20) = v23;
LABEL_24:
    if (HIBYTE(v10) == 255)
    {
      return result;
    }

    v24 = result;
    v25 = *(v1 + 20);
    sub_1B0D3C8F0(v8, v9, v10, HIBYTE(v10) & 1);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v1 + 20);
    v16 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (!v16)
    {
      *(v1 + 20) = v29;
      v30 = v24 + result;
      if (!__OFADD__(v24, result))
      {
        v1 = sub_1B0DF7268(v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) & 1) << 56));
        sub_1B0D3CB98(v8, v9, v10);
        result = v30 + v1;
        if (!__OFADD__(v30, v1))
        {
          return result;
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  return sub_1B0DD051C(result);
}

uint64_t static ReturnOption.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[4];
  if (v4 >> 62)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    if (v4 >> 62 == 1)
    {
      v28[0] = v3;
      v28[1] = v5;
      v28[2] = v6;
      v28[3] = v7;
      v28[4] = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v28[5] = v8;
      v28[6] = v9;
      v28[7] = v10;
      v11 = *(a2 + 32);
      if (v11 >> 62 == 1)
      {
        v12 = *(a2 + 56);
        v13 = *(a2 + 16);
        v24[0] = *a2;
        v24[1] = v13;
        v25 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v26 = *(a2 + 40);
        v27 = v12;
        return sub_1B0DCA1A0(v28, v24);
      }

      return 0;
    }

    v17 = v6 | v5;
    v18 = v8 | v9 | v10;
    if (v4 == 0x8000000000000000 && (v17 | v3 | v7 | v18) == 0)
    {
      v21 = *(a2 + 32);
      if (v21 >> 62 != 2)
      {
        return 0;
      }

      if (v21 != 0x8000000000000000)
      {
        return 0;
      }

      v22 = vorrq_s8(*a2, *(a2 + 16));
      if (*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(a2 + 48) | *(a2 + 56) | *(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (v4 == 0x8000000000000000 && v3 == 1 && !(v17 | v7 | v18))
      {
        v20 = *(a2 + 32);
        if (v20 >> 62 != 2 || *(a2 + 48) | *(a2 + 56) | *(a2 + 40) || v20 != 0x8000000000000000 || *a2 != 1)
        {
          return 0;
        }
      }

      else
      {
        v23 = *(a2 + 32);
        if (v23 >> 62 != 2 || *(a2 + 48) | *(a2 + 56) | *(a2 + 40) || v23 != 0x8000000000000000 || *a2 != 2)
        {
          return 0;
        }
      }

      if (*(a2 + 16) | *(a2 + 24) | *(a2 + 8))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 32) >> 62)
  {
    return 0;
  }

  v15 = *a2;

  return sub_1B0CFDCE8(v3, v15);
}

uint64_t ReturnOption.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[4];
  if (v4 >> 62)
  {
    v5 = v1[1];
    v6 = v1[2];
    v7 = v1[3];
    v8 = v1[5];
    v9 = v1[6];
    v10 = v1[7];
    if (v4 >> 62 == 1)
    {
      MEMORY[0x1B2728D70](3);
      if (v4)
      {
        MEMORY[0x1B2728D70](1);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1B2728D70](0);
      }

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return sub_1B0D498DC(a1, v8, v9, v10);
    }

    else
    {
      v12 = v8 | v9 | v10;
      if (v4 == 0x8000000000000000 && (v6 | v5 | v3 | v7 | v12) == 0)
      {
        v14 = 0;
      }

      else if (v4 == 0x8000000000000000 && v3 == 1 && !(v6 | v5 | v7 | v12))
      {
        v14 = 1;
      }

      else
      {
        v14 = 4;
      }

      return MEMORY[0x1B2728D70](v14);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](2);

    return sub_1B0CEFC84(a1, v3);
  }
}

uint64_t ReturnOption.hashValue.getter()
{
  sub_1B0E46C28();
  ReturnOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E18D24()
{
  sub_1B0E46C28();
  ReturnOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E18D68(uint64_t a1)
{
  sub_1B0E46C28();
  ReturnOption.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E18DA4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[4];
  if (v5 >> 62)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v12 = a1[5];
    v11 = a1[6];
    v13 = a1[7];
    v14 = a2[1];
    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[5];
    v18 = a2[6];
    v19 = a2[7];
    if (v5 >> 62 == 1)
    {
      v24[0] = v4;
      v24[1] = v8;
      v24[2] = v9;
      v24[3] = v10;
      v24[4] = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v24[5] = v12;
      v24[6] = v11;
      v24[7] = v13;
      if (v7 >> 62 == 1)
      {
        v25[0] = v6;
        v25[1] = v14;
        v25[2] = v15;
        v25[3] = v16;
        v25[4] = v7 & 0x3FFFFFFFFFFFFFFFLL;
        v25[5] = v17;
        v25[6] = v18;
        v25[7] = v19;
        return sub_1B0DCA1A0(v24, v25);
      }

      return 0;
    }

    v22 = v9 | v8;
    v23 = v12 | v11 | v13;
    if (v5 != 0x8000000000000000 || v22 | v4 | v10 | v23)
    {
      if (v5 == 0x8000000000000000 && v4 == 1 && !(v22 | v10 | v23))
      {
        if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || v6 != 1)
        {
          return 0;
        }
      }

      else if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || v6 != 2)
      {
        return 0;
      }

      if (v15 | v14 | v16 || v18 | v17 | v19)
      {
        return 0;
      }
    }

    else if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || v15 | v14 | v6 | v16 | v17 | v18 | v19)
    {
      return 0;
    }

    return 1;
  }

  if (v7 >> 62)
  {
    return 0;
  }

  return sub_1B0CFDCE8(v4, v6);
}

unint64_t sub_1B0E18F5C()
{
  result = qword_1EB6E7B30;
  if (!qword_1EB6E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B30);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12NIOIMAPCore212ReturnOptionO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0E18FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0E1901C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1B0E1908C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[4] = result[4] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
  }

  return result;
}

uint64_t sub_1B0E190D0(uint64_t a1)
{
  v3 = sub_1B0D4B6B8(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = (v8 + result);
  if (__CFADD__(v8, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v9;
  v10 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  result = sub_1B0CFC1B0(v12, v11, v1 + 8, v9);
  if (v13)
  {
    v14._countAndFlagsBits = v12;
    v14._object = v11;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v9);
  }

  v15 = *(v1 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v10, result);
  result += v10;
  if (v18)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t RumpURLAndMechanism.init(urlRump:mechanism:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = WORD2(a3);
  *(a6 + 22) = BYTE6(a3);
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t RumpURLAndMechanism.urlRump.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t RumpURLAndMechanism.mechanism.getter()
{
  v1 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t RumpURLAndMechanism.mechanism.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t static RumpURLAndMechanism.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1B0E46A78();
}

uint64_t RumpURLAndMechanism.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  sub_1B0E46C38();
  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t RumpURLAndMechanism.hashValue.getter()
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E19524(uint64_t a1)
{
  sub_1B0E46C28();
  RumpURLAndMechanism.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E19560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (!sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

unint64_t sub_1B0E19620()
{
  result = qword_1EB6E7B38;
  if (!qword_1EB6E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B38);
  }

  return result;
}

unint64_t sub_1B0E196AC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 49;
    }

    else
    {
      v4 = 0x7974696E69666E69;
    }

    if (v3 == 1)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE100000000000000;
    v4 = 48;
  }

  MEMORY[0x1B2726E80](v4, v5);

  v6 = *(v1 + 20);
  v7 = sub_1B0CFC1B0(0x204854504544uLL, 0xE600000000000000, v1 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x204854504544;
    v9._object = 0xE600000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(v2 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v14;
    return v10;
  }

  return result;
}

uint64_t sub_1B0E197BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 49;
  if (v2 != 1)
  {
    v4 = 0x7974696E69666E69;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 48;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 49;
  if (*a2 != 1)
  {
    v8 = 0x7974696E69666E69;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 48;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B0E46A78();
  }

  return v11 & 1;
}

unint64_t sub_1B0E198A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0E19D68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B0E198D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 49;
  if (v2 != 1)
  {
    v5 = 0x7974696E69666E69;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 48;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ScopeOption.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ScopeOption.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E19A18()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E19AA4(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0E19B1C(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore211ScopeOptionV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 49;
    }

    else
    {
      v3 = 0x7974696E69666E69;
    }

    if (v2 == 1)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 49;
      }

      else
      {
        v6 = 0x7974696E69666E69;
      }

      if (v5 == 1)
      {
        v7 = 0xE100000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE100000000000000;
    v3 = 48;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE100000000000000;
  if (v3 != 48)
  {
LABEL_21:
    v8 = sub_1B0E46A78();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

unint64_t sub_1B0E19C9C()
{
  result = qword_1EB6E7B40;
  if (!qword_1EB6E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B40);
  }

  return result;
}

unint64_t sub_1B0E19D14()
{
  result = qword_1EB6E7B48;
  if (!qword_1EB6E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B48);
  }

  return result;
}

unint64_t sub_1B0E19D68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1B0E19DC0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  v5 = sub_1B0CFC1B0(0x22204741542820uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x22204741542820;
    v7._object = 0xE700000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;
  v9 = *(v1 + 20);
  v10 = (v9 + v5);
  if (__CFADD__(v9, v5))
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v10;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = sub_1B0CFC1B0(*a1, v12, v1 + 8, v10);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v12;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v10);
  }

  v16 = *(v1 + 20);
  v17 = (v16 + v13);
  if (__CFADD__(v16, v13))
  {
    goto LABEL_36;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v8, v13);
  v19 = v8 + v13;
  if (v18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v1 + 8, v17);
  if (v21)
  {
    v22._countAndFlagsBits = 34;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v17);
  }

  v23 = *(v1 + 20);
  v24 = (v23 + v20);
  if (__CFADD__(v23, v20))
  {
    goto LABEL_38;
  }

  *(v1 + 20) = v24;
  v25 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = *(a1 + 16);
  if (!v26)
  {
    v36 = v25;
    goto LABEL_18;
  }

  v27 = sub_1B0CFC1B0(0x584F424C49414D20uLL, 0xE900000000000020, v1 + 8, v24);
  if (v28)
  {
    v29._countAndFlagsBits = 0x584F424C49414D20;
    v29._object = 0xE900000000000020;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v24);
  }

  v30 = v27;
  v31 = *(v1 + 20);
  v32 = __CFADD__(v31, v27);
  v33 = v31 + v27;
  if (v32)
  {
    goto LABEL_43;
  }

  *(v1 + 20) = v33;
  sub_1B0DD59A4(v26);
  v35 = v30 + v34;
  if (__OFADD__(v30, v34))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v36 = v25 + v35;
  if (__OFADD__(v25, v35))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_18:
  if (*(a1 + 32))
  {
    v37 = 0;
  }

  else
  {
    v38 = *(v1 + 20);
    v39 = sub_1B0CFC1B0(0x494C415644495520uLL, 0xED00002059544944, v1 + 8, v38);
    if (v40)
    {
      v41._countAndFlagsBits = 0x494C415644495520;
      v41._object = 0xED00002059544944;
      v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
    }

    v42 = v39;
    v43 = *(v1 + 20);
    v44 = (v43 + v39);
    if (__CFADD__(v43, v39))
    {
      goto LABEL_45;
    }

    *(v1 + 20) = v44;
    v45 = sub_1B0E469C8();
    v47 = v46;
    v48 = sub_1B0CFC1B0(v45, v46, v1 + 8, v44);
    if (v49)
    {
      v50._countAndFlagsBits = v45;
      v50._object = v47;
      v48 = ByteBuffer._setStringSlowpath(_:at:)(v50, v44);
    }

    v51 = v48;

    v52 = *(v2 + 20);
    v32 = __CFADD__(v52, v51);
    v53 = v52 + v51;
    if (v32)
    {
      goto LABEL_46;
    }

    *(v2 + 20) = v53;
    v37 = v42 + v51;
    if (__OFADD__(v42, v51))
    {
LABEL_47:
      __break(1u);
      return;
    }
  }

  v54 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    goto LABEL_40;
  }

  v55 = *(v2 + 20);
  v56 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v55);
  if (v57)
  {
    v58._countAndFlagsBits = 41;
    v58._object = 0xE100000000000000;
    v56 = ByteBuffer._setStringSlowpath(_:at:)(v58, v55);
  }

  v59 = *(v2 + 20);
  v32 = __CFADD__(v59, v56);
  v60 = v59 + v56;
  if (v32)
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v60;
  if (__OFADD__(v54, v56))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

uint64_t SearchCorrelator.init(tag:mailbox:uidValidity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = a5;
  *(a6 + 32) = BYTE4(a5) & 1;
  return result;
}

uint64_t SearchCorrelator.tag.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t SearchCorrelator.tag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchCorrelator.mailbox.setter(uint64_t a1, int a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SearchCorrelator.uidValidity.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t SearchCorrelator.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v2 | (v2 << 32));
  }

  else
  {
    sub_1B0E46C68();
  }

  if (*(v1 + 32) == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return sub_1B0E46C88();
}

uint64_t SearchCorrelator.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v1 | (v1 << 32));
  }

  else
  {
    sub_1B0E46C68();
  }

  if (*(v0 + 32) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1A3A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2)
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v3 | (v3 << 32));
    if (v4)
    {
      return sub_1B0E46C68();
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v4)
    {
      return sub_1B0E46C68();
    }
  }

  sub_1B0E46C68();
  return sub_1B0E46C88();
}

uint64_t sub_1B0E1A430(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (!v2)
  {
    sub_1B0E46C68();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    sub_1B0E46C88();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

BOOL sub_1B0E1A4F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6 || (*(a1 + 6) | (*(a1 + 6) << 32)) != (*(a2 + 24) | (*(a2 + 24) << 32)) || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v5, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a2 + 32);
  if ((a1[4] & 1) == 0)
  {
    if (*(a1 + 7) != *(a2 + 28))
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

unint64_t sub_1B0E1A5F0()
{
  result = qword_1EB6E7B50;
  if (!qword_1EB6E7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B50);
  }

  return result;
}

uint64_t sub_1B0E1A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B0E1E700(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1B0E1A698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B68, &qword_1B0EFC768);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1B03B5C80(a1, &v19 - v12, &qword_1EB6E3EB0, &unk_1B0EC2010);
  sub_1B03B5C80(a2, &v13[v15], &qword_1EB6E3EB0, &unk_1B0EC2010);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B03B5C80(v13, v10, &qword_1EB6E3EB0, &unk_1B0EC2010);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1B03C60A4(&v13[v15], v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v17 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v13, &qword_1EB6E3EB0, &unk_1B0EC2010);
      return v17 & 1;
    }

    sub_1B0398EFC(v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B0398EFC(v13, &qword_1EB6E7B68, &qword_1B0EFC768);
    v17 = 0;
    return v17 & 1;
  }

  sub_1B0398EFC(v13, &qword_1EB6E3EB0, &unk_1B0EC2010);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1B0E1A984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1B03B5C80(a1, &v19 - v12, &qword_1EB6E4050, &unk_1B0EC2B20);
  sub_1B03B5C80(a2, &v13[v15], &qword_1EB6E4050, &unk_1B0EC2B20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B03B5C80(v13, v10, &qword_1EB6E4050, &unk_1B0EC2B20);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1B03C60A4(&v13[v15], v7, &qword_1EB6E4040, &qword_1B0EC2B10);
      sub_1B03D06F8();
      v17 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &qword_1EB6E4040, &qword_1B0EC2B10);
      sub_1B0398EFC(v10, &qword_1EB6E4040, &qword_1B0EC2B10);
      sub_1B0398EFC(v13, &qword_1EB6E4050, &unk_1B0EC2B20);
      return v17 & 1;
    }

    sub_1B0398EFC(v10, &qword_1EB6E4040, &qword_1B0EC2B10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B0398EFC(v13, &qword_1EB6E6F10, &qword_1B0EEEAD0);
    v17 = 0;
    return v17 & 1;
  }

  sub_1B0398EFC(v13, &qword_1EB6E4050, &unk_1B0EC2B20);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1B0E1AC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B60, &qword_1B0EFC760);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1B03B5C80(a1, &v19 - v12, &qword_1EB6E7440, &unk_1B0EF3200);
  sub_1B03B5C80(a2, &v13[v15], &qword_1EB6E7440, &unk_1B0EF3200);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B03B5C80(v13, v10, &qword_1EB6E7440, &unk_1B0EF3200);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1B03C60A4(&v13[v15], v7, &qword_1EB6E7430, &qword_1B0EFBC90);
      sub_1B03D06F8();
      v17 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &qword_1EB6E7430, &qword_1B0EFBC90);
      sub_1B0398EFC(v10, &qword_1EB6E7430, &qword_1B0EFBC90);
      sub_1B0398EFC(v13, &qword_1EB6E7440, &unk_1B0EF3200);
      return v17 & 1;
    }

    sub_1B0398EFC(v10, &qword_1EB6E7430, &qword_1B0EFBC90);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B0398EFC(v13, &qword_1EB6E7B60, &qword_1B0EFC760);
    v17 = 0;
    return v17 & 1;
  }

  sub_1B0398EFC(v13, &qword_1EB6E7440, &unk_1B0EF3200);
  v17 = 1;
  return v17 & 1;
}

unint64_t static SearchKey.__derived_enum_equals(_:_:)(unint64_t a1, unint64_t a2)
{
  while (2)
  {
    v2 = a2;
    v3 = a1;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
    MEMORY[0x1EEE9AC00](v4 - 8);
    v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v91 - v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    MEMORY[0x1EEE9AC00](v10 - 8);
    v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v13);
    v15 = &v91 - v14;
    switch((v3 >> 59) & 0x1E | (v3 >> 2) & 1)
    {
      case 1uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 1)
        {
          return 0;
        }

        goto LABEL_59;
      case 2uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 2)
        {
          goto LABEL_68;
        }

        return 0;
      case 3uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 3)
        {
          goto LABEL_68;
        }

        return 0;
      case 4uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 4)
        {
          goto LABEL_68;
        }

        return 0;
      case 5uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 5)
        {
          goto LABEL_49;
        }

        return 0;
      case 6uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 6)
        {
          goto LABEL_59;
        }

        return 0;
      case 7uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 7)
        {
          goto LABEL_59;
        }

        return 0;
      case 8uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 8)
        {
          goto LABEL_68;
        }

        return 0;
      case 9uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 9)
        {
          goto LABEL_68;
        }

        return 0;
      case 0xAuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xA)
        {
          return 0;
        }

LABEL_68:
        v68 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
        v69 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
        v70 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v72 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v71 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v73 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v74 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v75 = *(v73 + 24);
        v76 = v70 | (v68 << 48) | (v69 << 32);
        v77 = *(v73 + 32) | (*(v73 + 36) << 32) | (*(v73 + 38) << 48);

        v32 = sub_1B0C2DB54(v72, v71, v76, v74, v75, v77);

        return v32 & 1;
      case 0xBuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xB)
        {
          return 0;
        }

LABEL_49:
        v62 = sub_1B0E44BB8();
        v64 = v63;
        if (v62 == sub_1B0E44BB8() && v64 == v65)
        {

          return 1;
        }

        v89 = sub_1B0E46A78();

        return v89 & 1;
      case 0xCuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xC)
        {
          return 0;
        }

        v33 = v3 & 0xFFFFFFFFFFFFFFBLL;
        v34 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v35 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v36 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v37 = *(v33 + 40);
        v38 = *(v33 + 48);
        v39 = *(v33 + 52);
        v40 = *(v33 + 54);
        v41 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v42 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v43 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v44 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v45 = *(v41 + 40);
        v46 = *(v41 + 48);
        v47 = *(v41 + 52);
        v48 = *(v41 + 54);
        if ((v34 != v42 || v35 != v43) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        return sub_1B0C2DB54(v36, v37, v38 | (v39 << 32) | (v40 << 48), v44, v45, v46 | (v47 << 32) | (v48 << 48));
      case 0xDuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0xD)
        {
          goto LABEL_94;
        }

        return 0;
      case 0xEuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xE)
        {
          return 0;
        }

        v30 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v31);
        v32 = static SearchKey.__derived_enum_equals(_:_:)(v30, v31);
        sub_1B0B239C8(v31);
        return v32 & 1;
      case 0xFuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xF)
        {
          return 0;
        }

        v51 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v52 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v53 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v54 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((static SearchKey.__derived_enum_equals(_:_:)(v51, v53) & 1) == 0)
        {
          return 0;
        }

        a1 = v52;
        a2 = v54;

        continue;
      case 0x10uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x10)
        {
          goto LABEL_59;
        }

        return 0;
      case 0x11uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x11)
        {
          goto LABEL_59;
        }

        return 0;
      case 0x12uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x12)
        {
          return 0;
        }

LABEL_59:
        v67 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) && *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        goto LABEL_95;
      case 0x13uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x13)
        {
          goto LABEL_94;
        }

        return 0;
      case 0x14uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x14)
        {
          return 0;
        }

        v56 = swift_projectBox();
        v57 = swift_projectBox();
        sub_1B03B5C80(v56, v15, &qword_1EB6E3EB0, &unk_1B0EC2010);
        sub_1B03B5C80(v57, v12, &qword_1EB6E3EB0, &unk_1B0EC2010);
        v58 = sub_1B0E1A698(v15, v12);
        sub_1B0398EFC(v12, &qword_1EB6E3EB0, &unk_1B0EC2010);
        v59 = v15;
        v60 = &qword_1EB6E3EB0;
        v61 = &unk_1B0EC2010;
        goto LABEL_80;
      case 0x15uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x15)
        {
          goto LABEL_73;
        }

        return 0;
      case 0x16uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x16)
        {
          return 0;
        }

LABEL_73:
        v78 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        if (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
        {
          if ((*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
          {
            v78 = 1;
          }

          if (v78)
          {
            return 0;
          }
        }

        return 1;
      case 0x17uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x17)
        {
          return 0;
        }

        v79 = swift_projectBox();
        v80 = swift_projectBox();
        sub_1B03B5C80(v79, v9, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B03B5C80(v80, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
        v58 = sub_1B0E1A984(v9, v6);
        sub_1B0398EFC(v6, &qword_1EB6E4050, &unk_1B0EC2B20);
        v59 = v9;
        v60 = &qword_1EB6E4050;
        v61 = &unk_1B0EC2B20;
LABEL_80:
        sub_1B0398EFC(v59, v60, v61);
        return v58 & 1;
      case 0x18uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x18)
        {
          return 0;
        }

        v49 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v50 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = sub_1B0D31EBC(v49, v50);

        return v32 & 1;
      case 0x19uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x19)
        {
          return 0;
        }

        goto LABEL_94;
      case 0x1AuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x1A)
        {
          return 0;
        }

LABEL_94:
        v67 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
LABEL_95:
        v88 = v67;
        return v88 & 1;
      case 0x1BuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x1B)
        {
          goto LABEL_88;
        }

        return 0;
      case 0x1CuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x1C)
        {
          return 0;
        }

        v81 = v3 & 0xFFFFFFFFFFFFFFBLL;
        v82 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v83 = *(v81 + 40);
        v84 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v85 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v86 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v87 = *(v84 + 40);
        if ((sub_1B045202C(*(v81 + 24), v85) & 1) == 0)
        {
          return 0;
        }

        result = sub_1B0D3CF1C(v82, v86);
        if ((result & 1) == 0)
        {
          return 0;
        }

        if ((v87 | v83) < 0)
        {
          __break(1u);
        }

        else
        {
          return v87 == v83;
        }

        return result;
      case 0x1DuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x1D)
        {
          goto LABEL_88;
        }

        return 0;
      case 0x1EuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x1E)
        {
          return 0;
        }

LABEL_88:
        if (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
        {
          return 1;
        }

        return sub_1B0E46A78();
      case 0x1FuLL:
        v55 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
        switch(__ROR8__(v3 + 0xFFFFFFFFFFFFFFCLL, 3))
        {
          case 1:
            return v55 == 31 && v2 == 0xF00000000000000CLL;
          case 2:
            return v55 == 31 && v2 == 0xF000000000000014;
          case 3:
            return v55 == 31 && v2 == 0xF00000000000001CLL;
          case 4:
            return v55 == 31 && v2 == 0xF000000000000024;
          case 5:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 40;
            break;
          case 6:
            return v55 == 31 && v2 == 0xF000000000000034;
          case 7:
            return v55 == 31 && v2 == 0xF00000000000003CLL;
          case 8:
            return v55 == 31 && v2 == 0xF000000000000044;
          case 9:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 72;
            break;
          case 0xALL:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 80;
            break;
          case 0xBLL:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 88;
            break;
          case 0xCLL:
            return v55 == 31 && v2 == 0xF000000000000064;
          case 0xDLL:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 104;
            break;
          default:
            return v55 == 31 && v2 == 0xF000000000000004;
        }

        return v2 == (v90 | 0xF000000000000004);
      default:
        if ((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
        {
          return 0;
        }

        v16 = *(v3 + 38);
        v17 = *(v3 + 36);
        v18 = *(v3 + 32);
        v21 = v3 + 16;
        v19 = *(v3 + 16);
        v20 = *(v21 + 8);
        v22 = *(v2 + 16);
        v23 = *(v2 + 24);
        v24 = *(v2 + 32);
        v25 = *(v2 + 36);
        v26 = *(v2 + 38);
        v27 = v18 | (v16 << 48) | (v17 << 32);
        v28 = v24 | (v25 << 32) | (v26 << 48);

        LOBYTE(v27) = sub_1B0C2DB54(v19, v20, v27, v22, v23, v28);

        return v27 & 1;
    }
  }
}

void sub_1B0E1BA54(unint64_t a1)
{
  while (2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 0xEuLL:
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v4);
        sub_1B0E1BA54(v4);
        sub_1B0B239C8(v4);
        break;
      case 0xFuLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1B0E1BA54(v2);
        if ((v3 & 1) == 0)
        {
          continue;
        }

        break;
      case 0x18uLL:
        v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v6 = *(v5 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v7 = 0;
        while (1)
        {
          if (v6 == v7)
          {

            return;
          }

          if (v7 >= *(v5 + 16))
          {
            break;
          }

          v8 = v7 + 1;
          v9 = *(v5 + 8 * v7 + 32);
          sub_1B0B23938(v9);
          sub_1B0E1BA54(v9);
          v11 = v10;
          sub_1B0B239C8(v9);
          v7 = v8;
          if (v11)
          {

            return;
          }
        }

        __break(1u);
        break;
      default:
        return;
    }

    break;
  }
}

unint64_t SearchKey.hash(into:)(uint64_t a1, unint64_t a2)
{
  while (2)
  {
    v2 = a2;
    v3 = a1;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
    v59 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v6 = &v57 - v5;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
    MEMORY[0x1EEE9AC00](v7 - 8);
    v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v10);
    v12 = &v57 - v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    v58 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v15 = &v57 - v14;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    MEMORY[0x1EEE9AC00](v16 - 8);
    v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
    v22 = &v57 - v21;
    switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
    {
      case 1uLL:
        v42 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v26 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v27 = *(v42 + 32);
        v28 = 15;
        goto LABEL_36;
      case 2uLL:
        v32 = 16;
        goto LABEL_39;
      case 3uLL:
        v32 = 17;
        goto LABEL_39;
      case 4uLL:
        v32 = 18;
        goto LABEL_39;
      case 5uLL:
        v31 = 19;
        goto LABEL_30;
      case 6uLL:
        v46 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v26 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v27 = *(v46 + 32);
        v28 = 20;
        goto LABEL_36;
      case 7uLL:
        v41 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v26 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v27 = *(v41 + 32);
        v28 = 21;
        goto LABEL_36;
      case 8uLL:
        v32 = 22;
        goto LABEL_39;
      case 9uLL:
        v32 = 23;
        goto LABEL_39;
      case 0xAuLL:
        v32 = 24;
LABEL_39:
        MEMORY[0x1B2728D70](v32, v20);
        swift_beginAccess();
        goto LABEL_40;
      case 0xBuLL:
        v31 = 25;
LABEL_30:
        MEMORY[0x1B2728D70](v31, v20);
        sub_1B0E44BB8();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        goto LABEL_52;
      case 0xCuLL:
        MEMORY[0x1B2728D70](26, v20.n128_f64[0]);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        swift_beginAccess();
        goto LABEL_40;
      case 0xDuLL:
        v33 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v34 = 27;
        goto LABEL_56;
      case 0xEuLL:
        v29 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        MEMORY[0x1B2728D70](28, v20.n128_f64[0]);
        sub_1B0B23938(v29);
        SearchKey.hash(into:)(v3, v29);

        return sub_1B0B239C8(v29);
      case 0xFuLL:
        v39 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v40 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        MEMORY[0x1B2728D70](29, v20.n128_f64[0]);
        SearchKey.hash(into:)(v3, v39);
        a1 = v3;
        a2 = v40;

        continue;
      case 0x10uLL:
        v24 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v26 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v27 = *(v24 + 32);
        v28 = 30;
        goto LABEL_36;
      case 0x11uLL:
        v43 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v26 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v27 = *(v43 + 32);
        v28 = 31;
        goto LABEL_36;
      case 0x12uLL:
        v47 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v26 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v27 = *(v47 + 32);
        v28 = 32;
LABEL_36:
        MEMORY[0x1B2728D70](v28, v20);
        MEMORY[0x1B2728D70](v25);
        MEMORY[0x1B2728D70](v26);
        return MEMORY[0x1B2728D70](v27);
      case 0x13uLL:
        v33 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v34 = 33;
        goto LABEL_56;
      case 0x14uLL:
        v44 = swift_projectBox();
        sub_1B03B5C80(v44, v22, &qword_1EB6E3EB0, &unk_1B0EC2010);
        MEMORY[0x1B2728D70](34);
        sub_1B03B5C80(v22, v18, &qword_1EB6E3EB0, &unk_1B0EC2010);
        if ((*(v58 + 48))(v18, 1, v13) == 1)
        {
          MEMORY[0x1B2728D70](1);
        }

        else
        {
          sub_1B03C60A4(v18, v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
        }

        v54 = &qword_1EB6E3EB0;
        v55 = &unk_1B0EC2010;
        v56 = v22;
        return sub_1B0398EFC(v56, v54, v55);
      case 0x15uLL:
        v45 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        MEMORY[0x1B2728D70](35, v20.n128_f64[0]);
        if (v45)
        {
          return MEMORY[0x1B2728D70](1, v20);
        }

        goto LABEL_43;
      case 0x16uLL:
        v48 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        MEMORY[0x1B2728D70](36, v20.n128_f64[0]);
        if (v48)
        {
          return MEMORY[0x1B2728D70](1, v20);
        }

LABEL_43:
        MEMORY[0x1B2728D70](0);
        return sub_1B0E46C88();
      case 0x17uLL:
        v49 = swift_projectBox();
        sub_1B03B5C80(v49, v12, &qword_1EB6E4050, &unk_1B0EC2B20);
        MEMORY[0x1B2728D70](37);
        sub_1B03B5C80(v12, v9, &qword_1EB6E4050, &unk_1B0EC2B20);
        if ((*(v59 + 48))(v9, 1, v4) == 1)
        {
          MEMORY[0x1B2728D70](1);
        }

        else
        {
          sub_1B03C60A4(v9, v6, &qword_1EB6E4040, &qword_1B0EC2B10);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v6, &qword_1EB6E4040, &qword_1B0EC2B10);
        }

        v54 = &qword_1EB6E4050;
        v55 = &unk_1B0EC2B20;
        v56 = v12;
        return sub_1B0398EFC(v56, v54, v55);
      case 0x18uLL:
        v35 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        MEMORY[0x1B2728D70](38, v20.n128_f64[0]);
        result = MEMORY[0x1B2728D70](*(v35 + 16));
        v36 = *(v35 + 16);
        if (!v36)
        {
          return result;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = 32;
        do
        {
          v38 = *(v35 + v37);
          sub_1B0B23938(v38);
          SearchKey.hash(into:)(v3, v38);
          sub_1B0B239C8(v38);
          v37 += 8;
          --v36;
        }

        while (v36);
        goto LABEL_52;
      case 0x19uLL:
        v33 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v34 = 39;
        goto LABEL_56;
      case 0x1AuLL:
        v33 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v34 = 40;
LABEL_56:
        MEMORY[0x1B2728D70](v34, v20);
        return MEMORY[0x1B2728D70](v33);
      case 0x1BuLL:
        v23 = 41;
        goto LABEL_51;
      case 0x1CuLL:
        v50 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v51 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v52 = *(v50 + 32);
        v53 = *(v50 + 40);
        MEMORY[0x1B2728D70](42, v20.n128_f64[0]);

        sub_1B0D3AF78(v3, v51, v52);
        MEMORY[0x1B2728DB0](v53);

      case 0x1DuLL:
        v23 = 43;
        goto LABEL_51;
      case 0x1EuLL:
        v23 = 44;
LABEL_51:
        MEMORY[0x1B2728D70](v23, v20);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_52:

        break;
      case 0x1FuLL:
        switch(__ROR8__(v2 + 0xFFFFFFFFFFFFFFCLL, 3))
        {
          case 1:
            return MEMORY[0x1B2728D70](1, v20);
          case 2:
            result = MEMORY[0x1B2728D70](2, v20.n128_f64[0]);
            break;
          case 3:
            result = MEMORY[0x1B2728D70](3, v20.n128_f64[0]);
            break;
          case 4:
            result = MEMORY[0x1B2728D70](4, v20.n128_f64[0]);
            break;
          case 5:
            result = MEMORY[0x1B2728D70](5, v20.n128_f64[0]);
            break;
          case 6:
            result = MEMORY[0x1B2728D70](6, v20.n128_f64[0]);
            break;
          case 7:
            result = MEMORY[0x1B2728D70](7, v20.n128_f64[0]);
            break;
          case 8:
            result = MEMORY[0x1B2728D70](8, v20.n128_f64[0]);
            break;
          case 9:
            result = MEMORY[0x1B2728D70](9, v20.n128_f64[0]);
            break;
          case 0xALL:
            result = MEMORY[0x1B2728D70](10, v20.n128_f64[0]);
            break;
          case 0xBLL:
            result = MEMORY[0x1B2728D70](11, v20.n128_f64[0]);
            break;
          case 0xCLL:
            result = MEMORY[0x1B2728D70](12, v20.n128_f64[0]);
            break;
          case 0xDLL:
            result = MEMORY[0x1B2728D70](13, v20.n128_f64[0]);
            break;
          default:
            result = MEMORY[0x1B2728D70](0, v20.n128_f64[0]);
            break;
        }

        break;
      default:
        MEMORY[0x1B2728D70](14, v20.n128_f64[0]);
        swift_beginAccess();
LABEL_40:
        result = sub_1B0E46C38();
        break;
    }

    return result;
  }
}

uint64_t SearchKey.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  SearchKey.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1C664()
{
  v1 = *v0;
  sub_1B0E46C28();
  SearchKey.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1C6B4(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  SearchKey.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

void sub_1B0E1C704(unint64_t a1)
{
  LODWORD(v1) = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v1 <= 0x1F)
  {
    if (((1 << v1) & 0xFEFF0000) != 0)
    {
      return;
    }

    if (v1 == 15)
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1B0E1C704(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      v4 = v3;
      sub_1B0E1C704(v2);
      if (!__OFADD__(v4, a1))
      {
        return;
      }

      __break(1u);
    }

    if (v1 == 24)
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6 = *(v5 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1 = 0;
      v7 = 0;
      while (v6 != v1)
      {
        if (v1 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v8 = v1 + 1;
        v9 = *(v5 + 8 * v1 + 32);
        sub_1B0B23938(v9);
        sub_1B0E1C704(v9);
        v11 = v10;
        a1 = sub_1B0B239C8(v9);
        v1 = v8;
        v12 = __OFADD__(v7, v11);
        v7 += v11;
        if (v12)
        {
          __break(1u);
          goto LABEL_14;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_14:
  if (v1 >= 0xE)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1B0B23938(v13);
    sub_1B0E1C704(v13);
    v15 = v14;
    sub_1B0B239C8(v13);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_19:
    }
  }
}

void sub_1B0E1C84C(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v446 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v446 - v8;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      goto LABEL_115;
    case 2uLL:
      goto LABEL_83;
    case 3uLL:
      goto LABEL_103;
    case 4uLL:
      goto LABEL_42;
    case 5uLL:
      goto LABEL_139;
    case 6uLL:
      goto LABEL_161;
    case 7uLL:
      goto LABEL_109;
    case 8uLL:
      goto LABEL_179;
    case 9uLL:
      goto LABEL_59;
    case 0xAuLL:
      goto LABEL_173;
    case 0xBuLL:
      goto LABEL_33;
    case 0xCuLL:
      goto LABEL_48;
    case 0xDuLL:
      v258 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x2052454752414CLL;
      v452 = 0xE700000000000000;
      v450 = v258;
      v259 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v259);

      v261 = v451;
      v260 = v452;
      v262 = *(v2 + 20);
      v263 = sub_1B0CFC1B0(v451, v452, v2 + 8, v262);
      if (v264)
      {
        v265._countAndFlagsBits = v261;
        v265._object = v260;
        v263 = ByteBuffer._setStringSlowpath(_:at:)(v265, v262);
      }

      a1 = v263;

      v266 = *(v2 + 20);
      v21 = __CFADD__(v266, a1);
      v32 = v266 + a1;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_161:
      v267 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v268 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v269 = *(v2 + 20);
      v270 = sub_1B0CFC1B0(0x204E4FuLL, 0xE300000000000000, v2 + 8, v269);
      if (v271)
      {
        v272._countAndFlagsBits = 2117199;
        v272._object = 0xE300000000000000;
        v270 = ByteBuffer._setStringSlowpath(_:at:)(v272, v269);
      }

      v273 = *(v2 + 20);
      v21 = __CFADD__(v273, v270);
      v274 = v273 + v270;
      if (v21)
      {
        goto LABEL_344;
      }

      *(v2 + 20) = v274;
      a1 = v2;
      if (!__OFADD__(v270, sub_1B0DC46B8(v267, v268)))
      {
        return;
      }

      __break(1u);
LABEL_167:
      v275 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v276 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v277 = *(v2 + 20);
      v278 = sub_1B0CFC1B0(0x434E4953544E4553uLL, 0xEA00000000002045, v2 + 8, v277);
      if (v279)
      {
        v280._countAndFlagsBits = 0x434E4953544E4553;
        v280._object = 0xEA00000000002045;
        v278 = ByteBuffer._setStringSlowpath(_:at:)(v280, v277);
      }

      v281 = *(v2 + 20);
      v21 = __CFADD__(v281, v278);
      v282 = v281 + v278;
      if (v21)
      {
        goto LABEL_345;
      }

      *(v2 + 20) = v282;
      a1 = v2;
      if (!__OFADD__(v278, sub_1B0DC46B8(v275, v276)))
      {
        return;
      }

      __break(1u);
LABEL_173:
      v283 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v284 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v285 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v286 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v287 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v288 = *(v2 + 20);

      v289 = sub_1B0CFC1B0(0x204F54uLL, 0xE300000000000000, v2 + 8, v288);
      if (v290)
      {
        v291._countAndFlagsBits = 2117460;
        v291._object = 0xE300000000000000;
        v289 = ByteBuffer._setStringSlowpath(_:at:)(v291, v288);
      }

      v292 = v289;
      v293 = *(v2 + 20);
      v21 = __CFADD__(v293, v289);
      v294 = v293 + v289;
      if (v21)
      {
        goto LABEL_346;
      }

      *(v2 + 20) = v294;
      a1 = v2;
      v2 = sub_1B0D4B6B8(v283, v284, v285 | (v286 << 32) | (v287 << 48));

      if (!__OFADD__(v292, v2))
      {
        return;
      }

      __break(1u);
LABEL_179:
      v295 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v296 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v297 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v298 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v299 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v300 = *(v2 + 20);

      v301 = sub_1B0CFC1B0(0x205443454A425553uLL, 0xE800000000000000, v2 + 8, v300);
      if (v302)
      {
        v303._countAndFlagsBits = 0x205443454A425553;
        v303._object = 0xE800000000000000;
        v301 = ByteBuffer._setStringSlowpath(_:at:)(v303, v300);
      }

      v304 = v301;
      v305 = *(v2 + 20);
      v21 = __CFADD__(v305, v301);
      v306 = v305 + v301;
      if (v21)
      {
        goto LABEL_347;
      }

      *(v2 + 20) = v306;
      a1 = v2;
      v2 = sub_1B0D4B6B8(v295, v296, v297 | (v298 << 32) | (v299 << 48));

      if (!__OFADD__(v304, v2))
      {
        return;
      }

      __break(1u);
LABEL_185:
      v308 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v307 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v309 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v310 = sub_1B0CFC1B0(0x4449444145524854uLL, 0xE900000000000020, v2 + 8, v309);
      if (v311)
      {
        v312._countAndFlagsBits = 0x4449444145524854;
        v312._object = 0xE900000000000020;
        v310 = ByteBuffer._setStringSlowpath(_:at:)(v312, v309);
      }

      v313 = v310;
      v314 = *(v2 + 20);
      v315 = (v314 + v310);
      if (__CFADD__(v314, v310))
      {
        goto LABEL_348;
      }

      *(v2 + 20) = v315;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v316 = sub_1B0CFC1B0(v308, v307, v2 + 8, v315);
      if (v317)
      {
        v318._countAndFlagsBits = v308;
        v318._object = v307;
        v316 = ByteBuffer._setStringSlowpath(_:at:)(v318, v315);
      }

      a1 = v316;

      v319 = *(v2 + 20);
      v21 = __CFADD__(v319, a1);
      v320 = v319 + a1;
      if (v21)
      {
        goto LABEL_354;
      }

      *(v2 + 20) = v320;

      if (!__OFADD__(v313, a1))
      {
        return;
      }

      __break(1u);
LABEL_194:
      v321 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v247 = *(v2 + 20);
      v322 = sub_1B0CFC1B0(0x524F464542444955uLL, 0xEA00000000002045, v2 + 8, v247);
      if (v323)
      {
        v324._countAndFlagsBits = 0x524F464542444955;
        v324._object = 0xEA00000000002045;
        v322 = ByteBuffer._setStringSlowpath(_:at:)(v324, v247);
      }

      v41 = v322;
      v325 = *(v2 + 20);
      v326 = (v325 + v322);
      if (__CFADD__(v325, v322))
      {
        goto LABEL_349;
      }

      *(v2 + 20) = v326;
      if (!v321)
      {
        goto LABEL_248;
      }

      v327 = sub_1B0CFC1B0(0x24uLL, 0xE100000000000000, v2 + 8, v326);
      if (v328)
      {
        v329._countAndFlagsBits = 36;
        v329._object = 0xE100000000000000;
        v327 = ByteBuffer._setStringSlowpath(_:at:)(v329, v326);
      }

      v330 = *(v2 + 20);
      v21 = __CFADD__(v330, v327);
      v331 = v330 + v327;
      if (v21)
      {
        goto LABEL_364;
      }

      *(v2 + 20) = v331;
      goto LABEL_249;
    case 0xEuLL:
      goto LABEL_19;
    case 0xFuLL:
      goto LABEL_89;
    case 0x10uLL:
      goto LABEL_13;
    case 0x11uLL:
LABEL_127:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v217 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v218 = *(v2 + 20);
      v219 = sub_1B0CFC1B0(0x204E4F544E4553uLL, 0xE700000000000000, v2 + 8, v218);
      if (v220)
      {
        v221._countAndFlagsBits = 0x204E4F544E4553;
        v221._object = 0xE700000000000000;
        v219 = ByteBuffer._setStringSlowpath(_:at:)(v221, v218);
      }

      v222 = *(v2 + 20);
      v21 = __CFADD__(v222, v219);
      v223 = v222 + v219;
      if (v21)
      {
        goto LABEL_340;
      }

      *(v2 + 20) = v223;
      if (!__OFADD__(v219, sub_1B0DC46B8(v9, v217)))
      {
        return;
      }

      __break(1u);
LABEL_133:
      v224 = swift_projectBox();
      sub_1B03B5C80(v224, v9, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v225 = *(v2 + 20);
      v226 = sub_1B0CFC1B0(0x20444955uLL, 0xE400000000000000, v2 + 8, v225);
      if (v227)
      {
        v228._countAndFlagsBits = 541346133;
        v228._object = 0xE400000000000000;
        v226 = ByteBuffer._setStringSlowpath(_:at:)(v228, v225);
      }

      v229 = v226;
      v230 = *(v2 + 20);
      v21 = __CFADD__(v230, v226);
      v231 = v230 + v226;
      if (v21)
      {
        goto LABEL_341;
      }

      *(v2 + 20) = v231;
      a1 = v2;
      v2 = sub_1B0E1F458(v9);
      sub_1B0398EFC(v9, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if (!__OFADD__(v229, v2))
      {
        return;
      }

      __break(1u);
LABEL_139:
      v233 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v232 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v234 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v235 = sub_1B0CFC1B0(0x2044524F5759454BuLL, 0xE800000000000000, v2 + 8, v234);
      if (v236)
      {
        v237._countAndFlagsBits = 0x2044524F5759454BLL;
        v237._object = 0xE800000000000000;
        v235 = ByteBuffer._setStringSlowpath(_:at:)(v237, v234);
      }

      v238 = v235;
      v239 = *(v2 + 20);
      v240 = (v239 + v235);
      if (__CFADD__(v239, v235))
      {
        goto LABEL_342;
      }

      *(v2 + 20) = v240;
      v241 = sub_1B0CFC1B0(v233, v232, v2 + 8, v240);
      if (v242)
      {
        v243._countAndFlagsBits = v233;
        v243._object = v232;
        v241 = ByteBuffer._setStringSlowpath(_:at:)(v243, v240);
      }

      a1 = v241;

      v244 = *(v2 + 20);
      v21 = __CFADD__(v244, a1);
      v245 = v244 + a1;
      if (v21)
      {
        goto LABEL_353;
      }

      *(v2 + 20) = v245;
      if (!__OFADD__(v238, a1))
      {
        return;
      }

      __break(1u);
LABEL_148:
      v246 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v247 = *(v2 + 20);
      v248 = sub_1B0CFC1B0(0x5245544641444955uLL, 0xE900000000000020, v2 + 8, v247);
      if (v249)
      {
        v250._countAndFlagsBits = 0x5245544641444955;
        v250._object = 0xE900000000000020;
        v248 = ByteBuffer._setStringSlowpath(_:at:)(v250, v247);
      }

      v41 = v248;
      v251 = *(v2 + 20);
      v252 = (v251 + v248);
      if (__CFADD__(v251, v248))
      {
        goto LABEL_343;
      }

      *(v2 + 20) = v252;
      if (!v246)
      {
        goto LABEL_244;
      }

      v253 = sub_1B0CFC1B0(0x24uLL, 0xE100000000000000, v2 + 8, v252);
      if (v254)
      {
        v255._countAndFlagsBits = 36;
        v255._object = 0xE100000000000000;
        v253 = ByteBuffer._setStringSlowpath(_:at:)(v255, v252);
      }

      v256 = *(v2 + 20);
      v21 = __CFADD__(v256, v253);
      v257 = v256 + v253;
      if (v21)
      {
        goto LABEL_363;
      }

      *(v2 + 20) = v257;
      goto LABEL_245;
    case 0x12uLL:
      goto LABEL_167;
    case 0x13uLL:
      v332 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x2052454C4C414D53;
      v452 = 0xE800000000000000;
      v450 = v332;
      v333 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v333);

      v335 = v451;
      v334 = v452;
      v336 = *(v2 + 20);
      v6 = 0;
      v337 = sub_1B0CFC1B0(v451, v452, v2 + 8, v336);
      if (v338)
      {
        v339._countAndFlagsBits = v335;
        v339._object = v334;
        v337 = ByteBuffer._setStringSlowpath(_:at:)(v339, v336);
      }

      v340 = v337;

      v341 = *(v2 + 20);
      v21 = __CFADD__(v341, v340);
      v32 = v341 + v340;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_207:
      v342 = swift_projectBox();
      sub_1B03B5C80(v342, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0E1F248(v6);
      sub_1B0398EFC(v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      return;
    case 0x14uLL:
      goto LABEL_133;
    case 0x15uLL:
      goto LABEL_148;
    case 0x16uLL:
      goto LABEL_194;
    case 0x17uLL:
      goto LABEL_207;
    case 0x18uLL:
      goto LABEL_70;
    case 0x19uLL:
      goto LABEL_65;
    case 0x1AuLL:
      goto LABEL_218;
    case 0x1BuLL:
      goto LABEL_8;
    case 0x1CuLL:
      v343 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v344 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v345 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      sub_1B0E1E978(v343, v344, v345);

      return;
    case 0x1DuLL:
      v347 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v346 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v348 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v349 = sub_1B0CFC1B0(0x2044494C49414D45uLL, 0xE800000000000000, v2 + 8, v348);
      if (v350)
      {
        v351._countAndFlagsBits = 0x2044494C49414D45;
        v351._object = 0xE800000000000000;
        v349 = ByteBuffer._setStringSlowpath(_:at:)(v351, v348);
      }

      v352 = v349;
      v353 = *(v2 + 20);
      v354 = (v353 + v349);
      if (__CFADD__(v353, v349))
      {
        goto LABEL_350;
      }

      *(v2 + 20) = v354;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v355 = sub_1B0CFC1B0(v347, v346, v2 + 8, v354);
      if (v356)
      {
        v357._countAndFlagsBits = v347;
        v357._object = v346;
        v355 = ByteBuffer._setStringSlowpath(_:at:)(v357, v354);
      }

      a1 = v355;

      v358 = *(v2 + 20);
      v21 = __CFADD__(v358, a1);
      v359 = v358 + a1;
      if (v21)
      {
        goto LABEL_355;
      }

      *(v2 + 20) = v359;

      if (!__OFADD__(v352, a1))
      {
        return;
      }

      __break(1u);
LABEL_218:
      v360 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x205245474E554F59;
      v452 = 0xE800000000000000;
      v450 = v360;
      v361 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v361);

      v46 = v451;
      v41 = v452;
      v48 = *(v2 + 20);
      v362 = sub_1B0CFC1B0(v451, v452, v2 + 8, v48);
      if (v363)
      {
        v364._countAndFlagsBits = v46;
        v364._object = v41;
        v362 = ByteBuffer._setStringSlowpath(_:at:)(v364, v48);
      }

      v365 = v362;

      v366 = *(v2 + 20);
      v21 = __CFADD__(v366, v365);
      v32 = v366 + v365;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
      goto LABEL_223;
    case 0x1EuLL:
      goto LABEL_185;
    case 0x1FuLL:
      goto LABEL_121;
    default:
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 36);
      v14 = *(a1 + 38);
      v15 = *(v2 + 20);

      v16 = sub_1B0CFC1B0(0x20434342uLL, 0xE400000000000000, v2 + 8, v15);
      if (v17)
      {
        v18._countAndFlagsBits = 541279042;
        v18._object = 0xE400000000000000;
        v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
      }

      v19 = v16;
      v20 = *(v2 + 20);
      v21 = __CFADD__(v20, v16);
      v22 = v20 + v16;
      if (v21)
      {
        goto LABEL_338;
      }

      *(v2 + 20) = v22;
      a1 = v2;
      v2 = sub_1B0D4B6B8(v10, v11, v12 | (v13 << 32) | (v14 << 48));

      if (!__OFADD__(v19, v2))
      {
        return;
      }

      __break(1u);
LABEL_8:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v451 = 0x205245544C4946;
      v452 = 0xE700000000000000;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v23, v24);

      v26 = v451;
      v25 = v452;
      v27 = *(v2 + 20);
      v28 = sub_1B0CFC1B0(v451, v452, v2 + 8, v27);
      if (v29)
      {
        v30._countAndFlagsBits = v26;
        v30._object = v25;
        v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
      }

      a1 = v28;

      v31 = *(v2 + 20);
      v21 = __CFADD__(v31, a1);
      v32 = v31 + a1;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_13:
      v33 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v35 = *(v2 + 20);
      v36 = sub_1B0CFC1B0(0x4F464542544E4553uLL, 0xEB00000000204552, v2 + 8, v35);
      if (v37)
      {
        v38._countAndFlagsBits = 0x4F464542544E4553;
        v38._object = 0xEB00000000204552;
        v36 = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
      }

      v39 = *(v2 + 20);
      v21 = __CFADD__(v39, v36);
      v40 = v39 + v36;
      if (v21)
      {
        goto LABEL_328;
      }

      *(v2 + 20) = v40;
      a1 = v2;
      if (!__OFADD__(v36, sub_1B0DC46B8(v33, v34)))
      {
        return;
      }

      __break(1u);
LABEL_19:
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v42 = *(v2 + 20);
      sub_1B0B23938(v41);
      v43 = sub_1B0CFC1B0(0x20544F4EuLL, 0xE400000000000000, v2 + 8, v42);
      if (v44)
      {
        v45._countAndFlagsBits = 542396238;
        v45._object = 0xE400000000000000;
        v43 = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
      }

      v46 = v43;
      v47 = *(v2 + 20);
      v48 = (v47 + v43);
      if (__CFADD__(v47, v43))
      {
        goto LABEL_329;
      }

      *(v2 + 20) = v48;
      sub_1B0E1C704(v41);
      if (v49 < 2)
      {
LABEL_223:
        v2 = sub_1B0E1C84C(v41);
        sub_1B0B239C8(v41);
LABEL_224:
        if (!__OFADD__(v46, v2))
        {
          return;
        }

        __break(1u);
        goto LABEL_227;
      }

      v50 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v48);
      if (v51)
      {
        v52._countAndFlagsBits = 40;
        v52._object = 0xE100000000000000;
        v50 = ByteBuffer._setStringSlowpath(_:at:)(v52, v48);
      }

      v53 = v50;
      v54 = *(v2 + 20);
      v21 = __CFADD__(v54, v50);
      v55 = v54 + v50;
      if (v21)
      {
        goto LABEL_361;
      }

      *(v2 + 20) = v55;
      v56 = sub_1B0E1C84C(v41);
      v57 = __OFADD__(v53, v56);
      v58 = v53 + v56;
      if (v57)
      {
LABEL_365:
        __break(1u);
        goto LABEL_366;
      }

      v48 = *(v2 + 20);
      v59 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v48);
      if (v60)
      {
        v61._countAndFlagsBits = 41;
        v61._object = 0xE100000000000000;
        v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v48);
      }

      a1 = v59;
      sub_1B0B239C8(v41);
      v62 = *(v2 + 20);
      v21 = __CFADD__(v62, a1);
      v63 = v62 + a1;
      if (v21)
      {
        goto LABEL_367;
      }

      *(v2 + 20) = v63;
      v2 = v58 + a1;
      if (!__OFADD__(v58, a1))
      {
        goto LABEL_224;
      }

      __break(1u);
LABEL_33:
      v65 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v64 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v66 = *(v2 + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v67 = sub_1B0CFC1B0(0x524F5759454B4E55uLL, 0xEA00000000002044, v2 + 8, v66);
      if (v68)
      {
        v69._countAndFlagsBits = 0x524F5759454B4E55;
        v69._object = 0xEA00000000002044;
        v67 = ByteBuffer._setStringSlowpath(_:at:)(v69, v66);
      }

      v70 = v67;
      v71 = *(v2 + 20);
      v72 = (v71 + v67);
      if (__CFADD__(v71, v67))
      {
        goto LABEL_330;
      }

      *(v2 + 20) = v72;
      v73 = sub_1B0CFC1B0(v65, v64, v2 + 8, v72);
      if (v74)
      {
        v75._countAndFlagsBits = v65;
        v75._object = v64;
        v73 = ByteBuffer._setStringSlowpath(_:at:)(v75, v72);
      }

      a1 = v73;

      v76 = *(v2 + 20);
      v21 = __CFADD__(v76, a1);
      v77 = v76 + a1;
      if (v21)
      {
        goto LABEL_351;
      }

      *(v2 + 20) = v77;
      if (!__OFADD__(v70, a1))
      {
        return;
      }

      __break(1u);
LABEL_42:
      v78 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v79 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v80 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v82 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v83 = *(v2 + 20);

      v84 = sub_1B0CFC1B0(0x204D4F5246uLL, 0xE500000000000000, v2 + 8, v83);
      if (v85)
      {
        v86._countAndFlagsBits = 0x204D4F5246;
        v86._object = 0xE500000000000000;
        v84 = ByteBuffer._setStringSlowpath(_:at:)(v86, v83);
      }

      v87 = v84;
      v88 = *(v2 + 20);
      v21 = __CFADD__(v88, v84);
      v89 = v88 + v84;
      if (v21)
      {
        goto LABEL_331;
      }

      *(v2 + 20) = v89;
      a1 = v2;
      v2 = sub_1B0D4B6B8(v78, v79, v80 | (v81 << 32) | (v82 << 48));

      if (!__OFADD__(v87, v2))
      {
        return;
      }

      __break(1u);
LABEL_48:
      v90 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v91 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v92 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v448 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v449 = v92;
      v447 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v93 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x34);
      v94 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x36);
      v95 = *(v2 + 20);
      v96 = sub_1B0CFC1B0(0x20524544414548uLL, 0xE700000000000000, v2 + 8, v95);
      if (v97)
      {
        v98._countAndFlagsBits = 0x20524544414548;
        v98._object = 0xE700000000000000;
        v96 = ByteBuffer._setStringSlowpath(_:at:)(v98, v95);
      }

      v99 = v96;
      v100 = *(v2 + 20);
      v21 = __CFADD__(v100, v96);
      v101 = v100 + v96;
      if (v21)
      {
        goto LABEL_332;
      }

      *(v2 + 20) = v101;
      sub_1B0DD55E0(v90, v91);
      v103 = v99 + v102;
      if (__OFADD__(v99, v102))
      {
        goto LABEL_352;
      }

      v104 = *(v2 + 20);
      v105 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v104);
      if (v106)
      {
        v107._countAndFlagsBits = 32;
        v107._object = 0xE100000000000000;
        v105 = ByteBuffer._setStringSlowpath(_:at:)(v107, v104);
      }

      v108 = *(v2 + 20);
      v21 = __CFADD__(v108, v105);
      v109 = v108 + v105;
      if (v21)
      {
        goto LABEL_356;
      }

      *(v2 + 20) = v109;
      if (__OFADD__(v103, v105))
      {
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      a1 = v2;
      if (!__OFADD__(v103 + v105, sub_1B0D4B6B8(v449, v448, v447 | (v93 << 32) | (v94 << 48))))
      {
        return;
      }

      __break(1u);
LABEL_59:
      v110 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v112 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v113 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v114 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v115 = *(v2 + 20);

      v116 = sub_1B0CFC1B0(0x2054584554uLL, 0xE500000000000000, v2 + 8, v115);
      if (v117)
      {
        v118._countAndFlagsBits = 0x2054584554;
        v118._object = 0xE500000000000000;
        v116 = ByteBuffer._setStringSlowpath(_:at:)(v118, v115);
      }

      v119 = v116;
      v120 = *(v2 + 20);
      v21 = __CFADD__(v120, v116);
      v121 = v120 + v116;
      if (v21)
      {
        goto LABEL_333;
      }

      *(v2 + 20) = v121;
      a1 = v2;
      v2 = sub_1B0D4B6B8(v110, v111, v112 | (v113 << 32) | (v114 << 48));

      if (!__OFADD__(v119, v2))
      {
        return;
      }

      __break(1u);
LABEL_65:
      v122 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x205245444C4FLL;
      v452 = 0xE600000000000000;
      v450 = v122;
      v123 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v123);

      v125 = v451;
      v124 = v452;
      v126 = *(v2 + 20);
      v127 = sub_1B0CFC1B0(v451, v452, v2 + 8, v126);
      if (v128)
      {
        v129._countAndFlagsBits = v125;
        v129._object = v124;
        v127 = ByteBuffer._setStringSlowpath(_:at:)(v129, v126);
      }

      a1 = v127;

      v130 = *(v2 + 20);
      v21 = __CFADD__(v130, a1);
      v32 = v130 + a1;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_70:
      v131 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v132 = *(v131 + 16);
      if (!v132)
      {
        goto LABEL_256;
      }

      if (v132 != 1)
      {
        swift_bridgeObjectRetain_n();
        sub_1B0E1A654(0, v131, v2, v131);

        return;
      }

      v133 = *(v131 + 32);
      sub_1B0B23938(v133);
      sub_1B0E1C704(v133);
      if (v134 < 2)
      {
        sub_1B0E1C84C(v133);
        sub_1B0B239C8(v133);
        return;
      }

      v135 = *(v2 + 20);
      v136 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v135);
      if (v137)
      {
        v138._countAndFlagsBits = 40;
        v138._object = 0xE100000000000000;
        v136 = ByteBuffer._setStringSlowpath(_:at:)(v138, v135);
      }

      v139 = v136;
      v140 = *(v2 + 20);
      v21 = __CFADD__(v140, v136);
      v141 = v140 + v136;
      if (v21)
      {
        goto LABEL_373;
      }

      *(v2 + 20) = v141;
      v142 = sub_1B0E1C84C(v133);
      v57 = __OFADD__(v139, v142);
      v143 = v139 + v142;
      if (v57)
      {
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
        return;
      }

      v144 = *(v2 + 20);
      v145 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v144);
      if (v146)
      {
        v147._countAndFlagsBits = 41;
        v147._object = 0xE100000000000000;
        v145 = ByteBuffer._setStringSlowpath(_:at:)(v147, v144);
      }

      a1 = v145;
      sub_1B0B239C8(v133);
      v148 = *(v2 + 20);
      v21 = __CFADD__(v148, a1);
      v149 = v148 + a1;
      if (v21)
      {
        goto LABEL_375;
      }

      *(v2 + 20) = v149;
      if (!__OFADD__(v143, a1))
      {
        return;
      }

      __break(1u);
LABEL_83:
      v150 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v151 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v152 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v153 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v154 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v155 = *(v2 + 20);

      v156 = sub_1B0CFC1B0(0x2059444F42uLL, 0xE500000000000000, v2 + 8, v155);
      if (v157)
      {
        v158._countAndFlagsBits = 0x2059444F42;
        v158._object = 0xE500000000000000;
        v156 = ByteBuffer._setStringSlowpath(_:at:)(v158, v155);
      }

      v159 = v156;
      v160 = *(v2 + 20);
      v21 = __CFADD__(v160, v156);
      v161 = v160 + v156;
      if (v21)
      {
        goto LABEL_334;
      }

      *(v2 + 20) = v161;
      a1 = v2;
      v2 = sub_1B0D4B6B8(v150, v151, v152 | (v153 << 32) | (v154 << 48));

      if (!__OFADD__(v159, v2))
      {
        return;
      }

      __break(1u);
LABEL_89:
      v48 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v162 = *(v2 + 20);
      v163 = sub_1B0CFC1B0(0x20524FuLL, 0xE300000000000000, v2 + 8, v162);
      if (v164)
      {
        v165._countAndFlagsBits = 2118223;
        v165._object = 0xE300000000000000;
        v163 = ByteBuffer._setStringSlowpath(_:at:)(v165, v162);
      }

      v46 = v163;
      v166 = *(v2 + 20);
      v167 = (v166 + v163);
      if (__CFADD__(v166, v163))
      {
        goto LABEL_335;
      }

      *(v2 + 20) = v167;
      sub_1B0E1C704(v48);
      if (v168 < 2)
      {
LABEL_227:
        v183 = sub_1B0E1C84C(v48);
        goto LABEL_228;
      }

      v169 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v167);
      if (v170)
      {
        v171._countAndFlagsBits = 40;
        v171._object = 0xE100000000000000;
        v169 = ByteBuffer._setStringSlowpath(_:at:)(v171, v167);
      }

      v172 = v169;
      v173 = *(v2 + 20);
      v21 = __CFADD__(v173, v169);
      v174 = v173 + v169;
      if (v21)
      {
        goto LABEL_362;
      }

      *(v2 + 20) = v174;
      a1 = v2;
      v175 = sub_1B0E1C84C(v48);
      v176 = v172 + v175;
      if (__OFADD__(v172, v175))
      {
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
        goto LABEL_370;
      }

      v177 = *(v2 + 20);
      v178 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v177);
      if (v179)
      {
        a1 = v2 + 8;
        v180._countAndFlagsBits = 41;
        v180._object = 0xE100000000000000;
        v178 = ByteBuffer._setStringSlowpath(_:at:)(v180, v177);
      }

      v181 = *(v2 + 20);
      v21 = __CFADD__(v181, v178);
      v182 = v181 + v178;
      if (v21)
      {
        goto LABEL_368;
      }

      *(v2 + 20) = v182;
      v57 = __OFADD__(v176, v178);
      v183 = v176 + v178;
      if (v57)
      {
        __break(1u);
LABEL_103:
        v184 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v185 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v186 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v187 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
        v188 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
        v189 = *(v2 + 20);

        v190 = sub_1B0CFC1B0(0x204343uLL, 0xE300000000000000, v2 + 8, v189);
        if (v191)
        {
          v192._countAndFlagsBits = 2114371;
          v192._object = 0xE300000000000000;
          v190 = ByteBuffer._setStringSlowpath(_:at:)(v192, v189);
        }

        v193 = v190;
        v194 = *(v2 + 20);
        v21 = __CFADD__(v194, v190);
        v195 = v194 + v190;
        if (!v21)
        {
          *(v2 + 20) = v195;
          a1 = v2;
          v2 = sub_1B0D4B6B8(v184, v185, v186 | (v187 << 32) | (v188 << 48));

          if (!__OFADD__(v193, v2))
          {
            return;
          }

          __break(1u);
LABEL_109:
          v196 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v197 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v198 = *(v2 + 20);
          v199 = sub_1B0CFC1B0(0x2045434E4953uLL, 0xE600000000000000, v2 + 8, v198);
          if (v200)
          {
            v201._countAndFlagsBits = 0x2045434E4953;
            v201._object = 0xE600000000000000;
            v199 = ByteBuffer._setStringSlowpath(_:at:)(v201, v198);
          }

          v202 = *(v2 + 20);
          v21 = __CFADD__(v202, v199);
          v203 = v202 + v199;
          if (v21)
          {
            goto LABEL_337;
          }

          *(v2 + 20) = v203;
          a1 = v2;
          if (!__OFADD__(v199, sub_1B0DC46B8(v196, v197)))
          {
            return;
          }

          __break(1u);
LABEL_115:
          v204 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v205 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v206 = *(v2 + 20);
          v207 = sub_1B0CFC1B0(0x2045524F464542uLL, 0xE700000000000000, v2 + 8, v206);
          if (v208)
          {
            v209._countAndFlagsBits = 0x2045524F464542;
            v209._object = 0xE700000000000000;
            v207 = ByteBuffer._setStringSlowpath(_:at:)(v209, v206);
          }

          v210 = *(v2 + 20);
          v21 = __CFADD__(v210, v207);
          v211 = v210 + v207;
          if (v21)
          {
            goto LABEL_339;
          }

          *(v2 + 20) = v211;
          a1 = v2;
          if (!__OFADD__(v207, sub_1B0DC46B8(v204, v205)))
          {
            return;
          }

          __break(1u);
LABEL_121:
          v212 = *(v2 + 20);
          switch(__ROR8__(a1 + 0xFFFFFFFFFFFFFFCLL, 3))
          {
            case 1:
              goto LABEL_298;
            case 2:
              goto LABEL_283;
            case 3:
              goto LABEL_288;
            case 4:
              goto LABEL_268;
            case 5:
              goto LABEL_303;
            case 6:
              goto LABEL_313;
            case 7:
              goto LABEL_293;
            case 8:
              goto LABEL_323;
            case 9:
              goto LABEL_278;
            case 0xALL:
              goto LABEL_318;
            case 0xBLL:
              v394 = sub_1B0CFC1B0(0x4E4545534E55uLL, 0xE600000000000000, v2 + 8, *(v2 + 20));
              if (v395)
              {
                v396._countAndFlagsBits = 0x4E4545534E55;
                v396._object = 0xE600000000000000;
                v394 = ByteBuffer._setStringSlowpath(_:at:)(v396, v212);
              }

              v397 = *(v2 + 20);
              v21 = __CFADD__(v397, v394);
              v32 = v397 + v394;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_268:
              v398 = sub_1B0CFC1B0(0x57454EuLL, 0xE300000000000000, v2 + 8, v212);
              if (v399)
              {
                v400._countAndFlagsBits = 5719374;
                v400._object = 0xE300000000000000;
                v398 = ByteBuffer._setStringSlowpath(_:at:)(v400, v212);
              }

              v401 = *(v2 + 20);
              v21 = __CFADD__(v401, v398);
              v32 = v401 + v398;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_273:
              v402 = sub_1B0CFC1B0(0x5446415244uLL, 0xE500000000000000, v2 + 8, v212);
              if (v403)
              {
                v404._countAndFlagsBits = 0x5446415244;
                v404._object = 0xE500000000000000;
                v402 = ByteBuffer._setStringSlowpath(_:at:)(v404, v212);
              }

              v405 = *(v2 + 20);
              v21 = __CFADD__(v405, v402);
              v32 = v405 + v402;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_278:
              v406 = sub_1B0CFC1B0(0x4554454C45444E55uLL, 0xE900000000000044, v2 + 8, v212);
              if (v407)
              {
                v408._object = 0xE900000000000044;
                v408._countAndFlagsBits = 0x4554454C45444E55;
                v406 = ByteBuffer._setStringSlowpath(_:at:)(v408, v212);
              }

              v409 = *(v2 + 20);
              v21 = __CFADD__(v409, v406);
              v32 = v409 + v406;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_283:
              v410 = sub_1B0CFC1B0(0x444554454C4544uLL, 0xE700000000000000, v2 + 8, v212);
              if (v411)
              {
                v412._countAndFlagsBits = 0x444554454C4544;
                v412._object = 0xE700000000000000;
                v410 = ByteBuffer._setStringSlowpath(_:at:)(v412, v212);
              }

              v413 = *(v2 + 20);
              v21 = __CFADD__(v413, v410);
              v32 = v413 + v410;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_288:
              v414 = sub_1B0CFC1B0(0x44454747414C46uLL, 0xE700000000000000, v2 + 8, v212);
              if (v415)
              {
                v416._countAndFlagsBits = 0x44454747414C46;
                v416._object = 0xE700000000000000;
                v414 = ByteBuffer._setStringSlowpath(_:at:)(v416, v212);
              }

              v417 = *(v2 + 20);
              v21 = __CFADD__(v417, v414);
              v32 = v417 + v414;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_293:
              v418 = sub_1B0CFC1B0(0x4E454553uLL, 0xE400000000000000, v2 + 8, v212);
              if (v419)
              {
                v420._countAndFlagsBits = 1313162579;
                v420._object = 0xE400000000000000;
                v418 = ByteBuffer._setStringSlowpath(_:at:)(v420, v212);
              }

              v421 = *(v2 + 20);
              v21 = __CFADD__(v421, v418);
              v32 = v421 + v418;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_298:
              v422 = sub_1B0CFC1B0(0x4445524557534E41uLL, 0xE800000000000000, v2 + 8, v212);
              if (v423)
              {
                v424._countAndFlagsBits = 0x4445524557534E41;
                v424._object = 0xE800000000000000;
                v422 = ByteBuffer._setStringSlowpath(_:at:)(v424, v212);
              }

              v425 = *(v2 + 20);
              v21 = __CFADD__(v425, v422);
              v32 = v425 + v422;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_303:
              v426 = sub_1B0CFC1B0(0x444C4FuLL, 0xE300000000000000, v2 + 8, v212);
              if (v427)
              {
                v428._countAndFlagsBits = 4475983;
                v428._object = 0xE300000000000000;
                v426 = ByteBuffer._setStringSlowpath(_:at:)(v428, v212);
              }

              v429 = *(v2 + 20);
              v21 = __CFADD__(v429, v426);
              v32 = v429 + v426;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_308:
              v430 = sub_1B0CFC1B0(0x54464152444E55uLL, 0xE700000000000000, v2 + 8, v212);
              if (v431)
              {
                v432._countAndFlagsBits = 0x54464152444E55;
                v432._object = 0xE700000000000000;
                v430 = ByteBuffer._setStringSlowpath(_:at:)(v432, v212);
              }

              v433 = *(v2 + 20);
              v21 = __CFADD__(v433, v430);
              v32 = v433 + v430;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_313:
              v434 = sub_1B0CFC1B0(0x544E45434552uLL, 0xE600000000000000, v2 + 8, v212);
              if (v435)
              {
                v436._countAndFlagsBits = 0x544E45434552;
                v436._object = 0xE600000000000000;
                v434 = ByteBuffer._setStringSlowpath(_:at:)(v436, v212);
              }

              v437 = *(v2 + 20);
              v21 = __CFADD__(v437, v434);
              v32 = v437 + v434;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_318:
              v438 = sub_1B0CFC1B0(0x454747414C464E55uLL, 0xE900000000000044, v2 + 8, v212);
              if (v439)
              {
                v440._object = 0xE900000000000044;
                v440._countAndFlagsBits = 0x454747414C464E55;
                v438 = ByteBuffer._setStringSlowpath(_:at:)(v440, v212);
              }

              v441 = *(v2 + 20);
              v21 = __CFADD__(v441, v438);
              v32 = v441 + v438;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_323:
              v442 = sub_1B0CFC1B0(0x524557534E414E55uLL, 0xEA00000000004445, v2 + 8, v212);
              if (v443)
              {
                v444._countAndFlagsBits = 0x524557534E414E55;
                v444._object = 0xEA00000000004445;
                v442 = ByteBuffer._setStringSlowpath(_:at:)(v444, v212);
              }

              v445 = *(v2 + 20);
              v21 = __CFADD__(v445, v442);
              v32 = v445 + v442;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
              break;
            case 0xCLL:
              goto LABEL_273;
            case 0xDLL:
              goto LABEL_308;
            default:
              v213 = sub_1B0CFC1B0(0x4C4C41uLL, 0xE300000000000000, v2 + 8, *(v2 + 20));
              if (v214)
              {
                a1 = v2 + 8;
                v215._countAndFlagsBits = 5000257;
                v215._object = 0xE300000000000000;
                v213 = ByteBuffer._setStringSlowpath(_:at:)(v215, v212);
              }

              v216 = *(v2 + 20);
              v21 = __CFADD__(v216, v213);
              v32 = v216 + v213;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
              goto LABEL_127;
          }

LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
        }

        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
        goto LABEL_357;
      }

LABEL_228:
      v367 = v46 + v183;
      if (__OFADD__(v46, v183))
      {
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      v368 = *(v2 + 20);
      v369 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v368);
      if (v370)
      {
        v371._countAndFlagsBits = 32;
        v371._object = 0xE100000000000000;
        v369 = ByteBuffer._setStringSlowpath(_:at:)(v371, v368);
      }

      v372 = *(v2 + 20);
      v373 = (v372 + v369);
      if (__CFADD__(v372, v369))
      {
        goto LABEL_359;
      }

      *(v2 + 20) = v373;
      v247 = v367 + v369;
      if (__OFADD__(v367, v369))
      {
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
        goto LABEL_365;
      }

      sub_1B0E1C704(v41);
      if (v374 < 2)
      {
LABEL_252:
        v388 = sub_1B0E1C84C(v41);
LABEL_253:
        if (!__OFADD__(v247, v388))
        {
          return;
        }

        __break(1u);
LABEL_256:
        v389 = *(v2 + 20);
        v390 = sub_1B0CFC1B0(0x2928uLL, 0xE200000000000000, v2 + 8, v389);
        if (v391)
        {
          v392._countAndFlagsBits = 10536;
          v392._object = 0xE200000000000000;
          v390 = ByteBuffer._setStringSlowpath(_:at:)(v392, v389);
        }

        v393 = *(v2 + 20);
        v21 = __CFADD__(v393, v390);
        v32 = v393 + v390;
        if (!v21)
        {
LABEL_259:
          *(v2 + 20) = v32;
          return;
        }

        goto LABEL_372;
      }

      v375 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v373);
      if (v376)
      {
        v377._countAndFlagsBits = 40;
        v377._object = 0xE100000000000000;
        v375 = ByteBuffer._setStringSlowpath(_:at:)(v377, v373);
      }

      v378 = v375;
      v379 = *(v2 + 20);
      v21 = __CFADD__(v379, v375);
      v380 = v379 + v375;
      if (v21)
      {
        goto LABEL_369;
      }

      *(v2 + 20) = v380;
      v381 = sub_1B0E1C84C(v41);
      v382 = v378 + v381;
      if (__OFADD__(v378, v381))
      {
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
        goto LABEL_374;
      }

      v41 = *(v2 + 20);
      v383 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v41);
      if (v384)
      {
        v385._countAndFlagsBits = 41;
        v385._object = 0xE100000000000000;
        v383 = ByteBuffer._setStringSlowpath(_:at:)(v385, v41);
      }

      v386 = *(v2 + 20);
      v21 = __CFADD__(v386, v383);
      v387 = v386 + v383;
      if (v21)
      {
        goto LABEL_371;
      }

      *(v2 + 20) = v387;
      v57 = __OFADD__(v382, v383);
      v388 = v382 + v383;
      if (!v57)
      {
        goto LABEL_253;
      }

      __break(1u);
LABEL_244:
      v253 = sub_1B0E31F9C();
LABEL_245:
      if (__OFADD__(v41, v253))
      {
        __break(1u);
LABEL_248:
        v327 = sub_1B0E31F9C();
LABEL_249:
        if (__OFADD__(v41, v327))
        {
          __break(1u);
          goto LABEL_252;
        }
      }

      return;
  }
}

unint64_t sub_1B0E1E5B0()
{
  result = qword_1EB6E7B58;
  if (!qword_1EB6E7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B58);
  }

  return result;
}

uint64_t sub_1B0E1E604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x61 && *(a1 + 8))
  {
    return (*a1 + 97);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x60)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0E1E660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x60)
  {
    *result = a2 - 97;
    if (a3 >= 0x61)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x61)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1B0E1E6B0(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x1F)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 31)) | 0xF000000000000004;
  }

  return result;
}

uint64_t sub_1B0E1E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a2 + 16);
  v35 = a2 + 32;
  v34 = v8;
  while (1)
  {
    if (v8 == v7)
    {
      return a1;
    }

    v11 = *(v35 + 8 * v7);
    sub_1B0B23938(v11);
    sub_1B0E1C704(v11);
    if (v12 < 2)
    {
      result = sub_1B0E1C84C(v11);
    }

    else
    {
      v13 = a4;
      v14 = *(a3 + 20);
      result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, a3 + 8, v14);
      if (v15)
      {
        v16._countAndFlagsBits = 40;
        v16._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v16, v14);
      }

      v17 = result;
      v18 = *(a3 + 20);
      v19 = __CFADD__(v18, result);
      v20 = v18 + result;
      if (v19)
      {
        goto LABEL_25;
      }

      *(a3 + 20) = v20;
      result = sub_1B0E1C84C(v11);
      v21 = v17 + result;
      if (__OFADD__(v17, result))
      {
        goto LABEL_26;
      }

      v22 = *(a3 + 20);
      result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, a3 + 8, v22);
      if (v23)
      {
        v24._countAndFlagsBits = 41;
        v24._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
      }

      v25 = *(a3 + 20);
      v19 = __CFADD__(v25, result);
      v26 = v25 + result;
      if (v19)
      {
        goto LABEL_27;
      }

      *(a3 + 20) = v26;
      v27 = __OFADD__(v21, result);
      result += v21;
      if (v27)
      {
        goto LABEL_29;
      }

      a4 = v13;
      v8 = v34;
    }

    v28 = a1 + result;
    if (__OFADD__(a1, result))
    {
      break;
    }

    if (v7 >= *(a4 + 16) - 1)
    {
      v9 = 0;
    }

    else
    {
      v29 = *(a3 + 20);
      result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a3 + 8, v29);
      if (v30)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
      }

      v9 = result;
      v32 = *(a3 + 20);
      v19 = __CFADD__(v32, result);
      v33 = v32 + result;
      if (v19)
      {
        goto LABEL_28;
      }

      *(a3 + 20) = v33;
    }

    result = sub_1B0B239C8(v11);
    ++v7;
    a1 = v28 + v9;
    if (__OFADD__(v28, v9))
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static SearchModificationSequence.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1B045202C(a2, a6) & 1) == 0)
  {
    return 0;
  }

  result = sub_1B0D3CF1C(a3, a7);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((a8 | a4) & 0x8000000000000000) == 0)
  {
    return a8 == a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E1E978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x514553444F4DuLL, 0xE600000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x514553444F4DLL;
    v9._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = *(v3 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
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
    goto LABEL_66;
  }

  *(v3 + 20) = v11;
  v69 = *(a3 + 16);
  v66 = result;
  if (v69)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 8, v11);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
    }

    v14 = *(v3 + 20);
    LODWORD(v11) = v14 + result;
    if (__CFADD__(v14, result))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return result;
    }

    v67 = result;
    *(v3 + 20) = v11;
  }

  else
  {
    v67 = 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v68 = a2;
  while (v69 != v16)
  {
    if (v16 >= *(a2 + 16))
    {
      goto LABEL_51;
    }

    v20 = a2 + v15;
    v21 = *(a2 + v15 + 32);
    v23 = *(a3 + v15 + 32);
    v22 = *(a3 + v15 + 40);
    v71 = *(v20 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v11);
    if (v24)
    {
      v25._countAndFlagsBits = 32;
      v25._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v25, v11);
    }

    v26 = result;
    v27 = *(v4 + 20);
    v28 = __CFADD__(v27, result);
    v29 = v27 + result;
    if (v28)
    {
      goto LABEL_52;
    }

    *(v4 + 20) = v29;
    result = sub_1B0D7F970(v21, v71);
    v19 = __OFADD__(v26, result);
    v30 = v26 + result;
    if (v19)
    {
      goto LABEL_53;
    }

    v31 = *(v4 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v31);
    if (v32)
    {
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
    }

    a2 = v68;
    v34 = *(v4 + 20);
    v35 = (v34 + result);
    if (__CFADD__(v34, result))
    {
      goto LABEL_54;
    }

    *(v4 + 20) = v35;
    v19 = __OFADD__(v30, result);
    v36 = v30 + result;
    if (v19)
    {
      goto LABEL_55;
    }

    result = sub_1B0CFC1B0(v23, v22, v4 + 8, v35);
    if (v37)
    {
      v38._countAndFlagsBits = v23;
      v38._object = v22;
      result = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
    }

    v39 = *(v4 + 20);
    v11 = (v39 + result);
    if (__CFADD__(v39, result))
    {
      goto LABEL_56;
    }

    *(v4 + 20) = v11;
    v40 = v36 + result;
    if (__OFADD__(v36, result))
    {
      goto LABEL_57;
    }

    v41 = v17 + v40;
    if (__OFADD__(v17, v40))
    {
      goto LABEL_58;
    }

    if (v16 >= v69 - 1)
    {

      v18 = 0;
    }

    else
    {
      v42 = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v11);
      if (v43)
      {
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v11);
      }

      v18 = v42;

      v45 = *(v4 + 20);
      LODWORD(v11) = v45 + v18;
      if (__CFADD__(v45, v18))
      {
        goto LABEL_60;
      }

      *(v4 + 20) = v11;
    }

    v15 += 16;
    ++v16;
    v19 = __OFADD__(v41, v18);
    v17 = v41 + v18;
    if (v19)
    {
      goto LABEL_59;
    }
  }

  v46 = v67 + v17;
  if (__OFADD__(v67, v17))
  {
    goto LABEL_62;
  }

  if (v69)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v11);
    if (v47)
    {
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v48, v11);
    }

    v49 = *(v4 + 20);
    LODWORD(v11) = v49 + result;
    if (__CFADD__(v49, result))
    {
      goto LABEL_69;
    }

    *(v4 + 20) = v11;
    v50 = v46 + result;
    if (__OFADD__(v46, result))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
    result = 0;
    v50 = v67 + v17;
  }

  v51 = v66 + v50;
  if (__OFADD__(v66, v50))
  {
    goto LABEL_63;
  }

  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v11);
  if (v52)
  {
    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v11);
  }

  v54 = *(v4 + 20);
  v55 = (v54 + result);
  if (__CFADD__(v54, result))
  {
    goto LABEL_64;
  }

  *(v4 + 20) = v55;
  v56 = v51 + result;
  if (__OFADD__(v51, result))
  {
    goto LABEL_65;
  }

  v57 = sub_1B0E469C8();
  v59 = v58;
  v60 = sub_1B0CFC1B0(v57, v58, v4 + 8, v55);
  if (v61)
  {
    v62._countAndFlagsBits = v57;
    v62._object = v59;
    v60 = ByteBuffer._setStringSlowpath(_:at:)(v62, v55);
  }

  v63 = v60;

  v64 = *(v4 + 20);
  v28 = __CFADD__(v64, v63);
  v65 = v64 + v63;
  if (v28)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v4 + 20) = v65;
  result = v56 + v63;
  if (__OFADD__(v56, v63))
  {
    goto LABEL_67;
  }

  return result;
}

uint64_t SearchModificationSequence.extensions.getter(uint64_t a1)
{

  return a1;
}

uint64_t SearchModificationSequence.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t SearchModificationSequence.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  sub_1B0D3AF78(v8, a2, a3);
  MEMORY[0x1B2728DB0](a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1EF90()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1B0E46C28();
  sub_1B0D3AF78(v5, v1, v2);
  MEMORY[0x1B2728DB0](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1EFF4(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1B0D3AF78(a1, v2, v3);
  return MEMORY[0x1B2728DB0](v4);
}

uint64_t sub_1B0E1F02C(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1B0E46C28();
  sub_1B0D3AF78(v6, v2, v3);
  MEMORY[0x1B2728DB0](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E1F08C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1B045202C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  result = sub_1B0D3CF1C(v2, v4);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((v5 | v3) & 0x8000000000000000) == 0)
  {
    return v5 == v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0E1F100()
{
  result = qword_1EB6E7B70;
  if (!qword_1EB6E7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B70);
  }

  return result;
}

uint64_t sub_1B0E1F164(unint64_t a1, char a2, uint64_t (*a3)(unint64_t))
{
  v5 = a1;
  v6 = HIDWORD(a1);
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = HIDWORD(a1);
  }

  if (a2)
  {
    a1 = HIDWORD(a1);
  }

  else
  {
    a1 = a1;
  }

  v8 = a3(a1);
  v9 = 0;
  if (v5 < v6)
  {
    v10 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, v3 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 58;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v3 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_15;
    }

    *(v3 + 20) = v17;
    result = a3(v7);
    v9 = v14 + result;
    if (__OFADD__(v14, result))
    {
LABEL_16:
      __break(1u);
      return result;
    }
  }

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0E1F248(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  sub_1B03B5C80(a1, &v18[-v8], &qword_1EB6E4050, &unk_1B0EC2B20);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x24uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 36;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = *(v1 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 20) = v16;
    }
  }

  else
  {
    sub_1B03C60A4(v9, v6, &qword_1EB6E4040, &qword_1B0EC2B10);
    v17 = sub_1B0E20044(v1, sub_1B0E20974, sub_1B0E214FC);
    sub_1B0398EFC(v6, &qword_1EB6E4040, &qword_1B0EC2B10);
    return v17;
  }

  return result;
}

uint64_t sub_1B0E1F458(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  sub_1B03B5C80(a1, &v18[-v8], &qword_1EB6E3EB0, &unk_1B0EC2010);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x24uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 36;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = *(v1 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 20) = v16;
    }
  }

  else
  {
    sub_1B03C60A4(v9, v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v17 = sub_1B0E20044(v1, sub_1B0E20974, sub_1B0E214FC);
    sub_1B0398EFC(v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
    return v17;
  }

  return result;
}

uint64_t sub_1B0E1F668(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  sub_1B03B5C80(a1, &v18[-v8], &qword_1EB6E7440, &unk_1B0EF3200);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x24uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 36;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = *(v1 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 20) = v16;
    }
  }

  else
  {
    sub_1B03C60A4(v9, v6, &qword_1EB6E7430, &qword_1B0EFBC90);
    v17 = sub_1B0E20044(v1, sub_1B0E209B8, sub_1B0E214C0);
    sub_1B0398EFC(v6, &qword_1EB6E7430, &qword_1B0EFBC90);
    return v17;
  }

  return result;
}

uint64_t sub_1B0E1F878(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v85 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v85 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v85 - v11;
  v13 = type metadata accessor for SearchReturnData(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E210EC(a1, v15);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      goto LABEL_16;
    }

    if (result != 3)
    {
      goto LABEL_43;
    }

    v17 = *v15;
    v87 = 0x20544E554F43;
    v88 = 0xE600000000000000;
    v86 = v17;
    v18 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v18);

    v12 = v87;
    v19 = v88;
    v15 = *(v2 + 20);
    v20 = sub_1B0CFC1B0(v87, v88, v2 + 8, v15);
    if (v21)
    {
      v22._countAndFlagsBits = v12;
      v22._object = v19;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v15);
    }

    v23 = v20;

    v24 = *(v2 + 20);
    result = v23;
    v25 = __CFADD__(v24, v23);
    v26 = v24 + v23;
    if (!v25)
    {
      goto LABEL_46;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_32:
    v55 = *v15;
    v87 = 0;
    v88 = 0xE000000000000000;
    MEMORY[0x1B2726E80](542001485, 0xE400000000000000);
    LODWORD(v86) = v55;
    sub_1B0E46508();
    v12 = v87;
    v56 = v88;
    v15 = *(v2 + 20);
    v57 = sub_1B0CFC1B0(v87, v88, v2 + 8, v15);
    if (v58)
    {
      v59._countAndFlagsBits = v12;
      v59._object = v56;
      v57 = ByteBuffer._setStringSlowpath(_:at:)(v59, v15);
    }

    v60 = v57;

    v61 = *(v2 + 20);
    result = v60;
    v25 = __CFADD__(v61, v60);
    v26 = v61 + v60;
    if (!v25)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (result != 1)
  {
LABEL_37:
    sub_1B03C60A4(v15, v12, &qword_1EB6E7440, &unk_1B0EF3200);
    v62 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x204C4C41uLL, 0xE400000000000000, v2 + 8, v62);
    if (v63)
    {
      v64._countAndFlagsBits = 541871169;
      v64._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
    }

    v65 = result;
    v66 = *(v2 + 20);
    v25 = __CFADD__(v66, result);
    v67 = v66 + result;
    if (!v25)
    {
      *(v2 + 20) = v67;
      v2 = sub_1B0E1F668(v12);
      sub_1B0398EFC(v12, &qword_1EB6E7440, &unk_1B0EF3200);
      result = v65 + v2;
      if (!__OFADD__(v65, v2))
      {
        return result;
      }

      __break(1u);
LABEL_43:
      v68 = *v15;
      v87 = 0;
      v88 = 0xE000000000000000;
      MEMORY[0x1B2726E80](0x20514553444F4DLL, 0xE700000000000000);
      v86 = v68;
      sub_1B0E46508();
      v70 = v87;
      v69 = v88;
      v71 = *(v2 + 20);
      v72 = sub_1B0CFC1B0(v87, v88, v2 + 8, v71);
      if (v73)
      {
        v74._countAndFlagsBits = v70;
        v74._object = v69;
        v72 = ByteBuffer._setStringSlowpath(_:at:)(v74, v71);
      }

      v75 = v72;

      v76 = *(v2 + 20);
      result = v75;
      v25 = __CFADD__(v76, v75);
      v26 = v76 + v75;
      if (!v25)
      {
LABEL_46:
        *(v2 + 20) = v26;
        return result;
      }

      goto LABEL_57;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v27 = *v15;
  v87 = 0;
  v88 = 0xE000000000000000;
  MEMORY[0x1B2726E80](542654797, 0xE400000000000000);
  LODWORD(v86) = v27;
  sub_1B0E46508();
  v28 = v87;
  v9 = v88;
  v15 = *(v2 + 20);
  v6 = 0;
  v29 = sub_1B0CFC1B0(v87, v88, v2 + 8, v15);
  if (v30)
  {
    v31._countAndFlagsBits = v28;
    v31._object = v9;
    v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v15);
  }

  v32 = v29;

  v33 = *(v2 + 20);
  result = v32;
  v25 = __CFADD__(v33, v32);
  v26 = v33 + v32;
  if (!v25)
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_16:
  if (result != 5)
  {
    sub_1B03C60A4(v15, v6, &qword_1EB6E6F28, "P5\a");
    v77 = sub_1B0E21514(v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F28, "P5\a");
    return v77;
  }

  v34 = *v15;
  v35 = *(v15 + 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210);
  sub_1B03C60A4(v15 + *(v36 + 48), v9, &qword_1EB6E7438, &qword_1B0EFBF30);
  v37 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x204C414954524150uLL, 0xE900000000000028, v2 + 8, v37);
  if (v38)
  {
    v39._countAndFlagsBits = 0x204C414954524150;
    v39._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
  }

  v40 = result;
  v41 = *(v2 + 20);
  v25 = __CFADD__(v41, result);
  v42 = v41 + result;
  if (v25)
  {
    goto LABEL_56;
  }

  *(v2 + 20) = v42;
  result = sub_1B0E08768(v34, v35);
  v43 = __OFADD__(v40, result);
  v44 = v40 + result;
  if (v43)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v45 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v45);
  if (v46)
  {
    v47._countAndFlagsBits = 32;
    v47._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v47, v45);
  }

  v48 = *(v2 + 20);
  v49 = (v48 + result);
  if (__CFADD__(v48, result))
  {
    goto LABEL_59;
  }

  *(v2 + 20) = v49;
  v43 = __OFADD__(v44, result);
  v50 = v44 + result;
  if (v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if ((sub_1B0E46E98() & 1) == 0)
  {
    result = sub_1B0E20044(v2, sub_1B0E209B8, sub_1B0E214C0);
    v43 = __OFADD__(v50, result);
    v15 = v50 + result;
    if (v43)
    {
LABEL_64:
      __break(1u);
      return result;
    }

    v54 = *(v2 + 20);
    goto LABEL_50;
  }

  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v49);
  if (v51)
  {
    v52._countAndFlagsBits = 4999502;
    v52._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v52, v49);
  }

  v53 = *(v2 + 20);
  v25 = __CFADD__(v53, result);
  v54 = v53 + result;
  if (v25)
  {
    goto LABEL_63;
  }

  *(v2 + 20) = v54;
  v43 = __OFADD__(v50, result);
  v15 = v50 + result;
  if (v43)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_50:
  v78 = v54;
  v79 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v54);
  if (v80)
  {
    v81._countAndFlagsBits = 41;
    v81._object = 0xE100000000000000;
    v79 = ByteBuffer._setStringSlowpath(_:at:)(v81, v78);
  }

  v82 = v79;
  result = sub_1B0398EFC(v9, &qword_1EB6E7438, &qword_1B0EFBF30);
  v83 = *(v2 + 20);
  v25 = __CFADD__(v83, v82);
  v84 = v83 + v82;
  if (v25)
  {
    goto LABEL_61;
  }

  *(v2 + 20) = v84;
  result = v15 + v82;
  if (__OFADD__(v15, v82))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  return result;
}

unint64_t sub_1B0E1FFE8(unint64_t result)
{
  v1 = (result + 1);
  if (result == -1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!HIDWORD(result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= HIDWORD(result))
  {
    return result & 0xFFFFFFFF00000000 | v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B0E20044(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, void *))
{
  v30 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7890, &unk_1B0EF87F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  sub_1B0E2145C();
  if (sub_1B0E45698() < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = *(a1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, a1 + 8, v11);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = result;
    v16 = *(a1 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_17;
    }

    *(a1 + 20) = v18;
  }

  v19 = (*(v8 + 16))(v6, v10, v7);
  MEMORY[0x1EEE9AC00](v19);
  v20 = v31;
  *(&v29 - 6) = v30;
  *(&v29 - 5) = 0;
  *(&v29 - 4) = a1;
  *(&v29 - 3) = v10;
  *(&v29 - 2) = 44;
  *(&v29 - 1) = 0xE100000000000000;
  v21 = sub_1B0DE58A8(0, v20, (&v29 - 8));
  result = sub_1B0398EFC(v6, &qword_1EB6E7890, &unk_1B0EF87F0);
  v22 = v15 + v21;
  if (__OFADD__(v15, v21))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1B0E45698() < 1)
  {
    v28 = v15 + v21;
    goto LABEL_13;
  }

  v23 = *(a1 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, a1 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(a1 + 20);
  v17 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (!v17)
  {
    *(a1 + 20) = v27;
    v28 = v22 + result;
    if (!__OFADD__(v22, result))
    {
LABEL_13:
      (*(v8 + 8))(v10, v7);
      return v28;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0E20314(unint64_t a1, uint64_t a2)
{
  v3 = sub_1B0E1FFE8(a1);
  v4 = v3;
  v5 = HIDWORD(v3);
  v6 = sub_1B050721C();
  v7 = 0;
  if (v4 < v5)
  {
    v8 = *(a2 + 20);
    result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, a2 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 58;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(a2 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      goto LABEL_9;
    }

    *(a2 + 20) = v15;
    result = sub_1B050721C();
    v7 = v12 + result;
    if (__OFADD__(v12, result))
    {
LABEL_10:
      __break(1u);
      return result;
    }
  }

  result = v6 + v7;
  if (__OFADD__(v6, v7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t SearchReturnData.hash(into:)(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  MEMORY[0x1EEE9AC00](v30);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for SearchReturnData(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E210EC(v1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B03C60A4(v19, v16, &qword_1EB6E7440, &unk_1B0EF3200);
        MEMORY[0x1B2728D70](2);
        sub_1B03B5C80(v16, v13, &qword_1EB6E7440, &unk_1B0EF3200);
        if ((*(v8 + 48))(v13, 1, v7) == 1)
        {
          MEMORY[0x1B2728D70](1);
        }

        else
        {
          sub_1B03C60A4(v13, v10, &qword_1EB6E7430, &qword_1B0EFBC90);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v10, &qword_1EB6E7430, &qword_1B0EFBC90);
        }

        v27 = &qword_1EB6E7440;
        v28 = &unk_1B0EF3200;
        v26 = v16;
        return sub_1B0398EFC(v26, v27, v28);
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x1B2728D70](v23);
    return sub_1B0E46C88();
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v24 = v19[8];
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210);
      sub_1B03C60A4(&v19[*(v25 + 48)], v6, &qword_1EB6E7438, &qword_1B0EFBF30);
      MEMORY[0x1B2728D70](5);
      MEMORY[0x1B2728D70](v24);
      sub_1B0E46C88();
      sub_1B0E46C88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      v26 = v6;
      v27 = &qword_1EB6E7438;
      v28 = &qword_1B0EFBF30;
    }

    else
    {
      sub_1B03C60A4(v19, v3, &qword_1EB6E6F28, "P5\a");
      v29 = v31;
      MEMORY[0x1B2728D70](6);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      ParameterValue.hash(into:)(v29);
      v26 = v3;
      v27 = &qword_1EB6E6F28;
      v28 = "P5\a";
    }

    return sub_1B0398EFC(v26, v27, v28);
  }

  v21 = *v19;
  if (EnumCaseMultiPayload == 3)
  {
    MEMORY[0x1B2728D70](3);
    return MEMORY[0x1B2728D70](v21);
  }

  else
  {
    MEMORY[0x1B2728D70](4);
    return MEMORY[0x1B2728DB0](v21);
  }
}

uint64_t SearchReturnData.hashValue.getter()
{
  sub_1B0E46C28();
  SearchReturnData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E208F0()
{
  sub_1B0E46C28();
  SearchReturnData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E20934(uint64_t a1)
{
  sub_1B0E46C28();
  SearchReturnData.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore216SearchReturnDataO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  MEMORY[0x1EEE9AC00](v62);
  v65 = (&v61 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v61 - v8;
  v10 = type metadata accessor for SearchReturnData(0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v61 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v61 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v61 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v61 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v61 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B80, &qword_1B0EFC8B8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v61 - v31;
  v34 = &v61 + *(v33 + 56) - v31;
  sub_1B0E210EC(v67, &v61 - v31);
  sub_1B0E210EC(v68, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B0E210EC(v32, v23);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_1B03C60A4(v34, v9, &qword_1EB6E7440, &unk_1B0EF3200);
          v49 = sub_1B0E1AC70(v23, v9);
          sub_1B0398EFC(v9, &qword_1EB6E7440, &unk_1B0EF3200);
          sub_1B0398EFC(v23, &qword_1EB6E7440, &unk_1B0EF3200);
          goto LABEL_25;
        }

        v54 = &qword_1EB6E7440;
        v55 = &unk_1B0EF3200;
        goto LABEL_35;
      }

      sub_1B0E210EC(v32, v26);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_37;
      }

      v38 = *v34;
      v39 = *v26;
    }

    else
    {
      sub_1B0E210EC(v32, v29);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_37;
      }

      v38 = *v34;
      v39 = *v29;
    }

    v37 = v38 == v39;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1B0E210EC(v32, v14);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210) + 48);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v41 = v14[8];
        v42 = *v14;
        v43 = *v34;
        v44 = v34[8];
        v45 = &v14[v40];
        v46 = v64;
        sub_1B03C60A4(v45, v64, &qword_1EB6E7438, &qword_1B0EFBF30);
        v47 = &v34[v40];
        v48 = v63;
        sub_1B03C60A4(v47, v63, &qword_1EB6E7438, &qword_1B0EFBF30);
        if (sub_1B0E08AEC(v42, v41, v43, v44))
        {
          sub_1B03D06F8();
          v49 = sub_1B0E46E08();
          sub_1B0398EFC(v48, &qword_1EB6E7438, &qword_1B0EFBF30);
          sub_1B0398EFC(v46, &qword_1EB6E7438, &qword_1B0EFBF30);
LABEL_25:
          sub_1B0D85828(v32, v36);
          return v49 & 1;
        }

        v57 = &qword_1EB6E7438;
        v58 = &qword_1B0EFBF30;
        sub_1B0398EFC(v48, &qword_1EB6E7438, &qword_1B0EFBF30);
        v59 = v46;
LABEL_42:
        sub_1B0398EFC(v59, v57, v58);
        sub_1B0D85828(v32, v60);
        goto LABEL_38;
      }

      v54 = &qword_1EB6E7438;
      v55 = &qword_1B0EFBF30;
      v56 = &v14[v40];
LABEL_36:
      sub_1B0398EFC(v56, v54, v55);
      goto LABEL_37;
    }

    v23 = v66;
    sub_1B0E210EC(v32, v66);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v52 = v65;
      sub_1B03C60A4(v34, v65, &qword_1EB6E6F28, "P5\a");
      if (*v23 == *v52 && v23[1] == v52[1] || (sub_1B0E46A78()) && (_s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(v23 + *(v62 + 52), v52 + *(v62 + 52)))
      {
        sub_1B0398EFC(v52, &qword_1EB6E6F28, "P5\a");
        sub_1B0398EFC(v23, &qword_1EB6E6F28, "P5\a");
        sub_1B0D85828(v32, v53);
        v49 = 1;
        return v49 & 1;
      }

      v57 = &qword_1EB6E6F28;
      v58 = "P5\a";
      sub_1B0398EFC(v52, &qword_1EB6E6F28, "P5\a");
      v59 = v23;
      goto LABEL_42;
    }

    v54 = &qword_1EB6E6F28;
    v55 = "P5\a";
LABEL_35:
    v56 = v23;
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B0E210EC(v32, v20);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = *v20 == *v34;
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  sub_1B0E210EC(v32, v17);
  v50 = *v17;
  result = swift_getEnumCaseMultiPayload();
  if (result != 4)
  {
LABEL_37:
    sub_1B0398EFC(v32, &qword_1EB6E7B80, &qword_1B0EFC8B8);
LABEL_38:
    v49 = 0;
    return v49 & 1;
  }

  if (((*v34 | v50) & 0x8000000000000000) == 0)
  {
    v37 = *v34 == v50;
LABEL_22:
    v49 = v37;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SearchReturnData(uint64_t a1)
{
  result = qword_1EB6DE678;
  if (!qword_1EB6DE678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0E210EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B0E21198(uint64_t a1)
{
  sub_1B0E21240(319);
  if (v1 <= 0x3F)
  {
    sub_1B0E212F0(319);
    if (v2 <= 0x3F)
    {
      sub_1B0E21364(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B0E21240(uint64_t a1)
{
  if (!qword_1EB6DE778)
  {
    v2 = sub_1B0E2129C();
    CommandSet = type metadata accessor for LastCommandSet(a1, &type metadata for UnknownMessageIdentifier, v2, v3);
    if (!v5)
    {
      atomic_store(CommandSet, &qword_1EB6DE778);
    }
  }
}

unint64_t sub_1B0E2129C()
{
  result = qword_1EB6DE2E0;
  if (!qword_1EB6DE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE2E0);
  }

  return result;
}

void sub_1B0E212F0(uint64_t a1)
{
  if (!qword_1EB6DE900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7438, &qword_1B0EFBF30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE900);
    }
  }
}

void sub_1B0E21364(uint64_t a1)
{
  if (!qword_1EB6DE080[0])
  {
    v2 = type metadata accessor for ParameterValue(255);
    v3 = sub_1B0E21414(&qword_1EB6DE740, type metadata accessor for ParameterValue, &protocol conformance descriptor for ParameterValue);
    v6[0] = MEMORY[0x1E69E6158];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E69E6168];
    v6[3] = v3;
    v4 = type metadata accessor for KeyValue(a1, v6);
    if (!v5)
    {
      atomic_store(v4, qword_1EB6DE080);
    }
  }
}

uint64_t sub_1B0E21414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B0E2145C()
{
  result = qword_1EB6DA2E8;
  if (!qword_1EB6DA2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA2E8);
  }

  return result;
}

uint64_t sub_1B0E21514(unint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 20);
  result = sub_1B0CFC1B0(*a1, v4, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v1 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 20) = v11;
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v11);
  if (v12)
  {
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
  }

  v14 = *(v1 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_11;
  }

  *(v1 + 20) = v16;
  v17 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  v19 = sub_1B0DF818C(a1 + *(v18 + 52));
  v20 = __OFADD__(v17, v19);
  result = v17 + v19;
  if (v20)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E21624(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x204E525554455220uLL, 0xE900000000000028, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x204E525554455220;
    v7._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v10;
  v31 = a1;
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v2 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_23;
  }

  *(v2 + 20) = v16;
  MEMORY[0x1EEE9AC00](result);
  v30[2] = sub_1B0E21FA0;
  v30[3] = 0;
  v30[4] = v2;
  v30[5] = &v31;
  v30[6] = 32;
  v30[7] = 0xE100000000000000;
  result = sub_1B0DE6B10(0, sub_1B0E2247C, v30, a1);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_25;
  }

  *(v2 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = __OFADD__(v8, v23);
  v25 = v8 + v23;
  if (v24)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v22);
  if (v26)
  {
    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v27, v22);
  }

  v28 = *(v2 + 20);
  v15 = __CFADD__(v28, result);
  v29 = v28 + result;
  if (v15)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v29;
  v24 = __OFADD__(v25, result);
  result += v25;
  if (!v24)
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t SearchReturnOption.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for SearchReturnOption(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E22328(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B0D78E60(v16, v13);
        MEMORY[0x1B2728D70](6);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1B0D78ED0(&v13[*(v11 + 52)], v10);
        if ((*(v5 + 48))(v10, 1, v4) == 1)
        {
          sub_1B0E46C68();
        }

        else
        {
          sub_1B0D06280(v10, v7);
          sub_1B0E46C68();
          ParameterValue.hash(into:)(a1);
          sub_1B0E2241C(v7, type metadata accessor for ParameterValue);
        }

        return sub_1B0398EFC(v13, &qword_1EB6E6F58, &unk_1B0EF5150);
      }

      else
      {
        return MEMORY[0x1B2728D70](0);
      }
    }

    else
    {
      v19 = v16[8];
      MEMORY[0x1B2728D70](5);
      MEMORY[0x1B2728D70]((v19 & 1) != 0);
      sub_1B0E46C88();
      return sub_1B0E46C88();
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return MEMORY[0x1B2728D70](3);
    }

    else
    {
      return MEMORY[0x1B2728D70](4);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x1B2728D70](1);
  }

  else
  {
    return MEMORY[0x1B2728D70](2);
  }
}

uint64_t SearchReturnOption.hashValue.getter()
{
  sub_1B0E46C28();
  SearchReturnOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E21BA0()
{
  sub_1B0E46C28();
  SearchReturnOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E21BE4(uint64_t a1)
{
  sub_1B0E46C28();
  SearchReturnOption.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E21C24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42[-v4];
  v6 = type metadata accessor for SearchReturnOption(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E22328(a1, v8);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    goto LABEL_9;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      goto LABEL_34;
    }

    v16 = *(v1 + 20);
    v8 = 0;
    result = sub_1B0CFC1B0(0x544E554F43uLL, 0xE500000000000000, v1 + 8, v16);
    if (v17)
    {
      v8 = v1;
      v18._countAndFlagsBits = 0x544E554F43;
      v18._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = *(v1 + 20);
    v13 = __CFADD__(v19, result);
    v14 = v19 + result;
    if (!v13)
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (result == 3)
  {
    v5 = *(v1 + 20);
    v8 = 0;
    result = sub_1B0CFC1B0(0x58414DuLL, 0xE300000000000000, v1 + 8, v5);
    if (v10)
    {
      v8 = v1;
      v11._countAndFlagsBits = 5783885;
      v11._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v5);
    }

    v12 = *(v1 + 20);
    v13 = __CFADD__(v12, result);
    v14 = v12 + result;
    if (!v13)
    {
      goto LABEL_37;
    }

    __break(1u);
LABEL_9:
    if (result)
    {
      if (result == 1)
      {
        sub_1B0D78E60(v8, v5);
        v15 = sub_1B0E224BC(v5);
        sub_1B0398EFC(v5, &qword_1EB6E6F58, &unk_1B0EF5150);
        return v15;
      }

LABEL_24:
      v30 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x4E494DuLL, 0xE300000000000000, v1 + 8, v30);
      if (v31)
      {
        v32._countAndFlagsBits = 5130573;
        v32._object = 0xE300000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
      }

      v33 = *(v1 + 20);
      v13 = __CFADD__(v33, result);
      v14 = v33 + result;
      if (!v13)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_18:
    v20 = *v8;
    v21 = v8[8];
    v22 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x204C414954524150uLL, 0xE800000000000000, v1 + 8, v22);
    if (v23)
    {
      v24._countAndFlagsBits = 0x204C414954524150;
      v24._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v1 + 20);
    v13 = __CFADD__(v26, result);
    v27 = v26 + result;
    if (v13)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    *(v1 + 20) = v27;
    v28 = sub_1B0E08768(v20, v21);
    v29 = __OFADD__(v25, v28);
    result = v25 + v28;
    if (!v29)
    {
      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  v34 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x4C4C41uLL, 0xE300000000000000, v1 + 8, v34);
  if (v35)
  {
    v36._countAndFlagsBits = 5000257;
    v36._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v1 + 20);
  v13 = __CFADD__(v37, result);
  v14 = v37 + result;
  if (!v13)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_34:
  v38 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x45564153uLL, 0xE400000000000000, v1 + 8, v38);
  if (v39)
  {
    v40._countAndFlagsBits = 1163280723;
    v40._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v40, v38);
  }

  v41 = *(v1 + 20);
  v13 = __CFADD__(v41, result);
  v14 = v41 + result;
  if (v13)
  {
    goto LABEL_40;
  }

LABEL_37:
  *(v1 + 20) = v14;
  return result;
}

BOOL _s12NIOIMAPCore218SearchReturnOptionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v23 - v5);
  v7 = type metadata accessor for SearchReturnOption(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B90, &unk_1B0EFC948);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v17 = &v23 + *(v16 + 56) - v14;
  sub_1B0E22328(a1, &v23 - v14);
  sub_1B0E22328(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_26;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_24:
      sub_1B0E2241C(v15, type metadata accessor for SearchReturnOption);
      return 1;
    }

    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B0E22328(v15, v12);
    v20 = *v12;
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = v17[8];
      if (v12[8])
      {
        if (*v17 != v20)
        {
          v21 = 0;
        }

        if (v21 == 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (*v17 != v20)
        {
          LOBYTE(v21) = 1;
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_1B0E2241C(v15, type metadata accessor for SearchReturnOption);
      return 0;
    }

LABEL_26:
    sub_1B0398EFC(v15, &qword_1EB6E7B90, &unk_1B0EFC948);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1B0E22328(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
    goto LABEL_26;
  }

  sub_1B0D78E60(v17, v6);
  v19 = sub_1B0DCA3C4(v9, v6);
  sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
  sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
  sub_1B0E2241C(v15, type metadata accessor for SearchReturnOption);
  return v19;
}

uint64_t sub_1B0E22328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E223D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B0E2241C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0E2247C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E23C30(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B0E224BC(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for ParameterValue(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30[0] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = *(v1 + 20);
  result = sub_1B0CFC1B0(*a1, v10, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  sub_1B0D78ED0(a1 + *(v19 + 52), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B0D06414(v6);
    v20 = 0;
  }

  else
  {
    v21 = v30[0];
    sub_1B0D06280(v6, v30[0]);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v18);
    if (v22)
    {
      v23 = v16;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
      v25 = result;
    }

    else
    {
      v25 = result;
      v23 = v16;
    }

    v26 = *(v2 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_16;
    }

    *(v2 + 20) = v28;
    v29 = sub_1B0DF818C(v21);
    result = sub_1B0D06348(v21);
    v20 = v25 + v29;
    if (__OFADD__(v25, v29))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v16 = v23;
  }

  result = v16 + v20;
  if (__OFADD__(v16, v20))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall SectionSpecifier.Part.dropLast()()
{
  v1 = sub_1B0D4251C(1uLL, v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_3:
    sub_1B0D441B8(v1, v3, v5, v7);
    v9 = v8;
LABEL_10:
    swift_unknownObjectRelease();
    return v9;
  }

  sub_1B0E46AD8();
  swift_unknownObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v7 >> 1, v5))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 != (v7 >> 1) - v5)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v9;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall SectionSpecifier.Part.appending(_:)(Swift::Int a1)
{
  v2.array._rawValue = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  *(inited + 32) = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0D44288(inited);
  return v2;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall SectionSpecifier.Part.dropFirst()()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  sub_1B0D441B8(v0, v0 + 32, 1, (2 * v1) | 1);
  return result;
}

uint64_t sub_1B0E228C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v22 = a3;
  result = a4(&v22, a6);
  v14 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  sub_1B0E2145C();
  result = sub_1B0E45698();
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v15 = *(a6 + 20);
    result = sub_1B0CFC1B0(a8, a9, a6 + 8, v15);
    if (v16)
    {
      v17._countAndFlagsBits = a8;
      v17._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
    }

    v18 = *(a6 + 20);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      goto LABEL_14;
    }

    *(a6 + 20) = v20;
  }

  v21 = __OFADD__(v14, result);
  result += v14;
  if (v21)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E229E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v25[0] = a3;
  v25[1] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = (a5)(v25, a7);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a8 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a7 + 20);
    v18 = sub_1B0CFC1B0(a9, a10, a7 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a9;
      v20._object = a10;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a7 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a7 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E22AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v26 = a3;

  result = a4(&v26, a6);
  v16 = __OFADD__(a1, result);
  v17 = a1 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {

    v22 = 0;
  }

  else
  {
    v18 = *(a6 + 20);
    v19 = sub_1B0CFC1B0(a8, a9, a6 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = a8;
      v21._object = a9;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = v19;

    v23 = *(a6 + 20);
    v24 = __CFADD__(v23, v22);
    v25 = v23 + v22;
    if (v24)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v25;
  }

  result = v17 + v22;
  if (__OFADD__(v17, v22))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E22C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v14 = *a2;
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v29[0] = *(a2 + 8);
  v29[1] = v16;
  v29[2] = v15;
  v30 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = (a3)(v29, a5);
  v19 = __OFADD__(a1, result);
  v20 = a1 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(a6 + 16) - 1)
  {

    v25 = 0;
  }

  else
  {
    v21 = *(a5 + 20);
    v22 = sub_1B0CFC1B0(a7, a8, a5 + 8, v21);
    if (v23)
    {
      v24._countAndFlagsBits = a7;
      v24._object = a8;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
    }

    v25 = v22;

    v26 = *(a5 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v28;
  }

  result = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E22DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t *a9, uint64_t *a10, uint64_t (*a11)(void, double), uint64_t (*a12)(void))
{
  v39 = a6;
  v37 = a7;
  v38 = a8;
  v40 = a4;
  v41 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v36 - v18);
  v20 = a11(0, v17);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v36 - v21;
  sub_1B03B5C80(a2, v19, a9, a10);
  v23 = *v19;
  sub_1B0E2654C(v19 + *(v16 + 56), v22, a12);
  result = a3(v22, a5);
  v25 = v41 + result;
  if (__OFADD__(v41, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= *(v39 + 16) - 1)
  {
    sub_1B0E265B4(v22, a12);
    v32 = 0;
  }

  else
  {
    v26 = *(a5 + 20);
    v28 = v37;
    v27 = v38;
    v29 = sub_1B0CFC1B0(v37, v38, a5 + 8, v26);
    if (v30)
    {
      v31._countAndFlagsBits = v28;
      v31._object = v27;
      v32 = ByteBuffer._setStringSlowpath(_:at:)(v31, v26);
    }

    else
    {
      v32 = v29;
    }

    result = sub_1B0E265B4(v22, a12);
    v33 = *(a5 + 20);
    v34 = __CFADD__(v33, v32);
    v35 = v33 + v32;
    if (v34)
    {
      goto LABEL_13;
    }

    *(a5 + 20) = v35;
  }

  result = v25 + v32;
  if (__OFADD__(v25, v32))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E22FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v25[0] = a3;
  v25[1] = a4;
  v26 = a5;
  v27 = WORD2(a5);
  v28 = BYTE6(a5);

  result = a6(v25, a8);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a8 + 20);
    v18 = sub_1B0CFC1B0(a10, a11, a8 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a10;
      v20._object = a11;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a8 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E23198(uint64_t a1, __int128 *a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t *a9, uint64_t *a10, uint64_t (*a11)(__int128 *))
{
  v17 = *(a2 + 8);
  v18 = a2[1];
  v30 = *a2;
  *v39 = *a2;
  *&v39[16] = v18;
  v19 = a2[3];
  *&v39[32] = a2[2];
  *&v39[48] = v19;
  *&v39[64] = v17;
  v35 = *&v39[8];
  v36 = *&v39[24];
  v37 = *&v39[40];
  v38 = *&v39[56];
  sub_1B03B5C80(v39, &v31, a9, a10);
  result = a3(&v35, a5);
  v21 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v30 >= *(a6 + 16) - 1)
  {
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    a11(&v31);
    v26 = 0;
  }

  else
  {
    v22 = *(a5 + 20);
    v23 = sub_1B0CFC1B0(a7, a8, a5 + 8, v22);
    if (v24)
    {
      v25._countAndFlagsBits = a7;
      v25._object = a8;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
    }

    v26 = v23;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    result = a11(&v31);
    v27 = *(a5 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v29;
  }

  result = v21 + v26;
  if (__OFADD__(v21, v26))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E2331C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v23 = a3;
  result = a4(&v23, a6);
  v15 = __OFADD__(a1, result);
  v16 = a1 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v17 = *(a6 + 20);
    result = sub_1B0CFC1B0(a8, a9, a6 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = a8;
      v19._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(a6 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v22;
  }

  v15 = __OFADD__(v16, result);
  result += v16;
  if (v15)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_1B0E23404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v28._countAndFlagsBits = a7;
  v28._object = a8;
  v12 = *a2;
  v11 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 44);
  v17 = *(a2 + 40);
  v32[0] = v11;
  v32[1] = v14;
  v32[2] = v13;
  v32[3] = v15;
  v34 = v16;
  v33 = v17;
  v31 = v17 | (v16 << 32);
  v18 = sub_1B0DDB688(v11, v14, v13, v15, v31);
  v19 = a3(v32, a5, v18);
  v20 = a1 + v19;
  if (__OFADD__(a1, v19))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 >= *(a6 + 16) - 1)
  {
    sub_1B0C1BB38(v11, v14, v13, v15, v31);
    v24 = 0;
  }

  else
  {
    v30 = a1 + v19;
    v21 = *(a5 + 20);
    v22 = sub_1B0CFC1B0(v28._countAndFlagsBits, v28._object, a5 + 8, v21);
    if (v23)
    {
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v28, v21);
    }

    else
    {
      v24 = v22;
    }

    sub_1B0C1BB38(v11, v14, v13, v15, v31);
    v25 = *(a5 + 20);
    v26 = __CFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      goto LABEL_13;
    }

    *(a5 + 20) = v27;
    v20 = v30;
  }

  if (__OFADD__(v20, v24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1B0E23640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, __n128), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = (a6)(v25, a8);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a8 + 20);
    v18 = sub_1B0CFC1B0(a10, a11, a8 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a10;
      v20._object = a11;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a8 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E237B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 28);
  v18 = *(a2 + 30);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v37 = *a2;
  *&v38 = v14;
  *(&v38 + 1) = *(a2 + 16);
  LODWORD(v39) = v16;
  WORD2(v39) = v17;
  BYTE6(v39) = v18;
  *(&v39 + 1) = v19;
  v40 = v20;
  v34 = v38;
  v35 = v39;
  v36 = v20;
  sub_1B03B5C80(&v37, &v31, &qword_1EB6E7900, &unk_1B0EFCD80);
  result = a3(&v34, a5);
  v22 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {
    v31 = v34;
    v32 = v35;
    v33 = v36;
    sub_1B0D3CEC0(&v31);
    v27 = 0;
  }

  else
  {
    v23 = *(a5 + 20);
    v24 = sub_1B0CFC1B0(a7, a8, a5 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = a7;
      v26._object = a8;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v31 = v34;
    v32 = v35;
    v33 = v36;
    result = sub_1B0D3CEC0(&v31);
    v28 = *(a5 + 20);
    v29 = __CFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v30;
  }

  result = v22 + v27;
  if (__OFADD__(v22, v27))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E23934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v26[0] = a3;
  v26[1] = a4;
  v27 = a5;
  v29 = BYTE6(a5);
  v28 = WORD2(a5);
  sub_1B0DED0B0();
  result = a6(v26, a8);
  v17 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {
    sub_1B03D91F8(a3);
    v22 = 0;
  }

  else
  {
    v30 = a1 + result;
    v18 = *(a8 + 20);
    v19 = sub_1B0CFC1B0(a10, a11, a8 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = a10;
      v21._object = a11;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = v19;
    result = sub_1B03D91F8(a3);
    v23 = *(a8 + 20);
    v24 = __CFADD__(v23, v22);
    v25 = v23 + v22;
    v17 = v30;
    if (v24)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v25;
  }

  result = v17 + v22;
  if (__OFADD__(v17, v22))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E23AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v31[0] = a3;
  v31[1] = a4;
  v18 = HIBYTE(a5) & 1;
  v32 = a5;
  v34 = BYTE6(a5);
  v33 = WORD2(a5);
  v35 = HIBYTE(a5) & 1;
  sub_1B0D3C8F0(a3, a4, a5, HIBYTE(a5) & 1);
  result = a6(v31, a8);
  v20 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {
    sub_1B0D3C8FC(a3, a4, a5, v18);
    v26 = 0;
  }

  else
  {
    v30 = a1 + result;
    v21 = *(a8 + 20);
    v22 = v36;
    v23 = sub_1B0CFC1B0(a10, a11, a8 + 8, v21);
    v36 = v22;
    if (v24)
    {
      v25._countAndFlagsBits = a10;
      v25._object = a11;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v21);
    }

    v26 = v23;
    result = sub_1B0D3C8FC(a3, a4, a5, v18);
    v27 = *(a8 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    v20 = v30;
    if (v28)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v29;
  }

  result = v20 + v26;
  if (__OFADD__(v20, v26))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E23C8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(uint64_t *, uint64_t, double), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v29 = a3;
  v30 = a4;
  v17 = sub_1B0DED088(a3, a4);
  result = a5(&v29, a7, v17);
  v19 = __OFADD__(a1, result);
  v20 = a1 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a8 + 16) - 1 <= a2)
  {
    sub_1B0DED09C(a3, a4);
    v25 = 0;
  }

  else
  {
    v21 = *(a7 + 20);
    v22 = sub_1B0CFC1B0(a9, a10, a7 + 8, v21);
    if (v23)
    {
      v24._countAndFlagsBits = a9;
      v24._object = a10;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
    }

    v25 = v22;
    result = sub_1B0DED09C(a3, a4);
    v26 = *(a7 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_12;
    }

    *(a7 + 20) = v28;
  }

  result = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E23E14(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v25 = a3;
  v26 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a5(&v25, a7);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a8 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a7 + 20);
    v18 = sub_1B0CFC1B0(a9, a10, a7 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a9;
      v20._object = a10;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a7 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a7 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E23F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v23 = a3;
  result = a4(&v23, a6);
  v15 = __OFADD__(a1, result);
  v16 = a1 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v17 = *(a6 + 20);
    result = sub_1B0CFC1B0(a8, a9, a6 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = a8;
      v19._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(a6 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v22;
  }

  v15 = __OFADD__(v16, result);
  result += v16;
  if (v15)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E24010(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v14 = *a2;
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v29[0] = a2[1];
  v29[1] = v16;
  v29[2] = v15;
  v29[3] = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = (a3)(v29, a5);
  v19 = __OFADD__(a1, result);
  v20 = a1 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(a6 + 16) - 1)
  {

    v25 = 0;
  }

  else
  {
    v21 = *(a5 + 20);
    v22 = sub_1B0CFC1B0(a7, a8, a5 + 8, v21);
    if (v23)
    {
      v24._countAndFlagsBits = a7;
      v24._object = a8;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
    }

    v25 = v22;

    v26 = *(a5 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v28;
  }

  result = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E2414C(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(int *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v23 = a3;
  result = a4(&v23, a6);
  v15 = __OFADD__(a1, result);
  v16 = a1 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v17 = *(a6 + 20);
    result = sub_1B0CFC1B0(a8, a9, a6 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = a8;
      v19._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(a6 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v22;
  }

  v15 = __OFADD__(v16, result);
  result += v16;
  if (v15)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E24234(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 28);
  v18 = *(a2 + 30);
  v19 = *(a2 + 48);
  v39 = *a2;
  *&v40 = v14;
  *(&v40 + 1) = *(a2 + 16);
  *v41 = v16;
  *&v41[4] = v17;
  v41[6] = v18;
  *&v41[8] = *(a2 + 32);
  *&v41[24] = v19;
  v42 = *(a2 + 56);
  v35 = v40;
  v36 = *v41;
  v37 = *&v41[16];
  v38 = v42;
  sub_1B03B5C80(&v39, &v31, &qword_1EB6E78A0, &unk_1B0EFCD30);
  result = a3(&v35, a5);
  v21 = __OFADD__(a1, result);
  v22 = a1 + result;
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    sub_1B0CF98D4(&v31);
    v27 = 0;
  }

  else
  {
    v23 = *(a5 + 20);
    v24 = sub_1B0CFC1B0(a7, a8, a5 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = a7;
      v26._object = a8;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    result = sub_1B0CF98D4(&v31);
    v28 = *(a5 + 20);
    v29 = __CFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v30;
  }

  result = v22 + v27;
  if (__OFADD__(v22, v27))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E243D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 28);
  v18 = *(a2 + 30);
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v23 = *(a2 + 48);
  v21 = a2 + 48;
  v22 = v23;
  LOWORD(v23) = *(v21 + 4);
  v24 = *(v21 + 6);
  v40 = v15;
  *&v41 = v14;
  *(&v41 + 1) = v19;
  *v42 = v16;
  *&v42[4] = v17;
  v42[6] = v18;
  *&v42[8] = v20;
  v42[30] = v24;
  *&v42[28] = v23;
  *&v42[24] = v22;
  v38 = v41;
  v39[0] = *v42;
  *(v39 + 15) = *&v42[15];
  sub_1B03B5C80(&v40, &v36, &qword_1EB6E78A8, &qword_1B0EF8FE0);
  result = a3(&v38, a5);
  v26 = __OFADD__(a1, result);
  v27 = a1 + result;
  if (v26)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {
    v36 = v38;
    v37[0] = v39[0];
    *(v37 + 15) = *(v39 + 15);
    sub_1B0D3C964(&v36);
    v32 = 0;
  }

  else
  {
    v28 = *(a5 + 20);
    v29 = sub_1B0CFC1B0(a7, a8, a5 + 8, v28);
    if (v30)
    {
      v31._countAndFlagsBits = a7;
      v31._object = a8;
      v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
    }

    v32 = v29;
    v36 = v38;
    v37[0] = v39[0];
    *(v37 + 15) = *(v39 + 15);
    result = sub_1B0D3C964(&v36);
    v33 = *(a5 + 20);
    v34 = __CFADD__(v33, v32);
    v35 = v33 + v32;
    if (v34)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v35;
  }

  result = v27 + v32;
  if (__OFADD__(v27, v32))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E24578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v20 = *(a2 + 40);
  v18 = a2 + 40;
  v19 = v20;
  LOWORD(v20) = *(v18 + 4);
  v21 = *(v18 + 6);
  v33[0] = v14;
  v33[1] = v16;
  v34 = v17;
  v37 = v21;
  v36 = v20;
  v35 = v19;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = (a3)(v33, a5);
  v23 = __OFADD__(a1, result);
  v24 = a1 + result;
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {

    v29 = 0;
  }

  else
  {
    v25 = *(a5 + 20);
    v26 = sub_1B0CFC1B0(a7, a8, a5 + 8, v25);
    if (v27)
    {
      v28._countAndFlagsBits = a7;
      v28._object = a8;
      v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
    }

    v29 = v26;

    v30 = *(a5 + 20);
    v31 = __CFADD__(v30, v29);
    v32 = v30 + v29;
    if (v31)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v32;
  }

  result = v24 + v29;
  if (__OFADD__(v24, v29))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E246D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 91;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(v3 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_36;
  }

  *(v3 + 20) = v14;
  if (!a1)
  {
    v22 = 0;
    goto LABEL_28;
  }

  v41 = a1;
  v15 = a1[2];
  if (v15)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 8, v14);
    if (v16)
    {
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v4 + 20);
    v20 = __CFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      goto LABEL_42;
    }

    *(v4 + 20) = v21;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v40[2] = sub_1B0E25FA4;
  v40[3] = 0;
  v40[4] = v4;
  v40[5] = &v41;
  v40[6] = 46;
  v40[7] = 0xE100000000000000;
  result = sub_1B0DE6D58(0, sub_1B0E264E0, v40, a1);
  v23 = v18 + result;
  if (__OFADD__(v18, result))
  {
    goto LABEL_40;
  }

  if (!v15)
  {
    v29 = v18 + result;
    goto LABEL_18;
  }

  v24 = *(v4 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v4 + 20);
  v20 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v20)
  {
    goto LABEL_43;
  }

  *(v4 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_18:
  if (a2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v5 == 2;
  }

  v32 = !v30 && v15 != 0;
  result = sub_1B0E25CC4(a2, v5, v32);
  v22 = v29 + result;
  if (__OFADD__(v29, result))
  {
    goto LABEL_41;
  }

LABEL_28:
  v33 = v12 + v22;
  if (__OFADD__(v12, v22))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x5DuLL, 0xE100000000000000, v4 + 8, v34);
  if (v35)
  {
    v36._countAndFlagsBits = 93;
    v36._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v4 + 20);
  v20 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v20)
  {
    goto LABEL_38;
  }

  *(v4 + 20) = v38;
  v39 = __OFADD__(v33, result);
  result += v33;
  if (v39)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E24940(void *a1)
{
  v3 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 91;
    v6._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = result;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v10;
  result = sub_1B0E258D8(a1);
  v11 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x5DuLL, 0xE100000000000000, v1 + 8, v12);
  if (v13)
  {
    v14._countAndFlagsBits = 93;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v1 + 20);
  v9 = __CFADD__(v15, result);
  v16 = v15 + result;
  if (v9)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v16;
  v17 = __OFADD__(v11, result);
  result += v11;
  if (v17)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t SectionSpecifier.init(part:kind:)(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (*(result + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = a3 >= 2u;
  }

  if (v3 && a2 == 2)
  {
    __break(1u);
  }

  return result;
}

uint64_t *SectionSpecifier.complete.unsafeMutableAddressor()
{
  if (qword_1EB6DE648 != -1)
  {
    swift_once();
  }

  return &static SectionSpecifier.complete;
}

uint64_t SectionSpecifier.debugDescription.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v6 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v7 = dword_1EB737EB8;
  v8 = word_1EB737EBC;
  v9 = byte_1EB737EBE;

  LOBYTE(v19) = 0;
  BYTE5(v19) = 0;
  *(&v19 + 1) = 65537;
  *(&v19 + 1) = v6;
  *&v20 = qword_1EB737EB0;
  DWORD2(v20) = v7;
  WORD6(v20) = v8;
  BYTE14(v20) = v9;
  *&v21 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v21 + 1) = v10;
  v22 = v11;
  sub_1B0E258D8(a1);
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v3 == 2;
  }

  v14 = !v12 && a1[2] != 0;
  result = sub_1B0E25CC4(a2, v3, v14);
  if (DWORD1(v20) < v20)
  {
    __break(1u);
  }

  else if (DWORD2(v20) - (BYTE14(v20) | (WORD6(v20) << 8)) >= DWORD1(v20))
  {
    v23[0] = *(&v19 + 1);
    v23[1] = v20;
    v24 = DWORD2(v20);
    v25 = WORD6(v20);
    v26 = BYTE14(v20);
    v27 = v20;
    v28 = DWORD1(v20);
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v20) - v20);
    sub_1B0D547AC(v23, v17);
    sub_1B04394F4(v23);
    v16 = *&v17[0];
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_1B0D7E6B4(v17);
    return v16;
  }

  __break(1u);
  return result;
}

void *SectionSpecifier.Part.debugDescription.getter(void *a1)
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1EB737EB0;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1B0E258D8(a1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v11) - v11);
    sub_1B0D547AC(v14, v20);
    sub_1B04394F4(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1B0D7E6B4(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t SectionSpecifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a2 + 16);
  MEMORY[0x1B2728D70](v7);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      MEMORY[0x1B2728D70](v9);
      --v7;
    }

    while (v7);
  }

  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1B2728D70](3);
      v10 = *(a3 + 16);
      result = MEMORY[0x1B2728D70](v10);
      if (v10)
      {
        v12 = a3 + 40;
        do
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v12 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      return MEMORY[0x1B2728D70](qword_1B0EFCD90[a3]);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    v13 = *(a3 + 16);
    result = MEMORY[0x1B2728D70](v13);
    if (v13)
    {
      v14 = a3 + 40;
      do
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t SectionSpecifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  SectionSpecifier.hash(into:)(v7, a1, a2, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E24FB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  SectionSpecifier.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E25018(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0E46C28();
  SectionSpecifier.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

void sub_1B0E25088()
{
  static SectionSpecifier.complete = MEMORY[0x1E69E7CC0];
  *algn_1EB737EC8 = 0;
  byte_1EB737ED0 = 2;
}

uint64_t static SectionSpecifier.complete.getter()
{
  if (qword_1EB6DE648 != -1)
  {
    swift_once();
  }

  v0 = static SectionSpecifier.complete;
  v1 = *algn_1EB737EC8;
  v2 = byte_1EB737ED0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE964(v1, v2);
  return v0;
}

void sub_1B0E2512C()
{
  static SectionSpecifier.header = MEMORY[0x1E69E7CC0];
  unk_1EB737EE0 = 1;
  byte_1EB737EE8 = 2;
}

uint64_t *SectionSpecifier.header.unsafeMutableAddressor()
{
  if (qword_1EB6DE650 != -1)
  {
    swift_once();
  }

  return &static SectionSpecifier.header;
}

uint64_t static SectionSpecifier.header.getter()
{
  if (qword_1EB6DE650 != -1)
  {
    swift_once();
  }

  v0 = static SectionSpecifier.header;
  v1 = unk_1EB737EE0;
  v2 = byte_1EB737EE8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE964(v1, v2);
  return v0;
}

void sub_1B0E25224()
{
  static SectionSpecifier.text = MEMORY[0x1E69E7CC0];
  *algn_1EB7387E8 = 3;
  byte_1EB7387F0 = 2;
}

uint64_t *SectionSpecifier.text.unsafeMutableAddressor()
{
  if (qword_1EB6E6E98 != -1)
  {
    swift_once();
  }

  return &static SectionSpecifier.text;
}

uint64_t static SectionSpecifier.text.getter()
{
  if (qword_1EB6E6E98 != -1)
  {
    swift_once();
  }

  v0 = static SectionSpecifier.text;
  v1 = *algn_1EB7387E8;
  v2 = byte_1EB7387F0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE964(v1, v2);
  return v0;
}

uint64_t static SectionSpecifier.headerFields(_:)()
{
  v0 = MEMORY[0x1E69E7CC0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static SectionSpecifier.headerFieldsNot(_:)()
{
  v0 = MEMORY[0x1E69E7CC0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static SectionSpecifier.Kind.< infix(_:_:)(uint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 1u)
  {
    return a4 > 1u && a3 > 2;
  }

  v6 = a4 != 2 || (a3 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  if (a1 != 2)
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 == 2;
  }

  v8 = !v7;
  if (a1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t SectionSpecifier.Part.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x1B2728D70](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t SectionSpecifier.Part.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1B2728D70](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E25598()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x1B2728D70](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B0E255EC(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  v3 = *(v2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1B2728D70](v5);
      --v3;
    }

    while (v3);
  }

  return sub_1B0E46CB8();
}

uint64_t SectionSpecifier.Kind.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1B2728D70](3);
      v4 = *(a2 + 16);
      result = MEMORY[0x1B2728D70](v4);
      if (v4)
      {
        v6 = a2 + 40;
        do
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v6 += 16;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      return MEMORY[0x1B2728D70](qword_1B0EFCD90[a2]);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    v7 = *(a2 + 16);
    result = MEMORY[0x1B2728D70](v7);
    if (v7)
    {
      v8 = a2 + 40;
      do
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t SectionSpecifier.Kind.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  SectionSpecifier.Kind.hash(into:)(v5, a1, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E257A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  SectionSpecifier.Kind.hash(into:)(v4, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E25804(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B0E46C28();
  SectionSpecifier.Kind.hash(into:)(v5, v2, v3);
  return sub_1B0E46CB8();
}

void *sub_1B0E258D8(void *result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v19[2] = sub_1B0E25FA4;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 46;
  v19[7] = 0xE100000000000000;
  result = sub_1B0DE6D58(0, sub_1B0E26644, v19, v3);
  v12 = result + v8;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return (result + v8);
  }

  v13 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result = (result + v12);
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0E25A5C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8) || *(a1 + 8) == 1)
  {
    return v3 > 1 && v2 > 2;
  }

  v6 = *a1;
  v7 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  if (v6 != 2)
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 == 2;
  }

  v9 = !v8;
  if (v6)
  {
    v9 = 1;
  }

  if (v6 <= 1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B0E25AC8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a2 + 8) && *(a2 + 8) != 1)
  {
    v7 = *a2;
    v8 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
    if (v7 != 2)
    {
      v8 = 0;
    }

    if (v2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3 == 2;
    }

    v10 = !v9;
    if (v7)
    {
      v10 = 1;
    }

    if (v7 > 1)
    {
      v10 = v8;
    }

    return v10 ^ 1u;
  }

  else
  {
    v5 = v3 > 1 && v2 > 2;
    return !v5;
  }
}

uint64_t sub_1B0E25B3C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) && *(a1 + 8) != 1)
  {
    v7 = *a1;
    v8 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
    if (v7 != 2)
    {
      v8 = 0;
    }

    if (v2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3 == 2;
    }

    v10 = !v9;
    if (v7)
    {
      v10 = 1;
    }

    if (v7 > 1)
    {
      v10 = v8;
    }

    return v10 ^ 1u;
  }

  else
  {
    v5 = v3 > 1 && v2 > 2;
    return !v5;
  }
}

uint64_t sub_1B0E25BB0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!*(a2 + 8) || *(a2 + 8) == 1)
  {
    return v3 > 1 && v2 > 2;
  }

  v6 = *a2;
  v7 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  if (v6 != 2)
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 == 2;
  }

  v9 = !v8;
  if (v6)
  {
    v9 = 1;
  }

  if (v6 <= 1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

Swift::Bool __swiftcall SectionSpecifier.Part.isSubPart(of:)(NIOIMAPCore2::SectionSpecifier::Part of)
{
  v2 = *(of.array._rawValue + 2);
  if (v2 >= *(v1 + 16))
  {
    return 0;
  }

  v3 = (v1 + 32);
  v4 = (of.array._rawValue + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    --v2;
  }

  while (v6 == v8);
  return result;
}

Swift::Bool __swiftcall SectionSpecifier.Part.isChildPart(of:)(NIOIMAPCore2::SectionSpecifier::Part of)
{
  v2 = v1[2];
  v3 = *(of.array._rawValue + 2);
  if (v2 != v3 + 1 || v3 != ((v2 - 1) & 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if (v3 && of.array._rawValue != v1)
  {
    v4 = v1 + 4;
    v5 = (of.array._rawValue + 32);
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = *v4++;
      if (v6 != v8)
      {
        break;
      }

      if (!--v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0E25CC4(uint64_t a1, unsigned __int8 a2, char a3)
{
  v6 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x2EuLL, 0xE100000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v6 = result;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v3 + 20) = v13;
  for (i = a2; !a2; i = a2)
  {
    a2 = 73;
    v15 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x462E524544414548uLL, 0xEE002053444C4549, v3 + 8, v15);
    if (v16)
    {
      v17._countAndFlagsBits = 0x462E524544414548;
      v17._object = 0xEE002053444C4549;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
    }

    v18 = *(v3 + 20);
    v12 = __CFADD__(v18, result);
    v19 = v18 + result;
    if (v12)
    {
      goto LABEL_44;
    }

    *(v3 + 20) = v19;
    v20 = v6 + result;
    if (__OFADD__(v6, result))
    {
      goto LABEL_46;
    }

    v21 = sub_1B0DC3EB0(a1);
    a1 = v20 + v21;
    if (!__OFADD__(v20, v21))
    {
      return a1;
    }

    __break(1u);
LABEL_13:
    ;
  }

  if (i != 1)
  {
    goto LABEL_22;
  }

  v22 = *(v3 + 20);
  result = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F30250, v3 + 8, v22);
  if (v23)
  {
    v24._object = 0x80000001B0F30250;
    v24._countAndFlagsBits = 0xD000000000000012;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v3 + 20);
  v12 = __CFADD__(v25, result);
  v26 = v25 + result;
  if (v12)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v3 + 20) = v26;
  v27 = v6 + result;
  if (__OFADD__(v6, result))
  {
    goto LABEL_45;
  }

  v28 = sub_1B0DC3EB0(a1);
  a1 = v27 + v28;
  if (!__OFADD__(v27, v28))
  {
    return a1;
  }

  __break(1u);
LABEL_22:
  if (a1 <= 1)
  {
    if (!a1)
    {
      return a1;
    }

    v29 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x524544414548uLL, 0xE600000000000000, v3 + 8, v29);
    if (v30)
    {
      v31._countAndFlagsBits = 0x524544414548;
      v31._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
    }

    v32 = *(v3 + 20);
    v12 = __CFADD__(v32, result);
    v33 = v32 + result;
    if (v12)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *(v3 + 20) = v33;
    a1 = v6 + result;
    if (!__OFADD__(v6, result))
    {
      return a1;
    }

    __break(1u);
  }

  if (a1 == 2)
  {
    v34 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x454D494DuLL, 0xE400000000000000, v3 + 8, v34);
    if (v35)
    {
      v36._countAndFlagsBits = 1162692941;
      v36._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v3 + 20);
    v12 = __CFADD__(v37, result);
    v38 = v37 + result;
    if (v12)
    {
      goto LABEL_48;
    }

    *(v3 + 20) = v38;
    a1 = v6 + result;
    if (!__OFADD__(v6, result))
    {
      return a1;
    }

    __break(1u);
  }

  v39 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x54584554uLL, 0xE400000000000000, v3 + 8, v39);
  if (v40)
  {
    v41._countAndFlagsBits = 1415071060;
    v41._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
  }

  v42 = *(v3 + 20);
  v12 = __CFADD__(v42, result);
  v43 = v42 + result;
  if (v12)
  {
    goto LABEL_49;
  }

  *(v3 + 20) = v43;
  a1 = v6 + result;
  if (!__OFADD__(v6, result))
  {
    return a1;
  }

LABEL_50:
  __break(1u);
  return result;
}

void *sub_1B0E25FA4(void *result, uint64_t a2)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(*result))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_1B0E469C8();
  v5 = v4;
  v6 = *(a2 + 20);
  v7 = sub_1B0CFC1B0(v3, v4, a2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v11 = *(a2 + 20);
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(a2 + 20) = v13;
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B0E26068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23F28(*a1, *a2, a2[1], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore216SectionSpecifierV4KindO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return sub_1B045202C(a1, a3);
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return sub_1B045202C(a1, a3);
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return a4 == 2 && a3 == 2;
    }

    else
    {
      return a4 == 2 && a3 == 3;
    }
  }

  else
  {
    if (!a1)
    {
      return a4 == 2 && !a3;
    }

    return a4 == 2 && a3 == 1;
  }
}

uint64_t _s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore216SectionSpecifierV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a3)
    {
      if (a3 != 1)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            if (a6 != 2 || a5 != 2)
            {
              return 0;
            }
          }

          else if (a6 != 2 || a5 != 3)
          {
            return 0;
          }
        }

        else if (a2)
        {
          if (a6 != 2 || a5 != 1)
          {
            return 0;
          }
        }

        else if (a6 != 2 || a5)
        {
          return 0;
        }

        return 1;
      }

      if (a6 == 1)
      {
        return (sub_1B045202C(a2, a5) & 1) != 0;
      }
    }

    else if (!a6)
    {
      return (sub_1B045202C(a2, a5) & 1) != 0;
    }

    return 0;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v5 = (a1 + 32);
  v6 = (a2 + 32);
  do
  {
    if (!v4)
    {
      return v2 < v3;
    }

    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    --v4;
    v10 = v7 < v9;
  }

  while (v7 == v9);
  return v10;
}

uint64_t _s12NIOIMAPCore216SectionSpecifierV1loiySbAC_ACtFZ_0(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  v6 = *(result + 16);
  v7 = *(a4 + 16);
  if (v6 == v7)
  {
    if (v6)
    {
      v8 = result == a4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
LABEL_10:
      if (a3 > 1u)
      {
        v20 = a6 != 2 || (a5 & 0xFFFFFFFFFFFFFFFDLL) != 0;
        if (a2 != 2)
        {
          v20 = 0;
        }

        if (a5)
        {
          v21 = 0;
        }

        else
        {
          v21 = a6 == 2;
        }

        v22 = !v21;
        if (a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        if (a2 <= 1)
        {
          return v23;
        }

        else
        {
          return v20;
        }
      }

      else
      {
        return a6 > 1u && a5 > 2;
      }
    }

    else
    {
      v9 = (result + 32);
      v10 = (a4 + 32);
      v11 = *(result + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_17;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_17:
    if (v7 >= v6)
    {
      v13 = *(result + 16);
    }

    else
    {
      v13 = *(a4 + 16);
    }

    v14 = (result + 32);
    v15 = (a4 + 32);
    do
    {
      if (!v13)
      {
        return v6 < v7;
      }

      v17 = *v14++;
      v16 = v17;
      v18 = *v15++;
      --v13;
      v19 = v16 < v18;
    }

    while (v16 == v18);
    return v19;
  }

  return result;
}

unint64_t sub_1B0E26408()
{
  result = qword_1EB6E7B98;
  if (!qword_1EB6E7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7B98);
  }

  return result;
}

unint64_t sub_1B0E2645C()
{
  result = qword_1EB6E7BA0;
  if (!qword_1EB6E7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BA0);
  }

  return result;
}

uint64_t sub_1B0E264F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E23F28(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B0E2654C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0E265B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0E26690(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v1 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v15;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v15);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  MEMORY[0x1EEE9AC00](result);
  v35[2] = sub_1B0E27688;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1B0DE5EE0(0, sub_1B0E28CAC, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  result = v8 + v34;
  if (!__OFADD__(v8, v34))
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t QResyncParameter.init(uidValidity:modificationSequenceValue:knownUIDs:sequenceMatchData:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for QResyncParameter(0);
  v11 = *(v10 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = *(v10 + 28);
  matched = type metadata accessor for SequenceMatchData(0);
  (*(*(matched - 8) + 56))(a5 + v13, 1, 1, matched);
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_1B0C8C870(a3, a5 + v11, &qword_1EB6E3920, &qword_1B0E9B070);
  return sub_1B0C8C870(a4, a5 + v13, &qword_1EB6E70A8, &unk_1B0EFCDB0);
}

uint64_t QResyncParameter.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1B0E46C88();
  MEMORY[0x1B2728DB0](*(v1 + 8));
  v10 = type metadata accessor for QResyncParameter(0);
  sub_1B03B5C80(v1 + *(v10 + 24), v9, &qword_1EB6E3920, &qword_1B0E9B070);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B03C60A4(v9, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0E46C68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  return sub_1B0D499AC(a1);
}

uint64_t QResyncParameter.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-1] - v6;
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728DB0](*(v0 + 8));
  v8 = type metadata accessor for QResyncParameter(0);
  sub_1B03B5C80(v0 + *(v8 + 24), v7, &qword_1EB6E3920, &qword_1B0E9B070);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B03C60A4(v7, v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0E46C68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  sub_1B0D499AC(v11);
  return sub_1B0E46CB8();
}

uint64_t SelectParameter.hash(into:)(uint64_t a1)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v27 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v30 = type metadata accessor for QResyncParameter(0);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ParameterValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for SelectParameter(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E28918(v31, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0E2897C(v20, v7, type metadata accessor for QResyncParameter);
      v22 = v32;
      MEMORY[0x1B2728D70](1);
      sub_1B0E46C88();
      MEMORY[0x1B2728DB0](*(v7 + 1));
      sub_1B03B5C80(&v7[*(v30 + 24)], v5, &qword_1EB6E3920, &qword_1B0E9B070);
      if ((*(v28 + 48))(v5, 1, v29) == 1)
      {
        sub_1B0E46C68();
      }

      else
      {
        v25 = v5;
        v26 = v27;
        sub_1B03C60A4(v25, v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0E46C68();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      sub_1B0D499AC(v22);
      return sub_1B0E289E4(v7, type metadata accessor for QResyncParameter);
    }

    else
    {
      return MEMORY[0x1B2728D70](2);
    }
  }

  else
  {
    sub_1B03C60A4(v20, v17, &qword_1EB6E6F58, &unk_1B0EF5150);
    v23 = v32;
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B03B5C80(&v17[*(v15 + 52)], v14, &qword_1EB6E6440, &unk_1B0EF3530);
    if ((*(v9 + 48))(v14, 1, v8) == 1)
    {
      sub_1B0E46C68();
    }

    else
    {
      sub_1B0E2897C(v14, v11, type metadata accessor for ParameterValue);
      sub_1B0E46C68();
      ParameterValue.hash(into:)(v23);
      sub_1B0E289E4(v11, type metadata accessor for ParameterValue);
    }

    return sub_1B0398EFC(v17, &qword_1EB6E6F58, &unk_1B0EF5150);
  }
}

uint64_t SelectParameter.hashValue.getter()
{
  sub_1B0E46C28();
  SelectParameter.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E275E4()
{
  sub_1B0E46C28();
  SelectParameter.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E27640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B0E46C28();
  a4(v6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E27688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for QResyncParameter(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SelectParameter(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E28918(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03C60A4(v12, v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    v14 = sub_1B0E3001C(v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    return v14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B0E2897C(v12, v9, type metadata accessor for QResyncParameter);
    v14 = sub_1B0E278C0(v9);
    sub_1B0E289E4(v9, type metadata accessor for QResyncParameter);
    return v14;
  }

  v16 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x524F5453444E4F43uLL, 0xE900000000000045, a2 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 0x524F5453444E4F43;
    v18._object = 0xE900000000000045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(a2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v21;
  }

  return result;
}

uint64_t sub_1B0E278C0(_DWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70A8, &unk_1B0EFCDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v83 - v5;
  matched = type metadata accessor for SequenceMatchData(0);
  v84 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v83 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v83 - v12;
  v90 = 0x20434E5953455251;
  v91 = 0xE900000000000028;
  v88 = a1;
  v89 = *a1;
  v13 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v13);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v15 = v90;
  v14 = v91;
  v16 = *(v2 + 20);
  v17 = sub_1B0CFC1B0(v90, v91, v2 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = v15;
    v19._object = v14;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v22 = *(v2 + 20);
  v23 = (v22 + v20);
  if (__CFADD__(v22, v20))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v2 + 20) = v23;
  v90 = *(v88 + 1);
  v24 = sub_1B0E469C8();
  v26 = v25;
  v27 = sub_1B0CFC1B0(v24, v25, v2 + 8, v23);
  if (v28)
  {
    v29._countAndFlagsBits = v24;
    v29._object = v26;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v23);
  }

  v30 = v27;

  v31 = *(v2 + 20);
  v32 = (v31 + v30);
  if (__CFADD__(v31, v30))
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v32;
  v33 = v20 + v30;
  if (__OFADD__(v20, v30))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v34 = type metadata accessor for QResyncParameter(0);
  sub_1B03B5C80(v88 + *(v34 + 24), v9, &qword_1EB6E3920, &qword_1B0E9B070);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1B0398EFC(v9, &qword_1EB6E3920, &qword_1B0E9B070);
    v35 = 0;
    v37 = matched;
    v36 = v87;
  }

  else
  {
    v38 = v83;
    sub_1B03C60A4(v9, v83, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v32);
    v36 = v87;
    if (v39)
    {
      v40._countAndFlagsBits = 32;
      v40._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v40, v32);
    }

    v41 = result;
    v37 = matched;
    v42 = *(v2 + 20);
    v43 = __CFADD__(v42, result);
    v44 = v42 + result;
    if (v43)
    {
      goto LABEL_47;
    }

    *(v2 + 20) = v44;
    v45 = sub_1B0E20018(v2);
    result = sub_1B0398EFC(v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v35 = v41 + v45;
    if (__OFADD__(v41, v45))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v46 = __OFADD__(v33, v35);
  v47 = v33 + v35;
  if (v46)
  {
    goto LABEL_43;
  }

  v48 = v85;
  sub_1B03B5C80(v88 + *(v34 + 28), v85, &qword_1EB6E70A8, &unk_1B0EFCDB0);
  if ((*(v84 + 48))(v48, 1, v37) == 1)
  {
    result = sub_1B0398EFC(v48, &qword_1EB6E70A8, &unk_1B0EFCDB0);
    v49 = 0;
  }

  else
  {
    sub_1B0E2897C(v48, v36, type metadata accessor for SequenceMatchData);
    v50 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v50);
    if (v51)
    {
      v52._countAndFlagsBits = 32;
      v52._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
    }

    v53 = result;
    v54 = *(v2 + 20);
    v55 = (v54 + result);
    if (__CFADD__(v54, result))
    {
      goto LABEL_49;
    }

    *(v2 + 20) = v55;
    result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v55);
    if (v56)
    {
      v57._countAndFlagsBits = 40;
      v57._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v57, v55);
    }

    v58 = result;
    v59 = *(v2 + 20);
    v43 = __CFADD__(v59, result);
    v60 = v59 + result;
    if (v43)
    {
      goto LABEL_50;
    }

    *(v2 + 20) = v60;
    result = sub_1B0E1F458(v36);
    v46 = __OFADD__(v58, result);
    v61 = v58 + result;
    if (v46)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v62 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v62);
    if (v63)
    {
      v64._countAndFlagsBits = 32;
      v64._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
    }

    v65 = *(v2 + 20);
    v43 = __CFADD__(v65, result);
    v66 = v65 + result;
    if (v43)
    {
      goto LABEL_52;
    }

    *(v2 + 20) = v66;
    v67 = v61 + result;
    if (__OFADD__(v61, result))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = sub_1B0E1F458(v36 + *(v37 + 20));
    v68 = v67 + result;
    if (__OFADD__(v67, result))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v69 = *(v2 + 20);
    v70 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v69);
    if (v71)
    {
      v72._countAndFlagsBits = 41;
      v72._object = 0xE100000000000000;
      v70 = ByteBuffer._setStringSlowpath(_:at:)(v72, v69);
    }

    v73 = v70;
    result = sub_1B0E289E4(v36, type metadata accessor for SequenceMatchData);
    v74 = *(v2 + 20);
    v43 = __CFADD__(v74, v73);
    v75 = v74 + v73;
    if (v43)
    {
      goto LABEL_55;
    }

    *(v2 + 20) = v75;
    v76 = v68 + v73;
    if (__OFADD__(v68, v73))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v46 = __OFADD__(v53, v76);
    v49 = v53 + v76;
    if (v46)
    {
LABEL_57:
      __break(1u);
      return result;
    }
  }

  v77 = v47 + v49;
  if (__OFADD__(v47, v49))
  {
    goto LABEL_44;
  }

  v78 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v78);
  if (v79)
  {
    v80._countAndFlagsBits = 41;
    v80._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v80, v78);
  }

  v81 = *(v2 + 20);
  v43 = __CFADD__(v81, result);
  v82 = v81 + result;
  if (v43)
  {
    goto LABEL_45;
  }

  *(v2 + 20) = v82;
  v46 = __OFADD__(v77, result);
  result += v77;
  if (v46)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

void _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, double a2)
{
  matched = type metadata accessor for SequenceMatchData(0);
  v50 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70A8, &unk_1B0EFCDB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7BB8, &qword_1B0EFCED0);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  if (*a1 == *v18)
  {
    v21 = *(a1 + 8);
    v22 = *(v18 + 8);
    if ((v22 | v21) < 0)
    {
      __break(1u);
      return;
    }

    if (v22 == v21)
    {
      v46 = matched;
      v47 = v9;
      v42 = v5;
      v23 = v18;
      v43 = type metadata accessor for QResyncParameter(0);
      v44 = a1;
      v24 = *(v43 + 24);
      v25 = *(v17 + 48);
      sub_1B03B5C80(a1 + v24, v20, &qword_1EB6E3920, &qword_1B0E9B070);
      v45 = v23;
      v26 = v23 + v24;
      v27 = v25;
      sub_1B03B5C80(v26, &v20[v25], &qword_1EB6E3920, &qword_1B0E9B070);
      v28 = *(v11 + 48);
      if (v28(v20, 1, v10) == 1)
      {
        if (v28(&v20[v27], 1, v10) == 1)
        {
          sub_1B0398EFC(v20, &qword_1EB6E3920, &qword_1B0E9B070);
LABEL_11:
          v33 = *(v43 + 28);
          v34 = *(v49 + 48);
          v35 = v47;
          sub_1B03B5C80(v44 + v33, v47, &qword_1EB6E70A8, &unk_1B0EFCDB0);
          sub_1B03B5C80(v45 + v33, v35 + v34, &qword_1EB6E70A8, &unk_1B0EFCDB0);
          v36 = *(v50 + 48);
          v37 = v46;
          if (v36(v35, 1, v46) == 1)
          {
            if (v36(v35 + v34, 1, v37) == 1)
            {
              sub_1B0398EFC(v35, &qword_1EB6E70A8, &unk_1B0EFCDB0);
              return;
            }
          }

          else
          {
            v38 = v48;
            sub_1B03B5C80(v35, v48, &qword_1EB6E70A8, &unk_1B0EFCDB0);
            if (v36(v35 + v34, 1, v37) != 1)
            {
              v39 = v35 + v34;
              v40 = v42;
              sub_1B0E2897C(v39, v42, type metadata accessor for SequenceMatchData);
              _s12NIOIMAPCore217SequenceMatchDataV23__derived_struct_equalsySbAC_ACtFZ_0(v38, v40);
              sub_1B0E289E4(v40, type metadata accessor for SequenceMatchData);
              sub_1B0E289E4(v38, type metadata accessor for SequenceMatchData);
              sub_1B0398EFC(v35, &qword_1EB6E70A8, &unk_1B0EFCDB0);
              return;
            }

            sub_1B0E289E4(v38, type metadata accessor for SequenceMatchData);
          }

          v29 = &qword_1EB6E7BB8;
          v30 = &qword_1B0EFCED0;
          v31 = v35;
          goto LABEL_17;
        }
      }

      else
      {
        sub_1B03B5C80(v20, v16, &qword_1EB6E3920, &qword_1B0E9B070);
        if (v28(&v20[v27], 1, v10) != 1)
        {
          sub_1B03C60A4(&v20[v27], v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B03D06F8();
          v32 = sub_1B0E46E08();
          sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0398EFC(v20, &qword_1EB6E3920, &qword_1B0E9B070);
          if ((v32 & 1) == 0)
          {
            return;
          }

          goto LABEL_11;
        }

        sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      v29 = &qword_1EB6E41F8;
      v30 = &unk_1B0EC4440;
      v31 = v20;
LABEL_17:
      sub_1B0398EFC(v31, v29, v30);
    }
  }
}

BOOL _s12NIOIMAPCore215SelectParameterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QResyncParameter(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v26 - v8);
  v10 = type metadata accessor for SelectParameter(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v26 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F68, &qword_1B0EEEB10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - v17;
  v20 = *(v19 + 56);
  sub_1B0E28918(a1, &v26 - v17);
  sub_1B0E28918(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B0E28918(v18, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B03C60A4(&v18[v20], v9, &qword_1EB6E6F58, &unk_1B0EF5150);
      v24 = sub_1B0DCA3C4(v15, v9);
      sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
      sub_1B0398EFC(v15, &qword_1EB6E6F58, &unk_1B0EF5150);
      goto LABEL_12;
    }

    sub_1B0398EFC(v15, &qword_1EB6E6F58, &unk_1B0EF5150);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B0E28918(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0E2897C(&v18[v20], v6, type metadata accessor for QResyncParameter);
      _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v22);
      v24 = v23;
      sub_1B0E289E4(v6, type metadata accessor for QResyncParameter);
      sub_1B0E289E4(v12, type metadata accessor for QResyncParameter);
LABEL_12:
      sub_1B0E289E4(v18, type metadata accessor for SelectParameter);
      return v24;
    }

    sub_1B0E289E4(v12, type metadata accessor for QResyncParameter);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_1B0398EFC(v18, &qword_1EB6E6F68, &qword_1B0EEEB10);
    return 0;
  }

  sub_1B0E289E4(v18, type metadata accessor for SelectParameter);
  return 1;
}

uint64_t sub_1B0E28918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E2897C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0E289E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0E28AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B0E28B44(uint64_t a1)
{
  sub_1B0AB44A4(319);
  if (v2 <= 0x3F)
  {
    sub_1B0E28BE0(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0E28BE0(uint64_t a1, double a2)
{
  if (!qword_1EB6DE608)
  {
    type metadata accessor for SequenceMatchData(255);
    v2 = sub_1B0E45D88();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB6DE608);
    }
  }
}

void sub_1B0E28C38(uint64_t a1)
{
  sub_1B041B648(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for QResyncParameter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0E28CAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E22D90(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SequenceMatchData.init(knownSequenceSet:knownUidSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B03C60A4(a1, a3, &qword_1EB6E3EB0, &unk_1B0EC2010);
  matched = type metadata accessor for SequenceMatchData(0);
  return sub_1B03C60A4(a2, a3 + *(matched + 20), &qword_1EB6E3EB0, &unk_1B0EC2010);
}

uint64_t type metadata accessor for SequenceMatchData(uint64_t a1)
{
  result = qword_1EB6DE610;
  if (!qword_1EB6DE610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0E28DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E28E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SequenceMatchData.knownUidSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SequenceMatchData(0) + 20);

  return sub_1B0E28DB0(v3, a1);
}

uint64_t SequenceMatchData.knownUidSet.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SequenceMatchData(0) + 20);

  return sub_1B0E28E28(a1, v3);
}

uint64_t SequenceMatchData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1B0E28DB0(v2, &v16 - v11);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    sub_1B03C60A4(v12, v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  matched = type metadata accessor for SequenceMatchData(0);
  sub_1B0E28DB0(v2 + *(matched + 20), v9);
  if (v13(v9, 1, v3) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  sub_1B03C60A4(v9, v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1B2728D70](0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  return sub_1B0398EFC(v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

uint64_t SequenceMatchData.hashValue.getter()
{
  sub_1B0E46C28();
  SequenceMatchData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2926C()
{
  sub_1B0E46C28();
  SequenceMatchData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E292B0(uint64_t a1)
{
  sub_1B0E46C28();
  SequenceMatchData.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore217SequenceMatchDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7B68, &qword_1B0EFC768);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v22 = *(v21 + 48);
  sub_1B0E28DB0(a1, &v34 - v19);
  v37 = a2;
  sub_1B0E28DB0(a2, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) != 1)
  {
    sub_1B0E28DB0(v20, v14);
    if (v23(&v20[v22], 1, v4) != 1)
    {
      v34 = a1;
      sub_1B03C60A4(&v20[v22], v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v27 = sub_1B0E46E08();
      sub_1B0398EFC(v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
      a1 = v34;
      sub_1B0398EFC(v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
      if (v27)
      {
        goto LABEL_9;
      }

      v24 = &qword_1EB6E3EB0;
      v25 = &unk_1B0EC2010;
LABEL_7:
      v26 = v20;
LABEL_16:
      sub_1B0398EFC(v26, v24, v25);
      return 0;
    }

    sub_1B0398EFC(v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
LABEL_6:
    v24 = &qword_1EB6E7B68;
    v25 = &qword_1B0EFC768;
    goto LABEL_7;
  }

  if (v23(&v20[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

LABEL_9:
  sub_1B0398EFC(v20, &qword_1EB6E3EB0, &unk_1B0EC2010);
  v28 = *(type metadata accessor for SequenceMatchData(0) + 20);
  v29 = *(v15 + 48);
  sub_1B0E28DB0(a1 + v28, v17);
  sub_1B0E28DB0(v37 + v28, &v17[v29]);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v29], 1, v4) == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v30 = v36;
  sub_1B0E28DB0(v17, v36);
  if (v23(&v17[v29], 1, v4) == 1)
  {
    sub_1B0398EFC(v30, &unk_1EB6E26C0, &unk_1B0E9DE10);
LABEL_14:
    v24 = &qword_1EB6E7B68;
    v25 = &qword_1B0EFC768;
LABEL_15:
    v26 = v17;
    goto LABEL_16;
  }

  v32 = v35;
  sub_1B03C60A4(&v17[v29], v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03D06F8();
  v33 = sub_1B0E46E08();
  sub_1B0398EFC(v32, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0398EFC(v30, &unk_1EB6E26C0, &unk_1B0E9DE10);
  if ((v33 & 1) == 0)
  {
    v24 = &qword_1EB6E3EB0;
    v25 = &unk_1B0EC2010;
    goto LABEL_15;
  }

LABEL_19:
  sub_1B0398EFC(v17, &qword_1EB6E3EB0, &unk_1B0EC2010);
  return 1;
}

unint64_t sub_1B0E297AC()
{
  result = qword_1EB6E7BC0;
  if (!qword_1EB6E7BC0)
  {
    type metadata accessor for SequenceMatchData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BC0);
  }

  return result;
}

void sub_1B0E2982C(uint64_t a1)
{
  sub_1B0D72DC8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B0E298A0(int a1)
{
  v2 = v1;
  if (a1 != -1)
  {
    v3 = sub_1B0E469C8();
    v5 = v4;
    v7 = v2[5];
    v2 += 5;
    v6 = v7;
    v8 = sub_1B0CFC1B0(v3, v4, (v2 - 3), v7);
    if (v9)
    {
      v10._countAndFlagsBits = v3;
      v10._object = v5;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v6);
    }

    v11 = v8;

    result = v11;
    v13 = *v2 + v11;
    if (!__CFADD__(*v2, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v15 = v2[5];
  v2 += 5;
  v14 = v15;
  result = sub_1B0CFC1B0(0x2AuLL, 0xE100000000000000, (v2 - 3), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 42;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v13 = *v2 + result;
  if (!__CFADD__(*v2, result))
  {
LABEL_10:
    *v2 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E299CC(uint64_t a1)
{
  sub_1B0E29B74();

  return sub_1B0E46F28();
}

uint64_t sub_1B0E29A08(uint64_t a1)
{
  sub_1B0E29B74();

  return sub_1B0E46F38();
}

uint64_t SequenceNumber.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7BC8, &qword_1B0EFCF68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E29B74();
  sub_1B0E46D48();
  sub_1B0E46988();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B0E29B74()
{
  result = qword_1EB6E7BD0;
  if (!qword_1EB6E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BD0);
  }

  return result;
}

uint64_t SequenceNumber.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

void *SequenceNumber.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7BD8, &qword_1B0EFCF70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E29B74();
  sub_1B0E46D18();
  if (!v1)
  {
    v7 = sub_1B0E46898();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1B0E29D8C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7BD8, &qword_1B0EFCF70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E29B74();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1B0E46898();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1B0E29EEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7BC8, &qword_1B0EFCF68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E29B74();
  sub_1B0E46D48();
  sub_1B0E46988();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B0E2A050()
{
  result = qword_1EB6E7BE0;
  if (!qword_1EB6E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BE0);
  }

  return result;
}

unint64_t sub_1B0E2A0A8()
{
  result = qword_1EB6E7BE8;
  if (!qword_1EB6E7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BE8);
  }

  return result;
}

unint64_t sub_1B0E2A100()
{
  result = qword_1EB6E7BF0;
  if (!qword_1EB6E7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BF0);
  }

  return result;
}

BOOL static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 62;
  if (!v6)
  {
    if (v5 >> 62)
    {
      return 0;
    }

    v30 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    v31 = v30[4];
    v32 = v30[5];
    v33 = *(v5 + 32);
    v34 = *(v5 + 40);
    v35 = v30[2] == *(v5 + 16) && v30[3] == *(v5 + 24);
    if (!v35 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    v36 = v31 == v33 && v32 == v34;
    if (!v36 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 1)
  {
    v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 112);
    v149[4] = *(v7 + 96);
    v149[5] = v10;
    v149[6] = *(v7 + 128);
    v11 = *(v7 + 144);
    v12 = *(v7 + 48);
    v149[0] = *(v7 + 32);
    v149[1] = v12;
    v13 = *(v7 + 80);
    v149[2] = *(v7 + 64);
    v149[3] = v13;
    v14 = *(v7 + 200);
    v109 = *(v7 + 184);
    v110 = v14;
    v15 = *(v7 + 168);
    v107 = *(v7 + 152);
    v108 = v15;
    v16 = *(v7 + 264);
    v17 = *(v7 + 280);
    v113 = *(v7 + 248);
    v114 = v16;
    v18 = *(v7 + 232);
    v111 = *(v7 + 216);
    v112 = v18;
    v19 = *(v7 + 312);
    v116 = *(v7 + 296);
    v117 = v19;
    v150 = v11;
    v118 = *(v7 + 328);
    v115 = v17;
    if (v5 >> 62 != 1)
    {
      return 0;
    }

    v20 = *(v7 + 336);
    memcpy(__dst, ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
    if (__PAIR128__(v9, v8) != __dst[0] && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    v151[4] = __dst[5];
    v151[5] = __dst[6];
    v151[6] = __dst[7];
    v152 = *&__dst[8];
    v151[0] = __dst[1];
    v151[1] = __dst[2];
    v151[2] = __dst[3];
    v151[3] = __dst[4];
    sub_1B0C6700C(__dst, &v94);
    if (_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v149, v151))
    {
      v102 = v115;
      v103 = v116;
      v104 = v117;
      v105 = v118;
      v98 = v111;
      v99 = v112;
      v100 = v113;
      v101 = v114;
      v94 = v107;
      v95 = v108;
      v96 = v109;
      v97 = v110;
      if (sub_1B0717014(&v94) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v22 = v21[5];
        v131 = v21[4];
        v132 = v22;
        v133 = v21[6];
        *&v134 = *(v21 + 14);
        v23 = v21[1];
        v127 = *v21;
        v128 = v23;
        v24 = v21[3];
        v129 = v21[2];
        v130 = v24;
        v90 = *(&__dst[16] + 8);
        v91 = *(&__dst[17] + 8);
        v92 = *(&__dst[18] + 8);
        v93 = BYTE8(__dst[19]);
        v86 = *(&__dst[12] + 8);
        v87 = *(&__dst[13] + 8);
        v88 = *(&__dst[14] + 8);
        v89 = *(&__dst[15] + 8);
        v82 = *(&__dst[8] + 8);
        v83 = *(&__dst[9] + 8);
        v84 = *(&__dst[10] + 8);
        v85 = *(&__dst[11] + 8);
        if (sub_1B0717014(&v82) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v26 = v25[5];
          v142 = v25[4];
          v143 = v26;
          v144 = v25[6];
          *&v145 = *(v25 + 14);
          v27 = v25[1];
          v138 = *v25;
          v139 = v27;
          v28 = v25[3];
          v140 = v25[2];
          v141 = v28;
          v29 = _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v127, &v138);
LABEL_46:
          v81 = v29;
          sub_1B0C67068(__dst);
          if ((v81 & 1) == 0 || v20 != *&__dst[20])
          {
            return 0;
          }

          goto LABEL_31;
        }
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v61 = v60[9];
        v135 = v60[8];
        v136 = v61;
        v137 = v60[10];
        v62 = v60[5];
        v131 = v60[4];
        v132 = v62;
        v63 = v60[6];
        v134 = v60[7];
        v133 = v63;
        v64 = v60[1];
        v127 = *v60;
        v128 = v64;
        v65 = v60[2];
        v130 = v60[3];
        v129 = v65;
        v93 = BYTE8(__dst[19]);
        v91 = *(&__dst[17] + 8);
        v92 = *(&__dst[18] + 8);
        v89 = *(&__dst[15] + 8);
        v90 = *(&__dst[16] + 8);
        v87 = *(&__dst[13] + 8);
        v88 = *(&__dst[14] + 8);
        v85 = *(&__dst[11] + 8);
        v86 = *(&__dst[12] + 8);
        v83 = *(&__dst[9] + 8);
        v84 = *(&__dst[10] + 8);
        v82 = *(&__dst[8] + 8);
        if (sub_1B0717014(&v82) != 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v76 = v75[9];
          v146 = v75[8];
          v147 = v76;
          v148 = v75[10];
          v77 = v75[5];
          v142 = v75[4];
          v143 = v77;
          v78 = v75[6];
          v145 = v75[7];
          v144 = v78;
          v79 = v75[1];
          v138 = *v75;
          v139 = v79;
          v80 = v75[2];
          v141 = v75[3];
          v140 = v80;
          v29 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v127, &v138);
          goto LABEL_46;
        }
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    }

    sub_1B0C67068(__dst);
    return 0;
  }

  if (v5 >> 62 != 2)
  {
    return 0;
  }

  v37 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v38 = v37[4];
  v39 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
  v40 = v39[4];
  if (v37[2] == v39[2] && v37[3] == v39[3])
  {
    if (v38 != v40)
    {
      return 0;
    }

    goto LABEL_31;
  }

  v42 = 0;
  if ((sub_1B0E46A78() & 1) != 0 && v38 == v40)
  {
LABEL_31:
    v43 = *(a1 + 3);
    v44 = *(a1 + 7);
    v126[2] = *(a1 + 5);
    v126[3] = v44;
    v126[4] = *(a1 + 9);
    v45 = *(a1 + 1);
    v126[1] = v43;
    v126[0] = v45;
    v46 = *(a2 + 24);
    v47 = *(a2 + 56);
    v125[2] = *(a2 + 40);
    v125[3] = v47;
    v125[4] = *(a2 + 72);
    v48 = *(a2 + 8);
    v125[1] = v46;
    v125[0] = v48;
    if (_s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(v126, v125))
    {
      v49 = *(a1 + 17);
      v109 = *(a1 + 15);
      v110 = v49;
      v111 = *(a1 + 19);
      *&v112 = a1[21];
      v50 = *(a1 + 13);
      v107 = *(a1 + 11);
      v108 = v50;
      v51 = *(a2 + 136);
      v84 = *(a2 + 120);
      v85 = v51;
      v86 = *(a2 + 152);
      *&v87 = *(a2 + 168);
      v52 = *(a2 + 104);
      v82 = *(a2 + 88);
      v83 = v52;
      v53 = v107;
      if (*(&v107 + 1) == 1)
      {
        if (*(&v82 + 1) == 1)
        {
          v42 = 1;
          *&__dst[0] = v107;
          *(&__dst[0] + 1) = 1;
          v54 = *(a1 + 15);
          v55 = *(a1 + 19);
          __dst[3] = *(a1 + 17);
          __dst[4] = v55;
          *&__dst[5] = a1[21];
          __dst[1] = *(a1 + 13);
          __dst[2] = v54;
          sub_1B03B5C80(&v107, &v94, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(&v82, &v94, &qword_1EB6E6F98, &qword_1B0EEEB40);
          v56 = __dst;
LABEL_40:
          sub_1B0398EFC(v56, &qword_1EB6E6F98, &qword_1B0EEEB40);
          return v42;
        }
      }

      else if (*(&v82 + 1) != 1)
      {
        v119[0] = v82;
        v66 = *(a2 + 120);
        v67 = *(a2 + 152);
        v120 = *(a2 + 136);
        v121 = v67;
        v122 = *(a2 + 168);
        v68 = *(a2 + 104);
        v119[2] = v66;
        v119[1] = v68;
        *&__dst[5] = v122;
        __dst[3] = v120;
        __dst[4] = v67;
        __dst[1] = v68;
        __dst[2] = v66;
        __dst[0] = v82;
        v69 = *(a1 + 13);
        *&v99 = a1[21];
        v70 = *(a1 + 19);
        v97 = *(a1 + 17);
        v98 = v70;
        v71 = *(a1 + 15);
        v95 = v69;
        v96 = v71;
        v94 = v107;
        sub_1B03B5C80(&v107, v123, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(&v82, v123, &qword_1EB6E6F98, &qword_1B0EEEB40);
        v42 = _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(&v94, __dst);
        sub_1B0398EFC(v119, &qword_1EB6E6F98, &qword_1B0EEEB40);
        v123[0] = v53;
        v72 = *(a1 + 15);
        v73 = *(a1 + 19);
        v123[3] = *(a1 + 17);
        v123[4] = v73;
        v124 = a1[21];
        v123[1] = *(a1 + 13);
        v123[2] = v72;
        v56 = v123;
        goto LABEL_40;
      }

      __dst[0] = v107;
      v57 = *(a1 + 15);
      v58 = *(a1 + 19);
      __dst[3] = *(a1 + 17);
      __dst[4] = v58;
      v59 = a1[21];
      __dst[1] = *(a1 + 13);
      __dst[2] = v57;
      *&__dst[5] = v59;
      *(&__dst[5] + 8) = v82;
      *(&__dst[10] + 1) = *(a2 + 168);
      *(&__dst[9] + 8) = *(a2 + 152);
      *(&__dst[8] + 8) = *(a2 + 136);
      *(&__dst[7] + 8) = *(a2 + 120);
      *(&__dst[6] + 8) = *(a2 + 104);
      sub_1B03B5C80(&v107, &v94, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(&v82, &v94, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0398EFC(__dst, &qword_1EB6E6FA0, &qword_1B0EEEB48);
    }

    return 0;
  }

  return v42;
}

uint64_t sub_1B0E2A8C4(uint64_t a1)
{
  v2 = v1;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      memcpy(__dst, ((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      v5 = *(a1 + 24);
      v6 = *(a1 + 56);
      v46[2] = *(a1 + 40);
      v46[3] = v6;
      v46[4] = *(a1 + 72);
      v46[0] = *(a1 + 8);
      v46[1] = v5;
      sub_1B0C6700C(__dst, v39);
      sub_1B0E2C7EC(__dst, v46);
      v8 = v7;
      sub_1B0C67068(__dst);
      goto LABEL_7;
    }

    v15 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v18 = *(a1 + 24);
    v19 = *(a1 + 56);
    __dst[2] = *(a1 + 40);
    __dst[3] = v19;
    __dst[4] = *(a1 + 72);
    __dst[0] = *(a1 + 8);
    __dst[1] = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E2CB04(v15, v16, v17, __dst);
    v8 = v20;
  }

  else
  {
    v9 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v11 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v12 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v13 = *(a1 + 24);
    v14 = *(a1 + 56);
    __dst[2] = *(a1 + 40);
    __dst[3] = v14;
    __dst[4] = *(a1 + 72);
    __dst[0] = *(a1 + 8);
    __dst[1] = v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B0E2C6C0(v9, v10, v11, v12, __dst);
  }

LABEL_7:
  v21 = *(a1 + 88);
  v22 = *(a1 + 136);
  v44[2] = *(a1 + 120);
  v44[3] = v22;
  v44[4] = *(a1 + 152);
  v45 = *(a1 + 168);
  v23 = *(a1 + 104);
  v44[0] = v21;
  v44[1] = v23;
  if (*(&v21 + 1) == 1)
  {
    return v8;
  }

  v39[0] = v44[0];
  v24 = *(a1 + 120);
  v25 = *(a1 + 152);
  v39[3] = *(a1 + 136);
  v39[4] = v25;
  v40 = *(a1 + 168);
  v26 = *(a1 + 104);
  v39[2] = v24;
  v39[1] = v26;
  v27 = *(v2 + 20);
  v28 = *(a1 + 136);
  v42[2] = *(a1 + 120);
  v42[3] = v28;
  v42[4] = *(a1 + 152);
  v43 = *(a1 + 168);
  v29 = *(a1 + 104);
  v42[0] = *(a1 + 88);
  v42[1] = v29;
  sub_1B0D98E14(v42, v41);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v27);
  if (v31)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v27);
  }

  v33 = *(v2 + 20);
  v34 = __CFADD__(v33, result);
  v35 = v33 + result;
  if (v34)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v35;
  v36 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1B0E2CCD8(v39);
  v38 = v37;
  result = sub_1B0398EFC(v44, &qword_1EB6E6F98, &qword_1B0EEEB40);
  v8 = v36 + v38;
  if (!__OFADD__(v36, v38))
  {
    return v8;
  }

LABEL_16:
  __break(1u);
  return result;
}

double BodyStructure.Singlepart.Extension.init(digest:dispositionAndLanguage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = xmmword_1B0EA4610;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  *&v9 = a1;
  *(&v9 + 1) = a2;
  sub_1B0C8C870(a3, &v10, &qword_1EB6E6F88, &qword_1B0EEEB30);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v15 = v9;
  v16 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  sub_1B0D98E14(&v15, &v8);
  sub_1B0D98E70(v21);
  v5 = v18;
  *(a4 + 32) = v17;
  *(a4 + 48) = v5;
  *(a4 + 64) = v19;
  *(a4 + 80) = v20;
  result = *&v15;
  v7 = v16;
  *a4 = v15;
  *(a4 + 16) = v7;
  return result;
}

__n128 BodyStructure.Singlepart.init(kind:fields:extension:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v13[88] = xmmword_1B0EA4610;
  memset(&v13[104], 0, 72);
  v5 = *a2;
  *&v13[24] = a2[1];
  v6 = a2[3];
  *&v13[40] = a2[2];
  *&v13[56] = v6;
  *&v13[72] = a2[4];
  *v13 = a1;
  *&v13[8] = v5;
  sub_1B0C8C870(a3, &v13[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
  v22 = *&v13[128];
  v23 = *&v13[144];
  v24 = *&v13[160];
  v18 = *&v13[64];
  v19 = *&v13[80];
  v20 = *&v13[96];
  v21 = *&v13[112];
  v14 = *v13;
  v15 = *&v13[16];
  v16 = *&v13[32];
  v17 = *&v13[48];
  v25[8] = *&v13[128];
  v25[9] = *&v13[144];
  v25[10] = *&v13[160];
  v25[4] = *&v13[64];
  v25[5] = *&v13[80];
  v25[6] = *&v13[96];
  v25[7] = *&v13[112];
  v25[0] = *v13;
  v25[1] = *&v13[16];
  v25[2] = *&v13[32];
  v25[3] = *&v13[48];
  sub_1B07AD43C(&v14, v12);
  sub_1B071728C(v25);
  v7 = v23;
  *(a4 + 128) = v22;
  *(a4 + 144) = v7;
  *(a4 + 160) = v24;
  v8 = v19;
  *(a4 + 64) = v18;
  *(a4 + 80) = v8;
  v9 = v21;
  *(a4 + 96) = v20;
  *(a4 + 112) = v9;
  v10 = v15;
  *a4 = v14;
  *(a4 + 16) = v10;
  result = v17;
  *(a4 + 32) = v16;
  *(a4 + 48) = result;
  return result;
}

__n128 BodyStructure.Singlepart.Message.init(message:envelope:body:lineCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4[10];
  *(a6 + 280) = a4[9];
  *(a6 + 296) = v6;
  *(a6 + 264) = a4[8];
  v7 = *(a3 + 80);
  *(a6 + 80) = *(a3 + 64);
  *(a6 + 96) = v7;
  *(a6 + 112) = *(a3 + 96);
  v8 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v8;
  v9 = *(a3 + 48);
  *(a6 + 48) = *(a3 + 32);
  *(a6 + 64) = v9;
  v10 = a4[6];
  *(a6 + 248) = a4[7];
  *(a6 + 232) = v10;
  v11 = a4[4];
  *(a6 + 216) = a4[5];
  *(a6 + 200) = v11;
  v12 = a4[2];
  *(a6 + 184) = a4[3];
  *(a6 + 168) = v12;
  v14 = *a4;
  result = a4[1];
  *(a6 + 152) = result;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 128) = *(a3 + 112);
  *(a6 + 312) = *(a4 + 176);
  *(a6 + 136) = v14;
  *(a6 + 320) = a5;
  return result;
}

uint64_t BodyStructure.Singlepart.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BodyStructure.Singlepart.kind.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BodyStructure.Singlepart.hash(into:)(uint64_t a1)
{
  BodyStructure.Singlepart.Kind.hash(into:)(a1, *v1);
  BodyStructure.Fields.hash(into:)(a1);
  v3 = v1[12];
  if (v3 == 1)
  {
    return sub_1B0E46C68();
  }

  v4 = v1[14];
  v5 = v1[16];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[21];
  v17 = v1[20];
  v18 = v1[17];
  sub_1B0E46C68();
  if (v3)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v4 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v4 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  sub_1B0E46C68();
  if (!v4)
  {
    sub_1B0E46C68();
    goto LABEL_13;
  }

  v14 = v8;
  v15 = v7;
  v16 = v6;
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v10 = *(v18 + 16);
  MEMORY[0x1B2728D70](v10);

  if (!v10)
  {
LABEL_11:

    v7 = v15;
    v6 = v16;
    v8 = v14;
LABEL_13:

    return sub_1B0D4A030(a1, v6, v7, v17, v8);
  }

  v11 = 0;
  v12 = v18 + 40;
  v13 = v5 + 40;
  while (v11 < *(v5 + 16))
  {
    ++v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v12 += 16;
    v13 += 16;
    if (v10 == v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.Singlepart.hashValue.getter()
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2B18C()
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2B1D0(uint64_t a1)
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL static BodyStructure.Singlepart.Message.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_1B0E46A78()) && (v5 = *(a1 + 6), v31[4] = *(a1 + 5), v31[5] = v5, v31[6] = *(a1 + 7), v32 = a1[16], v6 = *(a1 + 2), v31[0] = *(a1 + 1), v31[1] = v6, v7 = *(a1 + 4), v31[2] = *(a1 + 3), v31[3] = v7, v8 = *(a2 + 16), v9 = *(a2 + 32), v10 = *(a2 + 64), v29[2] = *(a2 + 48), v29[3] = v10, v29[0] = v8, v29[1] = v9, v11 = *(a2 + 80), v12 = *(a2 + 96), v13 = *(a2 + 112), v30 = *(a2 + 128), v29[5] = v12, v29[6] = v13, v29[4] = v11, _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v29)) && (v28 = *(a1 + 312), v14 = *(a1 + 27), v27[4] = *(a1 + 25), v27[5] = v14, v15 = *(a1 + 31), v27[6] = *(a1 + 29), v27[7] = v15, v16 = *(a1 + 19), v27[0] = *(a1 + 17), v27[1] = v16, v17 = *(a1 + 23), v27[2] = *(a1 + 21), v27[3] = v17, v18 = *(a1 + 35), v27[8] = *(a1 + 33), v27[9] = v18, v27[10] = *(a1 + 37), v19 = *(a2 + 280), v25[8] = *(a2 + 264), v25[9] = v19, v25[10] = *(a2 + 296), v26 = *(a2 + 312), v20 = *(a2 + 216), v25[4] = *(a2 + 200), v25[5] = v20, v21 = *(a2 + 248), v25[6] = *(a2 + 232), v25[7] = v21, v22 = *(a2 + 152), v25[0] = *(a2 + 136), v25[1] = v22, v23 = *(a2 + 184), v25[2] = *(a2 + 168), v25[3] = v23, _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v27, v25)))
  {
    return a1[40] == *(a2 + 320);
  }

  else
  {
    return 0;
  }
}

BOOL static BodyStructure.Singlepart.Text.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1B0E46A78();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t BodyStructure.Singlepart.Kind.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      memcpy(__dst, ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      MEMORY[0x1B2728D70](1);
      sub_1B0C6700C(__dst, v16);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v29 = *&__dst[10];
      v30 = *&__dst[12];
      v31 = *&__dst[14];
      v32 = __dst[16];
      v25 = *&__dst[2];
      v26 = *&__dst[4];
      v27 = *&__dst[6];
      v28 = *&__dst[8];
      Envelope.hash(into:)(a1);
      v16[8] = *&__dst[33];
      v16[9] = *&__dst[35];
      v16[10] = *&__dst[37];
      v17 = __dst[39];
      v16[4] = *&__dst[25];
      v16[5] = *&__dst[27];
      v16[6] = *&__dst[29];
      v16[7] = *&__dst[31];
      v16[0] = *&__dst[17];
      v16[1] = *&__dst[19];
      v16[2] = *&__dst[21];
      v16[3] = *&__dst[23];
      if (sub_1B0717014(v16) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v4 = v3;
        MEMORY[0x1B2728D70](1);
        sub_1B0D48CF0(a1, *v4);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v5 = *(v4 + 72);
        v21 = *(v4 + 56);
        v22 = v5;
        v6 = *(v4 + 104);
        v23 = *(v4 + 88);
        v24 = v6;
        v7 = *(v4 + 40);
        v19 = *(v4 + 24);
        v20 = v7;
        sub_1B0D49DD8(a1);
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v11 = v10;
        MEMORY[0x1B2728D70](0);
        BodyStructure.Singlepart.Kind.hash(into:)(a1, *v11);
        v12 = *(v11 + 24);
        v13 = *(v11 + 56);
        *&__dst[45] = *(v11 + 40);
        *&__dst[47] = v13;
        *&__dst[49] = *(v11 + 72);
        *&__dst[41] = *(v11 + 8);
        *&__dst[43] = v12;
        BodyStructure.Fields.hash(into:)(a1);
        v14 = *(v11 + 136);
        v21 = *(v11 + 120);
        v22 = v14;
        v23 = *(v11 + 152);
        *&v24 = *(v11 + 168);
        v15 = *(v11 + 104);
        v19 = *(v11 + 88);
        v20 = v15;
        sub_1B0D4A1BC(a1);
      }

      MEMORY[0x1B2728D70](__dst[40]);
      return sub_1B0C67068(__dst);
    }

    v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x1B2728D70](2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    MEMORY[0x1B2728D70](v8);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

uint64_t BodyStructure.Singlepart.Kind.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.Kind.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2B704()
{
  v1 = *v0;
  sub_1B0E46C28();
  BodyStructure.Singlepart.Kind.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2B754(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  BodyStructure.Singlepart.Kind.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t BodyStructure.Singlepart.Message.message.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Singlepart.Message.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BodyStructure.Singlepart.Message.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Envelope.hash(into:)(a1);
  v3 = *(v1 + 280);
  v13[8] = *(v1 + 264);
  v13[9] = v3;
  v13[10] = *(v1 + 296);
  v14 = *(v1 + 312);
  v4 = *(v1 + 216);
  v13[4] = *(v1 + 200);
  v13[5] = v4;
  v5 = *(v1 + 248);
  v13[6] = *(v1 + 232);
  v13[7] = v5;
  v6 = *(v1 + 152);
  v13[0] = *(v1 + 136);
  v13[1] = v6;
  v7 = *(v1 + 184);
  v13[2] = *(v1 + 168);
  v13[3] = v7;
  if (sub_1B0717014(v13) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v9 = *v8;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v11 = *v10;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v11);
    BodyStructure.Fields.hash(into:)(a1);
    sub_1B0D4A1BC(a1);
  }

  return MEMORY[0x1B2728D70](*(v1 + 320));
}

uint64_t BodyStructure.Singlepart.Message.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v1 = *(v0 + 96);
  v28 = *(v0 + 80);
  v29 = v1;
  v30 = *(v0 + 112);
  v31 = *(v0 + 128);
  v2 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = v2;
  v3 = *(v0 + 64);
  v26 = *(v0 + 48);
  v27 = v3;
  Envelope.hash(into:)(v23);
  v4 = *(v0 + 280);
  v43[8] = *(v0 + 264);
  v43[9] = v4;
  v43[10] = *(v0 + 296);
  v44 = *(v0 + 312);
  v5 = *(v0 + 216);
  v43[4] = *(v0 + 200);
  v43[5] = v5;
  v6 = *(v0 + 248);
  v43[6] = *(v0 + 232);
  v43[7] = v6;
  v7 = *(v0 + 152);
  v43[0] = *(v0 + 136);
  v43[1] = v7;
  v8 = *(v0 + 184);
  v43[2] = *(v0 + 168);
  v43[3] = v8;
  if (sub_1B0717014(v43) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v10 = *v9;
    v11 = *(v9 + 72);
    v39 = *(v9 + 56);
    v40 = v11;
    v12 = *(v9 + 104);
    v41 = *(v9 + 88);
    v42 = v12;
    v13 = *(v9 + 40);
    v37 = *(v9 + 24);
    v38 = v13;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(v23, v10);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D49DD8(v23);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v15 = *v14;
    v16 = *(v14 + 24);
    v17 = *(v14 + 56);
    v34 = *(v14 + 40);
    v35 = v17;
    v18 = *(v14 + 72);
    v32 = *(v14 + 8);
    v33 = v16;
    v19 = *(v14 + 120);
    v20 = *(v14 + 152);
    v40 = *(v14 + 136);
    v41 = v20;
    *&v42 = *(v14 + 168);
    v21 = *(v14 + 88);
    v36 = v18;
    v37 = v21;
    v38 = *(v14 + 104);
    v39 = v19;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(v23, v15);
    BodyStructure.Fields.hash(into:)(v23);
    sub_1B0D4A1BC(v23);
  }

  MEMORY[0x1B2728D70](*(v0 + 320));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2BC8C(uint64_t a1)
{
  v3 = *(v1 + 320);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Envelope.hash(into:)(a1);
  v4 = *(v1 + 280);
  v14[8] = *(v1 + 264);
  v14[9] = v4;
  v14[10] = *(v1 + 296);
  v15 = *(v1 + 312);
  v5 = *(v1 + 216);
  v14[4] = *(v1 + 200);
  v14[5] = v5;
  v6 = *(v1 + 248);
  v14[6] = *(v1 + 232);
  v14[7] = v6;
  v7 = *(v1 + 152);
  v14[0] = *(v1 + 136);
  v14[1] = v7;
  v8 = *(v1 + 184);
  v14[2] = *(v1 + 168);
  v14[3] = v8;
  if (sub_1B0717014(v14) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v10 = v9;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, *v10);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v12 = v11;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v12);
    BodyStructure.Fields.hash(into:)(a1);
    sub_1B0D4A1BC(a1);
  }

  return MEMORY[0x1B2728D70](v3);
}

uint64_t sub_1B0E2BE58(uint64_t a1)
{
  v2 = *(v1 + 96);
  v39 = *(v1 + 80);
  v40 = v2;
  v41 = *(v1 + 112);
  v42 = *(v1 + 128);
  v3 = *(v1 + 32);
  v35 = *(v1 + 16);
  v36 = v3;
  v4 = *(v1 + 64);
  v37 = *(v1 + 48);
  v38 = v4;
  v5 = *(v1 + 320);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Envelope.hash(into:)(v23);
  v6 = *(v1 + 280);
  v43[8] = *(v1 + 264);
  v43[9] = v6;
  v43[10] = *(v1 + 296);
  v44 = *(v1 + 312);
  v7 = *(v1 + 216);
  v43[4] = *(v1 + 200);
  v43[5] = v7;
  v8 = *(v1 + 248);
  v43[6] = *(v1 + 232);
  v43[7] = v8;
  v9 = *(v1 + 152);
  v43[0] = *(v1 + 136);
  v43[1] = v9;
  v10 = *(v1 + 184);
  v43[2] = *(v1 + 168);
  v43[3] = v10;
  if (sub_1B0717014(v43) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v12 = v11;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(v23, *v12);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v13 = *(v12 + 72);
    v31 = *(v12 + 56);
    v32 = v13;
    v14 = *(v12 + 104);
    v33 = *(v12 + 88);
    v34 = v14;
    v15 = *(v12 + 40);
    v29 = *(v12 + 24);
    v30 = v15;
    sub_1B0D49DD8(v23);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v17 = v16;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(v23, *v17);
    v18 = *(v17 + 24);
    v19 = *(v17 + 56);
    v26 = *(v17 + 40);
    v27 = v19;
    v28 = *(v17 + 72);
    v24 = *(v17 + 8);
    v25 = v18;
    BodyStructure.Fields.hash(into:)(v23);
    v20 = *(v17 + 136);
    v31 = *(v17 + 120);
    v32 = v20;
    v33 = *(v17 + 152);
    *&v34 = *(v17 + 168);
    v21 = *(v17 + 104);
    v29 = *(v17 + 88);
    v30 = v21;
    sub_1B0D4A1BC(v23);
  }

  MEMORY[0x1B2728D70](v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2C04C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 6);
  v31[4] = *(a1 + 5);
  v31[5] = v6;
  v31[6] = *(a1 + 7);
  v32 = a1[16];
  v7 = *(a1 + 2);
  v31[0] = *(a1 + 1);
  v31[1] = v7;
  v8 = *(a1 + 4);
  v31[2] = *(a1 + 3);
  v31[3] = v8;
  v9 = *(a1 + 23);
  v27[2] = *(a1 + 21);
  v27[3] = v9;
  v10 = *(a1 + 19);
  v27[0] = *(a1 + 17);
  v27[1] = v10;
  v11 = *(a1 + 31);
  v27[6] = *(a1 + 29);
  v27[7] = v11;
  v12 = *(a1 + 27);
  v27[4] = *(a1 + 25);
  v27[5] = v12;
  v28 = *(a1 + 312);
  v13 = *(a1 + 37);
  v27[9] = *(a1 + 35);
  v27[10] = v13;
  v27[8] = *(a1 + 33);
  v14 = a1[40];
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 6);
  v33[4] = *(a2 + 5);
  v33[5] = v17;
  v33[6] = *(a2 + 7);
  v34 = a2[16];
  v18 = *(a2 + 2);
  v33[0] = *(a2 + 1);
  v33[1] = v18;
  v19 = *(a2 + 4);
  v33[2] = *(a2 + 3);
  v33[3] = v19;
  v20 = *(a2 + 23);
  v29[2] = *(a2 + 21);
  v29[3] = v20;
  v21 = *(a2 + 19);
  v29[0] = *(a2 + 17);
  v29[1] = v21;
  v22 = *(a2 + 31);
  v29[6] = *(a2 + 29);
  v29[7] = v22;
  v23 = *(a2 + 27);
  v29[4] = *(a2 + 25);
  v29[5] = v23;
  v30 = *(a2 + 312);
  v24 = *(a2 + 37);
  v29[9] = *(a2 + 35);
  v29[10] = v24;
  v29[8] = *(a2 + 33);
  v25 = a2[40];
  if (v4 == v15 && v5 == v16 || (sub_1B0E46A78()) && _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v33))
  {
    return _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v27, v29) & (v14 == v25);
  }

  else
  {
    return 0;
  }
}

uint64_t BodyStructure.Singlepart.Text.mediaSubtype.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BodyStructure.Singlepart.Text.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

uint64_t BodyStructure.Singlepart.Extension.digest.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Singlepart.Extension.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  v4 = v2[3];
  if (v4 == 1)
  {
    return sub_1B0E46C68();
  }

  v6 = v2[6];
  v18 = v2[5];
  v7 = v2[7];
  v8 = v2[8];
  v10 = v2[9];
  v9 = v2[10];
  sub_1B0E46C68();
  if (!v4)
  {
    sub_1B0E46C68();
    goto LABEL_13;
  }

  v15 = v9;
  v16 = v10;
  v17 = v8;
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v11 = *(v6 + 16);
  MEMORY[0x1B2728D70](v11);

  if (!v11)
  {
LABEL_11:

    v8 = v17;
    v9 = v15;
    v10 = v16;
LABEL_13:

    return sub_1B0D4A030(a1, v7, v8, v10, v9);
  }

  v12 = 0;
  v13 = v6 + 40;
  v14 = v18 + 40;
  while (v12 < *(v18 + 16))
  {
    ++v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v13 += 16;
    v14 += 16;
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.Singlepart.Extension.hashValue.getter()
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.Extension.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2C5D4()
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.Extension.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2C618(uint64_t a1)
{
  sub_1B0E46C28();
  BodyStructure.Singlepart.Extension.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0E2C654(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9);
}

uint64_t sub_1B0E2C6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_1B0DDD890(a1, a2);
  v10 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = *(v5 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v5 + 20) = v16;
  v17 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B0DDD958(a3, a4);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v5 + 20);
  v15 = __CFADD__(v23, result);
  v24 = v23 + result;
  if (v15)
  {
    goto LABEL_15;
  }

  *(v5 + 20) = v24;
  v25 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B0D8A738(a5);
  v17 = __OFADD__(v25, v26);
  result = v25 + v26;
  if (v17)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_1B0E2C7EC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  v7 = sub_1B0CFC1B0(0x4547415353454D22uLL, 0xEA00000000002022, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x4547415353454D22;
    v9._object = 0xEA00000000002022;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;
  v11 = *(v2 + 20);
  v12 = __CFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  *(v2 + 20) = v13;
  v14 = sub_1B0DDD958(*a1, *(a1 + 8));
  v15 = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = *(v2 + 20);
  v17 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = *(v2 + 20);
  v12 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v12)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v21;
  v22 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1B0D8A738(a2);
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = *(v2 + 20);
  v27 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v26);
  if (v28)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v26);
  }

  v30 = *(v2 + 20);
  v12 = __CFADD__(v30, v27);
  v31 = v30 + v27;
  if (v12)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v31;
  v32 = v25 + v27;
  if (__OFADD__(v25, v27))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = *(a1 + 96);
  v62[4] = *(a1 + 80);
  v62[5] = v33;
  v62[6] = *(a1 + 112);
  v63 = *(a1 + 128);
  v34 = *(a1 + 32);
  v62[0] = *(a1 + 16);
  v62[1] = v34;
  v35 = *(a1 + 64);
  v62[2] = *(a1 + 48);
  v62[3] = v35;
  sub_1B0D81260(v62);
  v37 = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v38 = *(v2 + 20);
  v39 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v38);
  if (v40)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
  }

  v42 = *(v2 + 20);
  v12 = __CFADD__(v42, v39);
  v43 = v42 + v39;
  if (v12)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v43;
  v44 = v37 + v39;
  if (__OFADD__(v37, v39))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v61 = *(a1 + 312);
  v45 = *(a1 + 216);
  v60[4] = *(a1 + 200);
  v60[5] = v45;
  v46 = *(a1 + 248);
  v60[6] = *(a1 + 232);
  v60[7] = v46;
  v47 = *(a1 + 152);
  v60[0] = *(a1 + 136);
  v60[1] = v47;
  v48 = *(a1 + 184);
  v60[2] = *(a1 + 168);
  v60[3] = v48;
  v49 = *(a1 + 280);
  v60[8] = *(a1 + 264);
  v60[9] = v49;
  v60[10] = *(a1 + 296);
  v50 = sub_1B0D43F08(v60);
  v51 = v44 + v50;
  if (__OFADD__(v44, v50))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v52 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v52);

  v53 = *(v2 + 20);
  v54 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v53);
  if (v55)
  {
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    v54 = ByteBuffer._setStringSlowpath(_:at:)(v56, v53);
  }

  v57 = v54;

  v58 = *(v3 + 20);
  v12 = __CFADD__(v58, v57);
  v59 = v58 + v57;
  if (v12)
  {
    goto LABEL_36;
  }

  *(v3 + 20) = v59;
  if (__OFADD__(v51, v57))
  {
LABEL_37:
    __break(1u);
  }
}

void sub_1B0E2CB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v9 = *(v4 + 20);
  v10 = sub_1B0CFC1B0(0x20225458455422uLL, 0xE700000000000000, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x20225458455422;
    v12._object = 0xE700000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, v10);
  v16 = v14 + v10;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v4 + 20) = v16;
  v17 = sub_1B0DDD958(a1, a2);
  v18 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v4 + 20);
  v20 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v4 + 20);
  v15 = __CFADD__(v23, v20);
  v24 = v23 + v20;
  if (v15)
  {
    goto LABEL_17;
  }

  *(v4 + 20) = v24;
  v25 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1B0D8A738(a4);
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v28);

  v29 = *(v4 + 20);
  v30 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v29);
  if (v31)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
  }

  v33 = v30;

  v34 = *(v5 + 20);
  v15 = __CFADD__(v34, v33);
  v35 = v34 + v33;
  if (v15)
  {
    goto LABEL_20;
  }

  *(v5 + 20) = v35;
  if (__OFADD__(v27, v33))
  {
LABEL_21:
    __break(1u);
  }
}

void sub_1B0E2CCD8(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1B0DD55E0(*a1, v3);
    v5 = v4;
  }

  else
  {
    v6 = *(v1 + 20);
    v7 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v6);
    if (v8)
    {
      v9._countAndFlagsBits = 4999502;
      v9._object = 0xE300000000000000;
      v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v5 = v7;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, v7);
    v12 = v10 + v7;
    if (v11)
    {
      goto LABEL_18;
    }

    *(v1 + 20) = v12;
  }

  if (*(a1 + 24) == 1)
  {
    v13 = 0;
  }

  else
  {
    v24 = *(a1 + 24);
    v14 = *(a1 + 16);
    v23 = *(a1 + 40);
    v15 = *(v1 + 20);
    v16 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v15);
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = v16;
    v20 = *(v1 + 20);
    v11 = __CFADD__(v20, v16);
    v21 = v20 + v16;
    if (v11)
    {
      goto LABEL_16;
    }

    *(v1 + 20) = v21;
    v25 = v14;
    v26 = v24;
    v27 = v23;
    sub_1B0D7A960(&v25);
    v13 = v19 + v22;
    if (__OFADD__(v19, v22))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v5, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      if (*a1 == *a2 && v2 == v3)
      {
        goto LABEL_8;
      }

      v5 = a1;
      v6 = a2;
      v7 = sub_1B0E46A78();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

LABEL_8:
  v9 = *(a1 + 64);
  v45[2] = *(a1 + 48);
  v45[3] = v9;
  v46 = *(a1 + 80);
  v10 = *(a1 + 32);
  v45[0] = *(a1 + 16);
  v45[1] = v10;
  v11 = *(a2 + 64);
  v43[2] = *(a2 + 48);
  v43[3] = v11;
  v44 = *(a2 + 80);
  v12 = *(a2 + 32);
  v43[0] = *(a2 + 16);
  v43[1] = v12;
  v13 = v45[0];
  if (*(&v45[0] + 1) == 1)
  {
    if (*(&v43[0] + 1) == 1)
    {
      v14 = 1;
      *&v33 = *&v45[0];
      *(&v33 + 1) = 1;
      v15 = *(a1 + 48);
      v34 = *(a1 + 32);
      v35 = v15;
      v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      sub_1B03B5C80(v45, v47, &qword_1EB6E6F88, &qword_1B0EEEB30);
      sub_1B03B5C80(v43, v47, &qword_1EB6E6F88, &qword_1B0EEEB30);
      v16 = &v33;
LABEL_16:
      sub_1B0398EFC(v16, &qword_1EB6E6F88, &qword_1B0EEEB30);
      return v14;
    }
  }

  else if (*(&v43[0] + 1) != 1)
  {
    v26 = v43[0];
    v19 = *(a2 + 48);
    v27 = *(a2 + 32);
    v28 = v19;
    v29 = *(a2 + 64);
    v30 = *(a2 + 80);
    v37 = v30;
    v35 = v19;
    v36 = v29;
    v33 = v43[0];
    v34 = v27;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v48 = *(a1 + 80);
    v47[2] = v21;
    v47[3] = v22;
    v47[1] = v20;
    v47[0] = v45[0];
    v23 = a1;
    sub_1B03B5C80(v45, v31, &qword_1EB6E6F88, &qword_1B0EEEB30);
    sub_1B03B5C80(v43, v31, &qword_1EB6E6F88, &qword_1B0EEEB30);
    v14 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v47, &v33);
    sub_1B0398EFC(&v26, &qword_1EB6E6F88, &qword_1B0EEEB30);
    v31[0] = v13;
    v24 = *(v23 + 48);
    v31[1] = *(v23 + 32);
    v31[2] = v24;
    v31[3] = *(v23 + 64);
    v32 = *(v23 + 80);
    v16 = v31;
    goto LABEL_16;
  }

  v17 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v17;
  v36 = *(a1 + 64);
  v18 = *(a2 + 48);
  v39 = *(a2 + 32);
  v33 = v45[0];
  v37 = *(a1 + 80);
  v38 = v43[0];
  v40 = v18;
  v41 = *(a2 + 64);
  v42 = *(a2 + 80);
  sub_1B03B5C80(v45, v47, &qword_1EB6E6F88, &qword_1B0EEEB30);
  sub_1B03B5C80(v43, v47, &qword_1EB6E6F88, &qword_1B0EEEB30);
  sub_1B0398EFC(&v33, &qword_1EB6E6F90, &qword_1B0EEEB38);
  return 0;
}

BOOL _s12NIOIMAPCore213BodyStructureO10SinglepartV4KindO21__derived_enum_equalsySbAG_AGtFZ_0(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (a2 >> 62)
    {
      return 0;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (!v19 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    v20 = v15 == v17 && v16 == v18;
    return v20 || (sub_1B0E46A78() & 1) != 0;
  }

  if (a1 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return 0;
    }

    v21 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    return (v23 || (sub_1B0E46A78() & 1) != 0) && v21 == v22;
  }

  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x70);
  v30[4] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
  v30[5] = v2;
  v30[6] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x80);
  v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v30[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v30[1] = v3;
  v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
  v30[2] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
  v30[3] = v4;
  v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xC8);
  v28[2] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xB8);
  v28[3] = v5;
  v6 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xA8);
  v28[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x98);
  v28[1] = v6;
  v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x108);
  v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x118);
  v28[6] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xF8);
  v28[7] = v7;
  v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xE8);
  v28[4] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xD8);
  v28[5] = v9;
  v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x138);
  v28[9] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x128);
  v28[10] = v10;
  v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v31 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x90);
  v29 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x148);
  v28[8] = v8;
  if (a2 >> 62 != 1)
  {
    return 0;
  }

  v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x150);
  memcpy(__dst, ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (__PAIR128__(v12, v11) != *__dst && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v32[4] = *&__dst[80];
  v32[5] = *&__dst[96];
  v32[6] = *&__dst[112];
  v33 = *&__dst[128];
  v32[0] = *&__dst[16];
  v32[1] = *&__dst[32];
  v32[2] = *&__dst[48];
  v32[3] = *&__dst[64];
  sub_1B0C6700C(__dst, v25);
  if (_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v32))
  {
    v26 = __dst[312];
    v25[4] = *&__dst[200];
    v25[5] = *&__dst[216];
    v25[6] = *&__dst[232];
    v25[7] = *&__dst[248];
    v25[0] = *&__dst[136];
    v25[1] = *&__dst[152];
    v25[2] = *&__dst[168];
    v25[3] = *&__dst[184];
    v25[8] = *&__dst[264];
    v25[9] = *&__dst[280];
    v25[10] = *&__dst[296];
    v14 = _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v28, v25);
    sub_1B0C67068(__dst);
    return v14 && v13 == *&__dst[320];
  }

  sub_1B0C67068(__dst);
  return 0;
}

unint64_t sub_1B0E2D488()
{
  result = qword_1EB6E7BF8;
  if (!qword_1EB6E7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7BF8);
  }

  return result;
}

unint64_t sub_1B0E2D4E0()
{
  result = qword_1EB6E7C00;
  if (!qword_1EB6E7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C00);
  }

  return result;
}

unint64_t sub_1B0E2D538()
{
  result = qword_1EB6E7C08;
  if (!qword_1EB6E7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C08);
  }

  return result;
}

unint64_t sub_1B0E2D590()
{
  result = qword_1EB6E7C10;
  if (!qword_1EB6E7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C10);
  }

  return result;
}

unint64_t sub_1B0E2D5E8()
{
  result = qword_1EB6E7C18;
  if (!qword_1EB6E7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C18);
  }

  return result;
}

uint64_t sub_1B0E2D63C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0E2D684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0E2D72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_1B0E2D774(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0E2D828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_1B0E2D884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t StoreOperation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 43;
  }

  if (a1 == 1)
  {
    return 45;
  }

  return 0;
}

uint64_t sub_1B0E2D934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 45;
  if (v2 != 1)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 43;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 45;
  if (*a2 != 1)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 43;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B0E46A78();
  }

  return v11 & 1;
}

unint64_t sub_1B0E2D9F8@<X0>(Swift::String *a1@<X0>, NIOIMAPCore2::StoreOperation_optional *a2@<X8>)
{
  result = _s12NIOIMAPCore214StoreOperationO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1B0E2DA28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 45;
  if (v2 != 1)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B0E2DA60()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2DADC(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0E2DB44(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t StoreData.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1B0E46C68();
    v7 = *(a3 + 16);
    result = MEMORY[0x1B2728D70](v7);
    if (v7)
    {
      v8 = a3 + 54;
      do
      {
        v8 += 24;
        swift_beginAccess();
        result = sub_1B0E46C38();
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1B0E46C68();
    v4 = *(a3 + 16);
    result = MEMORY[0x1B2728D70](v4);
    if (v4)
    {
      v6 = a3 + 40;
      do
      {
        sub_1B0E44BB8();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v6 += 16;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t StoreData.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  StoreData.hash(into:)(v5, a1, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2DE24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  StoreData.hash(into:)(v4, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2DE78(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B0E46C28();
  StoreData.hash(into:)(v5, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t StoreGmailLabels.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1B0E46C68();
  v4 = *(a3 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = a3 + 54;
    do
    {
      v6 += 24;
      swift_beginAccess();
      result = sub_1B0E46C38();
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t StoreGmailLabels.hashValue.getter(unsigned int a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1B0E46C68();
  v3 = *(a2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = a2 + 54;
    do
    {
      v4 += 24;
      swift_beginAccess();
      sub_1B0E46C38();
      --v3;
    }

    while (v3);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2E128()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return StoreGmailLabels.hashValue.getter(v1 | *v0, *(v0 + 1));
}

uint64_t sub_1B0E2E148(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return StoreGmailLabels.hash(into:)(a1, v2 | *v1, *(v1 + 1));
}

uint64_t static StoreFlags.add(silent:list:)(char a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    return 256;
  }

  else
  {
    return 0;
  }
}

uint64_t static StoreFlags.remove(silent:list:)(char a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    return 257;
  }

  else
  {
    return 1;
  }
}

uint64_t static StoreFlags.replace(silent:list:)(char a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    return 258;
  }

  else
  {
    return 2;
  }
}

uint64_t StoreFlags.flags.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t StoreFlags.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1B0E46C68();
  v4 = *(a3 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = a3 + 40;
    do
    {
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t StoreFlags.hashValue.getter(__int16 a1, uint64_t a2)
{
  sub_1B0E46C28();
  StoreFlags.hash(into:)(v5, a1 & 0x1FF, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2E42C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1B0E46C28();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  StoreFlags.hash(into:)(v6, v4 | v1, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2E494(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return StoreFlags.hash(into:)(a1, v2 | *v1, *(v1 + 1));
}

uint64_t sub_1B0E2E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 1);
  sub_1B0E46C28();
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  a4(v11, v9 | v6, v8);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2E550(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  if (a2[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1B0E2E878(v5 | *a1, *(a1 + 1), v6 | *a2, *(a2 + 1), a5) & 1;
}

uint64_t sub_1B0E2E5A4(__int16 a1, void *a2)
{
  if ((a1 & 0x100) != 0)
  {
    v4 = 0x544E454C49532ELL;
  }

  else
  {
    v4 = 0;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 45;
    }

    else
    {
      v7 = 0;
    }

    if (v6 == 1)
    {
      v8 = 0xE100000000000000;
    }

    else
    {
      v8 = 0xE000000000000000;
    }
  }

  else
  {
    v8 = 0xE100000000000000;
    v7 = 43;
  }

  MEMORY[0x1B2726E80](v7, v8);

  MEMORY[0x1B2726E80](0x5347414C46, 0xE500000000000000);
  MEMORY[0x1B2726E80](v4, v5);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v9 = *(v2 + 20);
  v10 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v2 + 20);
  v16 = __CFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v17;
  v18 = sub_1B0D8AB9C(a2);
  v19 = __OFADD__(v13, v18);
  result = v13 + v18;
  if (v19)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E2E6FC(__int16 a1, uint64_t a2)
{
  v4 = a1;
  if ((a1 & 0x100) != 0)
  {
    v5 = 0x544E454C49532ELL;
  }

  else
  {
    v5 = 0;
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  sub_1B0E46298();
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = 45;
    }

    else
    {
      v7 = 0;
    }

    if (v4 == 1)
    {
      v8 = 0xE100000000000000;
    }

    else
    {
      v8 = 0xE000000000000000;
    }
  }

  else
  {
    v8 = 0xE100000000000000;
    v7 = 43;
  }

  MEMORY[0x1B2726E80](v7, v8);

  MEMORY[0x1B2726E80](0x42414C2D4D472D58, 0xEB00000000534C45);
  MEMORY[0x1B2726E80](v5, v6);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v9 = *(v2 + 20);
  v10 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v2 + 20);
  v16 = __CFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v17;
  v18 = sub_1B0D8F798(a2);
  v19 = __OFADD__(v13, v18);
  result = v13 + v18;
  if (v19)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E2E878(unsigned int a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = a3;
  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 45;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      v11 = 0xE100000000000000;
    }

    else
    {
      v11 = 0xE000000000000000;
    }
  }

  else
  {
    v11 = 0xE100000000000000;
    v10 = 43;
  }

  v12 = a3;
  v13 = 0xE100000000000000;
  v14 = 45;
  if (a3 != 1)
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 43;
  }

  if (v8)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE100000000000000;
  }

  if (v10 == v15 && v11 == v16)
  {

    if (((a1 ^ v12) & 0x100) != 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_1B0E46A78();

    if (v17 & 1) == 0 || (((a1 ^ v12) >> 8))
    {
      return 0;
    }
  }

  return a5(a2, a4);
}

uint64_t _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (a1)
    {
      v4 = 45;
      if (a1 == 1)
      {
        v5 = 0xE100000000000000;
      }

      else
      {
        v4 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = a3;
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE100000000000000;
      v4 = 43;
      v6 = a3;
      if (a3)
      {
LABEL_8:
        if (v6 == 1)
        {
          v7 = 0xE100000000000000;
          v8 = 45;
        }

        else
        {
          v8 = 0;
          v7 = 0xE000000000000000;
        }

LABEL_15:
        if (v4 == v8 && v5 == v7)
        {
          v12 = (a3 >> 8) & 1;
          v13 = (a1 >> 8) & 1;

          if (v13 != v12)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v16 = sub_1B0E46A78();

          if ((v16 & 1) == 0 || ((a1 >> 8) & 1) != ((a3 >> 8) & 1))
          {
            goto LABEL_23;
          }
        }

        if (sub_1B03D1B3C(a2, a4))
        {
          v9 = 1;
          return v9 & 1;
        }

LABEL_23:
        v9 = 0;
        return v9 & 1;
      }
    }

    v7 = 0xE100000000000000;
    v8 = 43;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  v9 = sub_1B0E2E878(a1 & 0x1FF, a2, a3 & 0x1FF, a4, sub_1B0D3CF14);
  return v9 & 1;
}

unint64_t _s12NIOIMAPCore214StoreOperationO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0E2EB7C()
{
  result = qword_1EB6E7C20;
  if (!qword_1EB6E7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C20);
  }

  return result;
}

unint64_t sub_1B0E2EBD4()
{
  result = qword_1EB6E7C28;
  if (!qword_1EB6E7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C28);
  }

  return result;
}

unint64_t sub_1B0E2EC2C()
{
  result = qword_1EB6E7C30;
  if (!qword_1EB6E7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C30);
  }

  return result;
}

unint64_t sub_1B0E2EC84()
{
  result = qword_1EB6E7C38;
  if (!qword_1EB6E7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C38);
  }

  return result;
}

uint64_t sub_1B0E2ECF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 3) & 0xFFFFFFC0 | (*a1 >> 2);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0E2ED48(uint64_t result, int a2, int a3)
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
      *result = (8 * -a2) & 0x7FFFFFE00 | (4 * (-a2 & 0x3FLL));
      *(result + 8) = 0;
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

uint64_t StoreModifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for StoreModifier(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0E2F63C(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D78E60(v16, v13);
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D78ED0(&v13[*(v11 + 52)], v10);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_1B0E46C68();
    }

    else
    {
      sub_1B0D06280(v10, v7);
      sub_1B0E46C68();
      ParameterValue.hash(into:)(a1);
      sub_1B0E2F79C(v7, type metadata accessor for ParameterValue);
    }

    return sub_1B0398EFC(v13, &qword_1EB6E6F58, &unk_1B0EF5150);
  }

  else
  {
    v17 = *v16;
    MEMORY[0x1B2728D70](0);
    return MEMORY[0x1B2728DB0](v17);
  }
}

uint64_t StoreModifier.hashValue.getter()
{
  sub_1B0E46C28();
  StoreModifier.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2F0D8()
{
  sub_1B0E46C28();
  StoreModifier.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2F11C(uint64_t a1)
{
  sub_1B0E46C28();
  StoreModifier.hash(into:)(v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E2F15C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v29 - v5);
  v7 = type metadata accessor for StoreModifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0E2F63C(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D78E60(v9, v6);
    v10 = sub_1B0E3001C(v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    return v10;
  }

  v12 = *v9;
  v13 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x45474E4148434E55uLL, 0xEF2045434E495344, a2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0x45474E4148434E55;
    v15._object = 0xEF2045434E495344;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a2 + 20) = v18;
  v29[0] = v12;
  v19 = sub_1B0E469C8();
  v21 = v20;
  v22 = sub_1B0CFC1B0(v19, v20, a2 + 8, v18);
  if (v23)
  {
    v24._countAndFlagsBits = v19;
    v24._object = v21;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
  }

  v25 = v22;

  v26 = *(a2 + 20);
  v27 = __CFADD__(v26, v25);
  v28 = v26 + v25;
  if (v27)
  {
    goto LABEL_12;
  }

  *(a2 + 20) = v28;
  result = v16 + v25;
  if (__OFADD__(v16, v25))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore213StoreModifierO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v22 - v5);
  v7 = type metadata accessor for StoreModifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F70, &qword_1B0EEEB18);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_1B0E2F63C(a1, &v22 - v14);
  sub_1B0E2F63C(a2, &v15[v17]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0E2F63C(v15, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0D78E60(&v15[v17], v6);
      v18 = sub_1B0DCA3C4(v9, v6);
      sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
      sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_7:
      sub_1B0E2F79C(v15, type metadata accessor for StoreModifier);
      return v18;
    }

    sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_9:
    sub_1B0398EFC(v15, &qword_1EB6E6F70, &qword_1B0EEEB18);
    return 0;
  }

  sub_1B0E2F63C(v15, v12);
  v19 = *v12;
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    goto LABEL_9;
  }

  v21 = *&v15[v17];
  if (((v21 | v19) & 0x8000000000000000) == 0)
  {
    v18 = v21 == v19;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StoreModifier(uint64_t a1)
{
  result = qword_1EB6DE8B0;
  if (!qword_1EB6DE8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0E2F63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B0E2F6E8(uint64_t a1)
{
  sub_1B041B648(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1B0E2F754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B0E2F79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TaggedCommand.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2, double a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TaggedCommand(0) + 20);

  return _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t type metadata accessor for TaggedCommand(uint64_t a1)
{
  result = qword_1EB6DE8A0;
  if (!qword_1EB6DE8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CommandEncodeBuffer.writeCommand(_:)(Swift::String *a1)
{
  v20 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v3 = *(v1 + 20);
  v4 = sub_1B0CFC1B0(v20._countAndFlagsBits, v20._object, v1 + 8, v3);
  if (v5)
  {
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v20, v3);
  }

  v6 = v4;

  v7 = *(v1 + 20);
  v8 = __CFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v9;
  v10 = type metadata accessor for TaggedCommand(0);
  sub_1B0D68278(a1 + *(v10 + 20));
  v12 = __OFADD__(v6, v11);
  v13 = v6 + v11;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(v1 + 20);
  v15 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v1 + 8, v14);
  if (v16)
  {
    v17._countAndFlagsBits = 2573;
    v17._object = 0xE200000000000000;
    v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = *(v1 + 20);
  v8 = __CFADD__(v18, v15);
  v19 = v18 + v15;
  if (v8)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v19;
  if (__OFADD__(v13, v15))
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t TaggedCommand.init(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for TaggedCommand(0) + 20);

  return sub_1B0D99914(a3, v5);
}

uint64_t TaggedCommand.tag.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t TaggedCommand.tag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TaggedCommand.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TaggedCommand(0) + 20);

  return sub_1B0E2FE24(v3, a1);
}

uint64_t TaggedCommand.command.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TaggedCommand(0) + 20);

  return sub_1B0E2FE88(a1, v3);
}

uint64_t TaggedCommand.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for TaggedCommand(0);
  return Command.hash(into:)(a1);
}

uint64_t TaggedCommand.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for TaggedCommand(0);
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2FC30()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2FCCC(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Command.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E2FD20(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_1B0E2FE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0E2FE88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0E2FF1C()
{
  result = qword_1EB6E7C48;
  if (!qword_1EB6E7C48)
  {
    type metadata accessor for TaggedCommand(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C48);
  }

  return result;
}

uint64_t sub_1B0E2FF9C(uint64_t a1)
{
  result = type metadata accessor for Command(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0E3001C(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for ParameterValue(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30[0] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = *(v1 + 20);
  result = sub_1B0CFC1B0(*a1, v10, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  sub_1B0D78ED0(a1 + *(v19 + 52), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B0D06414(v6);
    v20 = 0;
  }

  else
  {
    v21 = v30[0];
    sub_1B0D06280(v6, v30[0]);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v18);
    if (v22)
    {
      v23 = v16;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
      v25 = result;
    }

    else
    {
      v25 = result;
      v23 = v16;
    }

    v26 = *(v2 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_16;
    }

    *(v2 + 20) = v28;
    v29 = sub_1B0DF818C(v21);
    result = sub_1B0D06348(v21);
    v20 = v25 + v29;
    if (__OFADD__(v25, v29))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v16 = v23;
  }

  result = v16 + v20;
  if (__OFADD__(v16, v20))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1B0E30270(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v2 = v1;
  v30 = a1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v10;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_23;
  }

  *(v1 + 20) = v15;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](result);
  v29[2] = sub_1B0DC40D0;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = &v30;
  v29[6] = 32;
  v29[7] = 0xE100000000000000;
  result = sub_1B0DE5BC8(0, sub_1B0DC40FC, v29, a1);
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_26;
  }

  *(v2 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = v17 + result;
  if (v23)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = *(v2 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t TaggedResponse.init(tag:state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1B0E30484(__int128 *a1)
{
  v20 = *a1;
  v21 = v20;
  sub_1B070B280(&v21, &v19);
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v3 = v20;
  v4 = *(v1 + 20);
  v5 = sub_1B0CFC1B0(v20, *(&v20 + 1), v1 + 8, v4);
  if (v6)
  {
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v3, v4);
  }

  v7 = v5;

  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v11;
  result = sub_1B0E30AF8(*(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 40));
  v12 = __OFADD__(v7, result);
  v13 = v7 + result;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(v1 + 20);
  result = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v1 + 8, v14);
  if (v15)
  {
    v16._countAndFlagsBits = 2573;
    v16._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v14);
  }

  v17 = *(v1 + 20);
  v10 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v10)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v18;
  v12 = __OFADD__(v13, result);
  result += v13;
  if (v12)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t TaggedResponse.tag.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t TaggedResponse.tag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TaggedResponse.state.getter()
{
  v1 = *(v0 + 16);
  sub_1B0A91FD0(v1, *(v0 + 24), *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t TaggedResponse.state.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1B0BB6FE0(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40));
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return result;
}

uint64_t TaggedResponse.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);

  return TaggedResponse.State.hash(into:)(a1, v3, v4, v5, v6);
}

uint64_t TaggedResponse.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  TaggedResponse.State.hash(into:)(v2, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E307A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  TaggedResponse.State.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E30828(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return TaggedResponse.State.hash(into:)(a1, v3, v4, v5, v6);
}

uint64_t sub_1B0E30890(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  TaggedResponse.State.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E3090C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s12NIOIMAPCore214TaggedResponseV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t _s12NIOIMAPCore214TaggedResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1B0E46A78(), result = 0, (v5 & 1) != 0))
  {
    v8 = a1[2];
    v7 = a1[3];
    v9 = a1[4];
    v10 = *(a1 + 40);
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = *(a2 + 32);
    v14 = *(a2 + 40);
    if (v10)
    {
      if (v10 == 1)
      {
        if (v14 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v14 == 2)
      {
        goto LABEL_13;
      }
    }

    else if (!*(a2 + 40))
    {
LABEL_13:
      v15 = v12 & 0xF000000000000007;
      if ((~v8 & 0xF000000000000007) != 0)
      {
        if (v15 == 0xF000000000000007)
        {
          return 0;
        }

        sub_1B04420EC(*(a2 + 16));
        v16 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v12);
        sub_1B0447F00(v12);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15 != 0xF000000000000007)
      {
        return 0;
      }

      if (v7 == v11 && v9 == v13 || (sub_1B0E46A78() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B0E30A84()
{
  result = qword_1EB6E7C50;
  if (!qword_1EB6E7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C50);
  }

  return result;
}

uint64_t sub_1B0E30AF8(unint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = *(v4 + 20);
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_15;
    }

    result = sub_1B0CFC1B0(0x204F4EuLL, 0xE300000000000000, v4 + 8, *(v4 + 20));
    if (v10)
    {
      v11._countAndFlagsBits = 2117454;
      v11._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(v4 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    *(v4 + 20) = v15;
    v16 = sub_1B0E14528(a1, a2, a3);
    v17 = __OFADD__(v12, v16);
    result = v12 + v16;
    if (!v17)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_1B0CFC1B0(0x204B4FuLL, 0xE300000000000000, v4 + 8, v8);
  if (v18)
  {
    v19._countAndFlagsBits = 2116431;
    v19._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v8);
  }

  v20 = result;
  v21 = *(v4 + 20);
  v14 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v14)
  {
    goto LABEL_21;
  }

  *(v4 + 20) = v22;
  v23 = sub_1B0E14528(a1, a2, a3);
  v17 = __OFADD__(v20, v23);
  result = v20 + v23;
  if (!v17)
  {
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0CFC1B0(0x20444142uLL, 0xE400000000000000, v4 + 8, v8);
  if (v24)
  {
    v25._countAndFlagsBits = 541344066;
    v25._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v8);
  }

  v26 = result;
  v27 = *(v4 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_22;
  }

  *(v4 + 20) = v28;
  v29 = sub_1B0E14528(a1, a2, a3);
  v17 = __OFADD__(v26, v29);
  result = v26 + v29;
  if (v17)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t TaggedResponse.State.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2 & 0xF000000000000007;
  if (a5)
  {
    if (a5 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1B2728D70](v8);
  sub_1B0E46C68();
  if (v7 != 0xF000000000000007)
  {
    ResponseTextCode.hash(into:)(a1, a2);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t TaggedResponse.State.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B0E46C28();
  TaggedResponse.State.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E30DC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  TaggedResponse.State.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E30E3C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1B0E46C28();
  TaggedResponse.State.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1B0E46CB8();
}

BOOL _s12NIOIMAPCore214TaggedResponseV5StateO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 != 1)
      {
        return 0;
      }
    }

    else if (a8 != 2)
    {
      return 0;
    }
  }

  else if (a8)
  {
    return 0;
  }

  v10 = a5 & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    if (v10 == 0xF000000000000007)
    {
      return 0;
    }

    v11 = a1;
    v12 = a6;
    v13 = a2;
    sub_1B04420EC(a5);
    LOBYTE(v11) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, a5);
    sub_1B0447F00(a5);
    a2 = v13;
    a6 = v12;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10 != 0xF000000000000007)
  {
    return 0;
  }

  return a2 == a6 && a3 == a7 || (sub_1B0E46A78() & 1) != 0;
}

unint64_t sub_1B0E30FCC()
{
  result = qword_1EB6E7C58;
  if (!qword_1EB6E7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C58);
  }

  return result;
}

uint64_t sub_1B0E31030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B0E44B98();
  v6 = v5;

  if (v4 == 27503 && v6 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0 || v4 == 28526 && v6 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0 || v4 == 6578530 && v6 == 0xE300000000000000)
  {
  }

  else
  {
    v8 = sub_1B0E46A78();

    if ((v8 & 1) == 0)
    {
      sub_1B0447F00(a3);

      return 0;
    }
  }

  return a3;
}

uint64_t static ThreadID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

NIOIMAPCore2::ThreadID_optional __swiftcall ThreadID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1B0E44CF8();
  if (v3 <= 0 || v3 >= 0x100 || (sub_1B0D7C750(countAndFlagsBits, object) & 1) == 0)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result.value.objectID.rawValue._object = v6;
  result.value.objectID.rawValue._countAndFlagsBits = v5;
  result.is_nil = v4;
  return result;
}

uint64_t ThreadID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

NIOIMAPCore2::ThreadID __swiftcall ThreadID.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (sub_1B0E44CF8() - 256) >= 0xFFFFFFFFFFFFFF01 && (sub_1B0D7C750(countAndFlagsBits, object))
  {
    v3 = countAndFlagsBits;
    v4 = object;
  }

  else
  {

    __break(1u);
  }

  result.objectID.rawValue._object = v4;
  result.objectID.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t ThreadID.debugDescription.getter()
{
  MEMORY[0x1B2726E80]();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1B0E3133C()
{
  result = qword_1EB6E7C60;
  if (!qword_1EB6E7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C60);
  }

  return result;
}

unint64_t sub_1B0E31394()
{
  result = qword_1EB6E7C68;
  if (!qword_1EB6E7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C68);
  }

  return result;
}

unint64_t sub_1B0E313EC()
{
  result = qword_1EB6E7C70;
  if (!qword_1EB6E7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C70);
  }

  return result;
}

uint64_t sub_1B0E31454(int a1)
{
  v2 = v1;
  if (a1 != -1)
  {
    v3 = sub_1B0E469C8();
    v5 = v4;
    v7 = v2[5];
    v2 += 5;
    v6 = v7;
    v8 = sub_1B0CFC1B0(v3, v4, (v2 - 3), v7);
    if (v9)
    {
      v10._countAndFlagsBits = v3;
      v10._object = v5;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v6);
    }

    v11 = v8;

    result = v11;
    v13 = *v2 + v11;
    if (!__CFADD__(*v2, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v15 = v2[5];
  v2 += 5;
  v14 = v15;
  result = sub_1B0CFC1B0(0x2AuLL, 0xE100000000000000, (v2 - 3), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 42;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v13 = *v2 + result;
  if (!__CFADD__(*v2, result))
  {
LABEL_10:
    *v2 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E31550(int a1)
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1EB737EB0;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1B0E31454(a1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v11) - v11);
    sub_1B0D547AC(v14, v20);
    sub_1B04394F4(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1B0D7E6B4(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0E31714(uint64_t a1)
{
  sub_1B0E318BC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0E31750(uint64_t a1)
{
  sub_1B0E318BC();

  return sub_1B0E46F38();
}

uint64_t UID.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7C78, &qword_1B0EFEDF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E318BC();
  sub_1B0E46D48();
  sub_1B0E46988();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B0E318BC()
{
  result = qword_1EB6DE218;
  if (!qword_1EB6DE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE218);
  }

  return result;
}

uint64_t UID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

void *UID.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7C80, &qword_1B0EFEDF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E318BC();
  sub_1B0E46D18();
  if (!v1)
  {
    v7 = sub_1B0E46898();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B0E31AD4(void *a1)
{
  a1[1] = sub_1B0E31B24();
  a1[2] = sub_1B092A5A8();
  a1[3] = sub_1B092A620();
  a1[4] = sub_1B0E31B78();
  a1[5] = sub_1B043CF70();
  result = sub_1B0714E4C();
  a1[6] = result;
  return result;
}

unint64_t sub_1B0E31B24()
{
  result = qword_1EB6DE1A8;
  if (!qword_1EB6DE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE1A8);
  }

  return result;
}

unint64_t sub_1B0E31B78()
{
  result = qword_1EB6DE1B0;
  if (!qword_1EB6DE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE1B0);
  }

  return result;
}

uint64_t sub_1B0E31BCC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7C80, &qword_1B0EFEDF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E318BC();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1B0E46898();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1B0E31D2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7C78, &qword_1B0EFEDF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E318BC();
  sub_1B0E46D48();
  sub_1B0E46988();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B0E31E98()
{
  result = qword_1EB6E7C88;
  if (!qword_1EB6E7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C88);
  }

  return result;
}

unint64_t sub_1B0E31EF0()
{
  result = qword_1EB6DE208;
  if (!qword_1EB6DE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE208);
  }

  return result;
}

unint64_t sub_1B0E31F48()
{
  result = qword_1EB6DE210;
  if (!qword_1EB6DE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE210);
  }

  return result;
}

double UIDBatchesResponse.init(correlator:batches:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 32) = v4 & 1;
  *(a3 + 40) = a2;
  return result;
}

void sub_1B0E31FD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  v5 = sub_1B0CFC1B0(0x4843544142444955uLL, 0xEA00000000005345, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x4843544142444955;
    v7._object = 0xEA00000000005345;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, v5);
  v11 = v9 + v5;
  if (v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v12;
  v43 = *(a1 + 32);
  sub_1B0E19DC0(v42);
  v14 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(a1 + 40);
  v16 = v15[2];
  if (v16)
  {
    v17 = *(v1 + 20);
    v18 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;
    v22 = *(v1 + 20);
    v23 = (v22 + v18);
    if (__CFADD__(v22, v18))
    {
      goto LABEL_23;
    }

    *(v1 + 20) = v23;
    v41 = v15;
    v24 = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v28 = *(v2 + 20);
    v10 = __CFADD__(v28, v24);
    v29 = v28 + v24;
    if (v10)
    {
      goto LABEL_24;
    }

    *(v2 + 20) = v29;
    MEMORY[0x1EEE9AC00](v24);
    v40[2] = sub_1B0E324F0;
    v40[3] = 0;
    v40[4] = v2;
    v40[5] = &v41;
    v40[6] = 44;
    v40[7] = 0xE100000000000000;
    v30 = sub_1B0DE710C(0, sub_1B0E264F8, v40, v15);
    v31 = v27 + v30;
    if (__OFADD__(v27, v30))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v32 = *(v2 + 20);
    v33 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v32);
    if (v34)
    {
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
    }

    v36 = *(v2 + 20);
    v10 = __CFADD__(v36, v33);
    v37 = v36 + v33;
    if (v10)
    {
      goto LABEL_26;
    }

    *(v2 + 20) = v37;
    v38 = v31 + v33;
    if (__OFADD__(v31, v33))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v39 = __OFADD__(v21, v38);
    v16 = v21 + v38;
    if (v39)
    {
LABEL_28:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v14, v16))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

double UIDBatchesResponse.correlator.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 32) = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

__n128 UIDBatchesResponse.correlator.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t UIDBatchesResponse.batches.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t UIDBatchesResponse.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2)
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v3 | (v3 << 32));
    if (v4)
    {
LABEL_3:
      sub_1B0E46C68();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1B0E46C68();
  sub_1B0E46C88();
LABEL_6:
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  result = MEMORY[0x1B2728D70](v6);
  if (v6)
  {
    v8 = v5 + 36;
    do
    {
      sub_1B0E46C88();
      result = sub_1B0E46C88();
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t UIDBatchesResponse.hashValue.getter()
{
  sub_1B0E46C28();
  UIDBatchesResponse.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E32428()
{
  sub_1B0E46C28();
  UIDBatchesResponse.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E3246C(uint64_t a1)
{
  sub_1B0E46C28();
  UIDBatchesResponse.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E324A8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s12NIOIMAPCore218UIDBatchesResponseV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t sub_1B0E324F0(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_1B0E31F9C();
  v6 = 0;
  if (v4 < v3)
  {
    v7 = *(a2 + 20);
    result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, a2 + 8, v7);
    if (v9)
    {
      v10._countAndFlagsBits = 58;
      v10._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = result;
    v12 = *(a2 + 20);
    v13 = __CFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      goto LABEL_9;
    }

    *(a2 + 20) = v14;
    result = sub_1B0E31F9C();
    v6 = v11 + result;
    if (__OFADD__(v11, result))
    {
LABEL_10:
      __break(1u);
      return result;
    }
  }

  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t _s12NIOIMAPCore218UIDBatchesResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 28);
  v11 = *(a2 + 32);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v6 | (v6 << 32)) != (v10 | (v10 << 32)) || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v4, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v7)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v11 & 1) != 0 || v5 != v9)
  {
    return 0;
  }

  v12 = a1[5];
  v13 = *(a2 + 40);

  return sub_1B03D37DC(v12, v13);
}

unint64_t sub_1B0E326BC()
{
  result = qword_1EB6E7C90;
  if (!qword_1EB6E7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C90);
  }

  return result;
}

unint64_t UIDValidity.init<A>(exactly:)(char *a1, uint64_t a2, uint64_t a3)
{
  v29[2] = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29[1] = v29 - v6;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = sub_1B0E45FB8();
  v15 = sub_1B0E45FA8();
  if (v14)
  {
    if (v15 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v15 > 63)
  {
LABEL_3:
    v30 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v16 = sub_1B0E44908();
    v17 = *(v7 + 8);
    v17(v13, a2);
    if ((v16 & 1) == 0)
    {
LABEL_4:
      v18 = a1;
LABEL_19:
      v17(v18, a2);
      v23 = 0;
      v22 = 1;
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  (*(v7 + 16))(v13, a1, a2);
  v19 = sub_1B0E45F98();
  v17 = *(v7 + 8);
  v17(v13, a2);
  if (v19 <= 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  (*(v7 + 16))(v10, a1, a2);
  if (sub_1B0E45FB8())
  {
    swift_getAssociatedConformanceWitness();
    sub_1B0E46B38();
    sub_1B0E46A38();
    v20 = sub_1B0E44908();
    v17(v13, a2);
    if (v20)
    {
      goto LABEL_18;
    }
  }

  if (sub_1B0E45FA8() >= 32)
  {
    LODWORD(v30) = -1;
    v24 = sub_1B0E45FB8();
    v25 = sub_1B0E45FA8();
    if (v24)
    {
      if (v25 <= 32)
      {
        v29[0] = a1;
        swift_getAssociatedConformanceWitness();
        sub_1B0E46B38();
        sub_1B0E46A38();
        v26 = sub_1B0E448F8();
        v17(v13, a2);
        if (v26)
        {
          sub_1B0E45F98();
        }

        a1 = v29[0];
        goto LABEL_10;
      }
    }

    else if (v25 < 33)
    {
      sub_1B0E45F98();
      goto LABEL_10;
    }

    sub_1B07467B8();
    sub_1B0E45F78();
    v27 = sub_1B0E44908();
    v17(v13, a2);
    if (v27)
    {
LABEL_18:
      v17(a1, a2);
      v18 = v10;
      goto LABEL_19;
    }
  }

LABEL_10:
  v21 = sub_1B0E45F98();
  v17(a1, a2);
  v17(v10, a2);
  v22 = 0;
  v23 = v21;
LABEL_20:
  LOBYTE(v30) = v22;
  return v23 | (v22 << 32);
}

uint64_t UIDValidity.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t UIDValidity.init(integerLiteral:)(uint64_t result)
{
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0E32D38()
{
  result = qword_1EB6E7C98;
  if (!qword_1EB6E7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7C98);
  }

  return result;
}

_DWORD *sub_1B0E32D8C@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0E32DB0(unint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v8 = *(v4 + 20);
  v9 = a4;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      goto LABEL_17;
    }

    if (a4 != 3)
    {
      goto LABEL_23;
    }

    result = sub_1B0CFC1B0(0x2048545541455250uLL, 0xE800000000000000, v4 + 8, *(v4 + 20));
    if (v11)
    {
      v12._countAndFlagsBits = 0x2048545541455250;
      v12._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v8);
    }

    v13 = result;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *(v4 + 20) = v16;
    v17 = sub_1B0E14528(a1, a2, a3);
    v18 = __OFADD__(v13, v17);
    result = v13 + v17;
    if (!v18)
    {
      return result;
    }

    __break(1u);
  }

  if (v9)
  {
    goto LABEL_29;
  }

  result = sub_1B0CFC1B0(0x204B4FuLL, 0xE300000000000000, v4 + 8, v8);
  if (v19)
  {
    v20._countAndFlagsBits = 2116431;
    v20._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v8);
  }

  v21 = result;
  v22 = *(v4 + 20);
  v15 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v15)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v4 + 20) = v23;
  v24 = sub_1B0E14528(a1, a2, a3);
  v18 = __OFADD__(v21, v24);
  result = v21 + v24;
  if (!v18)
  {
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_1B0CFC1B0(0x20444142uLL, 0xE400000000000000, v4 + 8, v8);
  if (v25)
  {
    v26._countAndFlagsBits = 541344066;
    v26._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v8);
  }

  v27 = result;
  v28 = *(v4 + 20);
  v15 = __CFADD__(v28, result);
  v29 = v28 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v4 + 20) = v29;
  v30 = sub_1B0E14528(a1, a2, a3);
  v18 = __OFADD__(v27, v30);
  result = v27 + v30;
  if (!v18)
  {
    return result;
  }

  __break(1u);
LABEL_23:
  result = sub_1B0CFC1B0(0x20455942uLL, 0xE400000000000000, v4 + 8, v8);
  if (v31)
  {
    v32._countAndFlagsBits = 541415746;
    v32._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v8);
  }

  v33 = result;
  v34 = *(v4 + 20);
  v15 = __CFADD__(v34, result);
  v35 = v34 + result;
  if (v15)
  {
    goto LABEL_36;
  }

  *(v4 + 20) = v35;
  v36 = sub_1B0E14528(a1, a2, a3);
  v18 = __OFADD__(v33, v36);
  result = v33 + v36;
  if (!v18)
  {
    return result;
  }

  __break(1u);
LABEL_29:
  result = sub_1B0CFC1B0(0x204F4EuLL, 0xE300000000000000, v4 + 8, v8);
  if (v37)
  {
    v38._countAndFlagsBits = 2117454;
    v38._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v8);
  }

  v39 = result;
  v40 = *(v4 + 20);
  v15 = __CFADD__(v40, result);
  v41 = v40 + result;
  if (v15)
  {
    goto LABEL_38;
  }

  *(v4 + 20) = v41;
  v42 = sub_1B0E14528(a1, a2, a3);
  v18 = __OFADD__(v39, v42);
  result = v39 + v42;
  if (v18)
  {
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t UntaggedStatus.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a2 & 0xF000000000000007;
  if (a5 <= 1u)
  {
    v8 = a5 != 0;
  }

  else if (a5 == 2)
  {
    v8 = 2;
  }

  else if (a5 == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  MEMORY[0x1B2728D70](v8);
  sub_1B0E46C68();
  if (v7 != 0xF000000000000007)
  {
    ResponseTextCode.hash(into:)(a1, a2);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t UntaggedStatus.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1B0E46C28();
  UntaggedStatus.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E331A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  UntaggedStatus.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E33218(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1B0E46C28();
  UntaggedStatus.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1B0E46CB8();
}

BOOL _s12NIOIMAPCore214UntaggedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (a8 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 3)
    {
      if (a8 != 3)
      {
        return 0;
      }
    }

    else if (a8 != 4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (a4)
  {
    if (a8 != 1)
    {
      return 0;
    }

LABEL_16:
    v9 = a3;
    v10 = a7;
    v11 = a5 & 0xF000000000000007;
    if ((~a1 & 0xF000000000000007) != 0)
    {
      if (v11 == 0xF000000000000007)
      {
        return 0;
      }

      v12 = a1;
      v13 = a6;
      v14 = a2;
      sub_1B04420EC(a5);
      LOBYTE(v12) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v12, a5);
      sub_1B0447F00(a5);
      a2 = v14;
      a6 = v13;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11 != 0xF000000000000007)
    {
      return 0;
    }

    if (a2 == a6 && v9 == v10)
    {
      return 1;
    }

    return (sub_1B0E46A78() & 1) != 0;
  }

  if (a8)
  {
    return 0;
  }

  v8 = a5 & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    if (v8 == 0xF000000000000007)
    {
      return 0;
    }

    v16 = a1;
    v17 = a7;
    v18 = a6;
    v19 = a3;
    v20 = a2;
    sub_1B04420EC(a5);
    LOBYTE(v16) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v16, a5);
    sub_1B0447F00(a5);
    a2 = v20;
    a3 = v19;
    a6 = v18;
    a7 = v17;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8 != 0xF000000000000007)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7)
  {
    return 1;
  }

  return (sub_1B0E46A78() & 1) != 0;
}

unint64_t sub_1B0E3346C()
{
  result = qword_1EB6E7CA0;
  if (!qword_1EB6E7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CA0);
  }

  return result;
}

uint64_t sub_1B0E334C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0E33508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0E33560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B0E44B98();
  v6 = v5;

  if (v4 == 27503 && v6 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0 || v4 == 28526 && v6 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0 || v4 == 6578530 && v6 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0 || v4 == 0x68747561657270 && v6 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0 || v4 == 6650210 && v6 == 0xE300000000000000)
  {
  }

  else
  {
    v8 = sub_1B0E46A78();

    if ((v8 & 1) == 0)
    {
      sub_1B0447F00(a3);

      return 0;
    }
  }

  return a3;
}

uint64_t static URLAuthenticationMechanism.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t URLAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E337FC()
{
  result = qword_1EB6E7CA8;
  if (!qword_1EB6E7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CA8);
  }

  return result;
}

uint64_t sub_1B0E33864(_OWORD *a1)
{
  v3 = v1;
  v4 = a1[9];
  v90[8] = a1[8];
  v90[9] = v4;
  v5 = a1[11];
  v90[10] = a1[10];
  v90[11] = v5;
  v6 = a1[5];
  v90[4] = a1[4];
  v90[5] = v6;
  v7 = a1[7];
  v90[6] = a1[6];
  v90[7] = v7;
  v8 = a1[1];
  v90[0] = *a1;
  v90[1] = v8;
  v9 = a1[3];
  v90[2] = a1[2];
  v90[3] = v9;
  v10 = sub_1B0E3476C(v90);
  v11 = sub_1B0507224(v90);
  if (v10 != 1)
  {
    v25 = *v11;
    v24 = *(v11 + 8);
    v26 = *(v11 + 16);
    v22 = *(v11 + 24);
    v12 = *(v11 + 32);
    LOBYTE(v93[0]) = *(v11 + 20) & 1;
    result = sub_1B0DDBB80(v25, v24, v26 | (LOBYTE(v93[0]) << 32));
    v14 = result;
    if (!v12)
    {
      return result;
    }

    v28 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x3FuLL, 0xE100000000000000, v3 + 8, v28);
    if (v29)
    {
      v30._countAndFlagsBits = 63;
      v30._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
    }

    v13 = result;
    v31 = *(v3 + 20);
    v32 = (v31 + result);
    if (__CFADD__(v31, result))
    {
      goto LABEL_52;
    }

    *(v3 + 20) = v32;
    result = sub_1B0CFC1B0(v22, v12, v3 + 8, v32);
    if (v33)
    {
      v34._countAndFlagsBits = v22;
      v34._object = v12;
      result = ByteBuffer._setStringSlowpath(_:at:)(v34, v32);
    }

    v35 = *(v3 + 20);
    v36 = __CFADD__(v35, result);
    v37 = v35 + result;
    if (v36)
    {
      goto LABEL_53;
    }

    *(v3 + 20) = v37;
    v38 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = v14 + v38;
    if (!__OFADD__(v14, v38))
    {
      return result;
    }

    __break(1u);
LABEL_18:
    v40 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x3D4552495058453BuLL, 0xE800000000000000, v3 + 8, v40);
    if (v41)
    {
      v42._countAndFlagsBits = 0x3D4552495058453BLL;
      v42._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v42, v40);
    }

    v43 = *(v3 + 20);
    v36 = __CFADD__(v43, result);
    v44 = v43 + result;
    if (v36)
    {
      goto LABEL_66;
    }

    v45 = result;
    *(v3 + 20) = v44;
    v46 = sub_1B0D8ECC0(v12, v13, v14);
    v47 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x54uLL, 0xE100000000000000, v3 + 8, v47);
    if (v48)
    {
      v49._countAndFlagsBits = 84;
      v49._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v49, v47);
    }

    v50 = *(v3 + 20);
    v36 = __CFADD__(v50, result);
    v51 = v50 + result;
    if (v36)
    {
      goto LABEL_67;
    }

    *(v3 + 20) = v51;
    v52 = __OFADD__(v46, result);
    v53 = v46 + result;
    if (v52)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v16 = v22;
    v91[0] = v83;
    v91[1] = v85;
    v92 = v84 & 1;
    result = sub_1B0D8EDF8(v91);
    v54 = v53 + result;
    if (__OFADD__(v53, result))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v23 = v45 + v54;
    if (__OFADD__(v45, v54))
    {
LABEL_70:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  v12 = *(v11 + 72);
  v13 = *(v11 + 80);
  v14 = *(v11 + 88);
  v85 = *(v11 + 112);
  v83 = *(v11 + 96);
  v84 = *(v11 + 128);
  v15 = *(v11 + 129);
  v88 = *(v11 + 144);
  v89 = *(v11 + 136);
  v87 = *(v11 + 152);
  v2 = *(v11 + 160);
  v16 = *(v11 + 168);
  v86 = *(v11 + 176);
  v17 = *v11;
  v18 = *(v11 + 16);
  v19 = *(v11 + 32);
  v20 = *(v11 + 48);
  v94 = *(v11 + 64);
  v93[2] = v19;
  v93[3] = v20;
  v93[0] = v17;
  v93[1] = v18;
  v21 = sub_1B0DEDDFC(v93);
  if (!v16)
  {
    v39 = 0;
    goto LABEL_49;
  }

  v22 = v16;
  v82 = v21;
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = 0;
LABEL_27:
  v55 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x485455414C52553BuLL, 0xE90000000000003DLL, v3 + 8, v55);
  if (v56)
  {
    v57._countAndFlagsBits = 0x485455414C52553BLL;
    v57._object = 0xE90000000000003DLL;
    result = ByteBuffer._setStringSlowpath(_:at:)(v57, v55);
  }

  v58 = *(v3 + 20);
  v36 = __CFADD__(v58, result);
  v59 = v58 + result;
  if (v36)
  {
    goto LABEL_55;
  }

  *(v3 + 20) = v59;
  v60 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_1B0D2F3C8(v89, v88, v87);
  v61 = v60 + result;
  if (__OFADD__(v60, result))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v62 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, v3 + 8, v62);
  if (v63)
  {
    v64._countAndFlagsBits = 58;
    v64._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
  }

  v65 = result;
  v66 = *(v3 + 20);
  v67 = (v66 + result);
  if (__CFADD__(v66, result))
  {
    goto LABEL_58;
  }

  *(v3 + 20) = v67;
  result = sub_1B0CFC1B0(v2, v16, v3 + 8, v67);
  if (v68)
  {
    v69._countAndFlagsBits = v2;
    v69._object = v16;
    result = ByteBuffer._setStringSlowpath(_:at:)(v69, v67);
  }

  v70 = *(v3 + 20);
  v71 = (v70 + result);
  if (__CFADD__(v70, result))
  {
    goto LABEL_59;
  }

  *(v3 + 20) = v71;
  v72 = v65 + result;
  if (__OFADD__(v65, result))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, v3 + 8, v71);
  if (v73)
  {
    v74._countAndFlagsBits = 58;
    v74._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v74, v71);
  }

  v75 = *(v3 + 20);
  v76 = (v75 + result);
  if (__CFADD__(v75, result))
  {
    goto LABEL_61;
  }

  *(v3 + 20) = v76;
  v77 = v72 + result;
  if (__OFADD__(v72, result))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = sub_1B0CFC1B0(v86._countAndFlagsBits, v86._object, v3 + 8, v76);
  if (v78)
  {
    result = ByteBuffer._setStringSlowpath(_:at:)(v86, v76);
  }

  v79 = *(v3 + 20);
  v36 = __CFADD__(v79, result);
  v80 = v79 + result;
  if (v36)
  {
    goto LABEL_63;
  }

  *(v3 + 20) = v80;
  v81 = v77 + result;
  if (__OFADD__(v77, result))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v52 = __OFADD__(v61, v81);
  v39 = v61 + v81;
  if (v52)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v21 = v82;
LABEL_49:
  v52 = __OFADD__(v21, v39);
  result = v21 + v39;
  if (v52)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  return result;
}

uint64_t URLCommand.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v23[8] = v1[8];
  v23[9] = v3;
  v4 = v1[11];
  v23[10] = v1[10];
  v23[11] = v4;
  v5 = v1[5];
  v23[4] = v1[4];
  v23[5] = v5;
  v6 = v1[7];
  v23[6] = v1[6];
  v23[7] = v6;
  v7 = v1[1];
  v23[0] = *v1;
  v23[1] = v7;
  v8 = v1[3];
  v23[2] = v1[2];
  v23[3] = v8;
  if (sub_1B0E3476C(v23) != 1)
  {
    v14 = sub_1B0507224(v23);
    v15 = *(v14 + 20);
    v16 = *(v14 + 32);
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v15)
    {
      sub_1B0E46C68();
      if (!v16)
      {
        return sub_1B0E46C68();
      }
    }

    else
    {
      sub_1B0E46C68();
      sub_1B0E46C88();
      if (!v16)
      {
        return sub_1B0E46C68();
      }
    }

    sub_1B0E46C68();
    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v9 = sub_1B0507224(v23);
  v10 = *(v9 + 20);
  v11 = *(v9 + 40);
  v18 = *(v9 + 56);
  v19 = *(v9 + 48);
  v20 = *(v9 + 64);
  *&v22[64] = *(v9 + 130);
  *&v22[80] = *(v9 + 146);
  v12 = *(v9 + 168);
  *&v22[94] = *(v9 + 160);
  v13 = *(v9 + 65);
  *v22 = *(v9 + 66);
  *&v22[16] = *(v9 + 82);
  *&v22[32] = *(v9 + 98);
  *&v22[48] = *(v9 + 114);
  v21 = *(v9 + 176);
  MEMORY[0x1B2728D70](1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((v10 & 1) == 0)
  {
    sub_1B0E46C88();
  }

  sub_1B0E46C88();
  if (v11)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v13)
    {
      goto LABEL_15;
    }
  }

  sub_1B0E46C68();
  MEMORY[0x1B2728D70](v19);
  if ((v20 & 1) == 0)
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v18);
    if (v12)
    {
      goto LABEL_16;
    }

    return sub_1B0E46C68();
  }

LABEL_15:
  sub_1B0E46C68();
  if (v12)
  {
LABEL_16:
    v23[14] = *&v22[38];
    v23[15] = *&v22[54];
    v23[16] = *&v22[70];
    v23[17] = *&v22[86];
    v23[12] = *&v22[6];
    v23[13] = *&v22[22];
    v25 = v21;
    v24 = v12;
    sub_1B0E46C68();
    return AuthenticatedURL.hash(into:)(a1);
  }

  return sub_1B0E46C68();
}

uint64_t URLCommand.hashValue.getter()
{
  sub_1B0E46C28();
  URLCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E3401C()
{
  sub_1B0E46C28();
  URLCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E34060(uint64_t a1)
{
  sub_1B0E46C28();
  URLCommand.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E3409C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v15, v16) & 1;
}

uint64_t _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[9];
  v100[8] = a1[8];
  v100[9] = v3;
  v4 = a1[11];
  v100[10] = a1[10];
  v100[11] = v4;
  v5 = a1[5];
  v100[4] = a1[4];
  v100[5] = v5;
  v6 = a1[7];
  v100[6] = a1[6];
  v100[7] = v6;
  v7 = a1[1];
  v100[0] = *a1;
  v100[1] = v7;
  v8 = a1[3];
  v100[2] = a1[2];
  v100[3] = v8;
  if (sub_1B0E3476C(v100) != 1)
  {
    v40 = sub_1B0507224(v100);
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    v44 = *(v40 + 20);
    v46 = *(v40 + 24);
    v45 = *(v40 + 32);
    v47 = a2[9];
    *&v76[32] = a2[8];
    *&v76[48] = v47;
    v48 = a2[11];
    *&v76[64] = a2[10];
    *&v76[80] = v48;
    v49 = a2[5];
    v74 = a2[4];
    v75 = v49;
    v50 = a2[7];
    *v76 = a2[6];
    *&v76[16] = v50;
    v51 = a2[3];
    v72 = a2[2];
    v73 = v51;
    v52 = a2[1];
    v70 = *a2;
    v71 = v52;
    v53 = sub_1B0E3476C(&v70);
    v54 = sub_1B0507224(&v70);
    if (v53 == 1)
    {
      return 0;
    }

    v55 = *(v54 + 16);
    v56 = *(v54 + 20);
    v58 = *(v54 + 24);
    v57 = *(v54 + 32);
    if ((v41 != *v54 || v42 != *(v54 + 8)) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    if (v44)
    {
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v56 & 1) != 0 || v43 != v55)
    {
      return 0;
    }

    if (v45)
    {
      if (!v57 || (v46 != v58 || v45 != v57) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v57)
    {
      return 0;
    }

    return 1;
  }

  v9 = sub_1B0507224(v100);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v94 = v9[2];
  v95 = v12;
  v92 = v10;
  v93 = v11;
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[7];
  *&v96[32] = v9[6];
  *&v96[48] = v15;
  *v96 = v13;
  *&v96[16] = v14;
  v16 = v9[8];
  v17 = v9[9];
  v18 = v9[11];
  v97 = v9[10];
  v98 = v18;
  *&v96[64] = v16;
  *&v96[80] = v17;
  v19 = a2[1];
  v99[0] = *a2;
  v99[1] = v19;
  v20 = a2[3];
  v99[2] = a2[2];
  v99[3] = v20;
  v21 = a2[5];
  v99[4] = a2[4];
  v99[5] = v21;
  v22 = a2[7];
  v99[6] = a2[6];
  v99[7] = v22;
  v23 = a2[9];
  v99[8] = a2[8];
  v99[9] = v23;
  v24 = a2[11];
  v99[10] = a2[10];
  v99[11] = v24;
  if (sub_1B0E3476C(v99) != 1)
  {
    sub_1B0507224(v99);
    return 0;
  }

  v25 = sub_1B0507224(v99);
  v26 = v25[3];
  v28 = *v25;
  v27 = v25[1];
  v88 = v25[2];
  v89 = v26;
  v86 = v28;
  v87 = v27;
  v29 = v25[7];
  v31 = v25[4];
  v30 = v25[5];
  *&v90[32] = v25[6];
  *&v90[48] = v29;
  *v90 = v31;
  *&v90[16] = v30;
  v32 = v25[11];
  v34 = v25[8];
  v33 = v25[9];
  *&v90[96] = v25[10];
  v91 = v32;
  *&v90[64] = v34;
  *&v90[80] = v33;
  v105[2] = v94;
  v105[3] = v95;
  v106 = *v96;
  v105[0] = v92;
  v105[1] = v93;
  v35 = v25[3];
  v107[2] = v25[2];
  v107[3] = v35;
  v108 = *(v25 + 32);
  v36 = v25[1];
  v107[0] = *v25;
  v107[1] = v36;
  if (!_s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(v105, v107))
  {
    return 0;
  }

  v82 = *&v96[40];
  v83 = *&v96[56];
  v84 = *&v96[72];
  v37 = v97;
  v85 = *&v96[88];
  v80 = *&v96[8];
  v81 = *&v96[24];
  v38 = *(&v97 + 1);
  v39 = v98;
  if (!*(&v97 + 1))
  {
    if (!*&v90[104])
    {
      sub_1B0E34908(&v96[8], &v70);
      sub_1B0E34908(&v90[8], &v70);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (!*&v90[104])
  {
LABEL_29:
    v72 = *&v96[40];
    v73 = *&v96[56];
    v74 = *&v96[72];
    v70 = *&v96[8];
    v71 = *&v96[24];
    v75 = __PAIR128__(v97, *&v96[88]);
    *v76 = __PAIR128__(v98, *(&v97 + 1));
    *&v76[40] = *&v90[24];
    *&v76[24] = *&v90[8];
    v77 = *&v90[88];
    *&v76[88] = *&v90[72];
    *&v76[72] = *&v90[56];
    *&v76[56] = *&v90[40];
    *&v76[16] = *(&v98 + 1);
    v78 = *&v90[104];
    v79 = v91;
    sub_1B0E34908(&v96[8], &v61);
    sub_1B0E34908(&v90[8], &v61);
    sub_1B0398EFC(&v70, &qword_1EB6E7CC0, &qword_1B0EFFF90);
    return 0;
  }

  v72 = *&v90[40];
  v73 = *&v90[56];
  v74 = *&v90[72];
  v75 = *&v90[88];
  v70 = *&v90[8];
  v71 = *&v90[24];
  *v76 = *&v90[104];
  *&v76[8] = v91;
  v101[1] = *&v96[24];
  v101[0] = *&v96[8];
  v102 = v96[88];
  v101[4] = *&v96[72];
  v101[3] = *&v96[56];
  v101[2] = *&v96[40];
  v103[1] = *&v90[24];
  v103[0] = *&v90[8];
  v104 = v90[88];
  v103[4] = *&v90[72];
  v103[3] = *&v90[56];
  v103[2] = *&v90[40];
  if ((_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v101, v103) & 1) == 0)
  {
    sub_1B0E34908(&v96[8], &v61);
    sub_1B0E34908(&v90[8], &v61);
    sub_1B0398EFC(&v70, &qword_1EB6E7CB8, &qword_1B0EFFF88);
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v61 = v80;
    v62 = v81;
    v66 = v85;
    v67 = v37;
    v68 = v38;
    v69 = v39;
    sub_1B0398EFC(&v61, &qword_1EB6E7CB8, &qword_1B0EFFF88);
    return 0;
  }

  if (*&v90[96] != v97 && (sub_1B0E46A78() & 1) == 0)
  {
    sub_1B0E34908(&v96[8], &v61);
    sub_1B0E34908(&v90[8], &v61);
    sub_1B0398EFC(&v70, &qword_1EB6E7CB8, &qword_1B0EFFF88);
LABEL_37:
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v61 = v80;
    v62 = v81;
    v66 = v85;
    v67 = v37;
    v68 = v38;
    v69 = v39;
    sub_1B0398EFC(&v61, &qword_1EB6E7CB8, &qword_1B0EFFF88);
    return 0;
  }

  if (v98 != v91)
  {
    v60 = sub_1B0E46A78();
    sub_1B0E34908(&v96[8], &v61);
    sub_1B0E34908(&v90[8], &v61);
    sub_1B0398EFC(&v70, &qword_1EB6E7CB8, &qword_1B0EFFF88);
    if (v60)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  sub_1B0E34908(&v96[8], &v61);
  sub_1B0E34908(&v90[8], &v61);
  sub_1B0398EFC(&v70, &qword_1EB6E7CB8, &qword_1B0EFFF88);
LABEL_35:
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v70 = v80;
  v71 = v81;
  *&v75 = v85;
  *(&v75 + 1) = v37;
  *v76 = v38;
  *&v76[8] = v39;
  sub_1B0398EFC(&v70, &qword_1EB6E7CB8, &qword_1B0EFFF88);
  return 1;
}

unint64_t sub_1B0E3477C()
{
  result = qword_1EB6E7CB0;
  if (!qword_1EB6E7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CB0);
  }

  return result;
}

uint64_t sub_1B0E347D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0E3482C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0;
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 192) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 33;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 512;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0;
      return result;
    }

    *(a1 + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0E348D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64) & 0x1FFLL | (a2 << 63);
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v2;
  return result;
}

uint64_t sub_1B0E34908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7CB8, &qword_1B0EFFF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double URLFetchData.init(url:data:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  *&v12[4] = WORD2(a3);
  v12[6] = BYTE6(a3);
  *&v12[8] = a4;
  *&v12[16] = a5;
  *&v12[24] = a6;
  v12[30] = BYTE6(a6);
  *&v12[28] = WORD2(a6);
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = WORD2(a3);
  v16 = BYTE6(a3);
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = BYTE6(a6);
  v20 = WORD2(a6);
  sub_1B0D3C908(&v11, &v10);
  sub_1B0D3C964(v13);
  v8 = *v12;
  *a7 = v11;
  a7[1] = v8;
  result = *&v12[15];
  *(a7 + 31) = *&v12[15];
  return result;
}

uint64_t sub_1B0E34A20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0D4B6B8(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v5 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v10;
  v11 = v4 + result;
  if (__OFADD__(v4, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (*(a1 + 24))
  {
    v12 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
    v13 = *(a1 + 32);

    v15 = sub_1B0D4B6B8(v14, v13, v12);

    result = v11 + v15;
    if (!__OFADD__(v11, v15))
    {
      return result;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v10);
  if (v16)
  {
    v17._countAndFlagsBits = 4999502;
    v17._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = result;
  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v21;
  result += v11;
  if (__OFADD__(v11, v18))
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t URLFetchData.url.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t URLFetchData.data.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t URLFetchData.hash(into:)()
{
  swift_beginAccess();
  sub_1B0E46C38();
  if (!*(v0 + 24))
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  swift_beginAccess();
  return sub_1B0E46C38();
}

uint64_t URLFetchData.hashValue.getter()
{
  sub_1B0E46C28();
  URLFetchData.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E34E10()
{
  sub_1B0E46C28();
  URLFetchData.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E34E54(uint64_t a1)
{
  sub_1B0E46C28();
  URLFetchData.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0E34E90(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s12NIOIMAPCore212URLFetchDataV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t _s12NIOIMAPCore212URLFetchDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    v4 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
        v7 = *(a2 + 32);
        v8 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

        LOBYTE(v8) = sub_1B0C2DB54(v9, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B0E34FE0()
{
  result = qword_1EB6E7CC8;
  if (!qword_1EB6E7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CC8);
  }

  return result;
}

uint64_t static URLMessageSection.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t URLMessageSection.encodedSection.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t URLMessageSection.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0E3514C()
{
  result = qword_1EB6E7CD0;
  if (!qword_1EB6E7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CD0);
  }

  return result;
}

uint64_t static UseAttribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B0E44B98();
  v6 = v5;
  if (v4 == sub_1B0E44B98() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t UseAttribute.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t UseAttribute.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0E353F4()
{
  result = qword_1EB6E7CD8;
  if (!qword_1EB6E7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CD8);
  }

  return result;
}

void UserAuthenticationMechanism.init(encodedUser:authenticationMechanism:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 && a4 == 1)
  {
    __break(1u);
  }
}

uint64_t sub_1B0E35474(unint64_t a1, void *a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v7 = *(v4 + 20);
    result = sub_1B0CFC1B0(a1, a2, v4 + 8, v7);
    if (v11)
    {
      v12._countAndFlagsBits = a1;
      v12._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v7);
    }

    v13 = result;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      goto LABEL_23;
    }

    *(v4 + 20) = v16;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
LABEL_6:
      if (a4 == 1)
      {
        result = 0;
      }

      else
      {
        v22 = *(v4 + 20);
        result = sub_1B0CFC1B0(0x3D485455413BuLL, 0xE600000000000000, v4 + 8, v22);
        if (v23)
        {
          v24._countAndFlagsBits = 0x3D485455413BLL;
          v24._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
        }

        v25 = result;
        v26 = *(v4 + 20);
        v27 = (v26 + result);
        if (__CFADD__(v26, result))
        {
          goto LABEL_25;
        }

        *(v4 + 20) = v27;
        result = sub_1B0CFC1B0(a3, a4, v4 + 8, v27);
        if (v28)
        {
          v29._countAndFlagsBits = a3;
          v29._object = a4;
          result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
        }

        v30 = *(v4 + 20);
        v15 = __CFADD__(v30, result);
        v31 = v30 + result;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v4 + 20) = v31;
        v32 = __OFADD__(v25, result);
        result += v25;
        if (v32)
        {
LABEL_27:
          __break(1u);
          return result;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x2A3D485455413BuLL, 0xE700000000000000, v4 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 0x2A3D485455413BLL;
    v19._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v4 + 20);
  v15 = __CFADD__(v20, result);
  v21 = v20 + result;
  if (v15)
  {
    goto LABEL_24;
  }

  *(v4 + 20) = v21;
LABEL_20:
  v32 = __OFADD__(v13, result);
  result += v13;
  if (v32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t UserAuthenticationMechanism.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (a5 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  else
  {
    sub_1B0E46C68();
    if (a5 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  sub_1B0E46C68();
  if (!a5)
  {
    return MEMORY[0x1B2728D70](0);
  }

  MEMORY[0x1B2728D70](1);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t UserAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (a2)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (a4 == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    if (a4)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0E35850(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v2 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  sub_1B0E46C68();
  if (!v2)
  {
    return MEMORY[0x1B2728D70](0);
  }

  MEMORY[0x1B2728D70](1);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0E3591C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (v3 == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    if (v3)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }
  }

  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore227UserAuthenticationMechanismV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a8;
      v11 = a7;
      v12 = sub_1B0E46A78();
      a3 = v8;
      a4 = v9;
      a7 = v11;
      a8 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1)
    {
      return 1;
    }
  }

  else if (a8 != 1)
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B0E35ADC()
{
  result = qword_1EB6E7CE0;
  if (!qword_1EB6E7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7CE0);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EB6E7F68 == -1)
  {
    if (qword_1EB6E7F70)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EB6E7F70)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EB6E7F60 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_1 < v11;
    if (_MergedGlobals_1 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EB6E7F54 > a3)
      {
        return 1;
      }

      if (dword_1EB6E7F54 >= a3)
      {
        return dword_1EB6E7F58 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_1 < a2;
  if (_MergedGlobals_1 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EB6E7F70;
  if (qword_1EB6E7F70)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EB6E7F70 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1B272ADF0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_1, &dword_1EB6E7F54, &dword_1EB6E7F58);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

void copyAccountsForEmailAddress_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#ACE-DB error retrieving configuration: %{public}@", buf, 0xCu);
}

void _configureMailboxCache_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Not reading cached info for %{public}@", buf, 0xCu);
}

void _MFFlagsBySettingValueForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "Unexpected flag key %@", &v2, 0xCu);
}

void sub_1B0E390FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFAppStateMonitor;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0E3AEAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void fetchArgumentsForCriterion_cold_2(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_DEFAULT, "#Warning need to handle criterion for IMAP search: %@", &v4, 0xCu);
  }
}

void rawAddress_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "wrong number of arguments (%d) to rawAddress", v2, 8u);
}

void displayName_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "wrong number of arguments (%d) to displayName", v2, 8u);
}

void _resetLocalAccountMboxCache_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B0E3E8D4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_1B0E3ED68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B0E4015C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}