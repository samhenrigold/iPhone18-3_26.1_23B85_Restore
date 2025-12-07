uint64_t sub_1002A941C(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 12)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 12)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xCuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = a1 >> 16;
    v18 = HIDWORD(a1);
    v21 = a1 >> 40;
    v22 = HIWORD(a1);
    v23 = HIBYTE(a1);
    return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = v13[1];
      LODWORD(v19) = *v13 >> 8;
      LODWORD(v20) = HIWORD(*v13);
      LODWORD(v21) = v18 >> 8;
      LODWORD(v22) = WORD1(v18);
      LODWORD(v23) = BYTE3(v18);
      return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002A9628(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v2)
  {
    return result;
  }

  if (v2 == 2)
  {
    v8 = *(result + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
      __DataStorage._length.getter();
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v11))
    {
      v12 = v8 - v11 + v10;
      __DataStorage._length.getter();
      if (!v12)
      {
        goto LABEL_29;
      }

      return *v12;
    }

    goto LABEL_26;
  }

  v13 = result;
  if (result > result >> 32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
LABEL_30:
    result = __DataStorage._length.getter();
    goto LABEL_31;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_27:
    __break(1u);
  }

  v12 = v13 - v16 + v15;
  result = __DataStorage._length.getter();
  if (!v12)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return *v12;
}

uint64_t sub_1002A97D0(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    v19 = a1 >> 16;
    v20 = a1 >> 24;
    v21 = HIDWORD(a1);
    v22 = a1 >> 40;
    v23 = HIWORD(a1);
    v24 = HIBYTE(a1);
    return a1 | (v18 << 8) | ((v19 | (v20 << 8)) << 16) | (((v23 << 16) | (v24 << 24) | (v22 << 8) | v21) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      a1 = *v13;
      v18 = a1 >> 8;
      v19 = v13[1];
      v20 = v19 >> 8;
      LODWORD(v21) = *(v13 + 1);
      LODWORD(v22) = v21 >> 8;
      LODWORD(v23) = WORD1(v21);
      LODWORD(v24) = BYTE3(v21);
      return a1 | (v18 << 8) | ((v19 | (v20 << 8)) << 16) | (((v23 << 16) | (v24 << 24) | (v22 << 8) | v21) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002A9A10@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v3)
  {
LABEL_22:
    *a3 = result;
    return result;
  }

  if (v3 == 2)
  {
    v9 = a3;
    v10 = *(result + 16);
    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
      __DataStorage._length.getter();
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (!__OFSUB__(v10, v13))
    {
      v14 = (v10 - v13 + v12);
      __DataStorage._length.getter();
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v15 = result;
  if (result > result >> 32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = a3;
  v16 = __DataStorage._bytes.getter();
  if (!v16)
  {
LABEL_30:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_27:
    __break(1u);
  }

  v14 = (v15 - v18 + v17);
  result = __DataStorage._length.getter();
  if (v14)
  {
LABEL_21:
    result = *v14;
    a3 = v9;
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1002A9BCC(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_14;
  }

  if (BYTE6(a2) < 8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_1002AB184(&v10, a1, a2, 8uLL);
  if (v2)
  {
    result = swift_willThrow();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A9CDC(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_14;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_1002AB360(&v10, a1, a2, 4uLL);
  if (v2)
  {
    result = swift_willThrow();
    __break(1u);
  }

  return result;
}

uint64_t WiFiAddress.customMirror.getter(uint64_t a1)
{
  v10 = a1;
  v11 = WORD2(a1);
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v9 = _swiftEmptyArrayStorage;
  v7 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v2 + 104))(v4, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002A9FE0(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v10 - v6;
  LOWORD(v6) = *(v1 + 2);
  v11 = *v1;
  v12 = v6;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL static WiFiAddress.!= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOBYTE(v5) = BYTE4(a1);
  HIBYTE(v5) = BYTE5(a1);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return a1 != a2 || v5 != v4;
}

BOOL static WiFiAddress.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v5) = a1;
  BYTE2(v5) = BYTE2(a1);
  HIBYTE(v5) = BYTE3(a1);
  LOBYTE(v6) = BYTE4(a1);
  HIBYTE(v6) = BYTE5(a1);
  LOWORD(v3) = a2;
  BYTE2(v3) = BYTE2(a2);
  HIBYTE(v3) = BYTE3(a2);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return bswap64(v5 | (v6 << 32)) < bswap64(v3 | (v4 << 32));
}

BOOL static WiFiAddress.> infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v5) = a1;
  BYTE2(v5) = BYTE2(a1);
  HIBYTE(v5) = BYTE3(a1);
  LOBYTE(v6) = BYTE4(a1);
  HIBYTE(v6) = BYTE5(a1);
  LOWORD(v3) = a2;
  BYTE2(v3) = BYTE2(a2);
  HIBYTE(v3) = BYTE3(a2);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return bswap64(v5 | (v6 << 32)) > bswap64(v3 | (v4 << 32));
}

BOOL static WiFiAddress.<= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v10) = a1;
  BYTE2(v10) = BYTE2(a1);
  HIBYTE(v10) = BYTE3(a1);
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOWORD(v8) = a2;
  BYTE2(v8) = BYTE2(a2);
  HIBYTE(v8) = BYTE3(a2);
  LOBYTE(v9) = BYTE4(a2);
  HIBYTE(v9) = BYTE5(a2);
  v2 = bswap64(v10 | (v11 << 32));
  v3 = bswap64(v8 | (v9 << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 < 1;
}

BOOL static WiFiAddress.>= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v10) = a1;
  BYTE2(v10) = BYTE2(a1);
  HIBYTE(v10) = BYTE3(a1);
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOWORD(v8) = a2;
  BYTE2(v8) = BYTE2(a2);
  HIBYTE(v8) = BYTE3(a2);
  LOBYTE(v9) = BYTE4(a2);
  HIBYTE(v9) = BYTE5(a2);
  v2 = bswap64(v10 | (v11 << 32));
  v3 = bswap64(v8 | (v9 << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 >= 0;
}

BOOL sub_1002AA5F8(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 < 1;
}

BOOL sub_1002AA68C(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 >= 0;
}

uint64_t WiFiAddress.encode(to:)(void *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 8;
  v4 = a2 >> 16;
  v5 = a2 >> 24;
  v6 = HIDWORD(a2);
  v7 = a2 >> 40;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004817D0;
  *(v8 + 32) = v2;
  *(v8 + 33) = v3;
  *(v8 + 34) = v4;
  *(v8 + 35) = v5;
  *(v8 + 36) = v6;
  *(v8 + 37) = v7;
  v9 = sub_10002D874(v8);
  v11 = v10;

  sub_100031694(v13, v13[3]);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v9, v11);
  return sub_100002A00(v13);
}

id WiFiAddress.apiAddress(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_allocWithZone(WiFiMACAddress);
  if (a4 == 1)
  {
    v8 = "initWithAddress:";
    v9 = a5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = "initWithAddress:ipv6Address:";
    v9 = a5 & 0xFFFFFFFFFFFFLL;
  }

  return [v7 v8];
}

id static WiFiMACAddress.randomLinkLocalAddress()(__n128 a1)
{
  v1 = sub_1002AB05C();
  v2 = objc_allocWithZone(WiFiMACAddress);

  return [v2 initWithAddress:v1 & 0xFFFFFFFFFFFCLL | 2];
}

uint64_t WiFiMACAddress.ipv6LinkLocalAddressString.getter()
{
  v1 = [v0 ipv6LinkLocalAddress];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_1002A58C4(v2, v4);
  v7 = v6;
  sub_1000124C8(v2, v4);
  v8 = swift_slowAlloc();
  v15 = v5;
  v16 = v7;
  inet_ntop(30, &v15, v8, 0x2Eu);
  v15 = String.init(cString:)();
  v16 = v9;

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  v11 = v15;
  v12 = v16;

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return 0;
}

uint64_t sub_1002AABA8()
{
  v0 = sub_10002D874(&off_100556FF0);
  v2 = v1;
  v3 = sub_10002D874(&off_100557018);
  v5 = v4;
  v11 = v0;
  v12 = v2;
  v10[3] = &type metadata for Data;
  v10[4] = &protocol witness table for Data;
  v10[0] = v3;
  v10[1] = v4;
  v6 = sub_100029B34(v10, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_10000AB0C(v0, v2);
  sub_10000AB0C(v3, v5);
  sub_100178A18(v7, v8, &v11);
  sub_1000124C8(v3, v5);
  sub_1000124C8(v0, v2);
  sub_100002A00(v10);
  result = sub_1000172CC(v11, v12);
  if ((result & 0x1000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    static WiFiAddress.defaultClusterID = result;
    byte_10059B80A = BYTE2(result);
    byte_10059B80B = BYTE3(result);
    byte_10059B80C = BYTE4(result);
    byte_10059B80D = BYTE5(result);
  }

  return result;
}

__int16 *WiFiAddress.defaultClusterID.unsafeMutableAddressor()
{
  if (qword_10058ABB8 != -1)
  {
    swift_once();
  }

  return &static WiFiAddress.defaultClusterID;
}

unint64_t static WiFiAddress.defaultClusterID.getter()
{
  if (qword_10058ABB8 != -1)
  {
    swift_once();
  }

  return static WiFiAddress.defaultClusterID | (*&byte_10059B80A << 16);
}

void *sub_1002AAD98(uint64_t a1, unint64_t a2, void *__dst, int a4, size_t __n)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v7)
    {
      v15 = a1;
      if (a1 <= a1 >> 32)
      {
        v16 = __DataStorage._bytes.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v16;
        v18 = __DataStorage._offset.getter();
        v12 = __OFSUB__(v15, v18);
        v19 = v15 - v18;
        if (!v12)
        {
          result = __DataStorage._length.getter();
          if (!__dst)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v14 = (v19 + v17);
          if (!(v19 + v17))
          {
LABEL_30:
            __break(1u);
            return result;
          }

          goto LABEL_16;
        }

LABEL_23:
        __break(1u);
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __src[0] = a1;
    LOWORD(__src[1]) = a2;
    BYTE2(__src[1]) = BYTE2(a2);
    BYTE3(__src[1]) = BYTE3(a2);
    v7 = a2 >> 40;
    BYTE4(__src[1]) = BYTE4(a2);
    BYTE5(__src[1]) = BYTE5(a2);
    if (__dst)
    {
      return memcpy(__dst, __src, __n);
    }

    __break(1u);
  }

  if (v7 != 2)
  {
    memset(__src, 0, 14);
    if (!__dst)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      result = __DataStorage._length.getter();
      if (!__dst)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    return memcpy(__dst, __src, __n);
  }

  v8 = *(a1 + 16);
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
    __DataStorage._length.getter();
    if (__dst)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  v12 = __OFSUB__(v8, v11);
  v13 = v8 - v11;
  if (v12)
  {
    goto LABEL_22;
  }

  __DataStorage._length.getter();
  if (!__dst)
  {
    goto LABEL_25;
  }

  v14 = (v13 + v10);
  if (!(v13 + v10))
  {
    goto LABEL_26;
  }

LABEL_16:

  return memcpy(__dst, v14, __n);
}

unint64_t sub_1002AAFAC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10000AD84(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1002AB05C()
{
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  return 0;
}

unint64_t sub_1002AB120()
{
  result = qword_10059A560;
  if (!qword_10059A560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiAddress, &type metadata for WiFiAddress, v0, v1);
    atomic_store(result, &qword_10059A560);
  }

  return result;
}

uint64_t sub_1002AB184(void *a1, uint64_t a2, unint64_t a3, size_t a4)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v6)
    {
      v14 = a2;
      if (a2 <= a2 >> 32)
      {
        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = v15;
        v17 = __DataStorage._offset.getter();
        v11 = __OFSUB__(v14, v17);
        v18 = v14 - v17;
        if (!v11)
        {
          result = __DataStorage._length.getter();
          if (!a1)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v13 = (v18 + v16);
          if (!(v18 + v16))
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

LABEL_22:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __src[0] = a2;
    LOWORD(__src[1]) = a3;
    BYTE2(__src[1]) = BYTE2(a3);
    BYTE3(__src[1]) = BYTE3(a3);
    v6 = a3 >> 40;
    BYTE4(__src[1]) = BYTE4(a3);
    BYTE5(__src[1]) = BYTE5(a3);
    if (a1)
    {
LABEL_18:
      v13 = __src;
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v6 == 2)
  {
    v7 = *(a2 + 16);
    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
      __DataStorage._length.getter();
      if (a1)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (!v11)
    {
      __DataStorage._length.getter();
      if (a1)
      {
        v13 = (v12 + v9);
        if (!(v12 + v9))
        {
          goto LABEL_25;
        }

LABEL_19:
        memcpy(a1, v13, a4);
        return *a1;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

  memset(__src, 0, 14);
  if (a1)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = __DataStorage._length.getter();
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1002AB360(unsigned int *a1, uint64_t a2, unint64_t a3, size_t a4)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v6)
    {
      v14 = a2;
      if (a2 <= a2 >> 32)
      {
        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = v15;
        v17 = __DataStorage._offset.getter();
        v11 = __OFSUB__(v14, v17);
        v18 = v14 - v17;
        if (!v11)
        {
          result = __DataStorage._length.getter();
          if (!a1)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v13 = (v18 + v16);
          if (!(v18 + v16))
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

LABEL_22:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __src[0] = a2;
    LOWORD(__src[1]) = a3;
    BYTE2(__src[1]) = BYTE2(a3);
    BYTE3(__src[1]) = BYTE3(a3);
    v6 = a3 >> 40;
    BYTE4(__src[1]) = BYTE4(a3);
    BYTE5(__src[1]) = BYTE5(a3);
    if (a1)
    {
LABEL_18:
      v13 = __src;
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v6 == 2)
  {
    v7 = *(a2 + 16);
    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
      __DataStorage._length.getter();
      if (a1)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (!v11)
    {
      __DataStorage._length.getter();
      if (a1)
      {
        v13 = (v12 + v9);
        if (!(v12 + v9))
        {
          goto LABEL_25;
        }

LABEL_19:
        memcpy(a1, v13, a4);
        return *a1;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

  memset(__src, 0, 14);
  if (a1)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = __DataStorage._length.getter();
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
  return result;
}

id WiFiInterfaceRole.queue.getter(unsigned __int8 a1)
{
  if (a1 - 2 >= 2)
  {
    if (a1 == 1)
    {
      if (qword_10058AA30 != -1)
      {
        swift_once();
      }

      v1 = &static OS_dispatch_queue.awdl;
    }

    else
    {
      if (qword_10058AA38 != -1)
      {
        swift_once();
      }

      v1 = &static OS_dispatch_queue.p2p;
    }
  }

  else
  {
    if (qword_10058AA28 != -1)
    {
      swift_once();
    }

    v1 = &static OS_dispatch_queue.nan;
  }

  v2 = *v1;

  return v2;
}

uint64_t WiFiInterfaceRole.bsdNamePrefix.getter(unsigned __int8 a1)
{
  v1 = 28261;
  v2 = 7233902;
  v3 = 29289;
  if (a1 != 3)
  {
    v3 = 7826540;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1818523489;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_1002AB798(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return if_nametoindex(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return if_nametoindex(v3);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t WiFiInterface.driver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t WiFiInterface.driver.setter(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v1 + v3, a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t WiFiInterface.interfaceName.getter()
{
  v1 = *(v0 + *(*v0 + 104));

  return v1;
}

uint64_t WiFiInterface.components.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t WiFiInterface.capabilities.getter()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(v1 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return v8;
}

uint64_t WiFiInterface.linkState.getter()
{
  v1 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460) - 8;
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = *(*v0 + 120);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &unk_10059B0C0, &unk_1004AD460);
  v5 = v3[*(v1 + 48)];
  sub_100016290(v3, &unk_10059B0C0, &unk_1004AD460);
  return v5;
}

void sub_1002ABE08(char a1)
{
  v2 = a1 & 1;
  v8 = a1 & 1;
  v3 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v4 = *(v3 + 40);
  if (*(v1 + v4) != v2)
  {
    v5 = v3;
    v6 = (v1 + *(v3 + 48));
    if (*v6)
    {
      (*v6)(&v8);
    }

    (*(v1 + *(v5 + 44)))(&v8);
    *(v1 + v4) = v2;
    v7 = *(v1 + *(v5 + 56));
    if (v7)
    {
      v7(&v8);
    }

    sub_1002B2490(0, v2);
  }
}

void sub_1002ABF74(unint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v17 = BYTE2(a1);
  v18 = BYTE3(a1);
  v8 = a1 >> 40;
  v19 = BYTE4(a1);
  v20 = BYTE5(a1);
  v9 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v10 = (v2 + *(v9 + 40));
  LOBYTE(v15) = v7;
  HIBYTE(v15) = v8;
  if (*v10 != a1 || *(v10 + 2) != v15)
  {
    v12 = v9;
    v13 = (v2 + *(v9 + 48));
    if (*v13)
    {
      (*v13)(&v16);
    }

    (*(v2 + *(v12 + 44)))(&v16);
    *v10 = a1;
    v10[1] = v4;
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v14 = (v2 + *(v12 + 56));
    if (*v14)
    {
      (*v14)(&v16);
    }

    sub_1002B2A54(0, a1 & 0xFFFFFFFFFFFFLL);
  }
}

void sub_1002AC1C8(unint64_t a1)
{
  v9 = a1;
  v3 = HIDWORD(a1) & 1;
  v10 = BYTE4(a1) & 1;
  v4 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  v5 = v4;
  v6 = v1 + *(v4 + 40);
  if (*(v6 + 4))
  {
    if ((a1 & 0x100000000) != 0)
    {
      return;
    }
  }

  else if ((a1 & 0x100000000) == 0 && *v6 == a1)
  {
    return;
  }

  v7 = (v1 + *(v4 + 48));
  if (*v7)
  {
    (*v7)(&v9);
  }

  (*(v1 + *(v5 + 44)))(&v9);
  *v6 = a1;
  *(v6 + 4) = v3;
  v8 = (v1 + *(v5 + 56));
  if (*v8)
  {
    (*v8)(&v9);
  }

  sub_1002B3094(0, a1 | (v3 << 32));
}

void (*WiFiInterface.linkState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 120);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  *(v4 + 40) = v7;
  v8 = *(v7 + 40);
  *(v4 + 48) = v8;
  LOBYTE(v8) = *(v6 + v8);
  *(v4 + 52) = v8;
  *(v4 + 53) = v8;
  return sub_1002AC43C;
}

void sub_1002AC43C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 52);
  if (a2)
  {
    sub_1002ABE08(*(*a1 + 52));
  }

  else
  {
    v4 = *(v2 + 53);
    v12[0] = *(*a1 + 52);
    if (v3 != v4)
    {
      v6 = *(v2 + 32);
      v5 = *(v2 + 40);
      v7 = *(v2 + 24);
      v8 = (v7 + v6 + *(v5 + 48));
      if (*v8)
      {
        (*v8)(v12);
        v6 = *(v2 + 32);
        v5 = *(v2 + 40);
        v7 = *(v2 + 24);
      }

      (*(v7 + v6 + *(v5 + 44)))(v12);
      v9 = *(v2 + 40);
      v10 = *(v2 + 24) + *(v2 + 32);
      *(v10 + *(v2 + 48)) = v3;
      v11 = (v10 + *(v9 + 56));
      if (*v11)
      {
        (*v11)(v12);
      }

      sub_1002B2490(0, v3);
    }
  }

  swift_endAccess();

  free(v2);
}

uint64_t WiFiInterface.$linkState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B0C0, &unk_1004AD460);
}

uint64_t WiFiInterface.$linkState.setter(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059B0C0, &unk_1004AD460);
  sub_10001CEA8(a1, v1 + v3, &unk_10059B0C0, &unk_1004AD460);
  return swift_endAccess();
}

void (*WiFiInterface.$linkState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&unk_10059B0C0, &unk_1004AD460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$linkState.getter(v4);
  return sub_1002AC790;
}

uint64_t WiFiInterface.macAddress.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1002ABF74(a1 & 0xFFFFFFFFFFFFLL);
  return swift_endAccess();
}

void (*WiFiInterface.macAddress.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = v6 + *(sub_10005DC58(&unk_10059B160, &qword_1004B3050) + 40);
  v8 = *(v7 + 4);
  *(v4 + 40) = *v7;
  *(v4 + 44) = v8;
  return sub_1002AC8F0;
}

void sub_1002AC8F0(uint64_t a1)
{
  v1 = *a1;
  sub_1002ABF74(*(*a1 + 40) | (*(*a1 + 42) << 16));
  swift_endAccess();

  free(v1);
}

uint64_t WiFiInterface.$macAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B160, &qword_1004B3050);
}

uint64_t WiFiInterface.$macAddress.setter(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059B160, &qword_1004B3050);
  sub_10001CEA8(a1, v1 + v3, &unk_10059B160, &qword_1004B3050);
  return swift_endAccess();
}

void (*WiFiInterface.$macAddress.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&unk_10059B160, &qword_1004B3050) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$macAddress.getter(v4);
  return sub_1002ACB1C;
}

void sub_1002ACB44(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_100012400(v7, v6, a4, a5);
    a3(v6);
    sub_100016290(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

unint64_t WiFiInterface.ipv4Address.getter()
{
  v1 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470) - 8;
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = *(*v0 + 136);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &qword_100593CC0, &qword_1004AD470);
  v5 = &v3[*(v1 + 48)];
  v6 = *v5;
  LOBYTE(v1) = v5[4];
  sub_100016290(v3, &qword_100593CC0, &qword_1004AD470);
  return v6 | (v1 << 32);
}

uint64_t WiFiInterface.ipv4Address.setter(unint64_t a1)
{
  v3 = v1 + *(*v1 + 136);
  swift_beginAccess();
  v9 = a1;
  v10 = BYTE4(a1) & 1;
  v4 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  v5 = v4;
  v6 = v3 + *(v4 + 40);
  if (*(v6 + 4))
  {
    if ((a1 & 0x100000000) != 0)
    {
      return swift_endAccess();
    }
  }

  else if ((a1 & 0x100000000) == 0 && *v6 == a1)
  {
    return swift_endAccess();
  }

  (*(v3 + *(v4 + 48)))(&v9);
  (*(v3 + *(v5 + 44)))(&v9);
  *v6 = a1;
  *(v6 + 4) = BYTE4(a1) & 1;
  v7 = (v3 + *(v5 + 56));
  if (*v7)
  {
    (*v7)(&v9);
  }

  sub_1002B3094(0, a1 | ((HIDWORD(a1) & 1) << 32));
  return swift_endAccess();
}

void (*WiFiInterface.ipv4Address.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 136);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  *(v4 + 40) = v7;
  v8 = *(v7 + 40);
  *(v4 + 56) = v8;
  v9 = (v6 + v8);
  v10 = *v9;
  *(v4 + 60) = *v9;
  LOBYTE(v9) = *(v9 + 4);
  *(v4 + 48) = v10;
  v4 += 48;
  *(v4 + 5) = v9;
  *(v4 + 4) = v9;
  return sub_1002ACF48;
}

void sub_1002ACF48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 52);
  if (a2)
  {
    LOBYTE(v15) = *(*a1 + 52);
    sub_1002AC1C8(v3 | (v4 << 32));
    goto LABEL_15;
  }

  v5 = *(v2 + 53);
  v15 = *(*a1 + 48);
  v16 = v4;
  if (v5)
  {
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(v2 + 60) == v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 24);
  v10 = (v9 + v8 + *(v7 + 48));
  if (*v10)
  {
    (*v10)(&v15);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    v9 = *(v2 + 24);
  }

  (*(v9 + v8 + *(v7 + 44)))(&v15);
  v11 = *(v2 + 40);
  v12 = *(v2 + 24) + *(v2 + 32);
  v13 = v12 + *(v2 + 56);
  *v13 = v3;
  *(v13 + 4) = v4;
  v14 = (v12 + *(v11 + 56));
  if (*v14)
  {
    (*v14)(&v15);
  }

  v17 = v4;
  sub_1002B3094(0, v3 | (v4 << 32));
LABEL_15:
  swift_endAccess();

  free(v2);
}

uint64_t WiFiInterface.$ipv4Address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_100593CC0, &qword_1004AD470);
}

uint64_t WiFiInterface.$ipv4Address.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  sub_100016290(v1 + v3, &qword_100593CC0, &qword_1004AD470);
  sub_10001CEA8(a1, v1 + v3, &qword_100593CC0, &qword_1004AD470);
  return swift_endAccess();
}

void (*WiFiInterface.$ipv4Address.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&qword_100593CC0, &qword_1004AD470) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$ipv4Address.getter(v4);
  return sub_1002AD2D8;
}

