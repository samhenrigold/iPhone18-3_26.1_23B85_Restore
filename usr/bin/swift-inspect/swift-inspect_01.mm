uint64_t sub_100011FA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 648;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 648;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[648 * v11] <= a4)
    {
      memmove(a4, __src, 648 * v11);
    }

    v12 = &v4[648 * v11];
    if (v10 < 648 || v6 <= v7)
    {
LABEL_32:
      v15 = v6;
    }

    else
    {
      do
      {
        v16 = v12 - 648;
        v5 -= 648;
        while (1)
        {
          v12 = v16 + 648;
          v19 = v5 + 648;
          if (*(v6 - 152) < *(v16 + 10))
          {
            break;
          }

          if (v19 != v12)
          {
            memmove(v5, v16, 0x288uLL);
          }

          v17 = v16 - 648;
          v5 -= 648;
          v18 = v16 > v4;
          v16 -= 648;
          if (!v18)
          {
            v12 = v17 + 648;
            goto LABEL_32;
          }
        }

        v15 = v6 - 648;
        if (v19 != v6)
        {
          memmove(v5, v6 - 648, 0x288uLL);
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 648;
      }

      while (v15 > v7);
      v12 = v16 + 648;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[648 * v9] <= a4)
    {
      memmove(a4, __dst, 648 * v9);
    }

    v12 = &v4[648 * v9];
    if (v8 >= 648 && v6 < v5)
    {
      while (*(v4 + 10) < *(v6 + 10))
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 648;
        if (!v14)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 648;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 648;
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v13, 0x288uLL);
      goto LABEL_13;
    }

LABEL_15:
    v15 = v7;
  }

  v20 = (v12 - v4) / 648;
  if (v15 != v4 || v15 >= &v4[648 * v20])
  {
    memmove(v15, v4, 648 * v20);
  }

  return 1;
}

unint64_t sub_100012214(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_100012318(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100012370(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

char *sub_1000123E8()
{
  v21 = 0;
  sub_1000021C0(&qword_1000B4CE8, &qword_10008FF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100090300;
  *(inited + 32) = 0xE00000001;
  *(inited + 40) = 0;
  if (sysctl((inited + 32), 3u, 0, &v21, 0, 0))
  {
    goto LABEL_12;
  }

  if (v21 < -647)
  {
    goto LABEL_28;
  }

  v1 = v21 / 648;
  if (v21 < 648)
  {
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for kinfo_proc(0);
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 2) = v1;
    v3 = 32;
    v4 = v1;
    do
    {
      bzero(&v2[v3], 0x288uLL);
      v3 += 648;
      --v4;
    }

    while (v4);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_10000E898(0, 3, 0, inited);
  }

  v5 = sysctl((inited + 32), 3u, v2 + 32, &v21, 0, 0);

  if (v5)
  {

LABEL_12:

    return 0;
  }

  if (v1 > v21 / 648)
  {
    sub_10001AA78(v1 - v21 / 648, v2);

    swift_unknownObjectRelease();
  }

  v20 = v2;

  sub_100011830(&v20);

  v7 = v20;
  v8 = getpid();
  v9 = 0;
  v10 = *(v7 + 2);
  v11 = _swiftEmptyArrayStorage;
LABEL_16:
  v12 = 648 * v9 + 72;
  while (v10 != v9)
  {
    if (v9 >= *(v7 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v13 = *&v7[v12];
    if (v13 < 2)
    {
      break;
    }

    v12 += 648;
    ++v9;
    if (v13 != v8)
    {
      v14 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10000E898(0, *(v14 + 2) + 1, 1, v14);
      }

      v11 = v14;
      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v19 = v15;
        v11 = sub_10000E898((v16 > 1), v17, 1, v11);
        v15 = v19;
      }

      *(v11 + 2) = v17;
      *&v11[4 * v15 + 32] = v13;
      goto LABEL_16;
    }
  }

  v18 = v11;

  return v18;
}

uint64_t sub_100012714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001275C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000127EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 48);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10008E640;
      sub_1000023DC();

      v7._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 9;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v4;
      v9._object = v5;
      String.append(_:)(v9);
      *(v6 + 56) = &type metadata for String;
      *(v6 + 32) = 30768;
      *(v6 + 40) = 0xE200000000000000;
      sub_1000185C0();
      print<A>(_:separator:terminator:to:)();

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10001295C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x74657366666FLL;
  if (a1 != 5)
  {
    v5 = 0x636172746B636162;
    v4 = 0xE900000000000065;
  }

  v6 = 0x4F79617272417369;
  v7 = 0xEE007373616C4366;
  if (a1 != 3)
  {
    v6 = 0x65676162726167;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x697461636F6C6C61;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736572646461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA00000000006E6FLL;
        if (v10 != 0x697461636F6C6C61)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701667182)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73736572646461)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74657366666FLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x636172746B636162)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEE007373616C4366;
    if (v10 != 0x4F79617272417369)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65676162726167)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

Swift::Int sub_100012B9C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100012CE0(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100012E00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018748(*a1);
  *a2 = result;
  return result;
}

