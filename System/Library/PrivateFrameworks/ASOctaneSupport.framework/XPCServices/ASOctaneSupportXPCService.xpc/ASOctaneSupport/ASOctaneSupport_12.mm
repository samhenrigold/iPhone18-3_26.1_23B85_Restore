uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    return sub_1001F7A48();
  }

  else
  {
    return sub_1001F7A78();
  }
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_1001F74B8();
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v15[-v11];
  ByteBuffer.getInteger<A>(at:endianness:as:)(*(v3 + 8), *v3, *(v3 + 8) | (*(v3 + 12) << 32), *(v3 + 16), a1, &v15[-v11]);
  v16 = a1;
  v17 = a2;
  v18 = v3;
  sub_1000B3104(sub_1000DD1A8, a1, v13, a3);
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1000DCC7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = *(a2 + 8);
  v7 = __CFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v8;
    return (*(v4 + 16))(a4, result);
  }

  return result;
}

uint64_t sub_1000DCCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a5;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = *(a7 - 8);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_1001F7F88();
  sub_1001F7E88();
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  sub_1000DD060(v13, sub_1000DD3B8, v24, a7, &type metadata for Never, &type metadata for ()[1], &protocol witness table for Never, v14);
  ByteBuffer._toEndianness<A>(value:endianness:)(v13, v23 & 1, v15, v16, v17, a7, a8);
  (*(v10 + 8))(v13, a7);
  return sub_100018460(a6, 0, 1, a7);
}

uint64_t sub_1000DD060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

unint64_t sub_1000DD154()
{
  result = qword_1002B36D0;
  if (!qword_1002B36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36D0);
  }

  return result;
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_1002AC440 != -1)
  {
    sub_1000DD418(&qword_1002AC440);
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_1002AC440 != -1)
  {
    sub_1000DD418(&qword_1002AC440);
  }

  return static Endianness.host;
}

unint64_t sub_1000DD260()
{
  result = qword_1002B36D8;
  if (!qword_1002B36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Endianness(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1000DD380);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_1000DD3B8(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t sub_1000DD3FC(uint64_t a1)
{

  return sub_1001F7E88();
}

uint64_t sub_1000DD418(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000DD49C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7638();
}

uint64_t sub_1000DD4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7F88();
}

BOOL static SocketAddress.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (!(a2 >> 62) && *(a1 + 17) == *(a2 + 17) && *(a1 + 18) == *(a2 + 18))
    {
      return *(a1 + 20) == *(a2 + 20);
    }

    return 0;
  }

  if (a1 >> 62 != 1)
  {
    if (a2 >> 62 == 2)
    {
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x11) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x11))
      {
        memcpy(__s1, ((a1 & 0x3FFFFFFFFFFFFFFFLL) + 18), sizeof(__s1));
        memcpy(v8, (v6 + 18), 0x68uLL);
        v4 = strncmp(__s1, v8, 0x68uLL);
        return v4 == 0;
      }
    }

    return 0;
  }

  if (a2 >> 62 != 1 || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x11) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x11) || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x12) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x12) || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x14) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x14) || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {
    return 0;
  }

  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  __s1[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  __s1[1] = v2;
  v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v8[0] = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v8[1] = v3;
  v4 = memcmp(__s1, v8, 0x10uLL);
  return v4 == 0;
}

void *SocketAddress.init(_:host:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
  sub_100047958();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t SocketAddress.init(_:host:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = a1 >> 8;
  v13 = a1 >> 16;
  v14 = HIDWORD(a1);
  sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
  sub_1000DFBD8();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 17) = v12;
  *(v15 + 18) = v13;
  *(v15 + 20) = v14;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  result = v15 | 0x4000000000000000;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  return result;
}

uint64_t static SocketAddress.makeAddressResolvingHost(_:port:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  sub_1001F7E28();
  v6 = sub_1001F6BD8();
  v7 = sub_1001F6BD8();

  v8 = getaddrinfo((v6 + 32), (v7 + 32), 0, &v24);

  if (v8)
  {
    v10 = sub_10004B128();
    sub_1000276A0(&type metadata for SocketAddressError, v10);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    *(v11 + 24) = 0;
    swift_willThrow();

    return a3;
  }

  v12 = v24;
  if (!v24)
  {
    goto LABEL_9;
  }

  ai_family = v24->ai_family;
  if (ai_family == 30)
  {
    ai_addr = v24->ai_addr;
    if (ai_addr)
    {
      v18 = *&ai_addr->sa_len;
      v19 = *&ai_addr->sa_data[2];
      v20 = *&ai_addr[1].sa_len;
      v23 = *&ai_addr->sa_data[6];
      v21 = *&ai_addr[1].sa_data[6];
      sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
      sub_1000DFBD8();
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 20) = v19;
      *(v22 + 24) = v23;
      *(v22 + 32) = v20;
      *(v22 + 40) = v21;
      *(v22 + 48) = a1;
      *(v22 + 56) = a2;

      freeaddrinfo(v12);
      return v22 | 0x4000000000000000;
    }

    goto LABEL_14;
  }

  if (ai_family != 2)
  {
LABEL_9:
    v15 = sub_10004B128();
    sub_1000276A0(&type metadata for SocketAddressError, v15);
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    *(v16 + 24) = 2;
    swift_willThrow();
    if (v24)
    {
      freeaddrinfo(v24);
    }

    return a3;
  }

  v14 = v24->ai_addr;
  if (v14)
  {
    sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
    sub_100047958();
    a3 = swift_allocObject();
    *(a3 + 16) = *v14;
    *(a3 + 32) = a1;
    *(a3 + 40) = a2;

    freeaddrinfo(v12);
    return a3;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t SocketAddress.pathname.getter(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  memcpy(__dst, ((a1 & 0x3FFFFFFFFFFFFFFFLL) + 18), sizeof(__dst));
  memcpy(v2, __dst, sizeof(v2));
  return sub_1001F6CC8();
}

uint64_t sub_1000DDA20(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  result = swift_beginAccess();
  v7 = v1[3];
  v8 = v1[4];
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
  }

  else
  {
    a1(&v9, *(v3 + 24) + (v5 | (v4 << 8)) + v7, v8 - v7);
    return 0;
  }

  return result;
}

uint64_t SocketAddressError.FailedToParseIPByteBuffer.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = HIDWORD(a3);
  sub_100047940();
  result = swift_beginAccess();
  if (v5 >= v4)
  {
    return sub_1001F8078();
  }

  __break(1u);
  return result;
}

Swift::Int sub_1000DDBD0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  sub_1001F8068();
  SocketAddressError.FailedToParseIPByteBuffer.hash(into:)(v7, v1, v2, v3 | (v4 << 32) | (v5 << 48));
  return sub_1001F80D8();
}

uint64_t SocketAddress.IPv4Address.host.getter(uint64_t a1)
{
  v1 = *(a1 + 32);

  return v1;
}

uint64_t SocketAddress.IPv6Address.host.getter(uint64_t a1)
{
  v1 = *(a1 + 48);

  return v1;
}

uint64_t SocketAddress.description.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    sub_1000DFC38();
    if (v9)
    {
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    LODWORD(v27) = *(a1 + 20);
    sub_1000DFBE4(v8, &v27);
    if (v1)
    {
      goto LABEL_26;
    }

    v15 = v22;
    v16 = v23;
    v29 = 0;
    v30 = 0xE000000000000000;
    v24 = SocketAddress.port.getter(a1);
    if ((v25 & 1) == 0)
    {
      v28._countAndFlagsBits = v24;
      v32._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v32);

      countAndFlagsBits = v29;
      v19 = v30;
      v21._countAndFlagsBits = 880169033;
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (a1 >> 62 != 1)
  {
    v29 = 0x5D5344555BLL;
    v30 = 0xE500000000000000;
    v10._countAndFlagsBits = SocketAddress.pathname.getter(a1);
    if (v10._object)
    {
      object = v10._object;
    }

    else
    {
      v10._countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    v10._object = object;
    sub_1001F6CA8(v10);
    goto LABEL_23;
  }

  v3 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  sub_1000DFC38();
  if (v7)
  {
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v29 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v30 = v12;
  sub_1000DFC00(v6, &v29);
  if (!v3)
  {
    v15 = v13;
    v16 = v14;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v17 = SocketAddress.port.getter(a1);
    if ((v18 & 1) == 0)
    {
      v27 = v17;
      v31._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v31);

      countAndFlagsBits = v28._countAndFlagsBits;
      v19 = v28._object;
      v21._countAndFlagsBits = 913723465;
LABEL_19:
      v29 = 91;
      v30 = 0xE100000000000000;
      v21._object = 0xE400000000000000;
      sub_1001F6CA8(v21);

      v33._countAndFlagsBits = 93;
      v33._object = 0xE100000000000000;
      sub_1001F6CA8(v33);
      if (v4)
      {
        v28._countAndFlagsBits = v5;
        v28._object = v4;

        v34._countAndFlagsBits = 47;
        v34._object = 0xE100000000000000;
        sub_1001F6CA8(v34);
        v35._countAndFlagsBits = v15;
        v35._object = v16;
        sub_1001F6CA8(v35);
        v36._countAndFlagsBits = 58;
        v36._object = 0xE100000000000000;
        sub_1001F6CA8(v36);
      }

      else
      {
        v28._countAndFlagsBits = v15;
        v28._object = v16;
        v37._countAndFlagsBits = 58;
        v37._object = 0xE100000000000000;
        sub_1001F6CA8(v37);
      }

      sub_1001F6CA8(v28);

      v38._countAndFlagsBits = countAndFlagsBits;
      v38._object = v19;
      sub_1001F6CA8(v38);
LABEL_23:

      return v29;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_26:
  sub_1000DFB80();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1000DDFB4(uint64_t a1, const void *a2, size_t a3)
{
  v6 = a1;
  v7 = sub_1000C693C(0, a3);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100191218(v7);
  v7 = v8;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (HIDWORD(a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_100147B3C(v6, a2, v7 + 32, a3);
  if (!v3)
  {
    sub_1001F6CD8();
  }
}

uint64_t SocketAddress.port.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return bswap32(*(a1 + 18)) >> 16;
  }

  if (a1 >> 62 == 1)
  {
    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
    return bswap32(*(a1 + 18)) >> 16;
  }

  return 0;
}

void SocketAddress.ipAddress.getter(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v4[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v4[1] = v3;
      sub_1000DFC00(0, v4);
      if (v2)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    LODWORD(v4[0]) = *(a1 + 20);
    sub_1000DFBE4(a1, v4);
    if (v2)
    {
LABEL_7:
      sub_1000DFB80();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

unint64_t SocketAddress.port.setter(unint64_t result, char a2)
{
  v3 = *v2;
  v4 = *v2 >> 62;
  if (!v4)
  {
    v17 = *(v3 + 16);
    v22 = *(v3 + 20);
    v23 = *(v3 + 28);
    if (a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = result;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      if (!(v18 >> 16))
      {
        v19 = bswap32(v18) >> 16;
        v20 = *(v3 + 32);
        v25 = *(v3 + 16);
        v26 = v20;
        sub_100057CB8(&v25, v24, &qword_1002B36E8, &qword_10020B9C8);

        v21 = v26;
        sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
        sub_100047958();
        result = swift_allocObject();
        *(result + 16) = v17;
        *(result + 18) = v19;
        *(result + 20) = v22;
        *(result + 28) = v23;
        *(result + 32) = v21;
        *v2 = result;
        return result;
      }

      goto LABEL_21;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 == 1)
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (!(v5 >> 16))
      {
        v6 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v7 = ((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16);
        v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *(v6 + 17);
        v10 = *(v6 + 20);
        v12 = *(v6 + 24);
        v11 = *(v6 + 32);
        v13 = *(v6 + 40);
        v14 = bswap32(v5) >> 16;
        v15 = v7[1];
        v25 = *v7;
        v26 = v15;
        v27 = v7[2];
        sub_100057CB8(&v25, v24, &qword_1002B36E0, &qword_10020B9C0);

        v16 = v27;
        sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
        sub_1000DFBD8();
        result = swift_allocObject();
        *(result + 16) = v8;
        *(result + 17) = v9;
        *(result + 18) = v14;
        *(result + 20) = v10;
        *(result + 24) = v12;
        *(result + 32) = v11;
        *(result + 40) = v13;
        *(result + 48) = v16;
        *v2 = result | 0x4000000000000000;
        return result;
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t (*SocketAddress.port.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3)
  {
    if (v3 != 1)
    {
      v5 = 0;
      v4 = 1;
      goto LABEL_6;
    }

    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v4 = 0;
  v5 = bswap32(*(v2 + 18)) >> 16;
LABEL_6:
  *a1 = v5;
  *(a1 + 8) = v4;
  return sub_1000DE3AC;
}

uint64_t (*sub_1000DE428(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t)))(uint64_t)
{
  if (!(a1 >> 62))
  {
    v15[0] = *(a1 + 16);
    sub_1000DFB90();
    sub_100047940();
    swift_beginAccess();
    if (v5 >= v4)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (a1 >> 62 == 1)
  {
    v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
    v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    LODWORD(__dst[0]) = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    HIDWORD(__dst[0]) = v8;
    __dst[1] = v9;
    __dst[2] = v10;
    LODWORD(__dst[3]) = v11;
    sub_1000DFB90();
    sub_100047940();
    swift_beginAccess();
    if (v5 >= v4)
    {
LABEL_4:
      v12 = sub_1000DFB60();
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  memcpy(__dst, ((a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x6AuLL);
  memcpy(v15, __dst, 0x6AuLL);
  sub_1000DFB90();
  sub_100047940();
  swift_beginAccess();
  if (v5 < v4)
  {
    goto LABEL_14;
  }

  v12 = sub_1000DFB60();
LABEL_9:
  v13 = a3(v12);
  if (!v3)
  {
    a3 = v13;
  }

  sub_1000DF9D4(a2);
  return a3;
}

void *SocketAddress.withSockAddr<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      v3 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      LODWORD(__dst[0]) = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      DWORD1(__dst[0]) = v3;
      *(&__dst[0] + 1) = v4;
      *&__dst[1] = v5;
      DWORD2(__dst[1]) = v6;
      __chkstk_darwin(a1);
      sub_1000DFBA8();
      v7 = sub_1000DFBC0();
      return sub_1000DE7C4(v7, v8, v9);
    }

    else
    {
      v14 = memcpy(__dst, ((a3 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x6AuLL);
      __chkstk_darwin(v14);
      sub_1000DFBA8();
      v15 = sub_1000DFBC0();
      return sub_1000DE8A8(v15, v16, v17);
    }
  }

  else
  {
    __dst[0] = *(a3 + 16);
    __chkstk_darwin(a1);
    sub_1000DFBA8();
    v11 = sub_1000DFBC0();
    return sub_1000DE6F4(v11, v12, v13);
  }
}

void *sub_1000DE6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v11 = a3;
  v12 = a1;
  v13 = a2;
  type metadata accessor for sockaddr_in(0);
  v4 = sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  return sub_1000DFC1C(&v9, sub_1000DFABC, v10, v5, v4, v6, &protocol self-conformance witness table for Error, &v8);
}

void *sub_1000DE7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 4);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v17[0] = *v3;
  v17[1] = v4;
  v19 = v6;
  v18 = v5;
  v20 = v7;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  type metadata accessor for sockaddr_in6(0);
  v8 = sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  return sub_1000DFC1C(v17, sub_1000DFAFC, v13, v9, v8, v10, &protocol self-conformance witness table for Error, &v12);
}

void *sub_1000DE8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, v3, sizeof(__dst));
  v14 = a3;
  v15 = a1;
  v16 = a2;
  type metadata accessor for sockaddr_un(0);
  v7 = sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  return sub_1000DFC1C(__dst, sub_1000DFAFC, v13, v8, v7, v9, &protocol self-conformance witness table for Error, &v11);
}

uint64_t SocketAddress.init(_:)(uint64_t a1, unint64_t a2)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = v8;
  sub_1000DFBE4(a1, &v8 + 4);
  if (v2)
  {
    sub_1000DFB80();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v5 = v3;
    v6 = v4;
    sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
    sub_100047958();
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v5;
    *(result + 40) = v6;
  }

  return result;
}

uint64_t SocketAddress.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __n128 a5)
{
  v16[0] = a2;
  v16[1] = a3;
  sub_1000DFC00(a1, v16);
  if (v5)
  {
    sub_1000DFB80();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v12 = v10;
    v13 = v11;
    sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
    sub_1000DFBD8();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    *(v14 + 48) = v12;
    *(v14 + 56) = v13;
    return v14 | 0x4000000000000000;
  }

  return result;
}

unint64_t SocketAddress.init(_:)(const void *a1)
{
  sub_1000183C4(&qword_1002B36F0, &qword_10020B9D0);
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x6AuLL);
  return v2 | 0x8000000000000000;
}

unint64_t SocketAddress.init(unixDomainSocketPath:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v4 = sub_1001F6CF8();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_6;
    }

    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 > 103)
  {

    v5 = sub_10004B128();
    sub_1000276A0(&type metadata for SocketAddressError, v5);
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 1;
    *(v6 + 24) = 2;
    return swift_willThrow();
  }

LABEL_6:
  v8 = sub_1000DECF4(a1, a2, &off_10027BA60);

  memset(v10, 0, sizeof(v10));
  memcpy(v10, (v8 + 32), *(v8 + 16));

  sub_1000183C4(&qword_1002B36F0, &qword_10020B9D0);
  v9 = swift_allocObject();
  *(v9 + 16) = 256;
  memcpy((v9 + 18), v10, 0x68uLL);
  return v9 | 0x8000000000000000;
}

uint64_t sub_1000DECF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1001F6CF8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a2) & 0xF;
  }

  else
  {
    result = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    sub_100033614(0, (v3 + result) & ~((v3 + result) >> 63), 0, _swiftEmptyArrayStorage);
    v7 = v5;

    sub_1001BA900();

    sub_1001BA874(v6);
    return v7;
  }

  return result;
}

uint64_t SocketAddress.init(ipAddress:port:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_1000DEFE4(a1, a2, a3, a1, a2);

  return v6;
}

uint64_t sub_1000DEE10@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LODWORD(v12) = 0;
  sub_100147AA8(2, a1, &v12);
  if (!v3)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(a2 >> 16))
    {
      v7 = v12;
      sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
      result = swift_allocObject();
      *(result + 16) = 512;
      *(result + 18) = bswap32(a2) >> 16;
      *(result + 20) = v7;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0xE000000000000000;
      *a3 = result;
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 0;
  sub_100147AA8(30, a1, &v12);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (a2 >> 16)
  {
    goto LABEL_12;
  }

  v9 = bswap32(a2) >> 16;
  v10 = v12;
  v11 = v13;
  sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
  result = swift_allocObject();
  *(result + 16) = 7680;
  *(result + 18) = v9;
  *(result + 20) = 0;
  *(result + 24) = v10;
  *(result + 32) = v11;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0xE000000000000000;
  *a3 = result | 0x4000000000000000;
  return result;
}