uint64_t WiFiInterface.ipv6Addresses.getter()
{
  v1 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478) - 8;
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = *(*v0 + 144);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &unk_10059A6C0, &qword_1004AD478);
  v5 = *&v3[*(v1 + 48)];

  sub_100016290(v3, &unk_10059A6C0, &qword_1004AD478);
  return v5;
}

uint64_t WiFiInterface.ipv6Addresses.setter(uint64_t a1)
{
  v3 = v1 + *(*v1 + 144);
  swift_beginAccess();
  v8 = a1;
  v4 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v5 = v4[10];
  if ((sub_1000C02D8(*(v3 + v5), a1) & 1) == 0)
  {
    (*(v3 + v4[12]))(&v8);
    (*(v3 + v4[11]))(&v8);

    *(v3 + v5) = a1;
    v6 = *(v3 + v4[14]);
    if (v6)
    {
      v6(&v8);
    }

    sub_1002B3660(0, a1);
  }

  return swift_endAccess();
}

void (*WiFiInterface.ipv6Addresses.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(*v1 + 144);
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 24) = *(v6 + *(sub_10005DC58(&unk_10059A6C0, &qword_1004AD478) + 40));

  return sub_1002AD640;
}

void sub_1002AD640(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_1002B7598(v3);

    swift_endAccess();
  }

  else
  {
    sub_1002B7598(*(*a1 + 24));
    swift_endAccess();
  }

  free(v2);
}

uint64_t WiFiInterface.$ipv6Addresses.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A6C0, &qword_1004AD478);
}

uint64_t WiFiInterface.$ipv6Addresses.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059A6C0, &qword_1004AD478);
  sub_10001CEA8(a1, v1 + v3, &unk_10059A6C0, &qword_1004AD478);
  return swift_endAccess();
}

void (*WiFiInterface.$ipv6Addresses.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&unk_10059A6C0, &qword_1004AD478) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$ipv6Addresses.getter(v4);
  return sub_1002AD8A0;
}

uint64_t WiFiInterface.neighborDiscoveryTable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v6 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, *(v3 + 80), *(v3 + 88), v5);
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t WiFiInterface.neighborDiscoveryTable.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v6 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t WiFiInterface.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WiFiInterface.init(driver:components:logger:)(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v219 = a3;
  v213 = a2;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 88);
  v196 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v7, v8, a4);
  v195 = *(v196 - 8);
  __chkstk_darwin();
  v194 = &v179 - v9;
  v191 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  __chkstk_darwin();
  v204 = (&v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v193 = &v179 - v11;
  v187 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  __chkstk_darwin();
  v199 = (&v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v190 = &v179 - v13;
  sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  __chkstk_darwin();
  v188 = &v179 - v14;
  sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  __chkstk_darwin();
  v185 = &v179 - v15;
  v16 = type metadata accessor for Logger();
  v216 = *(v16 - 8);
  v217 = v16;
  __chkstk_darwin();
  v192 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = &v179 - v18;
  __chkstk_darwin();
  v198 = &v179 - v19;
  __chkstk_darwin();
  v197 = &v179 - v20;
  __chkstk_darwin();
  v215 = &v179 - v21;
  __chkstk_darwin();
  v214 = &v179 - v22;
  v218 = v8;
  v220 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v179 - v26;
  v28 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v189 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = &v179 - v30;
  __chkstk_darwin();
  v32 = &v179 - v31;
  v33 = __chkstk_darwin();
  v35 = &v179 - v34;
  (*(v25 + 16))(v27, a1, v24, v33);
  v36 = (*(v28 + 48))(v27, 1, AssociatedTypeWitness);
  v206 = a1;
  v205 = v24;
  if (v36 == 1)
  {
    v37 = v219;
    v38 = v216;
    v39 = *(v25 + 8);
    v39(v27, v24);
    Logger.init(subsystem:category:)();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to create WiFiInterface because no Driver was provided", v42, 2u);
    }

    v43 = *(v38 + 8);
    v44 = v37;
    v45 = v217;
    v43(v44, v217);
    v46 = v218;
    v47 = v220;
    v48 = swift_getAssociatedTypeWitness();
    (*(*(v48 - 8) + 8))(v213, v48);
    v39(v206, v205);
    v43(v214, v45);
    type metadata accessor for WiFiInterface(0, v47, v46, v49);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v184 = v25;
    (*(v28 + 32))(v35, v27, AssociatedTypeWitness);
    v50 = *(*v5 + 96);
    v51 = v28;
    v52 = *(v28 + 16);
    v183 = v35;
    v214 = v52;
    (v52)(v5 + v50, v35, AssociatedTypeWitness);
    v210 = v28 + 16;
    swift_beginAccess();
    (v52)(v32, v5 + v50, AssociatedTypeWitness);
    v53 = v218;
    v54 = v219;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v55 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v57 = v56;
    v211 = *(v51 + 8);
    v212 = v51 + 8;
    v211(v32, AssociatedTypeWitness);
    v58 = (v5 + *(*v5 + 104));
    *v58 = v55;
    v58[1] = v57;
    v59 = *(*v5 + 160);
    v202 = AssociatedTypeWitness;
    v60 = v217;
    v62 = v216 + 16;
    v61 = *(v216 + 16);
    v61(v5 + v59, v54, v217);
    v208 = v61;
    v209 = v62;
    v63 = *(*v5 + 112);
    v64 = swift_getAssociatedTypeWitness();
    v181 = *(v64 - 8);
    v65 = *(v181 + 16);
    v182 = v64;
    v65(v5 + v63, v213);
    v200 = (v5 + *(*v5 + 104));
    v223 = v55;
    v224 = v57;

    v66._countAndFlagsBits = 0x7473206B6E696C20;
    v66._object = 0xEB00000000657461;
    String.append(_:)(v66);
    v180 = v223;
    v179 = v224;
    v61(v215, v54, v60);
    v67 = *(*v5 + 96);
    v68 = v202;
    (v214)(v32, v5 + v67, v202);
    LOBYTE(v57) = (*(AssociatedConformanceWitness + 48))(v68);
    v69 = v211;
    v211(v32, v68);
    v70 = sub_1002AF3BC(v5 + v67, v220, v53);
    v72 = v71;
    v73 = swift_allocObject();
    *(v73 + 16) = v70;
    *(v73 + 24) = v72;
    v74 = v185;
    v75 = v215;
    sub_1002AF50C(v180, v179, v215, v57, 0, sub_10001A9F8, v73, sub_1002B74F8, v185, 0);
    sub_10001CEA8(v74, v5 + *(*v5 + 120), &unk_10059B0C0, &unk_1004AD460);
    v76 = v200[1];
    v223 = *v200;
    v224 = v76;

    v77._countAndFlagsBits = 7234013692659060000;
    v77._object = 0xEC00000073736572;
    String.append(_:)(v77);
    v180 = v223;
    v179 = v224;
    v208(v75, v219, v217);
    v201 = v67;
    v78 = v68;
    (v214)(v32, v5 + v67, v68);
    v79 = (*(AssociatedConformanceWitness + 64))(v68);
    v185 = v32;
    v69(v32, v68);
    v80 = sub_1002AB05C();
    v81 = sub_1002B0D00(v5 + v67, v220, v218);
    v83 = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = v81;
    *(v84 + 24) = v83;
    v85 = v79 & 0xFFFFFFFFFFFFLL | ((HIWORD(v79) & 1) << 48);
    v86 = v188;
    sub_1002AFB24(v180, v179, v215, v85, v80 & 0xFFFFFFFFFFFCLL | 2, sub_1002B7744, v84, sub_1002B749C, v188, 0);
    sub_10001CEA8(v86, v5 + *(*v5 + 128), &unk_10059B160, &qword_1004B3050);
    v87 = v200[1];
    v223 = *v200;
    v224 = v87;

    v88._countAndFlagsBits = 0x6461203476504920;
    v88._object = 0xED00007373657264;
    String.append(_:)(v88);
    v90 = v223;
    v89 = v224;
    v91 = v197;
    v92 = v217;
    v93 = v208;
    v208(v197, v219, v217);
    v94 = v201;
    v95 = v186;
    (v214)(v186, v5 + v201, v78);
    v188 = (*(AssociatedConformanceWitness + 80))(v78);
    v211(v95, v78);
    v96 = sub_1002B0F10(v5 + v94, v220, v218);
    v98 = v97;
    v99 = swift_allocObject();
    *(v99 + 16) = v96;
    *(v99 + 24) = v98;
    v100 = v198;
    v93(v198, v91, v92);
    v101 = v187;
    v102 = v199;
    v103 = v199 + *(v187 + 48);
    *v103 = 0;
    *(v103 + 1) = 0;
    v104 = (v102 + v101[13]);
    *v104 = 0;
    v104[1] = 0;
    v105 = (v102 + v101[14]);
    *v105 = 0;
    v105[1] = 0;
    v186 = v90;
    *v102 = v90;
    v102[1] = v89;
    v106 = v101;
    v107 = v92;
    v108 = v89;
    v109 = v188;
    v93(v102 + v101[9], v100, v107);
    v110 = (v102 + v106[15]);
    *v110 = sub_1002B1130;
    v110[1] = 0;
    v111 = (v102 + v106[11]);
    *v111 = sub_1002B7778;
    v111[1] = v99;
    v112 = v102 + v106[10];
    *v112 = v109;
    v112[4] = BYTE4(v109) & 1;

    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v222 = v187;
      *v115 = 136315394;
      v116 = sub_100002320(v186, v108, &v222);

      *(v115 + 4) = v116;
      *(v115 + 12) = 2080;
      if ((v109 & 0x100000000) != 0)
      {
        v117 = 0xE400000000000000;
        v118 = 1701736302;
        v119 = v217;
        v120 = v197;
        v121 = v198;
      }

      else
      {
        v223 = 0;
        v224 = 0xE000000000000000;
        v124 = swift_slowAlloc();
        LODWORD(v221) = v109;
        inet_ntop(2, &v221, v124, 0x10u);
        v125 = String.init(cString:)();
        v127 = v126;

        v128._countAndFlagsBits = v125;
        v128._object = v127;
        String.append(_:)(v128);
        v121 = v198;

        v118 = v223;
        v117 = v224;
        v119 = v217;
        v120 = v197;
      }

      v129 = sub_100002320(v118, v117, &v222);

      *(v115 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v113, v114, "Initialized value for %s to %s", v115, 0x16u);
      swift_arrayDestroy();

      v130 = *(v216 + 8);
      v130(v121, v119);
      v122 = v119;
      v198 = v130;
      v130(v120, v119);
      v102 = v199;
    }

    else
    {

      v122 = v217;
      v123 = *(v216 + 8);
      v123(v100, v217);
      v198 = v123;
      v123(v91, v122);
    }

    v131 = v190;
    sub_10001CEA8(v102, v190, &qword_100593CC0, &qword_1004AD470);
    sub_10001CEA8(v131, v5 + *(*v5 + 136), &qword_100593CC0, &qword_1004AD470);
    v132 = v200[1];
    v223 = *v200;
    v224 = v132;

    v133._countAndFlagsBits = 0x6461203676504920;
    v133._object = 0xED00007373657264;
    String.append(_:)(v133);
    v134 = v223;
    v200 = v224;
    v135 = v203;
    v136 = v208;
    v208(v203, v219, v122);
    v137 = v201;
    v138 = v189;
    v139 = v202;
    (v214)(v189, v5 + v201, v202);
    v140 = (*(AssociatedConformanceWitness + 96))(v139);
    v211(v138, v139);
    v141 = sub_1002B1488(v5 + v137, v220, v218);
    v143 = v142;
    v144 = swift_allocObject();
    *(v144 + 16) = v141;
    *(v144 + 24) = v143;
    v145 = v192;
    v136(v192, v135, v122);
    v146 = v191;
    v147 = v204;
    v148 = (v204 + *(v191 + 48));
    *v148 = 0;
    v148[1] = 0;
    v149 = (v147 + v146[13]);
    *v149 = 0;
    v149[1] = 0;
    v150 = (v147 + v146[14]);
    *v150 = 0;
    v150[1] = 0;
    AssociatedConformanceWitness = v134;
    *v147 = v134;
    v151 = v140;
    v152 = v200;
    v147[1] = v200;
    v136(v147 + v146[9], v145, v122);
    v153 = (v147 + v146[15]);
    *v153 = sub_1002B7438;
    v153[1] = 0;
    v154 = (v147 + v146[11]);
    *v154 = sub_1002B77B4;
    v154[1] = v144;
    *(v147 + v146[10]) = v151;

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = v145;
      v158 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v158 = 136315394;
      v159 = sub_100002320(AssociatedConformanceWitness, v152, &v222);

      *(v158 + 4) = v159;
      *(v158 + 12) = 2080;
      v223 = 0;
      v224 = 0xE000000000000000;
      v221 = v151;
      sub_10005DC58(&qword_100593CC8, &unk_1004AD480);
      _print_unlocked<A, B>(_:_:)();

      v160 = sub_100002320(v223, v224, &v222);

      *(v158 + 14) = v160;
      _os_log_impl(&_mh_execute_header, v155, v156, "Initialized value for %s to %s", v158, 0x16u);
      swift_arrayDestroy();

      v161 = v198;
      (v198)(v157, v122);
    }

    else
    {

      v161 = v198;
      (v198)(v145, v122);
    }

    v162 = v215;
    v163 = v193;
    sub_10001CEA8(v204, v193, &unk_10059A6C0, &qword_1004AD478);
    v161(v203, v122);
    sub_10001CEA8(v163, v5 + *(*v5 + 144), &unk_10059A6C0, &qword_1004AD478);
    v164 = v185;
    v165 = v202;
    (v214)(v185, v5 + v201, v202);
    v166 = v122;
    v167 = v219;
    v208(v162, v219, v166);
    v168 = v194;
    sub_1002B1698(v164, v162, v220, v218, v194);
    (*(v195 + 32))(v5 + *(*v5 + 152), v168, v196);

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v198 = v161;
      v173 = v172;
      v223 = v172;
      *v171 = 136315138;
      v174 = WiFiInterface.description.getter();
      v176 = v175;

      v177 = sub_100002320(v174, v176, &v223);

      *(v171 + 4) = v177;
      _os_log_impl(&_mh_execute_header, v169, v170, "Created %s", v171, 0xCu);
      sub_100002A00(v173);

      (v198)(v167, v217);
    }

    else
    {

      v161(v167, v166);
    }

    (*(v181 + 8))(v213, v182);
    (*(v184 + 8))(v206, v205);
    v211(v183, v165);
  }

  return v5;
}

uint64_t (*sub_1002AF3BC(uint64_t a1, uint64_t a2, uint64_t a3))(char a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_10001A960;
}

uint64_t sub_1002AF50C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, void (*a6)(char *)@<X5>, void (*a7)(char *)@<X6>, uint64_t (*a8)(_BYTE *)@<X7>, char *a9@<X8>, uint64_t a10)
{
  v44 = a4;
  v16 = a5 & 1;
  v50 = a5 & 1;
  v17 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v18 = &a9[v17[12]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &a9[v17[13]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &a9[v17[14]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = a2;
  v22 = v17[9];
  v46 = type metadata accessor for Logger();
  v47 = *(v46 - 8);
  (*(v47 + 16))(&a9[v22], a3, v46);
  v23 = &a9[v17[15]];
  v43 = a8;
  *v23 = a8;
  *(v23 + 1) = a10;
  v24 = &a9[v17[11]];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = v17[10];
  if (v44 == 2)
  {
    a9[v25] = v16;

    a6(&v50);
    v49[0] = v16;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100002320(a1, v21, &v48);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = v43(v49);
      v39 = v38;

      v40 = sub_100002320(v37, v39, &v48);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "No initial value for %s set default to %s", v35, 0x16u);
      swift_arrayDestroy();

      goto LABEL_8;
    }

LABEL_10:

    return (*(v47 + 8))(a3, v46);
  }

  a9[v25] = a4 & 1;
  v49[0] = a4 & 1;

  v33 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v33, v26))
  {

    goto LABEL_10;
  }

  v27 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  *v27 = 136315394;
  v28 = sub_100002320(a1, v21, &v48);

  *(v27 + 4) = v28;
  *(v27 + 12) = 2080;
  v29 = v43(v49);
  v31 = v30;

  v32 = sub_100002320(v29, v31, &v48);

  *(v27 + 14) = v32;
  _os_log_impl(&_mh_execute_header, v33, v26, "Initialized value for %s to %s", v27, 0x16u);
  swift_arrayDestroy();

LABEL_8:

  return (*(v47 + 8))(a3, v46);
}

uint64_t sub_1002AFB24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(__int16 *)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(__int16 *)@<X7>, char *a9@<X8>, uint64_t a10)
{
  v12 = a5;
  v60 = a5;
  v48 = a5 >> 8;
  v61 = BYTE2(a5);
  v46 = a5 >> 24;
  v62 = BYTE3(a5);
  v49 = a5 >> 16;
  v50 = HIDWORD(a5);
  v63 = BYTE4(a5);
  v45 = a5 >> 40;
  v64 = BYTE5(a5);
  v18 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v19 = &a9[v18[12]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &a9[v18[13]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &a9[v18[14]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  v51 = a2;
  v22 = v18[9];
  v23 = type metadata accessor for Logger();
  v52 = *(v23 - 8);
  v53 = v23;
  (*(v52 + 16))(&a9[v22], a3);
  v24 = &a9[v18[15]];
  *v24 = a8;
  *(v24 + 1) = a10;
  v25 = &a9[v18[11]];
  *v25 = a6;
  *(v25 + 1) = a7;
  if ((a4 & 0x1000000000000) != 0)
  {
    v35 = &a9[v18[10]];
    *v35 = v12;
    v35[1] = v48;
    v35[2] = v49;
    v35[3] = v46;
    v35[4] = v50;
    v35[5] = v45;

    a6(&v60);
    LOBYTE(v55) = v12;
    HIBYTE(v55) = v48;
    v56 = v49;
    v57 = v46;
    v58 = v50;
    v59 = v45;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = sub_100002320(a1, v51, &v54);

      *(v38 + 4) = v39;
      *(v38 + 12) = 2080;
      v40 = a8(&v55);
      v42 = v41;

      v43 = sub_100002320(v40, v42, &v54);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "No initial value for %s set default to %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v26 = &a9[v18[10]];
    *v26 = a4;
    v26[2] = BYTE2(a4);
    v26[3] = BYTE3(a4);
    v26[4] = BYTE4(a4);
    v26[5] = BYTE5(a4);
    v55 = a4;
    v56 = BYTE2(a4);
    v57 = BYTE3(a4);
    v58 = BYTE4(a4);
    v59 = BYTE5(a4);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100002320(a1, v51, &v54);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = a8(&v55);
      v33 = v32;

      v34 = sub_100002320(v31, v33, &v54);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Initialized value for %s to %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return (*(v52 + 8))(a3, v53);
}

uint64_t MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t)@<X7>, char *a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v83 = a6;
  v84 = a8;
  v77 = a7;
  v82 = a5;
  v86 = a4;
  v90 = a3;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = v75 - v17;
  v19 = *(a11 - 8);
  __chkstk_darwin();
  v75[1] = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75[0] = v75 - v21;
  __chkstk_darwin();
  v78 = v75 - v22;
  __chkstk_darwin();
  v79 = v75 - v23;
  v25 = type metadata accessor for MutableDriverProperty(0, a11, a12, v24);
  v26 = &a9[v25[12]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &a9[v25[13]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &a9[v25[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v76 = a1;
  *a9 = a1;
  *(a9 + 1) = a2;
  v89 = a2;
  v29 = v25[9];
  v30 = type metadata accessor for Logger();
  v80 = *(v30 - 8);
  v81 = v30;
  (*(v80 + 16))(&a9[v29], v90);
  v31 = &a9[v25[15]];
  v32 = v83;
  *v31 = v84;
  v31[1] = a10;
  v88 = a10;
  v33 = &a9[v25[11]];
  v34 = v77;
  *v33 = v32;
  *(v33 + 1) = v34;
  (*(v16 + 16))(v18, v86, v15);
  v85 = v19;
  v35 = *(v19 + 48);
  v87 = a11;
  if (v35(v18, 1, a11) == 1)
  {
    v36 = *(v16 + 8);

    v78 = v36;
    v79 = (v16 + 8);
    (v36)(v18, v15);
    v37 = *(v85 + 16);
    v38 = v82;
    v37(&a9[v25[10]], v82, v87);
    v83(v38);
    v58 = v75[0];
    v37(v75[0], v38, v87);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v83 = v15;
      v91[0] = v63;
      *v62 = 136315394;
      v64 = sub_100002320(v76, v89, v91);

      *(v62 + 4) = v64;
      *(v62 + 12) = 2080;
      v65 = v84(v58);
      v66 = v87;
      v67 = v60;
      v68 = v85;
      v70 = v69;

      v71 = *(v68 + 8);
      v71(v58, v66);
      v72 = sub_100002320(v65, v70, v91);

      *(v62 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v59, v67, "No initial value for %s set default to %s", v62, 0x16u);
      swift_arrayDestroy();

      v71(v82, v66);
      (v78)(v86, v83);
      return (*(v80 + 8))(v90, v81);
    }

    else
    {

      v73 = *(v85 + 8);
      v74 = v87;
      v73(v38, v87);
      (v78)(v86, v15);
      (*(v80 + 8))(v90, v81);
      return (v73)(v58, v74);
    }
  }

  else
  {
    v83 = v15;
    v39 = v85;
    v40 = v79;
    v41 = v87;
    (*(v85 + 32))(v79, v18, v87);
    v42 = *(v39 + 16);
    v42(&a9[v25[10]], v40, v41);
    v42(v78, v40, v41);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v91[0] = v77;
      *v45 = 136315394;
      v46 = sub_100002320(v76, v89, v91);

      *(v45 + 4) = v46;
      *(v45 + 12) = 2080;
      v47 = v78;
      v48 = v84(v78);
      v49 = v85;
      v51 = v50;

      v52 = *(v49 + 8);
      v53 = v87;
      v52(v47, v87);
      v54 = sub_100002320(v48, v51, v91);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Initialized value for %s to %s", v45, 0x16u);
      swift_arrayDestroy();

      v52(v82, v53);
      (*(v16 + 8))(v86, v83);
      (*(v80 + 8))(v90, v81);
      return (v52)(v79, v53);
    }

    else
    {

      v56 = *(v85 + 8);
      v57 = v87;
      v56(v82, v87);
      (*(v16 + 8))(v86, v83);
      (*(v80 + 8))(v90, v81);
      v56(v78, v57);
      return (v56)(v79, v57);
    }
  }
}

uint64_t (*sub_1002B0D00(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1002B994C;
}

uint64_t sub_1002B0E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 72);
  v7 = swift_checkMetadataState();
  return v6(a1 & 0xFFFFFFFFFFFFLL, v7, AssociatedConformanceWitness);
}

uint64_t (*sub_1002B0F10(uint64_t a1, uint64_t a2, uint64_t a3))(unint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1002B98A4;
}

uint64_t sub_1002B1060(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 88);
  v7 = swift_checkMetadataState();
  return v6(a1 | ((HIDWORD(a1) & 1) << 32), v7, AssociatedConformanceWitness);
}

uint64_t sub_1002B1130(int *a1)
{
  if (a1[1])
  {
    return 1701736302;
  }

  v2 = *a1;
  v9 = 0;
  v10 = 0xE000000000000000;
  v3 = swift_slowAlloc();
  v8 = v2;
  inet_ntop(2, &v8, v3, 0x10u);
  v4 = String.init(cString:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return v9;
}

uint64_t MutableDriverProperty.init(name:logger:initialValue:updater:valueDescriber:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t (*a8)(uint64_t)@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v26 = a3;
  v29 = a1;
  v30 = a2;
  v28 = a9;
  v13 = *(a10 - 8);
  v27 = a11;
  __chkstk_darwin();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  __chkstk_darwin();
  v17 = &v25 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a3, v18, v20);
  v23 = *(v13 + 16);
  v23(v17, a4, a10);
  (*(v13 + 56))(v17, 0, 1, a10);
  v23(v15, a4, a10);
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v29, v30, v22, v17, v15, v32, v33, v34, v28, v31, a10, v27);
  (*(v13 + 8))(a4, a10);
  return (*(v19 + 8))(v26, v18);
}

uint64_t (*sub_1002B1488(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1002B980C;
}

uint64_t sub_1002B15D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 104);
  v7 = swift_checkMetadataState();
  return v6(a1, v7, AssociatedConformanceWitness);
}

uint64_t sub_1002B1698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, a3, a4, a4);
  v11 = *(v10 + 36);
  v13 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry(0, a3, a4, v12);
  swift_getWitnessTable(byte_1004ADB38, v13);
  *(a5 + v11) = Dictionary.init()();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v15 = *(v10 + 40);
  v16 = type metadata accessor for Logger();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a2, v16);
}