void sub_100012E30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE600000000000000;
  v6 = 0x74657366666FLL;
  if (v2 != 5)
  {
    v6 = 0x636172746B636162;
    v5 = 0xE900000000000065;
  }

  v7 = 0xEE007373616C4366;
  v8 = 0x4F79617272417369;
  if (v2 != 3)
  {
    v8 = 0x65676162726167;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x697461636F6C6C61;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100012F18()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x74657366666FLL;
  if (v1 != 5)
  {
    v3 = 0x636172746B636162;
  }

  v4 = 0x4F79617272417369;
  if (v1 != 3)
  {
    v4 = 0x65676162726167;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x697461636F6C6C61;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100012FFC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100018748(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100013030(uint64_t a1)
{
  v2 = sub_1000197BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001306C(uint64_t a1)
{
  v2 = sub_1000197BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000130A8(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B4E60, &qword_100090AB8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  sub_100002AA0(a1, a1[3]);
  sub_1000197BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v3;
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v15) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (*(v3 + 56) == 1)
  {
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  if (*(v3 + 57) == 1)
  {
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v11 = v3[1];
  v12 = v3[2];
  v14 = v3[3];
  v13 = *(v3 + 32);
  if (v13)
  {
LABEL_12:
    if (v3[9])
    {
      LOBYTE(v15) = 6;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    if ((v13 & 1) == 0)
    {
      v15 = v11;
      v16 = v12;
      v17 = v14;
      v18 = 1;
      type metadata accessor for swift_metadata_allocation(0);
      sub_100019810(&qword_1000B4E70, type metadata accessor for swift_metadata_allocation, &protocol conformance descriptor for swift_metadata_allocation);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    }

    return (*(v6 + 8))(v8, v5);
  }

  result = v9 - v12;
  if (v9 < v12)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001339C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v13[0] = a5;
  v14 = a4;
  v7 = sub_1000021C0(&qword_1000B4E18, &qword_100090A98);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v13 - v9;
  sub_100002AA0(a1, a1[3]);
  sub_1000195B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v12 = v13[0];
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[1] = v12;
    v15 = 2;
    sub_1000021C0(&qword_1000B4E28, &qword_100090AA0);
    sub_100019608(&qword_1000B4E30, &qword_1000B4E28, &qword_100090AA0, sub_100019684);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000135D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021C0(&qword_1000B4E40, &qword_100090AA8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  sub_100002AA0(a1, a1[3]);
  sub_1000196D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    sub_1000021C0(&qword_1000B4E50, &qword_100090AB0);
    sub_10001972C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000137B0()
{
  v1 = 6580592;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1000137FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100018794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100013824(uint64_t a1)
{
  v2 = sub_1000195B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013860(uint64_t a1)
{
  v2 = sub_1000195B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000138C0()
{
  if (*v0)
  {
    return 0x65737365636F7270;
  }

  else
  {
    return 0x7A69536C61746F74;
  }
}

uint64_t sub_100013900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7A69536C61746F74 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65737365636F7270 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000139E0(uint64_t a1)
{
  v2 = sub_1000196D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013A1C(uint64_t a1)
{
  v2 = sub_1000196D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100013A74(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  if (v9 >> 60 != 15)
  {
    v11 = *v2;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v11 writeData:isa];

    return sub_1000197A8(v7, v9);
  }

  return result;
}

double sub_100013BA4()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000030, 0x80000001000979F0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B64D8 = v2[6];
  unk_1000B64E8 = v2[7];
  xmmword_1000B64F8 = v2[8];
  qword_1000B6508 = v3;
  xmmword_1000B6498 = v2[2];
  unk_1000B64A8 = v2[3];
  xmmword_1000B64B8 = v2[4];
  unk_1000B64C8 = v2[5];
  result = *v2;
  xmmword_1000B6478 = v2[0];
  unk_1000B6488 = v2[1];
  return result;
}

uint64_t sub_100013C64()
{
  v1 = stderr.getter();
  setvbuf(v1, 0, 2, 0);
  v92 = &_swiftEmptyDictionarySingleton;
  v84 = _swiftEmptyArrayStorage;
  v2 = *(v0 + 48);
  v79 = *(v0 + 32);
  v80 = v2;
  v81 = *(v0 + 64);
  *&v82 = *(v0 + 80);
  v3 = *(v0 + 16);
  v77 = *v0;
  v78 = v3;
  v4 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v4, &v67, v5, v6);
  v7 = v67;
  v8 = v68;
  v9 = v69;
  v10 = v70;
  v11 = v71;
  v12 = v72;
  v61 = v73;
  sub_10001837C(v0, &v77);
  sub_10000957C(v7, v8, v9, v10, *(&v10 + 1), v11, v0, &v92, &v84);
  sub_1000183B4(v0);
  sub_1000022B8(v7, v8, v9);
  sub_1000022C8(v10, *(&v10 + 1), v11);
  sub_1000022C8(v12, *(&v12 + 1), v61);
  if (!v66)
  {
    v14 = *(v0 + 200);
    v15 = *(v0 + 232);
    v89 = *(v0 + 216);
    v90 = v15;
    v91 = *(v0 + 248);
    v16 = *(v0 + 168);
    v85 = *(v0 + 152);
    v86 = v16;
    v87 = *(v0 + 184);
    v88 = v14;
    v17 = *(v0 + 200);
    v18 = *(v0 + 232);
    v81 = *(v0 + 216);
    v82 = v18;
    v83 = *(v0 + 248);
    v19 = *(v0 + 168);
    v77 = *(v0 + 152);
    v78 = v19;
    v79 = *(v0 + 184);
    v80 = v17;
    v62 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    OptionGroup.wrappedValue.getter(v62, &v67, v20, v21);
    v22 = v67;
    v23 = v68;
    v24 = v69;
    v25 = v70;
    v26 = v71;
    v27 = v72;
    v49 = v73;
    v55 = v75;
    v58 = v74;
    v52 = v76;
    v77 = v70;
    LOBYTE(v78) = v71;
    v65 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v65, &v67, v28, v29);
    sub_1000022C8(v22, v23, v24);
    sub_1000022C8(v25, *(&v25 + 1), v26);
    sub_1000022C8(v27, *(&v27 + 1), v49);
    sub_1000022B8(v58, v55, v52);
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v77 = v85;
    v78 = v86;
    v79 = v87;
    v80 = v88;
    if (v67 == 1)
    {
      OptionGroup.wrappedValue.getter(v62, &v67, v30, v31);
      v32 = v67;
      v33 = v68;
      v34 = v69;
      v50 = *(&v70 + 1);
      v53 = v70;
      v35 = v71;
      v36 = v72;
      v37 = v73;
      v59 = v75;
      v63 = v74;
      v56 = v76;
      v77 = v72;
      LOBYTE(v78) = v73;
      Flag.wrappedValue.getter(v65, &v67, v38, v39);
      sub_1000022C8(v32, v33, v34);
      sub_1000022C8(v53, v50, v35);
      sub_1000022C8(v36, *(&v36 + 1), v37);
      sub_1000022B8(v63, v59, v56);
      v40 = v92;
      *(&v78 + 1) = sub_1000021C0(&qword_1000B4D90, &qword_1000907C8);
      *&v79 = sub_100018438();
      *&v77 = v40;

      sub_100015564(&v77);
      sub_100002B38(&v77);
    }

    else
    {
      OptionGroup.wrappedValue.getter(v62, &v67, v30, v31);
      v41 = v67;
      v42 = v68;
      v43 = v69;
      v51 = *(&v70 + 1);
      v54 = v70;
      v44 = v71;
      v45 = v72;
      v46 = v73;
      v60 = v75;
      v64 = v74;
      v57 = v76;
      v77 = v72;
      LOBYTE(v78) = v73;
      Flag.wrappedValue.getter(v65, &v67, v47, v48);
      sub_1000022C8(v41, v42, v43);
      sub_1000022C8(v54, v51, v44);
      sub_1000022C8(v45, *(&v45 + 1), v46);
      sub_1000022B8(v64, v60, v57);
      sub_100015B28(v92);
    }
  }
}

uint64_t sub_10001416C(Swift::Int a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t *a5)
{
  swift_getObjectType();
  if (!*(a1 + 40))
  {
    goto LABEL_68;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100002310;
  *(v11 + 24) = v10;
  *&v156 = sub_100010E78;
  *(&v156 + 1) = v11;
  swift_retain_n();
  v12 = swift_reflection_iterateMetadataAllocations();

  if (v12)
  {
    v13 = String.init(cString:)();
    v15 = v14;
    sub_100002388();
    swift_allocError();
    *v16 = v13;
    v16[1] = v15;
    swift_willThrow();
  }

  v106 = a4;

  swift_beginAccess();
  v18 = *(v10 + 16);

  *&v156 = v18;

  sub_100016A48(&v156);
  if (v5)
  {
    goto LABEL_70;
  }

  v19 = v156;
  v20 = *(a3 + 104);
  v163 = *(a3 + 88);
  v164 = v20;
  v21 = *(a3 + 136);
  v165 = *(a3 + 120);
  v166 = v21;
  v22 = *(a3 + 104);
  v156 = *(a3 + 88);
  v157 = v22;
  v23 = *(a3 + 136);
  v158 = *(a3 + 120);
  v159 = v23;
  v112 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
  OptionGroup.wrappedValue.getter(v112, &v167, v24, v25);
  v26 = sub_1000054E4();
  v171 = v167;
  v172 = v168;
  sub_100002BCC(&v171, &qword_1000B47E8, &unk_10008E9A0);
  v173 = v169;
  v174 = v170;
  sub_100002BCC(&v173, &qword_1000B47E8, &unk_10008E9A0);
  if (v26 != 2)
  {
    v28 = *(a1 + 40);
    if (v28)
    {
      v27 = sub_100004444(v28);
      goto LABEL_9;
    }

    __break(1u);
LABEL_70:

    __break(1u);
    return result;
  }

  v27 = &_swiftEmptyDictionarySingleton;
LABEL_9:
  v142 = a1;
  v115 = *(v19 + 16);
  if (!v115)
  {

    v30 = _swiftEmptyArrayStorage;
    goto LABEL_55;
  }

  v29 = 0;
  v114 = v19 + 32;
  v108 = v27;
  v109 = v19 + 24;
  v30 = _swiftEmptyArrayStorage;
  v31 = 24;
  v111 = v19;
  do
  {
    if (v29 >= *(v19 + 16))
    {
      goto LABEL_64;
    }

    v35 = v114 + 24 * v29;
    v36 = *(v35 + 16);
    v37 = *(v35 + 8);
    LODWORD(v156) = *v35;
    *(&v156 + 1) = v37;
    LODWORD(v157) = v36;
    v38 = swift_reflection_allocationMetadataPointer();
    if (!v38)
    {
      goto LABEL_12;
    }

    v41 = v38;
    v42 = *(v19 + 16);
    v143 = v30;
    v139 = v29;
    if (v42)
    {
      v43 = (v109 + 24 * v42);
      do
      {
        v31 = *(v43 - 1);
        if (v38 >= v31)
        {
          v19 = *v43;
          if (__CFADD__(v31, v19))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            result = sub_10000EE0C(0, *(v30 + 2) + 1, 1, v30);
            v30 = result;
            *v6 = result;
LABEL_57:
            v94 = *(v30 + 2);
            v93 = *(v30 + 3);
            if (v94 >= v93 >> 1)
            {
              result = sub_10000EE0C((v93 > 1), v94 + 1, 1, v30);
              v30 = result;
              *v6 = result;
            }

            *(v30 + 2) = v94 + 1;
            v95 = &v30[32 * v94];
            *(v95 + 4) = v31;
            *(v95 + 5) = v7;
            *(v95 + 12) = v19;
            *(v95 + 7) = v143;
            return result;
          }

          if (v38 < v31 + v19)
          {
            v126 = 0;
            v144 = 0;
            v124 = *(v43 - 4);
            goto LABEL_23;
          }
        }

        v43 -= 6;
        --v42;
      }

      while (v42);
    }

    v124 = 0;
    v31 = 0;
    v19 = 0;
    v126 = swift_reflection_ownsAddressStrict() == 0;
    v144 = 1;
LABEL_23:
    v156 = v163;
    v157 = v164;
    v158 = v165;
    v159 = v166;
    OptionGroup.wrappedValue.getter(v112, &v147, v39, v40);
    v44 = *(&v147 + 1);
    v131 = v147;
    v135 = v148;
    v45 = v149;
    v46 = v150;
    v156 = v149;
    LOBYTE(v157) = v150;
    v47 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v47, &v147, v48, v49);
    v128 = v47;
    if (v147)
    {
      sub_1000022C8(v131, v44, v135);
      sub_1000022C8(v45, *(&v45 + 1), v46);
      if ((v144 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *&v156 = v131;
      *(&v156 + 1) = v44;
      LOBYTE(v157) = v135;
      Flag.wrappedValue.getter(v47, &v147, v50, v51);
      sub_1000022C8(v131, v44, v135);
      sub_1000022C8(v45, *(&v45 + 1), v46);
      if (!(v144 & 1 | ((v147 & 1) == 0)))
      {
LABEL_25:
        v52 = a3;
        if (v108[2] && (sub_10001F92C(v31), (v53 & 1) != 0))
        {
          swift_unknownObjectRetain();

          v54 = sub_1000102F4();
          v132 = v55;
          v136 = v54;

          swift_unknownObjectRelease();
          if (!*(v142 + 40))
          {
            goto LABEL_67;
          }
        }

        else
        {
          v132 = 0;
          v136 = 0;
          if (!*(v142 + 40))
          {
            goto LABEL_67;
          }
        }

        goto LABEL_33;
      }
    }

    v132 = 0;
    v136 = 0;
    v52 = a3;
    if (!*(v142 + 40))
    {
      goto LABEL_67;
    }

LABEL_33:
    v56 = *(v52 + 200);
    v57 = *(v52 + 232);
    v160 = *(v52 + 216);
    v161 = v57;
    v162 = *(v52 + 248);
    v58 = *(v52 + 168);
    v156 = *(v52 + 152);
    v157 = v58;
    v158 = *(v52 + 184);
    v159 = v56;
    v59 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    OptionGroup.wrappedValue.getter(v59, &v147, v60, v61);
    v62 = v147;
    v63 = v148;
    v64 = *(&v149 + 1);
    v117 = v149;
    v116 = v150;
    v119 = *(&v151 + 1);
    v120 = v151;
    v118 = v152;
    v122 = v154;
    v123 = v153;
    v121 = v155;
    v156 = v147;
    LOBYTE(v157) = v148;
    Flag.wrappedValue.getter(v128, &v147, v65, v66);
    sub_1000022C8(v62, *(&v62 + 1), v63);
    sub_1000022C8(v117, v64, v116);
    sub_1000022C8(v120, v119, v118);
    sub_1000022B8(v123, v122, v121);
    if (swift_reflection_typeRefForMetadata() && (v67 = swift_reflection_copyNameForTypeRef()) != 0)
    {
      v68 = v67;
      v69 = String.init(cString:)();
      v6 = v70;
      free(v68);
    }

    else
    {
      v69 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    a1 = v142;
    v71 = v143;
    if (!*(v142 + 40))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    if (swift_reflection_typeRefForMetadata() && (v72 = swift_reflection_copyNameForTypeRef()) != 0)
    {
      v73 = v72;
      String.init(cString:)();
      free(v73);
      v74._object = 0x8000000100097330;
      v74._countAndFlagsBits = 0xD00000000000001DLL;
      LOBYTE(v73) = String.hasPrefix(_:)(v74);

      if (v73)
      {
        a1 = v142;
        if (swift_reflection_typeRefForMetadata() && swift_reflection_genericArgumentCountOfTypeRef() == 1 && swift_reflection_genericArgumentOfTypeRef())
        {
          swift_reflection_infoForTypeRef();
          v75 = v156 == 13;
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        v75 = 0;
        a1 = v142;
      }

      v71 = v143;
    }

    else
    {
      v75 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_10000EF18(0, *(v71 + 2) + 1, 1, v71);
    }

    v7 = *(v71 + 2);
    v76 = *(v71 + 3);
    v77 = v71;
    if (v7 >= v76 >> 1)
    {
      v77 = sub_10000EF18((v76 > 1), v7 + 1, 1, v71);
    }

    *(v77 + 2) = v7 + 1;
    v30 = v77;
    v32 = &v77[80 * v7];
    *(v32 + 4) = v41;
    *(v32 + 5) = v124;
    *(v32 + 6) = v31;
    *(v32 + 7) = v19;
    v32[64] = v144;
    v33 = *(&v156 + 3);
    *(v32 + 65) = v156;
    *(v32 + 17) = v33;
    *(v32 + 9) = v69;
    *(v32 + 10) = v6;
    v32[88] = v75;
    v32[89] = v126;
    v34 = v147;
    *(v32 + 47) = WORD2(v147);
    *(v32 + 90) = v34;
    *(v32 + 12) = v136;
    *(v32 + 13) = v132;
    v19 = v111;
    v29 = v139;
    v31 = 24;
LABEL_12:
    ++v29;
  }

  while (v29 != v115);

LABEL_55:
  swift_unknownObjectRetain();
  v143 = v30;
  sub_100018030(v30, v106, a1);
  swift_unknownObjectRelease();
  v78 = *(a3 + 200);
  v79 = *(a3 + 232);
  v160 = *(a3 + 216);
  v161 = v79;
  v162 = *(a3 + 248);
  v80 = *(a3 + 168);
  v156 = *(a3 + 152);
  v157 = v80;
  v158 = *(a3 + 184);
  v159 = v78;
  v127 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
  OptionGroup.wrappedValue.getter(v127, &v147, v81, v82);
  v83 = v147;
  v84 = v148;
  v85 = v149;
  v86 = v150;
  v87 = *(&v151 + 1);
  v133 = v151;
  v129 = v152;
  v145 = v153;
  v140 = v154;
  v137 = v155;
  v156 = v149;
  LOBYTE(v157) = v150;
  v125 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v125, &v147, v88, v89);
  sub_1000022C8(v83, *(&v83 + 1), v84);
  sub_1000022C8(v85, *(&v85 + 1), v86);
  sub_1000022C8(v133, v87, v129);
  sub_1000022B8(v145, v140, v137);
  if (v147)
  {
    v31 = sub_10000CFA4();
    v7 = v92;
    *(&v157 + 1) = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v156) = *(v142 + 20);
    swift_dynamicCast();
    LODWORD(v19) = v147;
    v6 = a5;
    v30 = *a5;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v30;
    if ((result & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v96 = *(a3 + 200);
  v97 = *(a3 + 232);
  v160 = *(a3 + 216);
  v161 = v97;
  v162 = *(a3 + 248);
  v98 = *(a3 + 168);
  v156 = *(a3 + 152);
  v157 = v98;
  v158 = *(a3 + 184);
  v159 = v96;
  OptionGroup.wrappedValue.getter(v127, &v147, v90, v91);
  v99 = v147;
  v100 = v148;
  v130 = *(&v149 + 1);
  v134 = v149;
  v101 = v150;
  v102 = v151;
  v103 = v152;
  v146 = v153;
  v141 = v154;
  v138 = v155;
  v156 = v151;
  LOBYTE(v157) = v152;
  Flag.wrappedValue.getter(v125, &v147, v104, v105);
  sub_1000022C8(v99, *(&v99 + 1), v100);
  sub_1000022C8(v134, v130, v101);
  sub_1000022C8(v102, *(&v102 + 1), v103);
  sub_1000022B8(v146, v141, v138);
  if ((v147 & 1) == 0)
  {
    sub_1000150C8(v142, a2, v30);
  }
}

uint64_t sub_100014D38(uint64_t result, Swift::Int *a2, Swift::Int a3)
{
  if (*(result + 32))
  {
    return result;
  }

  v6 = *(result + 40);
  v5 = *(result + 48);
  v7 = *(result + 24);
  v8 = *(*a2 + 16);

  if (!v8 || (, sub_10001F970(v6, v5), v10 = v9, , (v10 & 1) == 0))
  {
    sub_1000021C0(&qword_1000B4C88, &qword_10008FEE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = sub_10000CFA4();
    *(inited + 40) = v21;
    v22 = sub_100017F98(inited);
    swift_setDeallocating();
    sub_1000186F4(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *a2;
    *a2 = 0x8000000000000000;
    sub_100021214(v7, v22, v6, v5, isUniquelyReferenced_nonNull_native);

    *a2 = v41;
    return result;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *a2;
  v12 = v41;
  *a2 = 0x8000000000000000;
  v13 = sub_10001F970(v6, v5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_27;
  }

  v10 = v14;
  if (*(v12 + 24) >= v18)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_10001FF3C(v18, v11);
    v13 = sub_10001F970(v6, v5);
    if ((v10 & 1) != (v19 & 1))
    {
LABEL_33:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

  if ((v10 & 1) == 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    sub_10002179C();
    if ((v11 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v24 = v41;
    v25 = (*(v41 + 56) + 16 * v13);
    if (__OFADD__(*v25, v7))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v25[1])
    {
      *v25 += v7;
    }

    else
    {
      v26 = v13;
      sub_1000186F4(*(v41 + 48) + 16 * v13);
      sub_100020D90(v26, v41);
    }

    *a2 = v24;
    a3 = sub_10000CFA4();
    v10 = v27;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v42 = *a2;
    v29 = v42;
    *a2 = 0x8000000000000000;
    v7 = sub_10001F970(v6, v5);
    v31 = *(v29 + 16);
    v32 = (v30 & 1) == 0;
    v13 = v31 + v32;
    if (!__OFADD__(v31, v32))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v11 = v13;
    sub_10002179C();
    v13 = v11;
    if ((v10 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  LOBYTE(v11) = v30;
  if (*(v29 + 24) >= v13)
  {
    if (v28)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    goto LABEL_31;
  }

  sub_10001FF3C(v13, v28);
  v33 = sub_10001F970(v6, v5);
  if ((v11 & 1) != (v34 & 1))
  {
    goto LABEL_33;
  }

  v7 = v33;
  if ((v11 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_22:
  v35 = (*(v42 + 56) + 16 * v7);
  v39 = *v35;
  v40 = v35[1];
  sub_100023418(&v41, a3, v10);

  if (v40)
  {

    v36 = v42;
    v37 = (*(v42 + 56) + 16 * v7);
    *v37 = v39;
    v37[1] = v40;

    *a2 = v36;
  }

  else
  {

    v38 = v42;
    sub_1000186F4(*(v42 + 48) + 16 * v7);
    result = sub_100020D90(v7, v38);
    *a2 = v38;
  }

  return result;
}

void sub_1000150C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  v59 = _swiftEmptyArrayStorage;
  v5 = *(v3 + 232);
  v44 = *(v3 + 216);
  v45 = v5;
  v46 = *(v3 + 248);
  v6 = *(v3 + 168);
  v40 = *(v3 + 152);
  v41 = v6;
  v42 = *(v3 + 184);
  v43 = v4;
  v7 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
  OptionGroup.wrappedValue.getter(v7, &v47, v8, v9);
  v10 = v47;
  v11 = v48;
  v12 = v49;
  v13 = v51;
  v35 = v50;
  v14 = v52;
  v37 = v54;
  v38 = v53;
  v36 = v55;
  v15 = v56;
  v16 = v57;
  v40 = v56;
  LOBYTE(v41) = v57;
  v17 = sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
  Option.wrappedValue.getter(v17, &v47, v18, v19);
  sub_1000022C8(v10, v11, v12);
  sub_1000022C8(v35, v13, v14);
  sub_1000022C8(v38, v37, v36);
  sub_1000022B8(v15, *(&v15 + 1), v16);
  v20 = sub_100018138(v47, v48);
  if (!v39)
  {
    v58[0] = v20;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10008E640;
    v47 = 0;
    v48 = 0xE000000000000000;
    swift_getObjectType();
    v22._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 40;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    *(&v41 + 1) = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v40) = *(a1 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v40);
    v24._countAndFlagsBits = 670249;
    v24._object = 0xE300000000000000;
    String.append(_:)(v24);
    v25 = v47;
    v26 = v48;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 32) = v25;
    *(v21 + 40) = v26;
    sub_1000185C0();
    print<A>(_:separator:terminator:to:)();

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10008F230;
    *(v27 + 32) = 0x73736572646441;
    *(v27 + 40) = 0xE700000000000000;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = 0x697461636F6C6C41;
    *(v27 + 72) = 0xEA00000000006E6FLL;
    *(v27 + 88) = &type metadata for String;
    *(v27 + 96) = 1702521171;
    *(v27 + 104) = 0xE400000000000000;
    *(v27 + 120) = &type metadata for String;
    *(v27 + 128) = 0x74657366664FLL;
    *(v27 + 136) = 0xE600000000000000;
    *(v27 + 152) = &type metadata for String;
    strcpy((v27 + 160), "isArrayOfClass");
    *(v27 + 175) = -18;
    *(v27 + 216) = &type metadata for String;
    *(v27 + 184) = &type metadata for String;
    *(v27 + 192) = 1701667150;
    *(v27 + 200) = 0xE400000000000000;
    print<A>(_:separator:terminator:to:)();

    sub_10001837C(v34, &v40);
    sub_100017E90(a3, v58, &v59, v34);
    sub_1000183B4(v34);
    v28 = v59;
    if (v59[2])
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10008E640;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 32) = 0xD00000000000005BLL;
      *(v29 + 40) = 0x8000000100097970;
      print<A>(_:separator:terminator:to:)();

      sub_1000127EC(v28, v58);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10008E640;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    print<A>(_:separator:terminator:to:)();

    v31 = v58[0];
  }
}

uint64_t sub_100015564(void *a1)
{
  v2 = v1;
  v45 = type metadata accessor for String.Encoding();
  v44 = *(v45 - 8);
  __chkstk_darwin();
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v34 - v5;
  type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v6 = JSONEncoder.init()();
  sub_1000021C0(&qword_1000B4DA8, &qword_1000907D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10008F240;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  *&v58 = v7;
  sub_100019810(&qword_1000B4DB0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1000021C0(&qword_1000B4DB8, &qword_1000907D8);
  sub_10000BD8C(&qword_1000B4DC0, &qword_1000B4DB8, &qword_1000907D8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_100002AA0(a1, a1[3]);
  v8 = v65;
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v8)
  {
  }

  v42 = 0;
  v65 = v6;
  v12 = v10;
  v13 = v9;
  static String.Encoding.utf8.getter();
  v40 = v13;
  v41 = v12;
  result = String.init(data:encoding:)();
  v39 = result;
  v46 = v14;
  if (v14)
  {
    v15 = *(v2 + 200);
    v16 = *(v2 + 232);
    v62 = *(v2 + 216);
    v63 = v16;
    v64 = *(v2 + 248);
    v17 = *(v2 + 168);
    v58 = *(v2 + 152);
    v59 = v17;
    v60 = *(v2 + 184);
    v61 = v15;
    v18 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    OptionGroup.wrappedValue.getter(v18, &v47, v19, v20);
    v21 = v47;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v35 = v52;
    v38 = v53;
    v37 = v54;
    v36 = v55;
    v26 = v56;
    v27 = v57;
    v58 = v56;
    LOBYTE(v59) = v57;
    v28 = sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
    Option.wrappedValue.getter(v28, &v47, v29, v30);
    sub_1000022C8(v21, v22, v23);
    sub_1000022C8(v24, v25, v35);
    sub_1000022C8(v38, v37, v36);
    sub_1000022B8(v26, *(&v26 + 1), v27);
    if (v48)
    {
      *&v58 = v39;
      *(&v58 + 1) = v46;
      v31 = v43;
      static String.Encoding.utf8.getter();
      sub_10001856C();
      StringProtocol.write<A>(toFile:atomically:encoding:)();
      (*(v44 + 8))(v31, v45);
      sub_100018518(v40, v41);
    }

    else
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10008E640;
      *(v32 + 56) = &type metadata for String;
      v33 = v46;
      *(v32 + 32) = v39;
      *(v32 + 40) = v33;
      print(_:separator:terminator:)();
      sub_100018518(v40, v41);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100015B28(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v66 = *(v1 + 216);
  v67 = v3;
  v68 = *(v1 + 248);
  v4 = *(v1 + 168);
  v62 = *(v1 + 152);
  v63 = v4;
  v64 = *(v1 + 184);
  v65 = v2;
  v5 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
  OptionGroup.wrappedValue.getter(v5, &v51, v6, v7);
  v8 = v51;
  v9 = v52;
  v10 = v53;
  v11 = v55;
  v45 = v54;
  v12 = v56;
  v49 = v57;
  v47 = v58;
  v46 = v59;
  v13 = v60;
  v14 = v61;
  v62 = v60;
  LOBYTE(v63) = v61;
  v15 = sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
  Option.wrappedValue.getter(v15, &v51, v16, v17);
  sub_1000022C8(v8, v9, v10);
  sub_1000022C8(v45, v11, v12);
  sub_1000022C8(v49, v47, v46);
  sub_1000022B8(v13, *(&v13 + 1), v14);
  v18 = sub_100018138(v51, v52);
  if (v50)
  {
    return;
  }

  v69 = v18;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100090300;
  *(v19 + 32) = 1702521171;
  *(v19 + 40) = 0xE400000000000000;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 0x7372656E774FLL;
  *(v19 + 72) = 0xE600000000000000;
  *(v19 + 120) = &type metadata for String;
  *(v19 + 88) = &type metadata for String;
  *(v19 + 96) = 1701667150;
  *(v19 + 104) = 0xE400000000000000;
  sub_1000185C0();
  print<A>(_:separator:terminator:to:)();

  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = sub_10001FC48(*(a1 + 16), 0);
    v22 = sub_100017D0C(&v62, v21 + 4, v20, a1);
    v23 = v62;

    sub_100018614(v23);
    if (v22 == v20)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_6:
  *&v62 = v21;
  sub_1000169DC(&v62);
  v24 = *(v62 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = (v62 + 56);
    while (1)
    {
      v30 = *(v27 - 1);
      v28 = __OFADD__(v25, v30);
      v25 += v30;
      if (v28)
      {
        break;
      }

      v32 = *(v27 - 3);
      v31 = *(v27 - 2);
      v33 = *v27;
      v34 = v32 == 0x6E776F6E6B6E753CLL && v31 == 0xE90000000000003ELL;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v28 = __OFADD__(v26, v30);
        v26 += v30;
        if (v28)
        {
          goto LABEL_22;
        }
      }

      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100090300;
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 32) = v30;
      *(v29 + 64) = *(v33 + 16);
      *(v29 + 120) = &type metadata for String;
      *(v29 + 88) = &type metadata for Int;
      *(v29 + 96) = v32;
      *(v29 + 104) = v31;
      swift_bridgeObjectRetain_n();

      print<A>(_:separator:terminator:to:)();

      v27 += 4;
      if (!--v24)
      {
        v35 = v25 / 1024;
        v48 = v26 / 1024;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);

    __break(1u);
  }

  else
  {
    v48 = 0;
    v35 = 0;
LABEL_19:

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10008E640;
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    strcpy(&v62, "\nTotal size:\t");
    HIWORD(v62) = -4864;
    v51 = v35;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 1114196768;
    v38._object = 0xE400000000000000;
    String.append(_:)(v38);
    v39 = v62;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 32) = v39;
    print<A>(_:separator:terminator:to:)();

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10008E640;
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    strcpy(&v62, "Unknown size:\t");
    HIBYTE(v62) = -18;
    v51 = v48;
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 1114196768;
    v42._object = 0xE400000000000000;
    String.append(_:)(v42);
    v43 = v62;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = v43;
    print<A>(_:separator:terminator:to:)();
  }
}

uint64_t sub_100016118(unint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = *(a1 + 32);
  v8 = a1[6];
  v57 = a1[5];
  v45 = v8;
  v44 = *(a1 + 56);
  v43 = *(a1 + 57);
  v41 = a1[8];
  v42 = a1[9];
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008E640;
  *&v47 = 30768;
  *(&v47 + 1) = 0xE200000000000000;
  *&v51 = v5;
  v10 = sub_1000023DC();
  v11._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v11);

  v12 = v47;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v12;
  v13 = a2;
  v14 = v7;
  sub_1000185C0();
  print<A>(_:separator:terminator:to:)();

  if (v7)
  {
    v13 = v45;
    if (!v43)
    {
LABEL_7:
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10008E640;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 32) = 0x3F093F3F093F3F3FLL;
      v21 = 0xEA00000000003F3FLL;
      goto LABEL_11;
    }

    v10 = *a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_10000F038((v16 > 1), v17 + 1, 1, v10);
        *a3 = v10;
      }

      v10[2] = v17 + 1;
      v18 = &v10[3 * v17];
      v19 = v57;
      v18[4] = v5;
      v18[5] = v19;
      v18[6] = v13;
      goto LABEL_7;
    }

LABEL_18:
    v10 = sub_10000F038(0, v10[2] + 1, 1, v10);
    *a3 = v10;
    goto LABEL_4;
  }

  if (v5 < v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (((v5 - v6) & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10008E640;
  *&v47 = 30768;
  *(&v47 + 1) = 0xE200000000000000;
  v23._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 9;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 9;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  *&v51 = v5 - v6;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v20 = v22;
  v14 = v7;
  v21 = 0xE200000000000000;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = 30768;
  v13 = v45;
LABEL_11:
  *(v20 + 40) = v21;
  print<A>(_:separator:terminator:to:)();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10008E640;
  *(v28 + 56) = &type metadata for Bool;
  *(v28 + 32) = v44;
  print<A>(_:separator:terminator:to:)();

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10008E640;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 32) = v57;
  *(v29 + 40) = v13;

  print<A>(_:separator:terminator:to:)();

  v30 = *(a4 + 104);
  v47 = *(a4 + 88);
  v48 = v30;
  v31 = *(a4 + 136);
  v49 = *(a4 + 120);
  v50 = v31;
  v32 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
  OptionGroup.wrappedValue.getter(v32, &v51, v33, v34);
  v35 = sub_1000054E4();
  v55 = v51;
  v56 = v52;
  sub_100002BCC(&v55, &qword_1000B47E8, &unk_10008E9A0);
  v47 = v53;
  LOBYTE(v48) = v54;
  result = sub_100002BCC(&v47, &qword_1000B47E8, &unk_10008E9A0);
  if (!((v35 == 2) | v14 & 1))
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10008E640;
    *(v37 + 56) = &type metadata for String;
    v38 = 0x80000001000979D0;
    v39 = 0xD000000000000019;
    if (v42)
    {
      v39 = v41;
      v38 = v42;
    }

    *(v37 + 32) = v39;
    *(v37 + 40) = v38;

    print<A>(_:separator:terminator:to:)();
  }

  return result;
}

unint64_t sub_10001669C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_1000166FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000188AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100016724(uint64_t a1)
{
  v2 = sub_1000192C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016760(uint64_t a1)
{
  v2 = sub_1000192C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001679C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B4708 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6478, v2);
}

void *sub_100016898@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100018B3C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x108uLL);
  }

  return result;
}

unint64_t sub_1000168E4(uint64_t a1)
{
  result = sub_10001690C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001690C()
{
  result = qword_1000B4D60;
  if (!qword_1000B4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D60);
  }

  return result;
}

unint64_t sub_100016960(uint64_t a1)
{
  result = sub_100016988();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100016988()
{
  result = qword_1000B4D68;
  if (!qword_1000B4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D68);
  }

  return result;
}

Swift::Int sub_1000169DC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024A80(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100016BB0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100016A48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024A94(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 4);
          v15 = *(v13 + 8);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 2) = v14;
          *v13 = v11;
          *(v13 + 2) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for swift_metadata_allocation(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_1000172F0(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_100016BB0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000021C0(&qword_1000B4DD8, &qword_1000907F0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100016D40(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100016CB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100016CB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 32 * a3 + 24);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(*(v9 - 1) + 16) >= *(v7 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = *(v9 - 1);
      *v9 = *(v9 - 2);
      *(v9 + 1) = v13;
      *(v9 - 3) = v11;
      *(v9 - 2) = v12;
      *(v9 - 1) = v7;
      *(v9 - 4) = v10;
      v9 -= 4;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100016D40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = v4;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10002299C(v11);
      v11 = result;
    }

    v88 = *(v11 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v11[16 * v88];
        v90 = *&v11[16 * v88 + 24];
        sub_1000178BC((*a3 + 32 * v89), (*a3 + 32 * *&v11[16 * v88 + 16]), (*a3 + 32 * v90), v5);
        if (v6)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10002299C(v11);
        }

        if (v88 - 2 >= *(v11 + 2))
        {
          goto LABEL_114;
        }

        v91 = &v11[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_100022910(v88 - 1);
        v88 = *(v11 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = *a3 + 32 * v12;
      v14 = *(*(*a3 + 32 * v10 + 24) + 16);
      v15 = *(*(v13 + 24) + 16);
      v16 = v12 + 2;
      v17 = (v13 + 88);
      v18 = v14;
      while (v8 != v16)
      {
        v19 = *v17;
        v17 += 4;
        v20 = (v15 < v14) ^ (v18 >= *(v19 + 16));
        ++v16;
        v18 = *(v19 + 16);
        if ((v20 & 1) == 0)
        {
          v10 = v16 - 1;
          if (v15 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v10 = v8;
      if (v15 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v10 < v12)
      {
        goto LABEL_117;
      }

      if (v12 < v10)
      {
        v21 = 32 * v10 - 16;
        v22 = 32 * v12 + 24;
        v23 = v10;
        v24 = v12;
        do
        {
          if (v24 != --v23)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v25 = (v31 + v22);
            v26 = (v31 + v21);
            v27 = *(v25 - 3);
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = *v26;
            *(v25 - 3) = *(v26 - 1);
            *(v25 - 1) = v30;
            *(v26 - 1) = v27;
            *v26 = v28;
            *(v26 + 1) = v29;
          }

          ++v24;
          v21 -= 32;
          v22 += 32;
        }

        while (v24 < v23);
        v8 = a3[1];
      }
    }

LABEL_20:
    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_116;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_118;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v12)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v43 = *(v11 + 3);
    v44 = v5 + 1;
    if (v5 >= v43 >> 1)
    {
      result = sub_10000E99C((v43 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v44;
    v45 = &v11[16 * v5];
    *(v45 + 4) = v12;
    *(v45 + 5) = v10;
    v46 = *v93;
    if (!*v93)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v11 + 4);
          v49 = *(v11 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = &v11[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_107;
          }

          v70 = &v11[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v74 = &v11[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_71:
        if (v69)
        {
          goto LABEL_106;
        }

        v77 = &v11[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_109;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_78:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v86 = *&v11[16 * v85 + 32];
        v5 = *&v11[16 * v47 + 40];
        sub_1000178BC((*a3 + 32 * v86), (*a3 + 32 * *&v11[16 * v47 + 32]), (*a3 + 32 * v5), v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10002299C(v11);
        }

        if (v85 >= *(v11 + 2))
        {
          goto LABEL_101;
        }

        v87 = &v11[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        result = sub_100022910(v47);
        v44 = *(v11 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v11[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = &v11[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_108;
      }

      if (v63 >= v55)
      {
        v81 = &v11[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_112;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 32 * v10;
  v34 = v12 - v10;
LABEL_30:
  v35 = *(v32 + 32 * v10 + 24);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(*(v37 - 1) + 16) >= *(v35 + 16))
    {
LABEL_29:
      ++v10;
      v33 += 32;
      --v34;
      if (v10 != v8)
      {
        goto LABEL_30;
      }

      v10 = v8;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    v41 = *(v37 - 1);
    *v37 = *(v37 - 2);
    *(v37 + 1) = v41;
    *(v37 - 3) = v39;
    *(v37 - 2) = v40;
    *(v37 - 1) = v35;
    *(v37 - 4) = v38;
    v37 -= 4;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
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
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1000172F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10002299C(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100017AD0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 8);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = v21[4];
            v26 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v26;
            *(v22 - 4) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_10000E99C((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_100017AD0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 8);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *(v33 - 2))
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = v33[4];
    *v33 = *(v33 - 6);
    *(v33 + 2) = *(v33 - 1);
    *(v33 - 2) = v31;
    *(v33 - 2) = v35;
    *(v33 - 6) = v34;
    v33 -= 6;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000178BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(*(v4 + 3) + 16) < *(*(v6 + 3) + 16))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(*(v6 - 1) + 16) < *(*(v14 - 1) + 16))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100017AD0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) < *(v6 - 2))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

void *sub_100017D0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100017E90(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 5)
    {
      v10 = i[1];
      v11 = i[3];
      v25 = i[2];
      v26 = v11;
      v12 = i[3];
      v27 = i[4];
      v13 = i[1];
      v24[0] = *i;
      v24[1] = v13;
      v21 = v25;
      v22 = v12;
      v23 = i[4];
      v19 = v24[0];
      v20 = v10;
      sub_10001868C(v24, &v14);
      sub_100016118(&v19, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      result = sub_1000186C4(&v14);
      if (!--v5)
      {
        return result;
      }
    }

    v16 = v21;
    v17 = v22;
    v18 = v23;
    v14 = v19;
    v15 = v20;
    return sub_1000186C4(&v14);
  }

  return result;
}

uint64_t sub_100017F98(uint64_t a1)
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

      sub_100023418(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100018030(uint64_t result, Swift::Int *a2, Swift::Int a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v23 = i[2];
      v24 = v9;
      v10 = i[3];
      v25 = i[4];
      v11 = i[1];
      v22[0] = *i;
      v22[1] = v11;
      v19 = v23;
      v20 = v10;
      v21 = i[4];
      v17 = v22[0];
      v18 = v8;
      sub_10001868C(v22, &v12);
      sub_100014D38(&v17, a2, a3);
      if (v3)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_1000186C4(&v12);
      if (!--v4)
      {
        return result;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v12 = v17;
    v13 = v18;
    return sub_1000186C4(&v12);
  }

  return result;
}

id sub_100018138(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = objc_allocWithZone(NSFileManager);

    v5 = [v4 init];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 createFileAtPath:v6 contents:0 attributes:0];

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() fileHandleForWritingAtPath:v8];

      if (v9)
      {
        swift_bridgeObjectRelease_n();
        return v9;
      }

      __break(1u);
    }

    else
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10008E640;
      _StringGuts.grow(_:)(24);

      v12._countAndFlagsBits = a1;
      v12._object = a2;
      String.append(_:)(v12);
      *(v11 + 56) = &type metadata for String;
      *(v11 + 32) = 0xD000000000000016;
      *(v11 + 40) = 0x8000000100097950;
      if (qword_1000B46F8 == -1)
      {
        goto LABEL_7;
      }
    }

    swift_once();
LABEL_7:
    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    exit(1);
  }

  return [objc_opt_self() fileHandleWithStandardOutput];
}

unint64_t sub_1000183E4()
{
  result = qword_1000B4D88;
  if (!qword_1000B4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D88);
  }

  return result;
}

unint64_t sub_100018438()
{
  result = qword_1000B4D98;
  if (!qword_1000B4D98)
  {
    sub_100002B84(&qword_1000B4D90, &qword_1000907C8);
    sub_1000184C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D98);
  }

  return result;
}

unint64_t sub_1000184C4()
{
  result = qword_1000B4DA0;
  if (!qword_1000B4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DA0);
  }

  return result;
}

uint64_t sub_100018518(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10001856C()
{
  result = qword_1000B4DC8;
  if (!qword_1000B4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DC8);
  }

  return result;
}

unint64_t sub_1000185C0()
{
  result = qword_1000B4DD0;
  if (!qword_1000B4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DD0);
  }

  return result;
}

uint64_t sub_10001861C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018654()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100018748(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A9F88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100018794(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_1000188AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000972D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100097A30 == a2)
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

void *sub_1000189D0@<X0>(void *a2@<X8>)
{
  v3 = ArgumentVisibility.default.unsafeMutableAddressor();
  v4 = *v3;
  v5 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v4, &type metadata for UniversalOptions, v5, v12);
  v11[2] = v12[2];
  v11[3] = v12[3];
  v11[4] = v12[4];
  *&v11[5] = v13;
  v11[0] = v12[0];
  v11[1] = v12[1];
  v6 = *v3;
  v7 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v6, &type metadata for BacktraceOptions, v7, v14);
  *(&v11[5] + 8) = v14[0];
  *(&v11[6] + 8) = v14[1];
  *(&v11[7] + 8) = v14[2];
  *(&v11[8] + 8) = v14[3];
  v8 = *v3;
  v9 = sub_100018AE8();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for GenericMetadataOptions, v9, &v11[9] + 8);
  memcpy(__dst, v11, sizeof(__dst));
  return memcpy(a2, __dst, 0x108uLL);
}

unint64_t sub_100018AE8()
{
  result = qword_1000B4DE0;
  if (!qword_1000B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DE0);
  }

  return result;
}

void *sub_100018B3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v30 = sub_1000021C0(&qword_1000B4DE8, &qword_1000907F8);
  v4 = *(v30 - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  v7 = ArgumentVisibility.default.unsafeMutableAddressor();
  v8 = *v7;
  v9 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for UniversalOptions, v9, v113);
  v109 = v113[2];
  v110 = v113[3];
  v111 = v113[4];
  v112 = v114;
  v107 = v113[0];
  v108 = v113[1];
  v10 = *v7;
  v11 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v10, &type metadata for BacktraceOptions, v11, &v78);
  v34 = *(&v78 + 1);
  v35 = v78;
  v32 = *(&v79 + 1);
  v33 = v79;
  v116 = *&v80[0];
  v36 = BYTE8(v80[0]);
  v31 = BYTE9(v80[0]);
  v106[0] = *(v80 + 10);
  v12 = *(&v80[1] + 1);
  *(v106 + 6) = *&v80[1];
  v13 = *v7;
  v14 = sub_100018AE8();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v13, &type metadata for GenericMetadataOptions, v14, v115);
  v103 = v115[4];
  v104 = v115[5];
  v105 = v115[6];
  v99 = v115[0];
  v100 = v115[1];
  v102 = v115[3];
  v101 = v115[2];
  sub_100002AA0(a1, a1[3]);
  sub_1000192C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v16 = v34;
    v15 = v35;
    v18 = v32;
    v17 = v33;
    sub_100002B38(a1);
    v80[0] = v109;
    v80[1] = v110;
    v81 = v111;
    v78 = v107;
    v79 = v108;
    v98 = v105;
    v97 = v104;
    v96 = v103;
    v95 = v102;
    v94 = v101;
    v93 = v100;
    v82 = v112;
    v83 = v15;
    v84 = v16;
    v85 = v17;
    v86 = v18;
    v87 = v116;
    v88 = v36;
    v89 = v31;
    *&v90[6] = *(v106 + 6);
    *v90 = v106[0];
    v91 = v12;
    v92 = v99;
    return sub_1000183B4(&v78);
  }

  else
  {
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    v71 = 0;
    sub_10000BD8C(&qword_1000B4828, &qword_1000B47D8, &qword_10008E990, &protocol conformance descriptor for OptionGroup<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v63 = v72;
    v64 = v73;
    v69[2] = v109;
    v69[3] = v110;
    v69[4] = v111;
    v70 = v112;
    v69[0] = v107;
    v69[1] = v108;
    sub_100002BCC(v69, &qword_1000B47D8, &qword_10008E990);
    v109 = v65;
    v110 = v66;
    v111 = v67;
    v112 = v68;
    v107 = v63;
    v108 = v64;
    sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
    v54 = 1;
    sub_10000BD8C(&qword_1000B4830, &qword_1000B47E0, &qword_10008E998, &protocol conformance descriptor for OptionGroup<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100002C80(v35, v34, v33, v32, v116, v36, v31 & 1);

    v34 = v56;
    v35 = v55;
    v32 = v58;
    v33 = v57;
    v116 = v59;
    v36 = v60;
    v19 = v61;
    v106[0] = *v62;
    v28 = *&v62[7];
    *(v106 + 6) = *&v62[3];
    sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    v46 = 2;
    v20 = v30;
    sub_10000BD8C(&qword_1000B4DF8, &qword_1000B4D70, &unk_1000907B0, &protocol conformance descriptor for OptionGroup<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v19;
    (*(v4 + 8))(v6, v20);
    v41 = v51;
    v42 = v52;
    v37 = v47;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v43 = v53;
    v44[0] = v99;
    v44[5] = v104;
    v44[6] = v105;
    v44[3] = v102;
    v44[4] = v103;
    v44[1] = v100;
    v44[2] = v101;
    sub_100002BCC(v44, &qword_1000B4D70, &unk_1000907B0);
    v45[2] = v65;
    v45[3] = v66;
    v45[4] = v67;
    v45[0] = v63;
    v45[1] = v64;
    *(&v45[12] + 8) = v40;
    *(&v45[13] + 8) = v41;
    *(&v45[14] + 8) = v42;
    *(&v45[15] + 8) = v43;
    *(&v45[9] + 8) = v37;
    *(&v45[10] + 8) = v38;
    v21 = v34;
    v22 = v35;
    *&v45[5] = v68;
    *(&v45[5] + 1) = v35;
    v23 = v32;
    v24 = v33;
    *&v45[6] = v34;
    *(&v45[6] + 1) = v33;
    *&v45[7] = v32;
    *(&v45[7] + 1) = v116;
    LOBYTE(v45[8]) = v36;
    BYTE1(v45[8]) = v19;
    *(&v45[8] + 2) = v106[0];
    v25 = v28;
    *(&v45[8] + 1) = *(v106 + 6);
    *&v45[9] = v28;
    *(&v45[11] + 8) = v39;
    sub_10001837C(v45, &v78);
    sub_100002B38(a1);
    v80[0] = v65;
    v80[1] = v66;
    v81 = v67;
    v78 = v63;
    v79 = v64;
    v95 = v40;
    v96 = v41;
    v97 = v42;
    v98 = v43;
    v92 = v37;
    v93 = v38;
    v82 = v68;
    v83 = v22;
    v84 = v21;
    v85 = v24;
    v86 = v23;
    v87 = v116;
    v88 = v36;
    v89 = v31;
    *v90 = v106[0];
    *&v90[6] = *(v106 + 6);
    v91 = v25;
    v94 = v39;
    sub_1000183B4(&v78);
    return memcpy(v29, v45, 0x108uLL);
  }
}

unint64_t sub_1000192C8()
{
  result = qword_1000B4DF0;
  if (!qword_1000B4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DF0);
  }

  return result;
}

__n128 sub_10001932C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100019348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019414(uint64_t a1, int a2)
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

uint64_t sub_10001945C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000194B0()
{
  result = qword_1000B4E00;
  if (!qword_1000B4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E00);
  }

  return result;
}

unint64_t sub_100019508()
{
  result = qword_1000B4E08;
  if (!qword_1000B4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E08);
  }

  return result;
}

unint64_t sub_100019560()
{
  result = qword_1000B4E10;
  if (!qword_1000B4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E10);
  }

  return result;
}

unint64_t sub_1000195B4()
{
  result = qword_1000B4E20;
  if (!qword_1000B4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E20);
  }

  return result;
}

uint64_t sub_100019608(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100019684()
{
  result = qword_1000B4E38;
  if (!qword_1000B4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E38);
  }

  return result;
}

unint64_t sub_1000196D8()
{
  result = qword_1000B4E48;
  if (!qword_1000B4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E48);
  }

  return result;
}

unint64_t sub_10001972C()
{
  result = qword_1000B4E58;
  if (!qword_1000B4E58)
  {
    sub_100002B84(&qword_1000B4E50, &qword_100090AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E58);
  }

  return result;
}

uint64_t sub_1000197A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018518(result, a2);
  }

  return result;
}

unint64_t sub_1000197BC()
{
  result = qword_1000B4E68;
  if (!qword_1000B4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E68);
  }

  return result;
}

uint64_t sub_100019810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ArgumentDefinition.ParsingStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArgumentDefinition.ParsingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000199D4()
{
  result = qword_1000B4E78;
  if (!qword_1000B4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E78);
  }

  return result;
}

unint64_t sub_100019A2C()
{
  result = qword_1000B4E80;
  if (!qword_1000B4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E80);
  }

  return result;
}

unint64_t sub_100019A84()
{
  result = qword_1000B4E88;
  if (!qword_1000B4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E88);
  }

  return result;
}

unint64_t sub_100019ADC()
{
  result = qword_1000B4E90;
  if (!qword_1000B4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E90);
  }

  return result;
}

unint64_t sub_100019B34()
{
  result = qword_1000B4E98;
  if (!qword_1000B4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E98);
  }

  return result;
}

unint64_t sub_100019B8C()
{
  result = qword_1000B4EA0;
  if (!qword_1000B4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EA0);
  }

  return result;
}