uint64_t sub_1000DEFE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9[0] = a1;
      v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      sub_1000DEE10(v9, a3, &v8);
      if (!v5)
      {
        v6 = v8;
        goto LABEL_10;
      }

LABEL_7:

      return v6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1000DEE10(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), a3, v9);
      if (!v5)
      {
        v6 = v9[0];
LABEL_10:

        return v6;
      }

      goto LABEL_7;
    }
  }

  sub_1001F77A8();

  if (!v5)
  {
    return v9[3];
  }

  return v6;
}

uint64_t SocketAddress.init(packedIPAddress:port:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  ByteBufferView.init(_:)(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, v16);
  v9 = v8 - v6;
  if (v8 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 == 16)
  {
    v17 = 0uLL;
    if ((a4 & 0x8000000000000000) != 0)
    {
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }

    if (a4 >> 16)
    {
      goto LABEL_15;
    }

    sub_1000DF30C(v16, &v17);
    v11 = v17;
    sub_100066CE4(v16);

    sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
    sub_1000DFBD8();
    v12 = swift_allocObject();
    *(v12 + 16) = 7680;
    *(v12 + 18) = bswap32(a4) >> 16;
    *(v12 + 20) = 0;
    *(v12 + 24) = v11;
    *(v12 + 40) = 0;
    result = v12 | 0x4000000000000000;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
  }

  else
  {
    if (v9 == 4)
    {
      v15 = 0x200uLL;
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (!(a4 >> 16))
        {
          WORD1(v15) = bswap32(a4) >> 16;

          sub_1000DF30C(v16, &v15 + 4);
          v17 = v15;
          sub_100066CE4(v16);

          sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
          sub_100047958();
          result = swift_allocObject();
          *(result + 16) = v17;
          *(result + 32) = 0;
          *(result + 40) = 0xE000000000000000;
          return result;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v13 = sub_1000DF700();
    sub_1000276A0(&type metadata for SocketAddressError.FailedToParseIPByteBuffer, v13);
    *v14 = a1;
    *(v14 + 8) = v6;
    *(v14 + 12) = v8;
    *(v14 + 16) = a3;
    *(v14 + 20) = WORD2(a3);
    *(v14 + 22) = BYTE6(a3);
    swift_willThrow();

    return sub_100066CE4(v16);
  }

  return result;
}

uint64_t sub_1000DF30C(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  v17 = *result;
  v18 = v2;
  v19 = *(result + 32);
  if (a2)
  {
    v3 = a2;
    __chkstk_darwin(result);
    v5 = v4[1];
    v20 = *v4;
    v21 = v5;
    v22 = *(v4 + 4);
    result = sub_1000DDA20(sub_1000DFA7C);
    if (result)
    {
      v15[0] = v17;
      v15[1] = v18;
      v6 = v19;
      v16 = v19;
      v7 = *(&v18 + 1);
      v8 = v17;
      v9 = DWORD2(v17);
      v10 = HIDWORD(v17);
      v11 = WORD2(v18);
      v12 = BYTE6(v18);
      result = swift_beginAccess();
      while (1)
      {
        if (v6 == v7)
        {
          sub_100066CAC(v15, v14);
        }

        if (v7 >= v6)
        {
          break;
        }

        v13 = v7 - v9;
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_14;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }

        if (v10 < v9)
        {
          goto LABEL_16;
        }

        if (v13 >= v10 - v9)
        {
          goto LABEL_17;
        }

        ++v7;
        *v3++ = *(*(v8 + 24) + (v12 | (v11 << 8)) + v9 + v13);
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void SocketAddress.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    if (a2 >> 62 == 1)
    {
      sub_1001F8088(2uLL);
      sub_1001F8098(*(v3 + 17));
      sub_1001F80A8(*(v3 + 18));
      sub_1001F80B8(*(v3 + 20));
      sub_1001F80B8(*(v3 + 40));
      v4 = *(v3 + 32);
      __dst[0] = *(v3 + 24);
      __dst[1] = v4;
    }

    else
    {
      sub_1001F8088(0);
      sub_1001F8098(*(v3 + 17));
      memcpy(__dst, (v3 + 18), sizeof(__dst));
      memcpy(__s1, __dst, sizeof(__s1));
      strnlen(__s1, 0x68uLL);
    }

    sub_1001F8078();
  }

  else
  {
    sub_1001F8088(1uLL);
    sub_1001F8098(*(a2 + 17));
    sub_1001F80A8(*(a2 + 18));
    sub_1001F80B8(*(a2 + 20));
  }
}

Swift::Int SocketAddress.hashValue.getter(unint64_t a1)
{
  sub_1001F8068();
  SocketAddress.hash(into:)(v3, a1);
  return sub_1001F80D8();
}

Swift::Int sub_1000DF614()
{
  v1 = *v0;
  sub_1001F8068();
  SocketAddress.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

BOOL SocketAddress.isMulticast.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return 0;
    }

    return *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 255;
  }

  else
  {
    return (*(a1 + 20) & 0xF0) == 224;
  }
}

uint64_t sub_1000DF694(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
    result = a3(result, a2 - result);
    if (v6)
    {
      *a6 = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000DF700()
{
  result = qword_1002B36F8;
  if (!qword_1002B36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36F8);
  }

  return result;
}

unint64_t sub_1000DF758()
{
  result = qword_1002B3700;
  if (!qword_1002B3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3700);
  }

  return result;
}

unint64_t sub_1000DF7B0()
{
  result = qword_1002B3708;
  if (!qword_1002B3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3708);
  }

  return result;
}

uint64_t sub_1000DF804(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1000DF820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DF860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000DF8A8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000DF8DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000DF930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000DFA28(void *__src, size_t __len, int a3, int a4, int a5, void *__dst)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(__dst, __src, __len);
    }
  }

  return __src;
}

void *sub_1000DFA48(void *a1, size_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = *(a3 + 32);
  return sub_1000DFA28(a1, a2, v8, a4, a5, a6);
}

void sub_1000DFBE4(uint64_t a1, const void *a2)
{

  sub_1000DDFB4(2, a2, 0x10uLL);
}

void sub_1000DFC00(uint64_t a1, const void *a2)
{

  sub_1000DDFB4(30, a2, 0x2EuLL);
}

void *sub_1000DFC1C(uint64_t a1, uint64_t a2, uint64_t a3, void x3_0, uint64_t a4, void x5_0, uint64_t a5, uint64_t a8)
{

  return sub_1000DD038(a1, a2, a3, v7, a4, v8, a5, a8);
}

unint64_t sub_1000DFC4C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100279C30;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_1000DFC98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = CGSVGAttributeMapCreate();
  sub_1000DFE18(&v28);
  if (v2 > 2)
  {
    v14 = sub_1000E082C(v4, v5, v6, v7, v8, v9, v10, v11, v28, v29, v26.n128_i32[0]);
    CGSVGAttributeMapSetAttribute();
    v15 = sub_1000E084C();
    CGSVGDocumentAddNamedStyle();

    v16 = CGSVGAttributeMapCreate();
    DisplayP3 = CGSVGColorCreateDisplayP3();
    v25 = sub_1000E082C(DisplayP3, v18, v19, v20, v21, v22, v23, v24, v26, v27, v26.n128_i32[0]);
    v12 = CGSVGAttributeCreateWithFloat();
    CGSVGAttributeMapSetAttribute();
    CGSVGAttributeMapSetAttribute();
    v13 = sub_1000E084C();
    CGSVGDocumentAddNamedStyle();

    v3 = v25;
  }

  else
  {
    v12 = sub_1000E082C(v4, v5, v6, v7, v8, v9, v10, v11, v28, v29, v26.n128_i32[0]);
    CGSVGAttributeMapSetAttribute();
    v13 = sub_1001F6B48();
    CGSVGDocumentAddNamedStyle();
  }
}

double sub_1000DFE18@<D0>(uint64_t a2@<X8>)
{
  CGSVGColorCreateDisplayP3();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1000DFF80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100279B38;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

id sub_1000DFFCC()
{
  sub_1000E07E8();
  result = sub_1000E0018(0xD00000000000002ELL);
  qword_1002B3710 = result;
  return result;
}

id sub_1000E0018(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1001F6B48();

  v3 = [v1 initWithPath:v2];

  return v3;
}

id sub_1000E008C()
{
  if (qword_1002AC448 != -1)
  {
    swift_once();
  }

  v0 = qword_1002B3710;
  v1 = objc_allocWithZone(CUICatalog);
  v2 = v0;
  result = sub_1000E05F0(0x737465737341, 0xE600000000000000, v0);
  qword_1002B3718 = result;
  return result;
}

id sub_1000E0138()
{
  if (qword_1002AC450 != -1)
  {
    swift_once();
  }

  v1 = qword_1002B3718;
  if (!qword_1002B3718)
  {
    return 0;
  }

  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = sub_1001F6B48();
  v5 = sub_1000E06D4(v4, 0, 0, *(v0 + 3), qword_10020BEA0[*(v0 + 32)], 0, v0[2], v0[5], 0xE000000000000000, v1);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 referenceGlyph];
  result = v5;
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = v6;
    v10 = v9;
    if (v8 != 9)
    {
      v11 = sub_1000E048C(v9);
      if (v12 >> 60 != 15)
      {
        v13 = v11;
        v14 = v12;
        isa = sub_1001F63A8().super.isa;
        v16 = CGSVGDocumentCreateFromData();

        sub_10003A36C(v13, v14);
        if (v16)
        {

          v10 = v16;
        }
      }

      sub_1000DFC98(v10, v8);
    }

    v17 = v2 == 9.29650297e242 && v3 == 0xE90000000000006BLL;
    if (v17 || (sub_1001F7EA8() & 1) != 0)
    {
      if (v8 == 9)
      {
        v18 = sub_1000E048C(v10);
        if (v19 >> 60 != 15)
        {
          v20 = v18;
          v21 = v19;
          v22 = sub_1001F63A8().super.isa;
          v23 = CGSVGDocumentCreateFromData();

          sub_10003A36C(v20, v21);
          if (v23)
          {

            v10 = v23;
          }
        }
      }

      sub_1000E0358(v10, v8 != 9);
    }

    v24 = sub_1000E048C(v10);

    return v24;
  }

  __break(1u);
  return result;
}

void sub_1000E0358(uint64_t a1, char a2)
{
  sub_1000DFE18(&v9);
  v2 = CGSVGAttributeMapCreate();
  v3 = CGSVGAttributeCreateWithColor();
  v4 = sub_1001F6B48();
  v5 = CGSVGAttributeCreateWithString();

  v6 = sub_1001F6B48();
  v7 = CGSVGAttributeCreateWithString();

  CGSVGAttributeMapSetAttribute();
  CGSVGAttributeMapSetAttribute();
  CGSVGAttributeMapSetAttribute();
  v8 = sub_1001F6B48();
  CGSVGDocumentAddNamedStyle();
}

uint64_t sub_1000E048C(uint64_t a1)
{
  v1 = [objc_allocWithZone(NSMutableData) init];
  sub_1000183C4(&qword_1002B3720, &qword_10020BE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  v3 = kCGSVGPacked;
  *(inited + 32) = kCGSVGPacked;
  *(inited + 40) = kCFBooleanTrue;
  type metadata accessor for CFString(0);
  v4 = v1;
  v5 = v3;
  v6 = kCFBooleanTrue;
  sub_1000183C4(&qword_1002B3728, &qword_10020BE98);
  sub_1000E0790();
  sub_1001F69B8();
  isa = sub_1001F6988().super.isa;

  v8 = CGSVGDocumentWriteToData();

  if (v8)
  {
    v9 = v4;
    v10 = sub_1001F63C8();
  }

  else
  {

    return 0;
  }

  return v10;
}

id sub_1000E05F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_1001F6B48();

  v11 = 0;
  v7 = [v4 initWithName:v6 fromBundle:a3 error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    sub_1001F61B8();

    swift_willThrow();
  }

  return v7;
}

