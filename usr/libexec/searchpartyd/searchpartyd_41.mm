uint64_t sub_100496484@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 32)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 32)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 32;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10049659C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
LABEL_17:
      sub_100018350();
      swift_allocError();
      *v13 = 1326;
      *(v13 + 8) = v6;
      *(v13 + 16) = 0;
      swift_willThrow();
      return sub_100016590(v4, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1326)
      {
        goto LABEL_10;
      }

LABEL_7:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 != 2)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 == 1326)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v6 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = HIDWORD(result) - result;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10049669C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
LABEL_17:
      sub_100018350();
      swift_allocError();
      *v13 = 1286;
      *(v13 + 8) = v6;
      *(v13 + 16) = 0;
      swift_willThrow();
      return sub_100016590(v4, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1286)
      {
        goto LABEL_10;
      }

LABEL_7:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 != 2)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 == 1286)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v6 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = HIDWORD(result) - result;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t KeyRepresentable<>.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(v9 + 48);
  sub_100017D5C(a1, a2);
  v11 = v10(a3, v9);
  v12 = sub_10049BF70(a1, a2, v11);
  if (!v4)
  {
    (*(a4 + 24))(v12);
  }

  return sub_100016590(a1, a2);
}

uint64_t sub_10049687C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for OwnedDeviceKeyRecord(0);
    return a2;
  }

  return result;
}

uint64_t sub_100496910(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t Advertisement.hashed.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for HashAlgorithm();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for HashAlgorithm.sha256(_:), v2);
  v6 = Data.hash(algorithm:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

SecKeyRef sub_100496ABC()
{
  type metadata accessor for CFString(0);
  v1 = v0;
  v20 = v0;
  error[0] = kSecAttrKeyTypeEC;
  sub_1001E6224(error, v18);
  v2 = kSecAttrKeyType;
  v3 = kSecAttrKeyTypeEC;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v18, v2, isUniquelyReferenced_nonNull_native);

  v20 = v1;
  error[0] = kSecAttrKeyClassPrivate;
  sub_1001E6224(error, v18);
  v5 = kSecAttrKeyClass;
  v6 = kSecAttrKeyClassPrivate;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v18, v5, v7);

  error[0] = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
  sub_1004A4578();
  v9 = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = SecKeyCreateWithData(isa, v9, error);

  if (!v10)
  {
    goto LABEL_4;
  }

  if (error[0])
  {

LABEL_4:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *&v18[0] = error[0];
    sub_1000BC4D4(&qword_1016A2050, &qword_1013AA360);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CryptoUtil: decryption: could not create SecKey for private key: %@", 67, 2, &_mh_execute_header, v15, v16, v11, _swiftEmptyDictionarySingleton);

    sub_1004A45E0();
    swift_allocError();
    swift_willThrow();
  }

  return v10;
}

uint64_t PublicKey.advertisement.getter(uint64_t a1, unint64_t a2)
{
  v2 = sub_100A79FEC(a1, a2);
  sub_100018000(v2, v3, &v5);
  return v5;
}

uint64_t NearOwnerAdvertisement.init(macAddress:ek:)(uint64_t a1, int a2)
{
  v6 = MACAddress.data.getter();
  v7 = v3;
  Data._Representation.subscript.getter();
  Data._Representation.subscript.setter();
  v4 = type metadata accessor for MACAddress();
  (*(*(v4 - 8) + 8))(a1, v4);
  sub_100017D5C(v6, v7);
  sub_100016590(v6, v7);
  return v6;
}

uint64_t sub_100496F68@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 57)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100496FE4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 32)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100497060@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 28)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004970DC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 85)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100497158@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 6)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004971D4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 174)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100497250@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 65)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004972CC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 72)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100497348@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 16)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004973C4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 12)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100497440@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 113)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004974BC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    LODWORD(v5) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v5 = v5;
LABEL_7:
      if (v5 == 1326)
      {
LABEL_9:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_8:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100497534@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    LODWORD(v5) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v5 = v5;
LABEL_7:
      if (v5 == 1040)
      {
LABEL_9:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_8:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004975AC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    LODWORD(v5) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v5 = v5;
LABEL_7:
      if (v5 == 1286)
      {
LABEL_9:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_8:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100497624@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 100)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004976A0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 89)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10049771C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 60)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100497798@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 114)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t KeyRepresenting.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 8);
  v11 = *(v10 + 48);
  sub_100017D5C(a1, a2);
  result = v11(a3, v10);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v17 == result)
      {
        goto LABEL_8;
      }
    }

    else if (!result)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_100016590(a1, a2);
    v18 = 1;
    goto LABEL_14;
  }

  if (v13)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != result)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if (BYTE6(a2) != result)
  {
    goto LABEL_13;
  }

LABEL_8:
  (*(a4 + 24))(a1, a2, a3, a4);
  v18 = 0;
LABEL_14:
  sub_100016590(a1, a2);
  v19 = *(*(a3 - 8) + 56);

  return v19(a5, v18, 1, a3);
}

uint64_t Advertisement.macAddress.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_100017D5C(a1, a2);
  v9 = static MACAddress.length.getter();
  sub_10002EA98(v9, a1, a2, &v13);
  MACAddress.init(data:type:)();
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v8, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a3, v8, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_100497AF4(uint64_t a1, unint64_t a2)
{
  v4 = String.utf8Data.getter();
  v6 = v5;
  v7 = sub_100A79CBC(a1, a2, v4, v5, 32);
  sub_100496484(v7, v8, &v10);
  sub_100016590(v4, v6);
  return v10;
}

uint64_t Advertisement.hint.getter(uint64_t a1, unint64_t a2)
{
  sub_100017D5C(a1, a2);
  v4 = static MACAddress.length.getter();
  sub_10002EA98(v4, a1, a2, v9);
  v5 = v9[0];
  v6 = v9[1];
  v7 = Data._Representation.subscript.getter();
  sub_100016590(v5, v6);
  return v7;
}

uint64_t sub_100497CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(39);

    v9 = 0xD000000000000019;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x6C6175746361202CLL;
    v6._object = 0xEA0000000000203ALL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    return v9;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(27);

    v9 = 0xD000000000000018;
    v3._countAndFlagsBits = Data.hexString.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v9;
  }

  if (a1 | a2)
  {
    return 0x64696C61766E692ELL;
  }

  else
  {
    return 0x7479426F72657A2ELL;
  }
}