unint64_t sub_100019BE4()
{
  result = qword_1000B4EA8;
  if (!qword_1000B4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EA8);
  }

  return result;
}

unint64_t sub_100019C3C()
{
  result = qword_1000B4EB0;
  if (!qword_1000B4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EB0);
  }

  return result;
}

unint64_t sub_100019C94()
{
  result = qword_1000B4EB8;
  if (!qword_1000B4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EB8);
  }

  return result;
}

char *sub_100019CF4()
{
  if (qword_1000B4788 != -1)
  {
    swift_once();
  }

  v0 = off_1000B6578();
  if (!v0)
  {
    return (v0 == 0);
  }

  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008E640;
  _StringGuts.grow(_:)(29);

  result = mach_error_string(v0);
  if (result)
  {
    v3 = String.init(cString:)();
    v5 = v4;
    sub_10000F9E8();
    v6 = String.init<A>(_:radix:uppercase:)();
    v8 = v7;
    v9._countAndFlagsBits = 2016421920;
    v9._object = 0xE400000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v6;
    v10._object = v8;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v3;
    v12._object = v5;
    String.append(_:)(v12);

    *(v1 + 56) = &type metadata for String;
    *(v1 + 32) = 0xD00000000000001BLL;
    *(v1 + 40) = 0x8000000100097CD0;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    return (v0 == 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019F24()
{
  v0 = String.utf8CString.getter();
  v1 = dlopen((v0 + 32), 1);

  if (v1)
  {
    qword_1000B4EC0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019F88()
{
  v0 = String.utf8CString.getter();
  v1 = dlopen((v0 + 32), 1);

  if (v1)
  {
    qword_1000B4EC8 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100019FEC(void *a1, uint64_t a2, void *a3)
{
  v6 = String.utf8CString.getter();
  v7 = dlsym(a1, (v6 + 32));

  if (v7)
  {
    return v7;
  }

  _StringGuts.grow(_:)(37);

  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);
  v10._object = 0x8000000100097AA0;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*sub_10001A120())(void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0x7361656C65525343, 0xE900000000000065);
  off_1000B6518 = result;
  return result;
}

uint64_t (*sub_10001A190())(void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD00000000000001CLL, 0x8000000100097D40);
  off_1000B6520 = result;
  return result;
}

uint64_t (*sub_10001A200())(void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD00000000000002ALL, 0x8000000100097D10);
  off_1000B6528 = result;
  return result;
}

void *sub_10001A270()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000025, 0x8000000100097C80);
  off_1000B6530 = result;
  return result;
}

uint64_t (*sub_10001A2E0())(void, void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0x6C6F626D79535343, 0xEF656D614E746547);
  off_1000B6538 = result;
  return result;
}