id sub_1000E06D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, uint64_t a9, void *a10)
{
  v18 = sub_1001F6B48();

  v19 = [a10 namedVectorGlyphWithName:a1 scaleFactor:a2 deviceIdiom:a3 layoutDirection:a4 glyphSize:a5 glyphWeight:v18 glyphPointSize:a7 appearanceName:a8];

  return v19;
}

unint64_t sub_1000E0790()
{
  result = qword_1002AC8D0;
  if (!qword_1002AC8D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC8D0);
  }

  return result;
}

unint64_t sub_1000E07E8()
{
  result = qword_1002B3730;
  if (!qword_1002B3730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002B3730);
  }

  return result;
}

uint64_t sub_1000E082C(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, __n128 a4, __n128 a5, int a6)
{

  return CGSVGAttributeCreateWithColor();
}

NSString sub_1000E084C()
{

  return sub_1001F6B48();
}

uint64_t sub_1000E087C(unint64_t a1)
{
  v2 = a1;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_39:
  v3 = sub_1001F7B48();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = *v1;
  v5 = v1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;

  for (i = 15; v7 != i >> 14; i = sub_1001F6C48())
  {
    if (sub_1001F6D98() == 95 && v9 == 0xE100000000000000)
    {

      break;
    }

    v11 = sub_1001F7EA8();

    if (v11)
    {
      break;
    }
  }

  v12 = sub_1001F6DB8();
  v26 = v13;
  v27 = v12;
  v25 = v14;
  v28 = v15;

  v16 = 0;
  v17 = 0;
  v29 = v3;
  v30 = v2 & 0xC000000000000001;
  v1 = (v2 & 0xFFFFFFFFFFFFFF8);
  while (v3 != v17)
  {
    if (v30)
    {
      v18 = sub_1001F7808();
    }

    else
    {
      if (v17 >= v1[2])
      {
        goto LABEL_38;
      }

      v18 = *(v2 + 8 * v17 + 32);
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v19 = v2;
    v21 = *(v18 + 48);
    v20 = *(v18 + 56);
    v22 = v4 == v21 && v5 == v20;
    if (v22 || (sub_1001F7EA8() & 1) != 0)
    {

      return v18;
    }

    if (v16)
    {

      ++v17;
    }

    else
    {

      v23 = sub_1000E1BE0(v27, v26, v25, v28, v21, v20);

      if (v23)
      {
        v16 = v18;
      }

      else
      {

        v16 = 0;
      }

      ++v17;
    }

    v2 = v19;
    v3 = v29;
  }

  if (!v16)
  {
    sub_1001C19A8();
    if (v30)
    {
      return sub_1001F7808();
    }

    else
    {
      v16 = *(v2 + 32);
    }
  }

  return v16;
}

BOOL sub_1000E0B14(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1000E0BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v37 = a2;
  v34 = 45;
  v35 = 0xE100000000000000;
  v32 = 95;
  v33 = 0xE100000000000000;
  v25 = sub_10001C790();
  v26 = v25;
  v24[0] = type metadata for String;
  v24[1] = v25;
  v3 = sub_1001F75F8();
  v5 = v4;
  if (qword_1002AC460 != -1)
  {
LABEL_27:
    swift_once();
  }

  v6 = 0;
  v29 = *(qword_1002E60C0 + 16);
  v30 = qword_1002E60C0;
  v7 = (qword_1002E60C0 + 64);
  while (v29 != v6)
  {
    if (v6 >= *(v30 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v7 - 4);
    v8 = *(v7 - 3);
    v11 = *(v7 - 2);
    v10 = *(v7 - 1);
    v12 = *v7;
    if (v9 == v3 && v8 == v5)
    {

      v9 = v3;
      v8 = v5;
      goto LABEL_24;
    }

    v14 = sub_1001F7EA8();
    if (v14)
    {

      goto LABEL_24;
    }

    v28 = v9;
    v31 = &v27;
    v36 = v3;
    v37 = v5;
    __chkstk_darwin(v14);
    v25 = &v36;

    if (sub_1000E0B14(sub_100072CF0, v24, v12))
    {

      v9 = v28;
      goto LABEL_24;
    }

    v7 += 5;
    ++v6;
  }

  sub_1000E0F34(95, 0xE100000000000000, v3, v5);
  if ((v15 & 1) == 0)
  {
    v31 = sub_1001F6DB8();
    v28 = v18;
    v29 = v17;
    v3 = v19;

    v20 = 0;
    v21 = *(v30 + 16);
    v22 = (v30 + 64);
    while (v21 != v20)
    {
      if (v20 >= *(v30 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(v22 - 4);
      v8 = *(v22 - 3);
      v11 = *(v22 - 2);
      v10 = *(v22 - 1);
      v5 = *v22;

      if (sub_1000E1BE0(v31, v29, v28, v3, v9, v8))
      {

        v12 = v5;
        goto LABEL_24;
      }

      ++v20;
      v22 += 5;
    }
  }

  v9 = 0;
  v8 = 0;
  v11 = 0;
  v10 = 0;
  v12 = 0;
LABEL_24:
  v23 = v27;
  *v27 = v9;
  v23[1] = v8;
  v23[2] = v11;
  v23[3] = v10;
  v23[4] = v12;
  return result;
}

unint64_t sub_1000E0F34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1001F6C48())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1001F6D98() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1001F7EA8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1000E1020(uint64_t a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + 8 * i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000E1060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000E1DC8();
  sub_1001F8168();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  sub_10001AE68(v17, v18);
  sub_1000E1DC8();
  v5 = sub_1001F7EC8();
  v8 = v5;
  v9 = v6;
  sub_1000E0BC4(v5, v6, &v19);
  v10 = v20;
  if (!v20)
  {
    v13 = sub_1001F7848();
    swift_allocError();
    v15 = v14;
    sub_1000183C4(&qword_1002B3738, &qword_10020BFA0);
    *v15 = &type metadata for OctaneLocale;
    sub_10001AE68(v17, v18);
    sub_1001F7EB8();
    sub_1001F77B8(23);

    v23._countAndFlagsBits = v8;
    v23._object = v9;
    sub_1001F6CA8(v23);

    sub_1001F7838();
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.valueNotFound(_:), v13);
    swift_willThrow();
    sub_100019CCC(v17);
    return sub_100019CCC(a1);
  }

  v11 = v21;
  v12 = v19;
  v16 = v22;

  sub_100019CCC(v17);
  result = sub_100019CCC(a1);
  *a2 = v12;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_1000E127C(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v2, v2[3]);
  sub_1001F7EE8();
  return sub_100019CCC(v2);
}

void sub_1000E131C()
{
  qword_1002E6098 = 0x53555F6E65;
  unk_1002E60A0 = 0xE500000000000000;
  strcpy(&qword_1002E60A8, "English (U.S.)");
  unk_1002E60B7 = -18;
  qword_1002E60B8 = _swiftEmptyArrayStorage;
}

double sub_1000E136C()
{
  sub_1000183C4(&qword_1002B3740, qword_10020BFA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10020BEC0;
  if (qword_1002AC458 != -1)
  {
    swift_once();
  }

  v1 = unk_1002E60A0;
  v2 = qword_1002E60A8;
  v3 = unk_1002E60B0;
  v4 = qword_1002E60B8;
  *(v0 + 32) = qword_1002E6098;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = 29281;
  *(v0 + 80) = 0xE200000000000000;
  *(v0 + 88) = 0x636962617241;
  *(v0 + 96) = 0xE600000000000000;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 112) = 24931;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0x6E616C61746143;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = 0x736E61485F687ALL;
  *(v0 + 160) = 0xE700000000000000;
  *(v0 + 168) = 0xD000000000000014;
  *(v0 + 176) = 0x80000001002275B0;
  *(v0 + 184) = &off_1002791D8;
  *(v0 + 192) = 0x746E61485F687ALL;
  *(v0 + 200) = 0xE700000000000000;
  *(v0 + 208) = 0xD000000000000015;
  *(v0 + 216) = 0x80000001002275D0;
  *(v0 + 224) = &off_100279208;
  *(v0 + 232) = 29288;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0x6E616974616F7243;
  *(v0 + 256) = 0xE800000000000000;
  *(v0 + 264) = _swiftEmptyArrayStorage;
  *(v0 + 272) = 29539;
  *(v0 + 280) = 0xE200000000000000;
  *(v0 + 288) = 0x6863657A43;
  *(v0 + 296) = 0xE500000000000000;
  *(v0 + 304) = _swiftEmptyArrayStorage;
  *(v0 + 312) = 24932;
  *(v0 + 320) = 0xE200000000000000;
  *(v0 + 328) = 0x6873696E6144;
  *(v0 + 336) = 0xE600000000000000;
  *(v0 + 344) = _swiftEmptyArrayStorage;
  *(v0 + 352) = 27758;
  *(v0 + 360) = 0xE200000000000000;
  *(v0 + 368) = 0x6863747544;
  *(v0 + 376) = 0xE500000000000000;
  *(v0 + 384) = _swiftEmptyArrayStorage;
  *(v0 + 392) = 0x55415F6E65;
  *(v0 + 400) = 0xE500000000000000;
  *(v0 + 408) = 0xD000000000000013;
  *(v0 + 416) = 0x80000001002275F0;
  *(v0 + 424) = _swiftEmptyArrayStorage;
  *(v0 + 432) = 0x41435F6E65;
  *(v0 + 440) = 0xE500000000000000;
  *(v0 + 448) = 0xD000000000000010;
  *(v0 + 456) = 0x8000000100227610;
  *(v0 + 464) = _swiftEmptyArrayStorage;
  *(v0 + 472) = 0x42475F6E65;
  *(v0 + 480) = 0xE500000000000000;
  strcpy((v0 + 488), "English (U.K.)");
  *(v0 + 503) = -18;
  *(v0 + 504) = _swiftEmptyArrayStorage;
  *(v0 + 512) = 26982;
  *(v0 + 520) = 0xE200000000000000;
  *(v0 + 528) = 0x6873696E6E6946;
  *(v0 + 536) = 0xE700000000000000;
  *(v0 + 544) = _swiftEmptyArrayStorage;
  *(v0 + 552) = 29286;
  *(v0 + 560) = 0xE200000000000000;
  *(v0 + 568) = 0x68636E657246;
  *(v0 + 576) = 0xE600000000000000;
  *(v0 + 584) = _swiftEmptyArrayStorage;
  *(v0 + 592) = 0x41435F7266;
  *(v0 + 600) = 0xE500000000000000;
  *(v0 + 608) = 0x282068636E657246;
  *(v0 + 616) = 0xEF296164616E6143;
  *(v0 + 624) = _swiftEmptyArrayStorage;
  *(v0 + 632) = 25956;
  *(v0 + 640) = 0xE200000000000000;
  *(v0 + 648) = 0x6E616D726547;
  *(v0 + 656) = 0xE600000000000000;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  *(v0 + 672) = 27749;
  *(v0 + 680) = 0xE200000000000000;
  *(v0 + 688) = 0x6B65657247;
  *(v0 + 696) = 0xE500000000000000;
  *(v0 + 704) = _swiftEmptyArrayStorage;
  *(v0 + 712) = 25960;
  *(v0 + 720) = 0xE200000000000000;
  *(v0 + 728) = 0x776572626548;
  *(v0 + 736) = 0xE600000000000000;
  *(v0 + 744) = _swiftEmptyArrayStorage;
  *(v0 + 752) = 26984;
  *(v0 + 760) = 0xE200000000000000;
  *(v0 + 768) = 0x69646E6948;
  *(v0 + 776) = 0xE500000000000000;
  *(v0 + 784) = _swiftEmptyArrayStorage;
  *(v0 + 792) = 30056;
  *(v0 + 800) = 0xE200000000000000;
  *(v0 + 808) = 0x61697261676E7548;
  *(v0 + 816) = 0xE90000000000006ELL;
  *(v0 + 824) = _swiftEmptyArrayStorage;
  *(v0 + 832) = 25705;
  *(v0 + 840) = 0xE200000000000000;
  *(v0 + 848) = 0x6973656E6F646E49;
  *(v0 + 856) = 0xE900000000000061;
  *(v0 + 864) = _swiftEmptyArrayStorage;
  *(v0 + 872) = 29801;
  *(v0 + 880) = 0xE200000000000000;
  *(v0 + 888) = 0x6E61696C617449;
  *(v0 + 896) = 0xE700000000000000;
  *(v0 + 904) = _swiftEmptyArrayStorage;
  *(v0 + 912) = 24938;
  *(v0 + 920) = 0xE200000000000000;
  *(v0 + 928) = 0x6573656E6170614ALL;
  *(v0 + 936) = 0xE800000000000000;
  *(v0 + 944) = _swiftEmptyArrayStorage;
  *(v0 + 952) = 28523;
  *(v0 + 960) = 0xE200000000000000;
  *(v0 + 968) = 0x6E6165726F4BLL;
  *(v0 + 976) = 0xE600000000000000;
  *(v0 + 984) = _swiftEmptyArrayStorage;
  *(v0 + 992) = 29549;
  *(v0 + 1000) = 0xE200000000000000;
  *(v0 + 1008) = 0x79616C614DLL;
  *(v0 + 1016) = 0xE500000000000000;
  *(v0 + 1024) = _swiftEmptyArrayStorage;
  *(v0 + 1032) = 25198;
  *(v0 + 1040) = 0xE200000000000000;
  *(v0 + 1048) = 0x6169676577726F4ELL;
  *(v0 + 1056) = 0xE90000000000006ELL;
  *(v0 + 1064) = _swiftEmptyArrayStorage;
  *(v0 + 1072) = 27760;
  *(v0 + 1080) = 0xE200000000000000;
  *(v0 + 1088) = 0x6873696C6F50;
  *(v0 + 1096) = 0xE600000000000000;
  *(v0 + 1104) = _swiftEmptyArrayStorage;
  *(v0 + 1112) = 0x52425F7470;
  *(v0 + 1120) = 0xE500000000000000;
  *(v0 + 1128) = 0xD000000000000013;
  *(v0 + 1136) = 0x8000000100227630;
  *(v0 + 1144) = _swiftEmptyArrayStorage;
  *(v0 + 1152) = 0x54505F7470;
  *(v0 + 1160) = 0xE500000000000000;
  *(v0 + 1168) = 0xD000000000000015;
  *(v0 + 1176) = 0x8000000100227650;
  *(v0 + 1184) = _swiftEmptyArrayStorage;
  *(v0 + 1192) = 28530;
  *(v0 + 1200) = 0xE200000000000000;
  *(v0 + 1208) = 0x6E61696E616D6F52;
  *(v0 + 1216) = 0xE800000000000000;
  *(v0 + 1224) = _swiftEmptyArrayStorage;
  *(v0 + 1232) = 30066;
  *(v0 + 1240) = 0xE200000000000000;
  *(v0 + 1248) = 0x6E616973737552;
  *(v0 + 1256) = 0xE700000000000000;
  *(v0 + 1264) = _swiftEmptyArrayStorage;
  *(v0 + 1272) = 27507;
  *(v0 + 1280) = 0xE200000000000000;
  *(v0 + 1288) = 0x6B61766F6C53;
  *(v0 + 1296) = 0xE600000000000000;
  *(v0 + 1304) = _swiftEmptyArrayStorage;
  *(v0 + 1312) = 0x584D5F7365;
  *(v0 + 1320) = 0xE500000000000000;
  *(v0 + 1328) = 0xD000000000000010;
  *(v0 + 1336) = 0x8000000100227670;
  *(v0 + 1344) = _swiftEmptyArrayStorage;
  *(v0 + 1352) = 0x53455F7365;
  *(v0 + 1360) = 0xE500000000000000;
  *(v0 + 1368) = 0x206873696E617053;
  *(v0 + 1376) = 0xEF296E6961705328;
  *(v0 + 1384) = _swiftEmptyArrayStorage;
  *(v0 + 1392) = 30323;
  *(v0 + 1400) = 0xE200000000000000;
  *(v0 + 1408) = 0x68736964657753;
  *(v0 + 1416) = 0xE700000000000000;
  *(v0 + 1424) = _swiftEmptyArrayStorage;
  *(v0 + 1432) = 26740;
  *(v0 + 1440) = 0xE200000000000000;
  *(v0 + 1448) = 1767991380;
  *(v0 + 1456) = 0xE400000000000000;
  *(v0 + 1464) = _swiftEmptyArrayStorage;
  *(v0 + 1472) = 29300;
  *(v0 + 1480) = 0xE200000000000000;
  *(v0 + 1488) = 0x6873696B727554;
  *(v0 + 1496) = 0xE700000000000000;
  *(v0 + 1504) = _swiftEmptyArrayStorage;
  *(v0 + 1512) = 27509;
  *(v0 + 1520) = 0xE200000000000000;
  *(v0 + 1528) = 0x61696E6961726B55;
  *(v0 + 1536) = 0xE90000000000006ELL;
  *(v0 + 1544) = _swiftEmptyArrayStorage;
  *(v0 + 1552) = 26998;
  *(v0 + 1560) = 0xE200000000000000;
  *(v0 + 1568) = 0x656D616E74656956;
  *(v0 + 1576) = 0xEA00000000006573;
  *(v0 + 1584) = _swiftEmptyArrayStorage;
  qword_1002E60C0 = v0;

  return result;
}

double sub_1000E1A58@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E1060(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_1000E1AB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (*a1 == *a2 && v3 == v5)
  {
    return 1;
  }

  v7 = sub_1001F7EA8();
  if (v7)
  {
    return 1;
  }

  v15 = v4;
  v16 = v5;
  __chkstk_darwin(v7);
  v14 = &v15;
  if (v9 = sub_1000E0B14(sub_100048E80, v13, v8))
  {
    return 1;
  }

  else
  {
    v15 = v2;
    v16 = v3;
    __chkstk_darwin(v9);
    v14 = &v15;
    return sub_1000E0B14(sub_100072CF0, v13, v12);
  }
}

uint64_t sub_1000E1BE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = a1;
  while (1)
  {
    v9 = sub_1001F6CE8();
    if (!v10)
    {
      break;
    }

    v11 = v10;
    if ((v8 ^ a2) < 0x4000)
    {

      return 1;
    }

    v12 = v9;
    sub_1000E1DB0();
    v13 = sub_1001F7558();
    v15 = v14;
    sub_1000E1DB0();
    v8 = sub_1001F74F8();
    if (v12 == v13 && v11 == v15)
    {
    }

    else
    {
      v17 = sub_1001F7EA8();

      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  if ((v8 ^ a2) < 0x4000)
  {
    return 1;
  }

  sub_1000E1DB0();
  sub_1001F7558();
  sub_1000E1DB0();
  sub_1001F74F8();
LABEL_15:

  return 0;
}

uint64_t sub_1000E1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8() & 1;
  }
}

uint64_t sub_1000E1DDC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1;
  sub_10019EB88(a1, a2, 0);
  v7 = v6;
  if (!v3)
  {
    if (a3)
    {
      sub_10019EEBC(v6);
    }

    if (v5 == 30)
    {
      v9 = 0;
      sub_10019EA44(v7, 41, 27, &v9, 4u);
    }
  }

  return v7;
}