uint64_t WiFiInterface.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  v5 = *(*v0 + 112);
  v6 = swift_getAssociatedTypeWitness();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_100016290(v0 + *(*v0 + 120), &unk_10059B0C0, &unk_1004AD460);
  sub_100016290(v0 + *(*v0 + 128), &unk_10059B160, &qword_1004B3050);
  sub_100016290(v0 + *(*v0 + 136), &qword_100593CC0, &qword_1004AD470);
  sub_100016290(v0 + *(*v0 + 144), &unk_10059A6C0, &qword_1004AD478);
  v7 = *(*v0 + 152);
  v9 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v3, v2, v8);
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  v10 = *(*v0 + 160);
  v11 = type metadata accessor for Logger();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t WiFiInterface.__deallocating_deinit()
{
  WiFiInterface.deinit();

  return swift_deallocClassInstance();
}

Swift::Int sub_1002B1ACC()
{
  Hasher.init(_seed:)();
  sub_10004F294(v1);
  return Hasher._finalize()();
}

uint64_t WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for Logger();
  v72 = *(v14 - 8);
  v73 = v14;
  __chkstk_darwin();
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 + 16);
  v17 = *(a6 + 24);
  LOWORD(v96) = a1;
  BYTE2(v96) = BYTE2(a1);
  BYTE3(v96) = BYTE3(a1);
  BYTE4(v96) = BYTE4(a1);
  BYTE5(v96) = BYTE5(a1);
  v78 = a2;
  v79 = a3;
  *(&v96 + 1) = a2;
  *&v97 = a3;
  v18 = v16;
  v71 = a6;
  v85 = *(a6 + 36);
  v80 = a4;
  *(&v97 + 1) = a4;
  v98 = a5;
  v93 = v96;
  v94 = v97;
  v95 = a5;

  v77 = v17;
  v20 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry(0, v18, v17, v19);
  v21 = *(v20 - 8);
  v75 = *(v21 + 16);
  v76 = v21 + 16;
  v75(&v90, &v96, v20);
  WitnessTable = swift_getWitnessTable(byte_1004ADB38, v20);
  Dictionary.subscript.getter();
  v99[0] = v93;
  v99[1] = v94;
  v100 = v95;
  v22 = *(v21 + 8);
  v83 = v21 + 8;
  v84 = v20;
  v82 = v22;
  v22(v99, v20);
  if (BYTE8(v90) == 1)
  {
    swift_getAssociatedTypeWitness();
    v70 = v7;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = *(AssociatedConformanceWitness + 136);
    v25 = v70;
    v26 = swift_checkMetadataState();
    v27 = v101;
    v24(a1 & 0xFFFFFFFFFFFFLL, v78, v79, v80, a5, v26, AssociatedConformanceWitness);
    if (v27)
    {
      v28 = &v96;
      v29 = v84;
      return v82(v28, v29);
    }

    v79 = (*(AssociatedConformanceWitness + 40))(v26, AssociatedConformanceWitness);
    v80 = v54;
    v55 = v72;
    v56 = v25;
    v57 = v73;
    v58 = v74;
    (*(v72 + 16))(v74, v25 + *(v71 + 40), v73);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v59, v60);
    v101 = 0;
    if (v61)
    {
      v62 = v57;
      v63 = swift_slowAlloc();
      *&v93 = swift_slowAlloc();
      *v63 = 136315394;
      v64 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v66 = v55;
      v67 = sub_100002320(v64, v65, &v93);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v68 = sub_100002320(v79, v80, &v93);

      *(v63 + 14) = v68;
      v30 = v70;
      _os_log_impl(&_mh_execute_header, v59, v60, "Posted peer presence for %s on %s", v63, 0x16u);
      swift_arrayDestroy();

      (*(v66 + 8))(v74, v62);
    }

    else
    {

      (*(v55 + 8))(v58, v57);
      v30 = v56;
    }
  }

  else
  {
    v30 = v7;
  }

  v93 = v96;
  v94 = v97;
  v95 = v98;
  v31 = v85;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v30;
  v34 = isUniquelyReferenced_nonNull_native;
  v35 = v33;
  v36 = *(v33 + v31);
  *&v90 = v36;
  v37 = v84;
  v38 = WitnessTable;
  v39 = sub_1002B7254(&v93, v84, WitnessTable);
  v41 = *(v36 + 16);
  v42 = (v40 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v39;
  v45 = v40;
  type metadata accessor for _NativeDictionary();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v34, v43))
  {
LABEL_9:
    v48 = v90;
    *(v35 + v85) = v90;
    if ((v45 & 1) == 0)
    {
      v90 = v93;
      v91 = v94;
      v92 = v95;
      *&v86[40] = v93;
      v87 = v94;
      v88 = v95;
      v89 = 0;
      v75(v86, &v90, v37);
      _NativeDictionary._insert(at:key:value:)();
    }

    v49 = *(v48 + 56);
    v50 = *(v49 + 8 * v44);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (!v51)
    {
      *(v49 + 8 * v44) = v52;
      v90 = v93;
      v91 = v94;
      v92 = v95;
      v28 = &v90;
      v29 = v37;
      return v82(v28, v29);
    }

    goto LABEL_18;
  }

  v46 = sub_1002B7254(&v93, v37, v38);
  if ((v45 & 1) == (v47 & 1))
  {
    v44 = v46;
    goto LABEL_9;
  }

LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()()
{
  v2 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry(255, *(v0 + 16), *(v0 + 24), v1);
  swift_getWitnessTable(byte_1004ADB38, v2);
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 152);
  v5 = swift_checkMetadataState();
  v4(v5, AssociatedConformanceWitness);
}

uint64_t MutableDriverProperty.willTryUpdatingProperty.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  sub_10001F89C(*v2, v2[1]);
  return v3;
}

uint64_t MutableDriverProperty.willTryUpdatingProperty.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));
  result = sub_100010520(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MutableDriverProperty.failedToUpdateProperty.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  sub_10001F89C(*v2, v2[1]);
  return v3;
}

uint64_t MutableDriverProperty.failedToUpdateProperty.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = sub_100010520(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MutableDriverProperty.didUpdateProperty.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  sub_10001F89C(*v2, v2[1]);
  return v3;
}

uint64_t MutableDriverProperty.didUpdateProperty.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  result = sub_100010520(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

void sub_1002B2490(uint64_t a1, char a2)
{
  v5 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v43 - v8);
  __chkstk_darwin();
  v11 = &v43 - v10;
  __chkstk_darwin();
  v13 = &v43 - v12;
  __chkstk_darwin();
  v15 = (&v43 - v14);
  if (a1)
  {
    sub_100012400(v2, &v43 - v14, &unk_10059B0C0, &unk_1004AD460);
    sub_100012400(v2, v13, &unk_10059B0C0, &unk_1004AD460);
    v46 = a2 & 1;
    sub_100012400(v2, v11, &unk_10059B0C0, &unk_1004AD460);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v18 = 136315906;
      v19 = *v15;
      v20 = v15[1];

      sub_100016290(v15, &unk_10059B0C0, &unk_1004AD460);
      v21 = sub_100002320(v19, v20, &v45);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = (*&v13[*(v5 + 60)])(&v46);
      v24 = v23;
      sub_100016290(v13, &unk_10059B0C0, &unk_1004AD460);
      v25 = sub_100002320(v22, v24, &v45);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = (*&v11[*(v5 + 60)])(&v11[*(v5 + 40)]);
      v28 = v27;
      sub_100016290(v11, &unk_10059B0C0, &unk_1004AD460);
      v29 = sub_100002320(v26, v28, &v45);

      *(v18 + 24) = v29;
      *(v18 + 32) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v30;
      v31 = v43;
      *v43 = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to update %s to %s (from %s) because %@", v18, 0x2Au);
      sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v15, &unk_10059B0C0, &unk_1004AD460);
    sub_100016290(v13, &unk_10059B0C0, &unk_1004AD460);
    v42 = v11;
  }

  else
  {
    sub_100012400(v2, v9, &unk_10059B0C0, &unk_1004AD460);
    sub_100012400(v2, v7, &unk_10059B0C0, &unk_1004AD460);
    v46 = a2 & 1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = *v9;
      v36 = v9[1];

      sub_100016290(v9, &unk_10059B0C0, &unk_1004AD460);
      v37 = sub_100002320(v35, v36, &v45);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = (*&v7[*(v5 + 60)])(&v46);
      v40 = v39;
      sub_100016290(v7, &unk_10059B0C0, &unk_1004AD460);
      v41 = sub_100002320(v38, v40, &v45);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully updated %s to %s", v34, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v9, &unk_10059B0C0, &unk_1004AD460);
    v42 = v7;
  }

  sub_100016290(v42, &unk_10059B0C0, &unk_1004AD460);
}

void sub_1002B2A54(uint64_t a1, unint64_t a2)
{
  sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v45 - v7);
  __chkstk_darwin();
  v10 = &v45 - v9;
  __chkstk_darwin();
  v50 = &v45 - v11;
  __chkstk_darwin();
  v14 = (&v45 - v13);
  v49 = v12;
  if (a1)
  {
    v47 = (a2 >> 40);
    v46 = HIDWORD(a2);
    v48 = *(v12 + 36);
    sub_100012400(v2, &v45 - v13, &unk_10059B160, &qword_1004B3050);
    sub_100012400(v2, v50, &unk_10059B160, &qword_1004B3050);
    v52 = a2;
    v15 = v10;
    v53 = BYTE2(a2);
    v54 = BYTE3(a2);
    v55 = v46;
    v56 = v47;
    sub_100012400(v2, v10, &unk_10059B160, &qword_1004B3050);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v18 = 136315906;
      v19 = *v14;
      v20 = v14[1];

      sub_100016290(v14, &unk_10059B160, &qword_1004B3050);
      v21 = sub_100002320(v19, v20, &v51);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = v49;
      v23 = v50;
      v24 = (*(v50 + *(v49 + 60)))(&v52);
      v26 = v25;
      sub_100016290(v23, &unk_10059B160, &qword_1004B3050);
      v27 = sub_100002320(v24, v26, &v51);

      *(v18 + 14) = v27;
      *(v18 + 22) = 2080;
      v28 = (*(v15 + *(v22 + 60)))(v15 + *(v22 + 40));
      v30 = v29;
      sub_100016290(v15, &unk_10059B160, &qword_1004B3050);
      v31 = sub_100002320(v28, v30, &v51);

      *(v18 + 24) = v31;
      *(v18 + 32) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v32;
      v33 = v47;
      *v47 = v32;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to update %s to %s (from %s) because %@", v18, 0x2Au);
      sub_100016290(v33, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v14, &unk_10059B160, &qword_1004B3050);
    sub_100016290(v50, &unk_10059B160, &qword_1004B3050);
    v44 = v10;
  }

  else
  {
    v50 = a2 >> 40;
    v48 = *(v12 + 36);
    sub_100012400(v2, v8, &unk_10059B160, &qword_1004B3050);
    sub_100012400(v2, v6, &unk_10059B160, &qword_1004B3050);
    v52 = a2;
    v53 = BYTE2(a2);
    v54 = BYTE3(a2);
    v55 = BYTE4(a2);
    v56 = v50;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v36 = 136315394;
      v37 = *v8;
      v38 = v8[1];

      sub_100016290(v8, &unk_10059B160, &qword_1004B3050);
      v39 = sub_100002320(v37, v38, &v51);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = (*&v6[*(v49 + 60)])(&v52);
      v42 = v41;
      sub_100016290(v6, &unk_10059B160, &qword_1004B3050);
      v43 = sub_100002320(v40, v42, &v51);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Successfully updated %s to %s", v36, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v8, &unk_10059B160, &qword_1004B3050);
    v44 = v6;
  }

  sub_100016290(v44, &unk_10059B160, &qword_1004B3050);
}

void sub_1002B3094(uint64_t a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v43 - v8);
  __chkstk_darwin();
  v11 = &v43 - v10;
  __chkstk_darwin();
  v13 = &v43 - v12;
  __chkstk_darwin();
  v15 = (&v43 - v14);
  if (a1)
  {
    sub_100012400(v2, &v43 - v14, &qword_100593CC0, &qword_1004AD470);
    sub_100012400(v2, v13, &qword_100593CC0, &qword_1004AD470);
    v46 = a2;
    v47 = BYTE4(a2) & 1;
    sub_100012400(v2, v11, &qword_100593CC0, &qword_1004AD470);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v18 = 136315906;
      v19 = *v15;
      v20 = v15[1];

      sub_100016290(v15, &qword_100593CC0, &qword_1004AD470);
      v21 = sub_100002320(v19, v20, &v45);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = (*&v13[*(v5 + 60)])(&v46);
      v24 = v23;
      sub_100016290(v13, &qword_100593CC0, &qword_1004AD470);
      v25 = sub_100002320(v22, v24, &v45);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = (*&v11[*(v5 + 60)])(&v11[*(v5 + 40)]);
      v28 = v27;
      sub_100016290(v11, &qword_100593CC0, &qword_1004AD470);
      v29 = sub_100002320(v26, v28, &v45);

      *(v18 + 24) = v29;
      *(v18 + 32) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v30;
      v31 = v43;
      *v43 = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to update %s to %s (from %s) because %@", v18, 0x2Au);
      sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v15, &qword_100593CC0, &qword_1004AD470);
    sub_100016290(v13, &qword_100593CC0, &qword_1004AD470);
    v42 = v11;
  }

  else
  {
    sub_100012400(v2, v9, &qword_100593CC0, &qword_1004AD470);
    sub_100012400(v2, v7, &qword_100593CC0, &qword_1004AD470);
    v46 = a2;
    v47 = BYTE4(a2) & 1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = *v9;
      v36 = v9[1];

      sub_100016290(v9, &qword_100593CC0, &qword_1004AD470);
      v37 = sub_100002320(v35, v36, &v45);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = (*&v7[*(v5 + 60)])(&v46);
      v40 = v39;
      sub_100016290(v7, &qword_100593CC0, &qword_1004AD470);
      v41 = sub_100002320(v38, v40, &v45);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully updated %s to %s", v34, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v9, &qword_100593CC0, &qword_1004AD470);
    v42 = v7;
  }

  sub_100016290(v42, &qword_100593CC0, &qword_1004AD470);
}

void sub_1002B3660(uint64_t a1, uint64_t a2)
{
  v5 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  __chkstk_darwin();
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v43[-v8];
  __chkstk_darwin();
  v11 = &v43[-v10];
  __chkstk_darwin();
  v13 = &v43[-v12];
  __chkstk_darwin();
  v15 = &v43[-v14];
  if (a1)
  {
    sub_100012400(v2, &v43[-v14], &unk_10059A6C0, &qword_1004AD478);
    sub_100012400(v2, v13, &unk_10059A6C0, &qword_1004AD478);
    v48 = a2;
    sub_100012400(v2, v11, &unk_10059A6C0, &qword_1004AD478);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v18 = 136315906;
      v44 = v17;
      v19 = *v15;
      v20 = v15[1];

      sub_100016290(v15, &unk_10059A6C0, &qword_1004AD478);
      v21 = sub_100002320(v19, v20, &v47);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = (*&v13[*(v5 + 60)])(&v48);
      v24 = v23;

      sub_100016290(v13, &unk_10059A6C0, &qword_1004AD478);
      v25 = sub_100002320(v22, v24, &v47);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = (*&v11[*(v5 + 60)])(&v11[*(v5 + 40)]);
      v28 = v27;
      sub_100016290(v11, &unk_10059A6C0, &qword_1004AD478);
      v29 = sub_100002320(v26, v28, &v47);

      *(v18 + 24) = v29;
      *(v18 + 32) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v30;
      v31 = v45;
      *v45 = v30;
      _os_log_impl(&_mh_execute_header, v16, v44, "Failed to update %s to %s (from %s) because %@", v18, 0x2Au);
      sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v15, &unk_10059A6C0, &qword_1004AD478);
    sub_100016290(v13, &unk_10059A6C0, &qword_1004AD478);
    v42 = v11;
  }

  else
  {
    sub_100012400(v2, v9, &unk_10059A6C0, &qword_1004AD478);
    sub_100012400(v2, v7, &unk_10059A6C0, &qword_1004AD478);
    v48 = a2;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = *v9;
      v36 = v9[1];

      sub_100016290(v9, &unk_10059A6C0, &qword_1004AD478);
      v37 = sub_100002320(v35, v36, &v47);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = (*&v7[*(v5 + 60)])(&v48);
      v40 = v39;

      sub_100016290(v7, &unk_10059A6C0, &qword_1004AD478);
      v41 = sub_100002320(v38, v40, &v47);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully updated %s to %s", v34, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v9, &unk_10059A6C0, &qword_1004AD478);
    v42 = v7;
  }

  sub_100016290(v42, &unk_10059A6C0, &qword_1004AD478);
}

void sub_1002B3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v5 = *(a3 + 16);
  v69 = *(v5 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v61[-v6];
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v61[-v12];
  __chkstk_darwin();
  v68 = &v61[-v14];
  __chkstk_darwin();
  v16 = &v61[-v15];
  v19 = __chkstk_darwin();
  v20 = &v61[-v17];
  if (v21)
  {
    v66 = v9;
    v22 = *(v9 + 16);
    (v22)(&v61[-v17], v3, a3, v19);
    v22(v16, v3, a3);
    v23 = *(v69 + 16);
    v24 = v67;
    v67 = v5;
    v23(v7, v24, v5);
    v22(v68, v3, a3);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70 = v65;
      *v27 = 136315906;
      v63 = v25;
      v62 = v26;
      v28 = *v20;
      v29 = v20[1];
      v30 = *(v66 + 8);

      v30(v20, a3);
      v31 = sub_100002320(v28, v29, &v70);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = (*(v16 + *(a3 + 60)))(v7);
      v34 = v33;
      (*(v69 + 8))(v7, v67);
      v30(v16, a3);
      v35 = sub_100002320(v32, v34, &v70);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      v36 = v68;
      v37 = (*(v68 + *(a3 + 60)))(v68 + *(a3 + 40));
      v39 = v38;
      v30(v36, a3);
      v40 = sub_100002320(v37, v39, &v70);

      *(v27 + 24) = v40;
      *(v27 + 32) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 34) = v41;
      v42 = v63;
      v43 = v64;
      *v64 = v41;
      _os_log_impl(&_mh_execute_header, v42, v62, "Failed to update %s to %s (from %s) because %@", v27, 0x2Au);
      sub_100016290(v43, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v69 + 8))(v7, v67);
      v59 = *(v66 + 8);
      v59(v20, a3);
      v59(v16, a3);
      v59(v68, a3);
    }
  }

  else
  {
    v44 = v18;
    v45 = *(v9 + 16);
    v45(v13, v3, a3, v19);
    (v45)(v11, v3, a3);
    (*(v69 + 16))(v44, v67, v5);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v66 = v44;
      v49 = v48;
      v68 = swift_slowAlloc();
      v70 = v68;
      *v49 = 136315394;
      v67 = v5;
      v50 = *v13;
      v51 = v13[1];
      v52 = *(v9 + 8);

      v52(v13, a3);
      v53 = sub_100002320(v50, v51, &v70);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = v66;
      v55 = (*(v11 + *(a3 + 60)))(v66);
      v57 = v56;
      (*(v69 + 8))(v54, v67);
      v52(v11, a3);
      v58 = sub_100002320(v55, v57, &v70);

      *(v49 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "Successfully updated %s to %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v69 + 8))(v44, v5);
      v60 = *(v9 + 8);
      v60(v13, a3);
      v60(v11, a3);
    }
  }
}

void (*MutableDriverProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  (*(v9 + 16))();
  return sub_1002B44CC;
}

uint64_t MutableDriverProperty.updated(value:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = *(v5 - 8);
  v11 = __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v11);
  v14 = *(v10 + 48);
  if (v14(v9, 1, v5) == 1)
  {
    (*(v10 + 16))(v13, v2 + *(a2 + 40), v5);
    if (v14(v9, 1, v5) != 1)
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v9, v5);
  }

  return (*(v10 + 40))(v2 + *(a2 + 40), v13, v5);
}

Swift::Void __swiftcall MutableDriverProperty.restore()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = __chkstk_darwin();
  v8 = (&v23 - v7);
  (*(v1 + *(v9 + 52)))(v1 + *(v9 + 48), v6);
  v10 = *(v3 + 16);
  v10(v8, v1, v2);
  v10(v5, v1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25[0] = v24;
    *v13 = 136315394;
    v14 = *v8;
    v15 = v8[1];
    v16 = *(v3 + 8);

    v16(v8, v2);
    v17 = sub_100002320(v14, v15, v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = (*&v5[*(v2 + 60)])(&v5[*(v2 + 40)]);
    v20 = v19;
    v16(v5, v2);
    v21 = sub_100002320(v18, v20, v25);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Successfully restored %s to %s after a reset", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v3 + 8);
    v22(v8, v2);
    v22(v5, v2);
  }
}

uint64_t (*MutableDriverProperty.projectedValue.modify(void *a1, uint64_t a2))()
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1002B4D5C;
}

uint64_t MutableDriverProperty.customMirror.getter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = *(a1 + 16);
  v3 = v7;
  v4 = sub_1000297D4(v6);
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  return Mirror.init(reflecting:)();
}

uint64_t WiFiPropertyUpdateRegistration.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WiFiPropertyUpdateRegistration.__allocating_init(cancellationHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UUID.init()();
  v5 = (v4 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v5 = a1;
  v5[1] = a2;
  return v4;
}

uint64_t WiFiPropertyUpdateRegistration.init(cancellationHandler:)(uint64_t a1, uint64_t a2)
{
  UUID.init()();
  v5 = (v2 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v5 = a1;
  v5[1] = a2;
  return v2;
}

uint64_t WiFiPropertyUpdateRegistration.deinit()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);

  v2(v0);

  v3 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return v1;
}

uint64_t WiFiPropertyUpdateRegistration.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);

  v2(v0);

  v3 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t WiFiPropertyUpdateRegistration.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int WiFiPropertyUpdateRegistration.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002B5228@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_1002B52A4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002B5344(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002B53CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 104))(v3);
  return Hasher._finalize()();
}

uint64_t sub_1002B5448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = (v8 + qword_100594008);
  *v9 = a1;
  v9[1] = a2;
  UUID.init()();
  v10 = (v8 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v10 = a3;
  v10[1] = a4;
  return v8;
}

uint64_t sub_1002B5510()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);

  v2(v0);

  v3 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return v1;
}

uint64_t sub_1002B55C4()
{
  sub_1002B5510();

  return swift_deallocClassInstance();
}

uint64_t *sub_1002B564C()
{
  v1 = *v0;
  type metadata accessor for UUID();
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken(0, *(v1 + 80), *(v1 + 88), v2);
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0[2] = Dictionary.init()();
  return v0;
}

uint64_t ObservableWiFiProperty.name.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v50 = a6;
  v51 = a5;
  v49 = a1;
  v16 = *(a8 - 8);
  __chkstk_darwin();
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations(0, v20, a10, v19);
  swift_allocObject();
  v21 = sub_1002B564C();
  v22 = v49;
  *(a9 + 2) = v21;
  *(a9 + 3) = v22;
  v24 = type metadata accessor for ObservableWiFiProperty(0, a8, a10, v23);
  v25 = &a9[v24[12]];
  v44 = a3;
  *v25 = a3;
  *(v25 + 1) = a4;
  v26 = v24[13];
  v27 = type metadata accessor for Logger();
  v45 = *(v27 - 8);
  v28 = *(v45 + 16);
  v47 = v27;
  v28(&a9[v26], v51);
  *a9 = v50;
  *(a9 + 1) = a7;
  v29 = v24[11];
  v48 = v16;
  v30 = *(v16 + 16);
  v30(&a9[v29], a2, a8);
  v46 = v18;
  v49 = a2;
  v30(v18, a2, a8);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = sub_100002320(v44, a4, &v52);

    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    v35 = v46;
    v36 = v50(v46);
    v38 = v37;

    v39 = *(v48 + 8);
    v39(v35, a8);
    v40 = sub_100002320(v36, v38, &v52);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Initialized value for %s to %s", v33, 0x16u);
    swift_arrayDestroy();

    (*(v45 + 8))(v51, v47);
    return (v39)(v49, a8);
  }

  else
  {

    (*(v45 + 8))(v51, v47);
    v42 = *(v48 + 8);
    v42(v49, a8);
    return (v42)(v46, a8);
  }
}

uint64_t (*sub_1002B5AEC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>))()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + qword_100594008);
    v8 = *(result + qword_100594008 + 8);

    result = swift_allocObject();
    *(result + 2) = a2;
    *(result + 3) = a3;
    *(result + 4) = v9;
    *(result + 5) = v8;
    v10 = sub_1002B97E4;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