uint64_t (*sub_10001A358())(void, void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000016, 0x8000000100097B80);
  off_1000B6540 = result;
  return result;
}

void *sub_10001A3C8()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000010, 0x8000000100097C60);
  off_1000B6548 = result;
  return result;
}

uint64_t (*sub_10001A438())(void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000014, 0x8000000100097B60);
  off_1000B6550 = result;
  return result;
}

uint64_t (*sub_10001A4A8())(void, void, void, void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000028, 0x8000000100097BA0);
  off_1000B6558 = result;
  return result;
}

void *sub_10001A518()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000026, 0x8000000100097C10);
  off_1000B6560 = result;
  return result;
}

uint64_t (*sub_10001A588())(void)
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD00000000000001BLL, 0x8000000100097C40);
  off_1000B6568 = result;
  return result;
}

uint64_t (*sub_10001A5F8())(void, void)
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0x6C6C754E73495343, 0xE800000000000000);
  off_1000B6570 = result;
  return result;
}

uint64_t (*sub_10001A664())(void)
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD000000000000012, 0x8000000100097CF0);
  off_1000B6578 = result;
  return result;
}

void *sub_10001A6F8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (qword_1000B4710 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  result = sub_100019FEC(qword_1000B4EC0, a2, a3);
  *a4 = result;
  return result;
}

uint64_t (*sub_10001A770())(void, void)
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD000000000000010, 0x8000000100097CB0);
  off_1000B6588 = result;
  return result;
}

uint64_t (*sub_10001A7E0())(void)
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD000000000000011, 0x8000000100097BF0);
  off_1000B6590 = result;
  return result;
}

uint64_t (*sub_10001A850())(void, void, void, void)
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD00000000000001CLL, 0x8000000100097BD0);
  off_1000B6598 = result;
  return result;
}