uint64_t sub_1000E2024(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
    sub_1000E239C();
    if (v2)
    {
      *(v1 + 16) = -1;
      swift_willThrow();
    }

    return v1;
  }

  return result;
}

void sub_1000E207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = a6 - a5;
    if (!a5)
    {
      v7 = 0;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v7))
    {
      v11 = a3;
      v12 = a4;
      v13 = a2;
      v14 = 1;
      v15 = a5;
      v16 = v7;
      v17 = 0;
      sub_10019E990(v6, &v11, 0);
      return;
    }

    __break(1u);
  }

  v8 = sub_100077354();
  v9 = sub_1000276A0(&type metadata for IOError, v8);
  sub_100077300(v9, v10);
}

uint64_t sub_1000E2150(uint64_t (*a1)(void))
{
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    return a1();
  }

  v3 = sub_100077354();
  v4 = sub_1000276A0(&type metadata for IOError, v3);
  return sub_100077300(v4, v5);
}

void sub_1000E21B0()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    v2 = sub_100077354();
    v3 = sub_1000276A0(&type metadata for IOError, v2);
    sub_100077300(v3, v4);
  }

  else
  {
    *(v0 + 16) = -1;
    sub_10019DE1C(v1);
  }
}

unint64_t sub_1000E22DC(uint64_t (*a1)(void))
{
  if ((*(v1 + 16) & 0x80000000) != 0)
  {
    v4 = sub_100077354();
    v5 = sub_1000276A0(&type metadata for IOError, v4);
    return sub_100077300(v5, v6);
  }

  else
  {
    result = a1();
    if (!v2)
    {
      return sub_1000E2678();
    }
  }

  return result;
}

void sub_1000E239C()
{
  v2 = *(v0 + 16);
  sub_10019DD84(v2, 73, 1);
  if (v1)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {

      if (v8 == 22)
      {

        v3 = sub_1000B4A80();
        sub_1000276A0(&type metadata for NIOFcntlFailedError, v3);
      }

      else
      {
        sub_10019DE1C(v2);
        v4 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v4);
        *v5 = v6;
        *(v5 + 8) = v7;
        *(v5 + 16) = v8;
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_1000E24B8(uint64_t result, int a2)
{
  if (result == 6 && a2 == 1)
  {
    result = *(v2 + 16);
    if ((result & 0x80000000) == 0)
    {
      sub_10019E704();
      if (v3)
      {
      }

      else
      {
        v5 = sub_1000E2678();

        if ((v5 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result);
  return sub_10017A0E4(sub_1000E3138);
}

uint64_t sub_1000E2600(unint64_t a1)
{
  v2 = *(v1 + 16);
  if ((v2 & 0x80000000) != 0)
  {
    v5 = sub_100077354();
    v6 = sub_1000276A0(&type metadata for IOError, v5);
    return sub_100077300(v6, v7);
  }

  else
  {

    sub_1000E2DDC(v2, a1);
  }
}

unint64_t sub_1000E2678()
{
  v4 = *(v0 + 1);
  if (v4 == 1)
  {
    sub_1000183C4(&qword_1002B36F0, &qword_10020B9D0);
    v7 = swift_allocObject();
    sub_1000E31B8(v7);
    return v0 | 0x8000000000000000;
  }

  if (v4 == 30)
  {
    sub_1000E3180();
    *&v9 = v2;
    *(&v9 + 1) = v3;
    sub_1000DDFB4(30, &v9, 0x2EuLL);
    sub_1000E3198();
    sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
    v5 = swift_allocObject();
    return sub_1000E3158(v5);
  }

  if (v4 != 2)
  {
    sub_1001F77B8(26);

    *&v9 = 0xD000000000000018;
    *(&v9 + 1) = 0x8000000100227720;
    v10._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v10);

    sub_1000E31A4();
    sub_1001F7AC8();
    __break(1u);
    goto LABEL_10;
  }

  v9 = *v0;
  v8 = v9;
  sub_1000E31D8(&v9);
  if (v1)
  {
LABEL_10:
    sub_1000DFB80();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_1000E3198();
  sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 32) = v0;
  *(result + 40) = v0;
  return result;
}

unint64_t sub_1000E28D0(__int128 *a1)
{
  v6 = *(a1 + 1);
  switch(v6)
  {
    case 1:
      sub_1000183C4(&qword_1002B36F0, &qword_10020B9D0);
      v9 = swift_allocObject();
      sub_1000E31B8(v9);
      return v1 | 0x8000000000000000;
    case 30:
      sub_1000E3180();
      *&v11 = v3;
      *(&v11 + 1) = v4;
      sub_1000DDFB4(30, &v11, 0x2EuLL);
      sub_1000E3198();
      sub_1000183C4(&qword_1002AE9A0, &qword_100202198);
      v8 = swift_allocObject();
      return sub_1000E3158(v8);
    case 2:
      v11 = *a1;
      v10 = v11;
      sub_1000E31D8(&v11);
      if (v2)
      {
        sub_1000DFB80();
        result = swift_unexpectedError();
        __break(1u);
      }

      else
      {
        sub_1000E3198();
        sub_1000183C4(&qword_1002AE9A8, &unk_1002021A0);
        result = swift_allocObject();
        *(result + 16) = v10;
        *(result + 32) = a1;
        *(result + 40) = v1;
      }

      break;
    default:
      return 0xF000000000000007;
  }

  return result;
}

uint64_t sub_1000E2A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  (*(v9 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(v10))
  {
    goto LABEL_5;
  }

  sub_10019EA44(a1, a3, a4, &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  return (*(v9 + 8))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
}

uint64_t sub_1000E2BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v7))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v21 = *(v6 + 64);
  v12 = *(v6 + 72);
  v13 = sub_1001F75A8();
  v15 = v14;
  sub_10007CEC8(0, v13, v14);
  if (!v13)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v17 = sub_1001F74D8();
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  sub_10019E798(a1, a2, a3, v17, &v21);
  if (!v5)
  {
    (*(v6 + 16))(a5, v18, a4);
  }

  return sub_1000E2D80(v18, v13, v15, a4);
}

uint64_t sub_1000E2D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001F7498();
  if (a2)
  {
  }

  return result;
}

void sub_1000E2DDC(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      LODWORD(__dst[0]) = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      DWORD1(__dst[0]) = v3;
      *(&__dst[0] + 1) = v4;
      *&__dst[1] = v5;
      DWORD2(__dst[1]) = v6;
      v7 = __dst;
      v8 = 28;
    }

    else
    {
      memcpy(__dst, ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x6AuLL);
      memcpy(v9, __dst, sizeof(v9));
      v7 = v9;
      a1 = v2;
      v8 = 106;
    }
  }

  else
  {
    __dst[0] = *(a2 + 16);
    v7 = __dst;
    v8 = 16;
  }

  sub_10019E458(a1, v7, v8);
}

unint64_t sub_1000E2FC4()
{
  sub_1001F77B8(20);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  return 0xD000000000000010;
}

unint64_t sub_1000E309C(uint64_t a1)
{
  result = sub_1000E30C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E30C4()
{
  result = qword_1002B3898;
  if (!qword_1002B3898)
  {
    type metadata accessor for BaseSocket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3898);
  }

  return result;
}

uint64_t sub_1000E3158(uint64_t a1)
{
  *(a1 + 16) = v8;
  *(a1 + 17) = v9;
  *(a1 + 18) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  result = a1 | 0x4000000000000000;
  *(a1 + 48) = v1;
  *(a1 + 56) = v2;
  return result;
}

void *sub_1000E31B8(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x6AuLL);
}

void sub_1000E31D8(uint64_t a1@<X8>)
{

  sub_1000DDFB4(2, (a1 | 4), 0x10uLL);
}