uint64_t sub_100497EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_100497F2C(uint64_t a1)
{
  v2 = sub_10049C93C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100497F68(uint64_t a1)
{
  v2 = sub_10049C93C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeyRepresentableInternal.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A1600, &qword_1013A58D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_10049C93C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

Swift::Int KeyRepresentableInternal.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

void *sub_10049817C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10049C990(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t SecurityKeyRepresentable.init(rawValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  v5 = *(*(a1 - 8) + 56);

  return v5(a3, 0, 1, a1);
}

id sub_100498248@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_100498278(uint64_t a1)
{
  v2 = sub_10049CB04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004982B4(uint64_t a1)
{
  v2 = sub_10049CB04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049840C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100017D5C(a1, a2);
  sub_10002EA98(57, a1, a2, v6);
  sub_100496F68(v6[0], v6[1], v7);
  if (v7[1] >> 60 != 15)
  {
    return v7[0];
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004984D0(uint64_t a1)
{
  v2 = sub_10049CCDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049850C(uint64_t a1)
{
  v2 = sub_10049CCDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100498614@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_10049D6B4(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t sub_1004986A8(uint64_t a1)
{
  v2 = sub_10049CD30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004986E4(uint64_t a1)
{
  v2 = sub_10049CD30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100498838(uint64_t a1)
{
  v2 = sub_10049CD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100498874(uint64_t a1)
{
  v2 = sub_10049CD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1004989C8(double a1, uint64_t a2, uint64_t a3, double *a4, uint64_t *a5)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v9 = a1;
  v10 = __DataStorage.init(length:)();
  sub_1007765FC(&v9, 0);
  v8 = v10 | 0x4000000000000000;
  *a4 = v9;
  *a5 = v8;
}

uint64_t sub_100498A58(uint64_t a1)
{
  v2 = sub_10049CDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100498A94(uint64_t a1)
{
  v2 = sub_10049CDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100498BE4(uint64_t a1)
{
  v2 = sub_10049CE2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100498C20(uint64_t a1)
{
  v2 = sub_10049CE2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100498D68()
{
  result = 0.0;
  xmmword_1016A15F0 = xmmword_1013A57B0;
  return result;
}

uint64_t ImportedBeaconAdvertisement.init(data:)(uint64_t a1, unint64_t a2)
{
  if (qword_101694748 != -1)
  {
    swift_once();
  }

  result = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, xmmword_1016A15F0, *(&xmmword_1016A15F0 + 1));
  if (result)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      v16 = v5;
      swift_once();
      v5 = v16;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C340, "Zero bytes sent for suffix key", 30, 2, _swiftEmptyArrayStorage);
    sub_100018350();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    goto LABEL_27;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_26;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 == 6)
      {
        return a1;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
    if (BYTE6(a2) == 6)
    {
      return a1;
    }

    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a1) - a1 == 6)
  {
    return a1;
  }

LABEL_17:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 != 1)
  {
LABEL_25:
    v12 = BYTE6(a2);
    goto LABEL_26;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_26:
    sub_100018350();
    swift_allocError();
    *v15 = 6;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
LABEL_27:
    swift_willThrow();
    sub_100016590(a1, a2);
    return a1;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100498FEC(uint64_t a1)
{
  v2 = sub_10049CED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100499028(uint64_t a1)
{
  v2 = sub_10049CED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Advertisement.address.getter(uint64_t a1, unint64_t a2)
{
  sub_100017D5C(a1, a2);
  v4 = static MACAddress.length.getter();
  sub_10002EA98(v4, a1, a2, &v6);
  return v6;
}

uint64_t sub_1004991C0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100499208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for HmacAlgorithm();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3;
  v21 = a4;
  sub_100017D5C(a3, a4);
  v10 = String.utf8Data.getter();
  v12 = v11;
  Data.append(_:)();
  sub_100016590(v10, v12);
  (*(v7 + 104))(v9, enum case for HmacAlgorithm.sha256(_:), v6);
  v13 = Data.hmac(key:algorithm:)();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  sub_10002EA98(6, v13, v15, v18);
  sub_100017EE8(v18[0], v18[1], &v19);
  sub_100016590(v20, v21);
  return v19;
}

uint64_t sub_100499490(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, unint64_t))
{
  sub_100017D5C(a1, a2);
  a4(&v9, a3, a1, a2);
  return v9;
}

uint64_t sub_10049955C(uint64_t a1)
{
  v2 = sub_10049CF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100499598(uint64_t a1)
{
  v2 = sub_10049CF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100499734(uint64_t a1)
{
  v2 = sub_10049CF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100499770(uint64_t a1)
{
  v2 = sub_10049CF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100499894(uint64_t a1)
{
  v2 = sub_10049CFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004998D0(uint64_t a1)
{
  v2 = sub_10049CFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004999F4(uint64_t a1)
{
  v2 = sub_10049D024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100499A30(uint64_t a1)
{
  v2 = sub_10049D024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100499B68(uint64_t a1)
{
  v2 = sub_10049D078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100499BA4(uint64_t a1)
{
  v2 = sub_10049D078();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100499CE0(uint64_t a1, unint64_t a2)
{
  v4 = String.utf8Data.getter();
  v6 = v5;
  v7 = sub_100A79CBC(a1, a2, v4, v5, 32);
  sub_100496484(v7, v8, &v10);
  sub_100016590(v4, v6);
  return v10;
}

uint64_t sub_100499E28(uint64_t a1)
{
  v2 = sub_10049D0CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100499E64(uint64_t a1)
{
  v2 = sub_10049D0CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100499FC4(uint64_t a1)
{
  v2 = sub_10049D120();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A000(uint64_t a1)
{
  v2 = sub_10049D120();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A130(uint64_t a1)
{
  v2 = sub_10049D174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A16C(uint64_t a1)
{
  v2 = sub_10049D174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A2A4(uint64_t a1)
{
  v2 = sub_10049D1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A2E0(uint64_t a1)
{
  v2 = sub_10049D1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A410(uint64_t a1)
{
  v2 = sub_10049D21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A44C(uint64_t a1)
{
  v2 = sub_10049D21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A578(uint64_t a1)
{
  v2 = sub_10049D270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A5B4(uint64_t a1)
{
  v2 = sub_10049D270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A6F8(uint64_t a1)
{
  v2 = sub_10049D2C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A734(uint64_t a1)
{
  v2 = sub_10049D2C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A888(uint64_t a1)
{
  v2 = sub_10049D318();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049A8C4(uint64_t a1)
{
  v2 = sub_10049D318();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049A9FC(uint64_t a1)
{
  v2 = sub_10049D36C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049AA38(uint64_t a1)
{
  v2 = sub_10049D36C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049AB7C(uint64_t a1)
{
  v2 = sub_10049D3C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049ABB8(uint64_t a1)
{
  v2 = sub_10049D3C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049ACFC(uint64_t a1)
{
  v2 = sub_10049D414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049AD38(uint64_t a1)
{
  v2 = sub_10049D414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049AE70(uint64_t a1)
{
  v2 = sub_10049D468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049AEAC(uint64_t a1)
{
  v2 = sub_10049D468();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049AFD0(uint64_t a1)
{
  v2 = sub_10049D4BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049B00C(uint64_t a1)
{
  v2 = sub_10049D4BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049B130(uint64_t a1)
{
  v2 = sub_10049D510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049B16C(uint64_t a1)
{
  v2 = sub_10049D510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049B298(uint64_t a1)
{
  v2 = sub_10049D564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049B2D4(uint64_t a1)
{
  v2 = sub_10049D564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049B418(uint64_t a1)
{
  v2 = sub_10049D5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049B454(uint64_t a1)
{
  v2 = sub_10049D5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049B58C(uint64_t a1)
{
  v2 = sub_10049D60C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049B5C8(uint64_t a1)
{
  v2 = sub_10049D60C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
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

uint64_t sub_10049B78C(uint64_t a1)
{
  v2 = sub_10049D660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049B7C8(uint64_t a1)
{
  v2 = sub_10049D660();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10049B848(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v16 = a6;
  v10 = sub_1000BC4D4(a4, a5);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  sub_1000035D0(a1, a1[3]);
  v16();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  sub_100017D5C(a2, a3);
  sub_10049CB58();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v17, v18);
  return (*(v11 + 8))(v13, v10);
}

Swift::Int sub_10049BA5C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100017D5C(v1, v2);
  Data.hash(into:)();
  sub_100016590(v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10049BAC0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_100017D5C(v3, v2);
  Data.hash(into:)();

  return sub_100016590(v3, v2);
}

Swift::Int sub_10049BB20(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_100017D5C(v2, v3);
  Data.hash(into:)();
  sub_100016590(v2, v3);
  return Hasher._finalize()();
}

BOOL sub_10049BB80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_100017D5C(*a1, v3);
  sub_100017D5C(v4, v5);
  v6 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
  sub_100016590(v4, v5);
  sub_100016590(v2, v3);
  return v6;
}

BOOL _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100017D5C(a3, a4);
          return sub_100F0B1BC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10049BD68(uint64_t a1, unint64_t a2)
{
  if (qword_101694730 != -1)
  {
    swift_once();
  }

  result = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, qword_1016A15C0, *algn_1016A15C8);
  if (result)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      v16 = v5;
      swift_once();
      v5 = v16;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C340, "Zero bytes sent for private key", 31, 2, _swiftEmptyArrayStorage);
    sub_100018350();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    goto LABEL_27;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_26;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 == 85)
      {
        return a1;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
    if (BYTE6(a2) == 85)
    {
      return a1;
    }

    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a1) - a1 == 85)
  {
    return a1;
  }

LABEL_17:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 != 1)
  {
LABEL_25:
    v12 = BYTE6(a2);
    goto LABEL_26;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_26:
    sub_100018350();
    swift_allocError();
    *v15 = 85;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
LABEL_27:
    swift_willThrow();
    sub_100016590(a1, a2);
    return a1;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10049BF70(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) == a3)
      {
        return result;
      }

LABEL_11:
      if (v4 == 2)
      {
        v13 = *(result + 16);
        v12 = *(result + 24);
        v11 = v12 - v13;
        if (!__OFSUB__(v12, v13))
        {
          v9 = a2;
          v10 = result;
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      if (v4 != 1)
      {
        v10 = result;
        v9 = a2;
        v11 = BYTE6(a2);
        goto LABEL_20;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        v9 = a2;
        v10 = result;
        v11 = HIDWORD(result) - result;
        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == a3)
      {
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if (v4 == 2)
  {
    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == a3)
      {
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!a3)
  {
    return result;
  }

  v10 = result;
  v9 = a2;
  v11 = 0;
LABEL_20:
  sub_100018350();
  swift_allocError();
  *v14 = a3;
  *(v14 + 8) = v11;
  *(v14 + 16) = 0;
  swift_willThrow();
  return sub_100016590(v10, v9);
}

uint64_t sub_10049C0AC(uint64_t a1, unint64_t a2)
{
  if (qword_101694740 != -1)
  {
    swift_once();
  }

  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, qword_1016A15E0, *algn_1016A15E8))
  {
    v6 = static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      v12 = v6;
      swift_once();
      v6 = v12;
    }

    v3 = 2;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C340, "Zero bytes sent for public key", 30, 2, _swiftEmptyArrayStorage);
    sub_100018350();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    sub_100017D5C(a1, a2);
    v8 = sub_10049BF70(a1, a2, 57);
    if (!v2)
    {
      v3 = v8;
      v10 = sub_100A79FEC(a1, a2);
      sub_100016590(v10, v11);
      sub_100016590(a1, a2);
      return v3;
    }
  }

  sub_100016590(a1, a2);
  return v3;
}

uint64_t sub_10049C290(uint64_t a1, unint64_t a2)
{
  if (qword_101694738 != -1)
  {
    swift_once();
  }

  result = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, qword_1016A15D0, *algn_1016A15D8);
  if (result)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      v16 = v5;
      swift_once();
      v5 = v16;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C340, "Zero bytes sent for public key", 30, 2, _swiftEmptyArrayStorage);
    sub_100018350();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    goto LABEL_27;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_26;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 == 65)
      {
        return a1;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
    if (BYTE6(a2) == 65)
    {
      return a1;
    }

    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a1) - a1 == 65)
  {
    return a1;
  }

LABEL_17:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 != 1)
  {
LABEL_25:
    v12 = BYTE6(a2);
    goto LABEL_26;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_26:
    sub_100018350();
    swift_allocError();
    *v15 = 65;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
LABEL_27:
    swift_willThrow();
    sub_100016590(a1, a2);
    return a1;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10049C498(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for HashAlgorithm();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;

  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v32 = v9;
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  v12(v8, v5);
  if (v15 >> 60 == 15)
  {
LABEL_5:
    sub_100006654(v32, v11);
LABEL_6:
    sub_100018350();
    swift_allocError();
    *v18 = xmmword_10139D920;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  v30 = v15;
  static String.Encoding.utf8.getter();
  v31 = String.data(using:allowLossyConversion:)();
  v17 = v16;
  v12(v8, v5);
  if (v17 >> 60 == 15)
  {
    sub_100006654(v13, v30);
    goto LABEL_5;
  }

  v20 = v17;
  v29 = v13;
  v21 = v30;
  v35 = v13;
  v36 = v30;
  sub_100017D5C(v13, v30);
  v22 = v32;
  Data.append(_:)();
  v28 = v20;
  Data.append(_:)();
  v23 = v33;
  (*(v33 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v2);
  v24 = Data.hash(algorithm:)();
  v26 = v25;
  (*(v23 + 8))(v4, v2);
  sub_100016590(v35, v36);
  sub_100017D5C(v24, v26);
  v27 = v37;
  sub_100496484(v24, v26, &v34);
  sub_100006654(v22, v11);
  sub_100006654(v29, v21);
  sub_100006654(v31, v28);
  result = sub_100016590(v24, v26);
  if (!v27)
  {
    return v34;
  }

  return result;
}

uint64_t _s12searchpartyd13AdvertisementV10macAddress7pubKey22ekAC10FindMyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = MACAddress.data.getter();
  v19 = v7;
  Data._Representation.subscript.getter();
  Data._Representation.subscript.setter();
  v8 = v18;
  v9 = v19;
  v17[0] = v18;
  v17[1] = v19;
  v16[3] = &type metadata for Data;
  v16[4] = &protocol witness table for Data;
  v16[0] = a2;
  v16[1] = a3;
  v10 = sub_1000035D0(v16, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  sub_100017D5C(v8, v9);
  sub_100017DB0(v11, v12, v17);
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(a1, v13);
  sub_100007BAC(v16);
  v14 = v17[0];
  sub_100016590(v18, v19);
  return v14;
}

unint64_t sub_10049C93C()
{
  result = qword_1016A1608;
  if (!qword_1016A1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1608);
  }

  return result;
}

void *sub_10049C990(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A2158, &qword_1013AA458);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_10049C93C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_10049CB04()
{
  result = qword_1016A1618;
  if (!qword_1016A1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1618);
  }

  return result;
}

unint64_t sub_10049CB58()
{
  result = qword_1016A1620;
  if (!qword_1016A1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1620);
  }

  return result;
}

uint64_t sub_10049CBAC(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v8 = result;
      v7 = a2;
      v9 = 0;
      goto LABEL_19;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 174)
      {
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v2)
  {
    if (BYTE6(a2) == 174)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_22;
  }

  if (HIDWORD(result) - result == 174)
  {
    return result;
  }

LABEL_11:
  if (v2 == 2)
  {
    v11 = *(result + 16);
    v10 = *(result + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      v7 = a2;
      v8 = result;
      goto LABEL_19;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  if (v2 != 1)
  {
    v8 = result;
    v7 = a2;
    v9 = BYTE6(a2);
    goto LABEL_19;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = a2;
  v8 = result;
  v9 = HIDWORD(result) - result;
LABEL_19:
  sub_100018350();
  swift_allocError();
  *v12 = 174;
  *(v12 + 8) = v9;
  *(v12 + 16) = 0;
  swift_willThrow();
  return sub_100016590(v8, v7);
}

unint64_t sub_10049CCDC()
{
  result = qword_1016A1630;
  if (!qword_1016A1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1630);
  }

  return result;
}

unint64_t sub_10049CD30()
{
  result = qword_1016A1640;
  if (!qword_1016A1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1640);
  }

  return result;
}

unint64_t sub_10049CD84()
{
  result = qword_1016A1650;
  if (!qword_1016A1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1650);
  }

  return result;
}

unint64_t sub_10049CDD8()
{
  result = qword_1016A1660;
  if (!qword_1016A1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1660);
  }

  return result;
}

unint64_t sub_10049CE2C()
{
  result = qword_1016A1670;
  if (!qword_1016A1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1670);
  }

  return result;
}

unint64_t sub_10049CE80()
{
  result = qword_1016A1678;
  if (!qword_1016A1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1678);
  }

  return result;
}

unint64_t sub_10049CED4()
{
  result = qword_1016A1688;
  if (!qword_1016A1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1688);
  }

  return result;
}

unint64_t sub_10049CF28()
{
  result = qword_1016A1698;
  if (!qword_1016A1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1698);
  }

  return result;
}

unint64_t sub_10049CF7C()
{
  result = qword_1016A16A8;
  if (!qword_1016A16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A16A8);
  }

  return result;
}

unint64_t sub_10049CFD0()
{
  result = qword_1016A16B8;
  if (!qword_1016A16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A16B8);
  }

  return result;
}

unint64_t sub_10049D024()
{
  result = qword_1016A16C8;
  if (!qword_1016A16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A16C8);
  }

  return result;
}

unint64_t sub_10049D078()
{
  result = qword_1016A16D8;
  if (!qword_1016A16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A16D8);
  }

  return result;
}

unint64_t sub_10049D0CC()
{
  result = qword_1016A16E8;
  if (!qword_1016A16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A16E8);
  }

  return result;
}

unint64_t sub_10049D120()
{
  result = qword_1016A16F8;
  if (!qword_1016A16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A16F8);
  }

  return result;
}

unint64_t sub_10049D174()
{
  result = qword_1016A1708;
  if (!qword_1016A1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1708);
  }

  return result;
}

unint64_t sub_10049D1C8()
{
  result = qword_1016A1718;
  if (!qword_1016A1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1718);
  }

  return result;
}

unint64_t sub_10049D21C()
{
  result = qword_1016A1728;
  if (!qword_1016A1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1728);
  }

  return result;
}

unint64_t sub_10049D270()
{
  result = qword_1016A1738;
  if (!qword_1016A1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1738);
  }

  return result;
}

unint64_t sub_10049D2C4()
{
  result = qword_1016A1748;
  if (!qword_1016A1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1748);
  }

  return result;
}

unint64_t sub_10049D318()
{
  result = qword_1016A1758;
  if (!qword_1016A1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1758);
  }

  return result;
}

unint64_t sub_10049D36C()
{
  result = qword_1016A1768;
  if (!qword_1016A1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1768);
  }

  return result;
}

unint64_t sub_10049D3C0()
{
  result = qword_1016A1778;
  if (!qword_1016A1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1778);
  }

  return result;
}

unint64_t sub_10049D414()
{
  result = qword_1016A1788;
  if (!qword_1016A1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1788);
  }

  return result;
}

unint64_t sub_10049D468()
{
  result = qword_1016A1798;
  if (!qword_1016A1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1798);
  }

  return result;
}

unint64_t sub_10049D4BC()
{
  result = qword_1016A17A8;
  if (!qword_1016A17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A17A8);
  }

  return result;
}

unint64_t sub_10049D510()
{
  result = qword_1016A17B8;
  if (!qword_1016A17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A17B8);
  }

  return result;
}

unint64_t sub_10049D564()
{
  result = qword_1016A17C8;
  if (!qword_1016A17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A17C8);
  }

  return result;
}

unint64_t sub_10049D5B8()
{
  result = qword_1016A17D8;
  if (!qword_1016A17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A17D8);
  }

  return result;
}

unint64_t sub_10049D60C()
{
  result = qword_1016A17E8;
  if (!qword_1016A17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A17E8);
  }

  return result;
}

unint64_t sub_10049D660()
{
  result = qword_1016A17F8;
  if (!qword_1016A17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A17F8);
  }

  return result;
}

void *sub_10049D6B4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_1000BC4D4(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = sub_1000035D0(a1, a1[3]);
  a4();
  v12 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1004A4634();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v10, v8);
    v12 = v14;
    sub_100007BAC(a1);
  }

  return v12;
}

unint64_t sub_10049D83C()
{
  result = qword_1016A1800;
  if (!qword_1016A1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1800);
  }

  return result;
}

unint64_t sub_10049D890(uint64_t a1)
{
  result = sub_10049D8B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049D8B8()
{
  result = qword_1016A1808;
  if (!qword_1016A1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1808);
  }

  return result;
}

unint64_t sub_10049D90C(uint64_t a1)
{
  result = sub_10049D934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049D934()
{
  result = qword_1016A1810;
  if (!qword_1016A1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1810);
  }

  return result;
}

unint64_t sub_10049D9DC()
{
  result = qword_1016A1818;
  if (!qword_1016A1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1818);
  }

  return result;
}

unint64_t sub_10049DA30()
{
  result = qword_1016A1820;
  if (!qword_1016A1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1820);
  }

  return result;
}

unint64_t sub_10049DA84()
{
  result = qword_1016A1828;
  if (!qword_1016A1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1828);
  }

  return result;
}

unint64_t sub_10049DAD8()
{
  result = qword_1016A1830;
  if (!qword_1016A1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1830);
  }

  return result;
}

unint64_t sub_10049DB30()
{
  result = qword_1016A1838;
  if (!qword_1016A1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1838);
  }

  return result;
}

unint64_t sub_10049DB84(uint64_t a1)
{
  result = sub_10049DBAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049DBAC()
{
  result = qword_1016A1840;
  if (!qword_1016A1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1840);
  }

  return result;
}

unint64_t sub_10049DC54()
{
  result = qword_1016A1848;
  if (!qword_1016A1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1848);
  }

  return result;
}

unint64_t sub_10049DCA8()
{
  result = qword_1016A1850;
  if (!qword_1016A1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1850);
  }

  return result;
}

unint64_t sub_10049DCFC()
{
  result = qword_1016A1858;
  if (!qword_1016A1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1858);
  }

  return result;
}

unint64_t sub_10049DD50()
{
  result = qword_1016A1860;
  if (!qword_1016A1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1860);
  }

  return result;
}

unint64_t sub_10049DDA8()
{
  result = qword_1016A1868;
  if (!qword_1016A1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1868);
  }

  return result;
}

unint64_t sub_10049DDFC(uint64_t a1)
{
  result = sub_10049DE24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049DE24()
{
  result = qword_1016A1870;
  if (!qword_1016A1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1870);
  }

  return result;
}

unint64_t sub_10049DECC()
{
  result = qword_1016A1878;
  if (!qword_1016A1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1878);
  }

  return result;
}

unint64_t sub_10049DF20()
{
  result = qword_1016BB100;
  if (!qword_1016BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB100);
  }

  return result;
}

unint64_t sub_10049DF74()
{
  result = qword_1016A1880;
  if (!qword_1016A1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1880);
  }

  return result;
}

unint64_t sub_10049DFC8()
{
  result = qword_1016A1888;
  if (!qword_1016A1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1888);
  }

  return result;
}

unint64_t sub_10049E020()
{
  result = qword_1016A1890;
  if (!qword_1016A1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1890);
  }

  return result;
}

unint64_t sub_10049E074(uint64_t a1)
{
  result = sub_10049E09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049E09C()
{
  result = qword_1016A1898;
  if (!qword_1016A1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1898);
  }

  return result;
}

unint64_t sub_10049E144()
{
  result = qword_1016A18A0;
  if (!qword_1016A18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18A0);
  }

  return result;
}