void sub_10001A8F0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v5 = *(*v2 + 16);
  if (v4 == v5)
  {
    sub_100025F50(v31);
    v6 = *&v31[80];
    v7 = *&v31[112];
    *(a2 + 96) = *&v31[96];
    *(a2 + 112) = v7;
    *(a2 + 128) = v31[128];
    v8 = *&v31[16];
    v9 = *&v31[48];
    *(a2 + 32) = *&v31[32];
    *(a2 + 48) = v9;
    *(a2 + 64) = *&v31[64];
    *(a2 + 80) = v6;
    *a2 = *v31;
    *(a2 + 16) = v8;
    return;
  }

  if (v4 >= v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = (*v2 + (v4 << 7));
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[5];
  v26 = v10[4];
  v27 = v13;
  v24 = v11;
  v25 = v12;
  v14 = v10[6];
  v15 = v10[7];
  v16 = v10[8];
  *(v30 + 9) = *(v10 + 137);
  v29 = v15;
  v30[0] = v16;
  v28 = v14;
  v2[1] = v4 + 1;
  v17 = v2[2];
  if (__OFADD__(v17, 1))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v2[2] = v17 + 1;
  *&v31[72] = v28;
  *&v31[88] = v29;
  *&v31[104] = v30[0];
  *&v31[113] = *(v30 + 9);
  *&v31[8] = v24;
  *&v31[24] = v25;
  *&v31[40] = v26;
  *&v31[56] = v27;
  *v31 = v17;
  v18 = v31;
  String.init(argument:)(*(&a1 - 1));
  v19 = *&v31[80];
  v20 = *&v31[112];
  *(a2 + 96) = *&v31[96];
  *(a2 + 112) = v20;
  *(a2 + 128) = v31[128];
  v21 = *&v31[16];
  v22 = *&v31[48];
  *(a2 + 32) = *&v31[32];
  *(a2 + 48) = v22;
  *(a2 + 64) = *&v31[64];
  *(a2 + 80) = v19;
  *a2 = *v31;
  *(a2 + 16) = v21;
  sub_10002600C(&v24, &v23, &qword_1000B4CB0, &qword_100090F80);
}

uint64_t sub_10001AA78(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10001AAA8(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100023314(v4, a2);
  return sub_10001AB20;
}

void sub_10001AB20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

double sub_10001AB6C()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000039, 0x80000001000982D0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B6600 = v2[6];
  unk_1000B6610 = v2[7];
  xmmword_1000B6620 = v2[8];
  qword_1000B6630 = v3;
  xmmword_1000B65C0 = v2[2];
  unk_1000B65D0 = v2[3];
  xmmword_1000B65E0 = v2[4];
  unk_1000B65F0 = v2[5];
  result = *v2;
  xmmword_1000B65A0 = v2[0];
  *algn_1000B65B0 = v2[1];
  return result;
}

uint64_t sub_10001AC2C(uint64_t a1)
{
  v2 = sub_100026534();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001AC68(uint64_t a1)
{
  v2 = sub_100026534();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001ACA4@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B47B0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B65A0, v2);
}

uint64_t sub_10001AD14()
{
  v1 = v0[3];
  v26 = v0[2];
  v27 = v1;
  v28 = v0[4];
  v29 = *(v0 + 10);
  v2 = v0[1];
  v24 = *v0;
  v25 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v15, v4, v5);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v30 = v23;
  sub_100008AC4(v15, v16, v17, v18, v19, v20);
  sub_1000022B8(v6, v7, v8);
  sub_1000022C8(v9, v10, v11);
  return sub_1000022C8(v12, v13, v30);
}

double sub_10001AE10@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000262BC(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

void *sub_10001AE6C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  if (v1)
  {
    v4 = v0[8];
  }

  else
  {
    v5 = v0[10];
    v6 = v0[9];
    v21 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage;
    v7 = v0[3];
    __chkstk_darwin();
    v19[2] = v0;
    v19[3] = &v21;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100026074;
    *(v8 + 24) = v19;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10002608C;
    *(v9 + 24) = v8;
    v20[0] = sub_1000260EC;
    v20[1] = v9;
    v10 = *(v7 + 16);
    v11 = qword_1000B47A8;

    if (v11 != -1)
    {
      swift_once();
    }

    off_1000B6598(v10, v20, 1, sub_10000E170);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    v4 = v21;
    v13 = v22;
    v14 = v23;
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[10];
    v0[8] = v21;
    v0[9] = v13;
    v0[10] = v14;

    sub_10002611C(v15, v16, v17);
    v1 = 0;
    v2 = v6;
    v3 = v5;
  }

  sub_100026168(v1, v2, v3);
  return v4;
}

void *sub_10001B0B0()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (!v2)
  {
    v3 = sub_10000D030();
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {
        if (*v5)
        {
          if (*v5 >= 0xFFFFFFFFFFFFFCC8)
          {
            __break(1u);
          }

          if (qword_1000B4790 != -1)
          {
            swift_once();
          }

          off_1000B6580();
        }

        v5 += 3;
        --v4;
      }

      while (v4);

      v6 = _swiftEmptyArrayStorage[2];
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v6 = _swiftEmptyArrayStorage[2];
      if (v6)
      {
LABEL_12:
        v7 = &_swiftEmptyArrayStorage[4];
        v2 = _swiftEmptyArrayStorage;
        do
        {
          if (v7[1])
          {
            v12 = *v7;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100022AD4(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v9 = _swiftEmptyArrayStorage[2];
            v8 = _swiftEmptyArrayStorage[3];
            v10 = v12;
            if (v9 >= v8 >> 1)
            {
              sub_100022AD4((v8 > 1), v9 + 1, 1);
              v10 = v12;
            }

            _swiftEmptyArrayStorage[2] = v9 + 1;
            *&_swiftEmptyArrayStorage[2 * v9 + 4] = v10;
          }

          v7 += 2;
          --v6;
        }

        while (v6);
        goto LABEL_22;
      }
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_22:

    *(v1 + 88) = _swiftEmptyArrayStorage;

    return v2;
  }

  return v2;
}

unint64_t sub_10001B348()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_10001B724();
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_10001B3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 104) = sub_100024C34(_swiftEmptyArrayStorage);
  *(v3 + 112) = sub_100024D14(_swiftEmptyArrayStorage);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  sub_10000D3C8(0xD000000000000024, 0x8000000100098270);
  v13 = 0;
  if (qword_1000B4790 != -1)
  {
    swift_once();
  }

  v6 = off_1000B6580;
  if (off_1000B6580())
  {
    v7 = 0;
  }

  else
  {
    v7 = v13;
  }

  *(v3 + 32) = v7;
  *(v3 + 40) = 1;
  v8 = sub_10000D3C8(0xD00000000000002ALL, 0x80000001000982A0);
  v9 = *(a2 + 16);
  v13 = 0;
  if ((v6)(v9, v8, 8, &v13) || !v13)
  {

    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = *v13;

    v11 = 0;
  }

  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  return v3;
}

uint64_t sub_10001B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = swift_reflection_metadataForObject();
  if ((*(a3 + 40) & 1) != 0 || v7 != *(a3 + 32))
  {
    if ((*(a3 + 56) & 1) != 0 || v7 != *(a3 + 48))
    {
      result = sub_10001BE18(v7);
      if ((result & 1) == 0)
      {
        return result;
      }

      v8 = a4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      a4[2] = v8;
      if ((result & 1) == 0)
      {
        result = sub_10000F5FC(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
        a4[2] = result;
      }

      v11 = *(v8 + 16);
      v14 = *(v8 + 24);
      v12 = v11 + 1;
      if (v11 >= v14 >> 1)
      {
        result = sub_10000F5FC((v14 > 1), v11 + 1, 1, v8);
        v8 = result;
        a4[2] = result;
      }
    }

    else
    {
      v8 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v8;
      if ((result & 1) == 0)
      {
        result = sub_10000F5FC(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
        *a4 = result;
      }

      v11 = *(v8 + 16);
      v13 = *(v8 + 24);
      v12 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        result = sub_10000F5FC((v13 > 1), v11 + 1, 1, v8);
        v8 = result;
        *a4 = result;
      }
    }
  }

  else
  {
    v8 = a4[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    a4[1] = v8;
    if ((result & 1) == 0)
    {
      result = sub_10000F5FC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      a4[1] = result;
    }

    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      result = sub_10000F5FC((v10 > 1), v11 + 1, 1, v8);
      v8 = result;
      a4[1] = result;
    }
  }

  *(v8 + 16) = v12;
  *(v8 + 8 * v11 + 32) = a1;
  return result;
}

unint64_t sub_10001B724()
{
  v1 = sub_100024E28(_swiftEmptyArrayStorage);
  v79 = v1;
  v78 = &_swiftEmptySetSingleton;
  v2 = sub_10001AE6C();

  v3 = v2[2];
  if (v3)
  {
    v4 = v2 + 4;
    do
    {
      v5 = *v4++;
      sub_100023568(v87, v5);
      --v3;
    }

    while (v3);
  }

  v6 = sub_10001B0B0();
  v7 = v6[2];
  if (v7)
  {
    *&v87[0] = _swiftEmptyArrayStorage;
    v8 = v6;
    sub_100022B04(0, v7, 0);
    v9 = v8;
    v10 = *&v87[0];
    v11 = *(*&v87[0] + 16);
    v12 = 5;
    do
    {
      v13 = v9[v12];
      *&v87[0] = v10;
      v14 = v10[3];
      if (v11 >= v14 >> 1)
      {
        sub_100022B04((v14 > 1), v11 + 1, 1);
        v9 = v8;
        v10 = *&v87[0];
      }

      v10[2] = v11 + 1;
      v10[v11 + 4] = v13;
      v12 += 2;
      ++v11;
      --v7;
    }

    while (v7);

    v15 = v10[2];
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_19:
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v10 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_10:
  v16 = v10 + 4;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    v21 = *v16++;
    v20 = v21;
    if (v21)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v87[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100022B04(0, v17[2] + 1, 1);
        v17 = *&v87[0];
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        sub_100022B04((v18 > 1), v19 + 1, 1);
        v17 = *&v87[0];
      }

      v17[2] = v19 + 1;
      v17[v19 + 4] = v20;
    }

    --v15;
  }

  while (v15);
LABEL_20:

  v23 = v17[2];
  if (v23)
  {
    v24 = v17 + 4;
    do
    {
      v25 = *v24++;
      sub_100023568(v87, v25);
      --v23;
    }

    while (v23);
  }

  v26 = v78;
  v27 = v0;
  if (v78[2])
  {
    v28 = v1;
    do
    {
      v29 = 0;
      v30 = v26 + 7;
      v31 = 1 << *(v26 + 32);
      v32 = (v31 + 63) >> 6;
      while (1)
      {
        v34 = *v30++;
        v33 = v34;
        if (v34)
        {
          break;
        }

        v29 -= 64;
        if (!--v32)
        {
          goto LABEL_32;
        }
      }

      v31 = __clz(__rbit64(v33)) - v29;
LABEL_32:
      v35 = sub_10002481C(v31, *(v26 + 9));
      sub_10001BEEC(v35, &v80);
      v36 = *&v85[0];
      if (*&v85[0])
      {
        v87[3] = v83;
        v87[4] = v84;
        v88[0] = v85[0];
        *(v88 + 9) = *(v85 + 9);
        v87[0] = v80;
        v87[1] = v81;
        v87[2] = v82;
        v76[0] = v80;
        v76[1] = v81;
        v76[2] = v82;
        *(v77 + 9) = *(v85 + 9);
        v76[3] = v83;
        v76[4] = v84;
        v77[0] = v85[0];
        sub_100025F6C(v76, &v74);
        v37 = v79;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v37;
        sub_10002139C(v87, v35, v38);
        v28 = v74;
        v79 = v74;
        v86 = v36;
        sub_10002600C(&v86, &v74, &qword_1000B50E8, &qword_100090FB0);
        sub_100002BCC(&v80, &qword_1000B50F0, &qword_100090FB8);
        v39 = *(v36 + 16);
        if (v39)
        {
          v72 = *(v27 + 48);
          v40 = (v36 + 32);
          v41 = *(v27 + 56);
          do
          {
            v43 = *v40++;
            v42 = v43;
            if (swift_reflection_metadataForObject() == v72)
            {
              v44 = 1;
            }

            else
            {
              v44 = v41;
            }

            if ((v44 & 1) == 0)
            {
              sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
              v71 = v40;
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_10008E640;
              v74 = 0;
              v75 = 0xE000000000000000;
              _StringGuts.grow(_:)(65);
              v46._countAndFlagsBits = 0xD000000000000027;
              v46._object = 0x8000000100098220;
              String.append(_:)(v46);
              v47._countAndFlagsBits = 30768;
              v47._object = 0xE200000000000000;
              String.append(_:)(v47);
              sub_1000023DC();
              v48._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
              String.append(_:)(v48);

              v49._object = 0x8000000100098250;
              v49._countAndFlagsBits = 0xD000000000000016;
              String.append(_:)(v49);
              v50._countAndFlagsBits = 30768;
              v50._object = 0xE200000000000000;
              String.append(_:)(v50);
              v51._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
              String.append(_:)(v51);

              v52 = v74;
              v53 = v75;
              *(v45 + 56) = &type metadata for String;
              *(v45 + 32) = v52;
              *(v45 + 40) = v53;
              print(_:separator:terminator:)();
              v40 = v71;
            }

            if (!*(v28 + 16) || (sub_10001F92C(v42), (v54 & 1) == 0))
            {
              sub_100023568(&v74, v42);
            }

            --v39;
          }

          while (v39);
          sub_100002BCC(&v86, &qword_1000B50E8, &qword_100090FB0);
          v27 = v0;
        }

        else
        {
          sub_100002BCC(&v86, &qword_1000B50E8, &qword_100090FB0);
        }
      }

      v26 = v78;
    }

    while (v78[2]);
  }

  else
  {

    v28 = v1;
  }

  v55 = v28 + 64;
  v56 = 1 << *(v28 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v28 + 64);
  v59 = (v56 + 63) >> 6;

  v61 = 0;
  v73 = v28;
  while (v58)
  {
LABEL_57:
    v63 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v64 = v63 | (v61 << 6);
    v65 = *(*(v28 + 56) + 112 * v64 + 80);
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = *(*(v28 + 48) + 8 * v64);

      v68 = 32;
      do
      {
        v70 = sub_10001AAA8(v76, *(v65 + v68));
        if (*(v69 + 80))
        {
          *(v69 + 96) = v67;
          *(v69 + 104) = 0;
        }

        (v70)(v76, 0);
        v68 += 8;
        --v66;
      }

      while (v66);

      v28 = v73;
    }
  }

  while (1)
  {
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v62 >= v59)
    {

      return v79;
    }

    v58 = *(v55 + 8 * v62);
    ++v61;
    if (v58)
    {
      v61 = v62;
      goto LABEL_57;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BE18(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 104);
  if (*(v4 + 16))
  {
    v5 = sub_10001F92C(a1);
    if (v6)
    {
      return *(*(v4 + 56) + v5);
    }
  }

  v7 = swift_reflection_metadataIsActor() != 0;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_100021514(v7, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 104) = v10;
  swift_endAccess();
  return v7;
}