void (*ObservableWiFiProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  ObservableWiFiProperty.wrappedValue.getter(a2, v10);
  return sub_1002B5C9C;
}

void sub_1002B5CB4(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[5], v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t _s7CoreP2P21MutableDriverPropertyV14projectedValueACyxGvs_0(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t (*ObservableWiFiProperty.projectedValue.modify(void *a1, uint64_t a2))()
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1002B9A80;
}

void sub_1002B5F88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

double ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v33 = a2;
  v29 = type metadata accessor for UUID();
  v11 = *(v29 - 8);
  __chkstk_darwin();
  v31 = a5;
  v13 = *(a5 + 16);
  v14 = *(a5 + 24);
  v27 = v14;
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservableWiFiProperty.Token(0, v13, v14, v15);
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = v14;
  *(v16 + 4) = a1;
  *(v16 + 5) = a3;
  *(v16 + 6) = a4;
  v30 = v6;
  v18 = *(v6 + 16);
  v17 = *(v6 + 24);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  v21 = (v20 + qword_100594008);
  *v21 = sub_1002B7840;
  v21[1] = v16;
  v22 = a1;

  UUID.init()();
  v23 = (v20 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v23 = sub_1002B7850;
  v23[1] = v19;
  os_unfair_lock_lock(*(v17 + 16));
  (*(v11 + 16))(v28, v20 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id, v29);

  swift_weakInit();

  v34 = 0;
  swift_beginAccess();
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken(255, v13, v27, v24);
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v25 = v30;
  (*(*(v13 - 8) + 16))(v32, v30 + *(v31 + 44), v13);
  os_unfair_lock_unlock(*(*(v25 + 24) + 16));
  *v33 = v20;

  return result;
}

double sub_1002B63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a4;
  v32 = a5;
  v38 = a3;
  v30 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin();
  v18 = &v30 - v17;
  v19 = *(v13 + 16);
  v19(&v30 - v17, v30, a6, v16);
  (v19)(v15, a2, a6);
  v20 = *(v13 + 80);
  v21 = (v20 + 48) & ~v20;
  v22 = (v14 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  *(v23 + 2) = a6;
  *(v23 + 3) = a7;
  v24 = v32;
  *(v23 + 4) = v31;
  *(v23 + 5) = v24;
  v25 = *(v13 + 32);
  v25(&v23[v21], v18, a6);
  v25(&v23[v22], v15, a6);
  aBlock[4] = sub_1002B9700;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005724F8;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_10001AD14(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  v27 = v33;
  v28 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v12, v36);

  return result;
}

void sub_1002B67D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a2 + 16);
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  type metadata accessor for UUID();
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken(255, *(v3 + 80), *(v3 + 88), v5);
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v7, v6);
  swift_endAccess();
  os_unfair_lock_unlock(v4);
}

double ObservableWiFiProperty.registerForChangesIfNeeded(on:using:valueUpdateHandler:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (!*a2)
  {
    return ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(a1, a2, a3, a4, a5, a6);
  }

  ObservableWiFiProperty.wrappedValue.getter(a5, a6);
  return result;
}

uint64_t ObservableWiFiProperty.customMirror.getter(uint64_t a1)
{
  v2 = *(a1 + 44);
  v7 = *(a1 + 16);
  v3 = v7;
  v4 = sub_1000297D4(v6);
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  return Mirror.init(reflecting:)();
}