unint64_t sub_10049E198()
{
  result = qword_1016A18A8;
  if (!qword_1016A18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18A8);
  }

  return result;
}

unint64_t sub_10049E1EC()
{
  result = qword_1016A18B0;
  if (!qword_1016A18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18B0);
  }

  return result;
}

unint64_t sub_10049E240()
{
  result = qword_1016A18B8;
  if (!qword_1016A18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18B8);
  }

  return result;
}

unint64_t sub_10049E298()
{
  result = qword_1016A18C0;
  if (!qword_1016A18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18C0);
  }

  return result;
}

unint64_t sub_10049E2EC(uint64_t a1)
{
  result = sub_10049E314();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049E314()
{
  result = qword_1016A18C8;
  if (!qword_1016A18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18C8);
  }

  return result;
}

unint64_t sub_10049E3BC()
{
  result = qword_1016BB0E0;
  if (!qword_1016BB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0E0);
  }

  return result;
}

unint64_t sub_10049E410()
{
  result = qword_1016A18D0;
  if (!qword_1016A18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18D0);
  }

  return result;
}

unint64_t sub_10049E464()
{
  result = qword_1016A18D8;
  if (!qword_1016A18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18D8);
  }

  return result;
}

unint64_t sub_10049E4B8()
{
  result = qword_1016A18E0;
  if (!qword_1016A18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18E0);
  }

  return result;
}

unint64_t sub_10049E510()
{
  result = qword_1016A18E8;
  if (!qword_1016A18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18E8);
  }

  return result;
}

unint64_t sub_10049E564(uint64_t a1)
{
  result = sub_10049E58C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049E58C()
{
  result = qword_1016A18F0;
  if (!qword_1016A18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18F0);
  }

  return result;
}

unint64_t sub_10049E634()
{
  result = qword_1016A18F8;
  if (!qword_1016A18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A18F8);
  }

  return result;
}

unint64_t sub_10049E68C()
{
  result = qword_1016A1900;
  if (!qword_1016A1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1900);
  }

  return result;
}

unint64_t sub_10049E6E0(uint64_t a1)
{
  result = sub_10049E708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049E708()
{
  result = qword_1016A1908;
  if (!qword_1016A1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1908);
  }

  return result;
}

unint64_t sub_10049E7B0()
{
  result = qword_1016A1910;
  if (!qword_1016A1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1910);
  }

  return result;
}

unint64_t sub_10049E804()
{
  result = qword_1016A1918;
  if (!qword_1016A1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1918);
  }

  return result;
}

unint64_t sub_10049E858()
{
  result = qword_1016A1920;
  if (!qword_1016A1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1920);
  }

  return result;
}

unint64_t sub_10049E8B0()
{
  result = qword_1016A1928;
  if (!qword_1016A1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1928);
  }

  return result;
}

unint64_t sub_10049E904(uint64_t a1)
{
  result = sub_10049E92C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049E92C()
{
  result = qword_1016A1930;
  if (!qword_1016A1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1930);
  }

  return result;
}

unint64_t sub_10049E9D4()
{
  result = qword_1016A1938;
  if (!qword_1016A1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1938);
  }

  return result;
}

unint64_t sub_10049EA2C()
{
  result = qword_1016A1940;
  if (!qword_1016A1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1940);
  }

  return result;
}

unint64_t sub_10049EA80(uint64_t a1)
{
  result = sub_10049EAA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049EAA8()
{
  result = qword_1016A1948;
  if (!qword_1016A1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1948);
  }

  return result;
}

unint64_t sub_10049EB50()
{
  result = qword_1016A1950;
  if (!qword_1016A1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1950);
  }

  return result;
}

unint64_t sub_10049EBA4()
{
  result = qword_1016A1958;
  if (!qword_1016A1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1958);
  }

  return result;
}

unint64_t sub_10049EBF8()
{
  result = qword_1016A1960;
  if (!qword_1016A1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1960);
  }

  return result;
}

unint64_t sub_10049EC50()
{
  result = qword_1016A1968;
  if (!qword_1016A1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1968);
  }

  return result;
}

unint64_t sub_10049ECA4(uint64_t a1)
{
  result = sub_10049ECCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049ECCC()
{
  result = qword_1016A1970;
  if (!qword_1016A1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1970);
  }

  return result;
}

unint64_t sub_10049ED74()
{
  result = qword_1016A1978;
  if (!qword_1016A1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1978);
  }

  return result;
}

unint64_t sub_10049EDC8()
{
  result = qword_1016A1980;
  if (!qword_1016A1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1980);
  }

  return result;
}

unint64_t sub_10049EE1C()
{
  result = qword_1016A1988;
  if (!qword_1016A1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1988);
  }

  return result;
}

unint64_t sub_10049EE70()
{
  result = qword_1016A1990;
  if (!qword_1016A1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1990);
  }

  return result;
}

unint64_t sub_10049EEC8()
{
  result = qword_1016A1998;
  if (!qword_1016A1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1998);
  }

  return result;
}

unint64_t sub_10049EF1C(uint64_t a1)
{
  result = sub_10049EF44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049EF44()
{
  result = qword_1016A19A0;
  if (!qword_1016A19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19A0);
  }

  return result;
}

unint64_t sub_10049EFEC()
{
  result = qword_1016A19A8;
  if (!qword_1016A19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19A8);
  }

  return result;
}

unint64_t sub_10049F040()
{
  result = qword_1016A19B0;
  if (!qword_1016A19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19B0);
  }

  return result;
}

unint64_t sub_10049F098()
{
  result = qword_1016A19B8;
  if (!qword_1016A19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19B8);
  }

  return result;
}

unint64_t sub_10049F0EC(uint64_t a1)
{
  result = sub_10049F114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049F114()
{
  result = qword_1016A19C0;
  if (!qword_1016A19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19C0);
  }

  return result;
}

unint64_t sub_10049F1BC()
{
  result = qword_1016A19C8;
  if (!qword_1016A19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19C8);
  }

  return result;
}

unint64_t sub_10049F210()
{
  result = qword_1016A19D0;
  if (!qword_1016A19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19D0);
  }

  return result;
}