uint64_t sub_10001BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_reflection_asyncTaskInfo();
  if (v32)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(40);

    sub_1000023DC();
    v5._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 8250;
    v6._object = 0xE200000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v7);

    *(v4 + 56) = &type metadata for String;
    *(v4 + 32) = 0xD000000000000024;
    *(v4 + 40) = 0x80000001000981F0;
    print(_:separator:terminator:)();

    a1 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    goto LABEL_37;
  }

  v15 = v33;
  v9 = v46;
  if (v47)
  {
    v12 = sub_10001FBC4(v47, 0);
    memcpy(v12 + 4, v48, 8 * v47);
    if (v49)
    {
LABEL_5:
      v13 = sub_10001FBC4(v49, 0);
      memcpy(v13 + 4, v50, 8 * v49);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
    if (v49)
    {
      goto LABEL_5;
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_8:
  v19 = v45;
  v11 = 0;
  v10 = 0;
  v20 = v46;
  while (v20)
  {
    result = swift_reflection_asyncTaskSlabAllocations();
    v19 = v45;
    v21 = __OFADD__(v10, v34);
    v10 += v34;
    if (v21)
    {
      __break(1u);
      return result;
    }

    v20 = v33;
    v21 = __OFADD__(v11, v35);
    v11 += v35;
    if (v21)
    {
      __break(1u);
      break;
    }
  }

  v14 = 1;
  v22 = 0x1000000;
  if ((v34 & 0x1000000) != 0)
  {
    v23 = 0x1000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | (v36 << 32);
  v25 = 0x10000;
  if ((v34 & 0x10000) != 0)
  {
    v26 = 0x10000;
  }

  else
  {
    v26 = 0;
  }

  v27 = 256;
  if ((v34 & 0x100) != 0)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  v16 = (v24 | v26 | v28) & 0xFFFFFFFFFFFFFFFELL | v34 & 1;
  v29 = 0x10000000000;
  if ((v42 & 1) == 0)
  {
    v29 = 0;
  }

  v30 = &_mh_execute_header;
  if ((v41 & 1) == 0)
  {
    v30 = 0;
  }

  if ((v40 & 1) == 0)
  {
    v22 = 0;
  }

  result = v39;
  if ((v39 & 1) == 0)
  {
    v25 = 0;
  }

  if ((v38 & 1) == 0)
  {
    v27 = 0;
  }

  v17 = v27 & 0xFFFFFFFFFFFFFFFELL | v37 & 1 | v25 | v22 | v30 | v29;
  v31 = v44;
  if ((v43 & 1) == 0)
  {
    v31 = 0;
  }

  v18 = v31 | (((v43 & 1) == 0) << 32);
LABEL_37:
  *a2 = a1;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = 0;
  *(a2 + 104) = v14;
  return result;
}

void *sub_10001C298()
{
  v0 = sub_10001B348();
  v1 = 0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v1;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v0 + 56) + 112 * (v9 | (v1 << 6)));
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[5];
    *&v106[89] = *(v10 + 89);
    v15 = v10[1];
    v14 = v10[2];
    *v106 = *v10;
    *&v106[16] = v15;
    *&v106[64] = v12;
    *&v106[80] = v13;
    *&v106[32] = v14;
    *&v106[48] = v11;
    if (v106[104])
    {
      v16 = v0;
      sub_100025F6C(v106, v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v107[0] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100022B24(0, v7[2] + 1, 1);
        v7 = *&v107[0];
      }

      v19 = v7[2];
      v18 = v7[3];
      v0 = v16;
      if (v19 >= v18 >> 1)
      {
        sub_100022B24((v18 > 1), v19 + 1, 1);
        v0 = v16;
        v7 = *&v107[0];
      }

      v7[2] = v19 + 1;
      v20 = &v7[14 * v19];
      v21 = *v106;
      v22 = *&v106[32];
      v20[3] = *&v106[16];
      v20[4] = v22;
      v20[2] = v21;
      v23 = *&v106[48];
      v24 = *&v106[64];
      v25 = *&v106[80];
      *(v20 + 121) = *&v106[89];
      v20[6] = v24;
      v20[7] = v25;
      v20[5] = v23;
    }
  }

  while (1)
  {
    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
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
    }

    if (v1 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v1);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  *v106 = v7;

  sub_100021EE0(v106);
  v85 = *(*v106 + 16);
  if (!v85)
  {

    return _swiftEmptyArrayStorage;
  }

  v26 = 0;
  v84 = *v106 + 32;
  v27 = _swiftEmptyArrayStorage;
  v83 = *v106;
  while (2)
  {
    v86 = v26;
    v28 = (v84 + 112 * v26);
    v29 = *v28;
    v30 = v28[2];
    v109 = v28[1];
    v110 = v30;
    v108 = v29;
    v31 = v28[3];
    v32 = v28[4];
    v33 = v28[5];
    *(v113 + 9) = *(v28 + 89);
    v112 = v32;
    v113[0] = v33;
    v111 = v31;
    sub_1000021C0(&qword_1000B4C98, &qword_10008FEF0);
    v34 = swift_allocObject();
    v35 = v110;
    *(v34 + 88) = v111;
    v36 = v113[0];
    *(v34 + 104) = v112;
    *(v34 + 120) = v36;
    *(v34 + 129) = *(v113 + 9);
    v37 = v109;
    *(v34 + 40) = v108;
    *(v34 + 56) = v37;
    *(v34 + 16) = xmmword_10008E640;
    v38 = (v34 + 16);
    *(v34 + 32) = 0;
    *(v34 + 72) = v35;
    sub_100025F6C(&v108, v106);
    sub_100025F6C(&v108, v106);
    sub_100025F6C(&v108, v106);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_10000F2C8(0, v27[2] + 1, 1, v27);
    }

    v40 = v27[2];
    v39 = v27[3];
    if (v40 >= v39 >> 1)
    {
      v27 = sub_10000F2C8((v39 > 1), v40 + 1, 1, v27);
    }

    *(v107 + 7) = v108;
    *(&v107[1] + 7) = v109;
    v107[6] = *(v113 + 9);
    *(&v107[4] + 7) = v112;
    *(&v107[5] + 7) = v113[0];
    *(&v107[2] + 7) = v110;
    *(&v107[3] + 7) = v111;
    v27[2] = v40 + 1;
    v41 = &v27[16 * v40];
    v41[4] = 0;
    *(v41 + 40) = 1;
    v42 = v107[0];
    v43 = v107[1];
    *(v41 + 73) = v107[2];
    *(v41 + 57) = v43;
    *(v41 + 41) = v42;
    v44 = v107[3];
    v45 = v107[4];
    v46 = v107[5];
    *(v41 + 137) = v107[6];
    *(v41 + 121) = v46;
    *(v41 + 105) = v45;
    *(v41 + 89) = v44;
    for (i = *v38; i; i = *(v34 + 16))
    {
      v48 = v34 + 32;
      while (1)
      {
        v49 = 120 * (i - 1);
        v50 = *(v48 + v49);
        v51 = *(v48 + v49 + 16);
        v52 = *(v48 + v49 + 48);
        *&v106[32] = *(v48 + v49 + 32);
        *&v106[48] = v52;
        *&v106[16] = v51;
        v53 = *(v48 + v49 + 64);
        v54 = *(v48 + v49 + 80);
        v55 = *(v48 + v49 + 96);
        v106[112] = *(v48 + v49 + 112);
        *&v106[80] = v54;
        *&v106[96] = v55;
        *&v106[64] = v53;
        *v106 = v50;
        *v38 = i - 1;
        v56 = *v106;
        v57 = *&v106[88];
        if (*v106 < *(*&v106[88] + 16))
        {
          break;
        }

        sub_100002BCC(v106, &qword_1000B4CA0, &qword_10008FEF8);
        i = *v38;
        if (!*v38)
        {
          goto LABEL_36;
        }
      }

      sub_10002600C(v106, v105, &qword_1000B4CA0, &qword_10008FEF8);
      v58 = *(v34 + 24);
      if (i > v58 >> 1)
      {
        v34 = sub_10000F180((v58 > 1), i, 1, v34);
      }

      v96 = *&v106[56];
      v97 = *&v106[72];
      *v98 = *&v106[88];
      *&v98[9] = *&v106[97];
      v94 = *&v106[24];
      v95 = *&v106[40];
      v93 = *&v106[8];
      *(v34 + 16) = i;
      v59 = v34 + v49;
      *(v59 + 32) = v56 + 1;
      *(v59 + 72) = v95;
      *(v59 + 56) = v94;
      *(v59 + 40) = v93;
      *(v59 + 129) = *&v98[9];
      *(v59 + 120) = *v98;
      *(v59 + 104) = v97;
      *(v59 + 88) = v96;
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v60 = *(v57 + 16);
      if (v56 >= v60)
      {
        goto LABEL_45;
      }

      v61 = *(v82 + 96);
      if (!*(v61 + 16))
      {
        goto LABEL_46;
      }

      v62 = sub_10001F92C(*(v57 + 8 * v56 + 32));
      if ((v63 & 1) == 0)
      {
        goto LABEL_47;
      }

      v64 = (*(v61 + 56) + 112 * v62);
      v66 = v64[1];
      v65 = v64[2];
      v99 = *v64;
      v100 = v66;
      v101 = v65;
      v67 = v64[3];
      v68 = v64[4];
      v69 = v64[5];
      *(v104 + 9) = *(v64 + 89);
      v103 = v68;
      v104[0] = v69;
      v102 = v67;
      sub_100025F6C(&v99, v105);
      sub_100002BCC(v106, &qword_1000B4CA0, &qword_10008FEF8);
      sub_100025F6C(&v99, v105);
      v71 = v27[2];
      v70 = v27[3];
      if (v71 >= v70 >> 1)
      {
        v27 = sub_10000F2C8((v70 > 1), v71 + 1, 1, v27);
      }

      *(v105 + 7) = v99;
      *(&v105[1] + 7) = v100;
      v105[6] = *(v104 + 9);
      *(&v105[4] + 7) = v103;
      *(&v105[5] + 7) = v104[0];
      *(&v105[2] + 7) = v101;
      *(&v105[3] + 7) = v102;
      v27[2] = v71 + 1;
      v72 = &v27[16 * v71];
      v72[4] = i;
      *(v72 + 40) = v56 == v60 - 1;
      v73 = v105[0];
      v74 = v105[1];
      *(v72 + 73) = v105[2];
      *(v72 + 57) = v74;
      *(v72 + 41) = v73;
      v75 = v105[3];
      v76 = v105[4];
      v77 = v105[5];
      *(v72 + 137) = v105[6];
      *(v72 + 121) = v77;
      *(v72 + 105) = v76;
      *(v72 + 89) = v75;
      v79 = *(v34 + 16);
      v78 = *(v34 + 24);
      if (v79 >= v78 >> 1)
      {
        v34 = sub_10000F180((v78 > 1), v79 + 1, 1, v34);
      }

      *&v92[9] = *(v104 + 9);
      v91 = v103;
      *v92 = v104[0];
      v89 = v101;
      v90 = v102;
      v87 = v99;
      v88 = v100;
      *(v34 + 16) = v79 + 1;
      v38 = (v34 + 16);
      v80 = v34 + 120 * v79;
      *(v80 + 32) = 0;
      *(v80 + 88) = v90;
      *(v80 + 129) = *&v92[9];
      *(v80 + 120) = *v92;
      *(v80 + 104) = v91;
      *(v80 + 72) = v89;
      *(v80 + 56) = v88;
      *(v80 + 40) = v87;
    }

LABEL_36:
    v26 = v86 + 1;
    sub_100025FA4(&v108);

    if (v86 + 1 != v85)
    {
      if (v26 >= *(v83 + 16))
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  return v27;
}

uint64_t sub_10001CA34@<X0>(char *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = String.utf8CString.getter();
  v11 = strstr(a1, (v10 + 32));

  if (v11)
  {
    v12 = String.utf8CString.getter();
    strlen((v12 + 32));

    result = String.init(cString:)();
    a4 = result;
    a5 = v14;
  }

  else
  {
  }

  *a6 = a4;
  a6[1] = a5;
  return result;
}

uint64_t sub_10001CAF8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (qword_1000B4768 != -1)
  {
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    swift_once();
    v5 = v17;
    v4 = v16;
  }

  v6 = off_1000B6558(v4, v5, a1, 0x8000000000000000);
  v8 = v7;
  if (qword_1000B4750 != -1)
  {
    swift_once();
  }

  v9 = off_1000B6540(v6, v8);
  if (qword_1000B4760 != -1)
  {
    v18 = v9;
    swift_once();
    v9 = v18;
  }

  if (off_1000B6550(v9))
  {
    String.init(cString:)();
  }

  if (qword_1000B4748 != -1)
  {
    swift_once();
  }

  if (off_1000B6538(v6, v8))
  {
    v10 = String.init(cString:)();
    v12 = sub_100025900(v10, v11, 0xD00000000000001DLL, 0x8000000100097FB0, v10, v11);
  }

  else
  {
    sub_1000023DC();
    v13._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 62;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    return 7876668;
  }

  return v12;
}

uint64_t sub_10001CD2C()
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008E640;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x534B534154;
  *(v1 + 40) = 0xE500000000000000;
  print(_:separator:terminator:)();

  v157 = v0;
  v2 = sub_10001B348();
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
LABEL_4:
  if (v6)
  {
    v8 = v3;
    goto LABEL_10;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

LABEL_13:
      v11 = sub_10001B0B0();
      v12 = v11[2];
      if (v12)
      {
        *&v189 = _swiftEmptyArrayStorage;
        v13 = v11;
        sub_100022B44(0, v12, 0);
        v14 = v13;
        v15 = 0;
        v16 = _swiftEmptyArrayStorage;
        do
        {
          if (v15 >= v14[2])
          {
            goto LABEL_128;
          }

          v17 = *&v14[2 * v15 + 4];
          *&v189 = v16;
          v19 = v16[2];
          v18 = v16[3];
          if (v19 >= v18 >> 1)
          {
            v167 = v17;
            sub_100022B44((v18 > 1), v19 + 1, 1);
            v17 = v167;
            v14 = v13;
            v16 = v189;
          }

          ++v15;
          v16[2] = v19 + 1;
          *&v16[2 * v19 + 4] = vextq_s8(v17, v17, 8uLL);
        }

        while (v12 != v15);

        if (v16[2])
        {
LABEL_20:
          sub_1000021C0(&qword_1000B50C0, &qword_100090F68);
          v20 = static _DictionaryStorage.allocate(capacity:)();
          goto LABEL_23;
        }
      }

      else
      {

        v16 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage[2])
        {
          goto LABEL_20;
        }
      }

      v20 = &_swiftEmptyDictionarySingleton;
