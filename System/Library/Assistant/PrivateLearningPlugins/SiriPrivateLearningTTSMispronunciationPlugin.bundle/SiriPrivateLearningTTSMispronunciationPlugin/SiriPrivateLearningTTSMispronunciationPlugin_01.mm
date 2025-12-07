char *sub_15020()
{
  v1 = *(v0 + OBJC_IVAR___PhonemeString_boundary + 8);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___PhonemeString_boundary) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_324C();
    return sub_346E0();
  }

  v5 = sub_34440();
  v3 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v3;
  }

  v6 = v5;
  result = sub_2FACC(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_344B0();
      sub_34310();

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_2FACC((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = 0;
      v9[5] = 0xE000000000000000;
      sub_34450();
      --v6;
    }

    while (v6);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_151C0(uint64_t a1)
{
  sub_7734(a1, v7);
  if (!v8)
  {
    sub_76CC(v7);
    goto LABEL_16;
  }

  type metadata accessor for PhonemeString();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___PhonemeString_symbols) == *&v6[OBJC_IVAR___PhonemeString_symbols] && *(v1 + OBJC_IVAR___PhonemeString_symbols + 8) == *&v6[OBJC_IVAR___PhonemeString_symbols + 8];
  if (!v2 && (sub_34BC0() & 1) == 0 || (sub_249A0(*(v1 + OBJC_IVAR___PhonemeString_encoding), v6[OBJC_IVAR___PhonemeString_encoding]) & 1) == 0)
  {

    goto LABEL_16;
  }

  if (*(v1 + OBJC_IVAR___PhonemeString_boundary) == *&v6[OBJC_IVAR___PhonemeString_boundary] && *(v1 + OBJC_IVAR___PhonemeString_boundary + 8) == *&v6[OBJC_IVAR___PhonemeString_boundary + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_34BC0();
  }

  return v4 & 1;
}

Swift::Int sub_15378()
{
  sub_34C80();
  sub_34430();
  sub_34430();
  sub_34430();

  return sub_34C60();
}

uint64_t sub_154E0()
{
  BYTE8(v2) = 0;
  sub_34890(54);
  v3._object = 0x80000000000392A0;
  v3._countAndFlagsBits = 0xD000000000000018;
  sub_34460(v3);
  sub_34460(*(v0 + OBJC_IVAR___PhonemeString_symbols));
  v4._countAndFlagsBits = 0x69646F636E65202CLL;
  v4._object = 0xEC000000203A676ELL;
  sub_34460(v4);
  *&v2 = *(v0 + OBJC_IVAR___PhonemeString_encoding);
  sub_34980();
  v5._countAndFlagsBits = 0x61646E756F62202CLL;
  v5._object = 0xEC000000203A7972;
  sub_34460(v5);
  sub_34460(*(v0 + OBJC_IVAR___PhonemeString_boundary));
  return *(&v2 + 1);
}

char *sub_155F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___PhonemeString_boundary + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v2 + OBJC_IVAR___PhonemeString_boundary) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_324C();
    return sub_34710();
  }

  v6 = sub_34440();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  result = sub_2FACC(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    do
    {
      sub_344B0();
      sub_34310();

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_2FACC((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = 0;
      v10[5] = 0xE000000000000000;
      sub_34450();
      --v7;
    }

    while (v7);
LABEL_10:
    sub_3204(&qword_4F110, &qword_36CB0);
    sub_18498();
    v11 = sub_34320();

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_15828()
{
  v1 = 0x676E69646F636E65;
  if (*v0 != 1)
  {
    v1 = 0x797261646E756F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736C6F626D7973;
  }
}

uint64_t sub_15884@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1896C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_158AC(uint64_t a1)
{
  v2 = sub_16234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_158E8(uint64_t a1)
{
  v2 = sub_16234();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_15924(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhonemeString();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_159D0(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F2F0, &unk_36FE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_30C0(a1, a1[3]);
  sub_16234();
  sub_34CA0();
  v10[15] = 0;
  sub_34B40();
  if (!v2)
  {
    v10[14] = *(v3 + OBJC_IVAR___PhonemeString_encoding);
    v10[13] = 1;
    sub_18444();
    sub_34B70();
    v10[12] = 2;
    sub_34B40();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_15BA4(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F2D0, &qword_36FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_30C0(a1, a1[3]);
  sub_16234();
  sub_34C90();
  if (v2)
  {
    sub_3364(a1);
    type metadata accessor for PhonemeString();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = sub_34A80();
    v11 = (v1 + OBJC_IVAR___PhonemeString_symbols);
    *v11 = v9;
    v11[1] = v12;
    v18 = 1;
    sub_16288();
    sub_34AB0();
    *(v1 + OBJC_IVAR___PhonemeString_encoding) = v19;
    v19 = 2;
    v13 = sub_34A80();
    v14 = (v1 + OBJC_IVAR___PhonemeString_boundary);
    *v14 = v13;
    v14[1] = v15;
    v16 = type metadata accessor for PhonemeString();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, "init");
    (*(v6 + 8))(v8, v5);
    sub_3364(a1);
  }

  return v3;
}

void *sub_15E14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PhonemeString());
  result = sub_15BA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_15E98()
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_15F48(uint64_t a1)
{
  sub_34430();
}

Swift::Int sub_15FE4(uint64_t a1)
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

unint64_t sub_16090@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_183A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_160C0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x525341766ELL;
  v4 = 0xE500000000000000;
  v5 = 0x61706D6173;
  if (*v1 != 2)
  {
    v5 = 6844012;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x61706D617378;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_161E0()
{
  result = qword_4F2C8;
  if (!qword_4F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C8);
  }

  return result;
}

unint64_t sub_16234()
{
  result = qword_4F2D8;
  if (!qword_4F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D8);
  }

  return result;
}

unint64_t sub_16288()
{
  result = qword_4F2E0;
  if (!qword_4F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E0);
  }

  return result;
}

uint64_t sub_162F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_3204(&qword_4F100, &qword_36CA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_361D0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  v11 = v9;

  sub_2B13C(&v11);

  sub_3204(&qword_4F110, &qword_36CB0);
  sub_18498();
  sub_34320();

  sub_34430();
}

Swift::Int sub_16424()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_34C40();
  sub_162F8(v6, v1, v2, v4, v3);
  return sub_34C70();
}

Swift::Int sub_16490(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_34C40();
  sub_162F8(v7, v2, v3, v5, v4);
  return sub_34C70();
}

BOOL sub_164EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_34C40();
  sub_162F8(v12, v2, v3, v4, v5);
  v10 = sub_34C70();
  sub_34C40();
  sub_162F8(v12, v6, v7, v8, v9);
  return v10 == sub_34C70();
}

uint64_t sub_1659C()
{
  v0 = 121;
  for (i = &qword_45A88; ; i += 5)
  {
    v5 = *(i - 4);
    v4 = *(i - 3);
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_2A684(v5, v4, v7, v6);
    v12 = _swiftEmptyDictionarySingleton[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (_swiftEmptyDictionarySingleton[3] < v15)
    {
      sub_170B0(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_2A684(v5, v4, v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v16)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v21 = v10;
    sub_17AA8();
    v10 = v21;
    if (v16)
    {
LABEL_2:
      v2 = v10;

      *(_swiftEmptyDictionarySingleton[7] + 8 * v2) = v8;

      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (_swiftEmptyDictionarySingleton[6] + 32 * v10);
    *v18 = v5;
    v18[1] = v4;
    v18[2] = v7;
    v18[3] = v6;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v8;

    v19 = _swiftEmptyDictionarySingleton[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v20;
LABEL_3:
    if (!--v0)
    {
      qword_539F0 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_34BE0();
  __break(1u);
  return result;
}

uint64_t sub_16780()
{
  v0 = sub_1A9A8(&off_45890);
  sub_3204(&qword_4F318, &qword_37000);
  result = swift_arrayDestroy();
  qword_539F8 = v0;
  return result;
}

uint64_t sub_167DC()
{
  sub_3204(&unk_4F320, &qword_37008);
  sub_3204(&qword_4F520, &qword_37010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_36E40;
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  sub_34060();
  v1 = sub_1ABA8(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_53A00 = v1;
  return result;
}

uint64_t sub_16B04()
{
  sub_3204(&unk_4F340, &qword_37028);
  v0 = sub_3204(&qword_4F530, &unk_37030);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = 8 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_36E40;
  v5 = v4 + v2;
  v6 = (v5 + *(v0 + 48));
  sub_34060();
  *v6 = 0xD000000000000013;
  v6[1] = 0x80000000000392C0;
  v7 = (v5 + v1 + *(v0 + 48));
  sub_34060();
  *v7 = 0xD000000000000013;
  v7[1] = 0x80000000000392E0;
  v8 = (v5 + 2 * v1 + *(v0 + 48));
  sub_34060();
  *v8 = 0xD000000000000013;
  v8[1] = 0x8000000000039300;
  v9 = (v5 + 3 * v1 + *(v0 + 48));
  sub_34060();
  *v9 = 0xD000000000000013;
  v9[1] = 0x80000000000392C0;
  v10 = (v5 + 4 * v1 + *(v0 + 48));
  sub_34060();
  *v10 = 0xD000000000000013;
  v10[1] = 0x8000000000039320;
  v11 = (v5 + 5 * v1 + *(v0 + 48));
  sub_34060();
  *v11 = 0xD000000000000013;
  v11[1] = 0x8000000000039340;
  v12 = (v5 + 6 * v1 + *(v0 + 48));
  sub_34060();
  *v12 = 0xD000000000000013;
  v12[1] = 0x8000000000039340;
  v13 = (v5 + 7 * v1 + *(v0 + 48));
  sub_34060();
  *v13 = 0xD000000000000013;
  v13[1] = 0x8000000000039360;
  v14 = (v5 + v3 + *(v0 + 48));
  sub_34060();
  *v14 = 0xD000000000000013;
  v14[1] = 0x8000000000039380;
  v15 = sub_1ADB4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_53A08 = v15;
  return result;
}

uint64_t sub_16DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 72);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v27 = *(a2 + 64);
    v28 = *(a1 + 64);
    v26 = *(a2 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v9 = a2, v10 = sub_34BC0(), a2 = v9, (v10 & 1) != 0))
    {
      v24 = a2;
      v25 = v6;
      v11 = 0;
      for (i = v2 - 1; ; --i)
      {
        if (v4)
        {
          if (v4 == 1)
          {
            v13 = 1953718636;
          }

          else
          {
            v13 = 1801677166;
          }

          v14 = 0xE400000000000000;
          v15 = v7;
          if (v7)
          {
LABEL_15:
            if (v15 == 1)
            {
              v16 = 1953718636;
            }

            else
            {
              v16 = 1801677166;
            }

            v17 = 0xE400000000000000;
            if (v13 != v16)
            {
              goto LABEL_24;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v14 = 0xE500000000000000;
          v13 = 0x7473726966;
          v15 = v7;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        v17 = 0xE500000000000000;
        if (v13 != 0x7473726966)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v14 == v17)
        {

          v18 = v5;

          v19 = v8;

          goto LABEL_25;
        }

LABEL_24:
        v20 = sub_34BC0();

        v21 = v5;

        v22 = v8;

        if ((v20 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_25:
        sub_7F10(0, &unk_4F9E0, NSObject_ptr);
        if ((sub_34680() & 1) == 0 || v28 != v27)
        {
LABEL_33:

          return 0;
        }

        if ((v26 ^ v25))
        {
          return 0;
        }

        if (!i)
        {
          return 1;
        }

        v4 = *(a1 + v11 + 96);
        v5 = *(a1 + v11 + 104);
        v7 = *(v24 + v11 + 96);
        v8 = *(v24 + v11 + 104);
        v27 = *(v24 + v11 + 112);
        v28 = *(a1 + v11 + 112);
        v25 = *(a1 + v11 + 120);
        v26 = *(v24 + v11 + 120);
        if ((*(a1 + v11 + 80) != *(v24 + v11 + 80) || *(a1 + v11 + 88) != *(v24 + v11 + 88)) && (sub_34BC0() & 1) == 0)
        {
          return 0;
        }

        v11 += 48;
      }
    }
  }

  return 0;
}

uint64_t sub_170B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3204(&qword_4F310, &qword_36FF8);
  v6 = sub_349D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v38 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v37 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v39 = v5;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_15:
      v18 = v15 | (v8 << 6);
      v19 = *(v5 + 56);
      v20 = (*(v5 + 48) + 32 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = *(v19 + 8 * v18);
      if ((v4 & 1) == 0)
      {
      }

      sub_34C40();
      sub_3204(&qword_4F100, &qword_36CA0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_361D0;
      *(v26 + 32) = v21;
      *(v26 + 40) = v22;
      *(v26 + 48) = v23;
      *(v26 + 56) = v24;
      v41 = v26;

      sub_2B13C(&v41);

      sub_3204(&qword_4F110, &qword_36CB0);
      sub_18498();
      sub_34320();

      sub_34430();

      v27 = sub_34C70();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);

        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v7 + 48) + 32 * v13);
      *v14 = v21;
      v14[1] = v22;
      v14[2] = v23;
      v14[3] = v24;
      *(*(v7 + 56) + 8 * v13) = v25;
      ++*(v7 + 16);
      v5 = v39;
      v11 = v40;
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v37)
      {
        break;
      }

      v17 = v38[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v38, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1746C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3204(&qword_4F338, &qword_37020);
  result = sub_349D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_34C40();
      sub_34430();

      result = sub_34C70();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3204(&qword_4F330, &qword_37018);
  v30 = v4;
  result = sub_349D0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_34C40();
      sub_34430();

      result = sub_34C70();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_17AA8()
{
  v1 = v0;
  sub_3204(&qword_4F310, &qword_36FF8);
  v2 = *v0;
  v3 = sub_349C0();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_17C20()
{
  v1 = v0;
  sub_3204(&qword_4F338, &qword_37020);
  v2 = *v0;
  v3 = sub_349C0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_17D6C()
{
  v1 = v0;
  sub_3204(&qword_4F330, &qword_37018);
  v2 = *v0;
  v3 = sub_349C0();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

uint64_t sub_17EC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = 0, (sub_34BC0() & 1) != 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 1953718636;
      }

      else
      {
        v9 = 1801677166;
      }

      v10 = 0xE400000000000000;
      v11 = a6;
      if (a6)
      {
LABEL_9:
        if (v11 == 1)
        {
          v12 = 1953718636;
        }

        else
        {
          v12 = 1801677166;
        }

        v13 = 0xE400000000000000;
        if (v9 != v12)
        {
          goto LABEL_18;
        }

LABEL_16:
        if (v10 == v13)
        {
          v8 = 1;
LABEL_19:

          return v8 & 1;
        }

LABEL_18:
        v8 = sub_34BC0();
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      v9 = 0x7473726966;
      v11 = a6;
      if (a6)
      {
        goto LABEL_9;
      }
    }

    v13 = 0xE500000000000000;
    if (v9 != 0x7473726966)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return v8 & 1;
}

uint64_t sub_17FE0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if ((sub_16DFC(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    sub_7F10(0, &qword_4F380, SISchemaUUID_ptr);
    v14 = a6;
    v15 = a2;
    v16 = sub_34680();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    sub_7F10(0, &qword_4F380, SISchemaUUID_ptr);
    v17 = a7;
    v18 = a3;
    v19 = sub_34680();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      sub_7F10(0, &qword_4F380, SISchemaUUID_ptr);
      v20 = a8;
      v21 = a4;
      v22 = sub_34680();

      if (v22)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

BOOL sub_18140(uint64_t a1, uint64_t a2)
{
  if ((sub_17FE0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a2 + 32);
      v9 = *(a2 + 48);
      if (v6 == v8 && v4 == v5)
      {
        if ((v7 & 1) == (v9 & 1))
        {
          return 1;
        }
      }

      else if ((sub_34BC0() & 1) != 0 && ((v7 ^ v9) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v5;
}

uint64_t sub_181E8(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_34BC0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = 1953718636;
  if (v4 != 1)
  {
    v7 = 1801677166;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x7473726966;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = 1953718636;
  if (v5 != 1)
  {
    v10 = 1801677166;
  }

  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x7473726966;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v8 == v11 && v9 == v12)
  {
  }

  else
  {
    v13 = sub_34BC0();

    if ((v13 & 1) == 0)
    {
LABEL_29:
      v14 = 0;
      return v14 & 1;
    }
  }

  sub_7F10(0, &unk_4F9E0, NSObject_ptr);
  if ((sub_34680() & 1) == 0 || a1[4] != *(a2 + 32))
  {
    goto LABEL_29;
  }

  v14 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v14 & 1;
}

unint64_t sub_18358(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46E50;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_183A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46EB8;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_183F0()
{
  result = qword_4F2E8;
  if (!qword_4F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E8);
  }

  return result;
}

unint64_t sub_18444()
{
  result = qword_4F2F8;
  if (!qword_4F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2F8);
  }

  return result;
}

unint64_t sub_18498()
{
  result = qword_4F300;
  if (!qword_4F300)
  {
    sub_A7E8(&qword_4F110, &qword_36CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F300);
  }

  return result;
}

__n128 sub_1850C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18518(uint64_t a1, int a2)
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

uint64_t sub_18560(uint64_t result, int a2, int a3)
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

__n128 sub_185D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_185EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_18634(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_18694(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_186A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_186F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18760()
{
  result = qword_4F350;
  if (!qword_4F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F350);
  }

  return result;
}

unint64_t sub_187B8()
{
  result = qword_4F358;
  if (!qword_4F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F358);
  }

  return result;
}

unint64_t sub_18810()
{
  result = qword_4F360;
  if (!qword_4F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F360);
  }

  return result;
}

unint64_t sub_18868()
{
  result = qword_4F368;
  if (!qword_4F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F368);
  }

  return result;
}

unint64_t sub_188C0()
{
  result = qword_4F370;
  if (!qword_4F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F370);
  }

  return result;
}

unint64_t sub_18918()
{
  result = qword_4F378;
  if (!qword_4F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F378);
  }

  return result;
}

uint64_t sub_1896C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797261646E756F62 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_34BC0();

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

__n128 sub_18A84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18AB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18AF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18B48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_18B90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BEC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_34780();
    v5 = v4;
    v6 = sub_34820();
    v8 = v7;
    v9 = sub_347A0();
    sub_1B5A0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1B5A0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_34750();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1A7A8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1B5A0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_18D08()
{
  sub_3204(&qword_4F4A8, &unk_37660);
  sub_34070();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_361D0;
  sub_34060();
  result = sub_34060();
  qword_53A10 = v0;
  return result;
}

void sub_18DF4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v7 = sub_342A0();
  sub_3034(v7, qword_53A18);
  v8 = sub_34280();
  v9 = sub_345D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Start runTTSOverrider()", v10, 2u);
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
    v14 = sub_34280();
    v15 = sub_345D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "No post Siri engagement data found", v16, 2u);
    }

    goto LABEL_20;
  }

  v12 = *(a1 + 48);
  v13 = sub_19B7C(*(a1 + 32), v11);
  if (v3 || !v13)
  {
    goto LABEL_21;
  }

  v17 = *(a2 + 16);
  v18 = v13;
  if (!sub_1B17C(v13, *a2, *(a2 + 8), *(a2 + 16)))
  {
    v21 = v18;
    v14 = sub_34280();
    v22 = sub_345D0();

    if (os_log_type_enabled(v14, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v91 = v24;
      *v23 = 136315138;
      v25 = [v21 identifier];
      v26 = sub_343B0();
      v28 = v27;

      v29 = sub_22960(v26, v28, &v91);

      *(v23 + 4) = v29;
      v30 = "ASR contact name does not match the contact name, skipping correcting mispronunciation for contact ID: %s";
LABEL_18:
      _os_log_impl(&dword_0, v14, v22, v30, v23, 0xCu);
      sub_3364(v24);
    }

LABEL_19:

LABEL_20:
LABEL_21:
    sub_19820();
    return;
  }

  if ((sub_1A0BC(v18, v12 & 1) & 1) == 0)
  {
    v21 = v18;
    v14 = sub_34280();
    v22 = sub_345D0();

    if (os_log_type_enabled(v14, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v91 = v24;
      *v23 = 136315138;
      v31 = [v21 identifier];
      v32 = sub_343B0();
      v34 = v33;

      v35 = sub_22960(v32, v34, &v91);

      *(v23 + 4) = v35;
      v30 = "Pronunciation is not overridable, skipping correcting mispronunciation for contact ID: %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v19 = *(a2 + 24);
  v20 = sub_19908(v19);
  v36 = v20;
  if (!v20)
  {
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_34890(51);
    v93._countAndFlagsBits = 0x74276E646C756F43;
    v93._object = 0xED00002070616D20;
    sub_34460(v93);
    v67 = [v19 description];
    v68 = sub_343B0();
    v70 = v69;

    v94._countAndFlagsBits = v68;
    v94._object = v70;
    sub_34460(v94);

    v95._countAndFlagsBits = 0xD00000000000001BLL;
    v95._object = 0x8000000000039460;
    sub_34460(v95);
    v96._countAndFlagsBits = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    sub_34460(v96);

    v97._countAndFlagsBits = 0x656C61636F6C20;
    v97._object = 0xE700000000000000;
    sub_34460(v97);
    sub_1B508();
    swift_allocError();
    *v71 = 0;
    v71[1] = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_21;
  }

  v37 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  v38 = sub_1BCFC(v17, v20, v4 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale);
  if (!v38)
  {
    sub_34890(40);

    v91 = 0xD000000000000010;
    v92 = 0x8000000000039480;
    v72 = [v19 description];
    v73 = sub_343B0();
    v75 = v74;

    v98._countAndFlagsBits = v73;
    v98._object = v75;
    sub_34460(v98);

    v99._countAndFlagsBits = 0xD000000000000016;
    v99._object = 0x80000000000394A0;
    sub_34460(v99);
    sub_1B508();
    swift_allocError();
    *v76 = 0xD000000000000010;
    v76[1] = 0x8000000000039480;
LABEL_34:
    swift_willThrow();

    goto LABEL_21;
  }

  v40 = v38;
  v88 = v39;
  sub_23E6C(v38, v39);
  if (!v41)
  {

    sub_1B508();
    swift_allocError();
    *v77 = 0xD000000000000028;
    v77[1] = 0x80000000000394C0;
    goto LABEL_34;
  }

  v87 = v40;
  v42 = v18;
  v43 = sub_34280();
  v44 = sub_345D0();

  buf = v44;
  v84 = v37;
  v89 = v42;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v91 = v80;
    *v45 = 136315138;
    log = v43;
    v46 = [v42 identifier];
    v47 = sub_343B0();
    v49 = v48;

    v50 = sub_22960(v47, v49, &v91);
    v42 = v89;

    *(v45 + 4) = v50;
    v43 = log;
    _os_log_impl(&dword_0, log, buf, "Updating phonemeData for contact: %s", v45, 0xCu);
    sub_3364(v80);
  }

  v51 = [objc_allocWithZone(CNSaveRequest) init];
  v52 = [v42 selfOrMutableCopy];
  v53 = sub_34380();

  [v52 setPhonemeData:v53];

  v85 = v52;
  [v51 updateContact:v52];
  v54 = *(v4 + 16);
  v91 = 0;
  v86 = v51;
  v55 = [v54 executeSaveRequest:v51 error:&v91];
  v56 = v91;
  if (!v55)
  {
    v78 = v91;

    sub_33AC0();

    swift_willThrow();
    goto LABEL_21;
  }

  v57 = v89;
  v58 = v56;
  v59 = sub_34280();
  v60 = sub_345D0();

  if (os_log_type_enabled(v59, v60))
  {
    bufa = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = v90;
    *bufa = 136315138;
    v61 = [v57 identifier];
    v62 = sub_343B0();
    v81 = v60;
    v64 = v63;

    v65 = sub_22960(v62, v64, &v91);

    *(bufa + 4) = v65;
    _os_log_impl(&dword_0, v59, v81, "Finished updating phonemeData for contact: %s", bufa, 0xCu);
    sub_3364(v90);
  }

  v66 = [v85 identifier];
  sub_343B0();

  sub_1C100(v87, v88, v4 + v84, v17);

  sub_19820();
}

void sub_19820()
{
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v0 = sub_342A0();
  sub_3034(v0, qword_53A18);
  oslog = sub_34280();
  v1 = sub_345D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "End runTTSOverrider()", v2, 2u);
  }
}

uint64_t sub_19908(char *a1)
{
  if (qword_4E588 != -1)
  {
    swift_once();
  }

  if (sub_24AC0(v1 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale, qword_53A10))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  sub_30C0((v1 + 24), *(v1 + 48));
  result = sub_29BA4(a1, v4, 1);
  if (!v2)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v6 = result;
      if (sub_347D0() == 1)
      {
LABEL_9:
        v7 = sub_18BEC(v6);

        return v7;
      }
    }

    else
    {
      v6 = result;
      if (*(result + 16) == 1)
      {
        goto LABEL_9;
      }
    }

    sub_34890(47);
    v8 = [a1 description];
    v9 = sub_343B0();
    v11 = v10;

    v16._countAndFlagsBits = v9;
    v16._object = v11;
    sub_34460(v16);

    v17._object = 0x8000000000039440;
    v17._countAndFlagsBits = 0xD00000000000001ELL;
    sub_34460(v17);
    sub_34980();
    v18._countAndFlagsBits = 0x656D656E6F687020;
    v18._object = 0xEB00000000203A73;
    sub_34460(v18);
    type metadata accessor for PhonemeString();
    sub_1B55C(&qword_4F4D8, &protocol conformance descriptor for NSObject);
    v12 = sub_34590();
    v14 = v13;

    v19._countAndFlagsBits = v12;
    v19._object = v14;
    sub_34460(v19);

    sub_1B508();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

id sub_19B7C(uint64_t a1, void *a2)
{
  sub_3204(&unk_4F4B0, &qword_36C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_37540;
  v5 = CNContactPhonemeDataKey;
  *(v4 + 32) = CNContactPhonemeDataKey;
  *(v4 + 40) = CNContactGivenNameKey;
  *(v4 + 48) = CNContactFamilyNameKey;
  *(v4 + 56) = CNContactNicknameKey;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = CNContactGivenNameKey;
  v9 = CNContactFamilyNameKey;
  v10 = a1;
  v11 = a2;
  v12 = CNContactNicknameKey;
  *(v4 + 64) = [v6 descriptorForRequiredKeysForStyle:0];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_37550;
  v14 = CNContactPronunciationGivenNameKey;
  v15 = CNContactPronunciationFamilyNameKey;
  *(inited + 32) = CNContactPronunciationGivenNameKey;
  *(inited + 40) = v15;
  v16 = v14;
  v17 = v15;
  sub_24BCC(inited);
  v18 = objc_opt_self();
  sub_3204(&qword_4F100, &qword_36CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_35920;
  *(v19 + 32) = v10;
  *(v19 + 40) = a2;

  isa = sub_344F0().super.isa;

  v21 = [v18 predicateForContactsWithIdentifiers:isa];

  v22 = *(v42 + 16);
  sub_3204(&qword_4F4C0, &unk_37670);
  v23 = sub_344F0().super.isa;

  v43 = 0;
  v24 = [v22 unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:&v43];

  v25 = v43;
  if (!v24)
  {
    v35 = v43;
    sub_33AC0();

    goto LABEL_7;
  }

  sub_1B4BC();
  v26 = sub_34500();
  v27 = v25;

  if (v26 >> 62)
  {
    if (sub_349A0())
    {
      if (sub_349A0() >= 2)
      {
        goto LABEL_5;
      }

LABEL_10:
      if ((v26 & 0xC000000000000001) != 0)
      {
        v11 = sub_348C0();
      }

      else
      {
        if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
        }

        v11 = *(v26 + 32);
      }

      return v11;
    }
  }

  else
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      if (v28 >= 2)
      {
LABEL_5:

        v43 = 0;
        v44 = 0xE000000000000000;
        sub_34890(40);
        v29 = sub_34BB0();
        v31 = v30;

        v43 = v29;
        v44 = v31;
        v45._object = 0x8000000000039410;
        v45._countAndFlagsBits = 0xD000000000000023;
        sub_34460(v45);
        v46._countAndFlagsBits = v10;
        v46._object = v11;
        sub_34460(v46);
        v47._countAndFlagsBits = 46;
        v47._object = 0xE100000000000000;
        sub_34460(v47);
        v32 = v43;
        v33 = v44;
        sub_1B508();
        swift_allocError();
        *v34 = v32;
        v34[1] = v33;
LABEL_7:
        swift_willThrow();

        return v11;
      }

      goto LABEL_10;
    }
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v36 = sub_342A0();
  sub_3034(v36, qword_53A18);

  v37 = sub_34280();
  v38 = sub_345E0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_22960(v10, v11, &v43);
    _os_log_impl(&dword_0, v37, v38, "No matching contacts found for overriding for %s", v39, 0xCu);
    sub_3364(v40);
  }

  return 0;
}

uint64_t sub_1A0BC(void *a1, char a2)
{
  if (a2 & 1) != 0 || (*(v2 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_isCurareRun))
  {
    v4 = sub_1A284(a1);
    v5 = [a1 pronunciationGivenName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_343B0();
      v9 = v8;

      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
      v9 = 0xE000000000000000;
    }

    v11 = [a1 pronunciationFamilyName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_343B0();
      v15 = v14;

      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
      v15 = 0xE000000000000000;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v17 = v10;
    }

    v18 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v18 = v16;
    }

    v19 = (v18 == 0) & v4;
    if (v17)
    {
      return 0;
    }

    else
    {
      return v19;
    }
  }

  else
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v21 = sub_342A0();
    sub_3034(v21, qword_53A18);
    v22 = sub_34280();
    v23 = sub_345D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "The user-initiated conversation wasn't a success", v24, 2u);
    }

    return 0;
  }
}

uint64_t sub_1A284(void *a1)
{
  v3 = sub_235A8(a1);
  if (!v3)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v6 = sub_342A0();
    sub_3034(v6, qword_53A18);
    v7 = a1;
    v8 = sub_34280();
    v9 = sub_345E0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v7 identifier];
      v13 = sub_343B0();
      v15 = v14;

      v16 = sub_22960(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_0, v8, v9, "Couldn't parse phonemeData for contact: %s", v10, 0xCu);
      sub_3364(v11);
    }

    return 1;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  if (qword_4E588 != -1)
  {
    swift_once();
  }

  if (sub_24AC0(v1 + v5, qword_53A10))
  {

    return 1;
  }

  v18 = sub_D224(v1 + v5, v4);

  return v18 & 1;
}

uint64_t sub_1A494()
{
  sub_3364((v0 + 24));
  v1 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  v2 = sub_34070();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSContactOverrider(uint64_t a1)
{
  result = qword_4F3C8;
  if (!qword_4F3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A594(uint64_t a1)
{
  result = sub_34070();
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

BOOL sub_1A678()
{
  v1 = [v0 pronunciationGivenName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_343B0();
    v5 = v4;

    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = [v0 pronunciationFamilyName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_343B0();
    v11 = v10;

    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v13 = v6;
  }

  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v12;
  }

  v15 = v14 == 0;
  return !v13 && v15;
}

uint64_t sub_1A75C(void *a1, uint64_t *a2)
{
  v2 = (*a1 + OBJC_IVAR___PhonemeString_symbols);
  if (*v2 == *(*a2 + OBJC_IVAR___PhonemeString_symbols) && v2[1] == *(*a2 + OBJC_IVAR___PhonemeString_symbols + 8))
  {
    return 0;
  }

  else
  {
    return sub_34BC0();
  }
}

void sub_1A7A8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_347F0();
      type metadata accessor for PhonemeString();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for PhonemeString();
    if (sub_347B0() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_347C0();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_34670(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_34680();

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

unint64_t sub_1A9A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3204(&qword_4F518, &unk_376A8);
    v3 = sub_349E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2A60C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3204(&qword_4F510, &qword_376A0);
    v3 = sub_349E0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2A60C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1ABA8(uint64_t a1)
{
  v2 = sub_3204(&qword_4F520, &qword_37010);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_3204(&qword_4F528, &unk_376B8);
    v7 = sub_349E0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_1CA30(v9, v5, &qword_4F520, &qword_37010);
      result = sub_2A7B0(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_34070();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1ADB4(uint64_t a1)
{
  v2 = sub_3204(&qword_4F530, &unk_37030);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_3204(&qword_4F538, &qword_376C8);
    v7 = sub_349E0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CA30(v9, v5, &qword_4F530, &unk_37030);
      result = sub_2A7B0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_34070();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AFA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_3204(&qword_4F4F8, &qword_37690);
  v3 = sub_349E0();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_1CA30(&v31, v30, &qword_4F4F0, &qword_37688);
  result = sub_2A60C(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 168);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 120 * result;
    v15 = v32;
    v16 = v33;
    v17 = v35;
    *(v14 + 32) = v34;
    *(v14 + 48) = v17;
    *v14 = v15;
    *(v14 + 16) = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    *(v14 + 112) = v39;
    *(v14 + 80) = v19;
    *(v14 + 96) = v20;
    *(v14 + 64) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 136);
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = *(v12 + 128);
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_1CA30(&v31, v30, &qword_4F4F0, &qword_37688);
    result = sub_2A60C(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B17C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v32 = sub_33AB0();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 *off_47EA8[a4]];
  v12 = sub_343B0();
  v14 = v13;

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v15 = sub_342A0();
  sub_3034(v15, qword_53A18);

  v16 = sub_34280();
  v17 = sub_345D0();

  v18 = os_log_type_enabled(v16, v17);
  v31 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_22960(a2, a3, &v35);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_22960(v12, v14, &v35);
    _os_log_impl(&dword_0, v16, v17, "In doesContactNameMatch() ASR contact name: %s, contact name: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v20 = v14;
  v35 = a2;
  v36 = a3;

  sub_33A80();
  sub_324C();
  v21 = sub_34700();
  v23 = v22;
  v24 = *(v8 + 8);
  v25 = v32;
  v24(v10, v32);

  v35 = v21;
  v36 = v23;
  v33 = v31;
  v34 = v20;
  sub_33A80();
  v26 = sub_34700();
  v28 = v27;
  v24(v10, v25);

  v33 = v26;
  v34 = v28;
  v29 = sub_34720();

  return v29 == 0;
}

unint64_t sub_1B4BC()
{
  result = qword_4F4C8;
  if (!qword_4F4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F4C8);
  }

  return result;
}

unint64_t sub_1B508()
{
  result = qword_4F4D0;
  if (!qword_4F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4D0);
  }

  return result;
}

uint64_t sub_1B55C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhonemeString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1B5AC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v58 = a1;
  v9 = sub_33B30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + OBJC_IVAR___PhonemeString_symbols);
  v14 = *(a2 + OBJC_IVAR___PhonemeString_symbols + 8);
  v82 = 1;
  sub_3204(&unk_4F500, &qword_37698);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_35920;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = v13;
  *(v15 + 56) = v14;
  *(v15 + 64) = 0;
  *(v15 + 72) = v82;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  v57 = v14;
  swift_bridgeObjectRetain_n();
  sub_33B20();
  sub_33B10();
  v17 = round(v16 * 1000.0);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v17 < 9.22337204e18)
  {
    v18 = v17;
    (*(v10 + 8))(v12, v9);
    v19 = sub_235A8(v5);
    v56 = v13;
    v55 = v18;
    if (!v19)
    {
      goto LABEL_14;
    }

    v12 = v19;
    if (qword_4E588 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  swift_once();
LABEL_6:
  if (!sub_24AC0(a3, qword_53A10) && (sub_D224(a3, v12) & 1) == 0)
  {

    goto LABEL_14;
  }

  sub_D0FC(v12, v70);

  v20 = v70[0];
  if (v70[0] == 1)
  {
LABEL_14:
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v64 = 0;
    v68 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v59 = 0;
    v63 = 0;
    v20 = 0;
    v22 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_17;
  }

  v22 = v70[1];
  v21 = v70[2];
  v23 = v70[3];
  v24 = v71;
  v62 = v72;
  v61 = v73;
  v60 = v74;
  v59 = v75;
  v63 = v76;
  v66 = v78;
  v67 = v77;
  v65 = v79;
  v64 = v80;
  v68 = v81;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v25 = sub_342A0();
  sub_3034(v25, qword_53A18);
  v26 = v5;
  v27 = sub_34280();
  v28 = sub_345D0();

  v53 = v28;
  v54 = v27;
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v29;
    v52 = swift_slowAlloc();
    v69 = v52;
    *v29 = 136315138;
    v30 = [v26 identifier];
    v31 = sub_343B0();
    v33 = v32;

    v34 = sub_22960(v31, v33, &v69);

    v35 = v51;
    *(v51 + 1) = v34;
    v36 = v54;
    _os_log_impl(&dword_0, v54, v53, "Found existing phonemeData for contact: %s", v35, 0xCu);
    sub_3364(v52);
  }

  else
  {
  }

  sub_1C9F0(v20, v22, v21);
  sub_1C9F0(v62, v61, v60);
  sub_1C9F0(v67, v66, v65);
  sub_A948(v70, &qword_4F4E0, &unk_36430);
LABEL_17:
  v37 = v58;
  if (!v58)
  {

    goto LABEL_23;
  }

  v38 = sub_34BC0();

  if (v38)
  {
LABEL_23:
    result = sub_FF98(v20, v22, v21);
    v24 = 0;
    v20 = v15;
    v22 = v56;
    v21 = v57;
    v23 = v55;
    v46 = v63;
    v15 = v62;
    v45 = v61;
    v47 = v60;
    v48 = &v84;
LABEL_26:
    v44 = *(v48 - 32);
    goto LABEL_27;
  }

  if (v37 != 2)
  {

    v40 = v61;
    goto LABEL_25;
  }

  v39 = sub_34BC0();

  v40 = v61;
  if (v39)
  {
LABEL_25:
    result = sub_FF98(v62, v40, v60);
    v46 = 0;
    v45 = v56;
    v47 = v57;
    v48 = &v83;
    goto LABEL_26;
  }

  v41 = v61;
  v42 = v59;
  sub_FF98(v67, v66, v65);

  v44 = v42;
  v45 = v41;
  v68 = 0;
  v67 = v15;
  v66 = v56;
  v65 = v57;
  v64 = v55;
  v46 = v63;
  v15 = v62;
  v47 = v60;
LABEL_27:
  *a4 = v20;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 39) = 0;
  *(a4 + 37) = 0;
  *(a4 + 33) = 0;
  *(a4 + 40) = v15;
  *(a4 + 48) = v45;
  *(a4 + 56) = v47;
  *(a4 + 64) = v44;
  *(a4 + 72) = v46;
  *(a4 + 79) = 0;
  *(a4 + 77) = 0;
  *(a4 + 73) = 0;
  v49 = v66;
  *(a4 + 80) = v67;
  *(a4 + 88) = v49;
  v50 = v64;
  *(a4 + 96) = v65;
  *(a4 + 104) = v50;
  *(a4 + 112) = v68;
  return result;
}

unint64_t sub_1BCFC(int a1, uint64_t a2, uint64_t a3)
{
  sub_1B5AC(a1, a2, a3, &v34);
  v4 = v34;
  if (v34 == 1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v5 = sub_342A0();
    sub_3034(v5, qword_53A18);
    v6 = v3;
    v7 = sub_34280();
    v8 = sub_345E0();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v41 = v10;
    *v9 = 136315138;
    v11 = [v6 identifier];
    v12 = sub_343B0();
    v14 = v13;

    v15 = sub_22960(v12, v14, &v41);

    *(v9 + 4) = v15;
    v16 = "Unable to build phonemeData for contact: %s";
    goto LABEL_12;
  }

  v44 = v38;
  v45 = v39;
  v46[0] = v40[0];
  *(v46 + 9) = *(v40 + 9);
  v41 = v35;
  v42 = v36;
  v43 = v37;
  v17 = [objc_opt_self() stringFromContact:v3 style:0];
  if (v17)
  {
    v18 = v17;
    v19 = sub_343B0();
    v21 = v20;

    sub_EA90(v19, v21);

    sub_3204(&qword_4F4E8, &qword_37680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_35920;
    *(inited + 32) = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    *(inited + 40) = v23;
    *(inited + 48) = v4;
    *(inited + 104) = v44;
    *(inited + 120) = v45;
    *(inited + 136) = v46[0];
    *(inited + 145) = *(v46 + 9);
    *(inited + 56) = v41;
    *(inited + 72) = v42;
    *(inited + 88) = v43;
    v24 = sub_1AFA4(inited);
    swift_setDeallocating();
    sub_A948(inited + 32, &qword_4F4F0, &qword_37688);
    return v24;
  }

  sub_A948(&v34, &qword_4F4E0, &unk_36430);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v26 = sub_342A0();
  sub_3034(v26, qword_53A18);
  v27 = v3;
  v7 = sub_34280();
  v8 = sub_345E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v28 = [v27 identifier];
    v29 = sub_343B0();
    v31 = v30;

    v32 = sub_22960(v29, v31, &v33);

    *(v9 + 4) = v32;
    v16 = "Unable to get full name for contact %s";
LABEL_12:
    _os_log_impl(&dword_0, v7, v8, v16, v9, 0xCu);
    sub_3364(v10);
  }

LABEL_13:

  return 0;
}

id sub_1C100(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92 = a4;
  v7 = sub_34070();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E588 != -1)
  {
    swift_once();
  }

  v11 = qword_53A10;
  v12 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  if (sub_24AC0(v4 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale, qword_53A10))
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v91 = v13;
  v14 = sub_24AC0(v4 + v12, v11);
  if (v14)
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
  p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
  if (!*(a1 + 16))
  {

    goto LABEL_21;
  }

  v86 = v15;
  v20 = sub_2A60C(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_21:

    v42 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  v85 = v16;
  v75 = v10;
  v77 = v8;
  v81 = a3;
  v84 = v7;
  v23 = *(a1 + 56) + 120 * v20;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v28 = *(v23 + 32);
  v29 = *(v23 + 40);
  v30 = *(v23 + 48);
  v32 = *(v23 + 56);
  v31 = *(v23 + 64);
  v88 = *(v23 + 72);
  v33 = *(v23 + 80);
  v89 = *(v23 + 88);
  v90 = v31;
  v34 = *(v23 + 104);
  v87 = *(v23 + 96);
  v73 = *(v23 + 112);
  v93 = v25;
  v82 = v26;
  v83 = v24;
  v80 = v27;
  v79 = v30;
  v78 = v28;
  v76 = v32;
  v74 = v34;
  if (!v25)
  {
    sub_1C9F0(0, v24, v26);
    sub_1C9F0(v29, v30, v32);
    v41 = v87;
    sub_1C9F0(v33, v89, v87);
    v39 = 0;
LABEL_25:
    v8 = v77;
LABEL_26:
    v10 = v75;
    goto LABEL_27;
  }

  v35 = v32;
  v36 = v24;
  sub_1C9F0(v93, v24, v26);
  v71 = v29;
  sub_1C9F0(v29, v30, v35);
  v72 = v33;
  v37 = v87;
  sub_1C9F0(v33, v89, v87);
  sub_1C9F0(v93, v36, v26);

  if (!v93[2])
  {
    v41 = v37;

    v39 = 0;
    v33 = v72;
    v29 = v71;
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    goto LABEL_25;
  }

  v38 = v93[6];
  v39 = v93[7];

  v8 = v77;
  if (!v39)
  {
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    v41 = v87;
    v33 = v72;
    v29 = v71;
    goto LABEL_26;
  }

  p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
  if (v92)
  {
    v40 = sub_34BC0();

    v33 = v72;
    v29 = v71;
    v10 = v75;
    if ((v40 & 1) == 0)
    {

      v39 = 0;
      v41 = v87;
      goto LABEL_27;
    }
  }

  else
  {

    v33 = v72;
    v29 = v71;
    v10 = v75;
  }

  v53 = type metadata accessor for PhonemeString();
  v54 = objc_allocWithZone(v53);
  v55 = &v54[OBJC_IVAR___PhonemeString_symbols];
  *v55 = v38;
  v55[1] = v39;
  v54[OBJC_IVAR___PhonemeString_encoding] = v91;
  v56 = &v54[OBJC_IVAR___PhonemeString_boundary];
  v57 = v85;
  *v56 = v86;
  v56[1] = v57;
  v94.receiver = v54;
  v94.super_class = v53;

  v39 = objc_msgSendSuper2(&v94, "init");
  v41 = v87;
LABEL_27:
  v77 = v39;
  if (!v29)
  {
    goto LABEL_35;
  }

  if (!v29[2])
  {

LABEL_35:

    v43 = 0;
    goto LABEL_45;
  }

  v75 = v29[6];
  v52 = v29[7];

  if (v52)
  {
    if (v92)
    {
      p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
      if (v92 == 1)
      {

LABEL_42:
        v59 = type metadata accessor for PhonemeString();
        v60 = objc_allocWithZone(v59);
        v61 = &v60[OBJC_IVAR___PhonemeString_symbols];
        *v61 = v75;
        v61[1] = v52;
        v60[OBJC_IVAR___PhonemeString_encoding] = v91;
        v62 = &v60[OBJC_IVAR___PhonemeString_boundary];
        v63 = v85;
        *v62 = v86;
        v62[1] = v63;
        v95.receiver = v60;
        v95.super_class = v59;
        v43 = objc_msgSendSuper2(&v95, p_weak_ivar_lyt[387]);
        goto LABEL_44;
      }
    }

    else
    {
      p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    }

    v58 = sub_34BC0();

    if ((v58 & 1) == 0)
    {

      v43 = 0;
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v43 = 0;
  p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
LABEL_44:
  v41 = v87;
LABEL_45:
  v64 = v89;
  sub_1C9F0(v33, v89, v41);
  sub_FF98(v93, v83, v82);
  sub_FF98(v29, v79, v76);
  sub_FF98(v33, v64, v41);
  if (v33)
  {

    v44 = v77;
    a3 = v81;
    if (v33[2])
    {
      v93 = v33[6];
      v42 = v33[7];

      if (v42)
      {
        v7 = v84;
        if (v92 && v92 != 1)
        {
        }

        else
        {
          v65 = sub_34BC0();

          if ((v65 & 1) == 0)
          {

            v42 = 0;
            goto LABEL_22;
          }
        }

        v66 = type metadata accessor for PhonemeString();
        v67 = objc_allocWithZone(v66);
        v68 = &v67[OBJC_IVAR___PhonemeString_symbols];
        *v68 = v93;
        v68[1] = v42;
        v67[OBJC_IVAR___PhonemeString_encoding] = v91;
        v69 = &v67[OBJC_IVAR___PhonemeString_boundary];
        *v69 = 0;
        v69[1] = 0xE000000000000000;
        v96.receiver = v67;
        v96.super_class = v66;
        v42 = objc_msgSendSuper2(&v96, p_weak_ivar_lyt[387]);
        goto LABEL_22;
      }
    }

    else
    {

      v42 = 0;
    }

    v7 = v84;
  }

  else
  {
    v42 = 0;
    v7 = v84;
    v44 = v77;
    a3 = v81;
  }

LABEL_22:
  (*(v8 + 2))(v10, a3, v7);
  v45 = type metadata accessor for CorrectedPronunciation();
  v46 = objc_allocWithZone(v45);
  v47 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
  v48 = &v46[OBJC_IVAR___CorrectedPronunciation_locale];
  *v48 = v47;
  v48[1] = v49;
  *&v46[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString] = v44;
  *&v46[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString] = v43;
  *&v46[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString] = v42;
  v97.receiver = v46;
  v97.super_class = v45;
  v50 = objc_msgSendSuper2(&v97, p_weak_ivar_lyt[387]);
  (*(v8 + 1))(v10, v7);
  return v50;
}

uint64_t sub_1C9F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3204(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CACC(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = sub_33B90();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = sub_33DD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v15 = a2 + 16;
  v14 = v16;
  if (!v16)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v29 = sub_342A0();
    sub_3034(v29, qword_53A18);
    (*(v4 + 16))(v7, v59, v3);
    v30 = sub_34280();
    v31 = sub_345E0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62 = v33;
      *v32 = 136315138;
      sub_A8F0();
      v34 = sub_34BB0();
      v36 = v35;
      (*(v4 + 8))(v7, v3);
      v37 = sub_22960(v34, v36, &v62);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_0, v30, v31, "Conversation %s has 0 turns in it", v32, 0xCu);
      sub_3364(v33);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return 2;
  }

  v58 = v3;
  v17 = *(v15 + 16 * v14 + 8);
  v18 = *(v17 + 16);
  if (v18)
  {
    v56 = v9;
    v57 = v4;
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v60 = *(v19 + 56);
    v61 = v20;
    v55 = v17;

    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      v61(v13, v21, v10);
      v23 = sub_33DC0();
      v24 = [v23 intent];

      (*(v19 - 8))(v13, v10);
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        break;
      }

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        goto LABEL_9;
      }

LABEL_5:
      v21 += v60;
      if (!--v18)
      {

        v9 = v56;
        v4 = v57;
        goto LABEL_19;
      }
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_13008(0, *(v22 + 2) + 1, 1, v22);
    }

    v28 = *(v22 + 2);
    v27 = *(v22 + 3);
    if (v28 >= v27 >> 1)
    {
      v22 = sub_13008((v27 > 1), v28 + 1, 1, v22);
    }

    *(v22 + 2) = v28 + 1;
    v22[v28 + 32] = v25 == 0;
    goto LABEL_5;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_19:

  v39 = sub_2EA48(v38);

  v40 = *(v39 + 16);

  if (v40 > 1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v41 = sub_342A0();
    sub_3034(v41, qword_53A18);
    v42 = v58;
    (*(v4 + 16))(v9, v59, v58);
    v43 = sub_34280();
    v44 = sub_345E0();
    if (!os_log_type_enabled(v43, v44))
    {

      (*(v4 + 8))(v9, v42);
      if (*(v22 + 2))
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v45 = swift_slowAlloc();
    v46 = v9;
    v47 = swift_slowAlloc();
    v62 = v47;
    *v45 = 136315138;
    sub_A8F0();
    v48 = sub_34BB0();
    v49 = v4;
    v51 = v50;
    (*(v49 + 8))(v46, v42);
    v52 = sub_22960(v48, v51, &v62);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_0, v43, v44, "Conversation %s is linked with multiple domains", v45, 0xCu);
    sub_3364(v47);
  }

  if (!*(v22 + 2))
  {
LABEL_28:

    return 2;
  }

LABEL_25:
  v53 = v22[32];

  return v53;
}

uint64_t sub_1D114(uint64_t a1, uint64_t a2, int a3)
{
  v122 = a3;
  v124 = a1;
  v4 = sub_33B90();
  v5 = *(v4 - 8);
  v125 = v4;
  v126 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v123 = &v116 - v10;
  v11 = __chkstk_darwin(v9);
  v119 = &v116 - v12;
  __chkstk_darwin(v11);
  v118 = &v116 - v13;
  v14 = sub_34110();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3204(&qword_4F5F0, &unk_37730);
  __chkstk_darwin(v18 - 8);
  v20 = &v116 - v19;
  v21 = sub_340D0();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v121 = &v116 - v27;
  v28 = __chkstk_darwin(v26);
  v120 = &v116 - v29;
  __chkstk_darwin(v28);
  v31 = &v116 - v30;
  sub_1DDAC(a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1DE1C(v20);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v32 = sub_342A0();
    sub_3034(v32, qword_53A18);
    v34 = v125;
    v33 = v126;
    (*(v126 + 16))(v8, v124, v125);
    v35 = sub_34280();
    v36 = sub_345E0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v127 = v38;
      *v37 = 136315138;
      sub_A8F0();
      v39 = sub_34BB0();
      v41 = v40;
      (*(v33 + 8))(v8, v34);
      v42 = sub_22960(v39, v41, &v127);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v35, v36, "[%s]: No event found for extraction of features", v37, 0xCu);
      sub_3364(v38);
    }

    else
    {

      (*(v33 + 8))(v8, v34);
    }

    return 0;
  }

  v117 = v22;
  (*(v22 + 32))(v31, v20, v21);
  v43 = v31;
  v44 = sub_340C0();
  v45 = sub_31980(v44);

  v46 = v21;
  v47 = v125;
  v48 = v126;
  if (!v45)
  {
    goto LABEL_17;
  }

  if (!*(v45 + 16))
  {

    goto LABEL_17;
  }

  (*(v15 + 16))(v17, v45 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);

  v49 = sub_34100();
  v51 = v50;
  (*(v15 + 8))(v17, v14);
  if (!v51)
  {
LABEL_17:
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v79 = sub_342A0();
    sub_3034(v79, qword_53A18);
    v80 = v123;
    (*(v48 + 16))(v123, v124, v47);
    v81 = v47;
    v82 = v117;
    (*(v117 + 16))(v25, v43, v46);
    v83 = sub_34280();
    v84 = sub_345D0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v122 = v84;
      v121 = v46;
      v86 = v85;
      v87 = swift_slowAlloc();
      v124 = v43;
      v127 = v87;
      *v86 = 136315394;
      sub_A8F0();
      v88 = sub_34BB0();
      v90 = v89;
      (*(v48 + 8))(v80, v81);
      v91 = sub_22960(v88, v90, &v127);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2080;
      v92 = sub_340B0();
      v94 = v93;
      v95 = *(v82 + 8);
      v96 = v121;
      v95(v25, v121);
      v97 = sub_22960(v92, v94, &v127);

      *(v86 + 14) = v97;
      _os_log_impl(&dword_0, v83, v122, "[%s]: Failed to get call contact ID for core duet event: %s", v86, 0x16u);
      swift_arrayDestroy();

      v95(v124, v96);
    }

    else
    {

      v98 = *(v82 + 8);
      v98(v25, v46);
      (*(v48 + 8))(v80, v81);
      v98(v43, v46);
    }

    return 0;
  }

  v52 = v43;
  v53 = sub_340C0();
  if (v122)
  {
    sub_31B60(v53);
    v55 = v54;

    if (v55)
    {

      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v56 = sub_342A0();
      sub_3034(v56, qword_53A18);
      v57 = v126;
      v58 = v119;
      (*(v126 + 16))(v119, v124, v47);
      v59 = v117;
      v60 = v121;
      (*(v117 + 16))(v121, v52, v46);
      v61 = sub_34280();
      v62 = sub_345D0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v46;
        v64 = swift_slowAlloc();
        v65 = v58;
        v124 = swift_slowAlloc();
        v127 = v124;
        *v64 = 136315394;
        sub_A8F0();
        v66 = sub_34BB0();
        v67 = v47;
        v68 = v63;
        v70 = v69;
        (*(v57 + 8))(v65, v67);
        v71 = sub_22960(v66, v70, &v127);

        *(v64 + 4) = v71;
        *(v64 + 12) = 2080;
        v72 = v121;
        v73 = sub_340B0();
        v75 = v74;
        v76 = *(v59 + 8);
        v76(v72, v68);
        v77 = sub_22960(v73, v75, &v127);

        *(v64 + 14) = v77;
        v78 = "[%s]: Failed to get message handling status for core duet event: %s";
LABEL_28:
        _os_log_impl(&dword_0, v61, v62, v78, v64, 0x16u);
        swift_arrayDestroy();

        v76(v52, v68);
        return 0;
      }

      goto LABEL_30;
    }
  }

  else
  {
    sub_31998(v53);
    v101 = v100;

    if (v101)
    {

      v59 = v117;
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v102 = sub_342A0();
      sub_3034(v102, qword_53A18);
      v57 = v126;
      v58 = v118;
      (*(v126 + 16))(v118, v124, v47);
      v60 = v120;
      (*(v59 + 16))(v120, v52, v46);
      v61 = sub_34280();
      v62 = sub_345D0();
      if (os_log_type_enabled(v61, v62))
      {
        v103 = v46;
        v64 = swift_slowAlloc();
        v104 = v58;
        v124 = swift_slowAlloc();
        v127 = v124;
        *v64 = 136315394;
        sub_A8F0();
        v105 = sub_34BB0();
        v106 = v47;
        v68 = v103;
        v108 = v107;
        (*(v57 + 8))(v104, v106);
        v109 = sub_22960(v105, v108, &v127);

        *(v64 + 4) = v109;
        *(v64 + 12) = 2080;
        v110 = v120;
        v111 = sub_340B0();
        v113 = v112;
        v76 = *(v59 + 8);
        v76(v110, v68);
        v114 = sub_22960(v111, v113, &v127);

        *(v64 + 14) = v114;
        v78 = "[%s]: Failed to get call duration for core duet event: %s";
        goto LABEL_28;
      }

LABEL_30:

      v115 = *(v59 + 8);
      v115(v60, v46);
      (*(v57 + 8))(v58, v47);
      v115(v52, v46);
      return 0;
    }
  }

  (*(v117 + 8))(v43, v46);
  return v49;
}