unint64_t sub_10049F264()
{
  result = qword_1016A19D8;
  if (!qword_1016A19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19D8);
  }

  return result;
}

unint64_t sub_10049F2B8()
{
  result = qword_1016A19E0;
  if (!qword_1016A19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19E0);
  }

  return result;
}

unint64_t sub_10049F310()
{
  result = qword_1016A19E8;
  if (!qword_1016A19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19E8);
  }

  return result;
}

unint64_t sub_10049F364(uint64_t a1)
{
  result = sub_10049F38C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049F38C()
{
  result = qword_1016A19F0;
  if (!qword_1016A19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19F0);
  }

  return result;
}

unint64_t sub_10049F434()
{
  result = qword_1016A19F8;
  if (!qword_1016A19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A19F8);
  }

  return result;
}

unint64_t sub_10049F488()
{
  result = qword_1016A1A00;
  if (!qword_1016A1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A00);
  }

  return result;
}

unint64_t sub_10049F4DC()
{
  result = qword_1016A1A08;
  if (!qword_1016A1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A08);
  }

  return result;
}

unint64_t sub_10049F530()
{
  result = qword_1016A1A10;
  if (!qword_1016A1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A10);
  }

  return result;
}

unint64_t sub_10049F588()
{
  result = qword_1016A1A18;
  if (!qword_1016A1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A18);
  }

  return result;
}

unint64_t sub_10049F5DC(uint64_t a1)
{
  result = sub_10049F604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049F604()
{
  result = qword_1016A1A20;
  if (!qword_1016A1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A20);
  }

  return result;
}

unint64_t sub_10049F6AC()
{
  result = qword_1016A1A28;
  if (!qword_1016A1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A28);
  }

  return result;
}

unint64_t sub_10049F700()
{
  result = qword_1016A1A30;
  if (!qword_1016A1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A30);
  }

  return result;
}

unint64_t sub_10049F754()
{
  result = qword_1016A1A38;
  if (!qword_1016A1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A38);
  }

  return result;
}

unint64_t sub_10049F7A8()
{
  result = qword_1016A1A40;
  if (!qword_1016A1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A40);
  }

  return result;
}

unint64_t sub_10049F800()
{
  result = qword_1016A1A48;
  if (!qword_1016A1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A48);
  }

  return result;
}

unint64_t sub_10049F854(uint64_t a1)
{
  result = sub_10049F87C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049F87C()
{
  result = qword_1016A1A50;
  if (!qword_1016A1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A50);
  }

  return result;
}

unint64_t sub_10049F924()
{
  result = qword_1016A1A58;
  if (!qword_1016A1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A58);
  }

  return result;
}

unint64_t sub_10049F978()
{
  result = qword_1016A1A60;
  if (!qword_1016A1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A60);
  }

  return result;
}

unint64_t sub_10049F9CC()
{
  result = qword_1016A1A68;
  if (!qword_1016A1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A68);
  }

  return result;
}

unint64_t sub_10049FA20()
{
  result = qword_1016A1A70;
  if (!qword_1016A1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A70);
  }

  return result;
}

unint64_t sub_10049FA78()
{
  result = qword_1016A1A78;
  if (!qword_1016A1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A78);
  }

  return result;
}

unint64_t sub_10049FACC(uint64_t a1)
{
  result = sub_10049FAF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049FAF4()
{
  result = qword_1016A1A80;
  if (!qword_1016A1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A80);
  }

  return result;
}

unint64_t sub_10049FB9C()
{
  result = qword_1016A1A88;
  if (!qword_1016A1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A88);
  }

  return result;
}

unint64_t sub_10049FBF0()
{
  result = qword_1016A1A90;
  if (!qword_1016A1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A90);
  }

  return result;
}

unint64_t sub_10049FC44()
{
  result = qword_1016A1A98;
  if (!qword_1016A1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1A98);
  }

  return result;
}

unint64_t sub_10049FC98()
{
  result = qword_1016A1AA0;
  if (!qword_1016A1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AA0);
  }

  return result;
}

unint64_t sub_10049FCF0()
{
  result = qword_1016A1AA8;
  if (!qword_1016A1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AA8);
  }

  return result;
}

unint64_t sub_10049FD44(uint64_t a1)
{
  result = sub_10049FD6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049FD6C()
{
  result = qword_1016A1AB0;
  if (!qword_1016A1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AB0);
  }

  return result;
}

unint64_t sub_10049FE14()
{
  result = qword_1016A1AB8;
  if (!qword_1016A1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AB8);
  }

  return result;
}

unint64_t sub_10049FE68()
{
  result = qword_1016A1AC0;
  if (!qword_1016A1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AC0);
  }

  return result;
}

unint64_t sub_10049FEBC()
{
  result = qword_1016A1AC8;
  if (!qword_1016A1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AC8);
  }

  return result;
}

unint64_t sub_10049FF10()
{
  result = qword_1016A1AD0;
  if (!qword_1016A1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AD0);
  }

  return result;
}

unint64_t sub_10049FF68()
{
  result = qword_1016A1AD8;
  if (!qword_1016A1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AD8);
  }

  return result;
}

unint64_t sub_10049FFBC(uint64_t a1)
{
  result = sub_10049FFE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10049FFE4()
{
  result = qword_1016A1AE0;
  if (!qword_1016A1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AE0);
  }

  return result;
}

unint64_t sub_1004A008C()
{
  result = qword_1016A1AE8;
  if (!qword_1016A1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AE8);
  }

  return result;
}

unint64_t sub_1004A00E0()
{
  result = qword_1016A1AF0;
  if (!qword_1016A1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AF0);
  }

  return result;
}

unint64_t sub_1004A0134()
{
  result = qword_1016A1AF8;
  if (!qword_1016A1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1AF8);
  }

  return result;
}

unint64_t sub_1004A0188()
{
  result = qword_1016A1B00;
  if (!qword_1016A1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B00);
  }

  return result;
}

unint64_t sub_1004A01E0()
{
  result = qword_1016A1B08;
  if (!qword_1016A1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B08);
  }

  return result;
}

unint64_t sub_1004A0234(uint64_t a1)
{
  result = sub_1004A025C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A025C()
{
  result = qword_1016A1B10;
  if (!qword_1016A1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B10);
  }

  return result;
}

unint64_t sub_1004A0304()
{
  result = qword_1016A1B18;
  if (!qword_1016A1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B18);
  }

  return result;
}

unint64_t sub_1004A0358()
{
  result = qword_1016A1B20;
  if (!qword_1016A1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B20);
  }

  return result;
}

unint64_t sub_1004A03AC()
{
  result = qword_1016A1B28;
  if (!qword_1016A1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B28);
  }

  return result;
}

unint64_t sub_1004A0404()
{
  result = qword_1016A1B30;
  if (!qword_1016A1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B30);
  }

  return result;
}

unint64_t sub_1004A0458(uint64_t a1)
{
  result = sub_1004A0480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A0480()
{
  result = qword_1016A1B38;
  if (!qword_1016A1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B38);
  }

  return result;
}

unint64_t sub_1004A0528()
{
  result = qword_1016A1B40;
  if (!qword_1016A1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B40);
  }

  return result;
}

unint64_t sub_1004A057C()
{
  result = qword_1016A1B48;
  if (!qword_1016A1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B48);
  }

  return result;
}

unint64_t sub_1004A05D0()
{
  result = qword_1016A1B50;
  if (!qword_1016A1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B50);
  }

  return result;
}

unint64_t sub_1004A0628()
{
  result = qword_1016A1B58;
  if (!qword_1016A1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B58);
  }

  return result;
}

unint64_t sub_1004A067C(uint64_t a1)
{
  result = sub_1004A06A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A06A4()
{
  result = qword_1016A1B60;
  if (!qword_1016A1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B60);
  }

  return result;
}

unint64_t sub_1004A074C()
{
  result = qword_1016A1B68;
  if (!qword_1016A1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B68);
  }

  return result;
}

unint64_t sub_1004A07A0()
{
  result = qword_1016A1B70;
  if (!qword_1016A1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B70);
  }

  return result;
}

unint64_t sub_1004A07F4()
{
  result = qword_1016A1B78;
  if (!qword_1016A1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B78);
  }

  return result;
}

unint64_t sub_1004A0848()
{
  result = qword_1016A1B80;
  if (!qword_1016A1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B80);
  }

  return result;
}

unint64_t sub_1004A08A0()
{
  result = qword_1016A1B88;
  if (!qword_1016A1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B88);
  }

  return result;
}

unint64_t sub_1004A08F4(uint64_t a1)
{
  result = sub_1004A091C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A091C()
{
  result = qword_1016A1B90;
  if (!qword_1016A1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B90);
  }

  return result;
}

unint64_t sub_1004A09C4()
{
  result = qword_1016A1B98;
  if (!qword_1016A1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1B98);
  }

  return result;
}

unint64_t sub_1004A0A18()
{
  result = qword_1016A1BA0;
  if (!qword_1016A1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BA0);
  }

  return result;
}

unint64_t sub_1004A0A6C()
{
  result = qword_1016A1BA8;
  if (!qword_1016A1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BA8);
  }

  return result;
}

unint64_t sub_1004A0AC0()
{
  result = qword_1016A1BB0;
  if (!qword_1016A1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BB0);
  }

  return result;
}

unint64_t sub_1004A0B18()
{
  result = qword_1016A1BB8;
  if (!qword_1016A1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BB8);
  }

  return result;
}

unint64_t sub_1004A0B6C(uint64_t a1)
{
  result = sub_1004A0B94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A0B94()
{
  result = qword_1016A1BC0;
  if (!qword_1016A1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BC0);
  }

  return result;
}

unint64_t sub_1004A0C3C()
{
  result = qword_1016A1BC8;
  if (!qword_1016A1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BC8);
  }

  return result;
}

unint64_t sub_1004A0C90()
{
  result = qword_1016A1BD0;
  if (!qword_1016A1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BD0);
  }

  return result;
}

unint64_t sub_1004A0CE4()
{
  result = qword_1016A1BD8;
  if (!qword_1016A1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BD8);
  }

  return result;
}

unint64_t sub_1004A0D38()
{
  result = qword_1016A1BE0;
  if (!qword_1016A1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BE0);
  }

  return result;
}

unint64_t sub_1004A0D90()
{
  result = qword_1016A1BE8;
  if (!qword_1016A1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BE8);
  }

  return result;
}

unint64_t sub_1004A0DE4(uint64_t a1)
{
  result = sub_1004A0E0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A0E0C()
{
  result = qword_1016A1BF0;
  if (!qword_1016A1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BF0);
  }

  return result;
}

unint64_t sub_1004A0EB4()
{
  result = qword_1016A1BF8;
  if (!qword_1016A1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1BF8);
  }

  return result;
}

unint64_t sub_1004A0F08()
{
  result = qword_1016A1C00;
  if (!qword_1016A1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C00);
  }

  return result;
}

unint64_t sub_1004A0F5C()
{
  result = qword_1016A1C08;
  if (!qword_1016A1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C08);
  }

  return result;
}

unint64_t sub_1004A0FB0()
{
  result = qword_1016A1C10;
  if (!qword_1016A1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C10);
  }

  return result;
}

unint64_t sub_1004A1008()
{
  result = qword_1016A1C18;
  if (!qword_1016A1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C18);
  }

  return result;
}

unint64_t sub_1004A105C(uint64_t a1)
{
  result = sub_1004A1084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1084()
{
  result = qword_1016A1C20;
  if (!qword_1016A1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C20);
  }

  return result;
}

unint64_t sub_1004A112C()
{
  result = qword_1016A1C28;
  if (!qword_1016A1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C28);
  }

  return result;
}

unint64_t sub_1004A1180()
{
  result = qword_1016A1C30;
  if (!qword_1016A1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C30);
  }

  return result;
}

unint64_t sub_1004A11D4()
{
  result = qword_1016A1C38;
  if (!qword_1016A1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C38);
  }

  return result;
}

unint64_t sub_1004A1228()
{
  result = qword_1016A1C40;
  if (!qword_1016A1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C40);
  }

  return result;
}

unint64_t sub_1004A1280()
{
  result = qword_1016A1C48;
  if (!qword_1016A1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C48);
  }

  return result;
}