uint64_t WiFiInterfaceRole.description.getter(unsigned __int8 a1)
{
  v1 = 0x7274736172666E49;
  v2 = 5128526;
  v3 = 0x61746144204E414ELL;
  if (a1 != 3)
  {
    v3 = 0x6574614C20776F4CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1279547201;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t WiFiInterfaceRole.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7274736172666E69;
  v2 = 0x67616E614D6E616ELL;
  v3 = 0x617461446E616ELL;
  if (a1 != 3)
  {
    v3 = 0x6E6574614C776F6CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1818523489;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1002B6BFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002B6CF4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002B6DD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002B6ECC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P17WiFiInterfaceRoleO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002B6EFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657275746375;
  v4 = 0x7274736172666E69;
  v5 = 0xED0000746E656D65;
  v6 = 0x67616E614D6E616ELL;
  v7 = 0xE700000000000000;
  v8 = 0x617461446E616ELL;
  if (v2 != 3)
  {
    v8 = 0x6E6574614C776F6CLL;
    v7 = 0xEA00000000007963;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1818523489;
    v3 = 0xE400000000000000;
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

uint64_t sub_1002B7060()
{
  v1 = *v0;
  v2 = 0x7274736172666E49;
  v3 = 5128526;
  v4 = 0x61746144204E414ELL;
  if (v1 != 3)
  {
    v4 = 0x6574614C20776F4CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1279547201;
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

uint64_t WiFiInterfaceLinkState.description.getter(char a1)
{
  if (a1)
  {
    return 0x7055206B6E694CLL;
  }

  else
  {
    return 0x776F44206B6E694CLL;
  }
}

uint64_t sub_1002B71EC()
{
  if (*v0)
  {
    return 0x7055206B6E694CLL;
  }

  else
  {
    return 0x776F44206B6E694CLL;
  }
}

unint64_t sub_1002B7254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1002B72B0(a1, v6, a2, a3);
}

unint64_t sub_1002B72B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1002B7438(uint64_t *a1)
{
  sub_10005DC58(&qword_100593CC8, &unk_1004AD480);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_1002B74F8(char *a1)
{
  BYTE8(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

unint64_t _s7CoreP2P17WiFiInterfaceRoleO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554EA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_1002B7598(uint64_t a1)
{
  v7 = a1;
  v3 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v4 = v3[10];
  if ((sub_1000C02D8(*(v1 + v4), a1) & 1) == 0)
  {
    v5 = (v1 + v3[12]);
    if (*v5)
    {
      (*v5)(&v7);
    }

    (*(v1 + v3[11]))(&v7);

    *(v1 + v4) = a1;
    v6 = *(v1 + v3[14]);
    if (v6)
    {
      v6(&v7);
    }

    sub_1002B3660(0, a1);
  }
}

uint64_t type metadata accessor for WiFiPropertyUpdateRegistration(uint64_t a1)
{
  result = qword_100593EE8;
  if (!qword_100593EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002B7938()
{
  result = qword_100593CE0;
  if (!qword_100593CE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiInterfaceRole, &type metadata for WiFiInterfaceRole, v0, v1);
    atomic_store(result, &qword_100593CE0);
  }

  return result;
}

unint64_t sub_1002B7990()
{
  result = qword_100593CE8[0];
  if (!qword_100593CE8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiInterfaceLinkState, &type metadata for WiFiInterfaceLinkState, v0, v1);
    atomic_store(result, qword_100593CE8);
  }

  return result;
}

void sub_1002B79E4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v4 <= 0x3F)
    {
      sub_1002B7D00(319, &qword_100593D70, sub_1002B7990, &type metadata for WiFiInterfaceLinkState);
      if (v5 <= 0x3F)
      {
        sub_1002B7D00(319, &qword_100593D78, sub_1002AB120, &type metadata for WiFiAddress);
        if (v6 <= 0x3F)
        {
          sub_1002B7DE4(319, &qword_100593D80, &qword_100593D88, &qword_1004AD908, sub_1002B7D60);
          if (v7 <= 0x3F)
          {
            sub_1002B7DE4(319, &qword_100593D98, &qword_100593CC8, &unk_1004AD480, sub_1002B7E54);
            if (v9 <= 0x3F)
            {
              type metadata accessor for WiFiInterface.NeighborDiscoveryTable(319, v2, v1, v8);
              if (v10 <= 0x3F)
              {
                type metadata accessor for Logger();
                if (v11 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002B7D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for MutableDriverProperty(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1002B7D60()
{
  result = qword_100593D90;
  if (!qword_100593D90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100593D88, &qword_1004AD908);
    v4[0] = sub_10016EF94();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100593D90);
  }

  return result;
}

void sub_1002B7DE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = sub_10005DD04(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for MutableDriverProperty(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1002B7E54()
{
  result = qword_100593DA0[0];
  if (!qword_100593DA0[0])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100593CC8, &unk_1004AD480);
    v4[0] = sub_10016EFEC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, qword_100593DA0);
  }

  return result;
}

uint64_t sub_1002B7EE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry(255, v2, v1, v4);
    swift_getWitnessTable(byte_1004ADB38, v6);
    result = type metadata accessor for Dictionary();
    if (v7 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002B7FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, AssociatedTypeWitness);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 8) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1002B82A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 >= 4)
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v15)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
LABEL_14:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

LABEL_51:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 == v14)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v23 + v12 + 8) & ~v12, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

void sub_1002B85F8(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1002B8BF0();
      if (v3 <= 0x3F)
      {
        sub_1002B8C40(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002B86C8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((((((((*(v8 + 64) + ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25((a1 + v10 + 16) & ~v10);
    }

    else
    {
      v26 = *(v8 + 48);

      return v26((((a1 + v10 + 16) & ~v10) + v11 + v12) & ~v12, v9);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_1002B8934(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Logger() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          if (v9 == v16)
          {
            v24 = *(v8 + 56);

            v24((a1 + v12 + 16) & ~v12, a2);
          }

          else
          {
            v25 = *(v10 + 56);

            v25((((a1 + v12 + 16) & ~v12) + v13 + v14) & ~v14, a2, v11);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

unint64_t sub_1002B8BF0()
{
  result = qword_100593EA8;
  if (!qword_100593EA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100593EA8);
  }

  return result;
}

void sub_1002B8C40(uint64_t a1)
{
  if (!qword_100593EB0)
  {
    sub_10005DD04(&qword_100593EB8, qword_1004AD958);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100593EB0);
    }
  }
}

uint64_t sub_1002B8CAC(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1002B8D48(uint64_t a1)
{
  result = sub_1002B8BF0();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for ObservableWiFiProperty.TokenRegistrations(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for Lock();
      if (v6 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          result = type metadata accessor for Logger();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002B8E28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 7;
  v15 = v11 + 16;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v14 + ((v10 + 32) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v15 + ((v14 + v25) & 0xFFFFFFFFFFFFFFF8)) & ~v11;

          return v27(v28);
        }
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_1002B90F0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 7;
  v18 = ((v14 + 16 + ((v13 + 7 + ((v12 + 32) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *(a1 + v18) = v21;
              }

              else
              {
                *(a1 + v18) = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v18) = 0;
  }

  else if (v19)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v25 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v16)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v14 + 16 + ((v17 + v25) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

      v27(v28, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

uint64_t sub_1002B950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002B9548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002B9584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1002B95E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1002B9658()
{
  result = qword_100594210;
  if (!qword_100594210)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiInterfaceLinkState, &type metadata for WiFiInterfaceLinkState, v0, v1);
    atomic_store(result, &qword_100594210);
  }

  return result;
}

unint64_t sub_1002B96AC()
{
  result = qword_100594218;
  if (!qword_100594218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiInterfaceRole, &type metadata for WiFiInterfaceRole, v0, v1);
    atomic_store(result, &qword_100594218);
  }

  return result;
}

uint64_t sub_1002B980C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1002B15D8(a1, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_1002B98A4(unint64_t a1)
{
  v2 = a1 | ((HIDWORD(a1) & 1) << 32);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1002B1060(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_1002B994C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1002B0E50(a1 & 0xFFFFFFFFFFFFLL, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_1002B99E4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002B9AE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100143300(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10004AF78(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_1000124C8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v33 + 1) = a3;
  *&v33 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = sub_10016FD40(5392718, 0xE300000000000000);
  v15 = v14;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004817D0;
  *(v16 + 32) = v3;
  *(v16 + 33) = v4;
  *(v16 + 34) = v5;
  *(v16 + 35) = v6;
  *(v16 + 36) = v7;
  *(v16 + 37) = v8;
  v17 = sub_10002D874(v16);
  v19 = v18;

  *&v39 = v13;
  *(&v39 + 1) = v15;
  v37 = &type metadata for Data;
  v38 = &protocol witness table for Data;
  *&v36 = v17;
  *(&v36 + 1) = v19;
  v20 = sub_100029B34(&v36, &type metadata for Data);
  v21 = *v20;
  v22 = v20[1];
  sub_10000AB0C(v13, v15);
  sub_10000AB0C(v17, v19);
  sub_100178A18(v21, v22, &v39);
  sub_1000124C8(v17, v19);
  sub_1000124C8(v13, v15);
  sub_100002A00(&v36);
  v23 = v39;
  v40 = v39;
  v37 = &type metadata for Data;
  v38 = &protocol witness table for Data;
  v24 = v33;
  v36 = v33;
  v25 = sub_100029B34(&v36, &type metadata for Data);
  v26 = *v25;
  v27 = v25[1];
  sub_10000AB0C(v23, *(&v23 + 1));
  sub_10000AB0C(v24, *(&v24 + 1));
  sub_100178A18(v26, v27, &v40);
  sub_1000124C8(v23, *(&v23 + 1));
  sub_100002A00(&v36);
  v36 = v40;
  type metadata accessor for SHA256();
  sub_1002BB668(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000BA0A4();
  static HMAC.authenticationCode<A>(for:using:)();
  sub_1000124C8(v36, *(&v36 + 1));
  v28 = v34;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v35 + 8))(v12, v28);
  v29 = v36;
  sub_10000AB0C(v24, *(&v24 + 1));
  sub_1002B9AE4(8, v24, *(&v24 + 1), &v36);
  v30 = v36;
  sub_10000AB0C(v29, *(&v29 + 1));
  v31 = sub_100275AC0(v30, *(&v30 + 1), v29, *(&v29 + 1));
  sub_1000124C8(v29, *(&v29 + 1));
  return v31;
}

BOOL NANIdentityKey.isValidIdentityResolutionAttribute(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(a5 & 0xFFFFFFFFFFFFLL, a1, a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10, a1, a2) && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v15, a3, a4);
  sub_1000124C8(v9, v11);
  sub_1000124C8(v13, v15);
  return v16;
}

int *NANPairedDeviceSharedAssociation.init(identityResolutionKey:baseAuthenticationKeyManagementSuite:cipherSuite:pairingKey:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1002BB570(a1, a6);
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  v12 = (a6 + result[7]);
  *v12 = a4;
  v12[1] = a5;
  *(a6 + result[8]) = 0;
  return result;
}

uint64_t NANIdentityKey.generateIdentityResolutionAttribute(for:)(uint64_t a1)
{
  v7 = 0;
  swift_stdlib_random();
  v2 = sub_10004F3B0(&v7, &v8);
  v4 = v3;
  v5 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(a1 & 0xFFFFFFFFFFFFLL, v2, v3);
  sub_1000124C8(v2, v4);
  return v5;
}

_BYTE *sub_1002BA1AC@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_10000AD84(result, result + 8);
    *a2 = result;
    a2[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NANIdentityKey.hash(into:)(uint64_t a1)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  return sub_1000124C8(v2, v3);
}

uint64_t NANIdentityKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v30 = type metadata accessor for SymmetricKeySize();
  v24 = *(v30 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymmetricKey();
  v22 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANIdentityKey(0);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    v19 = v10;
    v20 = v8;
    v21 = v6;
    static SymmetricKeySize.bits128.getter();
    v11 = SymmetricKeySize.bitCount.getter();
    (*(v24 + 8))(v5, v30);
    v12 = v28;
    v13 = v29;
    sub_100031694(v27, v28);
    v25 = UnkeyedDecodingContainer.decodeData(with:)(v11 / 8, v12, v13);
    v26 = v14;
    v15 = v20;
    SymmetricKey.init<A>(data:)();
    v16 = v19;
    (*(v22 + 32))(v19, v15, v21);
    sub_100002A00(v27);
    sub_1002BB570(v16, v23);
  }

  return sub_100002A00(a1);
}

uint64_t NANIdentityKey.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  sub_100031694(v4, v4[3]);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v2, v3);
  return sub_100002A00(v4);
}

Swift::Int NANIdentityKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002BA67C(uint64_t a1)
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v2, v3);
  return Hasher._finalize()();
}

uint64_t NANPairedDeviceSharedAssociation.pairingKey.getter()
{
  v1 = v0 + *(type metadata accessor for NANPairedDeviceSharedAssociation(0) + 28);
  v2 = *v1;
  sub_10000AB0C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANPairedDeviceSharedAssociation.usageCount.setter(uint64_t a1)
{
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

unint64_t sub_1002BA890()
{
  v1 = *v0;
  v2 = 0x7553726568706963;
  v3 = 0x4B676E6972696170;
  if (v1 != 3)
  {
    v3 = 0x756F436567617375;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (*v0)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002BA944@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002BBB1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002BA96C(uint64_t a1)
{
  v2 = sub_1002BB614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BA9A8(uint64_t a1)
{
  v2 = sub_1002BB614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANPairedDeviceSharedAssociation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100594220, &qword_1004ADB80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - v7;
  sub_100029B34(a1, a1[3]);
  sub_1002BB614();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for NANIdentityKey(0);
  sub_1002BB668(&qword_1005924B8, type metadata accessor for NANIdentityKey, protocol conformance descriptor for NANIdentityKey);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    LOBYTE(v14) = *(v3 + v9[5]);
    v16 = 1;
    sub_10022FEB0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + v9[6]);
    v16 = 2;
    sub_100279164();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 3;
    sub_10000AB0C(v14, v11);
    sub_1002BB6B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v14, v15);
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANPairedDeviceSharedAssociation.hash(into:)(uint64_t a1)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v3, v4);
  v2 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  Hasher._combine(_:)(*(v1 + v2[5]) + 1);
  Hasher._combine(_:)(*(v1 + v2[6]) + 1);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v1 + v2[8]));
}

Swift::Int NANPairedDeviceSharedAssociation.hashValue.getter()
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v3, v4);
  v1 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  Hasher._combine(_:)(*(v0 + v1[5]) + 1);
  Hasher._combine(_:)(*(v0 + v1[6]) + 1);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + v1[8]));
  return Hasher._finalize()();
}

uint64_t NANPairedDeviceSharedAssociation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  type metadata accessor for NANIdentityKey(0);
  __chkstk_darwin();
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10005DC58(&qword_100594238, &qword_1004ADB88);
  v21 = *(v23 - 8);
  __chkstk_darwin();
  v6 = &v19 - v5;
  v7 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v24 = a1;
  sub_100029B34(a1, v10);
  sub_1002BB614();
  v11 = v6;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(v24);
  }

  v12 = v21;
  v13 = v9;
  LOBYTE(v25) = 0;
  sub_1002BB668(&qword_1005924D0, type metadata accessor for NANIdentityKey, protocol conformance descriptor for NANIdentityKey);
  v15 = v22;
  v14 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1002BB570(v15, v13);
  v26 = 1;
  sub_100232618();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v12;
  *(v13 + v7[5]) = v25;
  v26 = 2;
  sub_100285930();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + v7[6]) = v25;
  v26 = 3;
  sub_1002BB704();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + v7[7]) = v25;
  LOBYTE(v25) = 4;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v16 + 8))(v11, v14);
  *(v13 + v7[8]) = v17;
  sub_1002BB758(v13, v20, type metadata accessor for NANPairedDeviceSharedAssociation);
  sub_100002A00(v24);
  return sub_1002BB7C0(v13, type metadata accessor for NANPairedDeviceSharedAssociation);
}

void sub_1002BB258(uint64_t a1, int *a2)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v4, v5);
  Hasher._combine(_:)(*(v2 + a2[5]) + 1);
  Hasher._combine(_:)(*(v2 + a2[6]) + 1);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[8]));
}

Swift::Int sub_1002BB328(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v5, v6);
  Hasher._combine(_:)(*(v2 + a2[5]) + 1);
  Hasher._combine(_:)(*(v2 + a2[6]) + 1);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[8]));
  return Hasher._finalize()();
}

BOOL _s7CoreP2P32NANPairedDeviceSharedAssociationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v4 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9, v8, v9);
  sub_1000124C8(v8, v9);
  sub_1000124C8(v8, v9);
  if (v4 && (v5 = type metadata accessor for NANPairedDeviceSharedAssociation(0), *(a1 + v5[5]) == *(a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && (v6 = v5, _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + v5[7]), *(a1 + v5[7] + 8), *(a2 + v5[7]), *(a2 + v5[7] + 8))))
  {
    return *(a1 + v6[8]) == *(a2 + v6[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BB570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANIdentityKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002BB614()
{
  result = qword_100594228;
  if (!qword_100594228)
  {
    result = swift_getWitnessTable(byte_1004ADE04, &type metadata for NANPairedDeviceSharedAssociation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100594228);
  }

  return result;
}

uint64_t sub_1002BB668(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002BB6B0()
{
  result = qword_100594230;
  if (!qword_100594230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPMK, &type metadata for NANPMK, v0, v1);
    atomic_store(result, &qword_100594230);
  }

  return result;
}

unint64_t sub_1002BB704()
{
  result = qword_100594240;
  if (!qword_100594240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPMK, &type metadata for NANPMK, v0, v1);
    atomic_store(result, &qword_100594240);
  }

  return result;
}

uint64_t sub_1002BB758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002BB7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002BB8D8(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002BB96C(uint64_t a1)
{
  result = type metadata accessor for NANIdentityKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002BBA18()
{
  result = qword_100594388;
  if (!qword_100594388)
  {
    result = swift_getWitnessTable(asc_1004ADDDC, &type metadata for NANPairedDeviceSharedAssociation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100594388);
  }

  return result;
}

unint64_t sub_1002BBA70()
{
  result = qword_100594390;
  if (!qword_100594390)
  {
    result = swift_getWitnessTable(asc_1004ADD4C, &type metadata for NANPairedDeviceSharedAssociation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100594390);
  }

  return result;
}

unint64_t sub_1002BBAC8()
{
  result = qword_100594398;
  if (!qword_100594398)
  {
    result = swift_getWitnessTable(byte_1004ADD74, &type metadata for NANPairedDeviceSharedAssociation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100594398);
  }

  return result;
}

uint64_t sub_1002BBB1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001004BE070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001004BE090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7553726568706963 && a2 == 0xEB00000000657469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B676E6972696170 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F436567617375 && a2 == 0xEA0000000000746ELL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t NANState.description.getter(char a1)
{
  if (a1)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t NANState.actionDescription.getter(char a1)
{

  String.index(before:)();

  String.subscript.getter();

  v1 = static String._fromSubstring(_:)();

  return v1;
}

CoreP2P::NANState_optional __swiftcall NANState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555DE8, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_NANState_enabled;
  }

  else
  {
    v4.value = CoreP2P_NANState_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_1002BBE54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BBED8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002BBF48(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BBFC8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100555DE8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002BC028(uint64_t *a1@<X8>)
{
  v2 = 0x64656C6261736964;
  if (*v1)
  {
    v2 = 0x64656C62616E65;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002BC068()
{
  if (*v0)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

CoreP2P::NANDiscoveryWindowIndex __swiftcall NANDiscoveryWindowIndex.next()()
{
  if (v0 == 15)
  {
    return 0;
  }

  v2 = __OFADD__(v0, 1);
  result.index = v0 + 1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANDiscoveryWindowIndex __swiftcall NANDiscoveryWindowIndex.previous()()
{
  if (!v0)
  {
    return 15;
  }

  v1 = __OFSUB__(v0, 1);
  result.index = v0 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t NANDiscoveryWindowIndex.description.getter(uint64_t a1)
{
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_1002BC19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
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

uint64_t sub_1002BC220(uint64_t a1)
{
  v2 = sub_1002BC3C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BC25C(uint64_t a1)
{
  v2 = sub_1002BC3C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANDiscoveryWindowIndex.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_10005DC58(&qword_1005943A0, &qword_1004ADE78);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1002BC3C8()
{
  result = qword_1005943A8;
  if (!qword_1005943A8)
  {
    result = swift_getWitnessTable(byte_1004AE19C, &type metadata for NANDiscoveryWindowIndex.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005943A8);
  }

  return result;
}

void *NANDiscoveryWindowIndex.init(from:)(void *a1)
{
  v3 = sub_10005DC58(&qword_1005943B0, &qword_1004ADE80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002A00(a1);
  return v7;
}

unint64_t sub_1002BC574()
{
  result = qword_10059A550;
  if (!qword_10059A550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANState, &type metadata for NANState, v0, v1);
    atomic_store(result, &qword_10059A550);
  }

  return result;
}

unint64_t sub_1002BC5C8()
{
  result = qword_1005943B8;
  if (!qword_1005943B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDiscoveryWindowIndex, &type metadata for NANDiscoveryWindowIndex, v0, v1);
    atomic_store(result, &qword_1005943B8);
  }

  return result;
}

uint64_t sub_1002BC628@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005943B0, &qword_1004ADE80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100002A00(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1002BC788(void *a1)
{
  v2 = sub_10005DC58(&qword_1005943A0, &qword_1004ADE78);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1002BC8F4()
{
  result = qword_1005943C0;
  if (!qword_1005943C0)
  {
    result = swift_getWitnessTable(byte_1004AE174, &type metadata for NANDiscoveryWindowIndex.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005943C0);
  }

  return result;
}

unint64_t sub_1002BC94C()
{
  result = qword_1005943C8;
  if (!qword_1005943C8)
  {
    result = swift_getWitnessTable(byte_1004AE0E4, &type metadata for NANDiscoveryWindowIndex.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005943C8);
  }

  return result;
}

unint64_t sub_1002BC9A4()
{
  result = qword_1005943D0;
  if (!qword_1005943D0)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for NANDiscoveryWindowIndex.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005943D0);
  }

  return result;
}

uint64_t sub_1002BCA00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_10005DC58(&qword_100594A30, &qword_1004B2E00);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for WAPairedDevice();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = sub_10005DC58(&qword_100594A38, &qword_1004AE540);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = type metadata accessor for WADevicesAgentInterface.Devices();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = *a1;
  v4[18] = *(*a1 + 408);
  v4[19] = (v9 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;

  return _swift_task_switch(sub_1002BCC04, a1, 0);
}

uint64_t sub_1002BCC04()
{
  *(v0 + 160) = (*(v0 + 144))(*(v0 + 32), *(v0 + 40), 1);
  *(v0 + 168) = 0;

  return _swift_task_switch(sub_1002BCD04, 0, 0);
}

char *sub_1002BCD04()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v85 = v0;
  if (v4 == enum case for WADevicesAgentInterface.Devices.selected(_:))
  {
    v5 = v0[20];
    v6 = v0[17];
    (*(v0[16] + 96))(v6, v0[15]);
    v7 = *v6;
    if (v5 >> 62)
    {
      goto LABEL_65;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v10 = v5 & 0xC000000000000001;
      v11 = v5 & 0xFFFFFFFFFFFFFF8;
      v12 = v85[20] + 32;
      v13 = v7 + 56;
      while (1)
      {
        if (v10)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_63;
          }

          v14 = *(v12 + 8 * v9);
        }

        v5 = v14;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        v16 = [v14 deviceID];
        if (v16 >> 16)
        {
          goto LABEL_64;
        }

        if (*(v7 + 16) && (v17 = v16, v18 = static Hasher._hash(seed:bytes:count:)(), v19 = -1 << *(v7 + 32), v20 = v18 & ~v19, ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
        {
          v21 = ~v19;
          while (*(*(v7 + 48) + 2 * v20) != v17)
          {
            v20 = (v20 + 1) & v21;
            if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v9 == i)
          {
            goto LABEL_48;
          }
        }

        else
        {
LABEL_6:

          if (v9 == i)
          {
            goto LABEL_48;
          }
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      ;
    }

LABEL_48:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (v51)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v51 = _swiftEmptyArrayStorage[2];
      if (v51)
      {
LABEL_51:
        sub_100367828(0, v51 & ~(v51 >> 63), 0);
        if ((v51 & 0x8000000000000000) == 0)
        {
          for (j = 0; j != v51; ++j)
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v53 = _swiftEmptyArrayStorage[j + 4];
            }

            v54 = v53;
            v55 = [v53 deviceID];

            v57 = _swiftEmptyArrayStorage[2];
            v56 = _swiftEmptyArrayStorage[3];
            if (v57 >= v56 >> 1)
            {
              sub_100367828((v56 > 1), v57 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v57 + 1;
            _swiftEmptyArrayStorage[v57 + 4] = v55;
          }

          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_69;
      }
    }

LABEL_59:

    v0 = v85;
LABEL_85:

    v81 = v0[1];

    return v81(_swiftEmptyArrayStorage);
  }

  if (v4 != enum case for WADevicesAgentInterface.Devices.matching(_:))
  {
    v5 = v0[20];
    if (v4 != enum case for WADevicesAgentInterface.Devices.allPairedDevices(_:))
    {
      v58 = enum case for WADevicesAgentInterface.Devices.userSpecifiedDevices(_:);
      v59 = v4;

      if (v59 != v58)
      {
        (*(v0[16] + 8))(v0[17], v0[15]);
      }

      goto LABEL_85;
    }

    if (!(v5 >> 62))
    {
      v41 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v41)
      {
LABEL_84:
        v0 = v85;

        goto LABEL_85;
      }

LABEL_39:
      result = sub_100367828(0, v41 & ~(v41 >> 63), 0);
      if (v41 < 0)
      {
        __break(1u);
        return result;
      }

      v43 = 0;
      v44 = v5 & 0xC000000000000001;
      v45 = v85[20] + 32;
      do
      {
        if (v44)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v46 = *(v45 + 8 * v43);
        }

        v47 = v46;
        v48 = [v46 deviceID];

        v50 = _swiftEmptyArrayStorage[2];
        v49 = _swiftEmptyArrayStorage[3];
        if (v50 >= v49 >> 1)
        {
          sub_100367828((v49 > 1), v50 + 1, 1);
        }

        ++v43;
        _swiftEmptyArrayStorage[2] = v50 + 1;
        _swiftEmptyArrayStorage[v50 + 4] = v48;
      }

      while (v41 != v43);
      v0 = v85;
LABEL_80:

      goto LABEL_85;
    }

LABEL_83:
    v41 = _CocoaArrayWrapper.endIndex.getter();
    if (!v41)
    {
      goto LABEL_84;
    }

    goto LABEL_39;
  }

  v5 = v0[20];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[12];
  v25 = v0[13];
  (*(v0[16] + 96))(v22, v0[15]);
  (*(v25 + 32))(v23, v22, v24);
  if (!(v5 >> 62))
  {
    v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_70;
    }

    goto LABEL_24;
  }

LABEL_69:
  v0 = v85;
  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_70;
  }

LABEL_24:
  sub_100367848(0, v26 & ~(v26 >> 63), 0);
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  v27 = 0;
  v83 = v0[9];
  v82 = v0[20] + 32;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v82 + 8 * v27);
    }

    v29 = v28;
    [v28 deviceID];
    v30 = [v29 name];
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v32 = v0[7];
    v33 = [v29 pairingName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = [v29 vendorName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = [v29 modelName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
    v36 = type metadata accessor for WAPairedDevice.PairingInfo();
    (*(*(v36 - 8) + 56))(v32, 0, 1, v36);
    WAPairedDevice.init(id:name:pairingInfo:)();

    v38 = _swiftEmptyArrayStorage[2];
    v37 = _swiftEmptyArrayStorage[3];
    if (v38 >= v37 >> 1)
    {
      sub_100367848((v37 > 1), v38 + 1, 1);
    }

    v39 = v85[11];
    v40 = v85[8];
    ++v27;
    _swiftEmptyArrayStorage[2] = v38 + 1;
    (*(v83 + 32))(_swiftEmptyArrayStorage + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v38, v39, v40);
    v0 = v85;
  }

  while (v26 != v27);
LABEL_70:

  v60 = v0[21];
  v0[2] = _swiftEmptyArrayStorage;
  sub_10005DC58(&qword_100594A40, &qword_1004AE548);
  sub_10000CB24(&qword_100594A48, &qword_100594A40, &qword_1004AE548);
  v61 = Sequence.filter(_:)();
  if (!v60)
  {
    v66 = v61;

    v67 = *(v66 + 16);
    if (!v67)
    {
      v0 = v85;
      v78 = v85[13];
      v79 = v85[14];
      v80 = v85[12];

      (*(v78 + 8))(v79, v80);
      goto LABEL_85;
    }

    v68 = v85[9];
    sub_100367828(0, v67, 0);
    v69 = *(v68 + 16);
    v68 += 16;
    v84 = v69;
    v70 = v66 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
    v71 = *(v68 + 56);
    v72 = (v68 - 8);
    do
    {
      v73 = v85[10];
      v74 = v85[8];
      v84(v73, v70, v74);
      v75 = WAPairedDevice.id.getter();
      (*v72)(v73, v74);
      v77 = _swiftEmptyArrayStorage[2];
      v76 = _swiftEmptyArrayStorage[3];
      if (v77 >= v76 >> 1)
      {
        sub_100367828((v76 > 1), v77 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v77 + 1;
      _swiftEmptyArrayStorage[v77 + 4] = v75;
      v70 += v71;
      --v67;
    }

    while (v67);
    v0 = v85;
    (*(v85[13] + 8))(v85[14], v85[12]);
    goto LABEL_80;
  }

  v62 = v0[13];
  v63 = v0[14];
  v64 = v0[12];

  (*(v62 + 8))(v63, v64);

  v65 = v0[1];

  return v65();
}

uint64_t variable initialization expression of WiFiAwareMonitorClient.assertionqueue()
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v4[1] = sub_100061590();
  static DispatchQoS.unspecified.getter();
  v6 = _swiftEmptyArrayStorage;
  sub_10001F93C(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CB24(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of WiFiAwareMonitorClient.subject()
{
  sub_10005DC58(&unk_1005943F0, &qword_1004B2170);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of NANAgentHandler.clients(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  type metadata accessor for NANAgentHandler.Client(0, a1, a2, v4);
  sub_10001F93C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return Dictionary.init()();
}

uint64_t variable initialization expression of NANAgentHandler.activeClientList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NANAgentHandler.ActiveClient(0, a1, a2, a4);

  return Dictionary.init()();
}

uint64_t sub_1002BDB64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100275A88(a1);

  *a2 = v3;
  return result;
}

void sub_1002BDDB8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1002BDE08(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      sub_1002CA064(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002BDFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100594B08;
  swift_beginAccess();
  return sub_1002CB130(v1 + v3, a1);
}

uint64_t sub_1002BE020@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B818;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_1002BE098()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1002EB234();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002BE0E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_1002EB358(v4, Strong, v1, v2, v3);

  result = v6;
  if (!v6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1002BE12C(unint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    return 0x69646E6F70736552;
  }

  if (a2 >> 62 == 1)
  {
    return 0x73696C6261747345;
  }

  v3 = 0x74616E696D726554;
  if (a2 == 0x8000000000000000 && a1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 | a2 ^ 0x8000000000000000)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (__PAIR128__(0x8000000000000000, 1) >= __PAIR128__(a2, a1))
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002BE224(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Mirror.AncestorRepresentation();
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v11 = v15 - v10;
  v15[2] = a1;
  v15[3] = a2;
  v15[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  _s17ResponderInstanceC5StateOMa_0(0, a3, a4, v13);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  sub_100167804(v9);
  sub_1002CAEE4(a1, a2);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002BE3EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v6 = qword_100594B30;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v6, v5, v2);
  return swift_endAccess();
}

unint64_t sub_1002BE4F0()
{
  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  return *(v1 + 2) | (*(v1 + 4) << 16);
}

uint64_t sub_1002BE540()
{
  v1 = *(v0 + qword_100594B38 + 8);
  if (!(v1 >> 62))
  {
    return 1;
  }

  if (v1 >> 62 == 2)
  {
    v2 = *(v0 + qword_100594B38);
    if (__PAIR128__(v1, v2) < __PAIR128__(0x8000000000000000, 4))
    {
      return (0xBu >> (v2 & 0xF)) & 1;
    }
  }

  return 0;
}

BOOL sub_1002BE59C()
{
  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  sub_100012400(v1 + 136, v4, &unk_1005974B0, &qword_1004AFCF0);
  v2 = v4[40] != 255;
  sub_100016290(v4, &unk_1005974B0, &qword_1004AFCF0);
  return v2;
}

uint64_t sub_1002BE62C()
{
  if (*(v0 + qword_100594B38 + 8) >> 62 == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BE670(uint64_t a1)
{
  v2 = v1;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v13[-v6];
  v8 = qword_10059B848;
  swift_beginAccess();
  sub_100012400(v2 + v8, v7, &unk_100597330, &unk_100481FA0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  result = sub_100016290(v7, &unk_100597330, &unk_100481FA0);
  if (v11 == 1 || *(v2 + qword_10059B840) != a1)
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v10 + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_1000B1B78(v5, v2 + v8, &unk_100597330, &unk_100481FA0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1002BE864(uint64_t a1)
{
  v2 = *(v1 + qword_10059B840);
  *(v1 + qword_10059B840) = a1;
  return sub_1002BE670(v2);
}

uint64_t sub_1002BE87C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B848;
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_1002BE8E4()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + qword_100594B50);
  v21 = type metadata accessor for LowLatencyInternetRequesterPolicy(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), v3);
  v22 = &off_10057A348;
  *&v20 = v2;
  v23 = 1;
  v4 = v0 + qword_100594B08;
  swift_beginAccess();
  v5 = v2;
  sub_1000B1B78(&v20, (v4 + 136), &unk_1005974B0, &qword_1004AFCF0);
  result = swift_endAccess();
  v7 = qword_100594B48;
  if ((*(v0 + qword_100594B48) & 1) == 0)
  {
    sub_100012400((v4 + 136), &v20, &unk_1005974B0, &qword_1004AFCF0);
    if (v23 == 255)
    {
      return sub_100016290(&v20, &unk_1005974B0, &qword_1004AFCF0);
    }

    else if (v23)
    {
      sub_100029954(&v20, v17);
      *(v0 + v7) = 1;
      v8 = v18;
      v9 = v19;
      sub_100029B34(v17, v18);
      v10 = v4[2];
      v11 = v4[3];
      v12 = *(v4 + 1) << 16;
      if (*(v4 + 16) == 1)
      {
        v13 = 0;
        v14 = 0xF000000000000000;
      }

      else
      {
        v13 = *(v4 + 11);
        v14 = *(v4 + 12);
        sub_10000AB0C(v13, v14);
      }

      WitnessTable = swift_getWitnessTable(aQ_10, ObjectType);
      v16 = sub_10036DB68(ObjectType, WitnessTable);
      (*(v9 + 8))(v10 | (v11 << 8) | v12, v13, v14, v16 & 0xFFFFFFFFFFFFFFLL, v8, v9);
      sub_100017554(v13, v14);
      return sub_100002A00(v17);
    }

    else
    {
      return sub_10020C758(&v20);
    }
  }

  return result;
}

void sub_1002BEB14(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences(0, v10, v11, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v53 - v15;
  if (v1[qword_10059B850] != v3)
  {
    if (v1[qword_10059B850])
    {
      v17 = *&v1[qword_100594B00];
      swift_unownedRetainStrong();
      WiFiInterface.preferences.getter();

      v18 = Preferences.dynamicSDBNoReassoc.getter(v13);
      v58 = *(v14 + 8);
      v58(v16, v13);
      v19 = (v18 & 1);
      v59 = qword_10059B818;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v57 = v9;
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "dynamicSDB disableAutoJoin", v22, 2u);
        v9 = v57;
      }

      swift_unownedRetainStrong();
      swift_unownedRetainStrong();

      sub_1003EE8DC();

      if (v19)
      {
        v57 = v19;
        v23 = v2;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        v56 = v25;
        if (!os_log_type_enabled(v24, v25))
        {

          v48 = v62;
          v19 = v57;
          goto LABEL_24;
        }

        v26 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v63 = v54;
        *v26 = 67109378;
        v55 = AssociatedTypeWitness;
        v27 = v57;
        *(v26 + 4) = v57;
        *(v26 + 8) = 2080;
        swift_unownedRetainStrong();
        v53 = v24;
        WiFiInterface.preferences.getter();

        v28 = Preferences.autoInternetSharingOnInfraLost.getter(v13);
        v58(v16, v13);
        if (v28)
        {
          v29 = 0x64656C62616E65;
        }

        else
        {
          v29 = 0x64656C6261736964;
        }

        if (v28)
        {
          v30 = 0xE700000000000000;
        }

        else
        {
          v30 = 0xE800000000000000;
        }

        v31 = sub_100002320(v29, v30, &v63);

        *(v26 + 10) = v31;
        v19 = v27;
        v32 = v53;
        _os_log_impl(&_mh_execute_header, v53, v56, "dynamicSDB enabling SET_SDB with flag.no_reassoc=%u. expected to lose Infra shortly. autoInternetSharing is %s", v26, 0x12u);
        sub_100002A00(v54);
      }

      else
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "dynamicSDB enabling SET_SDB with reassoc. expect to keep Infra. To disconnect from Infra and set up IR, set 'wifip2p Preferences dynamicSDBNoReassoc=true' and 'wifip2p Preferences autoInternetSharingOnInfraLost=true' on both publisher and this device", v47, 2u);
        }
      }

      v48 = v62;
LABEL_24:
      swift_unownedRetainStrong();
      v49 = *(v17 + *(*v17 + 800));
      swift_unownedRetainStrong();

      (*(*v49 + 168))(v50);

      v51 = swift_getAssociatedConformanceWitness();
      v52 = *(v51 + 160);
      LOBYTE(v63) = 0;
      v52(1, v19, v48, v51);
      (*(v61 + 8))(v9, v48);
      return;
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "dynamicSDB reenableAutoJoin", v35, 2u);
    }

    v36 = *&v2[qword_100594B00];
    swift_unownedRetainStrong();
    swift_unownedRetainStrong();

    sub_1003EE874();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "dynamicSDB disabling SET_SDB", v39, 2u);
    }

    swift_unownedRetainStrong();
    v40 = *(v36 + *(*v36 + 800));
    swift_unownedRetainStrong();

    (*(*v40 + 168))(v41);

    v42 = v62;
    v43 = swift_getAssociatedConformanceWitness();
    v44 = *(v43 + 160);
    LOBYTE(v63) = 0;
    v44(0, 0, v42, v43);
    (*(v61 + 8))(v7, v42);
  }
}

void sub_1002BF508(char a1)
{
  v2 = *(v1 + qword_10059B850);
  *(v1 + qword_10059B850) = a1;
  sub_1002BEB14(v2);
}

void sub_1002BF520()
{
  v1 = v0;
  v2 = v0 + qword_100594B08;
  swift_beginAccess();
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + qword_10059B838;
  swift_beginAccess();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 64) = 4;

  v9 = *(v1 + qword_100594B00);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v10 = sub_1003F06BC();

  *(v1 + qword_100594B70) = v10;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v11 = sub_1003F06D8();

  *(v1 + qword_100594B78) = v11;
  swift_unownedRetainStrong();
  v12 = *(v9 + *(*v9 + 800));
  swift_unownedRetainStrong();

  (*(*v12 + 200))(v13);

  WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v12) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  *(v8 + 105) = v12 & 1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  sub_1003EB084();
  v15 = v14;
  v17 = v16;

  if (v15)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v8 + 100) = v17;
}

void sub_1002BF788(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v92) = a2;
  v94 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  v101 = AssociatedTypeWitness;
  __chkstk_darwin();
  v99 = &v89 - v5;
  v6 = swift_checkMetadataState();
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin();
  v95 = &v89 - v7;
  v93 = type metadata accessor for DispatchTime();
  v8 = *(v93 - 8);
  __chkstk_darwin();
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v89 - v11;
  v13 = (v2 + qword_100594B58);
  v14 = *(v2 + qword_100594B58 + 8);
  v91 = v13;
  if (v14)
  {
    v15 = *v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = v3 + qword_10059B838;
  swift_beginAccess();
  *v17 = v15;
  *(v17 + 8) = v16;

  *(v17 + 68) = *(v3 + qword_100594B68);
  swift_endAccess();
  v18 = *(v3 + qword_100594B00);
  v19 = swift_unownedRetainStrong();
  sub_10040CAE8(v19, v20, v21, v22);

  v23 = sub_100337438();

  *(v17 + 48) = v23;
  v24 = swift_unownedRetainStrong();
  sub_10040CAE8(v24, v25, v26, v27);

  v28 = sub_10033746C();

  *(v17 + 40) = v28;
  v29 = swift_unownedRetainStrong();
  sub_10040CAE8(v29, v30, v31, v32);

  v34 = sub_100337590(v33);

  *(v17 + 56) = v34;
  if ((v94 + 1) >= 6)
  {
    v35 = 5;
  }

  else
  {
    v35 = 0x50403020501uLL >> (8 * (v94 + 1));
  }

  *(v17 + 33) = v35;
  *(v17 + 34) = v92;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v36 = DispatchTime.uptimeNanoseconds.getter();
  v37 = v8;
  v38 = *(v8 + 8);
  v39 = v12;
  v40 = v93;
  v38(v39, v93);
  (*(v37 + 16))(v10, v3 + qword_100594B28, v40);
  v41 = DispatchTime.uptimeNanoseconds.getter();
  v38(v10, v40);
  if (v36 < v41)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v17 + 88) = (v36 - v41) / 0xF4240;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v42 = sub_1003F06BC();

  v43 = *(v3 + qword_100594B70);
  v44 = v42 >= v43;
  v45 = v42 - v43;
  if (!v44)
  {
    goto LABEL_35;
  }

  *(v17 + 132) = v45;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v46 = sub_1003F06D8();

  v47 = *(v3 + qword_100594B78);
  v44 = v46 >= v47;
  v48 = v46 - v47;
  if (!v44)
  {
    goto LABEL_36;
  }

  *(v17 + 136) = v48;
  v49 = v3 + qword_100594B08;
  swift_beginAccess();
  if (*(v49 + 72))
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v50 = 1;
  }

  *(v17 + 65) = v50 & 1;
  if (*(v49 + 72) && *(v49 + 72) == 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v17 + 66) = v51 & 1;
  if (*(v49 + 72) && *(v49 + 72) != 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v17 + 67) = v52 & 1;
  v53 = *(v3 + qword_100594B10);
  if (v53)
  {
    v54 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
    swift_beginAccess();
    v55 = *(v53 + v54);
    memcpy(v112, v17, sizeof(v112));
    *(v17 + 160) = NANWiFiAwareStatistics.convertToAppStatus(reason:)(v55);
  }

  v56 = v91[1];
  if (!v56)
  {
LABEL_33:
    swift_unownedRetainStrong();
    v82 = v95;
    v83 = v96;
    v84 = v97;
    (*(v96 + 16))(v95, v18 + *(*v18 + 112), v97);

    v85 = v99;
    (*(AssociatedConformanceWitness + 152))(v84, AssociatedConformanceWitness);
    (*(v83 + 8))(v82, v84);
    memcpy(v103, v17, sizeof(v103));
    v86 = v101;
    v87 = swift_getAssociatedConformanceWitness();
    v88 = *(v87 + 32);
    sub_1002CB02C(v103, &v102);
    v88(v103, v86, v87);
    sub_1002CB088(v103);
    (*(v100 + 8))(v85, v86);
    return;
  }

  v57 = *v91;
  swift_unownedRetainStrong();

  sub_10040CAE8(v58, v59, v60, v61);

  v62 = sub_100337438();

  if ((v62 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v62 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v63 = swift_unownedRetainStrong();
  sub_10040CAE8(v63, v64, v65, v66);

  v67 = sub_10033746C();

  if ((v67 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v67 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v68 = swift_unownedRetainStrong();
  sub_10040CAE8(v68, v69, v70, v71);

  v72 = sub_100337594();

  if ((v72 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!(v72 >> 16))
  {
    v94 = *(v17 + 88);
    LODWORD(v93) = *(v17 + 64);
    swift_unownedRetainStrong();
    v73 = *(*v18 + 112);
    v91 = v62;
    v92 = v56;
    v74 = v95;
    v75 = v96;
    v76 = *(v96 + 16);
    v90 = v57;
    v77 = v97;
    v76(v95, v18 + v73, v97);

    v78 = v67;
    v79 = v99;
    (*(AssociatedConformanceWitness + 152))(v77, AssociatedConformanceWitness);
    (*(v75 + 8))(v74, v77);
    v104[0] = v90;
    v104[1] = v92;
    v105 = v91;
    v106 = v78;
    v107 = v72;
    v108 = 0u;
    memset(v109, 0, 26);
    v109[26] = v93;
    *v110 = v103[0];
    *&v110[3] = *(v103 + 3);
    v111 = v94;
    v80 = v101;
    v81 = swift_getAssociatedConformanceWitness();
    (*(v81 + 40))(v104, v80, v81);
    sub_1002CB0DC(v104);
    (*(v100 + 8))(v79, v80);
    goto LABEL_33;
  }

LABEL_42:
  __break(1u);
}

id sub_1002C01C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = *&v1[qword_100594B38 + 8];
  if (v7 < 0 && (v8 = *&v1[qword_100594B38], __PAIR128__(v7 & 0x7FFFFFFFFFFFFFFFLL, v8) >= 2))
  {
    if (v8 ^ 2 | v7 & 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *&v1[qword_100594B00];
    swift_unownedRetainStrong();
    v10 = *(*v9 + 96);
    swift_beginAccess();
    (*(v4 + 16))(v6, v9 + v10, AssociatedTypeWitness);

    v11 = &v1[qword_100594B08];
    swift_beginAccess();
    v12 = *(v11 + 10);
    v13 = *(v11 + 4);
    v14 = *v11;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 240))(v14, v13 | (v12 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
  }

  sub_1002C057C(-1, 0x64657361656C6572, 0xE800000000000000, 44);
  *&v1[qword_100594B10] = 0;

LABEL_5:
  sub_1002C046C(v1);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "dealloc");
}

void sub_1002C046C(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v1;
    *v4 = v1;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Destroyed %@", v3, 0xCu);
    sub_100016290(v4, &qword_10058B780, &qword_100480AC0);
  }
}

void sub_1002C057C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = swift_isaMask & *v4;
  v11 = v4;

  v12 = Logger.logObject.getter();
  v120 = v10;
  if (a1 == 2)
  {
    v13 = static os_log_type_t.default.getter();
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
  }

  v14 = v13;

  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v122[0] = v17;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v5;
    *(v15 + 12) = 2080;
    v18 = v11;
    *(v15 + 14) = sub_100002320(a2, a3, v122);
    _os_log_impl(&_mh_execute_header, v12, v14, "%@ was terminated because %s", v15, 0x16u);
    sub_100016290(v16, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v17);
  }

  v19 = qword_100594B40;
  v20 = &unk_100594000;
  if (*(v11 + qword_100594B40) == 1)
  {
    v117 = qword_100594B40;
    v119 = a4;
    v118 = sub_1002C7410();
    v21 = v11 + qword_100594B08;
    swift_beginAccess();
    v22 = v21[8];
    v23 = v21[9];
    v24 = v21[10];
    v25 = v21[11];
    v26 = v21[12];
    v114 = v21;
    v27 = v21[13];
    v28 = (v11 + qword_100594B18);
    v29 = *(v11 + qword_100594B18 + 8);
    v112 = v11 + qword_100594B18;
    if (v29 >> 60 == 15)
    {
      v30 = v22 | (v23 << 8) | (v24 << 16) | (v25 << 24) | (v26 << 32) | (v27 << 40);
      v31 = WiFiAddress.ipv6LinkLocalAddress.getter(v30);
      v33 = v32;
      v115 = v34;
      v36 = v35;
    }

    else
    {
      v38 = *v28;
      sub_10000AB0C(*v28, v29);
      v109 = InterfaceIdentifier.ipv6Address.getter(v38, v29);
      v110 = v39;
      v115 = v40;
      v42 = v41;
      sub_100017554(v38, v29);
      v43 = v22 | (v23 << 8) | (v24 << 16) | (v25 << 24);
      v36 = v42;
      v31 = v109;
      v33 = v110;
      v30 = v43 | (v26 << 32) | (v27 << 40);
    }

    v44 = (*(*v118 + 416))(v122);
    v46 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, *(v120 + 80), *(*(v120 + 88) + 8), v45);
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v30, v31, v33, v115, v36, v46);
    v44(v122, 0);

    v47 = sub_1002C7410();
    v48 = *(v11 + qword_100594B00);
    swift_unownedRetainStrong();
    v49 = *(v48 + *(*v48 + 472));

    a4 = v119;
    if (v49)
    {

      v37 = a1;
      v20 = &unk_100594000;
      if (v47 == v49)
      {
        v120 = v46;
        swift_unownedRetainStrong();
        v50 = v112;
        v51 = v114[10];
        v52 = v114[11];
        v53 = v114[12];
        v54 = v114[13];
        v55 = *(v112 + 1);
        v56 = v114[8] | (v114[9] << 8);
        if (v55 >> 60 == 15)
        {
          v57 = v56 | (v51 << 16) | (v52 << 24) | (v53 << 32) | (v54 << 40);
          v58 = WiFiAddress.ipv6LinkLocalAddress.getter(v57);
          v60 = v59;
          v62 = v61;
          v64 = v63;
        }

        else
        {
LABEL_34:
          v80 = *v50;
          sub_10000AB0C(*v50, v55);
          v81 = InterfaceIdentifier.ipv6Address.getter(v80, v55);
          v111 = v82;
          v113 = v81;
          v116 = v83;
          v85 = v84;
          sub_100017554(v80, v55);
          v86 = v56 | (v51 << 16);
          v64 = v85;
          v87 = v86 | (v52 << 24) | (v53 << 32);
          v60 = v111;
          v58 = v113;
          v57 = v87 | (v54 << 40);
          v62 = v116;
        }

        swift_beginAccess();
        WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v57, v58, v60, v62, v64, v120);
        swift_endAccess();

        v37 = a1;
        v20 = &unk_100594000;
        a4 = v119;
      }
    }

    else
    {

      v37 = a1;
      v20 = &unk_100594000;
    }

    v19 = v117;
  }

  else
  {
    v37 = a1;
  }

  sub_1002BF788(v37, a4);
  sub_1002CA7EC(3, 0x8000000000000000);
  v52 = &unk_10059B000;
  if (*(v11 + v19) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v66 = Strong;
      v67 = sub_1002EB914();

      if (v67)
      {
        v68 = swift_unownedRetainStrong();
        sub_10040CAE8(v68, v69, v70, v71);

        v72 = v11 + v20[353];
        swift_beginAccess();
        LOBYTE(v72) = sub_10033787C(*(v72 + 4) | (*(v72 + 10) << 16));

        if ((v72 & 1) == 0)
        {
          v77 = sub_1002BE098();
          v55 = v77;
          if (v77 >> 62)
          {
            goto LABEL_37;
          }

          v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v78)
          {
LABEL_38:

            v37 = a1;
            v20 = &unk_100594000;
            goto LABEL_39;
          }

LABEL_25:
          v56 = 0;
          v53 = v55 & 0xC000000000000001;
          v54 = v55 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v53)
            {
              v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v79 = v56 + 1;
              if (__OFADD__(v56, 1))
              {
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            else
            {
              if (v56 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_37:
                v78 = _CocoaArrayWrapper.endIndex.getter();
                if (!v78)
                {
                  goto LABEL_38;
                }

                goto LABEL_25;
              }

              v51 = *(v55 + 8 * v56 + 32);
              swift_unknownObjectRetain();
              v79 = v56 + 1;
              if (__OFADD__(v56, 1))
              {
                goto LABEL_33;
              }
            }

            *&v122[0] = v51;
            sub_1002C9DA8(v122, v11);
            swift_unknownObjectRelease();
            ++v56;
            if (v79 == v78)
            {
              goto LABEL_38;
            }
          }
        }
      }
    }

    v73 = sub_1002BE0E0();
    if (v73)
    {
      v74 = v73;
      sub_1002CAF78();
      v75 = v11 + v20[353];
      swift_beginAccess();
      v76 = WiFiAwarePublisherDataSessionHandle.init(_:)(*v75 | (v75[8] << 8) | (v75[9] << 16) | (*(v75 + 10) << 24));
      [v74 publishDataTerminatedForHandle:v76 reason:2];

      swift_unknownObjectRelease();
    }
  }

LABEL_39:
  v88 = swift_unknownObjectWeakLoadStrong();
  if (v88)
  {
    v89 = v88;
    v90 = v11 + v20[353];
    swift_beginAccess();
    sub_1002EB9C8(*v90 | (v90[8] << 8) | (v90[9] << 16) | (*(v90 + 10) << 24));
  }

  v91 = *(v11 + qword_10059B828);
  if (v91)
  {
    v92 = *(v11 + qword_10059B828 + 8);
    sub_1002CAF78();
    v93 = v11 + v20[353];
    swift_beginAccess();
    v94 = *v93 | (v93[8] << 8) | (v93[9] << 16) | (*(v93 + 10) << 24);

    v95 = WiFiAwarePublisherDataSessionHandle.init(_:)(v94);
    v91(v95, v37);
    sub_100010520(v91, v92);
  }

  v96 = (v11 + qword_10059B820);
  v97 = *(v11 + qword_10059B820);
  if (v97)
  {
    v98 = v96[1];

    v97(0);
    sub_100010520(v97, v98);
  }

  swift_unknownObjectWeakAssign();
  v99 = *v96;
  v100 = v96[1];
  *v96 = 0;
  v96[1] = 0;
  sub_100010520(v99, v100);
  if (v37 != -1)
  {
    v101 = swift_unownedRetainStrong();
    sub_10040CAE8(v101, v102, v103, v104);

    sub_100339170(v11);
  }

  v105 = qword_100594B48;
  if (*(v11 + qword_100594B48) == 1)
  {
    v106 = v11 + v20[353];
    swift_beginAccess();
    sub_100012400((v106 + 136), v122, &unk_1005974B0, &qword_1004AFCF0);
    if (v123 == 255)
    {
      sub_100016290(v122, &unk_1005974B0, &qword_1004AFCF0);
    }

    else if (v123)
    {
      sub_100029954(v122, v124);
      v107 = v125;
      v108 = v126;
      sub_100029B34(v124, v125);
      (*(v108 + 16))(*(v106 + 1) | (*(v106 + 1) << 16), v107, v108);
      *(v11 + v105) = 0;
      sub_100002A00(v124);
    }

    else
    {
      sub_10020C758(v122);
    }
  }
}

uint64_t sub_1002C10F4(uint64_t a1)
{
  swift_unownedRelease();
  sub_1002CB18C(a1 + qword_100594B08);

  v2 = qword_10059B818;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_100017554(*(a1 + qword_100594B18), *(a1 + qword_100594B18 + 8));

  sub_100010520(*(a1 + qword_10059B820), *(a1 + qword_10059B820 + 8));
  sub_100010520(*(a1 + qword_10059B828), *(a1 + qword_10059B828 + 8));
  swift_unknownObjectWeakDestroy();
  v4 = qword_100594B28;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 8);
  v6(a1 + v4, v5);
  v6(a1 + qword_100594B30, v5);
  sub_1002CAF2C(*(a1 + qword_100594B38), *(a1 + qword_100594B38 + 8));

  memcpy(v8, (a1 + qword_10059B838), sizeof(v8));
  sub_1002CB088(v8);

  return sub_100016290(a1 + qword_10059B848, &unk_100597330, &unk_100481FA0);
}