_BYTE *sub_1000E31F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1000E32C4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_1000E32F8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = 0x2D656C7070412D58;
  v207 = 1;
  v206 = 1;
  sub_1000E4DDC(0x2D656C7070412D58, 0xEA00000000007A54);
  if (v6[2])
  {
    v8 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = HIBYTE(v7) & 0xF;
  v10 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_120;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001ED558(v8, v7, 10);
    v29 = v115;
    goto LABEL_73;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      v12 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v12 = sub_1001F7858();
    }

    v13 = *v12;
    if (v13 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v8 = 0;
          if (v12)
          {
            while (1)
            {
              sub_100027240();
              if (!v15 & v14)
              {
                goto LABEL_71;
              }

              sub_1000E4DA0();
              if (!v15)
              {
                goto LABEL_71;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_71;
              }

              sub_10002727C();
              if (v15)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_125;
    }

    if (v13 != 45)
    {
      if (v10)
      {
        v8 = 0;
        if (v12)
        {
          while (1)
          {
            v25 = *v12 - 48;
            if (v25 > 9)
            {
              goto LABEL_71;
            }

            v26 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_71;
            }

            v8 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_71;
            }

            ++v12;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      v8 = 0;
      v18 = 1;
      goto LABEL_72;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v8 = 0;
        if (v12)
        {
          while (1)
          {
            sub_100027240();
            if (!v15 & v14)
            {
              goto LABEL_71;
            }

            sub_1000E4DA0();
            if (!v15)
            {
              goto LABEL_71;
            }

            v8 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              goto LABEL_71;
            }

            sub_10002727C();
            if (v15)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v18 = 0;
LABEL_72:
        LOBYTE(__src[0]) = v18;
        v29 = v18;
LABEL_73:

        if (v29)
        {
          v30 = 0;
        }

        else
        {
          v30 = v8;
        }

        for (i = v30; ; i = 0)
        {
          v211 = v29 & 1;
          sub_1000E4DDC(0xD000000000000013, 0x8000000100227760);
          v147 = sub_100088634(v31);
          v148 = v32;

          sub_1000E4DDC(0x646973442D58, 0xE600000000000000);
          sub_100088634(v33);
          sub_1000A40F4();

          if (v29)
          {
            v35 = v8;
          }

          else
          {
            v35 = 0;
          }

          if (v29)
          {
            v36 = v29;
          }

          else
          {
            v36 = 0xE000000000000000;
          }

          v146 = sub_1001EE474(v35, v36, v34);
          v209 = v37 & 1;
          sub_1000E4DB4();
          v144 = sub_100088634(v38);
          v145 = v39;

          sub_1000E4DDC(0xD000000000000012, 0x80000001002277A0);
          v142 = sub_100088634(v40);
          v143 = v41;

          sub_1000E4DDC(0xD00000000000001ALL, 0x80000001002277C0);
          v140 = sub_100088634(v42);
          v141 = v43;

          HTTPHeaders.subscript.getter();
          v138 = sub_100088634(v44);
          v139 = v45;

          HTTPHeaders.subscript.getter();
          v136 = sub_100088634(v46);
          v137 = v47;

          HTTPHeaders.subscript.getter();
          v49 = v48;
          v134 = sub_100088634(v48);
          v135 = v50;

          HTTPHeaders.subscript.getter();
          sub_100088634(v51);
          sub_1000A40F4();

          if (a2)
          {
            v157 = v49;
            v158 = a2;
            __src[0] = 32;
            __src[1] = 0xE100000000000000;
            v52 = sub_10001C790();
            v133 = sub_1000E4E24(v52, type metadata for String, v53, v52);
          }

          else
          {
            v133 = 0;
          }

          HTTPHeaders.subscript.getter();
          v131 = sub_100088634(v54);
          v132 = v55;

          sub_1000E4DDC(v5, 0xEB00000000444D41);
          v57 = v56;
          v129 = sub_100088634(v56);
          v130 = v58;

          sub_1000E4DDC(0xD000000000000012, 0x8000000100227860);
          sub_100088634(v59);
          sub_1000A40F4();

          if (a2)
          {
            v61 = v57;
          }

          else
          {
            v61 = 0;
          }

          if (a2)
          {
            v62 = a2;
          }

          else
          {
            v62 = 0xE000000000000000;
          }

          v128 = sub_1001EE474(v61, v62, v60);
          v203 = v63 & 1;
          sub_1000E4DDC(v5, 0xEE0074656E726150);
          v126 = sub_100088634(v64);
          v127 = v65;

          sub_1000E4DDC(v5, 0xEE004D2D444D2D49);
          v124 = sub_100088634(v66);
          v125 = v67;

          sub_1000E4DDC(0xD000000000000010, 0x8000000100227880);
          v122 = sub_100088634(v68);
          v123 = v69;

          sub_1000E4DDC(0x6E656B6F542D58, 0xE700000000000000);
          v120 = sub_100088634(v70);
          v121 = v71;

          sub_1000E4DDC(v5, 0xEC000000444D2D49);
          v118 = sub_100088634(v72);
          v119 = v73;

          sub_1000E4DB4();
          v116 = sub_100088634(v74);
          v117 = v75;

          sub_1000E4DDC(0xD000000000000018, 0x80000001002278C0);
          v77 = sub_100088634(v76);
          v79 = v78;

          if (v79)
          {
            v80._rawValue = &off_100279CB0;
            v212._countAndFlagsBits = v77;
            v212._object = v79;
            sub_1001F7BD8(v80, v212);
            sub_100013EFC();

            v207 = v77 != 0;
          }

          sub_1000E4DB4();
          v82 = v81;
          v8 = sub_100088634(v81);
          v84 = v83;

          if (v84)
          {
            v85._rawValue = &off_100279CE8;
            v213._countAndFlagsBits = v8;
            v213._object = v84;
            sub_1001F7BD8(v85, v213);
            sub_100013EFC();

            v206 = v8 != 0;
          }

          v86 = _swiftEmptyArrayStorage;
          v154 = sub_1001F69B8();
          sub_1000E4DB4();
          sub_100088634(v87);
          sub_1000A40F4();

          if (v82)
          {
            v157 = v8;
            v158 = v82;
            __src[0] = 8251;
            __src[1] = 0xE200000000000000;
            v88 = sub_10001C790();
            v86 = sub_1000E4E24(v88, type metadata for String, v89, v88);
          }

          v150 = a3;
          a2 = v86[2];
          if (!a2)
          {
LABEL_114:

            v112._countAndFlagsBits = 0xD00000000000001FLL;
            v112._object = 0x8000000100227920;
            HTTPHeaders.first(name:)(v112);
            sub_1000A40F4();

            if (v82)
            {
              v113 = sub_1000E3FC8(v8, v82);
            }

            else
            {
              v113 = 0;
            }

            *(&__src[1] + 1) = *v210;
            *(&__src[5] + 1) = *v208;
            *(&__src[22] + 2) = v204;
            *(&__src[26] + 1) = *v202;
            HIDWORD(v158) = *&v210[3];
            *(&v158 + 1) = *v210;
            *v163 = *v208;
            v182 = v204;
            *&v188[3] = *&v202[3];
            *v188 = *v202;
            HIDWORD(__src[1]) = *&v210[3];
            HIDWORD(__src[5]) = *&v208[3];
            HIWORD(__src[22]) = v205;
            HIDWORD(__src[26]) = *&v202[3];
            __src[0] = i;
            v157 = i;
            LOBYTE(__src[1]) = v211;
            LOBYTE(v158) = v211;
            v159 = v147;
            __src[2] = v147;
            __src[3] = v148;
            v160 = v148;
            __src[4] = v146;
            v161 = v146;
            LOBYTE(__src[5]) = v209;
            v162 = v209;
            *&v163[3] = *&v208[3];
            v164 = v154;
            __src[6] = v154;
            __src[7] = v144;
            v165 = v144;
            v166 = v145;
            __src[8] = v145;
            __src[9] = v142;
            v167 = v142;
            v168 = v143;
            __src[10] = v143;
            __src[11] = v140;
            v169 = v140;
            v170 = v141;
            __src[12] = v141;
            __src[13] = v138;
            v171 = v138;
            v172 = v139;
            __src[14] = v139;
            __src[15] = v136;
            v173 = v136;
            v174 = v137;
            __src[16] = v137;
            __src[17] = v134;
            v175 = v134;
            v176 = v135;
            __src[18] = v135;
            __src[19] = v133;
            v177 = v133;
            v178 = v131;
            __src[20] = v131;
            __src[21] = v132;
            v179 = v132;
            LOBYTE(__src[22]) = v207;
            v180 = v207;
            BYTE1(__src[22]) = v206;
            v181 = v206;
            v183 = v205;
            v184 = v129;
            __src[23] = v129;
            __src[24] = v130;
            v185 = v130;
            __src[25] = v128;
            v186 = v128;
            LOBYTE(__src[26]) = v203;
            v187 = v203;
            v189 = v126;
            __src[27] = v126;
            __src[28] = v127;
            v190 = v127;
            v191 = v124;
            __src[29] = v124;
            __src[30] = v125;
            v192 = v125;
            v193 = v122;
            __src[31] = v122;
            __src[32] = v123;
            v194 = v123;
            v195 = v120;
            __src[33] = v120;
            __src[34] = v121;
            v196 = v121;
            v197 = v118;
            __src[35] = v118;
            __src[36] = v119;
            v198 = v119;
            v199 = v116;
            __src[37] = v116;
            __src[38] = v117;
            v200 = v117;
            LOBYTE(__src[39]) = v113 & 1;
            v201 = v113 & 1;
            sub_1000E4AC4(__src, v155);
            sub_1000B00B8(&v157);
            return memcpy(v150, __src, 0x139uLL);
          }

          v5 = sub_10001C790();
          a3 = v86 + 5;
          v151 = v5;
          while (1)
          {
            v90 = *a3;
            v157 = *(a3 - 1);
            v158 = v90;
            __src[0] = 47;
            __src[1] = 0xE100000000000000;
            v91 = sub_1001F75B8();
            v8 = v91;
            v92 = v91[2];
            if (!v92)
            {

              goto LABEL_113;
            }

            v93 = v91[4];
            v82 = v91[5];
            v94 = &v91[2 * v92 + 4];
            v95 = *(v94 - 8);
            v153 = *(v94 - 16);

            v8 = v154;
            if (!v154)
            {

              v154 = 0;
              goto LABEL_113;
            }

            v152 = v95;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v157 = v154;
            v97 = sub_10011108C(v93);
            v99 = *(v154 + 16);
            v100 = (v98 & 1) == 0;
            v101 = v99 + v100;
            if (__OFADD__(v99, v100))
            {
              break;
            }

            v102 = v97;
            v5 = v98;
            sub_1000183C4(&unk_1002BCC80, &qword_10020C130);
            v8 = &v157;
            if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v101))
            {
              v8 = v157;
              v103 = sub_10011108C(v93);
              if ((v5 & 1) != (v104 & 1))
              {
                goto LABEL_127;
              }

              v102 = v103;
            }

            v105 = v157;
            v154 = v157;
            if (v5)
            {
              v106 = (v157[7] + 16 * v102);
              v8 = v106[1];
              *v106 = v153;
              v106[1] = v152;
            }

            else
            {
              v157[(v102 >> 6) + 8] |= 1 << v102;
              v107 = (v105[6] + 16 * v102);
              *v107 = v93;
              v107[1] = v82;
              v108 = (v105[7] + 16 * v102);
              *v108 = v153;
              v108[1] = v152;
              v109 = v105[2];
              v110 = __OFADD__(v109, 1);
              v111 = v109 + 1;
              if (v110)
              {
                goto LABEL_119;
              }

              v105[2] = v111;
            }

            v5 = v151;
LABEL_113:
            a3 += 2;
            if (!--a2)
            {
              goto LABEL_114;
            }
          }

          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:

          v29 = 1;
        }
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v157 = v8;
  v158 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v9)
      {
        while (1)
        {
          sub_100027240();
          if (!v15 & v14)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v15)
          {
            break;
          }

          v8 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          sub_10002727C();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        sub_1000E4E10();
        while (1)
        {
          sub_100027240();
          if (!v15 & v14)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v15)
          {
            break;
          }

          v8 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          sub_10002727C();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_124;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      sub_1000E4E10();
      while (1)
      {
        sub_100027240();
        if (!v15 & v14)
        {
          break;
        }

        sub_1000E4DA0();
        if (!v15)
        {
          break;
        }

        v8 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        sub_10002727C();
        if (v15)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_126:
  __break(1u);
LABEL_127:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

uint64_t sub_1000E3FB0(char a1)
{
  if (a1)
  {
    return 3157554;
  }

  else
  {
    return 3157553;
  }
}

uint64_t sub_1000E3FC8(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 49 && a2 == 0xE100000000000000;
  if (v3 || (sub_1000E4DF4(49, 0xE100000000000000) & 1) != 0 || (a1 == 3157553 ? (v5 = a2 == 0xE300000000000000) : (v5 = 0), v5 || (sub_1000E4DF4(3157553, 0xE300000000000000) & 1) != 0))
  {

    return 0;
  }

  v7 = a1 == 50 && a2 == 0xE100000000000000;
  if (!v7 && (sub_1000E4DF4(50, 0xE100000000000000) & 1) == 0)
  {
    v8 = a1 == 3157554 && a2 == 0xE300000000000000;
    if (!v8 && (sub_1000E4DF4(3157554, 0xE300000000000000) & 1) == 0)
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v9 = sub_1001F6688();
      sub_100019C94(v9, qword_1002E6180);
      sub_100013EFC();

      v10 = sub_1001F6668();
      v11 = sub_1001F7278();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        v14 = sub_1000E4544(a1, a2, &v15);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Defaulting to legacy StoreKit mode because an invalid header version value was provided (%s)", v12, 0xCu);
        sub_100019CCC(v13);
      }

      else
      {
      }

      return 0;
    }
  }

  return 1;
}

BOOL sub_1000E41D0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100279CB0;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_100013EFC();

  return v2 != 0;
}

BOOL sub_1000E4230(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100279CE8;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_100013EFC();

  return v2 != 0;
}

BOOL sub_1000E4290@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E41D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000E42C4@<X0>(void *a1@<X8>)
{
  result = sub_1000E4214();
  *a1 = 0xD000000000000023;
  a1[1] = v3;
  return result;
}

BOOL sub_1000E4300@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E4230(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000E4348(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v4._rawValue = &off_10027BA88;
  v7._object = a2;
  sub_1001F7BD8(v4, v7);
  sub_100013EFC();

  if (v2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E43BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E4348(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000E43EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E3FB0(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_1000E4420()
{
  result = qword_1002B38A0;
  if (!qword_1002B38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B38A0);
  }

  return result;
}

uint64_t sub_1000E4474(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000E44E8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000E4544(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000E4544(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000E4608(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10002F9B0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100019CCC(v11);
  return v7;
}

unint64_t sub_1000E4608(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000E4708(a5, a6);
    *a1 = v9;
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
    result = sub_1001F7858();
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

void *sub_1000E4708(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000E4754(a1, a2);
  sub_1000E486C(&off_100278DE8);
  return v3;
}

void *sub_1000E4754(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1001F6CF8())
  {
    result = sub_1000E4950(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1001F7798();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1001F7858();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000E486C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000E49C0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000E4950(uint64_t a1, uint64_t a2)
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

  sub_1000183C4(&qword_1002ADDD0, &qword_100200B58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000E49C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADDD0, &qword_100200B58);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_1000E4AB4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000E4B04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 313))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000E4B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *sub_1000E4C1C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1000E4CB8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000E4CF0()
{
  result = qword_1002B38A8;
  if (!qword_1002B38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B38A8);
  }

  return result;
}

unint64_t sub_1000E4D48()
{
  result = qword_1002B38B0;
  if (!qword_1002B38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B38B0);
  }

  return result;
}

void sub_1000E4DB4()
{

  HTTPHeaders.subscript.getter();
}

void sub_1000E4DDC(uint64_t a1, uint64_t a2)
{

  HTTPHeaders.subscript.getter();
}

uint64_t sub_1000E4DF4(uint64_t a1, uint64_t a2)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000E4E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F75B8();
}

void sub_1000E4E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F6748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B17C();
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v8 = sub_1001F7358();
  (*(v5 + 8))(v7, v4);
  MultiThreadedEventLoopGroup.shutdownGracefully(queue:_:)(v8, a1, a2);
}

uint64_t sub_1000E4F70(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000E4F8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E4FCC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000E5010(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000E5060()
{
  v2 = *(v0 + 24);

  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  sub_1001F6CA8(v3);
  v4._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v4);

  return v2;
}

uint64_t sub_1000E50DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sysconf(58);
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  type metadata accessor for MultiThreadedEventLoopGroup();
  *(v4 + 16) = sub_10013937C(v9, sub_10013B570, 0);
  *(v4 + 40) = 0;
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  *v11 = 0;
  *(v4 + 56) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = v10;
  return v4;
}

void sub_1000E51A0()
{
  v2 = v1;
  if ((*(v0 + 56) & 1) == 0)
  {
    v3 = v0;
    v4 = *(v0 + 48);
    os_unfair_lock_lock(*(v4 + 16));
    v5 = *(v0 + 16);
    type metadata accessor for ServerBootstrap();
    v6 = swift_allocObject();
    v7 = swift_retain_n();
    if (sub_1000E65E0(v7, v5, &protocol witness table for MultiThreadedEventLoopGroup, v6))
    {

      swift_beginAccess();
      sub_100150FAC(256);
      sub_100150D5C(0x40000FFFFuLL, 1);
      swift_endAccess();
      swift_beginAccess();
      sub_100150D5C(0x100000006uLL, 1);
      swift_endAccess();

      v8 = ServerBootstrap.childChannelInitializer(_:)(sub_1000E6778, v3);

      v10 = *(v3 + 24);
      v9 = *(v3 + 32);
      v11 = *(v3 + 40);

      sub_100151384(v8, v10, v9, v11);
      sub_1001D605C();
      if (v2)
      {

        v13 = sub_1000E5060();
        v15 = v14;
        sub_1000E5E7C();
        sub_10002E0D8();
        swift_allocError();
        *v16 = v13;
        *(v16 + 8) = v15;
        *(v16 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        v17 = v12;

        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 40))(ObjectType, v17);
        if ((~v19 & 0xF000000000000007) != 0)
        {
          v20 = v19;
          v23 = SocketAddress.port.getter(v19);
          v22 = v21;
          sub_10002D83C(v20);
          if ((v22 & 1) == 0)
          {
            *(v3 + 40) = v23;
            sub_1000E5038();
          }
        }

        *(v3 + 56) = 1;
        os_unfair_lock_unlock(*(v4 + 16));
        (*(v17 + 24))(ObjectType, v17);
        sub_1001D61E8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000E54A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  ChannelPipeline.configureHTTPServerPipeline(position:withPipeliningAssistance:withServerUpgrade:withErrorHandling:)();

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;

  swift_unknownObjectRetain();
  v8 = sub_10019FB84();

  return v8;
}

uint64_t sub_1000E5590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HTTPHandler();
  swift_allocObject();
  *(sub_10019FC80() + 136) = &off_100288C40;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v6 = (*(a4 + 32))(ObjectType, a4);

  sub_1000E5FCC(v7, 0, 0, 1, 0x8000000000000000, v6, sub_1001DBFC0, &unk_100288D00, &off_1002921F8, sub_1000E67D0);
}

void sub_1000E56A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56) == 1)
  {
    v5 = v3;
    sub_1000E5780(a1, a2, a3);
    if (v4)
    {
      sub_1000E5E7C();
      sub_10002E0D8();
      swift_allocError();
      *v6 = v4;
      *(v6 + 8) = 0;
      *(v6 + 16) = 1;
      swift_willThrow();
      v7 = *(*(v3 + 48) + 16);

      os_unfair_lock_lock(v7);
      *(v5 + 56) = 0;
      os_unfair_lock_unlock(v7);
    }

    else
    {
      v8 = *(*(v3 + 48) + 16);

      os_unfair_lock_lock(v8);
      *(v3 + 56) = 0;
      os_unfair_lock_unlock(v8);
    }
  }
}

uint64_t sub_1000E5780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1001F6738();
  __chkstk_darwin(v3);
  if (static MultiThreadedEventLoopGroup.currentEventLoop.getter())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    type metadata accessor for Lock();
    swift_allocObject();
    v4 = Lock.init()();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    aBlock[4] = debugOnly(_:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000172C0;
    aBlock[3] = &unk_100288C78;
    v6 = _Block_copy(aBlock);
    aBlock[7] = _swiftEmptyArrayStorage;
    sub_100028258(v6, v7, v8);
    sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
    sub_1000282B0();
    sub_1001F7708();
    sub_1001F6818();
    swift_allocObject();
    v9 = sub_1001F67F8();
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v9;

    sub_1000E4E44(sub_1000E5F68, v10);

    sub_1001F67E8();
    Lock.lock()();
    swift_beginAccess();
    if (*(v5 + 16))
    {
      swift_willThrow();
      swift_errorRetain();
    }

    Lock.unlock()();
  }

  return result;
}

uint64_t sub_1000E5A50(void *a1)
{
  if (qword_1002AC498 != -1)
  {
    swift_once();
  }

  sub_100145F48(a1, 0, 0, 0, 0);
}

uint64_t sub_1000E5CF8()
{

  return v0;
}

uint64_t sub_1000E5D28()
{
  sub_1000E5CF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E5D80(void *a1)
{
  sub_10014524C(a1, &v4);
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v2 = v1;
  sub_1000E5E28(&v4);
  return v2;
}

unint64_t sub_1000E5E7C()
{
  result = qword_1002B3A00;
  if (!qword_1002B3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3A00);
  }

  return result;
}

uint64_t sub_1000E5ED0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E5F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E5F20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E5FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(a6 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v16 + 16))(ObjectType, v16))
  {
    sub_1000E615C(a1, a2, a3, a4, a5, a6);
    v19 = v18;
    v21 = v20 & 1;
    LOBYTE(v36) = v20 & 1;
    EventLoop.makeCompletedFuture<A>(_:)(&v35, ObjectType, &type metadata for ()[1], v16, v22, v23, v24, v25, v30, v31, v32, a8, v18, v36, v37, v38, v39, v40, v41, v42);
    v27 = v26;
    sub_1000374AC(v19, v21);
  }

  else
  {
    v28 = swift_allocObject();
    v28[2] = a6;
    v28[3] = a1;
    v28[4] = a9;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = a4;
    v28[8] = a5;
    v34 = *(v16 + 32);

    sub_10006F254(a4, a5);
    v27 = v34(a10, v28, &type metadata for ()[1], ObjectType, v16);
  }

  return v27;
}