unint64_t sub_1004A12D4(uint64_t a1)
{
  result = sub_1004A12FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A12FC()
{
  result = qword_1016A1C50;
  if (!qword_1016A1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C50);
  }

  return result;
}

unint64_t sub_1004A13A4()
{
  result = qword_1016A1C58;
  if (!qword_1016A1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C58);
  }

  return result;
}

unint64_t sub_1004A13F8()
{
  result = qword_1016A1C60;
  if (!qword_1016A1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C60);
  }

  return result;
}

unint64_t sub_1004A144C()
{
  result = qword_1016A1C68;
  if (!qword_1016A1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C68);
  }

  return result;
}

unint64_t sub_1004A14A0()
{
  result = qword_1016A1C70;
  if (!qword_1016A1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C70);
  }

  return result;
}

unint64_t sub_1004A14F8()
{
  result = qword_1016A1C78;
  if (!qword_1016A1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C78);
  }

  return result;
}

unint64_t sub_1004A154C(uint64_t a1)
{
  result = sub_1004A1574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1574()
{
  result = qword_1016A1C80;
  if (!qword_1016A1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C80);
  }

  return result;
}

unint64_t sub_1004A15C8(uint64_t a1)
{
  result = sub_1004A15F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A15F0()
{
  result = qword_1016A1C88;
  if (!qword_1016A1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C88);
  }

  return result;
}

unint64_t sub_1004A1698()
{
  result = qword_1016A1C90;
  if (!qword_1016A1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C90);
  }

  return result;
}

unint64_t sub_1004A16EC()
{
  result = qword_1016A1C98;
  if (!qword_1016A1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1C98);
  }

  return result;
}

unint64_t sub_1004A1740()
{
  result = qword_1016A1CA0;
  if (!qword_1016A1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CA0);
  }

  return result;
}

unint64_t sub_1004A1794()
{
  result = qword_1016A1CA8;
  if (!qword_1016A1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CA8);
  }

  return result;
}

unint64_t sub_1004A17EC()
{
  result = qword_1016A1CB0;
  if (!qword_1016A1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CB0);
  }

  return result;
}

unint64_t sub_1004A1840(uint64_t a1)
{
  result = sub_1004A1868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1868()
{
  result = qword_1016A1CB8;
  if (!qword_1016A1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CB8);
  }

  return result;
}

unint64_t sub_1004A18BC(uint64_t a1)
{
  result = sub_1004A18E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A18E4()
{
  result = qword_1016A1CC0;
  if (!qword_1016A1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CC0);
  }

  return result;
}

unint64_t sub_1004A198C()
{
  result = qword_1016A1CC8;
  if (!qword_1016A1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CC8);
  }

  return result;
}

unint64_t sub_1004A19E0()
{
  result = qword_1016A1CD0;
  if (!qword_1016A1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CD0);
  }

  return result;
}

unint64_t sub_1004A1A34()
{
  result = qword_1016A1CD8;
  if (!qword_1016A1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CD8);
  }

  return result;
}

unint64_t sub_1004A1A88()
{
  result = qword_1016A1CE0;
  if (!qword_1016A1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CE0);
  }

  return result;
}

unint64_t sub_1004A1AE0()
{
  result = qword_1016A1CE8;
  if (!qword_1016A1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CE8);
  }

  return result;
}

unint64_t sub_1004A1B34(uint64_t a1)
{
  result = sub_1004A1B5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1B5C()
{
  result = qword_1016A1CF0;
  if (!qword_1016A1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CF0);
  }

  return result;
}

unint64_t sub_1004A1BB0(uint64_t a1)
{
  result = sub_1004A1BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1BD8()
{
  result = qword_1016A1CF8;
  if (!qword_1016A1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1CF8);
  }

  return result;
}

unint64_t sub_1004A1C80()
{
  result = qword_1016A1D00;
  if (!qword_1016A1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D00);
  }

  return result;
}

unint64_t sub_1004A1CD4()
{
  result = qword_1016A1D08;
  if (!qword_1016A1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D08);
  }

  return result;
}

unint64_t sub_1004A1D28()
{
  result = qword_1016A1D10;
  if (!qword_1016A1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D10);
  }

  return result;
}

unint64_t sub_1004A1D7C()
{
  result = qword_1016A1D18;
  if (!qword_1016A1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D18);
  }

  return result;
}

unint64_t sub_1004A1DD4()
{
  result = qword_1016A1D20;
  if (!qword_1016A1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D20);
  }

  return result;
}

unint64_t sub_1004A1E28(uint64_t a1)
{
  result = sub_1004A1E50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1E50()
{
  result = qword_1016A1D28;
  if (!qword_1016A1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D28);
  }

  return result;
}

unint64_t sub_1004A1EA4(uint64_t a1)
{
  result = sub_1004A1ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004A1ECC()
{
  result = qword_1016A1D30;
  if (!qword_1016A1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D30);
  }

  return result;
}

uint64_t sub_1004A1F74(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1004A1FD8()
{
  result = qword_1016A1D38;
  if (!qword_1016A1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D38);
  }

  return result;
}

unint64_t sub_1004A202C()
{
  result = qword_1016A1D40;
  if (!qword_1016A1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D40);
  }

  return result;
}

unint64_t sub_1004A2080()
{
  result = qword_1016A1D48;
  if (!qword_1016A1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D48);
  }

  return result;
}

unint64_t sub_1004A20D4()
{
  result = qword_1016A1D50;
  if (!qword_1016A1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D50);
  }

  return result;
}

unint64_t sub_1004A212C()
{
  result = qword_1016A1D58;
  if (!qword_1016A1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D58);
  }

  return result;
}

unint64_t sub_1004A2584()
{
  result = qword_1016A1D60;
  if (!qword_1016A1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D60);
  }

  return result;
}

unint64_t sub_1004A25DC()
{
  result = qword_1016A1D68;
  if (!qword_1016A1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D68);
  }

  return result;
}

unint64_t sub_1004A2634()
{
  result = qword_1016A1D70;
  if (!qword_1016A1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D70);
  }

  return result;
}

unint64_t sub_1004A268C()
{
  result = qword_1016A1D78;
  if (!qword_1016A1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D78);
  }

  return result;
}

unint64_t sub_1004A26E4()
{
  result = qword_1016A1D80;
  if (!qword_1016A1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D80);
  }

  return result;
}

unint64_t sub_1004A273C()
{
  result = qword_1016A1D88;
  if (!qword_1016A1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D88);
  }

  return result;
}

unint64_t sub_1004A2794()
{
  result = qword_1016A1D90;
  if (!qword_1016A1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D90);
  }

  return result;
}

unint64_t sub_1004A27EC()
{
  result = qword_1016A1D98;
  if (!qword_1016A1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1D98);
  }

  return result;
}

unint64_t sub_1004A2844()
{
  result = qword_1016A1DA0;
  if (!qword_1016A1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DA0);
  }

  return result;
}

unint64_t sub_1004A289C()
{
  result = qword_1016A1DA8;
  if (!qword_1016A1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DA8);
  }

  return result;
}

unint64_t sub_1004A28F4()
{
  result = qword_1016A1DB0;
  if (!qword_1016A1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DB0);
  }

  return result;
}

unint64_t sub_1004A294C()
{
  result = qword_1016A1DB8;
  if (!qword_1016A1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DB8);
  }

  return result;
}

unint64_t sub_1004A29A4()
{
  result = qword_1016A1DC0;
  if (!qword_1016A1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DC0);
  }

  return result;
}

unint64_t sub_1004A29FC()
{
  result = qword_1016A1DC8;
  if (!qword_1016A1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DC8);
  }

  return result;
}

unint64_t sub_1004A2A54()
{
  result = qword_1016A1DD0;
  if (!qword_1016A1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DD0);
  }

  return result;
}

unint64_t sub_1004A2AAC()
{
  result = qword_1016A1DD8;
  if (!qword_1016A1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DD8);
  }

  return result;
}

unint64_t sub_1004A2B04()
{
  result = qword_1016A1DE0;
  if (!qword_1016A1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DE0);
  }

  return result;
}

unint64_t sub_1004A2B5C()
{
  result = qword_1016A1DE8;
  if (!qword_1016A1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DE8);
  }

  return result;
}

unint64_t sub_1004A2BB4()
{
  result = qword_1016A1DF0;
  if (!qword_1016A1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DF0);
  }

  return result;
}

unint64_t sub_1004A2C0C()
{
  result = qword_1016A1DF8;
  if (!qword_1016A1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1DF8);
  }

  return result;
}

unint64_t sub_1004A2C64()
{
  result = qword_1016A1E00;
  if (!qword_1016A1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E00);
  }

  return result;
}

unint64_t sub_1004A2CBC()
{
  result = qword_1016A1E08;
  if (!qword_1016A1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E08);
  }

  return result;
}

unint64_t sub_1004A2D14()
{
  result = qword_1016A1E10;
  if (!qword_1016A1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E10);
  }

  return result;
}

unint64_t sub_1004A2D6C()
{
  result = qword_1016A1E18;
  if (!qword_1016A1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E18);
  }

  return result;
}

unint64_t sub_1004A2DC4()
{
  result = qword_1016A1E20;
  if (!qword_1016A1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E20);
  }

  return result;
}

unint64_t sub_1004A2E1C()
{
  result = qword_1016A1E28;
  if (!qword_1016A1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E28);
  }

  return result;
}

unint64_t sub_1004A2E74()
{
  result = qword_1016A1E30;
  if (!qword_1016A1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E30);
  }

  return result;
}

unint64_t sub_1004A2ECC()
{
  result = qword_1016A1E38;
  if (!qword_1016A1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E38);
  }

  return result;
}

unint64_t sub_1004A2F24()
{
  result = qword_1016A1E40;
  if (!qword_1016A1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E40);
  }

  return result;
}

unint64_t sub_1004A2F7C()
{
  result = qword_1016A1E48;
  if (!qword_1016A1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E48);
  }

  return result;
}

unint64_t sub_1004A2FD4()
{
  result = qword_1016A1E50;
  if (!qword_1016A1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E50);
  }

  return result;
}

unint64_t sub_1004A302C()
{
  result = qword_1016A1E58;
  if (!qword_1016A1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E58);
  }

  return result;
}

unint64_t sub_1004A3084()
{
  result = qword_1016A1E60;
  if (!qword_1016A1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E60);
  }

  return result;
}

unint64_t sub_1004A30DC()
{
  result = qword_1016A1E68;
  if (!qword_1016A1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E68);
  }

  return result;
}

unint64_t sub_1004A3134()
{
  result = qword_1016A1E70;
  if (!qword_1016A1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E70);
  }

  return result;
}

unint64_t sub_1004A318C()
{
  result = qword_1016A1E78;
  if (!qword_1016A1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E78);
  }

  return result;
}

unint64_t sub_1004A31E4()
{
  result = qword_1016A1E80;
  if (!qword_1016A1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E80);
  }

  return result;
}

unint64_t sub_1004A323C()
{
  result = qword_1016A1E88;
  if (!qword_1016A1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E88);
  }

  return result;
}

unint64_t sub_1004A3294()
{
  result = qword_1016A1E90;
  if (!qword_1016A1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E90);
  }

  return result;
}

unint64_t sub_1004A32EC()
{
  result = qword_1016A1E98;
  if (!qword_1016A1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1E98);
  }

  return result;
}

unint64_t sub_1004A3344()
{
  result = qword_1016A1EA0;
  if (!qword_1016A1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EA0);
  }

  return result;
}

unint64_t sub_1004A339C()
{
  result = qword_1016A1EA8;
  if (!qword_1016A1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EA8);
  }

  return result;
}

unint64_t sub_1004A33F4()
{
  result = qword_1016A1EB0;
  if (!qword_1016A1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EB0);
  }

  return result;
}

unint64_t sub_1004A344C()
{
  result = qword_1016A1EB8;
  if (!qword_1016A1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EB8);
  }

  return result;
}

unint64_t sub_1004A34A4()
{
  result = qword_1016A1EC0;
  if (!qword_1016A1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EC0);
  }

  return result;
}