LABEL_23:
      *&v189 = v20;
      sub_100024FEC(v16, 1, &v189);

      v151 = v189;
      v21 = sub_10001C298();
      v192 = 0;
      v193 = 0;
      v191 = v21;
      v152 = v21;

      sub_10001A8F0(v22, &v171);
      v186 = v177;
      v187 = v178;
      v188 = v179;
      v182 = v173;
      v183 = v174;
      v184 = v175;
      v185 = v176;
      v180 = v171;
      v181 = v172;
      *&v190[80] = v177;
      *&v190[96] = v178;
      v190[112] = v179;
      *&v190[16] = v173;
      *&v190[32] = v174;
      *&v190[48] = v175;
      *&v190[64] = v176;
      v189 = v171;
      *v190 = v172;
      v23 = _swiftEmptyArrayStorage;
      if (sub_100025EF0(&v189) == 1)
      {
LABEL_24:

        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_10008E640;
        *(v24 + 56) = &type metadata for String;
        *(v24 + 32) = 0;
        *(v24 + 40) = 0xE000000000000000;
        print(_:separator:terminator:)();
      }

      while (1)
      {
        v27 = v189;
        v28 = v190[0];
        v195[1] = *&v190[24];
        v195[2] = *&v190[40];
        *(v196 + 9) = *&v190[97];
        v195[4] = *&v190[72];
        v196[0] = *&v190[88];
        v195[3] = *&v190[56];
        v195[0] = *&v190[8];
        v29 = *(v23 + 2);
        if (*(&v189 + 1) > v29)
        {
          goto LABEL_129;
        }

        if ((*(&v189 + 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_130;
        }

        if (__OFADD__(v29, *(&v189 + 1) - v29))
        {
          goto LABEL_131;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v194 = v23;
        if (!isUniquelyReferenced_nonNull_native || *(&v27 + 1) > *(v23 + 3) >> 1)
        {
          if (v29 <= *(&v27 + 1))
          {
            v31 = *(&v27 + 1);
          }

          else
          {
            v31 = v29;
          }

          v23 = sub_10000F508(isUniquelyReferenced_nonNull_native, v31, 1, v23);
          v194 = v23;
        }

        sub_1000251FC(*(&v27 + 1), v29, 0);
        v33 = *(v23 + 2);
        v32 = *(v23 + 3);
        if (v33 >= v32 >> 1)
        {
          v23 = sub_10000F508((v32 > 1), v33 + 1, 1, v23);
        }

        v156 = v23;
        *(v23 + 2) = v33 + 1;
        v23[v33 + 32] = v28;
        if (v27 < 1)
        {
          v34 = -1;
        }

        else
        {
          if (v27 > v152[2])
          {
            goto LABEL_132;
          }

          v34 = v152[16 * v27 - 12];
        }

        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        v159 = v35;
        *(v35 + 24) = 0xE000000000000000;
        swift_beginAccess();
        v36 = v33 + 1;
        v37 = 32;
        do
        {
          if (v156[v37])
          {
            v38 = 0x2020202020;
          }

          else
          {
            v38 = 0x207C202020;
          }

          v39 = 0xE500000000000000;
          String.append(_:)(*&v38);
          ++v37;
          --v36;
        }

        while (v36);
        swift_endAccess();
        swift_beginAccess();
        v40._countAndFlagsBits = 2105376;
        v40._object = 0xE300000000000000;
        String.append(_:)(v40);
        swift_endAccess();
        v42 = *(v159 + 16);
        v41 = *(v159 + 24);

        sub_1000252A0(5, v42, v41);

        v43 = 2960736;
        if (!v28)
        {
          v43 = 2960683;
        }

        if (*(&v27 + 1))
        {
          v44 = v43;
        }

        else
        {
          v44 = 2105376;
        }

        *&v171 = v44;
        *(&v171 + 1) = 0xE300000000000000;
        v45 = static String._fromSubstring(_:)();
        v47 = v46;

        v169 = v45;
        v170 = v47;
        String.append<A>(contentsOf:)();
        Substring.init(_:)();
        v48 = static String._fromSubstring(_:)();
        v161 = v49;

        if (v34 < *(&v27 + 1))
        {
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_10008E640;
          *(v50 + 56) = &type metadata for String;
          *(v50 + 32) = v42;
          *(v50 + 40) = v41;

          print(_:separator:terminator:)();
        }

        v158 = swift_allocObject();
        *(v158 + 16) = 1;
        v51 = *(v157 + 24);
        v52 = *&v190[56];
        v53 = *(v51 + 48);
        v54 = *(v51 + 56);
        v168 = v51;
        if (qword_1000B4768 != -1)
        {
          v147 = *(v51 + 48);
          v148 = *(v51 + 56);
          v149 = *&v190[56];
          swift_once();
          v52 = v149;
          v54 = v148;
          v53 = v147;
        }

        v155 = v52;
        v166 = off_1000B6558;
        v55 = off_1000B6558(v53, v54, v52, 0x8000000000000000);
        v57 = v56;
        if (qword_1000B4750 != -1)
        {
          swift_once();
        }

        v165 = off_1000B6540;
        v58 = off_1000B6540(v55, v57);
        v162 = v48;
        if (qword_1000B4760 != -1)
        {
          v150 = v58;
          swift_once();
          v58 = v150;
        }

        v153 = v42;
        v160 = v41;
        v164 = off_1000B6550;
        if (off_1000B6550(v58))
        {
          v59 = String.init(cString:)();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        if (qword_1000B4748 != -1)
        {
          swift_once();
        }

        v163 = off_1000B6538;
        if (off_1000B6538(v55, v57))
        {
          String.init(cString:)();
        }

        v62 = v61 ? v59 : 0x6E776F6E6B6E753CLL;
        v63 = (v61 ? v61 : 0xE90000000000003ELL);
        v154._countAndFlagsBits = v62;
        v154._object = v63;
        v64 = *&v190[96];
        v65 = *(*&v190[96] + 16);
        if (v65)
        {
          break;
        }

LABEL_95:
        v86 = sub_10002533C(v195);
        v88 = v87;
        *&v171 = 0;
        *(&v171 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(63);
        v89._countAndFlagsBits = 0x206B736154;
        v89._object = 0xE500000000000000;
        String.append(_:)(v89);
        v169 = *&v190[48];
        v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v90);

        v91._countAndFlagsBits = 0x7367616C66202D20;
        v91._object = 0xE90000000000003DLL;
        String.append(_:)(v91);
        v92._countAndFlagsBits = v86;
        v92._object = v88;
        String.append(_:)(v92);

        v93._countAndFlagsBits = 0xD000000000000011;
        v93._object = 0x80000001000980F0;
        String.append(_:)(v93);
        LODWORD(v88) = *&v190[20];
        v94._countAndFlagsBits = 30768;
        v94._object = 0xE200000000000000;
        String.append(_:)(v94);
        LODWORD(v169) = v88;
        sub_100025E7C();
        v95._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v95);

        v96._countAndFlagsBits = 0x6F69725078616D20;
        v96._object = 0xED00003D79746972;
        String.append(_:)(v96);
        LODWORD(v88) = *&v190[28];
        v97._countAndFlagsBits = 30768;
        v97._object = 0xE200000000000000;
        String.append(_:)(v97);
        LODWORD(v169) = v88;
        v98._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v98);

        v99._countAndFlagsBits = 0x7373657264646120;
        v99._object = 0xE90000000000003DLL;
        String.append(_:)(v99);
        v100 = *&v190[8];
        v101._countAndFlagsBits = 30768;
        v101._object = 0xE200000000000000;
        String.append(_:)(v101);
        v169 = v100;
        sub_1000023DC();
        v102._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v102);

        sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);

        if (*(v151 + 16))
        {
          v103 = sub_10001F92C(v100);
          if (v104)
          {
            v105 = *(*(v151 + 56) + 8 * v103);
            *&v171 = 0;
            *(&v171 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(25);

            *&v171 = 0xD000000000000019;
            *(&v171 + 1) = 0x80000001000981B0;
            v169 = v105;
            v106._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
            String.append(_:)(v106);

            sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);
          }
        }

        if ((v190[112] & 1) == 0)
        {
          *&v171 = 0x203A746E65726170;
          *(&v171 + 1) = 0xEA00000000007830;
          v169 = *&v190[104];
          v107._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          String.append(_:)(v107);

          sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);
        }

        if ((v190[44] & 1) == 0)
        {
          v108 = *&v190[40];
          if (*&v190[40])
          {
            v109 = sub_10000E6DC(*&v190[40]);
            if ((v110 & 1) == 0)
            {
              v111 = v109;
              *&v171 = 0;
              *(&v171 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(32);

              *&v171 = 0xD00000000000001ALL;
              *(&v171 + 1) = 0x8000000100098190;
              LODWORD(v169) = v108;
              v112._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
              String.append(_:)(v112);

              v113._countAndFlagsBits = 1029990688;
              v113._object = 0xE400000000000000;
              String.append(_:)(v113);
              v114._countAndFlagsBits = 30768;
              v114._object = 0xE200000000000000;
              String.append(_:)(v114);
              v169 = v111;
              v115._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
              String.append(_:)(v115);

              sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);
            }
          }
        }

        v116 = _swiftEmptyArrayStorage[2];
        if (v116)
        {
          v117 = _swiftEmptyArrayStorage[4];
          v118 = _swiftEmptyArrayStorage[5];
          *&v171 = 0;
          *(&v171 + 1) = 0xE000000000000000;

          _StringGuts.grow(_:)(19);

          *&v171 = 0xD000000000000011;
          *(&v171 + 1) = 0x8000000100098110;
          v119._countAndFlagsBits = v117;
          v119._object = v118;
          String.append(_:)(v119);

          sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);

          if (_swiftEmptyArrayStorage[2] < v116)
          {
            goto LABEL_133;
          }

          v120 = v116 - 1;
          if (v116 != 1)
          {
            v121 = (v158 + 16);
            swift_beginAccess();
            v122 = &_swiftEmptyArrayStorage[7];
            do
            {
              v123 = *(v122 - 1);
              v124 = *v122;
              *&v171 = 0;
              *(&v171 + 1) = 0xE000000000000000;

              _StringGuts.grow(_:)(19);

              *&v171 = 0xD000000000000011;
              *(&v171 + 1) = 0x8000000100098130;
              v125._countAndFlagsBits = v123;
              v125._object = v124;
              String.append(_:)(v125);

              v126 = v171;
              v127 = swift_allocObject();
              *(v127 + 16) = xmmword_10008E640;
              v128 = *v121 == 0;
              if (*v121)
              {
                v129 = v161;
              }

              else
              {
                v129 = v160;
              }

              if (v128)
              {
                v130 = v153;
              }

              else
              {
                v130 = v162;
              }

              *&v171 = v130;
              *(&v171 + 1) = v129;

              String.append(_:)(v126);
              v121 = (v158 + 16);

              v131 = v171;
              *(v127 + 56) = &type metadata for String;
              *(v127 + 32) = v131;
              print(_:separator:terminator:)();

              *(v158 + 16) = 0;
              v122 += 2;
              --v120;
            }

            while (v120);
          }
        }

        *&v171 = 0;
        *(&v171 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        *&v171 = 0xD000000000000011;
        *(&v171 + 1) = 0x8000000100098150;
        v132._countAndFlagsBits = sub_10001CAF8(v155);
        String.append(_:)(v132);

        v133._countAndFlagsBits = 544106784;
        v133._object = 0xE400000000000000;
        String.append(_:)(v133);
        String.append(_:)(v154);

        sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);

        *&v171 = 0;
        *(&v171 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(37);

        *&v171 = 0xD000000000000010;
        *(&v171 + 1) = 0x8000000100098170;
        v169 = *&v190[72];
        v134._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v134);

        v135._countAndFlagsBits = 0x6920736574796220;
        v135._object = 0xEA0000000000206ELL;
        String.append(_:)(v135);
        v169 = *&v190[80];
        v136._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v136);

        v137._countAndFlagsBits = 0x736B6E75686320;
        v137._object = 0xE700000000000000;
        String.append(_:)(v137);
        sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);

        v138 = *&v190[88];
        v139 = *(*&v190[88] + 16);
        if (v139)
        {
          if (v139 == 1)
          {
            v140 = 0;
          }

          else
          {
            v140 = 115;
          }

          if (v139 == 1)
          {
            v141 = 0xE000000000000000;
          }

          else
          {
            v141 = 0xE100000000000000;
          }

          *&v171 = 0;
          *(&v171 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v171 = 8234;
          *(&v171 + 1) = 0xE200000000000000;
          v169 = *(v138 + 16);
          v142._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v142);

          v143._countAndFlagsBits = 0x7420646C69686320;
          v143._object = 0xEB000000006B7361;
          String.append(_:)(v143);
          v144._countAndFlagsBits = v140;
          v144._object = v141;
          String.append(_:)(v144);

          sub_10001E348(v171, *(&v171 + 1), v158, v162, v161, v159);
        }

        v145 = *(v138 + 16);
        sub_100002BCC(&v180, &qword_1000B50C8, &unk_100090F70);
        v23 = v156;
        if (v145 || v27 >= v152[2] - 1)
        {
        }

        else
        {
          v146 = swift_allocObject();
          *(v146 + 16) = xmmword_10008E640;
          *(v146 + 56) = &type metadata for String;
          *(v146 + 32) = v153;
          *(v146 + 40) = v160;

          print(_:separator:terminator:)();
        }

        sub_10001A8F0(v26, &v171);
        v186 = v177;
        v187 = v178;
        v188 = v179;
        v182 = v173;
        v183 = v174;
        v184 = v175;
        v185 = v176;
        v180 = v171;
        v181 = v172;
        *&v190[80] = v177;
        *&v190[96] = v178;
        v190[112] = v179;
        *&v190[16] = v173;
        *&v190[32] = v174;
        *&v190[48] = v175;
        *&v190[64] = v176;
        v189 = v171;
        *v190 = v172;
        if (sub_100025EF0(&v189) == 1)
        {
          goto LABEL_24;
        }
      }

      sub_100022AB4(0, v65, 0);
      v66 = (v64 + 32);
      while (2)
      {
        v68 = *v66++;
        v67 = v68;
        v69 = v166(*(v168 + 48), *(v168 + 56), v68, 0x8000000000000000);
        v71 = v70;
        v72 = v165();
        if (v164(v72))
        {
          String.init(cString:)();
        }

        if (v163(v69, v71))
        {
          v73 = String.init(cString:)();
          v75 = v74;
          __chkstk_darwin();
          if ((v75 & 0x1000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if ((v75 & 0x2000000000000000) != 0)
          {
            v169 = v73;
            v170 = v75 & 0xFFFFFFFFFFFFFFLL;
            v76 = String.utf8CString.getter();
            v77 = &v169;
LABEL_85:
            v80 = strstr(v77, (v76 + 32));

            if (v80)
            {
              v81 = String.utf8CString.getter();
              strlen((v81 + 32));

              v73 = String.init(cString:)();
            }

            else
            {

              v82 = v75;
            }

            *&v171 = v73;
            *(&v171 + 1) = v82;
          }

          else
          {
            if ((v73 & 0x1000000000000000) != 0)
            {
              v76 = String.utf8CString.getter();
              v77 = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
              goto LABEL_85;
            }

LABEL_94:
            _StringGuts._slowWithCString<A>(_:)();
          }
        }

        else
        {
          *&v171 = 7876668;
          *(&v171 + 1) = 0xE300000000000000;
          v169 = v67;
          sub_1000023DC();
          v78._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          String.append(_:)(v78);

          v79._countAndFlagsBits = 62;
          v79._object = 0xE100000000000000;
          String.append(_:)(v79);
        }

        v83 = v171;
        v85 = _swiftEmptyArrayStorage[2];
        v84 = _swiftEmptyArrayStorage[3];
        if (v85 >= v84 >> 1)
        {
          sub_100022AB4((v84 > 1), v85 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v85 + 1;
        *&_swiftEmptyArrayStorage[2 * v85 + 4] = v83;
        if (!--v65)
        {

          goto LABEL_95;
        }

        continue;
      }
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
LABEL_10:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      if ((*(*(v2 + 56) + 112 * (v9 | (v8 << 6)) + 27) & 1) == 0)
      {

        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10008E640;
        *(v10 + 56) = &type metadata for String;
        *(v10 + 32) = 0xD000000000000072;
        *(v10 + 40) = 0x8000000100098070;
        print(_:separator:terminator:)();

        goto LABEL_13;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
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
  return result;
}

uint64_t sub_10001E348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10008E640;
  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    a4 = *(a6 + 16);
    a5 = *(a6 + 24);
  }

  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);

  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  print(_:separator:terminator:)();

  result = swift_beginAccess();
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_10001E474()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10008E640;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0x53524F544341;
  *(v2 + 40) = 0xE600000000000000;
  print(_:separator:terminator:)();

  sub_10001AE6C();
  v4 = v3;

  v123 = *(v4 + 16);
  if (v123)
  {
    swift_beginAccess();
    v5 = 0;
    v124 = v0;
    v118 = v4;
    while (v5 < *(v4 + 16))
    {
      v11 = swift_reflection_metadataForObject();
      v12 = v11;
      v13 = *(v1 + 112);
      if (*(v13 + 16) && (v14 = sub_10001F92C(v11), (v15 & 1) != 0))
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
      }

      else
      {
        if (swift_reflection_typeRefForMetadata() && (v19 = swift_reflection_copyNameForTypeRef()) != 0)
        {
          v20 = v19;
          v18 = String.init(cString:)();
          v17 = v21;
          free(v20);
        }

        else
        {
          v18 = 0;
          v17 = 0;
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v1;
        v24 = isUniquelyReferenced_nonNull_native;
        v25 = *(v23 + 112);
        *(v23 + 112) = 0x8000000000000000;
        v26 = sub_10001F92C(v12);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_81;
        }

        v32 = v27;
        if (v25[3] >= v31)
        {
          if ((v24 & 1) == 0)
          {
            v116 = v26;
            sub_100021C30();
            v26 = v116;
          }
        }

        else
        {
          sub_1000208B8(v31, v24);
          v26 = sub_10001F92C(v12);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_83;
          }
        }

        v1 = v124;
        if (v32)
        {
          v34 = (v25[7] + 16 * v26);
          *v34 = v18;
          v34[1] = v17;
        }

        else
        {
          v25[(v26 >> 6) + 8] |= 1 << v26;
          *(v25[6] + 8 * v26) = v12;
          v35 = (v25[7] + 16 * v26);
          *v35 = v18;
          v35[1] = v17;
          v36 = v25[2];
          v30 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v30)
          {
            goto LABEL_82;
          }

          v25[2] = v37;
        }

        *(v124 + 112) = v25;
        swift_endAccess();
      }

      if (v17)
      {
        v38 = v17;
      }

      else
      {
        v38 = 0x8000000100097F50;
      }

      swift_reflection_actorInfo();
      if (v125)
      {

        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_10008E640;
        v7 = String.init(utf8String:)();
        *(v6 + 56) = &type metadata for String;
        v9 = 0x6E776F6E6B6E753CLL;
        if (v8)
        {
          v9 = v7;
        }

        v10 = 0xEF3E726F72726520;
        if (v8)
        {
          v10 = v8;
        }

        *(v6 + 32) = v9;
        *(v6 + 40) = v10;
        print(_:separator:terminator:)();
      }

      else
      {
        v120 = v128;
        v39 = HIDWORD(v128);
        if (v17)
        {
          v40 = v18;
        }

        else
        {
          v40 = 0xD000000000000014;
        }

        if (BYTE1(v126))
        {
          v41 = 256;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41 | v126;
        if (BYTE2(v126))
        {
          v43 = 0x10000;
        }

        else
        {
          v43 = 0;
        }

        v121 = v127;
        v122 = v122 & 0xFFFFFF00 | v128;
        sub_100025B5C(v42 | v43 | (BYTE3(v126) << 24), &v125);
        v45 = v125;
        v44 = v126;
        v46 = v128;
        v119 = v127;
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_10008E640;
        v125 = 0;
        v126 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        v125 = 2016419872;
        v126 = 0xE400000000000000;
        sub_1000023DC();
        v48._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v48);

        v49._countAndFlagsBits = 32;
        v49._object = 0xE100000000000000;
        String.append(_:)(v49);
        v50._countAndFlagsBits = v40;
        v1 = v124;
        v50._object = v38;
        String.append(_:)(v50);

        v51._countAndFlagsBits = 0x3D657461747320;
        v51._object = 0xE700000000000000;
        String.append(_:)(v51);
        v52._countAndFlagsBits = v45;
        v52._object = v44;
        String.append(_:)(v52);
        v53._countAndFlagsBits = 0x3D7367616C6620;
        v53._object = 0xE700000000000000;
        String.append(_:)(v53);
        v54._countAndFlagsBits = v119;
        v54._object = v46;
        String.append(_:)(v54);
        v55._countAndFlagsBits = 0x6F69725078616D20;
        v55._object = 0xED00003D79746972;
        String.append(_:)(v55);
        v56._countAndFlagsBits = 30768;
        v56._object = 0xE200000000000000;
        String.append(_:)(v56);
        sub_100025E28();
        v57._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v57);

        v58 = v125;
        v59 = v126;
        *(v47 + 56) = &type metadata for String;
        *(v47 + 32) = v58;
        *(v47 + 40) = v59;
        print(_:separator:terminator:)();

        if (v120 && v39)
        {
          sub_10000E6DC(v39);
          if (v60)
          {
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_10008E640;
            v125 = 0;
            v126 = 0xE000000000000000;
            _StringGuts.grow(_:)(50);

            v125 = 0xD00000000000001ELL;
            v126 = 0x8000000100097FF0;
            sub_100025E7C();
            v62._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
            String.append(_:)(v62);

            v63._object = 0x8000000100098010;
            v63._countAndFlagsBits = 0xD000000000000014;
            String.append(_:)(v63);
          }

          else
          {
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_10008E640;
            v125 = 0;
            v126 = 0xE000000000000000;
            _StringGuts.grow(_:)(36);

            v125 = 0xD00000000000001ELL;
            v126 = 0x8000000100097FF0;
            sub_100025E7C();
            v66._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
            String.append(_:)(v66);

            v67._countAndFlagsBits = 1029990688;
            v67._object = 0xE400000000000000;
            String.append(_:)(v67);
            v68._countAndFlagsBits = 30768;
            v68._object = 0xE200000000000000;
            String.append(_:)(v68);
            v69._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
            String.append(_:)(v69);
          }

          v65 = v125;
          v64 = v126;
          *(v61 + 56) = &type metadata for String;
          *(v61 + 32) = v65;
          *(v61 + 40) = v64;
          print(_:separator:terminator:)();
        }

        if (v121)
        {
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_10008E640;
          v125 = 0;
          v126 = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          v125 = 0x20626F6A20202020;
          v126 = 0xEF203A6575657571;
          v71._countAndFlagsBits = sub_10001F230(v121);
          String.append(_:)(v71);

          v72 = v125;
          v73 = v126;
          *(v70 + 56) = &type metadata for String;
          *(v70 + 32) = v72;
          *(v70 + 40) = v73;
          print(_:separator:terminator:)();

          Job = swift_reflection_nextJob();
          if (Job)
          {
            v75 = Job;
            v76 = 0;
            for (i = 1; ; ++i)
            {
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_10008E640;
              v125 = 0;
              v126 = 0xE000000000000000;
              _StringGuts.grow(_:)(17);

              v125 = 0x2020202020202020;
              v126 = 0xEF20202020202020;
              v79 = sub_10001B348();
              if (*(v79 + 16) && (v80 = sub_10001F92C(v75), (v81 & 1) != 0))
              {
                v82 = *(*(v79 + 56) + 112 * v80 + 48);

                v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v83);

                v84._countAndFlagsBits = 32;
                v84._object = 0xE100000000000000;
                String.append(_:)(v84);
                v85 = *(v1 + 24);
                v86 = *(v85 + 48);
                v87 = *(v85 + 56);
                if (qword_1000B4768 != -1)
                {
                  v108 = *(v85 + 48);
                  v109 = *(v85 + 56);
                  swift_once();
                  v87 = v109;
                  v86 = v108;
                }

                v88 = off_1000B6558(v86, v87, v82, 0x8000000000000000);
                v90 = v89;
                if (qword_1000B4750 != -1)
                {
                  swift_once();
                }

                v91 = off_1000B6540(v88, v90);
                if (qword_1000B4760 != -1)
                {
                  v110 = v91;
                  swift_once();
                  v91 = v110;
                }

                if (off_1000B6550(v91))
                {
                  String.init(cString:)();
                }

                if (qword_1000B4748 != -1)
                {
                  swift_once();
                }

                if (off_1000B6538(v88, v90))
                {
                  v92 = String.init(cString:)();
                  v94 = sub_100025900(v92, v93, 0xD00000000000001DLL, 0x8000000100097FB0, v92, v93);
                  v96 = v95;
                }

                else
                {
                  v101._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
                  String.append(_:)(v101);

                  v102._countAndFlagsBits = 62;
                  v102._object = 0xE100000000000000;
                  String.append(_:)(v102);
                  v94 = 7876668;
                  v96 = 0xE300000000000000;
                }

                v103._countAndFlagsBits = v94;
                v103._object = v96;
                String.append(_:)(v103);

                v99 = 0x206B736154;
                v100 = 0xE500000000000000;
                v1 = v124;
              }

              else
              {

                _StringGuts.grow(_:)(17);

                v97._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
                String.append(_:)(v97);

                v98._countAndFlagsBits = 62;
                v98._object = 0xE100000000000000;
                String.append(_:)(v98);
                v99 = 0xD000000000000010;
                v100 = 0x8000000100097F70;
              }

              v104 = v100;
              String.append(_:)(*&v99);

              v105 = v125;
              v106 = v126;
              *(v78 + 56) = &type metadata for String;
              *(v78 + 32) = v105;
              *(v78 + 40) = v106;
              print(_:separator:terminator:)();

              if (v76)
              {
                v111 = 0xD00000000000001ELL;
                v112 = "<internal job 0x";
                goto LABEL_73;
              }

              if (__OFADD__(i, 1))
              {
                break;
              }

              v107 = swift_reflection_nextJob();
              if (!v107)
              {
                goto LABEL_74;
              }

              v75 = v107;
              v76 = i == 999;
            }

            __break(1u);
            break;
          }
        }

        else
        {
          v111 = 0xD000000000000012;
          v112 = " resume partial function for ";
LABEL_73:
          v113 = v112 | 0x8000000000000000;
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_10008E640;
          *(v114 + 56) = &type metadata for String;
          *(v114 + 32) = v111;
          *(v114 + 40) = v113;
          print(_:separator:terminator:)();
        }