void sub_1002C12E0()
{
  v2 = v0;
  v3 = swift_isaMask & *v0;
  v19[2] = *(v3 + 0x58);
  v19[1] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = v19 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v12)
  {
    v14 = *(v2 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CBA8();

    if (!v1)
    {
      swift_unownedRetainStrong();
      v15 = *(*v14 + 96);
      swift_beginAccess();
      v16 = v21;
      (*(v21 + 16))(v6, v14 + v15, AssociatedTypeWitness);

      v17 = qword_100594B08;
      swift_beginAccess();
      sub_1002CB130(v2 + v17, v20);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 280))(v20, AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_1002CB18C(v20);
      (*(v16 + 8))(v6, AssociatedTypeWitness);
      sub_1002BF520();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002C161C()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v30 - v4;
  if (*&v0[qword_100594B38 + 8] >> 62)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v0[qword_100594B38];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v8 = Strong[qword_10059B898], Strong, v8 != 1))
    {
      v15 = v1;
      v10 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v15;
        *v18 = v1;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v10, v16, "%@ cannot retry response because the associated publisher is no longer active", v17, 0xCu);
        sub_100016290(v18, &qword_10058B780, &qword_100480AC0);
      }

      goto LABEL_10;
    }

    v9 = v1;
    v10 = Logger.logObject.getter();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v1;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "%@ is being terminated because response retries exceeded", v12, 0xCu);
        sub_100016290(v13, &qword_10058B780, &qword_100480AC0);
      }

LABEL_10:

      sub_1002C1BE0();
      return;
    }

    v31 = v3;
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v20))
    {
      v21 = swift_slowAlloc();
      v32 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v32;
      *v23 = v1;
      v24 = v23;
      v25 = v32;
      _os_log_impl(&_mh_execute_header, v10, v20, "%@ is being retried", v22, 0xCu);
      sub_100016290(v24, &qword_10058B780, &qword_100480AC0);

      v9 = v32;
    }

    v26 = *&v9[qword_100594B00];
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v27 = *(*v26 + 96);
    swift_beginAccess();
    (*(v31 + 16))(v5, v26 + v27, AssociatedTypeWitness);

    v28 = qword_100594B08;
    swift_beginAccess();
    sub_1002CB130(&v9[v28], v33);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 280))(v33, AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1002CB18C(v33);
    (*(v31 + 8))(v5, AssociatedTypeWitness);
    sub_1002CA7EC((v6 + 1), 0);
  }
}