unint64_t sub_1004A34FC()
{
  result = qword_1016A1EC8;
  if (!qword_1016A1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EC8);
  }

  return result;
}

unint64_t sub_1004A3554()
{
  result = qword_1016A1ED0;
  if (!qword_1016A1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1ED0);
  }

  return result;
}

unint64_t sub_1004A35AC()
{
  result = qword_1016A1ED8;
  if (!qword_1016A1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1ED8);
  }

  return result;
}

unint64_t sub_1004A3604()
{
  result = qword_1016A1EE0;
  if (!qword_1016A1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EE0);
  }

  return result;
}

unint64_t sub_1004A365C()
{
  result = qword_1016A1EE8;
  if (!qword_1016A1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EE8);
  }

  return result;
}

unint64_t sub_1004A36B4()
{
  result = qword_1016A1EF0;
  if (!qword_1016A1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EF0);
  }

  return result;
}

unint64_t sub_1004A370C()
{
  result = qword_1016A1EF8;
  if (!qword_1016A1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1EF8);
  }

  return result;
}

unint64_t sub_1004A3764()
{
  result = qword_1016A1F00;
  if (!qword_1016A1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F00);
  }

  return result;
}

unint64_t sub_1004A37BC()
{
  result = qword_1016A1F08;
  if (!qword_1016A1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F08);
  }

  return result;
}

unint64_t sub_1004A3814()
{
  result = qword_1016A1F10;
  if (!qword_1016A1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F10);
  }

  return result;
}

unint64_t sub_1004A386C()
{
  result = qword_1016A1F18;
  if (!qword_1016A1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F18);
  }

  return result;
}

unint64_t sub_1004A38C4()
{
  result = qword_1016A1F20;
  if (!qword_1016A1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F20);
  }

  return result;
}

unint64_t sub_1004A391C()
{
  result = qword_1016A1F28;
  if (!qword_1016A1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F28);
  }

  return result;
}

unint64_t sub_1004A3974()
{
  result = qword_1016A1F30;
  if (!qword_1016A1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F30);
  }

  return result;
}

unint64_t sub_1004A39CC()
{
  result = qword_1016A1F38;
  if (!qword_1016A1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F38);
  }

  return result;
}

unint64_t sub_1004A3A24()
{
  result = qword_1016A1F40;
  if (!qword_1016A1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F40);
  }

  return result;
}

unint64_t sub_1004A3A7C()
{
  result = qword_1016A1F48;
  if (!qword_1016A1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F48);
  }

  return result;
}

unint64_t sub_1004A3AD4()
{
  result = qword_1016A1F50;
  if (!qword_1016A1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F50);
  }

  return result;
}

unint64_t sub_1004A3B2C()
{
  result = qword_1016A1F58;
  if (!qword_1016A1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F58);
  }

  return result;
}

unint64_t sub_1004A3B84()
{
  result = qword_1016A1F60;
  if (!qword_1016A1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F60);
  }

  return result;
}

unint64_t sub_1004A3BDC()
{
  result = qword_1016A1F68;
  if (!qword_1016A1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F68);
  }

  return result;
}

unint64_t sub_1004A3C34()
{
  result = qword_1016A1F70;
  if (!qword_1016A1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F70);
  }

  return result;
}

unint64_t sub_1004A3C8C()
{
  result = qword_1016A1F78;
  if (!qword_1016A1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F78);
  }

  return result;
}

unint64_t sub_1004A3CE4()
{
  result = qword_1016A1F80;
  if (!qword_1016A1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F80);
  }

  return result;
}

unint64_t sub_1004A3D3C()
{
  result = qword_1016A1F88;
  if (!qword_1016A1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F88);
  }

  return result;
}

unint64_t sub_1004A3D94()
{
  result = qword_1016A1F90;
  if (!qword_1016A1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F90);
  }

  return result;
}

unint64_t sub_1004A3DEC()
{
  result = qword_1016A1F98;
  if (!qword_1016A1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1F98);
  }

  return result;
}

unint64_t sub_1004A3E44()
{
  result = qword_1016A1FA0;
  if (!qword_1016A1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FA0);
  }

  return result;
}

unint64_t sub_1004A3E9C()
{
  result = qword_1016A1FA8;
  if (!qword_1016A1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FA8);
  }

  return result;
}

unint64_t sub_1004A3EF4()
{
  result = qword_1016A1FB0;
  if (!qword_1016A1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FB0);
  }

  return result;
}

unint64_t sub_1004A3F4C()
{
  result = qword_1016A1FB8;
  if (!qword_1016A1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FB8);
  }

  return result;
}

unint64_t sub_1004A3FA4()
{
  result = qword_1016A1FC0;
  if (!qword_1016A1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FC0);
  }

  return result;
}

unint64_t sub_1004A3FFC()
{
  result = qword_1016A1FC8;
  if (!qword_1016A1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FC8);
  }

  return result;
}

unint64_t sub_1004A4054()
{
  result = qword_1016A1FD0;
  if (!qword_1016A1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FD0);
  }

  return result;
}

unint64_t sub_1004A40AC()
{
  result = qword_1016A1FD8;
  if (!qword_1016A1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FD8);
  }

  return result;
}

unint64_t sub_1004A4104()
{
  result = qword_1016A1FE0;
  if (!qword_1016A1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FE0);
  }

  return result;
}

unint64_t sub_1004A415C()
{
  result = qword_1016A1FE8;
  if (!qword_1016A1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FE8);
  }

  return result;
}

unint64_t sub_1004A41B4()
{
  result = qword_1016A1FF0;
  if (!qword_1016A1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FF0);
  }

  return result;
}

unint64_t sub_1004A420C()
{
  result = qword_1016A1FF8;
  if (!qword_1016A1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1FF8);
  }

  return result;
}

unint64_t sub_1004A4264()
{
  result = qword_1016A2000;
  if (!qword_1016A2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2000);
  }

  return result;
}

unint64_t sub_1004A42BC()
{
  result = qword_1016A2008;
  if (!qword_1016A2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2008);
  }

  return result;
}

unint64_t sub_1004A4314()
{
  result = qword_1016A2010;
  if (!qword_1016A2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2010);
  }

  return result;
}

unint64_t sub_1004A436C()
{
  result = qword_1016A2018;
  if (!qword_1016A2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2018);
  }

  return result;
}

unint64_t sub_1004A43C4()
{
  result = qword_1016A2020;
  if (!qword_1016A2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2020);
  }

  return result;
}

unint64_t sub_1004A441C()
{
  result = qword_1016A2028;
  if (!qword_1016A2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2028);
  }

  return result;
}

unint64_t sub_1004A4474()
{
  result = qword_1016A2030;
  if (!qword_1016A2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2030);
  }

  return result;
}

unint64_t sub_1004A44CC()
{
  result = qword_1016A2038;
  if (!qword_1016A2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2038);
  }

  return result;
}

unint64_t sub_1004A4524()
{
  result = qword_1016A2040;
  if (!qword_1016A2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2040);
  }

  return result;
}

unint64_t sub_1004A4578()
{
  result = qword_1016A2048;
  if (!qword_1016A2048)
  {
    sub_100008BB8(255, &qword_1016C21A0, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2048);
  }

  return result;
}

unint64_t sub_1004A45E0()
{
  result = qword_1016A2058;
  if (!qword_1016A2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2058);
  }

  return result;
}

unint64_t sub_1004A4634()
{
  result = qword_1016A2068;
  if (!qword_1016A2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2068);
  }

  return result;
}

unint64_t sub_1004A469C()
{
  result = qword_1016A2160;
  if (!qword_1016A2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2160);
  }

  return result;
}

Swift::Int ProximityPairingStatsCommandPayload.Durations.Error.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t ProximityPairingStatsCommandPayload.Durations.description.getter()
{
  _StringGuts.grow(_:)(150);
  v0._countAndFlagsBits = 0xD000000000000014;
  v0._object = 0x80000001013561D0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v1);

  v2._object = 0x80000001013561F0;
  v2._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v2);
  v3._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v3);

  v4._object = 0x8000000101356210;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v6._object = 0x8000000101356230;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000016;
  v8._object = 0x8000000101356250;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x8000000101356270;
  String.append(_:)(v10);
  v11._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v11);

  return 0;
}

double ProximityPairingStatsCommandPayload.Durations.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1004A5794(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

unint64_t ProximityPairingStatsCommandPayload.Durations.encode(to:)(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  result = Duration.milliseconds.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >> 16)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10015049C(v3, v4);
  sub_1002053B0();
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (v1)
  {
    return sub_100007BAC(v3);
  }

  result = Duration.milliseconds.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (result >> 16)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_10015049C(v3, v4);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  result = Duration.milliseconds.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (result >> 16)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_10015049C(v3, v4);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  result = Duration.milliseconds.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (result >> 16)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_10015049C(v3, v4);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  result = Duration.milliseconds.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (result >> 16)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_10015049C(v3, v4);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  result = Duration.milliseconds.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  if (!(result >> 16))
  {
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    return sub_100007BAC(v3);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t ProximityPairingStatsCommandPayload.Timestamps.description.getter()
{
  _StringGuts.grow(_:)(542);
  v0._countAndFlagsBits = 0x7664417473726966;
  v0._object = 0xEF203D20746E6553;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x8000000101356290;
  String.append(_:)(v2);
  v3._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v3);

  v4._object = 0x80000001013562C0;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x80000001013562E0;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v7);

  v8._object = 0x8000000101356310;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000025;
  v10._object = 0x8000000101356330;
  String.append(_:)(v10);
  v11._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000025;
  v12._object = 0x8000000101356360;
  String.append(_:)(v12);
  v13._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x8000000101356390;
  String.append(_:)(v14);
  v15._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000023;
  v16._object = 0x80000001013563C0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001013563F0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000029;
  v20._object = 0x8000000101356410;
  String.append(_:)(v20);
  v21._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v21);

  v22._object = 0x8000000101356440;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000024;
  v24._object = 0x8000000101356460;
  String.append(_:)(v24);
  v25._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD000000000000019;
  v26._object = 0x8000000101356490;
  String.append(_:)(v26);
  v27._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000022;
  v28._object = 0x80000001013564B0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v29);

  v30._object = 0x80000001013564E0;
  v30._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v31);

  return 0;
}

double ProximityPairingStatsCommandPayload.Timestamps.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1004A5CC4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t ProximityPairingStatsCommandPayload.Timestamps.encode(to:)(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v3, v4);
  sub_100101824();
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v3, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v3);
}

__n128 ProximityPairingStatsCommandPayload.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1004A67EC(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t ProximityPairingStatsCommandPayload.encode(to:)(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_1002053B0();
  v5 = FixedWidthInteger.data.getter();
  v6 = v3;
  sub_10015049C(v7, v7[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, v6);
  if (!v1)
  {
    ProximityPairingStatsCommandPayload.Durations.encode(to:)(a1);
    ProximityPairingStatsCommandPayload.Timestamps.encode(to:)(a1);
  }

  return sub_100007BAC(v7);
}

uint64_t sub_1004A5794@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v21, v22);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_6;
  }

  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v24 == 1)
  {
    sub_1004A7028();
    swift_allocError();
    *v6 = 0;
LABEL_4:
    swift_willThrow();
LABEL_6:
    sub_100007BAC(v21);
    return sub_100007BAC(a1);
  }

  v7 = v23;
  sub_10015049C(v21, v22);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v24 == 1)
  {
    sub_1004A7028();
    swift_allocError();
    v10 = 1;
LABEL_9:
    *v9 = v10;
    goto LABEL_4;
  }

  v20 = v7;
  v11 = v23;
  sub_10015049C(v21, v22);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v19 = v11;
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v24 == 1)
  {
    sub_1004A7028();
    swift_allocError();
    v10 = 2;
    goto LABEL_9;
  }

  v12 = v23;
  sub_10015049C(v21, v22);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v24 == 1)
  {
    sub_1004A7028();
    swift_allocError();
    v10 = 3;
    goto LABEL_9;
  }

  v18 = v23;
  sub_10015049C(v21, v22);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v24 == 1)
  {
    sub_1004A7028();
    swift_allocError();
    v10 = 4;
    goto LABEL_9;
  }

  v17 = v23;
  sub_10015049C(v21, v22);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v24 == 1)
  {
    sub_1004A7028();
    swift_allocError();
    v10 = 5;
    goto LABEL_9;
  }

  v15 = (v12 * 0x38D7EA4C68000uLL) >> 64;
  v16 = 1000000000000000 * v12;
  v13 = (v23 * 0x38D7EA4C68000uLL) >> 64;
  v14 = 1000000000000000 * v23;
  sub_100007BAC(v21);
  result = sub_100007BAC(a1);
  *a2 = v20 * 0x38D7EA4C68000uLL;
  *(a2 + 1) = v19 * 0x38D7EA4C68000uLL;
  a2[4] = v16;
  a2[5] = v15;
  *(a2 + 3) = v18 * 0x38D7EA4C68000uLL;
  *(a2 + 4) = v17 * 0x38D7EA4C68000uLL;
  a2[10] = v14;
  a2[11] = v13;
  return result;
}