uint64_t sub_1DDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4F5F0, &unk_37730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DE1C(uint64_t a1)
{
  v2 = sub_3204(&qword_4F5F0, &unk_37730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DE84@<X0>(uint64_t *a1@<X8>)
{
  sub_33E80();
  sub_33E70();
  sub_33E40();

  v8 = v10;
  v2 = v10;
  v3 = sub_30C0(v9, v10);
  *&v11[3] = v8;
  v4 = sub_22FEC(v11);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_3364(v9);
  sub_33E70();
  sub_33E60();

  v5 = type metadata accessor for SiriConversationReader();
  v6 = swift_allocObject();
  sub_225F4(v11, v6 + 16);
  result = sub_225F4(v9, v6 + 56);
  a1[3] = v5;
  a1[4] = &off_478F0;
  *a1 = v6;
  return result;
}

uint64_t sub_1DFA0@<X0>(void *a1@<X8>)
{
  sub_1E378(v26);
  type metadata accessor for PostSiriEngagementDataProcessor();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4014000000000000;
  sub_3204(&qword_4F758, qword_37880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_37740;
  v4 = sub_341A0();
  swift_allocObject();
  v5 = sub_34190();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_23460(&qword_4F760, &type metadata accessor for INStartCallIntentFeatureExtractor, &protocol conformance descriptor for INStartCallIntentFeatureExtractor);
  *(v3 + 32) = v5;
  v6 = sub_341C0();
  swift_allocObject();
  v7 = sub_341B0();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_23460(&qword_4F768, &type metadata accessor for INSendMessageIntentFeatureExtractor, &protocol conformance descriptor for INSendMessageIntentFeatureExtractor);
  *(v3 + 72) = v7;
  v8 = sub_34180();
  swift_allocObject();
  v9 = sub_34170();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_23460(&qword_4F770, &type metadata accessor for CommonInteractionFeatureExtractor, &protocol conformance descriptor for CommonInteractionFeatureExtractor);
  *(v3 + 112) = v9;
  sub_3204(&unk_4F4B0, &qword_36C70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_37550;
  sub_34140();
  swift_allocObject();
  *(v10 + 32) = sub_34130();
  sub_34160();
  swift_allocObject();
  *(v10 + 40) = sub_34150();
  v11 = sub_225A4(v26, v26[3]);
  __chkstk_darwin(v11);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for ASRLoggedContactTokensProcessor();
  v25[3] = v16;
  v25[4] = &off_473D8;
  v25[0] = v15;
  v17 = type metadata accessor for ConversationDataProcessor();
  v18 = swift_allocObject();
  v19 = sub_225A4(v25, v16);
  __chkstk_darwin(v19);
  v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v18[5] = v16;
  v18[6] = &off_473D8;
  v18[2] = v23;
  v18[7] = v2;
  v18[8] = v3;
  v18[9] = v10;
  sub_3364(v25);
  result = sub_3364(v26);
  a1[3] = v17;
  a1[4] = &off_48648;
  *a1 = v18;
  return result;
}

uint64_t sub_1E378@<X0>(uint64_t *a1@<X8>)
{
  sub_33F20();
  swift_allocObject();
  v2 = sub_33F10();
  sub_33C30();
  swift_allocObject();
  sub_33C20();
  v3 = type metadata accessor for ASRLoggedContactTokensProcessor();
  v4 = swift_allocObject();
  v4[2] = v2;
  sub_33C60();
  v4[3] = v5;
  sub_33CB0();
  v4[4] = v6;

  a1[3] = v3;
  a1[4] = &off_473D8;
  *a1 = v4;
  return result;
}

uint64_t SiriPrivateLearningTTSMispronunciationPlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriPrivateLearningTTSMispronunciationPlugin.init()();
  return v0;
}

void (**SiriPrivateLearningTTSMispronunciationPlugin.init()())(char *, uint64_t)
{
  v1 = v0;
  v2 = sub_34070();
  v119 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v114 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v110 - v5;
  v7 = sub_33BB0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_33E10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_33F80();
  __chkstk_darwin(v12 - 8);
  type metadata accessor for SiriPrivateLearningTTSMispronunciationPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v113 = objc_opt_self();
  v14 = [v113 bundleForClass:ObjCClassFromMetadata];
  sub_33F70();
  v15 = sub_33FA0();
  swift_allocObject();
  v16 = sub_33F90();
  v135 = v15;
  v136 = &protocol witness table for SupportedLocalesPListStore;
  *&v134 = v16;
  v17 = [objc_opt_self() currentLocale];
  sub_33BA0();

  v18 = [objc_opt_self() sharedPreferences];
  sub_33DE0();
  sub_33EE0();
  swift_allocObject();
  v19 = v11;
  *(v1 + 344) = sub_33EC0();
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v20 = v9;
  v21 = v8;
  v22 = sub_342A0();
  sub_3034(v22, qword_53A18);

  v23 = sub_34280();
  v24 = sub_345C0();

  v25 = os_log_type_enabled(v23, v24);
  v120 = v2;
  v118 = v6;
  v117 = v19;
  v116 = v8;
  v122 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v134 = v27;
    *v26 = 136315138;
    sub_33ED0();
    sub_23460(&qword_4F5F8, &type metadata accessor for CurrentLocales, &protocol conformance descriptor for CurrentLocales);
    v28 = v21;
    v29 = sub_34BB0();
    v31 = v30;
    (*(v20 + 8))(v19, v28);
    v32 = sub_22960(v29, v31, &v134);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_0, v23, v24, "Initialising TMDC plugin with current locale %s", v26, 0xCu);
    sub_3364(v27);
  }

  sub_33FF0();
  swift_allocObject();
  sub_33FE0();
  v33 = sub_33FD0();

  *(v1 + 352) = v33 & 1;
  sub_1DE84(&v134);
  sub_1DFA0(&v131);
  type metadata accessor for PostSiriEngagementDataProcessor();
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4014000000000000;
  sub_33E80();
  sub_33E70();
  sub_33E50();

  v35 = sub_33C30();
  v112 = v35;
  swift_allocObject();
  v36 = sub_33C20();
  v128 = v35;
  v129 = &protocol witness table for TrialSiriUnderstandingTMDCStatusResolver;
  *&v127 = v36;
  v37 = sub_225A4(&v134, v135);
  v121 = &v110;
  __chkstk_darwin(v37);
  v39 = (&v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = sub_225A4(&v131, v132);
  v115 = &v110;
  __chkstk_darwin(v41);
  v43 = (&v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = *v39;
  v46 = *v43;
  v47 = type metadata accessor for SiriConversationReader();
  v126[4] = &off_478F0;
  v126[3] = v47;
  v126[0] = v45;
  v48 = type metadata accessor for ConversationDataProcessor();
  v125 = &off_48648;
  v124 = v48;
  v123[0] = v46;
  v49 = type metadata accessor for ConversationDataController();
  v50 = swift_allocObject();
  v51 = sub_225A4(v126, v47);
  v111 = &v110;
  __chkstk_darwin(v51);
  v53 = (&v110 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = sub_225A4(v123, v124);
  __chkstk_darwin(v55);
  v57 = (&v110 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = *v53;
  v60 = *v57;
  v50[5] = v47;
  v50[6] = &off_478F0;
  v50[2] = v59;
  v50[10] = v48;
  v50[11] = &off_48648;
  v50[12] = v34;
  v50[7] = v60;
  v50[23] = 0x405E000000000000;
  sub_225F4(v130, (v50 + 13));
  sub_225F4(&v127, (v50 + 18));
  sub_3364(v123);
  sub_3364(v126);
  sub_3364(&v131);
  sub_3364(&v134);
  *(v1 + 40) = v49;
  *(v1 + 48) = &off_473C8;
  *(v1 + 16) = v50;

  v61 = v117;
  sub_33ED0();

  v121 = v1;
  v62 = v118;
  sub_33E00();
  v115 = *(v122 + 8);
  v122 += 8;
  v115(v61, v116);
  v63 = type metadata accessor for TTSPhonemesGenerator(0);
  v64 = swift_allocObject();
  v65 = v119;
  v111 = *(v119 + 16);
  v66 = v120;
  v111(v64 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_currentLocale, v62, v120);
  v67 = [objc_allocWithZone(sub_33BD0()) init];
  v110 = *(v65 + 8);
  v110(v62, v66);
  *(v64 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_sharedSession) = v67;
  v68 = [objc_allocWithZone(CNContactStore) init];
  v135 = v63;
  v136 = &off_473E8;
  *&v134 = v64;
  type metadata accessor for ContactPronunciationController();
  v69 = swift_allocObject();
  v70 = sub_225A4(&v134, v63);
  __chkstk_darwin(v70);
  v72 = (&v110 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72);
  v74 = *v72;
  *(v69 + 6) = v63;
  *(v69 + 7) = &off_473E8;
  *(v69 + 2) = v68;
  *(v69 + 3) = v74;
  sub_3364(&v134);
  v121[7] = v69;

  sub_33ED0();

  sub_33DF0();
  v75 = v61;
  v76 = v116;
  v115(v75, v116);
  v77 = type metadata accessor for PhonemesMapper();
  v78 = swift_allocObject();
  v79 = [v113 bundleForClass:swift_getObjCClassFromMetadata()];
  v80 = v114;
  v111(v114, v62, v66);
  v81 = sub_2EB10(v79, v80);
  v82 = v62;
  v83 = v121;
  v110(v82, v66);
  *(v78 + 16) = v81;
  v83[8] = v78;
  v83[11] = v77;
  v83[12] = &off_48590;
  v84 = v112;
  swift_allocObject();
  v83[13] = sub_33C20();
  v83[16] = v84;
  v83[17] = &protocol witness table for TrialSiriUnderstandingTMDCStatusResolver;
  sub_23160((v83 + 13), &v134);
  v85 = type metadata accessor for P2PRunner();
  v86 = swift_allocObject();
  sub_225F4(&v134, v86 + 16);
  v83[21] = v85;
  v83[22] = &off_470E0;
  v83[18] = v86;
  v87 = type metadata accessor for TMDCSELFLogger();
  v88 = swift_allocObject();
  v83[26] = v87;
  v83[27] = &off_47118;
  v83[23] = v88;
  v89 = *(v83 + 352);
  v90 = v76;
  if (qword_4E560 != -1)
  {
    swift_once();
  }

  type metadata accessor for TMDCCoreDataStore(0);
  swift_allocObject();

  v91 = sub_33D90();
  v92 = type metadata accessor for TMDCCoreDataLogger();
  v93 = swift_allocObject();
  *(v93 + 32) = 2;
  *(v93 + 16) = v91;
  *(v93 + 24) = v89;
  v83[31] = v92;
  v83[32] = &off_48638;
  v83[28] = v93;
  v135 = sub_33F60();
  v136 = &protocol witness table for EnvironmentFeatureFlags;
  sub_22FEC(&v134);
  sub_33F50();
  sub_225F4(&v134, (v83 + 33));
  sub_23160((v83 + 8), &v134);

  v94 = v117;
  sub_33ED0();

  v95 = v118;
  sub_33DF0();
  v115(v94, v90);
  LODWORD(v122) = *(v83 + 352);
  v96 = [objc_allocWithZone(CNContactStore) init];
  v97 = sub_225A4(&v134, v135);
  __chkstk_darwin(v97);
  v99 = (&v110 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v100 + 16))(v99);
  v101 = *v99;
  v132 = v77;
  v133 = &off_48590;
  v131 = v101;
  v102 = type metadata accessor for TTSContactOverrider(0);
  v103 = swift_allocObject();
  v104 = sub_225A4(&v131, v77);
  __chkstk_darwin(v104);
  v106 = (&v110 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v107 + 16))(v106);
  v108 = *v106;
  v103[6] = v77;
  v103[7] = &off_48590;
  v103[2] = v96;
  v103[3] = v108;
  (*(v119 + 32))(v103 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale, v95, v120);
  *(v103 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_isCurareRun) = v122;
  sub_3364(&v131);
  sub_3364(&v134);
  v83[41] = v102;
  v83[42] = &off_47E98;
  v83[38] = v103;
  return v83;
}

uint64_t SiriPrivateLearningTTSMispronunciationPlugin.run(context:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_33CE0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3204(&qword_4F600, &qword_37760);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (sub_21898(a1))
  {
    v14 = sub_34560();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v3;
    v15[5] = a2;
    v15[6] = a3;

    sub_1F81C(0, 0, v13, &unk_37770, v15);
  }

  else
  {
    (*(v8 + 104))(v10, enum case for PrivateLearningPluginResult.success(_:), v7);
    a2(v10);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_14454;

  return sub_1FB1C(a5, a6);
}

uint64_t sub_1F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3204(&qword_4F600, &qword_37760);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1CA30(a3, v25 - v10, &qword_4F600, &qword_37760);
  v12 = sub_34560();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_A948(v11, &qword_4F600, &qword_37760);
  }

  else
  {
    sub_34550();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_34530();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_34410() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_A948(a3, &qword_4F600, &qword_37760);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_A948(a3, &qword_4F600, &qword_37760);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1FB1C(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  v4 = sub_33CE0();
  v3[43] = v4;
  v3[44] = *(v4 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = type metadata accessor for TMDCGroundTruth(0);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v5 = sub_34070();
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();
  v6 = sub_33E10();
  v3[52] = v6;
  v3[53] = *(v6 - 8);
  v3[54] = swift_task_alloc();
  v7 = sub_341F0();
  v3[55] = v7;
  v3[56] = *(v7 - 8);
  v3[57] = swift_task_alloc();

  return _swift_task_switch(sub_1FD30, 0, 0);
}

uint64_t sub_1FD30()
{
  if (qword_4E5B8 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = sub_34220();
  v0[58] = sub_3034(v4, qword_53A48);
  sub_34210();
  sub_341D0();
  v0[59] = sub_307AC("pluginRunExecutionTime", 22, 2, v1);
  v5 = *(v2 + 8);
  v0[60] = v5;
  v0[61] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v6 = sub_342A0();
  v0[62] = sub_3034(v6, qword_53A18);
  v7 = sub_34280();
  v8 = sub_345C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SiriPrivateLearningTTSMispronunciationPlugin.run() started", v9, 2u);
  }

  v10 = v0[42];

  sub_30C0((v10 + 16), *(v10 + 40));
  v11 = swift_task_alloc();
  v0[63] = v11;
  *v11 = v0;
  v11[1] = sub_1FF30;

  return sub_887C();
}

uint64_t sub_1FF30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_20048;
  }

  else
  {
    v4 = sub_201E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_20048()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  *(v0 + 304) = *(v0 + 520);
  swift_errorRetain();
  sub_3204(&qword_4EF28, &qword_36CC0);
  sub_34400();
  sub_33CC0();
  (*(v2 + 104))(v1, enum case for PrivateLearningPluginResult.failure(_:), v3);
  v4(v1);
  (*(v2 + 8))(v1, v3);
  sub_34210();
  sub_341D0();
  sub_30A24("pluginRunFailure", 16, 2);

  v5 = *(v0 + 472);
  (*(v0 + 480))(*(v0 + 456), *(v0 + 440));
  sub_21558(v5);

  v6 = *(v0 + 8);

  return v6();
}

void sub_201E0()
{
  v175 = v0;

  v1 = sub_34280();
  v2 = sub_345D0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[64];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_0, v1, v2, "Fetched %ld conversationData", v5, 0xCu);
  }

  else
  {
  }

  v6 = v0[64];
  v148 = *(v6 + 16);
  v167 = v0;
  if (!v148)
  {

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  v141 = 0;
  v7 = 0;
  v147 = v6 + 32;
  v152 = (v0[53] + 8);
  v8 = _swiftEmptyArrayStorage;
  v151 = (v0[50] + 8);
  v140 = v0[46];
  v158 = v0[42];
  v161 = v0[65];
  v146 = v0[64];
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_79;
    }

    v149 = v7;
    v9 = (v147 + 56 * v7);
    v11 = v9[1];
    v10 = v9[2];
    v12 = *v9;
    *(v0 + 64) = *(v9 + 48);
    *(v0 + 2) = v11;
    *(v0 + 3) = v10;
    *(v0 + 1) = v12;
    v13 = v0[2];
    v154 = v0[4];
    v155 = v0[3];
    v153 = v0[5];
    v0[37] = v13;
    sub_1CA30((v0 + 37), (v0 + 39), &qword_4F730, &unk_37848);
    sub_231C4((v0 + 2), (v0 + 9));
    v14 = sub_34280();
    v15 = sub_345D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v13 + 16);
      _os_log_impl(&dword_0, v14, v15, "Current ConversationData consists of %ld asrContactTokens", v16, 0xCu);
    }

    v165 = *(v13 + 16);
    if (v165)
    {
      break;
    }

LABEL_6:
    v7 = v149 + 1;
    sub_23220((v0 + 2));
    sub_A948((v0 + 37), &qword_4F730, &unk_37848);
    v6 = v146;
    if (v149 + 1 == v148)
    {

      if (v8[2] && !v141)
      {
LABEL_71:
        v174[0] = 0;
        v174[1] = 0xE000000000000000;
        sub_34890(51);
        v177._object = 0x8000000000039770;
        v177._countAndFlagsBits = 0xD000000000000031;
        sub_34460(v177);
        sub_3204(&qword_4EF28, &qword_36CC0);
        v125 = sub_34510();
        v127 = v126;

        v178._countAndFlagsBits = v125;
        v178._object = v127;
        sub_34460(v178);

        sub_33CD0();
        sub_23460(&qword_4F738, &type metadata accessor for PrivateLearningPluginError, &protocol conformance descriptor for PrivateLearningPluginError);
        v128 = swift_allocError();
        sub_33CC0();
        swift_willThrow();
        v129 = v167;
        v131 = v167[44];
        v130 = v167[45];
        v132 = v167[43];
        v133 = v167[40];
        v167[38] = v128;
        swift_errorRetain();
        sub_3204(&qword_4EF28, &qword_36CC0);
        sub_34400();
        sub_33CC0();
        (*(v131 + 104))(v130, enum case for PrivateLearningPluginResult.failure(_:), v132);
        v133(v130);
        (*(v131 + 8))(v130, v132);
        sub_34210();
        sub_341D0();
        sub_30A24("pluginRunFailure", 16, 2);

LABEL_74:
        v138 = v129[59];
        (v129[60])(v129[57], v129[55]);
        sub_21558(v138);

        v139 = v129[1];

        v139();
        return;
      }

LABEL_73:
      v129 = v167;
      v135 = v167[44];
      v134 = v167[45];
      v136 = v167[43];
      v137 = v167[40];

      (*(v135 + 104))(v134, enum case for PrivateLearningPluginResult.success(_:), v136);
      v137(v134);
      (*(v135 + 8))(v134, v136);
      sub_34210();
      sub_341D0();
      sub_30A24("pluginRunSuccess", 16, 2);
      goto LABEL_74;
    }
  }

  v17 = 0;
  v18 = v0[6];
  v164 = v13 + 32;
  if (!v0[7])
  {
    v18 = 0;
  }

  v156 = v18;
  v157 = v0[7];
  v166 = v13;
  while (1)
  {
    if (v17 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_78;
    }

    v173 = v8;
    v19 = v164 + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v24 = *(v19 + 24);
    v23 = *(v19 + 32);
    v25 = *(v19 + 40);
    v0[16] = *v19;
    v0[17] = v21;
    *(v0 + 144) = v22;
    v0[19] = v24;
    v0[20] = v23;
    v169 = v23;
    *(v0 + 168) = v25;
    swift_bridgeObjectRetain_n();
    v26 = v24;
    v27 = sub_34280();
    v28 = sub_345D0();

    v171 = v20;
    if (os_log_type_enabled(v27, v28))
    {
      v159 = v22;
      v29 = v17;
      v30 = v26;
      v31 = v21;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v174[0] = v33;
      *v32 = 136315138;

      v34 = sub_22960(v20, v31, v174);

      *(v32 + 4) = v34;
      v0 = v167;
      _os_log_impl(&dword_0, v27, v28, "ASR token name: %s", v32, 0xCu);
      sub_3364(v33);

      v21 = v31;
      v26 = v30;
      v17 = v29;
      v22 = v159;
    }

    v35 = sub_34280();
    v36 = sub_345D0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v169;
      _os_log_impl(&dword_0, v35, v36, "ASR token confidence: %f", v37, 0xCu);
    }

    if (v25)
    {
      break;
    }