void sub_1002C1BE0()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = &v54 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v15 = *&v1[qword_100594B38 + 8];
    if (v15 < 0 && (v16 = *&v1[qword_100594B38], __PAIR128__(v15 & 0x7FFFFFFFFFFFFFFFLL, v16) >= 2))
    {
      if (v16 ^ 2 | v15 & 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = v1;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          *(v51 + 4) = v48;
          *v52 = v1;
          v53 = v48;
          _os_log_impl(&_mh_execute_header, v49, v50, "%@ was already in process of termination, ignoring request to terminate", v51, 0xCu);
          sub_100016290(v52, &qword_10058B780, &qword_100480AC0);
        }
      }

      else
      {
        sub_1002C057C(2, 0x7165722072657375, 0xEC00000074736575, 43);
      }
    }

    else
    {
      v17 = v1;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v54 = v3;
        v22 = v2;
        v23 = AssociatedTypeWitness;
        v24 = v7;
        v25 = v5;
        v26 = v21;
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v1;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "%@ will attempt to stop", v20, 0xCu);
        sub_100016290(v26, &qword_10058B780, &qword_100480AC0);
        v5 = v25;
        v7 = v24;
        AssociatedTypeWitness = v23;
        v2 = v22;
        v3 = v54;
      }

      sub_1002CA7EC(3, 0x8000000000000000);
      v28 = *&v17[qword_100594B00];
      v29 = swift_unownedRetainStrong();
      sub_10040CAE8(v29, v30, v31, v32);

      swift_beginAccess();

      v33 = &v17[qword_100594B08];
      swift_beginAccess();
      v34 = *(v33 + 6);
      v57 = *(v33 + 2);
      v58 = v34;
      v36 = _s17InitiatorInstanceCMa_0(255, v3, v2, v35);
      v38 = _s17ResponderInstanceCMa_0(255, v3, v2, v37);
      type metadata accessor for Either(0, v36, v38, v39);
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v40 = v56;
      if (v56 != 255)
      {
        v41 = v55;
        sub_100428A84(v55, v56 & 1, v3, v2);
        sub_1002CB018(v41, v40);
      }

      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v42 = *(*v28 + 96);
      swift_beginAccess();
      (*(v5 + 16))(v7, v28 + v42, AssociatedTypeWitness);

      v43 = *(v33 + 10);
      v44 = v7;
      v45 = *(v33 + 4);
      v46 = *v33;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 240))(v46, v45 | (v43 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v5 + 8))(v44, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C22C0(void *a1)
{
  v729 = a1;
  ObjectType = swift_getObjectType();
  v2 = swift_isaMask & *v1;
  v727 = *(v2 + 0x58);
  v3 = *(v727 + 8);
  v730 = v1;
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  isa = AssociatedTypeWitness[-1].isa;
  v724 = AssociatedTypeWitness;
  __chkstk_darwin();
  v722 = (&v663 - v6);
  v705 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  __chkstk_darwin();
  v693 = &v663 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v695 = &v663 - v8;
  swift_getAssociatedTypeWitness();
  v701 = v3;
  v728 = v4;
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Preferences(0, v9, AssociatedConformanceWitness, v11);
  v703 = *(v12 - 8);
  v704 = v12;
  __chkstk_darwin();
  v702 = &v663 - v13;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v696 = &v663 - v14;
  v719 = type metadata accessor for UUID();
  v725 = *(v719 - 8);
  __chkstk_darwin();
  v684 = &v663 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v694 = &v663 - v16;
  v689 = v17;
  __chkstk_darwin();
  v713 = &v663 - v18;
  v691 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v685 = &v663 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v700 = &v663 - v20;
  __chkstk_darwin();
  v690 = &v663 - v21;
  __chkstk_darwin();
  v699 = (&v663 - v22);
  __chkstk_darwin();
  v698 = &v663 - v23;
  __chkstk_darwin();
  v718 = &v663 - v24;
  __chkstk_darwin();
  v687 = &v663 - v25;
  __chkstk_darwin();
  v688 = &v663 - v26;
  v27 = type metadata accessor for Logger();
  v710 = *(v27 - 8);
  v711 = v27;
  __chkstk_darwin();
  v709 = &v663 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  __chkstk_darwin();
  v708 = &v663 - v29;
  v720 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v697 = (&v663 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v686 = &v663 - v31;
  __chkstk_darwin();
  v707 = &v663 - v32;
  __chkstk_darwin();
  v717 = &v663 - v33;
  __chkstk_darwin();
  v706 = (&v663 - v34);
  v716 = type metadata accessor for DispatchTime();
  v712 = *(v716 - 1);
  __chkstk_darwin();
  v714 = &v663 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v715 = (&v663 - v36);
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v721 = &v663 - v37;
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v39 = &v663 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v663 - v40;
  __chkstk_darwin();
  v43 = &v663 - v42;
  __chkstk_darwin();
  v45 = &v663 - v44;
  v46 = type metadata accessor for DispatchPredicate();
  v47 = *(v46 - 8);
  __chkstk_darwin();
  v49 = &v663 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v692 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v50 = *v692;
  *v49 = *v692;
  (*(v47 + 104))(v49, enum case for DispatchPredicate.onQueue(_:), v46);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v47 + 8))(v49, v46);
  if ((v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_308;
  }

  v52 = v729;
  sub_1002CB538(v729, v45, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v45;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1002CB538(v45, v41, type metadata accessor for DriverEvent);
    if (*v41 != 1)
    {
      goto LABEL_46;
    }

    v68 = *&v730[qword_100594B38 + 8];
    if (v68 >> 62 == 2 && v68 == 0x8000000000000000 && *&v730[qword_100594B38] == 3)
    {
      sub_1002C057C(2, 0xD00000000000002ALL, 0x80000001004BE5B0, 39);
    }

    else
    {
      v89 = ObjectType;
      WitnessTable = swift_getWitnessTable(aQ_10, ObjectType);
      if (sub_10036DCD0(v89, WitnessTable))
      {
        sub_1002CA7EC(2, 0x8000000000000000);
      }
    }

    return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_46;
  }

  sub_1002CB538(v45, v43, type metadata accessor for DriverEvent);
  memcpy(v744, v43, 0x16AuLL);
  memcpy(v745, v43, 0x16AuLL);
  v54 = sub_100185198(v745);
  if (v54 <= 7)
  {
    if (v54 != 4)
    {
      if (v54 == 5)
      {
        v683 = v45;
        NANBitmap.Channel.operatingClass.getter();
        v137 = *(v136 + 8);
        v138 = *(v136 + 9);
        v139 = *(v136 + 10);
        v140 = *(v136 + 16);
        v141 = v730;
        v142 = v730;
        sub_100185558(v744, v731);
        v143 = v142;
        sub_100185558(v744, v731);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v729 = v143;
          v148 = v147;
          v149 = swift_slowAlloc();
          v728 = v140;
          v150 = v149;
          *&v731[0] = v149;
          *v146 = 138412546;
          *(v146 + 4) = v729;
          *v148 = v141;

          *(v146 + 12) = 2080;
          v151 = WiFiAddress.description.getter(v137 | (v138 << 8) | (v139 << 16));
          v153 = sub_100002320(v151, v152, v731);

          *(v146 + 14) = v153;
          sub_1001854F8(v744);
          sub_1001854F8(v744);
          _os_log_impl(&_mh_execute_header, v144, v145, "%@ received a new datapath request from %s", v146, 0x16u);
          sub_100016290(v148, &qword_10058B780, &qword_100480AC0);
          v143 = v729;

          sub_100002A00(v150);
          v140 = v728;
        }

        else
        {

          sub_1001854F8(v744);
          sub_1001854F8(v744);
        }

        v190 = v721;
        Array<A>.retrieve(attribute:)(41, v140, v721);
        sub_1001854F8(v744);
        v191 = type metadata accessor for NANAttribute(0);
        v192 = (*(*(v191 - 8) + 48))(v190, 1, v191);
        v49 = v683;
        if (v192 == 1)
        {
          sub_100016290(v190, &unk_100595C00, &qword_10048F790);
        }

        else if (swift_getEnumCaseMultiPayload() == 36)
        {
          v193 = v190[1];
          v731[0] = *v190;
          v731[1] = v193;
          v194 = v190[3];
          v731[2] = v190[2];
          v731[3] = v194;
          v195 = *&v731[2];
          v196 = &v143[qword_100594B18];
          v197 = *&v143[qword_100594B18];
          v198 = *&v143[qword_100594B18 + 8];
          *v196 = *(&v193 + 1);
          *(v196 + 1) = v195;
          sub_100286C2C(*(&v193 + 1), v195);
          sub_100017554(v197, v198);
          sub_10027A06C(v731);
        }

        else
        {
          sub_1002CB5A0(v190, type metadata accessor for NANAttribute);
        }

        sub_1002CA7EC(0, 0x8000000000000000);
        return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
      }

      v55 = v730;
      if (v54 == 7)
      {
        NANBitmap.Channel.operatingClass.getter();
        v57 = *(v56 + 1);
        v58 = v55;
        sub_100185558(v744, v731);
        v59 = v58;
        sub_100185558(v744, v731);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = v45;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v734[0] = v65;
          *v63 = 138412546;
          *(v63 + 4) = v59;
          *v64 = v55;

          *(v63 + 12) = 2080;
          if (v57)
          {
            v66 = 0xE800000000000000;
            if (v57 == 1)
            {
              v67 = 0x747065636361;
            }

            else
            {
              v67 = 0x7463656A6572;
            }

            v236 = v67 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
          }

          else
          {
            v236 = 0x65756E69746E6F63;
            v66 = 0xE900000000000064;
          }

          v238 = sub_100002320(v236, v66, v734);

          *(v63 + 14) = v238;
          sub_1001854F8(v744);
          sub_1001854F8(v744);
          memcpy(v731, v744, 0x16AuLL);
          NANBitmap.Channel.operatingClass.getter();

          _os_log_impl(&_mh_execute_header, v60, v61, "%@ received datapath confirmation with status %s", v63, 0x16u);
          sub_100016290(v64, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v65);

          v49 = v62;
        }

        else
        {
          sub_1001854F8(v744);

          sub_1001854F8(v744);
          sub_1001854F8(v744);
        }

        return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
      }

      goto LABEL_45;
    }

    NANBitmap.Channel.operatingClass.getter();
    v92 = *(v91 + 7);
    v93 = *(v91 + 8);
    v94 = &v730[qword_100594B38];
    v95 = *&v730[qword_100594B38];
    v96 = *&v730[qword_100594B38 + 8];
    if (!(v96 >> 62) && v92 == 5)
    {
      if (*(v91 + 8))
      {
        v683 = v49;
        v97 = v730;
        v98 = v730;
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *&v731[0] = v103;
          *v101 = 138412802;
          *(v101 + 4) = v98;
          *v102 = v97;

          *(v101 + 12) = 2080;
          if (v93 == 1)
          {
            v105 = 0x756F2064656D6974;
            v104 = 0xE900000000000074;
          }

          else if (v93 == 2)
          {
            v104 = 0xE700000000000000;
            v105 = 0x646570706F7264;
          }

          else
          {
            v105 = 0xD000000000000010;
            v104 = 0x80000001004BA2F0;
          }

          v354 = sub_100002320(v105, v104, v731);

          *(v101 + 14) = v354;
          *(v101 + 22) = 2048;
          *(v101 + 24) = v95;
          _os_log_impl(&_mh_execute_header, v99, v100, "%@ failed to send datapath response, with status %s, for retry #%ld", v101, 0x20u);
          sub_100016290(v102, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v103);
        }

        else
        {
        }

        v49 = v683;
        sub_1002C161C();
      }

      else
      {
        sub_1002CA7EC(1, 0x8000000000000000);
      }

      return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
    }

    v172 = v730;
    sub_1002CAEE4(v95, v96);
    v173 = Logger.logObject.getter();
    if (v93)
    {
      v174 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v173, v174))
      {
        v724 = v173;
        LODWORD(v729) = v174;
        v683 = v49;
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        ObjectType = swift_slowAlloc();
        *&v731[0] = ObjectType;
        *v175 = 138413058;
        *(v175 + 4) = v172;
        v725 = v176;
        *v176 = v730;
        *(v175 + 12) = 2080;
        v177 = NANManagementFrameType.description.getter(v92);
        v179 = sub_100002320(v177, v178, v731);

        *(v175 + 14) = v179;
        *(v175 + 22) = 2080;
        if (v93 == 1)
        {
          v181 = 0x756F2064656D6974;
          v180 = 0xE900000000000074;
        }

        else if (v93 == 2)
        {
          v180 = 0xE700000000000000;
          v181 = 0x646570706F7264;
        }

        else
        {
          v181 = 0xD000000000000010;
          v180 = 0x80000001004BA2F0;
        }

        v249 = v724;
        v347 = sub_100002320(v181, v180, v731);

        *(v175 + 24) = v347;
        *(v175 + 32) = 2080;
        v348 = *v94;
        v349 = *(v94 + 1);
        sub_1002CAEE4(*v94, v349);

        v350 = sub_1002BE12C(v348, v349);
        v352 = v351;
        sub_1002CAF2C(v348, v349);
        v353 = sub_100002320(v350, v352, v731);

        *(v175 + 34) = v353;
        sub_1002CAF2C(v95, v96);

        _os_log_impl(&_mh_execute_header, v249, v729, "%@ failed to transmit frame %s with status %s in %s", v175, 0x2Au);
        sub_100016290(v725, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();

        goto LABEL_147;
      }
    }

    else
    {
      v222 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v173, v222))
      {
        v223 = swift_slowAlloc();
        v683 = v49;
        v224 = v223;
        v225 = swift_slowAlloc();
        ObjectType = v225;
        v729 = swift_slowAlloc();
        *&v731[0] = v729;
        *v224 = 138412802;
        *(v224 + 4) = v172;
        *v225 = v730;
        *(v224 + 12) = 2080;
        v226 = NANManagementFrameType.description.getter(v92);
        v228 = sub_100002320(v226, v227, v731);
        LODWORD(v730) = v222;
        v229 = v228;

        *(v224 + 14) = v229;
        *(v224 + 22) = 2080;
        v230 = *v94;
        v231 = *(v94 + 1);
        sub_1002CAEE4(*v94, v231);

        v232 = sub_1002BE12C(v230, v231);
        v234 = v233;
        sub_1002CAF2C(v230, v231);
        v235 = sub_100002320(v232, v234, v731);

        *(v224 + 24) = v235;
        sub_1002CAF2C(v95, v96);

        _os_log_impl(&_mh_execute_header, v173, v730, "%@ successfully transmitted frame %s in %s", v224, 0x20u);
        sub_100016290(ObjectType, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();

        v49 = v683;

        return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
      }
    }

    sub_1002CAF2C(v95, v96);
    return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
  }

  if (v54 == 8)
  {
    NANBitmap.Channel.operatingClass.getter();
    v677 = *v106;
    v107 = v106[1];
    v682 = v106[2];
    v681 = v106[3];
    v680 = v106[4];
    v108 = v106[5];
    v109 = v106[6];
    v669 = v106[7];
    v675 = v106[8];
    v674 = v106[9];
    v673 = v106[10];
    v672 = v106[11];
    v671 = v106[12];
    v670 = v106[13];
    v110 = qword_10059B818;
    v111 = v730;
    v112 = v730;
    isa = v110;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    v115 = os_log_type_enabled(v113, v114);
    v729 = v112;
    v724 = v107;
    v683 = v49;
    v678 = v109;
    v679 = v108;
    if (v115)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v722 = swift_slowAlloc();
      *&v731[0] = v722;
      *v116 = 138412546;
      *(v116 + 4) = v112;
      *v117 = v111;

      *(v116 + 12) = 2080;
      v118 = WiFiAddress.description.getter(v724 | (v682 << 8) | (v681 << 16) | (v680 << 24) | (v108 << 32) | (v109 << 40));
      v120 = sub_100002320(v118, v119, v731);

      *(v116 + 14) = v120;
      v112 = v729;
      _os_log_impl(&_mh_execute_header, v113, v114, "%@ datapath established with %s", v116, 0x16u);
      sub_100016290(v117, &qword_10058B780, &qword_100480AC0);
      v49 = v683;
      v121 = v724;

      sub_100002A00(v722);
    }

    else
    {
      v121 = v107;
    }

    v182 = &v112[qword_100594B08];
    swift_beginAccess();
    if (*(v182 + 74) == 2)
    {
      v167 = Logger.logObject.getter();
      v183 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v167, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *&v731[0] = v185;
        *v184 = 136315394;
        v186 = WiFiAddress.description.getter(v121 | (v682 << 8) | (v681 << 16) | (v680 << 24) | (v679 << 32) | (v678 << 40));
        v188 = sub_100002320(v186, v187, v731);

        *(v184 + 4) = v188;
        *(v184 + 12) = 256;
        *(v184 + 14) = v677;
        _os_log_impl(&_mh_execute_header, v167, v183, "Established the datapath to %s[%hhu] even though we did not accept it in the datapath response. Force terminating it now", v184, 0xFu);
        sub_100002A00(v185);
      }

      goto LABEL_64;
    }

    v189 = *(v182 + 16);
    v721 = v182;
    if (v189 == 4)
    {
      v722 = 0;
    }

    else
    {
      v220 = *(v182 + 24);
      v219 = *(v182 + 32);
      sub_10000AB0C(v220, v219);
      v221 = NANServiceInfo.genericServiceProtocol.getter(v189, v220, v219);
      sub_1001842D0(v189, v220, v219);
      if (v221)
      {
        v722 = NANGenericServiceProtocol.apiDatapathServiceSpecificInfo.getter(v221);
      }

      else
      {
        v722 = 0;
      }

      v182 = v721;
    }

    v259 = v729;
    v260 = *(v729 + qword_100594B00);
    v261 = swift_unownedRetainStrong();
    sub_10040CAE8(v261, v262, v263, v264);

    v676 = sub_100337688(*(v182 + 2) | (*(v182 + 4) << 16));

    type metadata accessor for P2PTimer(0);
    v265 = v715;
    variable initialization expression of AWDLPeer.lastUpdated();
    v41 = DispatchTime.uptimeNanoseconds.getter();
    v266 = v712;
    v268 = v712 + 8;
    v267 = *(v712 + 8);
    v269 = v265;
    v270 = v716;
    v267(v269, v716);
    v271 = v714;
    (*(v266 + 16))(v714, v259 + qword_100594B28, v270);
    v272 = DispatchTime.uptimeNanoseconds.getter();
    v665 = v267;
    v666 = v268;
    v273 = (v267)(v271, v270);
    if (v41 < v272)
    {
      goto LABEL_316;
    }

    v274 = v259 + qword_10059B838;
    swift_beginAccess();
    *(v274 + 80) = &v41[-v272] / 0xF4240;
    v275 = (v259 + qword_100594B58);
    v276 = *(v259 + qword_100594B58 + 8);
    v277 = v720;
    if (v276)
    {
      v278 = (v259 + qword_100594B60);
      if ((*(v259 + qword_100594B60 + 4) & 1) == 0)
      {
        v279 = *v278;
        if (*v278 >= 1)
        {
          v280 = *v275;
          type metadata accessor for WiFiAwareMonitorClient(0);
          swift_allocObject();

          v281 = v280;
          v277 = v720;
          v282 = v279;
          v283 = v729;
          sub_10038982C(v281, v276, v282);
          *(v283 + qword_100594B10) = v284;
        }
      }
    }

    v664 = v275;
    swift_unownedRetainStrong();
    v285 = v260;
    v286 = (v681 << 16) | (v682 << 8) | (v680 << 24) | (v679 << 32) | (v678 << 40);
    v287 = v724;
    v288 = v706;
    sub_10040CD68(v286 | v724, v706);

    v289 = *(v288 + *(v277 + 72) + 8);
    sub_1002CB5A0(v288, type metadata accessor for NANPeer);
    if ((v289 & 0xFF00000000) == 0x300000000)
    {
      v290 = 0;
    }

    else
    {
      v290 = BYTE6(v289);
    }

    *(v274 + 104) = v290;
    swift_unownedRetainStrong();
    v291 = v717;
    sub_10040CD68(v286 | v287, v717);

    v292 = sub_1002E0E3C();
    sub_1002CB5A0(v291, type metadata accessor for NANPeer);
    *(v274 + 106) = v292;
    swift_unownedRetainStrong();
    v293 = v707;
    sub_10040CD68(v286 | v287, v707);
    v712 = v285;

    v294 = v708;
    sub_100012400(v293 + *(v277 + 76), v708, &unk_100596880, &unk_1004B0F70);
    sub_1002CB5A0(v293, type metadata accessor for NANPeer);
    v295 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
    if ((*(*(v295 - 8) + 48))(v294, 1, v295) == 1)
    {
      sub_100016290(v294, &unk_100596880, &unk_1004B0F70);
      v296 = 0;
    }

    else
    {
      v296 = *(v294 + 4);
      sub_1002CB5A0(v294, type metadata accessor for NANAttribute.CustomDeviceInformation);
    }

    v297 = v730;
    v298 = (v296 >> 4) & 2;
    if ((v296 & 0x10) != 0)
    {
      LOBYTE(v298) = 1;
    }

    *(v274 + 32) = v298;
    v299 = v722;
    v300 = v722;
    v301 = v676;

    sub_1002CA7EC(v299, v301 | 0x4000000000000000);

    v707 = v300;

    v708 = qword_10059B830;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v304 = Strong;
      sub_1002EB8C0();
    }

    type metadata accessor for NANDatapathPerformanceInstance(0, v728, v727, v303);
    v305 = v721;
    v306 = *v721;
    v307 = v712;
    swift_unownedRetainStrong();
    v308 = v709;
    (*(v710 + 16))(v709, &isa[v297], v711);
    v309 = v308;
    v310 = v305;
    v311 = sub_10038F634(v306, v307, v286 | v287, v309);

    v312 = v729;
    *(v729 + qword_100594B80) = v311;

    v313 = *(v312 + qword_100594B40);
    v710 = v286;
    if (v313)
    {
LABEL_256:
      v584 = qword_100594B48;
      v585 = v705;
      if ((*(v312 + qword_100594B48) & 1) == 0)
      {
        sub_100012400(v310 + 136, v731, &unk_1005974B0, &qword_1004AFCF0);
        if (BYTE8(v731[2]) == 255)
        {
          sub_100016290(v731, &unk_1005974B0, &qword_1004AFCF0);
        }

        else
        {
          if (BYTE8(v731[2]))
          {
            sub_100029954(v731, v734);
            *(v312 + v584) = 1;
            v586 = v735;
            v587 = v310;
            v588 = v736;
            sub_100029B34(v734, v735);
            v589 = *(v587 + 2);
            v590 = *(v587 + 3);
            v591 = *(v587 + 4) << 16;
            if (*(v587 + 128) == 1)
            {
              v592 = 0;
              v593 = 0xF000000000000000;
            }

            else
            {
              v592 = *(v587 + 88);
              v593 = *(v587 + 96);
              sub_10000AB0C(v592, v593);
            }

            v640 = ObjectType;
            v641 = swift_getWitnessTable(aQ_10, ObjectType, v663);
            v642 = sub_10036DB68(v640, v641);
            (*(v588 + 8))(v589 | (v590 << 8) | v591, v592, v593, v642 & 0xFFFFFFFFFFFFFFLL, v586, v588);
            sub_100017554(v592, v593);
            sub_100002A00(v734);
LABEL_294:
            v49 = v683;
            v639 = v724;
            v310 = v721;
            v634 = v710;
LABEL_295:
            if ((*(v310 + 183) & 1) == 0)
            {
              v646 = swift_unknownObjectWeakLoadStrong();
              if (v646)
              {
                v647 = v646;
                if (*&v646[qword_10059B8B0])
                {

                  sub_100319568(v634 | v639, v676);
                }

                else
                {
                }
              }
            }

            return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
          }

          sub_10020C758(v731);
        }
      }

      swift_unownedRetainStrong();
      v594 = v702;
      WiFiInterface.preferences.getter();

      v595 = v704;
      v596 = Preferences.autoInternetSharingOnInfraLost.getter(v704);
      (*(v703 + 8))(v594, v595);
      if (v596)
      {
        swift_unownedRetainStrong();
        swift_unownedRetainStrong();

        v597 = v695;
        sub_1003EB210(v695);

        ObservableWiFiProperty.wrappedValue.getter(v585, v731);
        sub_100016290(v597, &qword_100594D50, &unk_1004AEBF0);
        if (*(&v731[0] + 1))
        {

          swift_unownedRetainStrong();
          swift_unownedRetainStrong();

          v598 = v693;
          sub_1003EB210(v693);

          v599 = *v692;
          v600 = swift_allocObject();
          v601 = v729;
          swift_unknownObjectWeakInit();
          v602 = v585;
          v603 = swift_allocObject();
          v604 = v727;
          v603[2] = v728;
          v603[3] = v604;
          v603[4] = v600;
          v605 = qword_100594B20;
          swift_beginAccess();
          v606 = v599;
          ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v606, (v601 + v605), sub_1002CB1E0, v603, v602, v731);
          swift_endAccess();

          sub_100016290(v598, &qword_100594D50, &unk_1004AEBF0);
          v607 = v731[0];
          v608 = WORD6(v731[1]);
          v609 = DWORD2(v731[1]);
          swift_bridgeObjectRetain_n();
          v610 = v601;
          v611 = Logger.logObject.getter();
          v612 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v611, v612))
          {
            LODWORD(v730) = v612;
            v613 = v609 | (v608 << 32);
            v614 = swift_slowAlloc();
            v728 = swift_slowAlloc();
            *&v731[0] = v728;
            *v614 = 136315650;

            if (*(&v607 + 1))
            {
              v615 = v607;
            }

            else
            {
              v615 = 0;
            }

            if (*(&v607 + 1))
            {
              v616 = *(&v607 + 1);
            }

            else
            {
              v616 = 0xE000000000000000;
            }

            if (*(&v607 + 1))
            {
              v617 = v613 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v617 = 0x300000000;
            }

            v618 = sub_100002320(v615, v616, v731);

            *(v614 + 4) = v618;
            swift_bridgeObjectRelease_n();
            *(v614 + 12) = 2080;
            v619 = Optional<A>.description.getter(v617);
            v621 = sub_100002320(v619, v620, v731);

            *(v614 + 14) = v621;
            swift_bridgeObjectRelease_n();
            *(v614 + 22) = 2080;
            v622 = *(v601 + v605);
            if (v622)
            {
              v623 = v725;
              v624 = v694;
              v625 = v611;
              v626 = v719;
              (*(v725 + 16))(v694, v622 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id, v719);
              v627 = UUID.uuidString.getter();
              v629 = v628;
              v630 = v626;
              v611 = v625;
              (*(v623 + 8))(v624, v630);
            }

            else
            {
              v629 = 0xE300000000000000;
              v627 = 7104878;
            }

            v645 = sub_100002320(v627, v629, v731);

            *(v614 + 24) = v645;

            _os_log_impl(&_mh_execute_header, v611, v730, "start monitoring infra '%s'[%s] for autoInternetSharingOnInfraLost got token %s. Make sure publisher device to set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'", v614, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          goto LABEL_294;
        }

        v635 = Logger.logObject.getter();
        v636 = static os_log_type_t.default.getter();
        v637 = os_log_type_enabled(v635, v636);
        v634 = v710;
        if (v637)
        {
          v638 = swift_slowAlloc();
          *v638 = 0;
          _os_log_impl(&_mh_execute_header, v635, v636, "start autoInternetSharingRequester immeidately as current WiFiNetwork 'nil'", v638, 2u);
        }

        sub_1002BE8E4();
        v310 = v721;
      }

      else
      {
        v631 = Logger.logObject.getter();
        v632 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v631, v632))
        {
          v633 = swift_slowAlloc();
          *v633 = 0;
          _os_log_impl(&_mh_execute_header, v631, v632, "autoInternetSharingRequesteris is disabled. To enable it, set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'. Make sure publisher device to set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'", v633, 2u);
          v310 = v721;
        }

        v634 = v710;
      }

      v639 = v724;
      goto LABEL_295;
    }

    *(v312 + qword_100594B40) = 1;
    v49 = sub_1002C7410();
    v314 = (v312 + qword_100594B18);
    v315 = *(v312 + qword_100594B18 + 8);
    v663 = v312 + qword_100594B18;
    if (v315 >> 60 == 15)
    {
      v711 = WiFiAddress.ipv6LinkLocalAddress.getter(v286 | v287);
      v317 = v316;
      v318 = v287;
      v320 = v319;
      v322 = v321;
      v323 = v286;
      v324 = v318;
    }

    else
    {
      v325 = *v314;
      sub_10000AB0C(*v314, v315);
      v711 = InterfaceIdentifier.ipv6Address.getter(v325, v315);
      v317 = v326;
      v327 = v287;
      v320 = v328;
      v322 = v329;
      sub_100017554(v325, v315);
      v323 = v286;
      v324 = v327;
    }

    v330 = v701;
    v331 = (*(*v49 + 416))(v731);
    v333 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v728, v330, v332);
    v334 = v317;
    v41 = 0;
    WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v323 | v324, v711, v334, v320, v322, v333);
    v335 = v333;
    v331(v731, 0);

    v336 = v729;
    v337 = sub_1002C7410();
    v338 = v712;
    swift_unownedRetainStrong();
    v339 = *(v338 + *(*v338 + 472));

    if (!v339 || (, v337 != v339))
    {
LABEL_153:
      sub_1002C7410();
      LODWORD(v711) = WiFiInterface.interfaceIndex.getter();

      v355 = swift_unknownObjectWeakLoadStrong();
      v356 = v725;
      if (v355 && (v357 = v355, v358 = sub_1002EB914(), v357, v358) && (v359 = swift_unownedRetainStrong(), sub_10040CAE8(v359, v360, v361, v362), , v363 = sub_10033787C(*(v721 + 8) | (*(v721 + 10) << 16)), , (v363 & 1) == 0))
      {
        v273 = sub_1002BE098();
        if (v273 >> 62)
        {
          goto LABEL_317;
        }

        v380 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_163:
        if (v380)
        {
          v381 = 0;
          v709 = v273 & 0xC000000000000001;
          v706 = (v273 & 0xFFFFFFFFFFFFFF8);
          v382 = 0x100000000000000;
          if (!v669)
          {
            v382 = 0;
          }

          v701 = v382;
          v668 = v677 | (v724 << 8) | (v682 << 16) | (v681 << 24) | (v680 << 32) | (v679 << 40) | (v678 << 48);
          v667 = v670 << 40;
          v383 = v675 | (v674 << 8);
          v384 = (v673 << 16) | (v672 << 24) | (v671 << 32);
          do
          {
            if (v709)
            {
              v385 = v380;
              v386 = v273;
              v387 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v388 = v381 + 1;
              if (__OFADD__(v381, 1))
              {
LABEL_174:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v381 >= *(v706 + 2))
              {
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                v661 = v273;
                v380 = _CocoaArrayWrapper.endIndex.getter();
                v273 = v661;
                goto LABEL_163;
              }

              v385 = v380;
              v386 = v273;
              v387 = *(v273 + 8 * v381 + 32);
              swift_unknownObjectRetain();
              v388 = v381 + 1;
              if (__OFADD__(v381, 1))
              {
                goto LABEL_174;
              }
            }

            *&v731[0] = v387;
            v49 = v49 & 0xFFFF000000000000 | v383 | v384 | v667;
            sub_1002C753C(v731, v668 | v701, v49, v729, v711, v722);
            swift_unknownObjectRelease();
            ++v381;
            v380 = v385;
            v273 = v386;
          }

          while (v388 != v385);
        }

        v356 = v725;
        v336 = v729;
      }

      else
      {
        v364 = sub_1002BE0E0();
        if (v364)
        {
          v365 = v364;
          v366 = v41;
          v367 = *(v663 + 8);
          if (v367 >> 60 == 15)
          {
            v368 = 0;
            v369 = 0;
            v370 = 0;
            v371 = 1;
            v372 = v724;
          }

          else
          {
            v373 = *v663;
            sub_10000AB0C(*v663, *(v663 + 8));
            v368 = InterfaceIdentifier.ipv6Address.getter(v373, v367);
            v369 = v374;
            v370 = v375;
            v371 = v376;
            v372 = v724;
            sub_100017554(v373, v367);
          }

          v377 = WiFiAddress.apiAddress(with:)(v368, v369, v370, v371, v710 | v372);
          sub_10011AF40(v368, v369, v370, v371);
          v378 = objc_allocWithZone(WiFiAwarePublisherDataSessionHandle);
          v379 = [v378 initWithDatapathID:v677 initiatorDataAddress:v377];

          [v365 publishDataConfirmedForHandle:v379 localInterfaceIndex:v711 serviceSpecificInfo:v707];
          swift_unknownObjectRelease();
          v356 = v725;
          v336 = v729;
          v41 = v366;
        }
      }

      v389 = swift_unknownObjectWeakLoadStrong();
      v49 = &unk_100588000;
      if (v389 && (v390 = v389, v391 = sub_1002EB914(), v390, v391) && (v392 = swift_unownedRetainStrong(), sub_10040CAE8(v392, v393, v394, v395), , v396 = sub_10033787C(*(v721 + 8) | (*(v721 + 10) << 16)), , (v396 & 1) == 0))
      {
        v273 = sub_1002BE098();
        if (v273 >> 62)
        {
          v662 = v273;
          v406 = _CocoaArrayWrapper.endIndex.getter();
          v273 = v662;
        }

        else
        {
          v406 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v406)
        {
          v407 = 0;
          v709 = v273 & 0xC000000000000001;
          v706 = (v273 & 0xFFFFFFFFFFFFFF8);
          v408 = 0x100000000000000;
          if (!v669)
          {
            v408 = 0;
          }

          v701 = v408;
          v688 = v677 | (v724 << 8) | (v682 << 16) | (v681 << 24) | (v680 << 32) | (v679 << 40) | (v678 << 48);
          v687 = v670 << 40;
          v409 = v675 | (v674 << 8);
          v410 = (v673 << 16) | (v672 << 24) | (v671 << 32);
          do
          {
            if (v709)
            {
              v411 = v406;
              v412 = v273;
              v413 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v414 = v407 + 1;
              if (__OFADD__(v407, 1))
              {
                goto LABEL_197;
              }
            }

            else
            {
              if (v407 >= *(v706 + 2))
              {
                goto LABEL_315;
              }

              v411 = v406;
              v412 = v273;
              v413 = *(v273 + 8 * v407 + 32);
              swift_unknownObjectRetain();
              v414 = v407 + 1;
              if (__OFADD__(v407, 1))
              {
LABEL_197:
                __break(1u);
                break;
              }
            }

            *&v731[0] = v413;
            v49 = v49 & 0xFFFF000000000000 | v409 | v410 | v687;
            sub_1002C7670(v731, v688 | v701, v49, v729, v711, v722);
            swift_unknownObjectRelease();
            ++v407;
            v406 = v411;
            v273 = v412;
          }

          while (v414 != v411);
        }

        v356 = v725;
        v336 = v729;
      }

      else
      {
        v397 = sub_1002BE0E0();
        if (v397)
        {
          v398 = v397;
          if ([v397 respondsToSelector:"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:"])
          {
            v399 = *(v663 + 8);
            v400 = v41;
            if (v399 >> 60 == 15)
            {
              v401 = 0;
              v402 = 0;
              v403 = 0;
              v404 = 1;
              v405 = v724;
            }

            else
            {
              v415 = *v663;
              sub_10000AB0C(*v663, *(v663 + 8));
              v401 = InterfaceIdentifier.ipv6Address.getter(v415, v399);
              v402 = v416;
              v403 = v417;
              v404 = v418;
              v419 = v415;
              v405 = v724;
              sub_100017554(v419, v399);
            }

            v420 = v710;
            v421 = WiFiAddress.apiAddress(with:)(v401, v402, v403, v404, v710 | v405);
            sub_10011AF40(v401, v402, v403, v404);
            v422 = objc_allocWithZone(WiFiAwarePublisherDataSessionHandle);
            v423 = [v422 initWithDatapathID:v677 initiatorDataAddress:v421];

            swift_unownedRetainStrong();
            v424 = v420 | v405;
            v425 = v686;
            sub_10040CD68(v424, v686);

            v426 = v688;
            sub_100012400(v425 + *(v720 + 88), v688, &qword_10058F4D0, &qword_100491AB0);
            sub_1002CB5A0(v425, type metadata accessor for NANPeer);
            v427 = v687;
            sub_100012400(v426, v687, &qword_10058F4D0, &qword_100491AB0);
            v428 = v725;
            v429 = v719;
            if ((*(v725 + 48))(v427, 1, v719) == 1)
            {
              v430 = 0;
            }

            else
            {
              v430 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v428 + 8))(v427, v429);
            }

            v336 = v729;
            v41 = v400;
            [v398 publishDataConfirmedForHandle:v423 localInterfaceIndex:v711 serviceSpecificInfo:v707 pairingKeyStoreID:{v430, v663}];
            swift_unknownObjectRelease();

            sub_100016290(v426, &qword_10058F4D0, &qword_100491AB0);
            v356 = v725;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      v688 = v41;
      swift_unownedRetainStrong();
      v431 = sub_1002BE4F0();
      v432 = v697;
      sub_10040CD68(v431, v697);

      v433 = v720;
      v434 = v698;
      sub_100012400(v432 + *(v720 + 88), v698, &qword_10058F4D0, &qword_100491AB0);
      sub_1002CB5A0(v432, type metadata accessor for NANPeer);
      v435 = *(v356 + 48);
      v436 = v719;
      v437 = v435(v434, 1, v719);
      v709 = v356 + 48;
      v706 = v435;
      if (v437 == 1)
      {
        swift_unownedRetainStrong();
        v438 = v717;
        sub_10040CD68(v710 | v724, v717);

        v439 = v438 + *(v433 + 88);
        v440 = v718;
        sub_100012400(v439, v718, &qword_10058F4D0, &qword_100491AB0);
        sub_1002CB5A0(v438, type metadata accessor for NANPeer);
        v441 = v435(v434, 1, v719);
        v442 = v699;
        if (v441 != 1)
        {
          sub_100016290(v434, &qword_10058F4D0, &qword_100491AB0);
        }
      }

      else
      {
        v440 = v718;
        (*(v356 + 32))(v718, v434, v436);
        (*(v356 + 56))(v440, 0, 1, v436);
        v442 = v699;
      }

      sub_100012400(v440, v442, &qword_10058F4D0, &qword_100491AB0);
      v443 = v336;
      v444 = Logger.logObject.getter();
      v445 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v444, v445))
      {
        v446 = swift_slowAlloc();
        v720 = swift_slowAlloc();
        v734[0] = v720;
        *v446 = 136315394;
        v447 = *(v721 + 208);
        v448 = *(v721 + 216);
        v449 = *(v721 + 224);
        v450 = *(v721 + 232);
        v451 = *(v721 + 240);
        v452 = *(v721 + 248);
        *&v731[0] = *(v721 + 200);
        *(&v731[0] + 1) = v447;
        *&v731[1] = v448;
        *(&v731[1] + 1) = v449;
        *&v731[2] = v450;
        *(&v731[2] + 1) = v451;
        *&v731[3] = v452;
        sub_10020D510(*&v731[0], v447, v448, v449);
        sub_10005DC58(&qword_100595C10, &unk_100499060);
        v453 = String.init<A>(describing:)();
        v455 = sub_100002320(v453, v454, v734);

        *(v446 + 4) = v455;

        *(v446 + 12) = 2080;
        sub_100012400(v442, v690, &qword_10058F4D0, &qword_100491AB0);
        v456 = String.init<A>(describing:)();
        v458 = sub_100002320(v456, v457, v734);

        *(v446 + 14) = v458;
        sub_100016290(v442, &qword_10058F4D0, &qword_100491AB0);
        _os_log_impl(&_mh_execute_header, v444, v445, "Pairing Metadata: %s, PairingKeystoreUUID: %s", v446, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100016290(v442, &qword_10058F4D0, &qword_100491AB0);
      }

      v459 = v713;
      v460 = v700;
      v461 = v443;
      v462 = Logger.logObject.getter();
      v463 = static os_log_type_t.default.getter();
      v464 = os_log_type_enabled(v462, v463);
      v717 = v461;
      if (v464)
      {
        v465 = swift_slowAlloc();
        *&v731[0] = swift_slowAlloc();
        *v465 = 136315394;
        v466 = WiFiAddress.description.getter(v710 | v724);
        v468 = sub_100002320(v466, v467, v731);

        *(v465 + 4) = v468;
        *(v465 + 12) = 2080;
        v469 = sub_1002BE4F0();

        v470 = WiFiAddress.description.getter(v469);
        v472 = sub_100002320(v470, v471, v731);

        *(v465 + 14) = v472;

        _os_log_impl(&_mh_execute_header, v462, v463, "Peer: %s [NMI: %s]", v465, 0x16u);
        swift_arrayDestroy();
        v459 = v713;
      }

      else
      {
      }

      v49 = v683;
      v473 = v719;
      v312 = v729;
      sub_10005DC58(&unk_10058F4C0, &unk_100492870);
      v720 = swift_allocBox();
      v475 = v474;
      v476 = type metadata accessor for WiFiAwarePairedDevice(0);
      v477 = *(v476 - 8);
      v478 = *(v477 + 7);
      v700 = v476;
      v701 = v475;
      v478(v475, 1, 1);
      v479 = v718;
      sub_100012400(v718, v460, &qword_10058F4D0, &qword_100491AB0);
      v480 = v706(v460, 1, v473);
      v481 = v721;
      v699 = v477;
      if (v480 == 1)
      {
        sub_100016290(v460, &qword_10058F4D0, &qword_100491AB0);
        v482 = v724;
LABEL_216:
        v483 = Logger.logObject.getter();
        v484 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v483, v484))
        {
          v485 = swift_slowAlloc();
          *v485 = 0;
          _os_log_impl(&_mh_execute_header, v483, v484, "Unable to determine paired device. Missing Bundle ID or PairingKeyStoreUUID", v485, 2u);
        }

        v310 = v721;