uint64_t sub_1004A5CC4@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_6;
  }

  static Endianness.current.getter();
  sub_100101824();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    *v6 = 0;
LABEL_4:
    swift_willThrow();
LABEL_6:
    sub_100007BAC(v30);
    return sub_100007BAC(a1);
  }

  v7 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 1;
LABEL_9:
    *v9 = v10;
    goto LABEL_4;
  }

  v29 = v7;
  v11 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v28 = v11;
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 2;
    goto LABEL_9;
  }

  v12 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 3;
    goto LABEL_9;
  }

  v27 = v12;
  v13 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v26 = v13;
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 4;
    goto LABEL_9;
  }

  v14 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 5;
    goto LABEL_9;
  }

  v25 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 6;
    goto LABEL_9;
  }

  v24 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 7;
    goto LABEL_9;
  }

  v23 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 8;
    goto LABEL_9;
  }

  v22 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 9;
    goto LABEL_9;
  }

  v21 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 10;
    goto LABEL_9;
  }

  v20 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 11;
    goto LABEL_9;
  }

  v19 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 12;
    goto LABEL_9;
  }

  v18 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 13;
    goto LABEL_9;
  }

  v17 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 14;
    goto LABEL_9;
  }

  v16 = v32;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v33 == 1)
  {
    sub_1004A6FD4();
    swift_allocError();
    v10 = 15;
    goto LABEL_9;
  }

  v15 = v32;
  sub_100007BAC(v30);
  result = sub_100007BAC(a1);
  *a2 = v29;
  a2[1] = v28;
  a2[2] = v27;
  a2[3] = v26;
  a2[4] = v14;
  a2[5] = v25;
  a2[6] = v24;
  a2[7] = v23;
  a2[8] = v22;
  a2[9] = v21;
  a2[10] = v20;
  a2[11] = v19;
  a2[12] = v18;
  a2[13] = v17;
  a2[14] = v16;
  a2[15] = v15;
  return result;
}

uint64_t sub_1004A67EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v14, v14[3]);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v2)
  {
    static Endianness.current.getter();
    sub_1002053B0();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (BYTE2(v13[0]) != 1)
    {
      v6 = v13[0];
      sub_10001F280(a1, v13);
      sub_1004A5794(v13, v16);
      *&v15[54] = v16[3];
      *&v15[70] = v16[4];
      *&v15[86] = v16[5];
      *&v15[6] = v16[0];
      *&v15[22] = v16[1];
      *&v15[38] = v16[2];
      sub_10001F280(a1, v13);
      sub_1004A5CC4(v13, v17);
      sub_100007BAC(v14);
      result = sub_100007BAC(a1);
      *a2 = v6;
      v8 = *&v15[64];
      *(a2 + 50) = *&v15[48];
      *(a2 + 66) = v8;
      *(a2 + 82) = *&v15[80];
      *(a2 + 96) = *&v15[94];
      v9 = *&v15[16];
      *(a2 + 2) = *v15;
      *(a2 + 18) = v9;
      *(a2 + 34) = *&v15[32];
      v10 = v17[0];
      v11 = v17[1];
      v12 = v17[2];
      *(a2 + 152) = v17[3];
      *(a2 + 136) = v12;
      *(a2 + 120) = v11;
      *(a2 + 104) = v10;
      return result;
    }

    sub_1004A6F80();
    swift_allocError();
    swift_willThrow();
  }

  sub_100007BAC(v14);
  return sub_100007BAC(a1);
}

unint64_t sub_1004A6A48()
{
  result = qword_1016A2168;
  if (!qword_1016A2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2168);
  }

  return result;
}

unint64_t sub_1004A6AA0()
{
  result = qword_1016A2170;
  if (!qword_1016A2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2170);
  }

  return result;
}

unint64_t sub_1004A6B20()
{
  result = qword_1016A2178;
  if (!qword_1016A2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2178);
  }

  return result;
}

unint64_t sub_1004A6B74()
{
  result = qword_1016A2180;
  if (!qword_1016A2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2180);
  }

  return result;
}

unint64_t sub_1004A6BF4()
{
  result = qword_1016A2188;
  if (!qword_1016A2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2188);
  }

  return result;
}

unint64_t sub_1004A6C48()
{
  result = qword_1016A2190;
  if (!qword_1016A2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2190);
  }

  return result;
}

uint64_t sub_1004A6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1004A6D04()
{
  result = qword_1016A2198;
  if (!qword_1016A2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2198);
  }

  return result;
}

unint64_t sub_1004A6D58()
{
  result = qword_1016A21A0;
  if (!qword_1016A21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A21A0);
  }

  return result;
}

__n128 sub_1004A6DAC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1004A6DE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A6E08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 168) = v3;
  return result;
}

uint64_t sub_1004A6E7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A6E9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

__n128 sub_1004A6F00(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004A6F14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A6F34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1004A6F80()
{
  result = qword_1016A21A8;
  if (!qword_1016A21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A21A8);
  }

  return result;
}

unint64_t sub_1004A6FD4()
{
  result = qword_1016A21B0;
  if (!qword_1016A21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A21B0);
  }

  return result;
}

unint64_t sub_1004A7028()
{
  result = qword_1016A21B8;
  if (!qword_1016A21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A21B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProximityPairingStatsCommandPayload.Timestamps.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProximityPairingStatsCommandPayload.Timestamps.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004A71D0()
{
  result = qword_1016A21C0;
  if (!qword_1016A21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A21C0);
  }

  return result;
}

Swift::Int sub_1004A7224()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1004A7298(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1004A72DC@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004A9FB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004A7314()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0x676E696B636F4CLL;
  v4 = 0x64656B636F4CLL;
  if (v1 != 3)
  {
    v4 = 0x64656B636F6C6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656C6261736944;
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

uint64_t sub_1004A73AC(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    v1 = 0x6E776F6E6B6E55;
    v2 = 0x2866666F2ELL;
    v3 = a1 & 0x3F;
  }

  else
  {
    v1 = 0x6E776F6E6B6E55;
    v2 = 678326062;
    v3 = a1;
  }

  v14 = v2;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x676E696B636F4CLL;
  v7 = 0xE600000000000000;
  v8 = 0x64656B636F4CLL;
  if (v3 != 3)
  {
    v8 = 0x64656B636F6C6E55;
    v7 = 0xE800000000000000;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v3)
  {
    v1 = 0x64656C6261736944;
    v4 = 0xE800000000000000;
  }

  if (v3 <= 1)
  {
    v9 = v1;
  }

  else
  {
    v9 = v6;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v14;
}

BOOL sub_1004A74F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_1004A7554()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A21C8);
  v1 = sub_1000076D4(v0, qword_1016A21C8);
  if (qword_101694758 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177ADD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1004A761C()
{
  v1 = v0;
  v27 = *v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000014;
  v0[15] = 0x80000001013AA9B0;
  sub_1000BC488();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100015804(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for WorkItemQueue();
  v13 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  UUID.init()();
  v0[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v0[18] = [objc_allocWithZone(CUSystemMonitor) init];
  sub_1000BC4D4(&qword_1016A23B0, &unk_1013AAC78);
  swift_allocObject();
  v0[19] = AsyncStreamProvider.init()();
  v0[20] = _swiftEmptyArrayStorage;
  v0[21] = _swiftEmptyDictionarySingleton;
  *(v0 + 176) = 0;
  v0[23] = _swiftEmptyDictionarySingleton;
  *(v0 + 96) = 0x8000;
  [v1[18] setDispatchQueue:v1[16]];
  v14 = v0[18];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v32 = sub_10001475C;
  v33 = v16;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100006684;
  v31 = &unk_101622900;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v19 setSystemLockStateChangedHandler:v18];
  _Block_release(v18);

  v20 = v0[18];
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v20;

  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v17;
  v32 = sub_1004AA068;
  v33 = v23;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100006684;
  v31 = &unk_101622950;
  v24 = _Block_copy(&aBlock);

  [v22 setScreenOnChangedHandler:v24];
  _Block_release(v24);

  return v1;
}

uint64_t sub_1004A7BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  if (qword_101694750 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016A21C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "systemLockStateChangedHandler", v10, 2u);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;

  sub_10025F6E0(0, 0, v6, &unk_1013AACB0, v12);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_1004A7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1004A7ECC, 0, 0);
}

uint64_t sub_1004A7ECC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004A7F90, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1004A7F90()
{
  sub_10001584C();

  return _swift_task_switch(sub_1004AA310, 0, 0);
}

uint64_t sub_1004A8020()
{
  v17 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = [*(Strong + 144) systemLockState];
    if (v2 >= 5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }

    if (qword_101694750 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016A21C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_22;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    if (v3 <= 1u)
    {
      if (!v3)
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
        goto LABEL_21;
      }

      v9 = 0xE800000000000000;
      v13 = 0x6C6261736944;
    }

    else
    {
      if (v3 == 2)
      {
        v9 = 0xE700000000000000;
        v10 = 0x676E696B636F4CLL;
        goto LABEL_21;
      }

      if (v3 == 3)
      {
        v9 = 0xE600000000000000;
        v10 = 0x64656B636F4CLL;
LABEL_21:
        v14 = sub_1000136BC(v10, v9, &v16);

        *(v7 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v5, v6, "System lock state updated: %{public}s", v7, 0xCu);
        sub_100007BAC(v8);

LABEL_22:

        v15 = swift_task_alloc();
        v0[7] = v15;
        *v15 = v0;
        v15[1] = sub_1004A82EC;

        return sub_100014A4C(v3);
      }

      v9 = 0xE800000000000000;
      v13 = 0x6B636F6C6E55;
    }

    v10 = v13 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    goto LABEL_21;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004A82EC()
{

  return _swift_task_switch(sub_1004AA314, 0, 0);
}

uint64_t sub_1004A83E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  if (qword_101694750 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016A21C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "screenOnChangedHandler", v10, 2u);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;

  sub_10025F6E0(0, 0, v6, &unk_1013AAC90, v12);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_1004A86A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1004A86C0, 0, 0);
}

uint64_t sub_1004A86C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004A8784, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1004A8784()
{
  sub_10001584C();

  return _swift_task_switch(sub_1004A87F4, 0, 0);
}

uint64_t sub_1004A883C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = [*(Strong + 144) screenOn];
    if (qword_101694750 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016A21C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67240192;
      *(v6 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "Screen on state updated: %{BOOL,public}d", v6, 8u);
    }

    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1004A82EC;

    return sub_1004A8A1C(v2);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1004A8A1C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 73) = a1;
  v3 = sub_1000BC4D4(&qword_1016A2398, &qword_1013AAC50);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016A23A0, &qword_1013AAC58);
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1004A8B54, v1, 0);
}