LABEL_15:
    v8 = v173;
    v13 = v166;
LABEL_16:
    if (++v17 == v165)
    {
      goto LABEL_6;
    }
  }

  v38 = sub_34280();
  v39 = sub_345D0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "ASR token confidence meets the asrConfidenceThreshold", v40, 2u);
  }

  v41 = *(v158 + 56);
  v168 = v26;
  if (*(v158 + 352) == 1)
  {
    sub_30C0((v41 + 24), *(v41 + 48));

    v42 = v26;
    v43 = v21;
    v44 = v42;
    v45 = sub_34050();
    v46 = v161;
    v48 = sub_C6C8(v171, v43, v45, v47, 0, 5.0);

    if (v161)
    {

      v13 = v166;
LABEL_40:
      v0 = v167;
      swift_errorRetain();
      v66 = sub_34280();
      v67 = sub_345E0();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        swift_errorRetain();
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v70;
        *v69 = v70;
        _os_log_impl(&dword_0, v66, v67, "%@", v68, 0xCu);
        sub_A948(v69, &qword_4E6D8, &qword_35750);
      }

      v8 = v173;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_139D8(0, v173[2] + 1, 1, v173);
      }

      v72 = v8[2];
      v71 = v8[3];
      if (v72 >= v71 >> 1)
      {
        v8 = sub_139D8((v71 > 1), v72 + 1, 1, v8);
      }

      v161 = 0;
      v8[2] = v72 + 1;
      v8[v72 + 4] = v46;
      goto LABEL_16;
    }

    v55 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
    v54 = sub_26214(v48, 0);
  }

  else
  {
    v49 = v0[54];
    v50 = v0[51];
    v51 = v0[52];

    v52 = v26;
    sub_33ED0();
    sub_33E00();
    (*v152)(v49, v51);
    v53 = v22;
    v46 = v161;
    v54 = sub_24CBC(v156, v157, v171, v21, v53, v50);
    (*v151)(v0[51], v0[49]);
    if (v161)
    {

      v13 = v166;
      goto LABEL_40;
    }

    v43 = v21;
  }

  v56 = v43;
  if (v54[OBJC_IVAR___ContactPronunciation_source] <= 1u)
  {
    v57 = v168;
    if (!v54[OBJC_IVAR___ContactPronunciation_source])
    {

      goto LABEL_37;
    }
  }

  else
  {
    v57 = v168;
  }

  v58 = sub_34BC0();

  if ((v58 & 1) == 0)
  {
    sub_30C0((v41 + 24), *(v41 + 48));
    v64 = sub_34050();
    v91 = sub_C6C8(v171, v56, v64, v65, 0, 5.0);

    v92 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
    v95 = sub_26214(v91, 0);
    v59 = *&v95[OBJC_IVAR___ContactPronunciation_phonemeString];

    goto LABEL_38;
  }