LABEL_237:
        v549 = swift_unknownObjectWeakLoadStrong();
        if (!v549 || (v550 = v549, v551 = sub_1002EB914(), v550, !v551) || (v552 = swift_unownedRetainStrong(), sub_10040CAE8(v552, v553, v554, v555), , v556 = sub_10033787C(*(v310 + 8) | (*(v310 + 10) << 16)), , (v556 & 1) != 0))
        {
          v557 = sub_1002BE0E0();
          if (v557)
          {
            v558 = v557;
            if ([v557 respondsToSelector:"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:deviceID:"])
            {
              v559 = *(v663 + 8);
              if (v559 >> 60 == 15)
              {
                v560 = 0;
                v561 = 0;
                v562 = 0;
                v563 = 1;
                v564 = v482;
              }

              else
              {
                v569 = *v663;
                sub_10000AB0C(*v663, *(v663 + 8));
                v560 = InterfaceIdentifier.ipv6Address.getter(v569, v559);
                v561 = v570;
                v562 = v571;
                v563 = v572;
                v573 = v569;
                v479 = v718;
                v564 = v724;
                sub_100017554(v573, v559);
              }

              v574 = WiFiAddress.apiAddress(with:)(v560, v561, v562, v563, v710 | v564);
              sub_10011AF40(v560, v561, v562, v563);
              v575 = objc_allocWithZone(WiFiAwarePublisherDataSessionHandle);
              v576 = [v575 initWithDatapathID:v677 initiatorDataAddress:v574];

              v577 = v701;
              swift_beginAccess();
              v578 = v700;
              v579 = 0;
              if (!v699[6](v577, 1, v700))
              {
                v579 = *(v577 + *(v578 + 5));
              }

              v580 = v685;
              sub_100012400(v479, v685, &qword_10058F4D0, &qword_100491AB0);
              v581 = v719;
              v582 = v706(v580, 1, v719);
              v49 = v683;
              if (v582 == 1)
              {
                v583 = 0;
              }

              else
              {
                v583 = UUID._bridgeToObjectiveC()().super.isa;
                (*(v725 + 8))(v580, v581);
              }

              v312 = v729;
              [v558 publishDataConfirmedForHandle:v576 localInterfaceIndex:v711 serviceSpecificInfo:v707 pairingKeyStoreID:v583 deviceID:{v579, v663}];

              swift_unknownObjectRelease();
              goto LABEL_254;
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

LABEL_255:
          sub_100016290(v479, &qword_10058F4D0, &qword_100491AB0);
          goto LABEL_256;
        }

        v565 = v717;
        v566 = sub_1002BE098();
        __chkstk_darwin();
        *(&v663 - 64) = v677;
        *(&v663 - 63) = v482;
        v567 = v681;
        *(&v663 - 62) = v682;
        *(&v663 - 61) = v567;
        v568 = v679;
        *(&v663 - 60) = v680;
        *(&v663 - 59) = v568;
        *(&v663 - 58) = v678;
        *(&v663 - 57) = v669;
        *(&v663 - 56) = v675;
        *(&v663 - 55) = v674;
        *(&v663 - 54) = v673;
        *(&v663 - 53) = v672;
        *(&v663 - 52) = v671;
        *(&v663 - 51) = v670;
        *(&v663 - 6) = v565;
        *(&v663 - 10) = v711;
        *(&v663 - 4) = v722;
        *(&v663 - 3) = v479;
        *(&v663 - 2) = v701;
        sub_100447F80(sub_1002CB1EC, (&v663 - 10), v566);

LABEL_254:
        v310 = v721;
        goto LABEL_255;
      }

      v486 = *(v725 + 32);
      v486(v459, v460, v473);
      v487 = *(v481 + 208);
      if (v487)
      {
        v488 = (v481 + 200);
      }

      else
      {
        v488 = v664;
        v487 = v664[1];
        if (!v487)
        {
          (*(v725 + 8))(v459, v473);
          v49 = v683;
          v482 = v724;
          v479 = v718;
          goto LABEL_216;
        }
      }

      v698 = *v488;

      v489 = dispatch_semaphore_create(0);
      v490 = type metadata accessor for TaskPriority();
      (*(*(v490 - 8) + 56))(v696, 1, 1, v490);
      v491 = v725 + 16;
      v492 = v694;
      v697 = *(v725 + 16);
      (v697)(v694, v459, v473);
      v691 = v491;
      v493 = (*(v491 + 64) + 88) & ~*(v491 + 64);
      v494 = swift_allocObject();
      *(v494 + 2) = 0;
      *(v494 + 3) = 0;
      v495 = v727;
      *(v494 + 4) = v728;
      *(v494 + 5) = v495;
      v496 = v720;
      *(v494 + 6) = v489;
      *(v494 + 7) = v496;
      v497 = v486;
      v498 = v717;
      v499 = v698;
      *(v494 + 8) = v717;
      *(v494 + 9) = v499;
      *(v494 + 10) = v487;
      v497(&v494[v493], v492, v473);
      v500 = v498;
      v501 = v489;

      v502 = v487;

      sub_1003ACB3C(0, 0, v696, &unk_1004AEC08, v494);

      v503 = v714;
      static DispatchTime.now()();
      v504 = v715;
      + infix(_:_:)();
      v505 = v716;
      v506 = v665;
      v665(v503, v716);
      OS_dispatch_semaphore.wait(timeout:)();
      v506(v504, v505);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v507 = v684;
        v508 = v713;
        v509 = v719;
        (v697)(v684, v713, v719);
        v510 = v502;
        swift_bridgeObjectRetain_n();
        v511 = Logger.logObject.getter();
        v512 = static os_log_type_t.error.getter();
        v513 = os_log_type_enabled(v511, v512);
        v312 = v729;
        if (v513)
        {
          v514 = swift_slowAlloc();
          v716 = swift_slowAlloc();
          *&v731[0] = v716;
          *v514 = 136315394;

          v515 = sub_100002320(v698, v510, v731);

          *(v514 + 4) = v515;
          swift_bridgeObjectRelease_n();
          *(v514 + 12) = 2080;
          sub_10000BAD0();
          v516 = dispatch thunk of CustomStringConvertible.description.getter();
          v518 = sub_100002320(v516, v517, v731);

          *(v514 + 14) = v518;

          v519 = *(v725 + 8);
          v519(v507, v509);
          _os_log_impl(&_mh_execute_header, v511, v512, "Timed out waiting to get paired device for %s [PairingKeyStoreID: %s]", v514, 0x16u);
          swift_arrayDestroy();

          v312 = v729;

          v520 = v713;
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v519 = *(v725 + 8);
          v519(v507, v509);

          v520 = v508;
        }

        v519(v520, v509);
        v49 = v683;
      }

      else
      {
        (*(v725 + 8))(v713, v719);

        v49 = v683;
        v312 = v729;
      }

      v482 = v724;
      v310 = v721;
      v479 = v718;
      goto LABEL_237;
    }

    swift_unownedRetainStrong();
    v340 = *(v663 + 8);
    if (v340 >> 60 == 15)
    {
      v341 = v710;
      v342 = v724;
      v711 = WiFiAddress.ipv6LinkLocalAddress.getter(v710 | v724);
      v709 = v343;
      v345 = v344;
      v49 = v346;
    }

    else
    {
      v648 = *v663;
      sub_10000AB0C(*v663, *(v663 + 8));
      v711 = InterfaceIdentifier.ipv6Address.getter(v648, v340);
      v709 = v649;
      v345 = v650;
      v49 = v651;
      v342 = v724;
      sub_100017554(v648, v340);
      v341 = v710;
    }

    swift_beginAccess();
    WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v341 | v342, v711, v709, v345, v49, v335);
LABEL_308:
    swift_endAccess();

    v336 = v729;
    goto LABEL_153;
  }

  v69 = v730;
  if (v54 == 9)
  {
    NANBitmap.Channel.operatingClass.getter();
    v729 = *(v154 + 1);
    v155 = *(v154 + 2);
    v156 = *(v154 + 3);
    v721 = *(v154 + 4);
    v720 = *(v154 + 5);
    v719 = *(v154 + 6);
    v717 = *(v154 + 8);
    LODWORD(v716) = *(v154 + 16);
    v157 = *&v69[qword_100594B00];
    swift_unownedRetainStrong();
    v158 = *(*v157 + 96);
    swift_beginAccess();
    v159 = v722;
    v160 = isa;
    v161 = v724;
    (*(isa + 2))(v722, v157 + v158, v724);
    v718 = v157;

    v162 = &v69[qword_100594B08];
    swift_beginAccess();
    v163 = *(v162 + 10);
    v164 = *(v162 + 4);
    v165 = swift_getAssociatedConformanceWitness();
    (*(v165 + 360))(v164 | (v163 << 16), v161, v165);
    v725 = v156;
    ObjectType = v155;
    v200 = v199;
    (v160[1].isa)(v159, v161);
    v201 = &v69[qword_10059B838];
    swift_beginAccess();
    *(v201 + 140) = v200;
    v202 = v729;
    v203 = &v69[qword_100594B38];
    v205 = *&v69[qword_100594B38];
    v204 = *&v69[qword_100594B38 + 8];
    if (v204 >> 62)
    {
      if (v204 >> 62 == 1 || __PAIR128__(v204, v205) < __PAIR128__(0x8000000000000000, 2))
      {
        v206 = 0x7165722072656570;
        v207 = 3;
        v208 = 37;
LABEL_78:
        sub_1002C057C(v207, v206, 0xEC00000074736575, v208);
LABEL_79:
        v210 = v725;
        v209 = ObjectType;
        v211 = v727;
        goto LABEL_232;
      }

      if (v204 != 0x8000000000000000 || v205 != 2)
      {
        v206 = 0x7165722072657375;
        v207 = 2;
        v208 = 45;
        goto LABEL_78;
      }

      v683 = v49;
      v240 = v69;
      v241 = Logger.logObject.getter();
      v242 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v241, v242))
      {

        v49 = v683;
        goto LABEL_79;
      }

      LODWORD(isa) = v242;
      v243 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v743[0] = v245;
      *v243 = 138412802;
      *(v243 + 4) = v240;
      v716 = v244;
      *v244 = v69;
      *(v243 + 12) = 2080;
      v724 = v241;
      v722 = v245;
      if (v717 <= 1)
      {
        if (v717 == -1)
        {
          v246 = 0x80000001004BA5E0;
          v247 = 0xD000000000000011;
          goto LABEL_313;
        }

        if (v717 == 1)
        {
          v247 = 0x754F2064656D6954;
          v246 = 0xE900000000000074;
          goto LABEL_313;
        }
      }

      else
      {
        switch(v717)
        {
          case 2:
            v247 = 0x7165522072657355;
            v246 = 0xEE00646574736575;
            goto LABEL_313;
          case 3:
            v247 = 0x6961462070696843;
            v246 = 0xEC0000006572756CLL;
            goto LABEL_313;
          case 4:
            v246 = 0x80000001004BA540;
            v247 = 0xD000000000000018;
LABEL_313:
            v652 = sub_100002320(v247, v246, v743);

            *(v243 + 14) = v652;
            *(v243 + 22) = 2080;
            v654 = *v203;
            v653 = *(v203 + 1);
            sub_1002CAEE4(*v203, v653);

            v655 = v727;
            v656 = sub_1002BE12C(v654, v653);
            v658 = v657;
            sub_1002CAF2C(v654, v653);
            v659 = sub_100002320(v656, v658, v743);

            *(v243 + 24) = v659;
            v211 = v655;

            v660 = v724;
            _os_log_impl(&_mh_execute_header, v724, isa, "%@ got early termination (%s) when %s, ignoring", v243, 0x20u);
            sub_100016290(v716, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();

            v49 = v683;
            v202 = v729;
            v210 = v725;
            v209 = ObjectType;
LABEL_232:
            v530 = swift_unownedRetainStrong();
            sub_10040CAE8(v530, v531, v532, v533);

            swift_beginAccess();

            v737 = v202;
            v738 = v209;
            v739 = v210;
            v534 = v720;
            v535 = v721;
            v740 = v721;
            v741 = v720;
            v536 = v719;
            v742 = v719;
            v537 = v728;
            v539 = _s17InitiatorInstanceCMa_0(255, v728, v211, v538);
            v541 = _s17ResponderInstanceCMa_0(255, v537, v211, v540);
            type metadata accessor for Either(0, v539, v541, v542);
            sub_1002CAFC4();
            Dictionary.subscript.getter();

            v543 = v733;
            if (v733 != 255)
            {
              v544 = v732;
              sub_100428A58(v732, v733 & 1, v728, v211);
              v545 = swift_unownedRetainStrong();
              sub_10040CAE8(v545, v546, v547, v548);

              sub_1003379B8(v729 | (ObjectType << 8) | (v725 << 16) | (v535 << 24) | (v534 << 32) | (v536 << 40));

              sub_1002CB018(v544, v543);
            }

            return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
        }
      }

      v246 = 0xE700000000000000;
      v247 = 0x6E776F6E6B6E55;
      goto LABEL_313;
    }

    v212 = v69;
    v213 = Logger.logObject.getter();
    LODWORD(v724) = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v213, v724))
    {

      v237 = v716;
      v211 = v727;
LABEL_231:
      sub_1002C057C(v717, 0xD00000000000001BLL, 0x80000001004BE5E0, v237);
      v210 = v725;
      v209 = ObjectType;
      goto LABEL_232;
    }

    isa = v213;
    v683 = v49;
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v743[0] = v216;
    *v214 = 138413058;
    *(v214 + 4) = v212;
    v715 = v215;
    *v215 = v69;
    *(v214 + 12) = 2080;
    v722 = v216;
    if (v717 <= 1)
    {
      if (v717 == -1)
      {
        v217 = 0x80000001004BA5E0;
        v218 = 0xD000000000000011;
        goto LABEL_230;
      }

      if (v717 == 1)
      {
        v218 = 0x754F2064656D6954;
        v217 = 0xE900000000000074;
        goto LABEL_230;
      }
    }

    else
    {
      switch(v717)
      {
        case 2:
          v218 = 0x7165522072657355;
          v217 = 0xEE00646574736575;
          goto LABEL_230;
        case 3:
          v218 = 0x6961462070696843;
          v217 = 0xEC0000006572756CLL;
          goto LABEL_230;
        case 4:
          v217 = 0x80000001004BA540;
          v218 = 0xD000000000000018;
LABEL_230:
          v521 = sub_100002320(v218, v217, v743);

          *(v214 + 14) = v521;
          *(v214 + 22) = 2080;
          v522 = *v203;
          v523 = *(v203 + 1);
          sub_1002CAEE4(*v203, v523);

          v524 = v727;
          v525 = sub_1002BE12C(v522, v523);
          v527 = v526;
          sub_1002CAF2C(v522, v523);
          v528 = sub_100002320(v525, v527, v743);

          *(v214 + 24) = v528;
          v211 = v524;

          *(v214 + 32) = 2048;
          *(v214 + 34) = v205;
          v529 = isa;
          _os_log_impl(&_mh_execute_header, isa, v724, "%@ got early termination (%s) when %s for retry #%ld", v214, 0x2Au);
          sub_100016290(v715, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();

          v49 = v683;
          v202 = v729;
          v237 = v716;
          goto LABEL_231;
      }
    }

    v217 = 0xE700000000000000;
    v218 = 0x6E776F6E6B6E55;
    goto LABEL_230;
  }

  if (v54 != 10)
  {
LABEL_45:
    sub_1001854F8(v744);
LABEL_46:
    sub_1002CB538(v52, v39, type metadata accessor for DriverEvent);
    v122 = v730;
    v123 = v730;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v129 = v122;
      v130 = v49;
      v131 = v128;
      v745[0] = v128;
      *v126 = 138412546;
      *(v126 + 4) = v123;
      *v127 = v129;

      *(v126 + 12) = 2080;
      v132 = DriverEvent.description.getter();
      v134 = sub_100002320(v132, v133, v745);

      *(v126 + 14) = v134;
      sub_1002CB5A0(v39, type metadata accessor for DriverEvent);
      _os_log_impl(&_mh_execute_header, v124, v125, "%@ received an unexpected %s", v126, 0x16u);
      sub_100016290(v127, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v131);
      v49 = v130;
    }

    else
    {

      sub_1002CB5A0(v39, type metadata accessor for DriverEvent);
    }

    return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
  }

  NANBitmap.Channel.operatingClass.getter();
  v71 = v70;
  v72 = swift_unknownObjectWeakLoadStrong();
  if (!v72 || (v73 = v72[qword_10059B898], v72, v73 != 1))
  {
    v166 = v69;
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = v49;
      v171 = swift_slowAlloc();
      *v169 = 138412290;
      *(v169 + 4) = v166;
      *v171 = v69;

      _os_log_impl(&_mh_execute_header, v167, v168, "%@ cannot accept host assist request because the associated publisher is no longer active", v169, 0xCu);
      sub_100016290(v171, &qword_10058B780, &qword_100480AC0);
      v49 = v170;
    }

    else
    {
    }

LABEL_64:

    sub_1002C1BE0();
    return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
  }

  v683 = v49;
  v74 = &v69[qword_100594B38];
  v75 = *&v69[qword_100594B38 + 8];
  if (v75 >> 62 && (v75 >> 62 == 1 || __PAIR128__(v75, *v74) >= __PAIR128__(0x8000000000000000, 2)))
  {
    v248 = v69;
    v249 = Logger.logObject.getter();
    v250 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v249, v250))
    {

LABEL_148:
      v49 = v683;
      return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
    }

    v251 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    v729 = swift_slowAlloc();
    *&v731[0] = v729;
    *v251 = 138412546;
    *(v251 + 4) = v248;
    *v252 = v69;
    *(v251 + 12) = 2080;
    v253 = *v74;
    v254 = *(v74 + 1);
    sub_1002CAEE4(*v74, v254);

    v255 = sub_1002BE12C(v253, v254);
    v257 = v256;
    sub_1002CAF2C(v253, v254);
    v258 = sub_100002320(v255, v257, v731);

    *(v251 + 14) = v258;

    _os_log_impl(&_mh_execute_header, v249, v250, "%@ ignoring host assist request when %s", v251, 0x16u);
    sub_100016290(v252, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v729);

LABEL_147:

    goto LABEL_148;
  }

  v76 = &v69[qword_100594B08];
  swift_beginAccess();
  if (v76[74] == 1)
  {
    if (((*(v71 + 15) - 1) & 0xF8) != 0)
    {
      v77 = 2;
    }

    else
    {
      v77 = 0x101020102020200uLL >> (8 * (*(v71 + 15) - 1));
    }

    v76[74] = v77;
  }

  v78 = v69;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v729 = swift_slowAlloc();
    v734[0] = v729;
    *v81 = 138412802;
    *(v81 + 4) = v78;
    *v82 = v69;
    *(v81 + 12) = 2080;
    LOBYTE(v743[0]) = *(v71 + 15);
    v83 = String.init<A>(describing:)();
    v85 = sub_100002320(v83, v84, v734);

    *(v81 + 14) = v85;
    *(v81 + 22) = 2080;
    v86 = v76[74];

    if (v86)
    {
      if (v86 == 1)
      {
        v87 = 0xE800000000000000;
        v88 = 0x747065636361;
      }

      else
      {
        v87 = 0xE800000000000000;
        v88 = 0x7463656A6572;
      }

      v643 = v88 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else
    {
      v643 = 0x65756E69746E6F63;
      v87 = 0xE900000000000064;
    }

    v644 = sub_100002320(v643, v87, v734);

    *(v81 + 24) = v644;

    _os_log_impl(&_mh_execute_header, v79, v80, "%@ received host assist request for %s. Responding with %s", v81, 0x20u);
    sub_100016290(v82, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1002C12E0();
  v49 = v683;
  sub_1002CA7EC(0, 0);
  return sub_1002CB5A0(v49, type metadata accessor for DriverEvent);
}