uint64_t sub_1004A8B54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 73);
  sub_100014BEC(0xD000000000000016, 0x8000000101356600);
  if (v2 != *(v1 + 192))
  {
    if (qword_101694750 != -1)
    {
LABEL_25:
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016A21C8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 73);
      v7 = swift_slowAlloc();
      *v7 = 67109376;
      *(v7 + 4) = *(v1 + 192);

      *(v7 + 8) = 1024;
      *(v7 + 10) = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "Screen On state: %{BOOL}d -> %{BOOL}d", v7, 0xEu);
    }

    else
    {
    }

    v8 = *(v0 + 16);
    v29 = *(v0 + 73);
    *(v1 + 192) = v29;
    v9 = *(v8 + 184);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v11, v12, "Publishing Screen On state change event to %ld subscribers", v13, 0xCu);
      }

      v9 = *(v8 + 184);
    }

    v14 = *(v0 + 56);
    v15 = v9 + 64;
    v16 = -1;
    v17 = -1 << *(v9 + 32);
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v1 = v16 & *(v9 + 64);
    v18 = (63 - v17) >> 6;
    v28 = (*(v0 + 32) + 8);
    v30 = v9;

    v19 = 0;
    if (v1)
    {
      while (1)
      {
        v20 = v19;
LABEL_18:
        v21 = *(v0 + 64);
        v23 = *(v0 + 40);
        v22 = *(v0 + 48);
        v24 = *(v0 + 24);
        v25 = __clz(__rbit64(v1));
        v1 &= v1 - 1;
        (*(v14 + 16))(v21, *(v30 + 56) + *(v14 + 72) * (v25 | (v20 << 6)), v22);
        *(v0 + 72) = v29;
        AsyncStream.Continuation.yield(_:)();
        (*(v14 + 8))(v21, v22);
        (*v28)(v23, v24);
        if (!v1)
        {
          goto LABEL_14;
        }
      }
    }

    while (1)
    {
LABEL_14:
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v20 >= v18)
      {
        break;
      }

      v1 = *(v15 + 8 * v20);
      ++v19;
      if (v1)
      {
        v19 = v20;
        goto LABEL_18;
      }
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1004A8EFC()
{
  v10 = v0;
  if (qword_101694750 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_1000076D4(v1, qword_1016A21C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x2870757472617473, 0xE900000000000029, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0[18] + 144);
  v0[2] = v0;
  v0[3] = sub_1004A9128;
  v7 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016A2390, &qword_1013AAC28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100F3A968;
  v0[13] = &unk_101622888;
  v0[14] = v7;
  [v6 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004A9128()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_1004A921C, v1, 0);
}

uint64_t sub_1004A921C(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x2870757472617473, 0xE900000000000029, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Activated System Monitor", v4, 0xCu);
    sub_100007BAC(v5);
  }

  sub_10001584C();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1004A93E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = [*(Strong + 144) systemLockState];
    if (v2 >= 5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1004A94E4;

    return sub_100014A4C(v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004A94E4()
{

  return _swift_task_switch(sub_1004A95E0, 0, 0);
}

uint64_t sub_1004A95E0()
{
  v1 = [*(*(v0 + 48) + 144) screenOn];
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1004A968C;

  return sub_1004A8A1C(v1);
}

uint64_t sub_1004A968C()
{

  return _swift_task_switch(sub_1004A9788, 0, 0);
}

uint64_t sub_1004A9788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A97EC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004A984C()
{
  sub_1004A97EC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t sub_1004A994C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1004A9978(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

unint64_t sub_1004A99BC()
{
  result = qword_1016A2370;
  if (!qword_1016A2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2370);
  }

  return result;
}

uint64_t sub_1004A9A10()
{
  sub_1000BC4D4(&qword_1016A2388, &qword_1013AAC20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  *(v1 + 32) = *(v0 + 193);
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_1004A9A94(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SystemMonitorService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1004A9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SystemMonitorService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1004A9C00(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SystemMonitorService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1004A9CA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1004A8EDC();
}

uint64_t sub_1004A9D34(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SystemMonitorService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1004A9DDC()
{
  type metadata accessor for SystemMonitorService();
  sub_100015804(&qword_1016B1110, v0, type metadata accessor for SystemMonitorService, &unk_1013AAB78);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1004A9ED4(uint64_t a1, uint64_t a2)
{
  result = sub_100015804(&qword_1016A2380, a2, type metadata accessor for SystemMonitorService, &unk_1013AABF4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004A9F2C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ADD8);
  sub_1000076D4(v0, qword_10177ADD8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004A9FB0(uint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1004A9FC0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_1004A93C0(v0);
}

uint64_t sub_1004AA050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004AA070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1004A86A0(a1, v4, v5, v6);
}

uint64_t sub_1004AA124()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1004A881C(v2);
}

uint64_t sub_1004AA1BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1004A7EAC(a1, v4, v5, v6);
}

uint64_t sub_1004AA270()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1004A8000(v2);
}

void *sub_1004AA318(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  v3 = v2;
  return v2;
}

uint64_t sub_1004AA344()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LeftBehindUserNotification(0) + 20);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  if ((*(v5 + 32) & 1) == 0)
  {
    v13 = v7;

    if (v8)
    {
      v14 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v14 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {
        }

        else
        {
          v39 = v13;
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;
            if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
            {
            }

            else
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          v13 = v39;
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_101385D80;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 64) = sub_100008C00();
        *(v36 + 32) = v6;
        *(v36 + 40) = v8;
LABEL_34:
        (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
        static LocalizationUtility.localizedString(key:table:)();

        (*(v2 + 8))(v4, v1);
        v12 = String.init(format:arguments:)();

        return v12;
      }
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
        if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v33 != v34)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    goto LABEL_34;
  }

  v9 = *v5;
  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v11 = *(v9 + 16);
  sub_1004AB6A0(v9, v7, v6, v8, 1);
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v11;
  v12 = static String.localizedStringWithFormat(_:_:)();

  return v12;
}

uint64_t sub_1004AA8BC()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeftBehindUserNotification(0);
  v6 = *(v0 + v5[6]);
  if (v6 && [v6 type] - 1 <= 3 && (v7 = objc_msgSend(v6, "name")) != 0)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = (v0 + v5[7]);
    v11 = v12[1];
    if (!v11)
    {
      (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
      v15 = static LocalizationUtility.localizedString(key:table:)();
      (*(v2 + 8))(v4, v1);
      return v15;
    }

    v9 = *v12;
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  v14 = *(*(v0 + v5[5]) + 16);
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v14;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = sub_100008C00();
  *(v13 + 72) = v9;
  *(v13 + 80) = v11;
  v15 = static String.localizedStringWithFormat(_:_:)();

  return v15;
}

unint64_t sub_1004AAB94()
{
  v79 = type metadata accessor for UUID();
  v1 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = objc_opt_self();
  v70 = type metadata accessor for LeftBehindUserNotification(0);
  v71 = v0;
  v4 = *(v0 + v70[8]);
  *&v81 = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v81];
  v6 = v81;
  if (v5)
  {
    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v61 = 0;
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v65 = 0;
    v61 = 0;
    v8 = 0xF000000000000000;
  }

  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = inited + 32;
  *(inited + 40) = v11;
  v64 = v8;
  if (v8 >> 60 == 15)
  {
    v81 = 0u;
    v82 = 0u;
    v12 = [objc_allocWithZone(NSNull) init];
    *(inited + 72) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 48) = v12;
    if (*(&v82 + 1))
    {
      sub_1004AB638(&v81);
    }
  }

  else
  {
    *(&v82 + 1) = &type metadata for Data;
    *&v81 = v65;
    *(&v81 + 1) = v8;
    sub_1001E6224(&v81, (inited + 48));
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  v14 = *(v71 + v70[6]);
  if (v14)
  {
    sub_10002E98C(v65, v64);
    v15 = [v14 identifier];
    v16 = v78;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v1 + 8))(v16, v79);
    *(&v82 + 1) = &type metadata for String;
    *&v81 = v17;
    *(&v81 + 1) = v19;
    sub_1001E6224(&v81, (inited + 96));
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v20 = objc_allocWithZone(NSNull);
    sub_10002E98C(v65, v64);
    v21 = [v20 init];
    *(inited + 120) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 96) = v21;
    if (*(&v82 + 1))
    {
      sub_1004AB638(&v81);
    }
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v22;
  v23 = *(v71 + v70[5]);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v63 = (v25 + 63) >> 6;
  v76 = (v1 + 8);
  v77 = v1 + 16;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v68 = inited;
  v69 = v1;
  v66 = v23 + 64;
  v67 = v23;
LABEL_16:
  if (v27)
  {
    v75 = v29;
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    if (v30 >= v63)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v28;
    if (v27)
    {
      v75 = v29;
      v28 = v30;
LABEL_22:
      v73 = v28;
      v74 = v27;
      v31 = *(*(v23 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      v32 = *(v31 + 16);
      if (v32)
      {
        *&v81 = _swiftEmptyArrayStorage;

        sub_101123BB8(0, v32, 0);
        v33 = v81;
        v34 = *(v1 + 80);
        v72 = v31;
        v35 = v31 + ((v34 + 32) & ~v34);
        v80 = *(v1 + 72);
        v36 = *(v1 + 16);
        do
        {
          v37 = v78;
          v38 = v79;
          v36(v78, v35, v79);
          v39 = UUID.uuidString.getter();
          v41 = v40;
          (*v76)(v37, v38);
          *&v81 = v33;
          v43 = v33[2];
          v42 = v33[3];
          if (v43 >= v42 >> 1)
          {
            sub_101123BB8((v42 > 1), v43 + 1, 1);
            v33 = v81;
          }

          v33[2] = v43 + 1;
          v44 = &v33[2 * v43];
          v44[4] = v39;
          v44[5] = v41;
          v35 += v80;
          --v32;
        }

        while (v32);

        inited = v68;
        v1 = v69;
        v24 = v66;
        v23 = v67;
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
      }

      v45 = v33[2];
      v29 = v75;
      v46 = *(v75 + 2);
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_47;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v47 > *(v29 + 3) >> 1)
      {
        if (v46 <= v47)
        {
          v49 = v46 + v45;
        }

        else
        {
          v49 = v46;
        }

        v29 = sub_100A5B2CC(isUniquelyReferenced_nonNull_native, v49, 1, v29);
      }

      v27 = (v74 - 1) & v74;
      if (v33[2])
      {
        if ((*(v29 + 3) >> 1) - *(v29 + 2) < v45)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        v28 = v73;
        if (v45)
        {
          v50 = *(v29 + 2);
          v51 = __OFADD__(v50, v45);
          v52 = v50 + v45;
          if (v51)
          {
            goto LABEL_50;
          }

          *(v29 + 2) = v52;
        }
      }

      else
      {

        v28 = v73;
        if (v45)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_16;
    }
  }

  *(inited + 168) = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  *(inited + 144) = v29;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v53;
  v54 = (v71 + v70[7]);
  v55 = v54[1];
  if (v55)
  {
    v56 = *v54;
    *(&v82 + 1) = &type metadata for String;
    *&v81 = v56;
    *(&v81 + 1) = v55;
    sub_1001E6224(&v81, (inited + 192));
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v57 = [objc_allocWithZone(NSNull) init];
    *(inited + 216) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 192) = v57;
    if (*(&v82 + 1))
    {
      sub_1004AB638(&v81);
    }
  }

  v58 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  sub_100006654(v65, v64);
  return v58;
}

uint64_t sub_1004AB2C8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  v28 = v26[0];
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x8000000101356930;
  String.append(_:)(v6);
  sub_1002FFBAC();
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6E6974736564202CLL;
  v8._object = 0xEF203A6E6F697461;
  String.append(_:)(v8);
  v9 = type metadata accessor for LeftBehindUserNotification(0);
  LOBYTE(v26[0]) = *(v0 + v9[9]);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x747865746E6F6320;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  v11 = v0 + v9[5];
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  v26[0] = *v11;
  v26[1] = v13;
  v27 = v12;
  _print_unlocked<A, B>(_:_:)();
  v14._object = 0x8000000101356950;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15 = *(v0 + v9[6]);
  if (v15)
  {
    v16 = [v15 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19 = 0xE400000000000000;
    v17 = 1701736302;
  }

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x6F697461636F6C20;
  v21._object = 0xEB00000000203A6ELL;
  String.append(_:)(v21);
  v22 = *(v1 + v9[8]);
  [v22 coordinate];
  Double.write<A>(to:)();
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  [v22 coordinate];
  Double.write<A>(to:)();
  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return v28;
}