LABEL_37:
  v59 = *&v54[OBJC_IVAR___ContactPronunciation_phonemeString];
LABEL_38:
  sub_30C0((v158 + 144), *(v158 + 168));
  v60 = v59;
  v61 = sub_1928(v57, v60, (v158 + 64));
  v63 = v62;

  sub_30C0((v158 + 104), *(v158 + 128));
  v73 = sub_33C90();
  v162 = v63;
  v150 = v56;
  if (v73 & v63)
  {
    v74 = sub_34280();
    v75 = sub_345D0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "tmdcRuntimeCorrections is enabled", v76, 2u);
    }

    v77 = sub_34280();
    v78 = sub_345D0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v174[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_22960(0, 0xE000000000000000, v174);
      _os_log_impl(&dword_0, v77, v78, "TTS mispronunciation is %s detected", v79, 0xCu);
      sub_3364(v80);
    }

    sub_30C0((v158 + 304), *(v158 + 328));
    sub_18DF4((v167 + 2), (v167 + 16));
    v84 = *&v57[OBJC_IVAR___PhonemeString_symbols];
    v85 = *&v57[OBJC_IVAR___PhonemeString_symbols + 8];
    v143 = v83;
    v144 = v60;
    v142 = v81;
    if (v82)
    {
      v86 = v81;
      v87 = v83;
      v88 = v82;

      v89 = v87;
      v160 = v87;
      v90 = v86;
    }

    else
    {
      v160 = 0;
      v90 = 0;
      v88 = 0;
    }

    v94 = v84;
  }

  else
  {
    v144 = v60;
    v160 = 0;
    v142 = 0;
    v143 = 0;
    v90 = 0;
    v88 = 0;
    v93 = &v57[OBJC_IVAR___PhonemeString_symbols];
    v94 = *&v57[OBJC_IVAR___PhonemeString_symbols];
    v85 = *(v93 + 1);
  }

  v0 = v167;
  v96 = v167[48];
  v145 = v167[47];

  sub_33B80();
  sub_33FF0();
  swift_allocObject();
  sub_33FE0();
  v97 = sub_33FD0();

  *(v96 + v140[5]) = (v97 & 1) == 0;
  v98 = (v96 + v140[6]);
  *v98 = v171;
  v98[1] = v150;
  *(v96 + v140[7]) = v169;
  v99 = (v96 + v140[8]);
  *v99 = v94;
  v99[1] = v85;
  *(v96 + v140[9]) = v54;
  *(v96 + v140[10]) = v160;
  *(v96 + v140[11]) = v61;
  *(v96 + v140[12]) = v162 & 1;
  v100 = (v96 + v140[13]);
  *v100 = v90;
  v100[1] = v88;
  v163 = v88;
  sub_8000(v96, v145);
  v101 = sub_34280();
  v102 = sub_345D0();
  v103 = os_log_type_enabled(v101, v102);
  v104 = v167[47];
  if (v103)
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v174[0] = v106;
    *v105 = 136315138;
    v107 = sub_34E4();
    v109 = v108;
    sub_8064(v104);
    v110 = sub_22960(v107, v109, v174);
    v0 = v167;

    *(v105 + 4) = v110;
    _os_log_impl(&dword_0, v101, v102, "TMDC created groundtruth: %s", v105, 0xCu);
    sub_3364(v106);
  }

  else
  {

    sub_8064(v104);
  }

  v172 = sub_223E8();
  v170 = *(v172 + 16);
  if (!v170)
  {
LABEL_67:
    v124 = v0[48];

    sub_8064(v124);
    if (__OFADD__(v141, 1))
    {
      goto LABEL_80;
    }

    ++v141;
    sub_23274(v142, v163, v143);
    v161 = 0;
    goto LABEL_15;
  }

  v111 = 0;
  v112 = v172 + 32;
  while (v111 < *(v172 + 16))
  {
    sub_23160(v112, (v0 + 22));
    sub_23160((v0 + 22), (v0 + 27));
    v113 = sub_34280();
    v114 = sub_345D0();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v174[0] = v116;
      *v115 = 136315138;
      sub_23160((v0 + 27), (v0 + 32));
      sub_3204(&qword_4F740, &qword_37858);
      v117 = sub_34400();
      v119 = v118;
      sub_3364(v0 + 27);
      v120 = sub_22960(v117, v119, v174);

      *(v115 + 4) = v120;
      _os_log_impl(&dword_0, v113, v114, "Logger %s started", v115, 0xCu);
      sub_3364(v116);
    }

    else
    {

      sub_3364(v0 + 27);
    }

    v121 = v0[48];
    v122 = v0[25];
    v123 = v0[26];
    sub_30C0(v0 + 22, v122);
    (*(v123 + 8))(v121, v155, v154, v153, v122, v123);
    ++v111;
    sub_3364(v0 + 22);
    v112 += 40;
    if (v170 == v111)
    {
      goto LABEL_67;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t sub_21558(uint64_t a1)
{
  v1 = sub_34230();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_341F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v9 = sub_342A0();
  sub_3034(v9, qword_53A18);
  v10 = sub_34280();
  v11 = sub_345C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "SiriPrivateLearningTTSMispronunciationPlugin.run() ended", v12, 2u);
  }

  if (qword_4E5B8 != -1)
  {
    swift_once();
  }

  v13 = sub_34220();
  sub_3034(v13, qword_53A48);
  v14 = sub_34210();
  sub_34240();
  v15 = sub_345F0();
  if (sub_34690())
  {

    sub_34270();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_341E0();
    _os_signpost_emit_with_name_impl(&dword_0, v14, v15, v18, "pluginRunExecutionTime", v16, v17, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21898(uint64_t a1)
{
  v64 = a1;
  v68 = sub_34070();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_33E10();
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_33D00();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v67 = "[Error] Interval already ended";
  if ((sub_33EA0() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v22 = sub_342A0();
    sub_3034(v22, qword_53A18);

    v23 = sub_34280();
    v24 = sub_345C0();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_22960(0xD00000000000003DLL, v67 | 0x8000000000000000, &v69);
    *(v25 + 12) = 2080;
    sub_33ED0();
    sub_33DF0();
    (v65[1].isa)(v6, v4);
    v26 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v28 = v27;
    (*(v66 + 8))(v3, v68);
    v29 = sub_22960(v26, v28, &v69);

    *(v25 + 14) = v29;
    v30 = "%s: siri locale %s isn't supported";
    goto LABEL_19;
  }

  if ((sub_33EB0() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v31 = sub_342A0();
    sub_3034(v31, qword_53A18);

    v23 = sub_34280();
    v24 = sub_345C0();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_22960(0xD00000000000003DLL, v67 | 0x8000000000000000, &v69);
    *(v25 + 12) = 2080;
    sub_33ED0();
    sub_33E00();
    (v65[1].isa)(v6, v4);
    v32 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v34 = v33;
    (*(v66 + 8))(v3, v68);
    v35 = sub_22960(v32, v34, &v69);

    *(v25 + 14) = v35;
    v30 = "%s: siri voice locale %s isn't supported";
LABEL_19:
    _os_log_impl(&dword_0, v23, v24, v30, v25, 0x16u);
    swift_arrayDestroy();

LABEL_20:

    return 0;
  }

  if ((sub_30F20() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v36 = sub_342A0();
    sub_3034(v36, qword_53A18);

    v37 = sub_34280();
    v38 = sub_345C0();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_35;
    }

    v39 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v69 = v64;
    *v39 = 136315650;
    *(v39 + 4) = sub_22960(0xD00000000000003DLL, v67 | 0x8000000000000000, &v69);
    *(v39 + 12) = 2080;
    LODWORD(v67) = v38;
    sub_33ED0();
    sub_33DF0();
    isa = v65[1].isa;
    (isa)(v6, v4);
    v40 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v65 = v37;
    v41 = v40;
    v43 = v42;
    v44 = *(v66 + 8);
    v44(v3, v68);
    v45 = sub_22960(v41, v43, &v69);

    *(v39 + 14) = v45;
    *(v39 + 22) = 2080;
    sub_33ED0();
    sub_33E00();
    (isa)(v6, v4);
    v46 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v48 = v47;
    v44(v3, v68);
    v49 = sub_22960(v46, v48, &v69);

    *(v39 + 24) = v49;
    v50 = v65;
    _os_log_impl(&dword_0, v65, v67, "%s: siri locale / siri voice locale pair %s / %s isn't supported", v39, 0x20u);
    swift_arrayDestroy();

    return 0;
  }

  sub_30C0((v1 + 104), *(v1 + 128));
  if ((sub_33C50() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v51 = sub_342A0();
    sub_3034(v51, qword_53A18);
    v37 = sub_34280();
    v52 = sub_345C0();
    if (!os_log_type_enabled(v37, v52))
    {
      goto LABEL_35;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v69 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_22960(0xD00000000000003DLL, v67 | 0x8000000000000000, &v69);
    _os_log_impl(&dword_0, v37, v52, "%s: TMDCRuntime trial flag are both disabled", v53, 0xCu);
    sub_3364(v54);
LABEL_34:

LABEL_35:

    return 0;
  }

  (*(v8 + 104))(v13, enum case for PrivateLearningPluginRunContext.maintenance(_:), v7);
  v14 = v64;
  v15 = sub_33CF0();
  v16 = *(v8 + 8);
  v16(v13, v7);
  if ((v15 & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v55 = sub_342A0();
    sub_3034(v55, qword_53A18);
    (*(v8 + 16))(v11, v14, v7);
    v37 = sub_34280();
    v56 = sub_345C0();
    if (!os_log_type_enabled(v37, v56))
    {

      v16(v11, v7);
      return 0;
    }

    v57 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v57 = 136315394;
    *(v57 + 4) = sub_22960(0xD00000000000003DLL, v67 | 0x8000000000000000, &v69);
    *(v57 + 12) = 2080;
    sub_23460(&qword_4F748, &type metadata accessor for PrivateLearningPluginRunContext, &protocol conformance descriptor for PrivateLearningPluginRunContext);
    v58 = sub_34BB0();
    v60 = v59;
    v16(v11, v7);
    v61 = sub_22960(v58, v60, &v69);

    *(v57 + 14) = v61;
    _os_log_impl(&dword_0, v37, v56, "%s: context is %s", v57, 0x16u);
    swift_arrayDestroy();
    goto LABEL_34;
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v17 = sub_342A0();
  sub_3034(v17, qword_53A18);
  v18 = sub_34280();
  v19 = sub_345D0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "SiriPrivateLearningTTSMispronunciationPlugin is enabled", v20, 2u);
  }

  return 1;
}

uint64_t sub_223E8()
{
  v1 = v0;
  sub_30C0((v0 + 104), *(v0 + 128));
  if ((sub_33CA0() & 1) != 0 || *(v0 + 352) == 1)
  {
    sub_3204(&qword_4F728, &unk_37838);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_361D0;
    sub_23160(v1 + 184, v2 + 32);
    v3 = v2 + 72;
    v4 = 224;
  }

  else
  {
    sub_3204(&qword_4F728, &unk_37838);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_35920;
    v3 = v2 + 32;
    v4 = 184;
  }

  sub_23160(v1 + v4, v3);
  return v2;
}

void *SiriPrivateLearningTTSMispronunciationPlugin.deinit()
{
  sub_3364(v0 + 2);

  sub_3364(v0 + 8);
  sub_3364(v0 + 13);
  sub_3364(v0 + 18);
  sub_3364(v0 + 23);
  sub_3364(v0 + 28);
  sub_3364(v0 + 33);
  sub_3364(v0 + 38);

  return v0;
}

uint64_t SiriPrivateLearningTTSMispronunciationPlugin.__deallocating_deinit()
{
  SiriPrivateLearningTTSMispronunciationPlugin.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22568()
{
  type metadata accessor for SiriPrivateLearningTTSMispronunciationPlugin();
  v0 = swift_allocObject();
  SiriPrivateLearningTTSMispronunciationPlugin.init()();
  return v0;
}

uint64_t sub_225A4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_225F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2260C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22658@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227E4;

  return v6(a1);
}

uint64_t sub_227E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22904(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22960(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_22960(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22A2C(v11, 0, 0, 1, a1, a2);
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
    sub_13DCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3364(v11);
  return v7;
}

unint64_t sub_22A2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B38(a5, a6);
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
    result = sub_34900();
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

void *sub_22B38(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B84(a1, a2);
  sub_22CB4(&off_45518);
  return v3;
}

void *sub_22B84(uint64_t a1, unint64_t a2)
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

  v6 = sub_22DA0(v5, 0);
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

  result = sub_34900();
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
        v10 = sub_34470();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_22DA0(v10, 0);
        result = sub_34860();
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

uint64_t sub_22CB4(uint64_t result)
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

  result = sub_22E14(result, v11, 1, v3);
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

void *sub_22DA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_3204(&qword_4F750, &qword_37878);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F750, &qword_37878);
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

_BYTE **sub_22F08(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22F18(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_22FB4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t *sub_22FEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23050()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_23098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14454;

  return sub_1F770(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23160(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23274(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_232B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_147C4;

  return sub_226EC(a1, v4);
}

uint64_t sub_23370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_233A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14454;

  return sub_226EC(a1, v4);
}

uint64_t sub_23460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23530(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_235A8(void *a1)
{
  v2 = sub_343F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v6 = sub_342A0();
  v7 = sub_3034(v6, qword_53A18);
  v8 = a1;
  v9 = sub_34280();
  v10 = sub_345D0();

  if (os_log_type_enabled(v9, v10))
  {
    v66 = v2;
    v67 = v7;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315138;
    v13 = [v8 phonemeData];
    if (v13)
    {
      v14 = v13;
      v15 = sub_343B0();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v68 = v15;
    v69 = v17;
    sub_3204(&qword_4F828, "x(");
    v18 = sub_34400();
    v20 = sub_22960(v18, v19, v70);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "Begin parsing phonemeData: %s", v11, 0xCu);
    sub_3364(v12);

    v2 = v66;
  }

  else
  {
  }

  v21 = [v8 phonemeData];
  if (!v21 || (v22 = v21, sub_343B0(), v22, sub_343E0(), v23 = sub_343C0(), v25 = v24, , (*(v3 + 8))(v5, v2), v25 >> 60 == 15))
  {
    v26 = v8;
    v27 = sub_34280();
    v28 = sub_345D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v30;
      *v29 = 136315138;
      v31 = [v26 identifier];
      v32 = sub_343B0();
      v34 = v33;

      v35 = sub_22960(v32, v34, &v68);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_0, v27, v28, "phonemeData string is empty for contact: %s", v29, 0xCu);
      sub_3364(v30);
    }

    return 0;
  }

  if (qword_4E590 != -1)
  {
    swift_once();
  }

  sub_23DB0();
  sub_33A30();
  v36 = v68;
  v37 = v69;
  v38 = [objc_opt_self() stringFromContact:v8 style:0];
  if (!v38 || (v39 = v38, v40 = sub_343B0(), v42 = v41, v39, LODWORD(v39) = sub_EA90(v40, v42), , v37 != v39))
  {

    v56 = v8;
    v57 = sub_34280();
    v58 = sub_345E0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68 = v60;
      *v59 = 136315138;
      v61 = [v56 identifier];
      v62 = sub_343B0();
      v64 = v63;

      v65 = sub_22960(v62, v64, &v68);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_0, v57, v58, "phonemeData checksum is invalid for contact: %s", v59, 0xCu);
      sub_3364(v60);
    }

    sub_23E04(v23, v25);

    return 0;
  }

  v43 = v8;

  v44 = sub_34280();
  v45 = sub_345D0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v46 = 136315394;
    v68 = v36;
    LODWORD(v67) = v37;
    LODWORD(v69) = v37;

    v47 = sub_34400();
    v49 = sub_22960(v47, v48, v70);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = [v43 identifier];
    v51 = sub_343B0();
    v53 = v52;

    v54 = sub_22960(v51, v53, v70);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_0, v44, v45, "Parsed phonemeData: %s for contact: %s", v46, 0x16u);
    swift_arrayDestroy();
  }

  sub_23E04(v23, v25);

  return v36;
}

unint64_t sub_23DB0()
{
  result = qword_4F820;
  if (!qword_4F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F820);
  }

  return result;
}

uint64_t sub_23E04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23E18(a1, a2);
  }

  return a1;
}

uint64_t sub_23E18(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23E6C(uint64_t a1, int a2)
{
  v2 = sub_343F0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_33A50();
  __chkstk_darwin(v3 - 8);
  if (qword_4E598 != -1)
  {
    swift_once();
  }

  sub_33A40();
  sub_33A60();
  sub_2412C();
  v4 = sub_33A70();
  v6 = v5;
  sub_343E0();
  v7 = sub_343D0();
  sub_23E18(v4, v6);
  return v7;
}

unint64_t sub_2412C()
{
  result = qword_4F830;
  if (!qword_4F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F830);
  }

  return result;
}

uint64_t sub_2418C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_241D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2423C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_242D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 sub_24374(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_24414(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_244D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24530(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2460C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_2467C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4D4153585F535454;
    }

    else
    {
      v4 = 0x525341764ELL;
    }

    if (v2)
    {
      v3 = 0xEA00000000004150;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x41504D4153;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 726148684;
  }

  else
  {
    v4 = 0x746573656E6F6870;
    v3 = 0xED0000656D616E5FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x4D4153585F535454;
    }

    else
    {
      v9 = 0x525341764ELL;
    }

    if (a2)
    {
      v8 = 0xEA00000000004150;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 726148684;
    if (a2 != 3)
    {
      v6 = 0x746573656E6F6870;
      v5 = 0xED0000656D616E5FLL;
    }

    if (a2 == 2)
    {
      v7 = 0x41504D4153;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_34BC0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2480C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x69727265764F6975;
    }

    else
    {
      v3 = 7566452;
    }

    if (v2)
    {
      v4 = 0xEA00000000006564;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1667526004;
  }

  else if (a1 == 3)
  {
    v3 = 0x65764F6563696F76;
    v4 = 0xED00006564697272;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x69727265764F6975;
    }

    else
    {
      v9 = 7566452;
    }

    if (a2)
    {
      v8 = 0xEA00000000006564;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x65764F6563696F76;
    v6 = 0xED00006564697272;
    if (a2 != 3)
    {
      v5 = 0x6E776F6E6B6E75;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1667526004;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_34BC0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_249A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x525341766ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x61706D6173;
    }

    else
    {
      v4 = 6844012;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61706D617378;
    }

    else
    {
      v4 = 0x525341766ELL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x61706D6173;
  if (a2 != 2)
  {
    v8 = 6844012;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x61706D617378;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_34BC0();
  }

  return v11 & 1;
}

BOOL sub_24AC0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_34070();
    ++v2;
    sub_282F0(&qword_4FA28, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  }

  while ((sub_34360() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_24BCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_349A0();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_349A0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_27834(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_278D4(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_24CBC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v6 = 0x80000000000399C0;
    sub_281AC();
    swift_allocError();
    *v30 = 0xD000000000000012;
    v30[1] = 0x80000000000399C0;
LABEL_21:
    swift_willThrow();
    return v6;
  }

  v8 = v6;
  v10 = a5;
  v110 = a4;
  v13 = sub_25AA8(a1, a2);
  if (!v7)
  {
    v14 = v13;
    if (v13)
    {
      v15 = sub_27D80(v13, v10, a6);
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v16 = sub_342A0();
      sub_3034(v16, qword_53A18);
      v17 = sub_34280();
      v18 = sub_345D0();
      if (os_log_type_enabled(v17, v18))
      {
        v79 = v14;
        v81 = a6;
        v19 = v15;
        v20 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v101 = v77;
        v78 = v19;
        v21 = 0xE300000000000000;
        v22 = 7566452;
        *v20 = 136315138;
        v23 = 0xE400000000000000;
        v24 = 1667526004;
        v25 = 0xED00006564697272;
        v26 = 0x65764F6563696F76;
        if (v19 != 3)
        {
          v26 = 0x6E776F6E6B6E75;
          v25 = 0xE700000000000000;
        }

        if (v19 != 2)
        {
          v24 = v26;
          v23 = v25;
        }

        if (v19)
        {
          v22 = 0x69727265764F6975;
          v21 = 0xEA00000000006564;
        }

        if (v19 <= 1u)
        {
          v27 = v22;
        }

        else
        {
          v27 = v24;
        }

        if (v19 <= 1u)
        {
          v28 = v21;
        }

        else
        {
          v28 = v23;
        }

        v29 = sub_22960(v27, v28, &v101);

        *(v20 + 4) = v29;
        _os_log_impl(&dword_0, v17, v18, "Source of siri current pronunciation: %s", v20, 0xCu);
        sub_3364(v77);

        v14 = v79;
        a6 = v81;
        v15 = v78;
      }

      else
      {
      }

      if (v15 != 2)
      {
        if (!v15)
        {
          sub_30C0(v8 + 3, v8[6]);
          v38 = sub_34050();
          v45 = sub_C6C8(a3, v110, v38, v39, 0, 5.0);

          v46 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
          v6 = sub_26214(v45, 0);

          return v6;
        }

        v6 = 0x8000000000039A10;
        sub_281AC();
        swift_allocError();
        v44 = 0xD00000000000001FLL;
        goto LABEL_36;
      }

      v40 = sub_235A8(v14);
      if (!v40)
      {
        v6 = 0x8000000000039A30;
        sub_281AC();
        swift_allocError();
        v44 = 0xD000000000000035;
LABEL_36:
        *v43 = v44;
        v43[1] = v6;
LABEL_61:
        swift_willThrow();
LABEL_62:

        return v6;
      }

      v41 = v40;
      __chkstk_darwin(v40);
      sub_257EC(sub_28264, v41, &v90);
      v42 = 0;

      v99[6] = v96;
      v99[7] = v97;
      v99[2] = v92;
      v99[3] = v93;
      v99[4] = v94;
      v99[5] = v95;
      v99[0] = v90;
      v99[1] = v91;
      v107 = v96;
      v108 = v97;
      v103 = v92;
      v104 = v93;
      v105 = v94;
      v106 = v95;
      v100 = v98;
      v109 = v98;
      v101 = v90;
      v102 = v91;
      if (sub_28284(&v101) == 1)
      {
        *&v90 = 0;
        *(&v90 + 1) = 0xE000000000000000;
        sub_34890(40);

        *&v90 = 0xD000000000000026;
        *(&v90 + 1) = 0x8000000000039A70;
        sub_34070();
        sub_282F0(&qword_4FA08, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
        v112._countAndFlagsBits = sub_34BB0();
        sub_34460(v112);

LABEL_60:
        v63 = *(&v90 + 1);
        v6 = v90;
        sub_281AC();
        swift_allocError();
        *v64 = v6;
        v64[1] = v63;
        goto LABEL_61;
      }

      v80 = v14;
      v82 = a6;
      if (v10)
      {
        if (v10 == 1)
        {
          v47 = *(&v104 + 1);
          v48 = *(&v105 + 1);
          v49 = v105;
        }

        else
        {
          v49 = *(&v107 + 1);
          v47 = v107;
          v48 = v108;
        }

        sub_1C9F0(v47, v49, v48);
        sub_A948(v99, &unk_4FA10, &qword_38180);
        if (!v47)
        {
          goto LABEL_49;
        }

        if (v47[2])
        {
          v53 = v47[6];
          v51 = v47[7];
          v110 = 0;

          v52 = v53;
          sub_FF98(v47, v49, v48);
          v42 = v110;

          goto LABEL_47;
        }
      }

      else
      {
        v49 = *(&v102 + 1);
        v47 = v102;
        v48 = v103;
        sub_1C9F0(v102, *(&v102 + 1), v103);
        sub_A948(v99, &unk_4FA10, &qword_38180);
        if (!v47)
        {
LABEL_49:
          v52 = 0;
          v51 = 0;
LABEL_50:
          v14 = v80;
          v54 = v82;
          if (qword_4E588 != -1)
          {
            swift_once();
            v54 = v82;
          }

          v55 = sub_24AC0(v54, qword_53A10);
          if (!v51)
          {
            if (v55)
            {
              v62 = 2;
            }

            else
            {
              v62 = 3;
            }

            *&v90 = 0;
            *(&v90 + 1) = 0xE000000000000000;
            sub_34890(44);
            v113._countAndFlagsBits = 0x74276E646C756F43;
            v113._object = 0xEE0020646E696620;
            sub_34460(v113);
            LOBYTE(v87) = v62;
            sub_34980();
            v114._countAndFlagsBits = 0xD00000000000001CLL;
            v114._object = 0x8000000000039AA0;
            sub_34460(v114);
            goto LABEL_60;
          }

          if (v55)
          {
            v56 = sub_34BC0();

            if ((v56 & 1) == 0)
            {
              v57 = type metadata accessor for PhonemeString();
              v58 = objc_allocWithZone(v57);
              v59 = &v58[OBJC_IVAR___PhonemeString_symbols];
              *v59 = v52;
              v59[1] = v51;
              v58[OBJC_IVAR___PhonemeString_encoding] = 2;
              v60 = &v58[OBJC_IVAR___PhonemeString_boundary];
              *v60 = 32;
              v60[1] = 0xE100000000000000;
              v89.receiver = v58;
              v89.super_class = v57;
              v61 = objc_msgSendSuper2(&v89, "init", v77);
              goto LABEL_66;
            }
          }

          else
          {
          }

          *&v90 = v52;
          *(&v90 + 1) = v51;
          v87 = 32;
          v88 = 0xE100000000000000;
          v85 = 0;
          v86 = 0xE000000000000000;
          sub_324C();
          v66 = sub_34710();
          v68 = v67;

          v69 = type metadata accessor for PhonemeString();
          v70 = objc_allocWithZone(v69);
          v71 = &v70[OBJC_IVAR___PhonemeString_symbols];
          *v71 = v66;
          v71[1] = v68;
          v70[OBJC_IVAR___PhonemeString_encoding] = 3;
          v72 = &v70[OBJC_IVAR___PhonemeString_boundary];
          *v72 = 0;
          v72[1] = 0xE000000000000000;
          v84.receiver = v70;
          v84.super_class = v69;
          v61 = objc_msgSendSuper2(&v84, "init", v77);
LABEL_66:
          v73 = v61;
          v74 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
          v75 = v73;
          v6 = v74;
          v76 = sub_26214(v75, 2);
          if (!v42)
          {
            v6 = v76;

            return v6;
          }

          goto LABEL_62;
        }

        if (v47[2])
        {
          v110 = 0;
          v50 = v47[6];
          v51 = v47[7];

          v52 = v50;
          sub_FF98(v47, v49, v48);

          v42 = v110;
LABEL_47:

          goto LABEL_50;
        }
      }

      sub_FF98(v47, v49, v48);
      goto LABEL_49;
    }

    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v31 = sub_342A0();
    sub_3034(v31, qword_53A18);

    v32 = sub_34280();
    v33 = sub_345E0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v101 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22960(a1, a2, &v101);
      _os_log_impl(&dword_0, v32, v33, "Couldn't find contact for Siri's current pronunciation for contactID: %s", v34, 0xCu);
      sub_3364(v35);
    }

    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    sub_34890(38);

    *&v101 = 0xD000000000000024;
    *(&v101 + 1) = 0x80000000000399E0;
    v111._countAndFlagsBits = a1;
    v111._object = a2;
    sub_34460(v111);
    v36 = *(&v101 + 1);
    v6 = v101;
    sub_281AC();
    swift_allocError();
    *v37 = __PAIR128__(v36, v6);
    goto LABEL_21;
  }

  return v6;
}

void sub_257EC(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a1;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a2 + 56) + 120 * v13;
      v18 = *(v17 + 48);
      v20 = *v17;
      v19 = *(v17 + 16);
      v51[2] = *(v17 + 32);
      v51[3] = v18;
      v51[0] = v20;
      v51[1] = v19;
      v22 = *(v17 + 80);
      v21 = *(v17 + 96);
      v23 = *(v17 + 64);
      v52 = *(v17 + 112);
      v51[5] = v22;
      v51[6] = v21;
      v51[4] = v23;
      v47 = *(v17 + 64);
      v48 = *(v17 + 80);
      v49 = *(v17 + 96);
      v50 = *(v17 + 112);
      v43 = *v17;
      v44 = *(v17 + 16);
      v45 = *(v17 + 32);
      v46 = *(v17 + 48);
      *&v42 = v16;
      *(&v42 + 1) = v15;

      sub_D934(v51, &v33);
      v24 = v53(&v42);
      if (v3)
      {
        v39 = v48;
        v40 = v49;
        v41 = v50;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v33 = v42;
        v34 = v43;
        sub_A948(&v33, &qword_4FA30, &qword_38188);

        return;
      }

      if (v24)
      {
        break;
      }

      v9 &= v9 - 1;
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v33 = v42;
      v34 = v43;
      sub_A948(&v33, &qword_4FA30, &qword_38188);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v39 = v48;
    v40 = v49;
    v41 = v50;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    v33 = v42;
    v34 = v43;
    nullsub_1();
    v30 = v40;
    *(a3 + 96) = v39;
    *(a3 + 112) = v30;
    *(a3 + 128) = v41;
    v31 = v36;
    *(a3 + 32) = v35;
    *(a3 + 48) = v31;
    v32 = v38;
    *(a3 + 64) = v37;
    *(a3 + 80) = v32;
    v29 = v33;
    v28 = v34;
LABEL_13:
    *a3 = v29;
    *(a3 + 16) = v28;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        sub_28338(&v42);
        v25 = v49;
        *(a3 + 96) = v48;
        *(a3 + 112) = v25;
        *(a3 + 128) = v50;
        v26 = v45;
        *(a3 + 32) = v44;
        *(a3 + 48) = v26;
        v27 = v47;
        *(a3 + 64) = v46;
        *(a3 + 80) = v27;
        v29 = v42;
        v28 = v43;
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_25AA8(uint64_t a1, void *a2)
{
  sub_3204(&unk_4F4B0, &qword_36C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_37540;
  v5 = CNContactPhonemeDataKey;
  *(v4 + 32) = CNContactPhonemeDataKey;
  *(v4 + 40) = CNContactGivenNameKey;
  *(v4 + 48) = CNContactFamilyNameKey;
  *(v4 + 56) = CNContactNicknameKey;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = CNContactGivenNameKey;
  v9 = CNContactFamilyNameKey;
  v10 = CNContactNicknameKey;
  *(v4 + 64) = [v6 descriptorForRequiredKeysForStyle:0];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_37550;
  v12 = CNContactPronunciationGivenNameKey;
  v13 = CNContactPronunciationFamilyNameKey;
  *(inited + 32) = CNContactPronunciationGivenNameKey;
  *(inited + 40) = v13;
  v14 = v12;
  v15 = v13;
  v16 = a1;
  v17 = a2;
  sub_24BCC(inited);
  v18 = objc_opt_self();
  sub_3204(&qword_4F100, &qword_36CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_35920;
  *(v19 + 32) = v16;
  *(v19 + 40) = a2;

  isa = sub_344F0().super.isa;

  v21 = [v18 predicateForContactsWithIdentifiers:isa];

  v22 = *(v40 + 16);
  sub_3204(&qword_4F4C0, &unk_37670);
  v23 = sub_344F0().super.isa;

  v41 = 0;
  v24 = [v22 unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:&v41];

  v25 = v41;
  if (!v24)
  {
    v32 = v41;
    sub_33AC0();

    goto LABEL_6;
  }

  sub_7F10(0, &qword_4F4C8, CNContact_ptr);
  v26 = sub_34500();
  v27 = v25;

  if (v26 >> 62)
  {
    if (sub_349A0() >= 2)
    {
      goto LABEL_4;
    }

    v28 = sub_349A0();
  }

  else
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v28 > 1)
    {
LABEL_4:

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_34890(42);

      v41 = 0xD000000000000028;
      v42 = 0x8000000000039990;
      v43._countAndFlagsBits = v16;
      v43._object = v17;
      sub_34460(v43);
      v29 = v41;
      v30 = v42;
      sub_281AC();
      swift_allocError();
      *v31 = v29;
      v31[1] = v30;
LABEL_6:
      swift_willThrow();

      return v17;
    }
  }

  if (v28)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v33 = sub_348C0();
      goto LABEL_13;
    }

    if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
    {
      v33 = *(v26 + 32);
LABEL_13:
      v17 = v33;

      return v17;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_4E5A8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v34 = sub_342A0();
  sub_3034(v34, qword_53A18);

  v35 = sub_34280();
  v36 = sub_345E0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22960(v16, v17, &v41);
    _os_log_impl(&dword_0, v35, v36, "No matching contacts found for Siri current pronunciation for %s", v37, 0xCu);
    sub_3364(v38);
  }

  return 0;
}

uint64_t sub_25FA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_34BC0();
  }

  return v5 & 1;
}

uint64_t sub_2601C()
{
  sub_3364((v0 + 24));

  return swift_deallocClassInstance();
}

id sub_26098(void *a1)
{
  v2 = v1;
  type metadata accessor for PhonemeString();
  v4 = sub_34660();
  sub_7F10(0, &qword_4EA20, NSString_ptr);
  v5 = sub_34660();
  if (v5)
  {
    v6 = v5;
    v7 = sub_343B0();
    v9 = v8;

    if (v4)
    {
      if (v9)
      {
        v10 = sub_280B8(v7, v9);
        if (v10 != 5)
        {
          *&v2[OBJC_IVAR___ContactPronunciation_phonemeString] = v4;
          v2[OBJC_IVAR___ContactPronunciation_source] = v10;
          v13.receiver = v2;
          v13.super_class = type metadata accessor for ContactPronunciation();
          v11 = objc_msgSendSuper2(&v13, "init");

          return v11;
        }
      }

      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_7:

LABEL_9:
  type metadata accessor for ContactPronunciation();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_26214(_BYTE *a1, char a2)
{
  if (a2 == 2)
  {
    v5 = OBJC_IVAR___PhonemeString_encoding;
    if (a1[OBJC_IVAR___PhonemeString_encoding] > 1u && a1[OBJC_IVAR___PhonemeString_encoding] != 2)
    {
      goto LABEL_15;
    }

    v9 = sub_34BC0();

    if (v9)
    {
      goto LABEL_16;
    }

    if (a1[v5] == 2)
    {
LABEL_15:

      goto LABEL_16;
    }

    v11 = sub_34BC0();

    if ((v11 & 1) == 0)
    {
      v8 = " phonemes inside phonemeData";
      v7 = 0xD000000000000029;
      goto LABEL_19;
    }

LABEL_16:
    *&v2[OBJC_IVAR___ContactPronunciation_phonemeString] = a1;
    v2[OBJC_IVAR___ContactPronunciation_source] = a2;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for ContactPronunciation();
    return objc_msgSendSuper2(&v14, "init");
  }

  if (a2)
  {
    goto LABEL_16;
  }

  if (a1[OBJC_IVAR___PhonemeString_encoding] > 1u && a1[OBJC_IVAR___PhonemeString_encoding] == 2)
  {
    goto LABEL_15;
  }

  v6 = sub_34BC0();

  if (v6)
  {
    goto LABEL_16;
  }

  v7 = 0xD000000000000021;
  v8 = "on is not in L&H or sampa";
LABEL_19:
  v12 = v8 | 0x8000000000000000;
  sub_2829C();
  swift_allocError();
  *v13 = v7;
  v13[1] = v12;
  swift_willThrow();

  type metadata accessor for ContactPronunciation();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_2651C()
{
  v1 = v0;
  BYTE8(v7) = 0;
  sub_34890(33);
  v8._object = 0x8000000000039970;
  v8._countAndFlagsBits = 0xD000000000000011;
  sub_34460(v8);
  v2 = [*(v0 + OBJC_IVAR___ContactPronunciation_phonemeString) description];
  v3 = sub_343B0();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_34460(v9);

  v10._countAndFlagsBits = 0x656372756F73202CLL;
  v10._object = 0xEA0000000000203ALL;
  sub_34460(v10);
  *&v7 = *(v1 + OBJC_IVAR___ContactPronunciation_source);
  sub_34980();
  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  sub_34460(v11);
  return *(&v7 + 1);
}

uint64_t sub_2663C(uint64_t a1)
{
  sub_7734(a1, v7);
  if (!v8)
  {
    sub_A948(v7, &qword_4EA18, &qword_38170);
    goto LABEL_7;
  }

  type metadata accessor for ContactPronunciation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  sub_7F10(0, &unk_4F9E0, NSObject_ptr);
  v2 = *&v6[OBJC_IVAR___ContactPronunciation_phonemeString];
  v3 = sub_34680();

  if ((v3 & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = sub_2480C(*(v1 + OBJC_IVAR___ContactPronunciation_source), v6[OBJC_IVAR___ContactPronunciation_source]);

  return v4 & 1;
}

void sub_267D0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___ContactPronunciation_phonemeString);
  v4 = sub_34380();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_34380();

  v6 = sub_34380();
  [a1 encodeObject:v5 forKey:v6];
}

uint64_t sub_269E4()
{
  if (*v0)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x53656D656E6F6870;
  }
}

uint64_t sub_26A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53656D656E6F6870 && a2 == 0xED0000676E697274;
  if (v6 || (sub_34BC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_34BC0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26B08(uint64_t a1)
{
  v2 = sub_2778C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_26B44(uint64_t a1)
{
  v2 = sub_2778C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_26B80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContactPronunciation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_26BE8(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&unk_4F9C0, &qword_38168);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_30C0(a1, a1[3]);
  sub_2778C();
  sub_34CA0();
  v11 = *(v3 + OBJC_IVAR___ContactPronunciation_phonemeString);
  v10[7] = 0;
  type metadata accessor for PhonemeString();
  sub_282F0(&qword_4EA10, type metadata accessor for PhonemeString, &unk_36F8C);
  sub_34B70();
  if (!v2)
  {
    v10[6] = *(v3 + OBJC_IVAR___ContactPronunciation_source);
    v10[5] = 1;
    sub_28158();
    sub_34B70();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *sub_26DC4(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F988, &unk_38150);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_30C0(a1, a1[3]);
  sub_2778C();
  sub_34C90();
  if (v2)
  {
    sub_3364(a1);
    type metadata accessor for ContactPronunciation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PhonemeString();
    v13 = 0;
    sub_282F0(&qword_4E9E0, type metadata accessor for PhonemeString, &unk_36FB4);
    sub_34AB0();
    *(v1 + OBJC_IVAR___ContactPronunciation_phonemeString) = v14;
    v13 = 1;
    sub_277E0();
    sub_34AB0();
    *(v1 + OBJC_IVAR___ContactPronunciation_source) = v14;
    v10 = type metadata accessor for ContactPronunciation();
    v12.receiver = v1;
    v12.super_class = v10;
    v3 = objc_msgSendSuper2(&v12, "init");
    (*(v6 + 8))(v8, v5);
    sub_3364(a1);
  }

  return v3;
}

_BYTE *sub_27050@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
  result = sub_26DC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_270D4()
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_271B8(uint64_t a1)
{
  sub_34430();
}

Swift::Int sub_27288(uint64_t a1)
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

unint64_t sub_27368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_280B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7566452;
  v5 = 0xE400000000000000;
  v6 = 1667526004;
  v7 = 0xED00006564697272;
  v8 = 0x65764F6563696F76;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69727265764F6975;
    v3 = 0xEA00000000006564;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ContactPronunciationSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContactPronunciationSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27738()
{
  result = qword_4F980;
  if (!qword_4F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F980);
  }

  return result;
}

unint64_t sub_2778C()
{
  result = qword_4F990;
  if (!qword_4F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F990);
  }

  return result;
}

unint64_t sub_277E0()
{
  result = qword_4F9A0;
  if (!qword_4F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9A0);
  }

  return result;
}

uint64_t sub_27834(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_349A0();
LABEL_9:
  result = sub_348D0();
  *v2 = result;
  return result;
}

uint64_t sub_278D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_349A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_349A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_28200();
          for (i = 0; i != v6; ++i)
          {
            sub_3204(&qword_4F9F8, &qword_38178);
            v9 = sub_27A60(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_3204(&qword_4F4C0, &unk_37670);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_27A60(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_348C0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_27AE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_27AE8(void *a1, uint64_t a2)
{
  v4 = sub_33AB0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  if (a1[1] == 1 || v9 == 0)
  {
    return 0;
  }

  v12 = a1[2];
  v22[0] = v12;
  v22[1] = v9;
  if (qword_4E5A0 != -1)
  {
    v21 = v6;
    swift_once();
    v6 = v21;
  }

  v13 = v6;
  sub_3034(v6, qword_4FA60);
  sub_33AA0();
  sub_324C();
  sub_346F0();
  v15 = v14;
  (*(v5 + 8))(v8, v13);
  if (v15)
  {
    return 2;
  }

  if (qword_4E588 != -1)
  {
    swift_once();
  }

  if (sub_24AC0(a2, qword_53A10))
  {
    v16 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return 2;
    }
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v17 = sub_342A0();
  sub_3034(v17, qword_53A18);
  v18 = sub_34280();
  v19 = sub_345E0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Source is unknown since ttsData in phonemeData doesn't have LNH phonemes", v20, 2u);
  }

  return 4;
}

uint64_t sub_27D80(void *a1, char a2, uint64_t a3)
{
  if (sub_1A678())
  {
    result = sub_235A8(a1);
    if (!result)
    {
      return result;
    }

    v7 = result;
    __chkstk_darwin(result);
    sub_257EC(sub_2846C, v7, v33);

    v40 = v33[6];
    v41 = v33[7];
    v42 = v34;
    v36[1] = v33[2];
    v37 = v33[3];
    v38 = v33[4];
    v39 = v33[5];
    v35 = v33[0];
    v36[0] = v33[1];
    if (sub_28284(&v35) == 1)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v19 = *(&v37 + 1);
        if (!*(&v37 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v19 = v40;
        if (!v40)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v19 = *&v36[0];
      if (!*&v36[0])
      {
        goto LABEL_19;
      }
    }

    if (*(v19 + 16))
    {
      v20 = *(v19 + 32);
      v21 = *(v19 + 48);
      v22 = *(v19 + 80);
      v27 = *(v19 + 64);
      v28 = v22;
      v26[0] = v20;
      v26[1] = v21;
      v45 = v27;
      v46 = v22;
      v23 = *(v19 + 48);
      v43 = *(v19 + 32);
      v44 = v23;
      sub_FE88(v26, &v29);
      sub_FFD8(v36);
      v29 = v43;
      v30 = v44;
      v24 = v46;
      v31 = v45;
LABEL_20:
      v32 = v24;
      v43 = v29;
      v44 = v30;
      v45 = v31;
      v46 = v24;
      v25 = sub_27AE8(&v43, a3);
      sub_A948(&v29, &qword_4FA38, &qword_38190);
      return v25;
    }

LABEL_19:
    sub_FFD8(v36);
    v24 = 0uLL;
    v29 = xmmword_35940;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_20;
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v8 = sub_342A0();
  sub_3034(v8, qword_53A18);
  v9 = a1;
  v10 = sub_34280();
  v11 = sub_345D0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v35 = v13;
    *v12 = 136315138;
    v14 = [v9 identifier];
    v15 = sub_343B0();
    v17 = v16;

    v18 = sub_22960(v15, v17, &v35);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "User has overridden the pronunciation in the UI for contactID: %s", v12, 0xCu);
    sub_3364(v13);
  }

  return 1;
}

unint64_t sub_280B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46F88;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_28104()
{
  result = qword_4F9A8;
  if (!qword_4F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9A8);
  }

  return result;
}

unint64_t sub_28158()
{
  result = qword_4F9D0;
  if (!qword_4F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9D0);
  }

  return result;
}

unint64_t sub_281AC()
{
  result = qword_4F9F0;
  if (!qword_4F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9F0);
  }

  return result;
}

unint64_t sub_28200()
{
  result = qword_4FA00;
  if (!qword_4FA00)
  {
    sub_A7E8(&qword_4F9F8, &qword_38178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA00);
  }

  return result;
}

uint64_t sub_28284(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2829C()
{
  result = qword_4FA20;
  if (!qword_4FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA20);
  }

  return result;
}

uint64_t sub_282F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_28338(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_28368()
{
  result = qword_4FA40;
  if (!qword_4FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA40);
  }

  return result;
}

unint64_t sub_283C0()
{
  result = qword_4FA48;
  if (!qword_4FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA48);
  }

  return result;
}

unint64_t sub_28418()
{
  result = qword_4FA50;
  if (!qword_4FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA50);
  }

  return result;
}

Swift::Int sub_28494()
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_28578(uint64_t a1)
{
  sub_34430();
}