void sub_1000E615C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  sub_1000E6898();
  if (*(a6 + 40) == 1)
  {
    sub_10002D678();
    sub_10002E0D8();
    v10 = swift_allocError();
    sub_1000E68D0(v10, v11);
    return;
  }

  if (!(a5 >> 62))
  {
    sub_1000E6898();
    v18 = *(a6 + 16);
    if (v18)
    {
      v19 = *(v18 + 16);
      v20 = sub_1000E68C4();
      sub_10006F254(v20, v21);

      if (v19)
      {
        while (v19 != *(a6 + 24))
        {
          v22 = ChannelHandlerContext.handler.getter();
          swift_unknownObjectRelease();
          if (v22 == a4)
          {
            v29 = sub_1000E68C4();
            sub_10006F21C(v29, v30);
            sub_1000E6870();
            if (*(a6 + 40))
            {
LABEL_32:
              sub_10002D678();
              sub_10002E0D8();
              v31 = swift_allocError();
              sub_1000E68D0(v31, v32);

              return;
            }

            if (!a3)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          v23 = *(v19 + 16);

          v19 = v23;
          if (!v23)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_25;
      }

LABEL_26:
      v24 = sub_1000E68C4();
      sub_10006F21C(v24, v25);
      goto LABEL_27;
    }

LABEL_21:

LABEL_27:
    sub_1000A25AC();
    sub_10002E0D8();
    swift_allocError();
    *v26 = 1;

    return;
  }

  if (a5 >> 62 == 1)
  {
    sub_1000E6898();
    v12 = *(a6 + 16);
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = sub_1000E68C4();
      sub_10006F254(v14, v15);

      if (v13)
      {
        while (v13 != *(a6 + 24))
        {
          v16 = ChannelHandlerContext.handler.getter();
          swift_unknownObjectRelease();
          if (v16 == a4)
          {
            v27 = sub_1000E68C4();
            sub_10006F21C(v27, v28);
            sub_1000E6870();
            if (*(a6 + 40))
            {
              goto LABEL_32;
            }

            if (!a3)
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          v17 = *(v13 + 16);

          v13 = v17;
          if (!v17)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (a4 | a5 ^ 0x8000000000000000)
  {
    if (*(a6 + 24))
    {
      sub_1000E6870();

      if (!a3)
      {
LABEL_35:
        sub_10009B8A4();
        sub_1000E68E8();
      }

LABEL_36:
      v35 = sub_1000E68F4();
      sub_1000E6924(v35);
      v36 = sub_1000E6854();
      a3(v36);
      sub_1000E690C();

      sub_1000E68B4();
      sub_10009B6A4();
      goto LABEL_37;
    }
  }

  else
  {
    if (*(a6 + 16))
    {
      sub_1000E6870();

      if (!a3)
      {
LABEL_33:
        sub_10009B8A4();
        sub_1000E68E8();
      }

LABEL_34:
      v33 = sub_1000E68F4();
      sub_1000E6924(v33);
      v34 = sub_1000E6854();
      a3(v34);
      sub_1000E690C();

      sub_1000E68B4();
      sub_10009B59C();
LABEL_37:
      sub_10009B954();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_1000E65E0(void *a1, id a2, _UNKNOWN **a3, void *a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    a3 = &protocol witness table for MultiThreadedEventLoopGroup;
    v7 = a1;
  }

  Class = object_getClass(v7);
  if (Class != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && Class != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || v7 == 0)
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    a4[2] = a1;
    a4[3] = &protocol witness table for MultiThreadedEventLoopGroup;
    a4[4] = v7;
    a4[5] = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    a4[10] = sub_1000336E8();
    a4[11] = sub_1000336E8();
    *(a4 + 3) = 0u;
    *(a4 + 4) = 0u;
    swift_beginAccess();
    sub_100150D5C(0x100000006uLL, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a4;
}

uint64_t sub_1000E6780()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E67E8()
{

  swift_unknownObjectRelease();

  sub_10006F21C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1000E6870()
{

  debugOnly(_:)();
}

void sub_1000E6898()
{

  debugOnly(_:)();
}

uint64_t sub_1000E68F4()
{

  return type metadata accessor for ChannelHandlerContext();
}

uint64_t sub_1000E690C()
{
}

uint64_t sub_1000E6924(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000E693C(uint64_t a1)
{
  type metadata accessor for InAppCheckDownloadQueueCountResponse();
  swift_allocObject();
  v2 = sub_1000B7E90();
  *(v2 + 24) = 2;
  *(v2 + 48) = _swiftEmptyArrayStorage;

  *(v2 + 32) = a1;
  *(v2 + 40) = 0;

  return v2;
}

void *sub_1000E69DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    switch(*(a1 + 57))
    {
      case 1:
        sub_1000E7A6C();
        v3 = 0xE400000000000000;

        v5 = 0;
        v21 = 0;
        break;
      default:
        v6 = sub_1001F7EA8();

        if (v6)
        {
          sub_1000E7A6C();

          goto LABEL_7;
        }

        v21 = sub_100077944(v4, v3);
        v22 = v4;
        break;
    }
  }

  else
  {
    sub_1000E7A6C();
LABEL_7:
    v5 = 0;
    v21 = 0;
    v3 = 0xE400000000000000;
  }

  v37 = v5 & 1;
  v7 = *(a1 + 57);
  v8 = *&aNone_3[8 * v7];
  v9 = *&aFreetriapayasy_0[8 * v7 + 24];
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v20 = *(a1 + 48);
  v12 = *(a1 + 56);
  v36 = 0;
  if (*a1 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription10AdHocOffer)
  {
    v14 = *(a1 + 96);
    v13 = *(a1 + 104);

    v15 = 0x66664F636F686441;
    v16 = 0xEA00000000007265;
  }

  else
  {
    v17 = *a1;

    v14 = 0;
    v13 = 0;
    v15 = 0x66664F6F72746E49;
    if (v17 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
    {
      v15 = 0;
    }

    v16 = 0xEA00000000007265;
    if (v17 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
    {
      v16 = 0;
    }
  }

  v18 = v20;
  if (v12)
  {
    v18 = 1;
  }

  __src[0] = v14;
  __src[1] = v13;
  __src[2] = v15;
  __src[3] = v16;
  __src[4] = v21;
  LOBYTE(__src[5]) = v37;
  __src[6] = v22;
  __src[7] = v3;
  __src[8] = v8;
  __src[9] = v9;
  __src[10] = v11;
  __src[11] = v10;
  __src[12] = v18;
  LOBYTE(__src[13]) = v36;
  v26[0] = v14;
  v26[1] = v13;
  v26[2] = v15;
  v26[3] = v16;
  v26[4] = v21;
  v27 = v37;
  v28 = v22;
  v29 = v3;
  v30 = v8;
  v31 = v9;
  v32 = v11;
  v33 = v10;
  v34 = v18;
  v35 = v36;
  sub_1000E76E4(__src, v24);
  sub_1000E76B4(v26);
  return memcpy(a2, __src, 0x69uLL);
}

unint64_t sub_1000E6CA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BAD8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000E6CF4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6563697270;
      break;
    case 3:
      result = 0x69642D6563697270;
      break;
    case 4:
      result = 0x6570795465646F6DLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x726550664F6D756ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000E6DDC(void *a1)
{
  v3 = sub_1000183C4(&qword_1002B3BB0, &qword_10020C538);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_1000E7660();
  sub_1001F8198();
  v10[15] = 0;
  sub_100024A50();
  sub_1001F7D18();
  if (!v1)
  {
    v10[14] = 1;
    sub_100024A50();
    sub_1001F7D18();
    v10[13] = 2;
    sub_100024A50();
    sub_1001F7D38();
    v10[12] = 3;
    sub_100024A50();
    sub_1001F7D18();
    v10[11] = 4;
    sub_100024A50();
    sub_1001F7D18();
    v10[10] = 5;
    sub_100024A50();
    sub_1001F7D18();
    v10[9] = 6;
    sub_100024A50();
    sub_1001F7D48();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1000E6FCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002B3BA0, &qword_10020C530);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v69 = 1;
  v67 = 1;
  v11 = a1[3];
  v70 = a1;
  sub_10001AE68(a1, v11);
  sub_1000E7660();
  sub_1001F8178();
  if (v2)
  {
    v48 = v2;
    sub_1000E7A04();
    sub_1000E7A7C();
    sub_100019CCC(v70);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = v7;
    v57 = v69;
    *v58 = *v68;
    *&v58[3] = *&v68[3];
    v59 = v11;
    v60 = a1;
    v61 = v2;
    v62 = v49;
    v63 = v46;
    v64 = v47;
    v65 = 0;
    v66 = v67;
    return sub_1000E76B4(&v52);
  }

  else
  {
    LOBYTE(v52) = 0;
    v44 = sub_1001F7C08();
    v45 = v13;
    sub_1000E7A3C(1);
    v14 = sub_1001F7C08();
    v43 = v15;
    sub_1000E7A3C(2);
    v42 = sub_1001F7C28();
    v69 = v16 & 1;
    sub_1000E7A3C(3);
    v17 = sub_1001F7C08();
    v41 = v18;
    sub_1000E7A3C(4);
    v19 = sub_1001F7C08();
    v49 = v20;
    sub_1000E7A3C(5);
    v21 = sub_1001F7C08();
    v47 = v22;
    v51 = 6;
    v23 = sub_1001F7C38();
    v48 = 0;
    v46 = v21;
    v25 = v24;
    v26 = *(v7 + 8);
    v35 = v23;
    v26(v10, v5);
    v25 &= 1u;
    v67 = v25;
    v27 = v44;
    *__src = v44;
    v28 = v45;
    *&__src[8] = v45;
    *&__src[16] = v14;
    v40 = a2;
    v39 = v14;
    v29 = v43;
    *&__src[24] = v43;
    v30 = v42;
    *&__src[32] = v42;
    v36 = v69;
    __src[40] = v69;
    *&__src[48] = v17;
    v38 = v17;
    v31 = v41;
    *&__src[56] = v41;
    *&__src[64] = v19;
    v37 = v19;
    v32 = v49;
    *&__src[72] = v49;
    *&__src[80] = v21;
    v33 = v47;
    v34 = v35;
    *&__src[88] = v47;
    *&__src[96] = v35;
    __src[104] = v25;
    sub_1000E76E4(__src, &v52);
    sub_100019CCC(v70);
    v52 = v27;
    v53 = v28;
    v54 = v39;
    v55 = v29;
    v56 = v30;
    v57 = v36;
    v59 = v38;
    v60 = v31;
    v61 = v37;
    v62 = v32;
    v63 = v46;
    v64 = v33;
    v65 = v34;
    v66 = v25;
    sub_1000E76B4(&v52);
    return memcpy(v40, __src, 0x69uLL);
  }
}

unint64_t sub_1000E74E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E6CA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000E7514@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E6CF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000E755C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E6CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E7584(uint64_t a1)
{
  v2 = sub_1000E7660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E75C0(uint64_t a1)
{
  v2 = sub_1000E7660();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E75FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000E6FCC(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x69uLL);
  }

  return result;
}

unint64_t sub_1000E7660()
{
  result = qword_1002B3BA8;
  if (!qword_1002B3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Discount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1000E77E8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000E7828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000E787C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000E7900()
{
  result = qword_1002B3BB8;
  if (!qword_1002B3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BB8);
  }

  return result;
}

unint64_t sub_1000E7958()
{
  result = qword_1002B3BC0;
  if (!qword_1002B3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BC0);
  }

  return result;
}

unint64_t sub_1000E79B0()
{
  result = qword_1002B3BC8;
  if (!qword_1002B3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BC8);
  }

  return result;
}

void sub_1000E7A04()
{
  *(v0 - 352) = 0;
  *(v0 - 360) = 0;
  *(v0 - 336) = 0;
}

uint64_t sub_1000E7A98()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x2E746E756F636361;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEF676E696C6C6962;
  }

  if (v1)
  {
    v5 = 0x2E746E756F636361;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v6 = 0xEF676E696C6C6962;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E7B34(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x62616D75736E6F43;
  v4 = a1;
  v5 = 0x62616D75736E6F43;
  v6 = 0xEA0000000000656CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x75736E6F436E6F4ELL;
      v6 = 0xED0000656C62616DLL;
      break;
    case 2:
      v6 = 0x8000000100221B70;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v6 = 0x8000000100221B90;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x75736E6F436E6F4ELL;
      v2 = 0xED0000656C62616DLL;
      break;
    case 2:
      v2 = 0x8000000100221B70;
      v3 = 0xD000000000000017;
      break;
    case 3:
      sub_1000EC478();
      v2 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC450(v5, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_1000E7CB8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000065636972;
  v3 = 0x5079616C70736964;
  v4 = a1;
  v5 = 0x5079616C70736964;
  v6 = 0xEC00000065636972;
  switch(v4)
  {
    case 1:
      v5 = 0x6853796C696D6166;
      v6 = 0xEF656C6261657261;
      break;
    case 2:
      v5 = 0x6C616E7265746E69;
      v6 = 0xEA00000000004449;
      break;
    case 3:
      v5 = 0x617A696C61636F6CLL;
      v7 = 0x736E6F6974;
      goto LABEL_8;
    case 4:
      v5 = sub_1000EC4B0() & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
      v6 = 0xE900000000000044;
      break;
    case 5:
      v5 = 0x636E657265666572;
      v7 = 0x656D614E65;
LABEL_8:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 7:
      v5 = sub_1000EC638(18);
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6853796C696D6166;
      v2 = 0xEF656C6261657261;
      break;
    case 2:
      v3 = 0x6C616E7265746E69;
      v2 = 0xEA00000000004449;
      break;
    case 3:
      v3 = 0x617A696C61636F6CLL;
      v9 = 0x736E6F6974;
      goto LABEL_17;
    case 4:
      sub_1000EC4C0();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
      v2 = 0xE900000000000044;
      break;
    case 5:
      v3 = 0x636E657265666572;
      v9 = 0x656D614E65;
LABEL_17:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v2 = 0xE400000000000000;
      v3 = 1701869940;
      break;
    case 7:
      sub_1000EC478();
      v2 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC450(v5, a2, v3);
  }

  return v12 & 1;
}

uint64_t sub_1000E7F24(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = sub_1000EC5F4() & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      v4 = sub_1000EC5A8();
      v3 = 0xED00000000000000;
      break;
    case 4:
      v4 = sub_1000EC6C4();
      break;
    case 5:
      v4 = sub_1000EC42C(27);
      break;
    case 6:
      v4 = sub_1000EC61C();
      v3 = 0xEC00000000000000;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701869940;
      break;
    case 2:
      v5 = 0xE500000000000000;
      sub_1000EC570();
      v6 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      sub_1000EC570();
      sub_1000EC658();
      v5 = 0xED00000000000000;
      break;
    case 4:
      sub_1000EC670();
      break;
    case 5:
      sub_1000EC3D0();
      break;
    case 6:
      sub_1000EC600();
      v5 = 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v4, a2, v6);
  }

  return v9 & 1;
}

uint64_t sub_1000E80D8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6449676F6C616964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6449676F6C616964;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x736E6F6974706FLL;
      break;
    case 3:
      sub_1000EC57C();
      break;
    case 4:
      sub_1000C9BB8();
      v3 = v6 | 1;
      break;
    case 5:
      sub_1000C9BB8();
      v3 = v7 | 8;
      break;
    case 6:
      v5 = 0x54746E657645746DLL;
      v3 = 0xEB00000000656D69;
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v8 = 0xE700000000000000;
      v2 = 0x736E6F6974706FLL;
      break;
    case 3:
      sub_1000EC648();
      break;
    case 4:
      sub_1000C9BB8();
      v8 = v9 | 1;
      break;
    case 5:
      sub_1000C9BB8();
      v8 = v10 | 8;
      break;
    case 6:
      v2 = 0x54746E657645746DLL;
      v8 = 0xEB00000000656D69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC410(v5, a2, v2);
  }

  return v12 & 1;
}

uint64_t sub_1000E8314(uint64_t a1, uint64_t a2)
{
  sub_1000EC6DC();
  switch(v4)
  {
    case 3:
      sub_1000EC75C();
      break;
    case 5:
      sub_1000EC4B0();
      sub_1000EC57C();
      break;
    case 6:
      sub_1000EC54C();
      break;
    case 7:
      sub_1000EC42C(22);
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v8)
  {
    case 1:
      v7 = 7627113;
      break;
    case 2:
      v7 = 6583649;
      break;
    case 3:
      sub_1000EC70C();
      break;
    case 4:
      v7 = 6580578;
      break;
    case 5:
      sub_1000EC4C0();
      sub_1000EC648();
      break;
    case 6:
      sub_1000EC504();
      break;
    case 7:
      sub_1000EC3D0();
      break;
    case 8:
      v7 = 7370853;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_1000E84DC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006E6F697372;
  v3 = 0x65762D65726F7473;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000100223230;
    }

    else
    {
      v6 = 0x8000000100223250;
    }
  }

  else
  {
    v5 = 0x65762D65726F7473;
    v6 = 0xED00006E6F697372;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000100223230;
    }

    else
    {
      v2 = 0x8000000100223250;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC450(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000E85C4()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC6AC();
      break;
    case 2:
      sub_1000EC3F8();
      break;
    case 3:
      sub_1000EC3B4();
      break;
    case 4:
      sub_1000EC588();
      break;
    case 5:
      v0 = 0xE700000000000000;
      break;
    case 6:
      v0 = 0x8000000100222740;
      break;
    case 7:
      v0 = 0x8000000100222760;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v7)
  {
    case 1:
      sub_1000EC688();
      break;
    case 2:
      sub_1000EC3E0();
      break;
    case 3:
      sub_1000EC398();
      break;
    case 4:
      sub_1000EC5C8();
      break;
    case 5:
      v1 = 0xE700000000000000;
      v5 = 0x65726F4D736168;
      break;
    case 6:
      v1 = (v6 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000012;
      break;
    case 7:
      sub_1000EC3D0();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1000E8770(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED0000746E65746ELL;
  v3 = 0x6F43646574736F68;
  v4 = a1;
  v5 = 0x6F43646574736F68;
  v6 = 0xED0000746E65746ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1684957547;
      break;
    case 2:
      v5 = 0x66664F636F486461;
      v6 = 0xEB00000000737265;
      break;
    case 3:
      v5 = sub_1000EC528();
      break;
    case 4:
      v5 = 0x6C61636F4C756369;
      v6 = 0xE900000000000065;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1684957547;
      break;
    case 2:
      sub_1000EC720();
      v2 = 0xEB00000000737265;
      break;
    case 3:
      sub_1000EC4E0();
      break;
    case 4:
      v3 = 0x6C61636F4C756369;
      v2 = 0xE900000000000065;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC450(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000E88F0()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC3F8();
      break;
    case 2:
      sub_1000EC3B4();
      break;
    case 3:
      sub_1000EC42C(18);
      break;
    case 4:
      sub_1000EC6AC();
      break;
    case 5:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      sub_1000EC3E0();
      break;
    case 2:
      sub_1000EC398();
      break;
    case 3:
      sub_1000EC3D0();
      break;
    case 4:
      sub_1000EC688();
      break;
    case 5:
      v1 = 0xE500000000000000;
      v5 = 0x74696D696CLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E8A34(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E8AB8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "subscriptionGroupIdentifiers";
  }

  else
  {
    v4 = "subscriptionGroupIdentifier";
  }

  if (a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    v6 = "subscriptionGroupIdentifier";
  }

  else
  {
    v6 = "subscriptionGroupIdentifiers";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E8B50(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x646E6F636573;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x646E6F636573;
  switch(v4)
  {
    case 1:
      v5 = 0x6574756E696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1920298856;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7954788;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1801807223;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6574756E696DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1920298856;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7954788;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E8CFC()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 0x6449656C646E7562;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v0)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x6449656C646E7562;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E8D8C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73676E6970;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x73676E6970;
  switch(v4)
  {
    case 1:
      v5 = 0x6F44656C676E696ALL;
      v3 = 0xED00006570795463;
      break;
    case 2:
      v5 = sub_1000EC42C(25);
      break;
    case 3:
      v5 = 0x6341656C676E696ALL;
      v6 = 1852795252;
      goto LABEL_8;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1684632420;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x7473696C2D707061;
      break;
    case 6:
      v5 = 0x2D74706965636572;
      v6 = 1635017060;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F44656C676E696ALL;
      v7 = 0xED00006570795463;
      break;
    case 2:
      sub_1000EC3D0();
      break;
    case 3:
      v2 = 0x6341656C676E696ALL;
      v8 = 1852795252;
      goto LABEL_16;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1684632420;
      break;
    case 5:
      v7 = 0xE800000000000000;
      v2 = 0x7473696C2D707061;
      break;
    case 6:
      v2 = 0x2D74706965636572;
      v8 = 1635017060;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1000E8FA0(uint64_t a1)
{
  sub_1000EC57C();
  v3 = 0x692D656C646E7562;
  v5 = v4;
  v6 = 0x692D656C646E7562;
  v7 = 0xE900000000000064;
  switch(v5)
  {
    case 1:
      v6 = 0x2D6E6F6973726576;
      v7 = 0xEA00000000006469;
      break;
    case 2:
      v6 = sub_1000EC638(18);
      break;
    case 3:
      v7 = 0xE400000000000000;
      v6 = 1684632935;
      break;
    case 4:
      v6 = sub_1000EC748();
      v7 = 0xEB0000000063614DLL;
      break;
    case 5:
      v7 = 0xE300000000000000;
      v6 = 6580598;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v3 = 0x2D6E6F6973726576;
      v1 = 0xEA00000000006469;
      break;
    case 2:
      sub_1000EC478();
      v1 = v8 | 0x8000000000000000;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v3 = 1684632935;
      break;
    case 4:
      sub_1000EC734();
      v1 = 0xEB0000000063614DLL;
      break;
    case 5:
      v1 = 0xE300000000000000;
      v3 = 6580598;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC450(v6, v2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1000E9164(uint64_t a1, uint64_t a2)
{
  sub_1000EC6DC();
  switch(v4)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      v2 = 0xE400000000000000;
      break;
    case 3:
      sub_1000EC748();
      v2 = 0xEB0000000063614DLL;
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v8)
  {
    case 1:
      v3 = 0xE400000000000000;
      v7 = 1936881250;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v7 = 1684632935;
      break;
    case 3:
      sub_1000EC734();
      v3 = 0xEB0000000063614DLL;
      break;
    case 4:
      v7 += 20;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_1000E92A8()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 1634497893;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v0)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 1634497893;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E9330(char a1, char a2)
{
  if (a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1001F7EA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1000E9398()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1634497893;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v1)
  {
    v5 = 1634497893;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E9420(uint64_t a1, uint64_t a2)
{
  sub_1000EC6DC();
  switch(v4)
  {
    case 3:
      sub_1000EC75C();
      break;
    case 5:
      sub_1000EC4B0();
      sub_1000EC57C();
      break;
    case 6:
      sub_1000EC54C();
      break;
    case 7:
      v2 = 0xEF7265696669746ELL;
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v8)
  {
    case 1:
      v7 = 7627113;
      break;
    case 2:
      v7 = 6583649;
      break;
    case 3:
      sub_1000EC70C();
      break;
    case 4:
      v7 = 6580578;
      break;
    case 5:
      sub_1000EC4C0();
      sub_1000EC648();
      break;
    case 6:
      sub_1000EC504();
      break;
    case 7:
      v7 = 0x656449726566666FLL;
      v3 = 0xEF7265696669746ELL;
      break;
    case 8:
      v7 = 7370853;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_1000E95F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6573616863727570;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726566666FLL;
      break;
    case 3:
      v5 = 0x7220646E75666572;
      v3 = 0xEE00747365757165;
      break;
    case 4:
      v5 = 0x6163696669726576;
      v3 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6573616863727570;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726566666FLL;
      break;
    case 3:
      v2 = 0x7220646E75666572;
      v6 = 0xEE00747365757165;
      break;
    case 4:
      v2 = 0x6163696669726576;
      v6 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E97B0(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E9834(char a1, uint64_t a2)
{
  v2 = 1701667182;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x64656C62616E65;
    }

    else
    {
      v3 = 0x746E6572727563;
    }

    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701667182;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64656C62616E65;
    }

    else
    {
      v2 = 0x746E6572727563;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410(v3, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_1000E9920(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656D614E707061;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "subscriptionOffersKeyPair";
  v6 = 0x656D614E707061;
  v7 = "nonRenewingSubscriptions";
  switch(v4)
  {
    case 1:
      v3 = 0x8000000100222C00;
      v6 = 0xD000000000000018;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v6 = sub_1000EC4B0() & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 0x73676E6974746573;
      break;
    case 4:
      v3 = 0x8000000100222C30;
      v6 = 0xD000000000000019;
      break;
    case 5:
      v6 = 0xD000000000000012;
      v3 = 0x8000000100222C50;
      break;
    case 6:
      v6 = 0x63696C6F50707061;
      v3 = 0xEB00000000736569;
      break;
    case 7:
      v6 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = (v7 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000018;
      break;
    case 2:
      v8 = 0xE800000000000000;
      sub_1000EC4C0();
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
      break;
    case 3:
      v8 = 0xE800000000000000;
      v2 = 0x73676E6974746573;
      break;
    case 4:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000019;
      break;
    case 5:
      sub_1000EC3D0();
      break;
    case 6:
      v2 = 0x63696C6F50707061;
      v8 = 0xEB00000000736569;
      break;
    case 7:
      v2 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000EC410(v6, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1000E9B60(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E9BE4(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000656C62;
  }

  else
  {
    v1 = 0xEB00000000797469;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E9C84(unsigned __int8 a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 2u:
      v2 = 0xEA00000000006F47;
      break;
    case 3u:
      v2 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      v5 = 1701147238;
      break;
    case 2:
      v5 = 0x756F597341796170;
      v1 = 0xEA00000000006F47;
      break;
    case 3:
      v5 = 0x6F72467055796170;
      v1 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E9DDC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7824750;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x676E697473697865;
    }

    else
    {
      v4 = 0x64657269707865;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7824750;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676E697473697865;
    }

    else
    {
      v2 = 0x64657269707865;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E9EC8(char a1)
{
  if (a1)
  {
    v1 = 0xEA0000000000656CLL;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E9F5C(uint64_t a1)
{
  v1 = 0xEB00000000737265;
  sub_1000EC720();
  v5 = v4;
  v6 = "subscriptionGroupID";
  v7 = "recurringSubscriptionPeriod";
  v8 = v3;
  v9 = 0xEB00000000737265;
  v10 = "introductoryOffer";
  switch(v5)
  {
    case 1:
      v8 = 0x6566664F65646F63;
      v9 = 0xEA00000000007372;
      break;
    case 2:
      v8 = sub_1000EC528();
      break;
    case 3:
      v8 = 0x6D754E70756F7267;
      v9 = 0xEB00000000726562;
      break;
    case 4:
      v8 = 0xD000000000000011;
      v9 = 0x8000000100222040;
      break;
    case 5:
      v9 = 0x8000000100222060;
      v8 = 0xD00000000000001BLL;
      break;
    case 6:
      v9 = 0x8000000100222080;
      v8 = 0xD000000000000013;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v3 = 0x6566664F65646F63;
      v1 = 0xEA00000000007372;
      break;
    case 2:
      sub_1000EC4E0();
      break;
    case 3:
      v3 = 0x6D754E70756F7267;
      v1 = 0xEB00000000726562;
      break;
    case 4:
      v3 = 0xD000000000000011;
      v1 = (v10 - 32) | 0x8000000000000000;
      break;
    case 5:
      v1 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001BLL;
      break;
    case 6:
      v1 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    default:
      break;
  }

  if (v8 == v3 && v9 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC450(v8, v2, v3);
  }

  return v12 & 1;
}

uint64_t sub_1000EA170(char a1)
{
  if (a1)
  {
    v1 = 0xED0000656D614E65;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EA20C(unsigned __int8 a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1u:
      sub_1000EC5F4();
      v2 = 0xEB00000000676E69;
      break;
    case 2u:
      sub_1000EC5F4();
      v2 = 0xEE0064657474616DLL;
      break;
    case 3u:
      v2 = 1701080899;
      goto LABEL_8;
    case 4u:
      sub_1000EC42C(27);
      break;
    case 5u:
      sub_1000EC61C();
LABEL_8:
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6u:
      v2 = 0xE900000000000073;
      break;
    case 7u:
      v2 = 0xE700000000000000;
      break;
    case 8u:
      sub_1000EC6C4();
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      sub_1000EC570();
      v5 = v7 | 0x7274536500000000;
      v1 = 0xEB00000000676E69;
      break;
    case 2:
      sub_1000EC570();
      v5 = v8 | 0x726F466500000000;
      v1 = 0xEE0064657474616DLL;
      break;
    case 3:
      v5 = 0x79636E6572727563;
      v1 = 1701080899;
      goto LABEL_18;
    case 4:
      sub_1000EC3D0();
      break;
    case 5:
      sub_1000EC600();
LABEL_18:
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v5 = 0x746E756F63736964;
      v1 = 0xE900000000000073;
      break;
    case 7:
      v1 = 0xE700000000000000;
      v5 = 0x6449726566666FLL;
      break;
    case 8:
      sub_1000EC670();
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1000EA474(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EA504(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000004C41;
  v3 = 0x4952545F45455246;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x595F53415F594150;
    }

    else
    {
      v5 = 0x465F50555F594150;
    }

    if (v4 == 1)
    {
      v6 = 0xED00004F475F554FLL;
    }

    else
    {
      v6 = 0xEC000000544E4F52;
    }
  }

  else
  {
    v5 = 0x4952545F45455246;
    v6 = 0xEA00000000004C41;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x595F53415F594150;
    }

    else
    {
      v3 = 0x465F50555F594150;
    }

    if (a2 == 1)
    {
      v2 = 0xED00004F475F554FLL;
    }

    else
    {
      v2 = 0xEC000000544E4F52;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC450(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000EA620(char a1)
{
  if (a1)
  {
    v1 = 0xED00004445524148;
  }

  else
  {
    v1 = 0xE900000000000044;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EA6F0(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EA774(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C61636F6CLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x52557963696C6F70;
    }

    else
    {
      v4 = 0x65547963696C6F70;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000004CLL;
    }

    else
    {
      v5 = 0xEA00000000007478;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656C61636F6CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x52557963696C6F70;
    }

    else
    {
      v2 = 0x65547963696C6F70;
    }

    if (a2 == 1)
    {
      v6 = 0xE90000000000004CLL;
    }

    else
    {
      v6 = 0xEA00000000007478;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000EA870(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EA8F8(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EA99C(uint64_t a1, uint64_t a2)
{
  sub_1000EC6DC();
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE400000000000000;
      break;
    case 3:
      v2 = 0xED00006E6F697463;
      break;
    default:
      sub_1000EC42C(22);
      break;
  }

  sub_1000EC6A0();
  switch(v8)
  {
    case 1:
      break;
    case 2:
      v3 = 0xE400000000000000;
      v7 = 1869901639;
      break;
    case 3:
      v7 = 0x4165636976726553;
      v3 = 0xED00006E6F697463;
      break;
    default:
      sub_1000EC3D0();
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_1000EAB00(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v6 = "ible";
      goto LABEL_4;
    case 2:
      v6 = "originalTransactionId";
LABEL_4:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD000000000000015;
      break;
    case 3:
      v3 = 0x80000001002224A0;
      v5 = 0xD000000000000011;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v8 = "ible";
      goto LABEL_9;
    case 2:
      v8 = "originalTransactionId";
LABEL_9:
      v7 = v8 | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    case 3:
      v7 = 0x80000001002224A0;
      v2 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1000EAC44(char a1)
{
  if (a1)
  {
    v1 = "signedRenewalInfo";
  }

  else
  {
    v1 = "subscriptionGroupIdentifiers";
  }

  v2 = v1 | 0x8000000000000000;
  sub_1000EC46C();
  if (v9)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 == v5 && v2 == (v8 | 0x8000000000000000);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1000EACDC()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC3B4();
      break;
    case 2:
      sub_1000EC3F8();
      break;
    case 3:
      sub_1000EC588();
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      sub_1000EC398();
      break;
    case 2:
      sub_1000EC3E0();
      break;
    case 3:
      sub_1000EC5C8();
      break;
    case 4:
      v5 = 1635017060;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000EAE18()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC3B4();
      break;
    case 2:
      sub_1000EC3F8();
      break;
    case 3:
      sub_1000EC42C(18);
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      sub_1000EC398();
      break;
    case 2:
      sub_1000EC3E0();
      break;
    case 3:
      sub_1000EC3D0();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000EAF38(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7959874;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C65636E6143;
    }

    else
    {
      v4 = 27503;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7959874;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C65636E6143;
    }

    else
    {
      v2 = 27503;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000EB004(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7975427070416E69;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7975427070416E69;
  switch(v4)
  {
    case 1:
      v3 = 0x8000000100222830;
      v5 = 0xD000000000000014;
      break;
    case 2:
      v3 = 0x8000000100222850;
      v5 = 0xD000000000000018;
      break;
    case 3:
      v3 = 0x8000000100222870;
      v5 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x8000000100222830;
      v2 = 0xD000000000000014;
      break;
    case 2:
      v6 = 0x8000000100222850;
      v2 = 0xD000000000000018;
      break;
    case 3:
      v6 = 0x8000000100222870;
      v2 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000EB174(unsigned __int8 a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xE900000000000073;
      break;
    case 2u:
      v2 = 0xE800000000000000;
      break;
    case 3u:
      v2 = 0xE300000000000000;
      break;
    case 4u:
      v2 = 0xE600000000000000;
      break;
    case 5u:
      v2 = 0xE900000000000074;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      v5 = 0x6D61726150797562;
      v1 = 0xE900000000000073;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v5 = 0x656D614E6D657469;
      break;
    case 3:
      v1 = 0xE300000000000000;
      v5 = 7107189;
      break;
    case 4:
      v1 = 0xE600000000000000;
      v5 = 0x746567726174;
      break;
    case 5:
      v5 = 0x6567726174627573;
      v1 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000EB33C(uint64_t a1, uint64_t a2)
{
  sub_1000EC6DC();
  switch(v4)
  {
    case 1:
      v2 = 0xE500000000000000;
      break;
    case 2:
      v2 = 0xEA00000000006461;
      break;
    case 3:
      v2 = 0xE700000000000000;
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v8)
  {
    case 1:
      v3 = 0xE500000000000000;
      v7 = 0x77656E6552;
      break;
    case 2:
      v7 = 0x6F6C6E776F646552;
      v3 = 0xEA00000000006461;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v7 = 0x65646172677055;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_1000EB4CC(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 2036429415;
  }

  else
  {
    v3 = 0x6B63616C62;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 2036429415;
  }

  else
  {
    v5 = 0x6B63616C62;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000EB554(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1000EC46C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000EB5DC(uint64_t a1)
{
  v1 = 0xE90000000000006ELL;
  sub_1000EC570();
  v4 = v3 | 0x69614D6500000000;
  v6 = v5;
  v7 = v4;
  v8 = 0xE90000000000006ELL;
  switch(v6)
  {
    case 1:
      v7 = sub_1000EC638(20);
      break;
    case 2:
      v8 = 0xE800000000000000;
      v7 = sub_1000EC5F4() | 0x6275536500000000;
      break;
    case 3:
      v8 = 0xE700000000000000;
      v7 = 0x746C7561666564;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      sub_1000EC478();
      v1 = v9 | 0x8000000000000000;
      break;
    case 2:
      v1 = 0xE800000000000000;
      sub_1000EC570();
      v4 = v10 | 0x6275536500000000;
      break;
    case 3:
      v1 = 0xE700000000000000;
      v4 = 0x746C7561666564;
      break;
    default:
      break;
  }

  if (v7 == v4 && v8 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC450(v7, v2, v4);
  }

  return v12 & 1;
}

uint64_t sub_1000EB72C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726564616568;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x7475626972747461;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEE007473694C6465;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x726564616568;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65756C6176;
    }

    else
    {
      v2 = 0x7475626972747461;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE007473694C6465;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000EB840(char a1, uint64_t a2)
{
  v2 = 0xEF736E7265747461;
  v3 = 0x702D6C72752D3276;
  if (a1)
  {
    sub_1000EC484();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x702D6C72752D3276;
    v10 = 0xEF736E7265747461;
  }

  if (a2)
  {
    sub_1000EC484();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1000EC450(v9, a2, v3);
  }

  return v18 & 1;
}

uint64_t sub_1000EB920(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000EC410(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1000EB9A4(uint64_t a1)
{
  sub_1000EC570();
  v3 = v2 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  v4 = 0xE500000000000000;
  v6 = v5;
  v7 = v3;
  switch(v6)
  {
    case 1:
      v7 = sub_1000EC5A8();
      goto LABEL_5;
    case 2:
      v4 = 0xE400000000000000;
      v7 = 1702521203;
      break;
    case 3:
      v7 = 0x6C662D7465737361;
      v4 = 0x73726F7661;
LABEL_5:
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      sub_1000EC570();
      sub_1000EC658();
      goto LABEL_10;
    case 2:
      v8 = 0xE400000000000000;
      v3 = 1702521203;
      break;
    case 3:
      v3 = 0x6C662D7465737361;
      v8 = 0x73726F7661;
LABEL_10:
      v8 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410(v7, v1, v3);
  }

  return v10 & 1;
}

uint64_t sub_1000EBAE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HTTPMethod.rawValue.getter(a1, a2);
  v8 = v7;
  v9 = HTTPMethod.rawValue.getter(a3, a4);
  if (v6 == v9 && v8 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC410(v6, v10, v9);
  }

  return v12 & 1;
}

BOOL sub_1000EBB98(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_1000EBBC4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t NIOFileHandle.withUnsafeFileDescriptor<A>(_:)(uint64_t (*a1)(void))
{
  sub_100061FC4();
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    return a1(*(v1 + 20));
  }

  sub_1000C9874();
  v4 = sub_1000274C4();
  v5 = sub_1000276A0(&type metadata for IOError, v4);
  return sub_100077300(v5, v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NIOFileHandle.close()()
{
  sub_1000EC6E8(v0);
  if (*(v2 + 16) == 1)
  {
    sub_100027384(*(v2 + 20));
    if (!v1)
    {
      *(v2 + 16) = 0;
    }
  }

  else
  {
    sub_1000C9874();
    v3 = sub_1000274C4();
    v4 = sub_1000276A0(&type metadata for IOError, v3);
    sub_100077300(v4, v5);
  }
}

uint64_t NIOFileHandle.isOpen.getter()
{
  sub_100061FC4();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t NIOFileHandle.__allocating_init(descriptor:)(int a1)
{
  sub_1000856AC();
  result = swift_allocObject();
  *(result + 20) = a1;
  *(result + 16) = 1;
  return result;
}

uint64_t NIOFileHandle.init(descriptor:)(int a1)
{
  *(v1 + 20) = a1;
  *(v1 + 16) = 1;
  return v1;
}

uint64_t NIOFileHandle.duplicate()()
{
  sub_100061FC4();
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    result = sub_1000272D4(*(v0 + 20));
    if (!v1)
    {
      v3 = result;
      sub_1000856AC();
      result = swift_allocObject();
      *(result + 20) = v3;
      *(result + 16) = 1;
    }
  }

  else
  {
    sub_1000C9874();
    v4 = sub_1000274C4();
    v5 = sub_1000276A0(&type metadata for IOError, v4);
    return sub_100077300(v5, v6);
  }

  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NIOFileHandle.takeDescriptorOwnership()()
{
  sub_1000EC6E8(v0);
  if (*(v1 + 16))
  {
    *(v1 + 16) = 0;
    return *(v1 + 20);
  }

  else
  {
    sub_1000C9874();
    v3 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v3);
    *v4 = 0xD00000000000002CLL;
    *(v4 + 8) = v1;
    *(v4 + 16) = 9;
    return swift_willThrow();
  }
}

uint64_t sub_1000EBF2C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1000EBFA8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EBB90(*a1, *v2);
  *a2 = result;
  return result;
}

void NIOFileHandle.__allocating_init(path:mode:flags:)(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = (a3 - 1);
  if (v5 > 2)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 | HIDWORD(a4);
    v8 = sub_1001F6BD8();

    v9 = sub_10002740C(v8 + 32, v7 | 0x1000000u, a4);

    if (!v4)
    {
      sub_1000856AC();
      v10 = swift_allocObject();
      *(v10 + 20) = v9;
      *(v10 + 16) = 1;
    }
  }
}

unint64_t NIOFileHandle.description.getter()
{
  sub_1001F77B8(29);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  return 0xD000000000000019;
}

unint64_t sub_1000EC188()
{
  result = qword_1002B3BD0;
  if (!qword_1002B3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BD0);
  }

  return result;
}

unint64_t sub_1000EC1E0()
{
  result = qword_1002B3BD8;
  if (!qword_1002B3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BD8);
  }

  return result;
}

unint64_t sub_1000EC238()
{
  result = qword_1002B3BE0;
  if (!qword_1002B3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BE0);
  }

  return result;
}

unint64_t sub_1000EC290()
{
  result = qword_1002B3BE8;
  if (!qword_1002B3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NIOFileHandle.Flags(uint64_t a1, int a2)
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

uint64_t sub_1000EC410(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000EC450(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000EC6E8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1000EC770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F61C8();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100023510();
  v10 = v9 - v8;
  v11 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_1001F6288();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100023510();
  v20 = (v19 - v18);
  v29[0] = a1;
  v29[1] = a2;
  sub_10001C790();
  v21 = sub_1001F7608();
  if (v22)
  {
    v23 = v21;
    sub_100018460(v13, 1, 1, v14);
    (*(v6 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
    sub_1001F6268();
    v24 = v29[3];
    v25 = sub_1000ED418(v20);
    if (!v24)
    {
      v23 = v25;
    }

    (*(v16 + 8))(v20, v14);
  }

  else
  {
    v23 = type metadata accessor for OctaneError(0);
    sub_1000EF944();
    sub_1000EF638(v26, 255, v27, &unk_10020793C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v23;
}