LABEL_74:
        v4 = v118;
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_10008E640;
        *(v115 + 56) = &type metadata for String;
        *(v115 + 32) = 0;
        *(v115 + 40) = 0xE000000000000000;
        print(_:separator:terminator:)();
      }

      if (++v5 == v123)
      {
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_10001F230(uint64_t a1)
{
  v2 = sub_10001B348();
  if (*(v2 + 16) && (v3 = sub_10001F92C(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 112 * v3 + 48);

    v12 = 0x206B736154;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = sub_10001CAF8(v5);
    String.append(_:)(v8);
  }

  else
  {

    _StringGuts.grow(_:)(17);

    v12 = 0xD000000000000010;
    sub_1000023DC();
    v9._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 62;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  return v12;
}

uint64_t sub_10001F3A0()
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008E640;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x53444145524854;
  *(v1 + 40) = 0xE700000000000000;
  print(_:separator:terminator:)();

  v2 = sub_10001B0B0()[2];

  if (v2)
  {
    result = *(v0 + 88);
    v4 = *(result + 16);
    if (v4)
    {
      v5 = ( + 40);
      do
      {
        v14 = *v5;
        if (*(sub_10001B348() + 16) && (sub_10001F92C(v14), (v15 & 1) != 0))
        {

          v9 = dispatch thunk of CustomStringConvertible.description.getter();
          v8 = v16;
        }

        else
        {

          _StringGuts.grow(_:)(17);

          sub_1000023DC();
          v6._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          String.append(_:)(v6);

          v7._countAndFlagsBits = 62;
          v7._object = 0xE100000000000000;
          String.append(_:)(v7);
          v9 = 0xD000000000000010;
          v8 = 0x8000000100097F10;
        }

        v5 += 2;
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(30);

        sub_1000023DC();
        v11._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v11);

        v12._countAndFlagsBits = 0xD000000000000011;
        v12._object = 0x8000000100097EF0;
        String.append(_:)(v12);
        v13._countAndFlagsBits = v9;
        v13._object = v8;
        String.append(_:)(v13);

        *(v10 + 56) = &type metadata for String;
        *(v10 + 32) = 0x6461657268542020;
        *(v10 + 40) = 0xEB00000000783020;
        print(_:separator:terminator:)();

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10008E640;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = 0xD00000000000001ELL;
    *(v17 + 40) = 0x8000000100097F30;
    print(_:separator:terminator:)();
  }

  return result;
}

uint64_t sub_10001F72C()
{

  sub_10002611C(v0[8], v0[9], v0[10]);

  return swift_deallocClassInstance();
}

__n128 sub_10001F7B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10001F7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001F828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001F894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001F8DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10001F92C(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10001FA30(a1, v2);
}

unint64_t sub_10001F970(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001FA9C(a1, a2, v4);
}

unint64_t sub_10001F9E8(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10001FB54(v1, v2);
}

unint64_t sub_10001FA30(uint64_t a1, uint64_t a2)
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

unint64_t sub_10001FA9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001FB54(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_10001FBC4(uint64_t a1, uint64_t a2)
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

  sub_1000021C0(&qword_1000B4CC8, &qword_10008FF20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10001FC48(uint64_t a1, uint64_t a2)
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

  sub_1000021C0(&qword_1000B5128, &unk_1000911C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_10001FCCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B5120, &qword_1000911C0);
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
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

Swift::Int sub_10001FF3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B5130, &qword_1000911D8);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_1000201FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B50F8, &qword_100090FC0);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v22 = *(v5 + 56) + 112 * v20;
      if (v40)
      {
        v41 = *v22;
        v23 = *(v22 + 8);
        v42 = *(v22 + 16);
        v43 = *(v22 + 17);
        v44 = *(v22 + 18);
        v45 = *(v22 + 19);
        v46 = *(v22 + 20);
        v47 = *(v22 + 24);
        v48 = *(v22 + 25);
        v49 = *(v22 + 26);
        v50 = *(v22 + 27);
        v51 = *(v22 + 28);
        v52 = *(v22 + 29);
        v54 = *(v22 + 32);
        v24 = *(v22 + 36);
        v53 = *(v22 + 40);
        v55 = *(v22 + 56);
        v56 = *(v22 + 80);
        v57 = *(v22 + 72);
        v58 = *(v22 + 96);
        v25 = *(v22 + 104);
      }

      else
      {
        v26 = *(v22 + 48);
        v27 = *(v22 + 64);
        v28 = *(v22 + 80);
        *&v62[9] = *(v22 + 89);
        *&v61[32] = v27;
        *v62 = v28;
        *&v61[16] = v26;
        v30 = *(v22 + 16);
        v29 = *(v22 + 32);
        v60[0] = *v22;
        v60[1] = v30;
        *v61 = v29;
        v25 = v62[24];
        v57 = *&v61[40];
        v58 = *&v62[16];
        v55 = *&v61[24];
        v56 = v28;
        v53 = *&v61[8];
        v54 = v29;
        v24 = BYTE4(v29);
        v51 = BYTE12(v30);
        v52 = BYTE13(v30);
        v49 = BYTE10(v30);
        v50 = BYTE11(v30);
        v47 = BYTE8(v30);
        v48 = BYTE9(v30);
        v45 = BYTE3(v30);
        v46 = DWORD1(v30);
        v43 = BYTE1(v30);
        v44 = BYTE2(v30);
        v42 = v30;
        v23 = *(&v60[0] + 1);
        v41 = *&v60[0];
        sub_100025F6C(v60, v59);
      }

      result = static Hasher._hash(seed:_:)();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v60[0]) = v24;
      v59[0] = v25;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 112 * v15;
      *v16 = v41;
      *(v16 + 8) = v23;
      *(v16 + 16) = v42;
      *(v16 + 17) = v43;
      *(v16 + 18) = v44;
      *(v16 + 19) = v45;
      *(v16 + 20) = v46;
      *(v16 + 24) = v47;
      *(v16 + 25) = v48;
      *(v16 + 26) = v49;
      *(v16 + 27) = v50;
      *(v16 + 28) = v51;
      *(v16 + 29) = v52;
      *(v16 + 32) = v54;
      *(v16 + 36) = v60[0];
      *(v16 + 40) = v53;
      *(v16 + 56) = v55;
      *(v16 + 72) = v57;
      *(v16 + 80) = v56;
      *(v16 + 96) = v58;
      *(v16 + 104) = v59[0];
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v40)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100020654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B50C0, &qword_100090F68);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      result = static Hasher._hash(seed:_:)();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000208B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B50A8, &qword_100090F48);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100020B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B50E0, &qword_100090FA8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + v19);
      result = static Hasher._hash(seed:_:)();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100020D90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}