double sub_100647308@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100647398(a2, v7);
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

unint64_t sub_10064734C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609998, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100647398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A6550, &unk_1013B4628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1006476A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v22) = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v9 == 200;
  if (v9 == 409)
  {
    v11 = 2;
  }

  v24 = v11;
  v25 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v22;
  v20 = v23;
  v25 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v22;
  v18 = v23;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v25 = 3;
  sub_1006476FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v22;
  LOBYTE(v22) = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v24;
  v16 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v16;
  v17 = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  return result;
}

unint64_t sub_1006476A8()
{
  result = qword_1016A6558;
  if (!qword_1016A6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6558);
  }

  return result;
}

unint64_t sub_1006476FC()
{
  result = qword_10169F5A0;
  if (!qword_10169F5A0)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    sub_1000E307C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5A0);
  }

  return result;
}

unint64_t sub_1006477A4()
{
  result = qword_1016A6560;
  if (!qword_1016A6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6560);
  }

  return result;
}

unint64_t sub_1006477FC()
{
  result = qword_1016A6568;
  if (!qword_1016A6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6568);
  }

  return result;
}

unint64_t sub_100647854()
{
  result = qword_1016A6570;
  if (!qword_1016A6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6570);
  }

  return result;
}

unint64_t sub_1006478AC()
{
  result = qword_1016A6578;
  if (!qword_1016A6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6578);
  }

  return result;
}

unint64_t sub_100647900()
{
  result = qword_1016A6580;
  if (!qword_1016A6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6580);
  }

  return result;
}

uint64_t sub_10064797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
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

uint64_t sub_100647A04(uint64_t a1)
{
  v2 = sub_100647C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100647A40(uint64_t a1)
{
  v2 = sub_100647C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100647A7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A6590, &qword_1013B4948);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100647C80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_100647BF8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100647C2C()
{
  result = qword_1016A6588;
  if (!qword_1016A6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6588);
  }

  return result;
}

unint64_t sub_100647C80()
{
  result = qword_1016A6598;
  if (!qword_1016A6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6598);
  }

  return result;
}

unint64_t sub_100647CE8()
{
  result = qword_1016A65A0;
  if (!qword_1016A65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A65A0);
  }

  return result;
}

unint64_t sub_100647D40()
{
  result = qword_1016A65A8;
  if (!qword_1016A65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A65A8);
  }

  return result;
}

unint64_t sub_100647D98()
{
  result = qword_1016A65B0;
  if (!qword_1016A65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A65B0);
  }

  return result;
}

unint64_t sub_100647DEC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DiscoveryState.Mode(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10064C3D4(v1, v8, type metadata accessor for DiscoveryState.Mode);
  v9 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v10 = (*(*(v9 - 8) + 48))(v8, 4, v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      return 0xD000000000000012;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v15 = 0xD000000000000011;
      v16 = 0x800000010135BD90;
      sub_10064C43C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 41;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v15;
      (*(v3 + 8))(v5, v2);
      return v14;
    }
  }

  else if (v10 == 2)
  {
    return 0xD000000000000014;
  }

  else if (v10 == 3)
  {
    return 0x6E5572657466612ELL;
  }

  else
  {
    return 0x696E49726573752ELL;
  }
}

uint64_t sub_1006480D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DiscoveryState(0);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiscoveryState.Mode(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10064C3D4(v2, v6, type metadata accessor for DiscoveryState);
  if (swift_getEnumCaseMultiPayload() > 3)
  {
    v11 = 1;
  }

  else
  {
    sub_10064C36C(v6, v10, type metadata accessor for DiscoveryState.Mode);
    sub_10064C36C(v10, a1, type metadata accessor for DiscoveryState.Mode);
    v11 = 0;
  }

  return (*(v8 + 56))(a1, v11, 1, v7);
}

uint64_t sub_100648264()
{
  v1 = v0;
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DiscoveryState(0);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10064C3D4(v1, v7, type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10064C36C(v7, v4, type metadata accessor for DiscoveryState.Mode);
        v14 = 0;
        v15 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v10 = 0x800000010135BCF0;
        v11 = 0xD000000000000012;
      }

      else
      {
        sub_10064C36C(v7, v4, type metadata accessor for DiscoveryState.Mode);
        v14 = 0;
        v15 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v10 = 0x800000010135BCD0;
        v11 = 0xD000000000000015;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_10064C36C(v7, v4, type metadata accessor for DiscoveryState.Mode);
        v14 = 0x65766F637369642ELL;
        v15 = 0xEA00000000007972;
LABEL_16:
        v12._countAndFlagsBits = sub_100647DEC();
        String.append(_:)(v12);

        v9 = v14;
        sub_10064C30C(v4, type metadata accessor for DiscoveryState.Mode);
        return v9;
      }

      sub_10064C36C(v7, v4, type metadata accessor for DiscoveryState.Mode);
      v14 = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v10 = 0x800000010135BD10;
      v11 = 0xD000000000000019;
    }

    v14 = v11;
    v15 = v10;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0x676E69726961702ELL;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    return 0x656C64692ELL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_10064858C()
{
  v0 = type metadata accessor for DiscoveryState.Mode(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_100648FF4(&v22 - v15);
  v17 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v17 - 8) + 56))(v14, 2, 4, v17);
  (*(v1 + 56))(v14, 0, 1, v0);
  v18 = *(v5 + 56);
  sub_10064C484(v16, v7);
  sub_10064C484(v14, &v7[v18]);
  v19 = *(v1 + 48);
  if (v19(v7, 1, v0) != 1)
  {
    sub_10064C484(v7, v11);
    if (v19(&v7[v18], 1, v0) != 1)
    {
      sub_10064C36C(&v7[v18], v3, type metadata accessor for DiscoveryState.Mode);
      v20 = sub_100649A24(v11, v3);
      sub_10064C30C(v3, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
      sub_10000B3A8(v16, &qword_1016A68C8, &qword_1013B4C58);
      sub_10064C30C(v11, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v7, &qword_1016A68C8, &qword_1013B4C58);
      return v20 & 1;
    }

    sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v16, &qword_1016A68C8, &qword_1013B4C58);
    sub_10064C30C(v11, type metadata accessor for DiscoveryState.Mode);
    goto LABEL_6;
  }

  sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v16, &qword_1016A68C8, &qword_1013B4C58);
  if (v19(&v7[v18], 1, v0) != 1)
  {
LABEL_6:
    sub_10000B3A8(v7, &unk_1016B7C00, &qword_1013B4C50);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000B3A8(v7, &qword_1016A68C8, &qword_1013B4C58);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_100648974()
{
  v1 = type metadata accessor for DiscoveryState.Mode(0);
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v43 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  __chkstk_darwin(v45);
  v47 = &v43 - v3;
  v4 = sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v5 = __chkstk_darwin(v4 - 8);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = __chkstk_darwin(v7);
  v46 = &v43 - v11;
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for DiscoveryState(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  swift_beginAccess();
  v21 = *(v0 + 136);
  swift_storeEnumTagMultiPayload();
  v22 = *(v21 + 16);

  v23 = 0;
  while (v22 != v23)
  {
    v24 = v23 + 1;
    v25 = sub_100649DB4(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v20);
    v23 = v24;
    if (v25)
    {

      sub_10064C30C(v20, type metadata accessor for DiscoveryState);
      v26 = v49;
      goto LABEL_6;
    }
  }

  sub_10064C30C(v20, type metadata accessor for DiscoveryState);
  sub_100648FF4(v13);
  v26 = v49;
  v27 = 1;
  v28 = (*(v48 + 48))(v13, 1, v49);
  sub_10000B3A8(v13, &qword_1016A68C8, &qword_1013B4C58);
  if (v28 != 1)
  {
    return v27 & 1;
  }

LABEL_6:
  v29 = *(v0 + 136);
  swift_storeEnumTagMultiPayload();
  v30 = *(v29 + 16);

  v31 = 0;
  do
  {
    if (v30 == v31)
    {

      sub_10064C30C(v18, type metadata accessor for DiscoveryState);
      v27 = 0;
      return v27 & 1;
    }

    v32 = v31 + 1;
    v33 = sub_100649DB4(v29 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31, v18);
    v31 = v32;
  }

  while ((v33 & 1) == 0);

  sub_10064C30C(v18, type metadata accessor for DiscoveryState);
  v34 = v46;
  sub_100648FF4(v46);
  v35 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v35 - 8) + 56))(v9, 2, 4, v35);
  v36 = v48;
  (*(v48 + 56))(v9, 0, 1, v26);
  v37 = *(v45 + 48);
  v38 = v47;
  sub_10064C484(v34, v47);
  sub_10064C484(v9, v38 + v37);
  v39 = *(v36 + 48);
  if (v39(v38, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v34, &qword_1016A68C8, &qword_1013B4C58);
    if (v39(v38 + v37, 1, v26) == 1)
    {
      sub_10000B3A8(v38, &qword_1016A68C8, &qword_1013B4C58);
      v27 = 1;
      return v27 & 1;
    }
  }

  else
  {
    v40 = v44;
    sub_10064C484(v38, v44);
    if (v39(v38 + v37, 1, v26) != 1)
    {
      v41 = v43;
      sub_10064C36C(v38 + v37, v43, type metadata accessor for DiscoveryState.Mode);
      v27 = sub_100649A24(v40, v41);
      sub_10064C30C(v41, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v9, &qword_1016A68C8, &qword_1013B4C58);
      sub_10000B3A8(v34, &qword_1016A68C8, &qword_1013B4C58);
      sub_10064C30C(v40, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v38, &qword_1016A68C8, &qword_1013B4C58);
      return v27 & 1;
    }

    sub_10000B3A8(v9, &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v34, &qword_1016A68C8, &qword_1013B4C58);
    sub_10064C30C(v40, type metadata accessor for DiscoveryState.Mode);
  }

  sub_10000B3A8(v38, &unk_1016B7C00, &qword_1013B4C50);
  v27 = 0;
  return v27 & 1;
}

void sub_100648FF4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DiscoveryState(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - v9;
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  swift_beginAccess();
  v13 = *(v1 + 136);
  v14 = *(v13 + 16);

  if (v14)
  {
    while (v14 <= *(v13 + 16))
    {
      --v14;
      v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
      sub_10064C3D4(v16, v10, type metadata accessor for DiscoveryState);
      sub_10064C36C(v10, v7, type metadata accessor for DiscoveryState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3 && EnumCaseMultiPayload != 2)
      {
        sub_10064C30C(v7, type metadata accessor for DiscoveryState);
        sub_10064C3D4(v16, v12, type metadata accessor for DiscoveryState);

        sub_1006480D0(a1);
        sub_10064C30C(v12, type metadata accessor for DiscoveryState);
        return;
      }

      sub_10064C30C(v7, type metadata accessor for DiscoveryState);
      if (!v14)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:

    v15 = type metadata accessor for DiscoveryState.Mode(0);
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }
}

void sub_100649254()
{
  v1 = type metadata accessor for DiscoveryState(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v25 = &v25 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_1000BC4D4(&qword_1016A68C0, &qword_1013B4C48);
  __chkstk_darwin(v12 - 8);
  v28 = &v25 - v13;
  swift_beginAccess();
  v27 = v0;
  v14 = *(v0 + 136);
  v15 = *(v14 + 16);

  if (v15)
  {
    while (v15 <= *(v14 + 16))
    {
      --v15;
      v16 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15;
      sub_10064C3D4(v16, v11, type metadata accessor for DiscoveryState);
      sub_10064C36C(v11, v9, type metadata accessor for DiscoveryState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10064C30C(v9, type metadata accessor for DiscoveryState);
      if (EnumCaseMultiPayload == 3)
      {
        v19 = v28;
        sub_10064C3D4(v16, v28, type metadata accessor for DiscoveryState);

        (*(v2 + 56))(v19, 0, 1, v1);
        sub_10000B3A8(v19, &qword_1016A68C0, &qword_1013B4C48);
        v20 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
        v21 = v27;
        swift_beginAccess();
        v22 = v21 + v20;
        v23 = v25;
        sub_10064C3D4(v22, v25, type metadata accessor for DiscoveryState);
        v24 = v26;
        swift_storeEnumTagMultiPayload();
        sub_100649DB4(v23, v24);
        sub_10064C30C(v24, type metadata accessor for DiscoveryState);
        sub_10064C30C(v23, type metadata accessor for DiscoveryState);
        return;
      }

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v18 = v28;
    (*(v2 + 56))(v28, 1, 1, v1);
    sub_10000B3A8(v18, &qword_1016A68C0, &qword_1013B4C48);
  }
}

uint64_t sub_1006495A8()
{
  sub_1000BB27C(*(v0 + 112), *(v0 + 120));

  sub_10064C30C(v0 + OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state, type metadata accessor for DiscoveryState);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10064963C(uint64_t a1)
{
  result = type metadata accessor for DiscoveryState(319);
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

uint64_t sub_1006496F0(uint64_t a1)
{
  result = type metadata accessor for DiscoveryState.Mode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100649768(uint64_t a1)
{
  sub_1006497C0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1006497C0()
{
  if (!qword_1016A6880)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A6880);
    }
  }
}

double sub_100649850()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100649888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  return sub_10064C3D4(v1 + v3, a1, type metadata accessor for DiscoveryState);
}

double sub_1006498F4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10064992C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return sub_1000BB27C(v3, v4);
}

uint64_t sub_100649978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_10064A314(a1);
}

uint64_t sub_100649A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiscoveryState.Mode(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A68B8, &qword_1013B4C40);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_10064C3D4(a1, &v22 - v13, type metadata accessor for DiscoveryState.Mode);
  sub_10064C3D4(a2, &v14[v15], type metadata accessor for DiscoveryState.Mode);
  v16 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 4, v16);
  if (v18 <= 1)
  {
    if (!v18)
    {
      sub_10064C3D4(v14, v10, type metadata accessor for DiscoveryState.Mode);
      if (!v17(&v14[v15], 4, v16))
      {
        (*(v5 + 32))(v7, &v14[v15], v4);
        v19 = static UUID.== infix(_:_:)();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_10064C30C(v14, type metadata accessor for DiscoveryState.Mode);
        return v19 & 1;
      }

      (*(v5 + 8))(v10, v4);
      goto LABEL_12;
    }

    if (v17(&v14[v15], 4, v16) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_10000B3A8(v14, &qword_1016A68B8, &qword_1013B4C40);
    v19 = 0;
    return v19 & 1;
  }

  if (v18 == 2)
  {
    if (v17(&v14[v15], 4, v16) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v18 != 3)
  {
    if (v17(&v14[v15], 4, v16) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v17(&v14[v15], 4, v16) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_10064C30C(v14, type metadata accessor for DiscoveryState.Mode);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_100649DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryState.Mode(0);
  v5 = __chkstk_darwin(v4 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - v8;
  v9 = __chkstk_darwin(v7);
  v38 = &v37 - v10;
  __chkstk_darwin(v9);
  v37 = &v37 - v11;
  v12 = type metadata accessor for DiscoveryState(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v37 - v20;
  __chkstk_darwin(v19);
  v23 = &v37 - v22;
  v24 = sub_1000BC4D4(&qword_1016A68B0, &qword_1013B4C38);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v37 - v26;
  v28 = *(v25 + 56);
  sub_10064C3D4(a1, &v37 - v26, type metadata accessor for DiscoveryState);
  sub_10064C3D4(a2, &v27[v28], type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10064C3D4(v27, v18, type metadata accessor for DiscoveryState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v15 = v18;
          goto LABEL_26;
        }

        v30 = v39;
        sub_10064C36C(&v27[v28], v39, type metadata accessor for DiscoveryState.Mode);
        v31 = sub_100649A24(v18, v30);
        sub_10064C30C(v30, type metadata accessor for DiscoveryState.Mode);
        v32 = v18;
      }

      else
      {
        sub_10064C3D4(v27, v15, type metadata accessor for DiscoveryState);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_26;
        }

        v34 = v40;
        sub_10064C36C(&v27[v28], v40, type metadata accessor for DiscoveryState.Mode);
        v31 = sub_100649A24(v15, v34);
        sub_10064C30C(v34, type metadata accessor for DiscoveryState.Mode);
        v32 = v15;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_10064C3D4(v27, v21, type metadata accessor for DiscoveryState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v15 = v21;
        goto LABEL_26;
      }

      v33 = v38;
      sub_10064C36C(&v27[v28], v38, type metadata accessor for DiscoveryState.Mode);
      v31 = sub_100649A24(v21, v33);
      sub_10064C30C(v33, type metadata accessor for DiscoveryState.Mode);
      v32 = v21;
    }

    else
    {
      sub_10064C3D4(v27, v23, type metadata accessor for DiscoveryState);
      if (swift_getEnumCaseMultiPayload())
      {
        v15 = v23;
LABEL_26:
        sub_10064C30C(v15, type metadata accessor for DiscoveryState.Mode);
        goto LABEL_27;
      }

      v35 = v37;
      sub_10064C36C(&v27[v28], v37, type metadata accessor for DiscoveryState.Mode);
      v31 = sub_100649A24(v23, v35);
      sub_10064C30C(v35, type metadata accessor for DiscoveryState.Mode);
      v32 = v23;
    }

    sub_10064C30C(v32, type metadata accessor for DiscoveryState.Mode);
    sub_10064C30C(v27, type metadata accessor for DiscoveryState);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 7)
    {
LABEL_27:
      sub_10000B3A8(v27, &qword_1016A68B0, &qword_1013B4C38);
      v31 = 0;
      return v31 & 1;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_27;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_27;
  }

  sub_10064C30C(v27, type metadata accessor for DiscoveryState);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_10064A314(uint64_t a1)
{
  v2[81] = v1;
  v2[80] = a1;
  v3 = type metadata accessor for StateManagerError();
  v2[82] = v3;
  v2[83] = *(v3 - 8);
  v2[84] = swift_task_alloc();
  type metadata accessor for DiscoveryState.Mode(0);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = sub_1000BC4D4(&qword_1016A68B0, &qword_1013B4C38);
  v2[91] = swift_task_alloc();
  v4 = type metadata accessor for DiscoveryState(0);
  v2[92] = v4;
  v2[93] = *(v4 - 8);
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return _swift_task_switch(sub_10064A5A4, v1, 0);
}

uint64_t sub_10064A5A4()
{
  v134 = v0;
  v1 = v0[112];
  v2 = v0[81];
  v3 = v0[80];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_10064C3D4(v2 + v4, v1, type metadata accessor for DiscoveryState);
  LOBYTE(v3) = sub_100649DB4(v1, v3);
  sub_10064C30C(v1, type metadata accessor for DiscoveryState);
  if (v3)
  {
    goto LABEL_114;
  }

  v5 = v0[91];
  v6 = v0[80];
  v7 = *(v0[90] + 48);
  sub_10064C3D4(v2 + v4, v5, type metadata accessor for DiscoveryState);
  sub_10064C3D4(v6, v5 + v7, type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v25 = swift_getEnumCaseMultiPayload();
        if (v25 == 4)
        {
          v45 = v0[91];
          v46 = v0[81];
          v47 = v0[80];
          swift_beginAccess();
          *(v46 + 136) = _swiftEmptyArrayStorage;

          swift_beginAccess();
          sub_10064C2A8(v47, v2 + v4);
LABEL_59:
          swift_endAccess();
          sub_10064C30C(v5 + v7, type metadata accessor for DiscoveryState);
          v32 = v45;
          goto LABEL_60;
        }

        if (v25)
        {
          goto LABEL_104;
        }

        v26 = v0[96];
        sub_10064C3D4(v5 + v7, v26, type metadata accessor for DiscoveryState);
        v27 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
        if ((*(*(v27 - 8) + 48))(v26, 4, v27) == 2)
        {
          goto LABEL_94;
        }

        v18 = v0[96];
        goto LABEL_103;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 == 4)
      {
        v15 = v0[91];
        v43 = v0[81];
        v44 = v0[80];
        swift_beginAccess();
        *(v43 + 136) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        sub_10064C2A8(v44, v2 + v4);
        goto LABEL_57;
      }

      if (v19 != 7)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_94;
        }

        goto LABEL_104;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (!v14)
      {
        goto LABEL_94;
      }

      if (v14 != 5)
      {
        goto LABEL_104;
      }
    }

    v15 = v0[91];
    v16 = v0[80];
    swift_beginAccess();
    sub_10064C2A8(v16, v2 + v4);
LABEL_57:
    swift_endAccess();
    v32 = v15;
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10064C3D4(v0[91], v0[102], type metadata accessor for DiscoveryState);
      v17 = swift_getEnumCaseMultiPayload();
      if (!v17)
      {
        v40 = v0[102];
        v41 = v0[101];
        sub_10064C3D4(v5 + v7, v41, type metadata accessor for DiscoveryState);
        v42 = sub_100649A24(v40, v41);
        sub_10064C30C(v41, type metadata accessor for DiscoveryState.Mode);
        sub_10064C30C(v40, type metadata accessor for DiscoveryState.Mode);
        if (v42)
        {
          goto LABEL_94;
        }

        goto LABEL_104;
      }

      v9 = v0 + 102;
      if (v17 == 6)
      {
        goto LABEL_41;
      }

      goto LABEL_18;
    }

    v9 = v0 + 100;
    sub_10064C3D4(v0[91], v0[100], type metadata accessor for DiscoveryState);
    v21 = swift_getEnumCaseMultiPayload();
    v18 = v0[100];
    if (v21 > 2)
    {
      if (v21 != 3)
      {
        if (v21 != 6)
        {
          goto LABEL_103;
        }

        goto LABEL_45;
      }

      v33 = v0 + 99;
      v130 = v0;
      sub_10064C3D4(v5 + v7, v0[99], type metadata accessor for DiscoveryState);
      v77 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v78 = *(*(v77 - 8) + 48);
      v79 = v78(v18, 4, v77);
      if (v79 == 3 || v79 == 1)
      {
        v18 = *v33;
        if (v78(*v33, 4, v77) != 4)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v79)
      {
        goto LABEL_87;
      }

      v80 = *v9;
      v81 = v78(*v33, 4, v77);
      v82 = type metadata accessor for UUID();
      (*(*(v82 - 8) + 8))(v80, v82);
      if (v81 == 4)
      {
LABEL_102:
        v93 = v0[91];
        v94 = v0[80];
        sub_10064C30C(v5 + v7, type metadata accessor for DiscoveryState);
        sub_10064C30C(v93, type metadata accessor for DiscoveryState);
        swift_beginAccess();
        sub_10064C2A8(v94, v2 + v4);
        goto LABEL_42;
      }

LABEL_86:
      v18 = *v33;
      goto LABEL_103;
    }

    if (v21 == 1)
    {
      v33 = v0 + 98;
      v130 = v0;
      sub_10064C3D4(v5 + v7, v0[98], type metadata accessor for DiscoveryState);
      v68 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v69 = *(*(v68 - 8) + 48);
      v70 = v69(v18, 4, v68);
      if (v70 == 3 || v70 == 1)
      {
        v18 = *v33;
        if (v69(*v33, 4, v68) != 4)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v70)
      {
        goto LABEL_87;
      }

      v71 = *v9;
      v72 = v69(*v33, 4, v68);
      v73 = type metadata accessor for UUID();
      (*(*(v73 - 8) + 8))(v71, v73);
      if (v72 == 4)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

    if (v21 == 2)
    {
      v22 = v0[97];
      v23 = v0[85];
      sub_10064C3D4(v5 + v7, v22, type metadata accessor for DiscoveryState);
      sub_10064C36C(v18, v23, type metadata accessor for DiscoveryState.Mode);
      v24 = sub_100649A24(v23, v22);
      sub_10064C30C(v22, type metadata accessor for DiscoveryState.Mode);
      sub_10064C30C(v23, type metadata accessor for DiscoveryState.Mode);
      if (v24)
      {
        goto LABEL_94;
      }

      goto LABEL_104;
    }

LABEL_103:
    sub_10064C30C(v18, type metadata accessor for DiscoveryState.Mode);
    goto LABEL_104;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = v0 + 111;
    sub_10064C3D4(v0[91], v0[111], type metadata accessor for DiscoveryState);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = v0[111];
          v12 = v0[108];
          v13 = v0[89];
          sub_10064C3D4(v5 + v7, v12, type metadata accessor for DiscoveryState);
          sub_10064C36C(v11, v13, type metadata accessor for DiscoveryState.Mode);
          LOBYTE(v11) = sub_100649A24(v13, v12);
          sub_10064C30C(v12, type metadata accessor for DiscoveryState.Mode);
          sub_10064C30C(v13, type metadata accessor for DiscoveryState.Mode);
          if (v11)
          {
            goto LABEL_94;
          }

          goto LABEL_104;
        }

        goto LABEL_18;
      }

      v61 = v0[111];
      v33 = v0 + 110;
      v130 = v0;
      sub_10064C3D4(v5 + v7, v0[110], type metadata accessor for DiscoveryState);
      v62 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v63 = *(*(v62 - 8) + 48);
      v64 = v63(v61, 4, v62);
      if (v64 != 3 && v64 != 1)
      {
        if (!v64)
        {
          v65 = *v9;
          v66 = v63(*v33, 4, v62);
          v67 = type metadata accessor for UUID();
          (*(*(v67 - 8) + 8))(v65, v67);
          if (v66 != 4)
          {
            goto LABEL_86;
          }

          goto LABEL_102;
        }

LABEL_87:
        v18 = *v9;
        sub_10064C30C(*v33, type metadata accessor for DiscoveryState.Mode);
        v0 = v130;
        goto LABEL_103;
      }

      v18 = *v33;
      if (v63(*v33, 4, v62) != 4)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    if (v10 == 2)
    {
      v74 = v0[111];
      v33 = v0 + 109;
      v130 = v0;
      sub_10064C3D4(v5 + v7, v0[109], type metadata accessor for DiscoveryState);
      v75 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v76 = *(*(v75 - 8) + 48);
      if (v76(v74, 4, v75) == 4)
      {
        v18 = *v33;
        if (v76(*v33, 4, v75) == 4)
        {
          goto LABEL_94;
        }

        goto LABEL_103;
      }

      goto LABEL_87;
    }

    if (v10 == 6)
    {
LABEL_41:
      v28 = v0[91];
      v29 = v0[80];
      sub_10064C30C(*v9, type metadata accessor for DiscoveryState.Mode);
      sub_10064C30C(v5 + v7, type metadata accessor for DiscoveryState);
      sub_10064C30C(v28, type metadata accessor for DiscoveryState);
      swift_beginAccess();
      sub_10064C2A8(v29, v2 + v4);
LABEL_42:
      swift_endAccess();
      goto LABEL_61;
    }

LABEL_18:
    v18 = *v9;
    goto LABEL_103;
  }

  sub_10064C3D4(v0[91], v0[107], type metadata accessor for DiscoveryState);
  v20 = swift_getEnumCaseMultiPayload();
  v18 = v0[107];
  if (v20 <= 1)
  {
    if (!v20)
    {
      v89 = v0[103];
      v90 = v0[86];
      sub_10064C3D4(v5 + v7, v89, type metadata accessor for DiscoveryState);
      sub_10064C36C(v18, v90, type metadata accessor for DiscoveryState.Mode);
      v91 = sub_100649A24(v90, v89);
      sub_10064C30C(v89, type metadata accessor for DiscoveryState.Mode);
      sub_10064C30C(v90, type metadata accessor for DiscoveryState.Mode);
      if (v91)
      {
LABEL_94:
        v45 = v0[91];
        v92 = v0[80];
        swift_beginAccess();
        sub_10064C2A8(v92, v2 + v4);
        goto LABEL_59;
      }

LABEL_104:
      v95 = v0[112];
      v96 = v0[84];
      v97 = v0[83];
      v98 = v0[82];
      v99 = v0[81];
      sub_10064C3D4(v2 + v4, v95, type metadata accessor for DiscoveryState);
      v132 = sub_100648264();
      v133 = v100;
      sub_10064C30C(v95, type metadata accessor for DiscoveryState);
      v101._countAndFlagsBits = 540945696;
      v101._object = 0xE400000000000000;
      String.append(_:)(v101);
      v102._countAndFlagsBits = sub_100648264();
      String.append(_:)(v102);

      v103._countAndFlagsBits = 46;
      v103._object = 0xE100000000000000;
      String.append(_:)(v103);
      v104 = v133;
      *v96 = v132;
      v96[1] = v104;
      (*(v97 + 104))(v96, enum case for StateManagerError.unsupportedTransition(_:), v98);
      swift_beginAccess();
      v105 = *(v99 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v99 + 128) = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v105 = sub_100A5D7CC(0, v105[2] + 1, 1, v105);
        *(v99 + 128) = v105;
      }

      v108 = v105[2];
      v107 = v105[3];
      if (v108 >= v107 >> 1)
      {
        v105 = sub_100A5D7CC((v107 > 1), v108 + 1, 1, v105);
      }

      v109 = v0[84];
      v110 = v0[83];
      v111 = v0[82];
      v105[2] = v108 + 1;
      (*(v110 + 32))(v105 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v108, v109, v111);
      *(v99 + 128) = v105;
      swift_endAccess();
      if (qword_101694D40 != -1)
      {
        swift_once();
      }

      v112 = v0[95];
      v113 = v0[80];
      v114 = type metadata accessor for Logger();
      sub_1000076D4(v114, qword_10177BCD0);
      sub_10064C3D4(v113, v112, type metadata accessor for DiscoveryState);

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = v0[112];
        v118 = v0[95];
        v119 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v119 = 136446466;
        sub_10064C3D4(v2 + v4, v117, type metadata accessor for DiscoveryState);
        v120 = sub_100648264();
        v122 = v121;
        sub_10064C30C(v117, type metadata accessor for DiscoveryState);
        v123 = sub_1000136BC(v120, v122, &v132);

        *(v119 + 4) = v123;
        *(v119 + 12) = 2082;
        v124 = sub_100648264();
        v126 = v125;
        sub_10064C30C(v118, type metadata accessor for DiscoveryState);
        v127 = sub_1000136BC(v124, v126, &v132);

        *(v119 + 14) = v127;
        _os_log_impl(&_mh_execute_header, v115, v116, "Unsupported state transition: %{public}s -> %{public}s.", v119, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v128 = v0[95];

        sub_10064C30C(v128, type metadata accessor for DiscoveryState);
      }

      sub_10000B3A8(v0[91], &qword_1016A68B0, &qword_1013B4C38);
      goto LABEL_114;
    }

    if (v20 == 1)
    {
      v33 = v0 + 106;
      v130 = v0;
      sub_10064C3D4(v5 + v7, v0[106], type metadata accessor for DiscoveryState);
      v34 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v35 = *(*(v34 - 8) + 48);
      v36 = v35(v18, 4, v34);
      if (v36 == 3 || v36 == 1)
      {
        v18 = *v33;
        if (v35(*v33, 4, v34) != 4)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      v9 = v0 + 107;
      if (v36)
      {
        goto LABEL_87;
      }

      v37 = *v9;
      v38 = v35(*v33, 4, v34);
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 8))(v37, v39);
      if (v38 == 4)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

    goto LABEL_103;
  }

  if (v20 == 2)
  {
    v83 = v0[105];
    v84 = v0[88];
    sub_10064C3D4(v5 + v7, v83, type metadata accessor for DiscoveryState);
    sub_10064C36C(v18, v84, type metadata accessor for DiscoveryState.Mode);
    v85 = sub_100649A24(v84, v83);
    sub_10064C30C(v83, type metadata accessor for DiscoveryState.Mode);
    sub_10064C30C(v84, type metadata accessor for DiscoveryState.Mode);
    if (v85)
    {
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  if (v20 == 3)
  {
    v86 = v0[104];
    v87 = v0[87];
    sub_10064C3D4(v5 + v7, v86, type metadata accessor for DiscoveryState);
    sub_10064C36C(v18, v87, type metadata accessor for DiscoveryState.Mode);
    v88 = sub_100649A24(v87, v86);
    sub_10064C30C(v86, type metadata accessor for DiscoveryState.Mode);
    sub_10064C30C(v87, type metadata accessor for DiscoveryState.Mode);
    if (v88)
    {
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  if (v20 != 6)
  {
    goto LABEL_103;
  }

LABEL_45:
  v30 = v0[91];
  v31 = v0[80];
  swift_beginAccess();
  sub_10064C2A8(v31, v2 + v4);
  swift_endAccess();
  sub_10064C30C(v18, type metadata accessor for DiscoveryState.Mode);
  sub_10064C30C(v5 + v7, type metadata accessor for DiscoveryState);
  v32 = v30;
LABEL_60:
  sub_10064C30C(v32, type metadata accessor for DiscoveryState);
LABEL_61:
  v48 = v0[81];
  sub_10064C3D4(v2 + v4, v0[94], type metadata accessor for DiscoveryState);
  swift_beginAccess();
  v49 = *(v48 + 136);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  *(v48 + 136) = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100A5D7A4(0, v49[2] + 1, 1, v49);
    *(v48 + 136) = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100A5D7A4((v51 > 1), v52 + 1, 1, v49);
  }

  v53 = v0[94];
  v54 = v0[93];
  v55 = v0[81];
  v49[2] = v52 + 1;
  sub_10064C36C(v53, v49 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, type metadata accessor for DiscoveryState);
  *(v48 + 136) = v49;
  swift_endAccess();
  v56 = *(v55 + 112);
  v0[113] = v56;
  if (v56)
  {
    v57 = v0[112];
    v0[114] = *(v0[81] + 120);
    sub_10064C3D4(v2 + v4, v57, type metadata accessor for DiscoveryState);

    v131 = (v56 + *v56);
    v58 = swift_task_alloc();
    v0[115] = v58;
    *v58 = v0;
    v58[1] = sub_10064BE2C;
    v59 = v0[112];

    return v131(v59);
  }

LABEL_114:

  v129 = v0[1];

  return v129();
}

uint64_t sub_10064BE2C()
{
  v1 = *(*v0 + 912);
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 896);
  v6 = *v0;

  sub_1000BB27C(v2, v1);
  sub_10064C30C(v3, type metadata accessor for DiscoveryState);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10064C2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10064C30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10064C36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064C3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064C43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10064C484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ValueMetadata *sub_10064C4F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        goto LABEL_16;
      }

      if (a1 == 10)
      {
        v1 = &type metadata for VerifyFindMyNetworkIdResponseV2Payload;
        sub_10064D6C4();
        return v1;
      }
    }

    else if (a1 != 6)
    {
      if (a1 != 7)
      {
        v1 = &type metadata for VerifyFindMyNetworkIdResponsePayload;
        sub_10064D718();
        return v1;
      }

LABEL_16:
      v1 = &type metadata for VerifyFindMyNetworkIdPayload;
      sub_10064D76C();
      return v1;
    }

    v1 = &type metadata for AccessoryCommandResponsePayload;
    sub_1003101C0();
    return v1;
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = &type metadata for iCloudIdentifierResponsePayload;
      sub_10064D814();
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AccessoryGenericPayload;
      sub_10030FF74();
    }

    else
    {
      v1 = &type metadata for EncryptedSerialNumberResponsePayload;
      sub_10064D7C0();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for GetiCloudIdentifierPayload;
      sub_10064D8BC();
    }

    else
    {
      v1 = &type metadata for PrimaryKeyResponsePayload;
      sub_10064D868();
    }
  }

  else
  {
    v1 = &type metadata for GetPrimaryKeyPayload;
    sub_10064D910();
  }

  return v1;
}

uint64_t sub_10064C60C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000018;
      v7 = 0xD000000000000023;
      if (a1 == 10)
      {
        v7 = 0xD000000000000020;
      }

      v8 = a1 == 9;
    }

    else
    {
      v6 = 0xD000000000000010;
      v7 = 0xD00000000000001ELL;
      if (a1 == 7)
      {
        v7 = 0xD000000000000016;
      }

      v8 = a1 == 6;
    }

    if (v8)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7972616D6972702ELL;
    v2 = 0xD000000000000019;
    v3 = 0xD00000000000001ELL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (a1 == 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10064C7A0()
{
  v1 = *(v0 + 24);
  v2 = (v1 >> 60) & 3 | (4 * *(v0 + 32));
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    if ((v1 >> 60) & 3 | (4 * *(v0 + 32)))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    if (v2 <= 1)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else if (((v1 >> 60) & 3 | (4 * *(v0 + 32))) <= 5u)
  {
    if (v2 == 4)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else if (v2 == 6)
  {
    return 9;
  }

  else if (v2 == 7)
  {
    return 10;
  }

  else
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    v8 = v1 | *v0 | v7 | v6;
    if (v7 | v1 | v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v0 == 1;
    }

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    if (v8)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10064C85C(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (v5 >> 60) & 3 | (4 * *(v1 + 32));
  if (v7 <= 3)
  {
    if (((v5 >> 60) & 3 | (4 * *(v1 + 32))) > 1u)
    {
      if (v7 != 2)
      {
        v13 = v5 & 0xCFFFFFFFFFFFFFFFLL;
        *(a1 + 24) = &type metadata for AccessoryCommandResponsePayload;
        *(a1 + 32) = sub_1003101C0();
        v14 = swift_allocObject();
        *a1 = v14;
        *(v14 + 16) = v4;
        *(v14 + 22) = HIWORD(v4);
        *(v14 + 18) = v4 >> 16;
        *(v14 + 24) = v3;
        *(v14 + 32) = v6;
        *(v14 + 40) = v13;
        sub_100017D5C(v4, v3);
        v11 = v6;
        v12 = v13;
        goto LABEL_17;
      }

      v8 = v4 >> 16;
      v9 = v4 >> 8;
      *(a1 + 24) = &type metadata for EncryptedSerialNumberResponsePayload;
      v10 = sub_10064D7C0();
    }

    else
    {
      v8 = v4 >> 16;
      v9 = v4 >> 8;
      if (v7)
      {
        *(a1 + 24) = &type metadata for iCloudIdentifierResponsePayload;
        v10 = sub_10064D814();
      }

      else
      {
        *(a1 + 24) = &type metadata for PrimaryKeyResponsePayload;
        v10 = sub_10064D868();
      }
    }
  }

  else
  {
    if (((v5 >> 60) & 3 | (4 * *(v1 + 32))) <= 5u)
    {
      if (v7 != 4)
      {
        *(a1 + 24) = &type metadata for VerifyFindMyNetworkIdResponsePayload;
        *(a1 + 32) = sub_10064D718();
        *a1 = v4 & 1;
        return;
      }
    }

    else if (v7 != 6)
    {
      if (v7 == 7)
      {
        *(a1 + 24) = &type metadata for VerifyFindMyNetworkIdResponseV2Payload;
        *(a1 + 32) = sub_10064D6C4();
        *a1 = v4;
        *(a1 + 8) = v3;
      }

      else
      {
        v15 = v6 | v3 | v5;
        if (v15 | v4)
        {
          if (v15 || v4 != 1)
          {
            *(a1 + 24) = &type metadata for AccessoryGenericPayload;
            v16 = sub_10030FF74();
          }

          else
          {
            *(a1 + 24) = &type metadata for GetiCloudIdentifierPayload;
            v16 = sub_10064D8BC();
          }
        }

        else
        {
          *(a1 + 24) = &type metadata for GetPrimaryKeyPayload;
          v16 = sub_10064D910();
        }

        *(a1 + 32) = v16;
      }

      return;
    }

    v8 = v4 >> 16;
    v9 = v4 >> 8;
    *(a1 + 24) = &type metadata for VerifyFindMyNetworkIdPayload;
    v10 = sub_10064D76C();
  }

  *(a1 + 32) = v10;
  *a1 = v4;
  *(a1 + 1) = v9;
  *(a1 + 6) = HIWORD(v4);
  *(a1 + 2) = v8;
  *(a1 + 8) = v3;
  v11 = v4;
  v12 = v3;
LABEL_17:

  sub_100017D5C(v11, v12);
}

uint64_t sub_10064CACC(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v7 = sub_10064C7A0();
  LOWORD(v14) = v7 | 0x400;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v6, v3);
  LOWORD(v14) = v18;
  sub_10015049C(v22, v23);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    if (v7 <= 4u)
    {
      if (v7 <= 1u)
      {
        if (v7)
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          sub_10015049C(v22, v23);
          sub_10064D61C();
        }

        else
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          sub_10015049C(v22, v23);
          sub_10064D670();
        }
      }

      else
      {
        if (v7 == 2)
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          v10 = v14;
          v11 = v15;
          v18 = v14;
          v19 = v15;
          sub_10015049C(v22, v23);
          sub_10064D5C8();
          goto LABEL_24;
        }

        if (v7 == 3)
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          v10 = v14;
          v11 = v15;
          v18 = v14;
          v19 = v15;
          sub_10015049C(v22, v23);
          sub_10064D574();
LABEL_24:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          goto LABEL_25;
        }

        sub_10064C85C(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_35;
        }

        sub_10015049C(v22, v23);
        sub_10030FB84();
      }
    }

    else
    {
      if (v7 <= 7u)
      {
        if (v7 == 5)
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          v10 = v14;
          v11 = v15;
          v18 = v14;
          v19 = v15;
          sub_10015049C(v22, v23);
          sub_10064D520();
          goto LABEL_24;
        }

        if (v7 == 6)
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v8 = v14;
            v9 = v15;
            v10 = v16;
            v11 = v17;
            v18 = v14;
            v19 = v15;
            v20 = v16;
            v21 = v17;
            sub_10015049C(v22, v23);
            sub_10030FDD0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100016590(v8, v9);
LABEL_25:
            sub_100016590(v10, v11);
            return sub_100007BAC(v22);
          }

LABEL_35:
          sub_10064D424();
          swift_allocError();
          *v12 = 0;
          swift_willThrow();
          return sub_100007BAC(v22);
        }

        goto LABEL_15;
      }

      if (v7 != 8)
      {
        if (v7 != 9)
        {
          sub_10064C85C(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            LOWORD(v18) = v14;
            v19 = v15;
            sub_10015049C(v22, v23);
            sub_1002F1338();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

            return sub_100007BAC(v22);
          }

          goto LABEL_35;
        }

LABEL_15:
        sub_10064C85C(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_35;
        }

        v10 = v14;
        v11 = v15;
        v18 = v14;
        v19 = v15;
        sub_10015049C(v22, v23);
        sub_10064D4CC();
        goto LABEL_24;
      }

      sub_10064C85C(&v18);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_35;
      }

      LOBYTE(v18) = v14;
      sub_10015049C(v22, v23);
      sub_10064D478();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v22);
}

double sub_10064D1A4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10064DE80(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_10064D204(unsigned __int16 a1)
{
  if (a1 > 0x404u)
  {
    if (a1 > 0x407u)
    {
      switch(a1)
      {
        case 0x408u:
          return 8;
        case 0x409u:
          return 9;
        case 0x40Au:
          return 10;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x405u:
          return 5;
        case 0x406u:
          return 6;
        case 0x407u:
          return 7;
      }
    }
  }

  else if (a1 > 0x401u)
  {
    switch(a1)
    {
      case 0x402u:
        return 2;
      case 0x403u:
        return 3;
      case 0x404u:
        return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x302u:
        return 11;
      case 0x400u:
        return 0;
      case 0x401u:
        return 1;
    }
  }

  return 12;
}

uint64_t sub_10064D2E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((4 * v1) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3 | (4 * (v1 & 3u));
  }
}

__n128 sub_10064D310(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10064D324(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F8 && *(a1 + 33))
  {
    return (*a1 + 1016);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (4 * *(a1 + 32))) ^ 0x3FF;
  if (v3 >= 0x3F7)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10064D378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 1016;
    *(result + 8) = 0;
    if (a3 >= 0x3F8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 & 3) << 60;
      *(result + 32) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_10064D3E0(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 24) = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 32) = a2 >> 2;
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 2;
  }

  return result;
}

unint64_t sub_10064D424()
{
  result = qword_1016A68D0;
  if (!qword_1016A68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68D0);
  }

  return result;
}

unint64_t sub_10064D478()
{
  result = qword_1016A68D8;
  if (!qword_1016A68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68D8);
  }

  return result;
}

unint64_t sub_10064D4CC()
{
  result = qword_1016A68E0;
  if (!qword_1016A68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68E0);
  }

  return result;
}

unint64_t sub_10064D520()
{
  result = qword_1016A68E8;
  if (!qword_1016A68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68E8);
  }

  return result;
}

unint64_t sub_10064D574()
{
  result = qword_1016A68F0;
  if (!qword_1016A68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68F0);
  }

  return result;
}

unint64_t sub_10064D5C8()
{
  result = qword_1016A68F8;
  if (!qword_1016A68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68F8);
  }

  return result;
}

unint64_t sub_10064D61C()
{
  result = qword_1016A6900;
  if (!qword_1016A6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6900);
  }

  return result;
}

unint64_t sub_10064D670()
{
  result = qword_1016A6908;
  if (!qword_1016A6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6908);
  }

  return result;
}

unint64_t sub_10064D6C4()
{
  result = qword_1016A6910;
  if (!qword_1016A6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6910);
  }

  return result;
}

unint64_t sub_10064D718()
{
  result = qword_1016A6918;
  if (!qword_1016A6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6918);
  }

  return result;
}

unint64_t sub_10064D76C()
{
  result = qword_1016A6920;
  if (!qword_1016A6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6920);
  }

  return result;
}

unint64_t sub_10064D7C0()
{
  result = qword_1016A6928;
  if (!qword_1016A6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6928);
  }

  return result;
}

unint64_t sub_10064D814()
{
  result = qword_1016A6930;
  if (!qword_1016A6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6930);
  }

  return result;
}

unint64_t sub_10064D868()
{
  result = qword_1016A6938;
  if (!qword_1016A6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6938);
  }

  return result;
}

unint64_t sub_10064D8BC()
{
  result = qword_1016A6940;
  if (!qword_1016A6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6940);
  }

  return result;
}

unint64_t sub_10064D910()
{
  result = qword_1016A6948;
  if (!qword_1016A6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6948);
  }

  return result;
}

ValueMetadata *sub_10064D964@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10064C4F4(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 <= 5u)
    {
      if (a1 <= 2u)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            sub_10001F280(a2, v18);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              result = sub_100007BAC(a2);
              v8 = 0;
              v9 = 0;
              v10 = xmmword_10139D920;
              v11 = 2;
LABEL_36:
              *a3 = v10;
              *(a3 + 16) = v8;
              *(a3 + 24) = v9;
              *(a3 + 32) = v11;
              return result;
            }
          }

          else
          {
            sub_10001F280(a2, v18);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              result = sub_100007BAC(a2);
              v10 = v15;
              v8 = 0;
              v9 = 0;
              v11 = 0;
              goto LABEL_36;
            }
          }
        }

        else
        {
          sub_10001F280(a2, v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            result = sub_100007BAC(a2);
            v8 = 0;
            v9 = 0;
            v10 = 0uLL;
            v11 = 2;
            goto LABEL_36;
          }
        }

        goto LABEL_37;
      }

      if (a1 == 3)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v11 = 0;
          v9 = 0x1000000000000000;
          goto LABEL_36;
        }
      }

      else
      {
        if (a1 == 4)
        {
          sub_10001F280(a2, v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            result = sub_100007BAC(a2);
            v8 = 0;
            v9 = 0;
            v10 = xmmword_10139D930;
            v11 = 2;
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v11 = 0;
          goto LABEL_35;
        }
      }

      goto LABEL_37;
    }

    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v11 = 1;
LABEL_35:
          v9 = 0x2000000000000000;
          goto LABEL_36;
        }

LABEL_37:
        sub_10064D424();
        swift_allocError();
        *v13 = 0;
        swift_willThrow();
        return sub_100007BAC(a2);
      }

      if (a1 == 10)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          *&v12 = v15;
          *(&v12 + 1) = *(&v15 + 1);
          v14 = v12;
          result = sub_100007BAC(a2);
          v10 = v14;
          v8 = 0;
          v11 = 1;
          v9 = 0x3000000000000000;
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    else if (a1 != 6)
    {
      if (a1 == 7)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v9 = 0;
          v11 = 1;
          goto LABEL_36;
        }
      }

      else
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v8 = 0;
          v10 = v15;
          v11 = 1;
          v9 = 0x1000000000000000;
          goto LABEL_36;
        }
      }

      goto LABEL_37;
    }

    sub_10001F280(a2, v18);
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v8 = v16;
      result = sub_100007BAC(a2);
      v10 = v15;
      v11 = 0;
      v9 = v17 | 0x3000000000000000;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10064DE80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v20, v20[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (!v2)
  {
    v8 = v17;
    v23 = v18[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v7, v4);
    v9 = sub_10064D204(v19[0]);
    if (v9 != 12)
    {
      v11 = v9;
      v12 = sub_10064C4F4(v9);
      v14 = v13;
      sub_10001F280(a1, v18);
      v19[3] = v12;
      v19[4] = v14;
      sub_1000280DC(v19);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v19, v18);
      sub_10064D964(v11, v18, v21);
      sub_100007BAC(v19);
      sub_100007BAC(v20);
      result = sub_100007BAC(a1);
      v16 = v21[1];
      *v8 = v21[0];
      *(v8 + 16) = v16;
      *(v8 + 32) = v22;
      return result;
    }

    sub_10064D424();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v20);
  return sub_100007BAC(a1);
}

unint64_t sub_10064E110()
{
  result = qword_1016A6950;
  if (!qword_1016A6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6950);
  }

  return result;
}

uint64_t sub_10064E164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1000BC4D4(&qword_1016B7D80, &unk_1013B52B0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v29 - v8);
  v10 = type metadata accessor for PairingSuccessResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  sub_1000D2A70(a2, v32, &qword_1016A6A40, &qword_1013DD950);
  if (v33 == 1)
  {
    v17 = &qword_1016A6A40;
    v18 = &qword_1013DD950;
    v19 = v32;
  }

  else
  {
    sub_10000A748(v32, v34);
    sub_10001F280(v34, v32);
    sub_1000BC4D4(&unk_1016B7D90, &qword_1013B52C0);
    v20 = swift_dynamicCast();
    v21 = *(v11 + 56);
    if (v20)
    {
      v21(v9, 0, 1, v10);
      v31 = *(v11 + 32);
      v31(v16, v9, v10);
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      (*(v11 + 16))(v14, v16, v10);
      v24 = sub_100650D80(&qword_1016A6A28, v23, type metadata accessor for BackgroundPairingResultListener, &unk_1013B5270);
      v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v30 = v6;
      v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v24;
      v31((v27 + v25), v14, v10);
      *(v27 + v26) = v2;
      swift_retain_n();
      sub_100A838D4(0, 0, v30, &unk_1013B52D0, v27);

      (*(v11 + 8))(v16, v10);
      return sub_100007BAC(v34);
    }

    v21(v9, 1, 1, v10);
    sub_100007BAC(v34);
    v17 = &qword_1016B7D80;
    v18 = &unk_1013B52B0;
    v19 = v9;
  }

  return sub_10000B3A8(v19, v17, v18);
}

uint64_t sub_10064E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return _swift_task_switch(sub_10064E554, a5, 0);
}

uint64_t sub_10064E554()
{
  v1 = PairingSuccessResult.beaconIds.getter();
  *(v0 + 72) = v1;
  PairingSuccessResult.location.getter();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_10064E608;

  return sub_10064E8E8(v0 + 16, v1);
}

uint64_t sub_10064E608()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];
    sub_10000B3A8((v2 + 2), &qword_1016A6A30, &unk_1013B52A0);

    return _swift_task_switch(sub_10064E8D0, v3, 0);
  }

  else
  {
    sub_10000B3A8((v2 + 2), &qword_1016A6A30, &unk_1013B52A0);
    v4 = swift_task_alloc();
    v2[12] = v4;
    *v4 = v2;
    v4[1] = sub_10064E7C0;
    v5 = v2[9];

    return sub_10064FAAC(v5);
  }
}

uint64_t sub_10064E7C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10064E8E8(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = type metadata accessor for UUID();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_10064E9C4, v2, 0);
}

uint64_t sub_10064E9C4()
{
  v20 = v0;
  if (qword_101694818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 288) = v1;
  *(v0 + 296) = sub_1000076D4(v1, qword_1016A6958);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v19);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Storing pairing location for paired beacons with UUIDs: %{private,mask.hash}s", v4, 0x16u);
    sub_100007BAC(v5);
  }

  sub_1000D2A70(*(v0 + 224), v0 + 56, &qword_1016A6A30, &unk_1013B52A0);
  if (*(v0 + 80))
  {
    sub_10000A748((v0 + 56), v0 + 16);
    v9 = swift_task_alloc();
    *(v0 + 304) = v9;
    *v9 = v0;
    v9[1] = sub_10064ED50;

    return daemon.getter();
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_1016A6A30, &unk_1013B52A0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v14 = Array.description.getter();
      v16 = sub_1000136BC(v14, v15, &v19);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "No location for paired beacons: %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10064ED50(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 312) = a1;

  v3 = swift_task_alloc();
  *(v2 + 320) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100650D80(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100650D80(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10064EF34;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10064EF34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v5 = *(v3 + 240);

  if (v1)
  {
    v6 = sub_10064FA20;
  }

  else
  {
    v6 = sub_10064F084;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10064F084()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  *(v0 + 344) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 416) = v6;
    *(v0 + 352) = *(v4 + 56);
    *(v0 + 360) = v5;
    v7 = *(v0 + 328);
    *(v0 + 368) = *(v0 + 336);
    *(v0 + 376) = 0;
    v8 = *(v0 + 280);
    *(v0 + 384) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v8, v1 + ((v6 + 32) & ~v6), v3);

    return _swift_task_switch(sub_10064F1A0, v7, 0);
  }

  else
  {

    sub_100007BAC((v0 + 16));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10064F1A0()
{
  v33 = v0;
  sub_10001F280((v0 + 2), (v0 + 12));
  sub_1000BC4D4(&qword_1016B7DA0, &qword_1013DD970);
  sub_100650E24();
  if (swift_dynamicCast())
  {
    v1 = v0[46];
    v2 = v0[35];
    v3 = v0[30];
    v4 = v0[27];
    v5 = *(v0[41] + 128);
    type metadata accessor for Transaction();
    v6 = swift_task_alloc();
    *(v6 + 16) = 0;
    *(v6 + 24) = v4;
    *(v6 + 32) = v2;
    *(v6 + 40) = v5;
    static Transaction.named<A>(_:with:)();
    v0[49] = v1;

    v7 = sub_10064F564;
    v8 = v3;
  }

  else
  {
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v9 = v0[45];
    v10 = v0[35];
    v11 = v0[34];
    v12 = v0[31];
    sub_1000076D4(v0[36], qword_10177BD00);
    sub_10001F280((v0 + 2), (v0 + 17));
    v9(v11, v10, v12);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[34];
    v17 = v0[31];
    v18 = v0[32];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v19 = 136380931;
      sub_10001F280((v0 + 17), (v0 + 22));
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_100007BAC(v0 + 17);
      v23 = sub_1000136BC(v20, v22, v32);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      sub_100650D80(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = *(v18 + 8);
      v27(v16, v17);
      v28 = sub_1000136BC(v24, v26, v32);

      *(v19 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v13, v14, "Attempt to store invalid location: %{private}s for UUID %s)", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v27 = *(v18 + 8);
      v27(v16, v17);
      sub_100007BAC(v0 + 17);
    }

    v0[50] = v27;
    v29 = v0[30];
    sub_100650E70();
    v0[51] = swift_allocError();
    *v30 = 14;
    swift_willThrow();
    v7 = sub_10064F69C;
    v8 = v29;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10064F564()
{
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
  v1 = *(v0 + 376) + 1;
  if (v1 == *(v0 + 344))
  {

    sub_100007BAC((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 368) = *(v0 + 392);
    *(v0 + 376) = v1;
    v4 = *(v0 + 360);
    v5 = *(v0 + 328);
    v6 = *(v0 + 280);
    v7 = *(v0 + 248);
    v8 = *(v0 + 232) + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 352) * v1;
    *(v0 + 384) = (*(v0 + 256) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v6, v8, v7);

    return _swift_task_switch(sub_10064F1A0, v5, 0);
  }
}

uint64_t sub_10064F69C()
{
  v26 = v0;
  (*(v0 + 360))(*(v0 + 264), *(v0 + 280), *(v0 + 248));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 400);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  if (v3)
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100650D80(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v5;
    v11 = v10;
    v4(v6, v7);
    v12 = sub_1000136BC(v9, v11, &v25);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v13;
    *v22 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error storing pairing location for %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);

    v4(v23, v7);
  }

  else
  {

    v4(v6, v7);
    v4(v5, v7);
  }

  v14 = *(v0 + 376) + 1;
  if (v14 == *(v0 + 344))
  {

    sub_100007BAC((v0 + 16));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    *(v0 + 368) = 0;
    *(v0 + 376) = v14;
    v17 = *(v0 + 360);
    v18 = *(v0 + 328);
    v19 = *(v0 + 280);
    v20 = *(v0 + 248);
    v21 = *(v0 + 232) + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 352) * v14;
    *(v0 + 384) = (*(v0 + 256) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v19, v21, v20);

    return _swift_task_switch(sub_10064F1A0, v18, 0);
  }
}

uint64_t sub_10064FA20()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10064FAAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[15] = v6;
  *v6 = v2;
  v6[1] = sub_10064FC54;

  return daemon.getter();
}

uint64_t sub_10064FC54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[16] = a1;

  v3 = swift_task_alloc();
  v2[17] = v3;
  v4 = type metadata accessor for Daemon();
  v2[18] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100650D80(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[19] = v6;
  v7 = sub_100650D80(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10064FE48;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10064FE48(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100650A68, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[22] = v5;
    *v5 = v3;
    v5[1] = sub_10064FFBC;

    return daemon.getter();
  }
}

uint64_t sub_10064FFBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 184) = a1;

  v5 = swift_task_alloc();
  *(v3 + 192) = v5;
  v6 = type metadata accessor for LocalPairingMonitorService();
  v7 = sub_100650D80(&qword_1016B1130, 255, type metadata accessor for LocalPairingMonitorService, &unk_1013965D0);
  *v5 = v4;
  v5[1] = sub_100650174;
  v8 = *(v2 + 152);
  v9 = *(v2 + 144);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100650174(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100650B14;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_10065029C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10065029C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 272) = v7;
    *(v0 + 224) = *(v5 + 56);
    *(v0 + 232) = v6;
    v8 = *(v0 + 112);
    *(v0 + 240) = 0;
    *(v0 + 248) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_1006503EC, v3, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1006503EC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (*(v0 + 272) + 24) & ~*(v0 + 272);
  (*(v0 + 232))(v2, *(v0 + 112), v4);
  v6 = swift_allocObject();
  *(v0 + 256) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 264) = v7;
  *v7 = v0;
  v7[1] = sub_100650544;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v6, v9);
}

uint64_t sub_100650544()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100650670, v1, 0);
}

uint64_t sub_100650670()
{
  v37 = v0;
  v1 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v1, 1, *(v0 + 48)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694818 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 232);
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016A6958);
    v2(v4, v3, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v9)
    {
      v35 = *(v0 + 112);
      v14 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100650D80(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_1000136BC(v15, v17, &v36);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "No beacons for UUID: %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v34);

      v18(v35, v13);
    }

    else
    {

      v24 = *(v12 + 8);
      v24(v11, v13);
      v24(v10, v13);
    }
  }

  else
  {
    v20 = *(v0 + 112);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);
    sub_100132D2C(v1, v23);
    sub_100A5187C(v23);
    sub_100650DC8(v23);
    (*(v22 + 8))(v20, v21);
  }

  v25 = *(v0 + 240) + 1;
  if (v25 == *(v0 + 216))
  {

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 232);
    v29 = *(v0 + 160);
    v30 = *(v0 + 112);
    v31 = *(v0 + 72);
    v32 = *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 224) * v25;
    v33 = (*(v0 + 80) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 240) = v25;
    *(v0 + 248) = v33;
    v28(v30, v32, v31);

    return _swift_task_switch(sub_1006503EC, v29, 0);
  }
}

uint64_t sub_100650A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100650B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100650C38()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A6958);
  v1 = sub_1000076D4(v0, qword_1016A6958);
  if (qword_101694820 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AFF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100650D00()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFF0);
  sub_1000076D4(v0, qword_10177AFF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100650D80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100650DC8(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100650E24()
{
  result = qword_1016A3160;
  if (!qword_1016A3160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A3160);
  }

  return result;
}

unint64_t sub_100650E70()
{
  result = qword_1016A6A38;
  if (!qword_1016A6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A38);
  }

  return result;
}

uint64_t sub_100650EC4(uint64_t a1)
{
  v4 = *(type metadata accessor for PairingSuccessResult() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10064E534(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100650FF4(void *a1, char a2)
{
  v5 = sub_1000BC4D4(&qword_1016A6A68, &qword_1013B5410);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100651A48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  sub_100651AF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[13] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[12] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006511A8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100651734(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100651284()
{
  v1 = 1886351212;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1006512D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100651748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1006512FC(uint64_t a1)
{
  v2 = sub_100651A48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100651338(uint64_t a1)
{
  v2 = sub_100651A48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100651374@<X0>(_DWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_10065185C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1006513CC(void *a1, uint64_t a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1000198E8();
    v5 = (a2 + 34);
    do
    {
      v11 = v4;
      v6 = *(v5 - 1);
      v20 = *v5;
      LOBYTE(v21) = *(v5 - 2);
      v12 = FixedWidthInteger.data.getter();
      v15 = v7;
      sub_10015049C(v18, v19);
      sub_100165078();
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v12, v15);
      if (v2)
      {
        break;
      }

      LOBYTE(v21) = v6;
      v13 = FixedWidthInteger.data.getter();
      v16 = v8;
      sub_10015049C(v18, v19);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v13, v16);
      v21 = v20;
      sub_1002053B0();
      v14 = FixedWidthInteger.data.getter();
      v17 = v9;
      sub_10015049C(v18, v19);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v14, v17);
      v5 += 2;
      --v4;
    }

    while (v11 != 1);
  }

  return sub_100007BAC(v18);
}

uint64_t sub_1006515BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100007BAC(a1);
  *a2 = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100651610(uint64_t a1)
{
  *(a1 + 8) = sub_100651640();
  result = sub_100422224();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100651640()
{
  result = qword_1016A6A48;
  if (!qword_1016A6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagSoundSequence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[4])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AirTagSoundSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_100651734(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100651748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1886351212 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_10065185C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A6A50, &qword_1013B5408);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100651A48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v11[14] = 0;
  sub_100651A9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[12] = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100007BAC(a1);
  return (v8 << 8) | (v9 << 16) | v7;
}

unint64_t sub_100651A48()
{
  result = qword_1016A6A58;
  if (!qword_1016A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A58);
  }

  return result;
}

unint64_t sub_100651A9C()
{
  result = qword_1016A6A60;
  if (!qword_1016A6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A60);
  }

  return result;
}

unint64_t sub_100651AF0()
{
  result = qword_1016A6A70;
  if (!qword_1016A6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A70);
  }

  return result;
}

unint64_t sub_100651B68()
{
  result = qword_1016A6A78;
  if (!qword_1016A6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A78);
  }

  return result;
}

unint64_t sub_100651BC0()
{
  result = qword_1016A6A80;
  if (!qword_1016A6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A80);
  }

  return result;
}

unint64_t sub_100651C18()
{
  result = qword_1016A6A88;
  if (!qword_1016A6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A88);
  }

  return result;
}

unint64_t sub_100651C70()
{
  result = qword_1016A6A90;
  if (!qword_1016A6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A90);
  }

  return result;
}

unint64_t sub_100651CC4()
{
  result = qword_1016A6A98;
  if (!qword_1016A6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A98);
  }

  return result;
}

uint64_t sub_100651DB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (!a1)
  {
    UUID.init(uuidString:)();
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v12, 1, v16);
    if (result != 1)
    {
      return (*(v17 + 32))(a2, v12, v16);
    }

    goto LABEL_11;
  }

  if (a1 == 1)
  {
    UUID.init(uuidString:)();
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v10, 1, v13);
    if (result != 1)
    {
      return (*(v14 + 32))(a2, v10, v13);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  UUID.init(uuidString:)();
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v7, 1, v18);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v19 + 32))(a2, v7, v18);
}

unint64_t sub_10065207C()
{
  result = qword_1016A6AB0;
  if (!qword_1016A6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AB0);
  }

  return result;
}

uint64_t sub_100652100@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v49 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v49 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v49 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v49 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v49 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v49 - v26;
  __chkstk_darwin(v25);
  v29 = &v49 - v28;
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        UUID.init(uuidString:)();
        v43 = type metadata accessor for UUID();
        v44 = *(v43 - 8);
        result = (*(v44 + 48))(v21, 1, v43);
        if (result != 1)
        {
          return (*(v44 + 32))(v50, v21, v43);
        }

        goto LABEL_33;
      }

      UUID.init(uuidString:)();
      v35 = type metadata accessor for UUID();
      v36 = *(v35 - 8);
      result = (*(v36 + 48))(v24, 1, v35);
      if (result != 1)
      {
        return (*(v36 + 32))(v50, v24, v35);
      }
    }

    else
    {
      if (a1)
      {
        UUID.init(uuidString:)();
        v41 = type metadata accessor for UUID();
        v42 = *(v41 - 8);
        result = (*(v42 + 48))(v27, 1, v41);
        if (result != 1)
        {
          return (*(v42 + 32))(v50, v27, v41);
        }

        goto LABEL_32;
      }

      UUID.init(uuidString:)();
      v33 = type metadata accessor for UUID();
      v34 = *(v33 - 8);
      result = (*(v34 + 48))(v29, 1, v33);
      if (result != 1)
      {
        return (*(v34 + 32))(v50, v29, v33);
      }

      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
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

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      UUID.init(uuidString:)();
      v37 = type metadata accessor for UUID();
      v38 = *(v37 - 8);
      result = (*(v38 + 48))(v18, 1, v37);
      if (result != 1)
      {
        return (*(v38 + 32))(v50, v18, v37);
      }

      goto LABEL_35;
    }

    UUID.init(uuidString:)();
    v47 = type metadata accessor for UUID();
    v48 = *(v47 - 8);
    result = (*(v48 + 48))(v15, 1, v47);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    return (*(v48 + 32))(v50, v15, v47);
  }

  if (a1 == 6)
  {
    UUID.init(uuidString:)();
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    result = (*(v40 + 48))(v12, 1, v39);
    if (result != 1)
    {
      return (*(v40 + 32))(v50, v12, v39);
    }

    goto LABEL_31;
  }

  if (a1 == 7)
  {
    UUID.init(uuidString:)();
    v30 = type metadata accessor for UUID();
    v31 = *(v30 - 8);
    result = (*(v31 + 48))(v9, 1, v30);
    if (result != 1)
    {
      return (*(v31 + 32))(v50, v9, v30);
    }

    goto LABEL_34;
  }

  UUID.init(uuidString:)();
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  result = (*(v46 + 48))(v6, 1, v45);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return (*(v46 + 32))(v50, v6, v45);
}

unint64_t sub_100652828()
{
  result = qword_1016A6AC8;
  if (!qword_1016A6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AC8);
  }

  return result;
}

unint64_t sub_100652880()
{
  result = qword_1016A6AD0;
  if (!qword_1016A6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AD0);
  }

  return result;
}

uint64_t sub_1006528D4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      UUID.init(uuidString:)();
      v22 = type metadata accessor for UUID();
      v23 = *(v22 - 8);
      result = (*(v23 + 48))(v18, 1, v22);
      if (result != 1)
      {
        return (*(v23 + 32))(a2, v18, v22);
      }

      goto LABEL_19;
    }

    UUID.init(uuidString:)();
    v28 = type metadata accessor for UUID();
    v29 = *(v28 - 8);
    result = (*(v29 + 48))(v16, 1, v28);
    if (result == 1)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    return (*(v29 + 32))(a2, v16, v28);
  }

  else
  {
    if (a1 == 2)
    {
      UUID.init(uuidString:)();
      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      result = (*(v25 + 48))(v13, 1, v24);
      if (result != 1)
      {
        return (*(v25 + 32))(a2, v13, v24);
      }

      __break(1u);
      goto LABEL_18;
    }

    if (a1 == 3)
    {
      UUID.init(uuidString:)();
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v10, 1, v19);
      if (result != 1)
      {
        return (*(v20 + 32))(a2, v10, v19);
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    UUID.init(uuidString:)();
    v26 = type metadata accessor for UUID();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v7, 1, v26);
    if (result == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    return (*(v27 + 32))(a2, v7, v26);
  }
}

uint64_t sub_100652D24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100652D80@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  if (a1)
  {
    UUID.init(uuidString:)();
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v7, v10);
    }

    __break(1u);
    goto LABEL_8;
  }

  UUID.init(uuidString:)();
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return (*(v14 + 32))(a2, v9, v13);
}

uint64_t sub_100652F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

unint64_t sub_100653084()
{
  result = qword_1016A6AE8;
  if (!qword_1016A6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AE8);
  }

  return result;
}

unint64_t sub_1006530DC()
{
  result = qword_1016A6AF0;
  if (!qword_1016A6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AF0);
  }

  return result;
}

unint64_t sub_100653134()
{
  result = qword_1016A6AF8;
  if (!qword_1016A6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AF8);
  }

  return result;
}

uint64_t sub_100653188@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AirPodsSWPairingLockAckResponse(uint64_t a1)
{
  result = qword_1016A6B58;
  if (!qword_1016A6B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100653310(uint64_t a1)
{
  sub_1003955F8();
  if (v1 <= 0x3F)
  {
    sub_100395648(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100653394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v21 = sub_1000BC4D4(&qword_1016A6B98, &qword_1013B5AD8);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AirPodsSWPairingLockAckResponse(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  sub_1000035D0(a1, v13);
  sub_1006537F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v22);
  }

  v14 = v12;
  v19 = v6;
  v24 = 0;
  sub_1000E307C();
  v15 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v14;
  *v14 = v23;
  v24 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14[1] = v23;
  type metadata accessor for UUID();
  LOBYTE(v23) = 2;
  sub_100395BEC();
  v17 = v19;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v7 + 8))(v9, v15);
  sub_10012C154(v17, v16 + *(v10 + 24));
  sub_100653844(v16, v20);
  sub_100007BAC(v22);
  return sub_1006538A8(v16);
}

uint64_t sub_1006536CC()
{
  v1 = 0x6169726553746C61;
  if (*v0 != 1)
  {
    v1 = 0x6449616E6D66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x754E6C6169726573;
  }
}

uint64_t sub_100653738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100653A1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100653760(uint64_t a1)
{
  v2 = sub_1006537F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10065379C(uint64_t a1)
{
  v2 = sub_1006537F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1006537F0()
{
  result = qword_1016A6BA0;
  if (!qword_1016A6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BA0);
  }

  return result;
}

uint64_t sub_100653844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsSWPairingLockAckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006538A8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsSWPairingLockAckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100653918()
{
  result = qword_1016A6BA8;
  if (!qword_1016A6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BA8);
  }

  return result;
}

unint64_t sub_100653970()
{
  result = qword_1016A6BB0;
  if (!qword_1016A6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BB0);
  }

  return result;
}

unint64_t sub_1006539C8()
{
  result = qword_1016A6BB8;
  if (!qword_1016A6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BB8);
  }

  return result;
}

uint64_t sub_100653A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
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

uint64_t sub_100653B3C()
{
  v2 = type metadata accessor for SharingCircleSecret(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for OwnerSharingCircle(0);
  (*(v7 + 16))(v9, v0 + *(v10 + 20), v6);
  v11 = *(v0 + *(v10 + 32));
  v22 = v9;

  v12 = sub_100653ED8(sub_100654830, v21, v11);
  if (v1)
  {

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v13 = v12;

    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v14 = sub_1000076D4(v6, qword_10177A900);
    sub_100D6A5C4(v14, v9, v5);
    sub_1000BC4D4(&qword_101698D88, &qword_101390910);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v20 = *(v3 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101391790;
    v17 = (v16 + v15);
    sub_100D6A9A4(v9, v17);
    sub_100D6A9C0(v9, &v17[v20]);
    sub_100D6AC94(v9, &v17[2 * v20]);
    sub_1006548A4(v5, &v17[3 * v20]);
    v23 = v13;
    sub_1003980F8(v16);
    sub_100654848(v5);
    v11 = v23;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

void *sub_100653ED8(void (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharingCircleSecret(0);
  v38 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v46 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v37 = v9;
    v48 = _swiftEmptyArrayStorage;
    v39 = v7;
    sub_101124114(0, v12, 0);
    v14 = v39;
    v44 = a3 + 64;
    v45 = v48;
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v35 = v14 + 16;
    v36 = (v14 + 8);
    v32 = a3 + 72;
    v33 = v12;
    v34 = v6;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v44 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v16;
      v19 = *(a3 + 36);
      v20 = v37;
      (*(v14 + 16))(v37, *(a3 + 48) + *(v14 + 72) * v15, v6);
      v40(v20, &v47);
      if (v4)
      {
        (*v36)(v20, v6);
      }

      v42 = 0;
      (*v36)(v20, v6);
      v21 = v45;
      v48 = v45;
      v23 = v45[2];
      v22 = v45[3];
      if (v23 >= v22 >> 1)
      {
        sub_101124114((v22 > 1), v23 + 1, 1);
        v21 = v48;
      }

      v21[2] = v23 + 1;
      v24 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v45 = v21;
      result = sub_100654908(v46, v21 + v24 + *(v38 + 72) * v23, type metadata accessor for SharingCircleSecret);
      v17 = 1 << *(a3 + 32);
      if (v15 >= v17)
      {
        goto LABEL_25;
      }

      v25 = *(v44 + 8 * v18);
      if ((v25 & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      if (v19 != *(a3 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v15 & 0x3F));
      if (v26)
      {
        v17 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v6 = v34;
      }

      else
      {
        v27 = v18 << 6;
        v28 = v18 + 1;
        v29 = (v32 + 8 * v18);
        v6 = v34;
        while (v28 < (v17 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1000BB408(v15, v19, 0);
            v17 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v15, v19, 0);
      }

LABEL_4:
      v4 = v42;
      v16 = v43 + 1;
      v15 = v17;
      v14 = v39;
      if (v43 + 1 == v33)
      {
        return v45;
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
  }

  return result;
}

void *sub_1006542D8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for CryptoKeys(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_101124D20(0, v10, 0);
    v11 = v21;
    v12 = *(type metadata accessor for TimeBasedKey(0) - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_101124D20((v14 > 1), v15 + 1, 1);
        v11 = v21;
      }

      v11[2] = v15 + 1;
      sub_100654908(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for CryptoKeys);
      v13 += v17;
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_1006544D8()
{
  v2 = type metadata accessor for SharingCircleSecret(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for OwnerSharingCircle(0);
  (*(v7 + 16))(v9, v0 + *(v10 + 20), v6);
  v11 = *(v0 + *(v10 + 32));
  v22 = v9;

  v12 = sub_100653ED8(sub_1006549A4, v21, v11);
  if (v1)
  {

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v20 = v12;

    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v13 = sub_1000076D4(v6, qword_10177A900);
    sub_100D6A5C4(v13, v9, v5);
    sub_1000BC4D4(&qword_101698D88, &qword_101390910);
    v14 = *(v3 + 72);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138B360;
    v17 = (v16 + v15);
    sub_100D6ACB0(v9, v17);
    sub_100D6AFF8(v9, &v17[v14]);
    sub_1006548A4(v5, &v17[2 * v14]);
    v23 = v20;
    sub_1003980F8(v16);
    sub_100654848(v5);
    v11 = v23;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_100654848(uint64_t a1)
{
  v2 = type metadata accessor for SharingCircleSecret(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006548A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCircleSecret(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100654908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100654970@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  result = sub_100D6A5C4(a1, *(v3 + 16), a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1006549BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100654A7C, v1, 0);
}

uint64_t sub_100654A7C()
{
  (*(v0[5] + 16))(v0[6], v0[3] + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_tempUniqueIdentifier, v0[4]);
  if (MKBGetDeviceLockState() == 2 || (v1 = MKBGetDeviceLockState(), v2 = 0, v1 == 1))
  {
    v2 = 1;
  }

  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100654B5C;

  return daemon.getter();
}

uint64_t sub_100654B5C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100656334(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100656334(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100654D38;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100654D38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_100655184;
  }

  else
  {
    *(v4 + 96) = a1;
    v6 = sub_100654E90;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100654E90()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_100654F24;

  return sub_100A9A4DC();
}

uint64_t sub_100654F24(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_10065503C, v2, 0);
}

uint64_t sub_10065503C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  v7 = type metadata accessor for ProximityPairingInfo(0);
  v6[3] = v7;
  v6[4] = sub_100656334(&qword_1016A6DF0, type metadata accessor for ProximityPairingInfo, &unk_1013E0CF0);
  v8 = sub_1000280DC(v6);
  (*(v5 + 32))(v8, v2, v4);
  *(v8 + v7[5]) = 0;
  *(v8 + v7[6]) = 0;
  *(v8 + v7[7]) = v3;
  *(v8 + v7[8]) = xmmword_10138C660;
  *(v8 + v7[9]) = 2;
  *(v8 + v7[10]) = v1;
  *(v8 + v7[11]) = 1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100655184()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100655204(uint64_t a1)
{
  swift_defaultActor_initialize();
  UUID.init()();
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryMetadata) = 1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryProductInfo) = 1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_pairingPolicyInformation) = -1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryUserConfiguration) = 0;
  v3 = v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPairingConfiguration;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryDetails) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessories) = a1;
  return v1;
}

uint64_t sub_1006552B4()
{
  v1 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_tempUniqueIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10065637C(v0 + OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPairingConfiguration);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MultiDetectionPairingInfoStore(uint64_t a1)
{
  result = qword_1016A6BF0;
  if (!qword_1016A6BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006553D0(uint64_t a1)
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

uint64_t sub_1006554F8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_100655550(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_100655608@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryMetadata;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_10065565C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryMetadata;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_10065570C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryProductInfo;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_100655760(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryProductInfo;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id sub_100655824@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_100655888(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_1006559A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MultiDetectionPairingInfoStore(0);

  return PairingInfoStore.accessory.getter();
}

double sub_1006559F0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100655A38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessories;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100655AF0()
{
  v0 = type metadata accessor for MultiDetectionPairingInfoStore(0);
  v1 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore, &unk_1013B5D60);

  return TypedPairingInfoStore.productIDValue.getter(v0, v1);
}

uint64_t sub_100655B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for MultiDetectionPairingInfoStore(0);
  v4 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore, &unk_1013B5D60);

  return a3(v3, v4);
}

uint64_t sub_100655C44()
{
  v0 = type metadata accessor for MultiDetectionPairingInfoStore(0);
  v1 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore, &unk_1013B5D60);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v1);
}

uint64_t sub_100655CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_1006549BC(a1);
}

double sub_100655D78()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100655DC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd30MultiDetectionPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100655F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for MultiDetectionPairingInfoStore(0);
  v11 = sub_100656334(&qword_1016A6DE8, type metadata accessor for MultiDetectionPairingInfoStore, &unk_1013B5D60);
  return a6(a1, v10, a2, v11, a3);
}

unint64_t sub_1006560D0()
{
  result = qword_1016B7E40;
  if (!qword_1016B7E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016B7E40);
  }

  return result;
}

unint64_t sub_100656120()
{
  result = qword_1016A6DC8;
  if (!qword_1016A6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DC8);
  }

  return result;
}

unint64_t sub_1006561C0()
{
  result = qword_1016A6DD0;
  if (!qword_1016A6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DD0);
  }

  return result;
}

unint64_t sub_100656218()
{
  result = qword_1016A6DD8;
  if (!qword_1016A6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DD8);
  }

  return result;
}

unint64_t sub_100656270()
{
  result = qword_1016A6DE0;
  if (!qword_1016A6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DE0);
  }

  return result;
}

uint64_t sub_1006562C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A12E0, &qword_1013A51D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100656334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10065637C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A12E0, &qword_1013A51D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006563E4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B048);
  sub_1000076D4(v0, qword_10177B048);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100656488()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v0, qword_1016A6DF8);
  sub_1000076D4(v0, qword_1016A6DF8);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1006564DC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A6E10);
  v1 = sub_1000076D4(v0, qword_1016A6E10);
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B048);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006565A4()
{
  v1[3] = v0;
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for CentralManager.Options();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10065669C, 0, 0);
}

uint64_t sub_10065669C()
{
  v1 = *(*(v0 + 24) + 32);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1006566C0, v1, 0);
}

uint64_t sub_1006566C0()
{
  v1 = v0[7];
  v2 = *(v0[8] + 112);
  if (v2)
  {

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138B360;
    static CentralManager.Options.enableFindMy.getter();
    static CentralManager.Options.receiveSystemEvents.getter();
    static CentralManager.Options.receiveIncomingObjectDiscoveryData.getter();
    v0[2] = v8;
    sub_100003E44(&unk_1016C1210, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
    sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
    sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for CentralManager();
    (*(v6 + 16))(v7, v1, v5);
    (*(v6 + 56))(v7, 0, 1, v5);
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_100656948;
    v10 = v0[4];

    return CentralManager.__allocating_init(options:)(v10);
  }
}

uint64_t sub_100656948(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100656A60, v2, 0);
}

uint64_t sub_100656A60()
{
  v1 = v0[10];
  v2 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  *(v2 + 112) = v1;

  v3 = v0[10];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100656B14()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OwnerCommandManager.Error(0);
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10067B9CC(v1, v8, type metadata accessor for OwnerCommandManager.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E776F6E6B6E752ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v13 = *v8;
      strcpy(v23, ".underlying(");
      BYTE5(v23[1]) = 0;
      HIWORD(v23[1]) = -5120;
      v22[1] = v13;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v14._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 41;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      return v23[0];
    case 2:
      v16 = *v8;
      strcpy(v23, ".response(");
      BYTE3(v23[1]) = 0;
      HIDWORD(v23[1]) = -369098752;
      if (v16 <= 2)
      {
        if (!v16)
        {
          v18 = 0xE800000000000000;
          v17 = 0x737365636375732ELL;
          goto LABEL_31;
        }

        if (v16 == 1)
        {
          v17 = 0x64696C61766E692ELL;
          v18 = 0xED00006574617453;
          goto LABEL_31;
        }

        v19 = 0x6769666E6F43;
        goto LABEL_28;
      }

      if (v16 == 3)
      {
        v19 = 0x6874676E654CLL;
LABEL_28:
        v18 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_29;
      }

      if (v16 == 4)
      {
        v18 = 0xED00006D61726150;
LABEL_29:
        v17 = 0x64696C61766E692ELL;
        goto LABEL_31;
      }

      v17 = 0x64696C61766E692ELL;
      v18 = 0xEF646E616D6D6F43;
LABEL_31:
      v20 = v18;
      String.append(_:)(*&v17);

      v21._countAndFlagsBits = 41;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      return v23[0];
    case 3:
      return result;
    case 4:
      return 0x74756F656D69742ELL;
    case 5:
      return 0x4E64726F6365722ELL;
    case 6:
      return 0xD000000000000012;
    case 7:
    case 11:
      return 0xD000000000000010;
    case 8:
      return 0x6F707075736E752ELL;
    case 9:
      return 0x64696C61766E692ELL;
    case 10:
      return 0x64696C61766E692ELL;
    case 12:
      return 0xD000000000000012;
    case 13:
      return 0x64696C61766E692ELL;
    case 14:
      return 0xD000000000000014;
    case 15:
      return 0xD000000000000013;
    case 16:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000016;
    default:
      (*(v3 + 32))(v5, v8, v2);
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v23[0] = 0xD00000000000001CLL;
      v23[1] = 0x800000010135C360;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12 = v23[0];
      (*(v3 + 8))(v5, v2);
      return v12;
  }
}

uint64_t sub_100657074(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3, void *a4)
{
  v5 = v4;
  v215 = a4;
  v222 = a2;
  v220 = a1;
  v211 = type metadata accessor for DispatchTime();
  v210 = *(v211 - 8);
  v7 = __chkstk_darwin(v211);
  v208 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v209 = &v198 - v9;
  v213 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v213);
  v214 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for UUID();
  v11 = *(v224 - 8);
  v12 = __chkstk_darwin(v224);
  v216 = &v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v219 = &v198 - v15;
  v16 = __chkstk_darwin(v14);
  v201 = &v198 - v17;
  v18 = __chkstk_darwin(v16);
  v203 = &v198 - v19;
  v20 = __chkstk_darwin(v18);
  v206 = (&v198 - v21);
  v22 = __chkstk_darwin(v20);
  v202 = &v198 - v23;
  v24 = __chkstk_darwin(v22);
  v205 = &v198 - v25;
  __chkstk_darwin(v24);
  v27 = &v198 - v26;
  v212 = type metadata accessor for AccessoryCommand(0);
  __chkstk_darwin(v212);
  v29 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = (&v198 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v5[9];
  *v33 = v34;
  (*(v31 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v30);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v33, v30);
  if (v34)
  {
    if (qword_101694838 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_121;
  }

  while (1)
  {
    __break(1u);
LABEL_121:
    swift_once();
LABEL_3:
    v204 = type metadata accessor for Logger();
    v36 = sub_1000076D4(v204, qword_1016A6E10);
    sub_10067B9CC(v220, v29, type metadata accessor for AccessoryCommand);
    v37 = a3;
    v217 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
    v218 = v11;
    v223 = v27;
    v207 = v35;
    v221 = v37;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      aBlock = v200;
      *v42 = 136446466;
      v43 = [*&v221[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = v11;
      v45 = v224;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = v44;
      v27 = v223;
      (*(v49 + 8))(v223, v45);
      v50 = sub_1000136BC(v46, v48, &aBlock);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2082;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_10067BA34(v29, type metadata accessor for AccessoryCommand);
      v54 = sub_1000136BC(v51, v53, &aBlock);
      p_weak_ivar_lyt = (&ShareStopUseCase + 56);

      *(v42 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v38, v39, "Cleaning up for peripheral %{public}s CommandId %{public}s", v42, 0x16u);
      swift_arrayDestroy();

      v37 = v221;
    }

    else
    {

      sub_10067BA34(v29, type metadata accessor for AccessoryCommand);
    }

    v55 = v219;
    v5[12] = 0;

    if (v215)
    {
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      aBlock = 13;
      v227 = 0u;
      v228 = 0u;
      LOBYTE(v229) = 11;
      sub_100A5A2B8(&aBlock);
      v56 = sub_100101B04(&aBlock);
    }

    v57 = v218;
    __chkstk_darwin(v56);
    *(&v198 - 2) = v58;
    *(&v198 - 1) = v37;
    Lock.callAsFunction<A>(_:)();
    v59 = v222;
    if (!v222)
    {
      goto LABEL_34;
    }

    v60 = *&v37[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

    v61 = [v60 p_weak_ivar_lyt[388]];
    v62 = v205;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v62;
    swift_beginAccess();
    v64 = v5[13];
    if (!*(v64 + 16))
    {
      goto LABEL_17;
    }

    v65 = sub_1000210EC(v63);
    if ((v66 & 1) == 0)
    {

LABEL_17:
      v205 = *(v57 + 8);
      (v205)(v63, v224);
      goto LABEL_25;
    }

    v200 = v60;
    v215 = v5;
    v67 = v63;
    v68 = *(*(v64 + 56) + 8 * v65);
    v69 = *(v57 + 8);

    v205 = v69;
    (v69)(v67, v224);

    v235 = v68;
    sub_1010F798C(v59);

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v204, qword_10177B048);
    v70 = v235;
    swift_bridgeObjectRetain_n();
    v71 = v37;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    v74 = os_log_type_enabled(v72, v73);
    v60 = v200;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      aBlock = v199;
      *v75 = 136315394;
      v76 = [v60 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v77 = v224;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      (v205)(v27, v77);
      v81 = sub_1000136BC(v78, v80, &aBlock);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2048;
      v82 = v70 & 0xC000000000000001;
      if ((v70 & 0xC000000000000001) != 0)
      {
        v83 = __CocoaSet.count.getter();
      }

      else
      {
        v83 = *(v70 + 16);
      }

      v5 = v215;

      *(v75 + 14) = v83;

      _os_log_impl(&_mh_execute_header, v72, v73, "Peripheral %s. commandSubscriptions count %ld", v75, 0x16u);
      sub_100007BAC(v199);

      v57 = v218;
      v27 = v223;
      v55 = v219;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v82 = v70 & 0xC000000000000001;
      v5 = v215;
    }

    v84 = [v60 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v221;
    if (!v82)
    {
      p_weak_ivar_lyt = (&ShareStopUseCase + 56);
      if (*(v70 + 16))
      {
        goto LABEL_24;
      }

LABEL_23:

      v70 = 0;
      goto LABEL_24;
    }

    p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_23;
    }

LABEL_24:
    swift_beginAccess();
    sub_1001DF6E4(v70, v202);
    swift_endAccess();
    v59 = v222;
LABEL_25:
    v85 = [v60 p_weak_ivar_lyt[388]];
    v86 = v206;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = v86;
    swift_beginAccess();
    v88 = v5[11];
    if (!*(v88 + 16))
    {
      goto LABEL_33;
    }

    v89 = sub_1000210EC(v87);
    if ((v90 & 1) == 0)
    {

LABEL_33:

      (v205)(v87, v224);
      goto LABEL_34;
    }

    v200 = v60;
    v91 = v87;
    v92 = *(*(v88 + 56) + 8 * v89);

    v215 = (v57 + 8);
    (v205)(v91, v224);

    v235 = v92;
    sub_1010F798C(v59);

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v204, qword_10177B048);
    v93 = v235;
    swift_bridgeObjectRetain_n();
    v94 = v37;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v200;
    if (v97)
    {
      v99 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      aBlock = v206;
      *v99 = 136315394;
      v100 = [v98 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v101 = v224;
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      (v205)(v27, v101);
      v105 = sub_1000136BC(v102, v104, &aBlock);

      *(v99 + 4) = v105;
      *(v99 + 12) = 2048;
      v106 = v93 & 0xC000000000000001;
      v107 = (v93 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v93 + 16);

      *(v99 + 14) = v107;

      _os_log_impl(&_mh_execute_header, v95, v96, "Peripheral %s. notifySubscriptions count %ld", v99, 0x16u);
      sub_100007BAC(v206);

      v57 = v218;
      v27 = v223;
      v55 = v219;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v106 = v93 & 0xC000000000000001;
    }

    v191 = [v98 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v221;
    if (v106)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_108;
      }
    }

    else if (!*(v93 + 16))
    {
LABEL_108:
      v192 = 0;
      goto LABEL_109;
    }

    v192 = v93;
LABEL_109:
    swift_beginAccess();
    sub_1001DF6E4(v192, v203);
    swift_endAccess();
    if (v106)
    {
      v193 = __CocoaSet.count.getter();

      p_weak_ivar_lyt = (&ShareStopUseCase + 56);
      if (!v193)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v194 = *(v93 + 16);

      p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
      if (!v194)
      {
        goto LABEL_34;
      }
    }

    v195 = [v98 p_weak_ivar_lyt[388]];
    v196 = v201;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v5[13] + 16))
    {

      sub_1000210EC(v196);
      if (v197)
      {

        (v205)(v196, v224);
      }
    }

    (v205)(v196, v224);
LABEL_34:
    v108 = *&v37[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
    v109 = [v108 p_weak_ivar_lyt[388]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v110 = v5[13];
    v111 = *(v110 + 16);
    v29 = v216;
    v219 = v108;
    if (!v111)
    {
      goto LABEL_40;
    }

    v112 = sub_1000210EC(v55);
    if ((v113 & 1) == 0)
    {

LABEL_40:
      v222 = *(v57 + 8);
      v222(v55, v224);
      goto LABEL_64;
    }

    v215 = v5;
    v11 = *(*(v110 + 56) + 8 * v112);
    v114 = *(v57 + 8);

    v222 = v114;
    v114(v55, v224);

    v115 = v37;

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      aBlock = v119;
      *v118 = 134218242;
      v206 = (v11 & 0xC000000000000001);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v120 = __CocoaSet.count.getter();
      }

      else
      {
        v120 = *(v11 + 16);
      }

      *(v118 + 4) = v120;

      *(v118 + 12) = 2080;
      v122 = [v219 identifier];
      v123 = v223;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v124 = v224;
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v126;
      v222(v123, v124);
      v128 = sub_1000136BC(v125, v127, &aBlock);

      *(v118 + 14) = v128;
      _os_log_impl(&_mh_execute_header, v116, v117, "Cancelling command subscriptions[%ld] for peripheral %s", v118, 0x16u);
      sub_100007BAC(v119);

      if (v206)
      {
LABEL_42:
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_100003E44(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        Set.Iterator.init(_cocoa:)();
        v27 = v230;
        a3 = v231;
        v121 = v232;
        v5 = v233;
        v29 = v234;
        goto LABEL_52;
      }
    }

    else
    {

      if ((v11 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }
    }

    v129 = -1 << *(v11 + 32);
    a3 = (v11 + 56);
    v121 = ~v129;
    v130 = -v129;
    v131 = v130 < 64 ? ~(-1 << v130) : -1;
    v29 = (v131 & *(v11 + 56));

    v5 = 0;
    v27 = v11;
LABEL_52:
    if (v27 < 0)
    {
      break;
    }

LABEL_53:
    v132 = v5;
    v133 = v29;
    v35 = v5;
    if (v29)
    {
LABEL_57:
      v134 = (v133 - 1) & v133;
      v135 = *(*(v27 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v133)))));

      if (v135)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v35 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        break;
      }

      if (v35 >= ((v121 + 64) >> 6))
      {
        goto LABEL_63;
      }

      v133 = *(a3 + v35);
      v132 = (v132 + 1);
      if (v133)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
  }

  while (1)
  {
    v136 = __CocoaSet.Iterator.next()();
    if (!v136)
    {
      break;
    }

    v235 = v136;
    type metadata accessor for AnyCancellable();
    swift_dynamicCast();
    v35 = v5;
    v134 = v29;
    if (!aBlock)
    {
      break;
    }

LABEL_61:
    AnyCancellable.cancel()();

    v5 = v35;
    v29 = v134;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_63:
  sub_1000128F8(v27);

  v5 = v215;
  v27 = v223;
  p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
  v37 = v221;
  v29 = v216;
  v108 = v219;
LABEL_64:
  v137 = [v108 p_weak_ivar_lyt[388]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v138 = v5[11];
  if (!*(v138 + 16))
  {
    goto LABEL_70;
  }

  v139 = sub_1000210EC(v29);
  if (v140)
  {
    v215 = v5;
    v11 = *(*(v138 + 56) + 8 * v139);

    v222(v29, v224);

    v141 = v37;

    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      aBlock = v145;
      *v144 = 134218242;
      v216 = (v11 & 0xC000000000000001);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v146 = __CocoaSet.count.getter();
      }

      else
      {
        v146 = *(v11 + 16);
      }

      *(v144 + 4) = v146;

      *(v144 + 12) = 2080;
      v149 = [v219 identifier];
      v150 = v223;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = v224;
      v151 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v152;
      v222(v150, v29);
      v154 = sub_1000136BC(v151, v153, &aBlock);

      *(v144 + 14) = v154;
      _os_log_impl(&_mh_execute_header, v142, v143, "Cancelling notify subscriptions[%ld] for peripheral %s", v144, 0x16u);
      sub_100007BAC(v145);

      if (!v216)
      {
LABEL_75:
        v155 = -1 << *(v11 + 32);
        a3 = (v11 + 56);
        v147 = ~v155;
        v156 = -v155;
        if (v156 < 64)
        {
          v157 = ~(-1 << v156);
        }

        else
        {
          v157 = -1;
        }

        v148 = (v157 & *(v11 + 56));

        v5 = 0;
        v27 = v11;
LABEL_79:
        if (v27 < 0)
        {
          while (1)
          {
            v161 = __CocoaSet.Iterator.next()();
            if (!v161)
            {
              break;
            }

            v225 = v161;
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v35 = v5;
            v29 = v148;
            if (!aBlock)
            {
              break;
            }

LABEL_88:
            AnyCancellable.cancel()();

            v5 = v35;
            v148 = v29;
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
LABEL_80:
          v158 = v5;
          v159 = v148;
          v35 = v5;
          if (!v148)
          {
            do
            {
              v35 = v158 + 1;
              if (__OFADD__(v158, 1))
              {
                goto LABEL_119;
              }

              if (v35 >= ((v147 + 64) >> 6))
              {
                goto LABEL_90;
              }

              v159 = *(a3 + v35);
              v158 = (v158 + 1);
            }

            while (!v159);
          }

          v29 = ((v159 - 1) & v159);
          v160 = *(*(v27 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v159)))));

          if (v160)
          {
            goto LABEL_88;
          }
        }

LABEL_90:
        sub_1000128F8(v27);

        v5 = v215;
        v27 = v223;
        p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
        v37 = v221;
        v108 = v219;
        goto LABEL_91;
      }
    }

    else
    {

      if ((v11 & 0xC000000000000001) == 0)
      {
        goto LABEL_75;
      }
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_100003E44(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v27 = v235;
    a3 = v236;
    v147 = v237;
    v5 = v238;
    v148 = v239;
    goto LABEL_79;
  }

LABEL_70:
  v222(v29, v224);
LABEL_91:
  v162 = [v108 p_weak_ivar_lyt[388]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF6E4(0, v27);
  swift_endAccess();
  v163 = [v108 p_weak_ivar_lyt[388]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF6E4(0, v27);
  swift_endAccess();
  v164 = v37;
  v165 = v108;
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    aBlock = v169;
    *v168 = 136446210;
    v170 = [v165 p_weak_ivar_lyt[388]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v171 = v224;
    v172 = dispatch thunk of CustomStringConvertible.description.getter();
    v174 = v173;
    v222(v223, v171);
    v175 = sub_1000136BC(v172, v174, &aBlock);

    *(v168 + 4) = v175;
    _os_log_impl(&_mh_execute_header, v166, v167, "No more notify subscriptions for peripheral %{public}s. Scheduling disconnection...", v168, 0xCu);
    sub_100007BAC(v169);
    v27 = v223;
  }

  v176 = swift_allocObject();
  swift_weakInit();
  v177 = swift_allocObject();
  *(v177 + 16) = v176;
  *(v177 + 24) = v164;
  *(&v228 + 1) = sub_100680DA0;
  v229 = v177;
  aBlock = _NSConcreteStackBlock;
  *&v227 = 1107296256;
  *(&v227 + 1) = sub_100006684;
  *&v228 = &unk_10162D5E0;
  _Block_copy(&aBlock);
  v225 = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v178 = v164;

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v179 = DispatchWorkItem.init(flags:block:)();

  v180 = (*(v220 + *(v212 + 24) + 32) >> 59) & 6 | ((*(v220 + *(v212 + 24) + 8) & 0x2000000000000000) != 0);
  if ((v180 - 1) < 4 || v180)
  {
    v181 = [v219 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v225 = v5[14];
    v5[14] = 0x8000000000000000;
    sub_100FFF1D8(v179, v27, isUniquelyReferenced_nonNull_native);
    v222(v27, v224);
    v5[14] = v225;
    swift_endAccess();
    v183 = v208;
    static DispatchTime.now()();
    v184 = v209;
    + infix(_:_:)();
    v185 = *(v210 + 8);
    v186 = v211;
    v185(v183, v211);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v185)(v184, v186);
  }

  else
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v204, qword_10177B048);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&_mh_execute_header, v188, v189, "command requiresImmediateDisconnection: Disconnecting now.", v190, 2u);
    }

    dispatch thunk of DispatchWorkItem.perform()();
  }
}

uint64_t sub_1006591FC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B048);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v13 = 136446210;
      v14 = [*&v10[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_1000136BC(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Disconnecting from %{public}s", v13, 0xCu);
      sub_100007BAC(v23);
    }

    v19 = sub_10131FAE0(v10);

    v24 = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = v10;
    *(v20 + 24) = v8;
    v21 = v10;

    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.oneshot(_:)();
  }

  return result;
}

uint64_t sub_10065956C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, &aBlock, &unk_1016A6150, &unk_10139DB30);
  v48 = a2;
  if (v54[25])
  {
    v15 = a3;
    v55 = aBlock;
    v56[0] = *v54;
    *(v56 + 9) = *&v54[9];
    sub_100101B58();
    swift_willThrowTypedImpl();
    swift_allocError();
    v16 = *(v56 + 9);
    v17 = v56[0];
    *v18 = v55;
    v18[1] = v17;
    *(v18 + 25) = v16;
    swift_errorRetain();
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B048);
    v20 = a2;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543618;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *(v23 + 12) = 2114;
      *(v23 + 14) = v20;
      *v24 = v25;
      v24[1] = v20;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Disconnection failure: %{public}@ %{public}@!", v23, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();
    }

    else
    {
    }

    a3 = v15;
  }

  else
  {
    v47 = v6;
    sub_10000B3A8(&aBlock, &unk_1016A6150, &unk_10139DB30);
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177B048);
    v28 = a2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = a3;
      v33 = v32;
      *&aBlock = v32;
      *v31 = 136446210;
      v34 = [*&v28[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v12 + 8))(v14, v11);
      v38 = sub_1000136BC(v35, v37, &aBlock);

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Disconnected from %{public}s", v31, 0xCu);
      sub_100007BAC(v33);
      a3 = v46;
    }

    v6 = v47;
  }

  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = a3;
  *(v39 + 24) = v40;
  *&v54[16] = sub_100680DB0;
  *&v54[24] = v39;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *v54 = sub_100006684;
  *&v54[8] = &unk_10162D658;
  v41 = _Block_copy(&aBlock);
  v42 = v40;

  static DispatchQoS.unspecified.getter();
  *&v55 = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v43 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);
  (*(v52 + 8))(v43, v6);
  (*(v49 + 8))(v10, v50);
}

uint64_t sub_100659C88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(a2 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF908(0, v5);
  return swift_endAccess();
}

uint64_t sub_100659D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100659E84, 0, 0);
}

uint64_t sub_100659E84()
{
  v80 = v0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B048);
  v76 = *(v3 + 16);
  v76(v1, v6, v2);
  sub_100017D5C(v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100016590(v5, v4);
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v14 = 136446723;
    sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v75 = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000136BC(v15, v17, v79);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v20 = Data.hexString.getter();
    v22 = sub_1000136BC(v20, v21, v79);

    *(v14 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v8, v75, "Connect using %{public}s and LTK %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v0[15] = v18;
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[8];
  MACAddress.data.getter();
  MACAddress.type.getter();
  MACAddress.init(addressToSanitize:type:)();
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    v26 = v0[11];
    v27 = v0[9];
    v28 = v0[4];
    sub_10000B3A8(v0[8], &qword_1016A40D0, &unk_10138BE70);
    v76(v26, v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[11];
    v33 = v0[9];
    if (v31)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v79[0] = v35;
      *v34 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v18;
      v38 = v36;
      v40 = v39;
      v37(v32, v33);
      v41 = sub_1000136BC(v38, v40, v79);

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "Invalid MAC address %{public}s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    else
    {

      v18(v32, v33);
    }

    goto LABEL_19;
  }

  v42 = v0[13];
  v43 = v0[7];
  (*(v0[10] + 32))(v42, v0[8], v0[9]);
  v44 = *(*(v43 + 56) + 24);
  v45 = swift_task_alloc();
  *(v45 + 16) = v42;
  *(v45 + 24) = v44;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();

  v46 = v0[2];
  v0[16] = v46;
  if (!v46)
  {
    v76(v0[12], v0[4], v0[9]);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[12];
    v64 = v0[13];
    v65 = v0[9];
    if (v62)
    {
      v78 = v0[13];
      v66 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v66 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v18(v63, v65);
      v70 = sub_1000136BC(v67, v69, v79);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v60, v61, "No peripheral for MAC address %{public}s", v66, 0xCu);
      sub_100007BAC(v77);

      v18(v78, v65);
    }

    else
    {

      v18(v63, v65);
      v18(v64, v65);
    }

LABEL_19:
    v71 = v0[3];
    v72 = type metadata accessor for OwnerCommandManager.Error(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);

    v73 = v0[1];

    return v73();
  }

  v47 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138543362;
    *(v50 + 4) = v47;
    *v51 = v46;
    v52 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "Peripheral to connect: %{public}@", v50, 0xCu);
    sub_10000B3A8(v51, &qword_10169BB30, &unk_10138B3C0);
  }

  v54 = v0[6];
  v53 = v0[7];
  v55 = v0[5];

  v56 = swift_task_alloc();
  v0[17] = v56;
  v56[2] = v53;
  v56[3] = v47;
  v56[4] = v55;
  v56[5] = v54;
  v57 = swift_task_alloc();
  v0[18] = v57;
  v58 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  *v57 = v0;
  v57[1] = sub_10065A7AC;
  v59 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v59, 0, 0, 0xD00000000000001BLL, 0x800000010135C5A0, sub_100680BE4, v56, v58);
}

uint64_t sub_10065A7AC()
{

  return _swift_task_switch(sub_10065A8C4, 0, 0);
}

uint64_t sub_10065A8C4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10065AA20(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v20 = a6;
  v22 = a1;
  v19 = sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - v10;
  v21 = sub_1000BC4D4(&qword_1016A7268, &unk_1013B6060);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v19 - v12;
  v24 = sub_100664888(a3, a4, a5);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  type metadata accessor for OwnerCommandManager.Error(0);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
  Publisher.mapError<A>(_:)();

  v14 = v19;
  (*(v9 + 16))(v11, v20, v19);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  (*(v9 + 32))(v16 + v15, v11, v14);
  sub_1000041A4(&qword_1016A7270, &qword_1016A7268, &unk_1013B6060, &protocol conformance descriptor for Publishers.MapError<A, B>);

  v17 = v21;
  Publisher.oneshot(_:)();

  return (*(v23 + 8))(v13, v17);
}

uint64_t sub_10065AD5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10065AE54, 0, 0);
}

uint64_t sub_10065AE54()
{
  v35 = v0;
  if (!*(v0[3] + 184))
  {
    goto LABEL_4;
  }

  v1 = v0[7];
  v2 = v0[2];

  sub_100AA33AC(v2, v1);

  v3 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    sub_10000B3A8(v0[7], &unk_1016A9A20, &qword_10138B280);
LABEL_4:
    v4 = 0;
    goto LABEL_12;
  }

  v5 = sub_100D60CD0();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = v0[7];

  sub_10067BA34(v11, type metadata accessor for OwnedBeaconRecord);
LABEL_12:
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];
  v15 = v0[2];
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B048);
  (*(v12 + 16))(v13, v15, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[4];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v23 = 141558531;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v20 + 8))(v21, v22);
    v27 = sub_1000136BC(v24, v26, &v34);

    *(v23 + 14) = v27;
    *(v23 + 22) = 1024;
    *(v23 + 24) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Read TX Power for %{private,mask.hash}s. isHELE: %{BOOL}d", v23, 0x1Cu);
    sub_100007BAC(v33);

    if ((v4 & 1) == 0)
    {
LABEL_16:
      v28 = swift_task_alloc();
      v0[9] = v28;
      *v28 = v0;
      v28[1] = sub_10065B3DC;
      v29 = v0[2];

      return sub_10067C7A0(v29);
    }
  }

  else
  {

    (*(v20 + 8))(v21, v22);
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v31 = swift_task_alloc();
  v0[8] = v31;
  *v31 = v0;
  v31[1] = sub_10065B294;
  v32 = v0[2];

  return sub_10065B524(v32);
}

uint64_t sub_10065B294(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10065B3DC(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10065B524(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for AccessoryCommand(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10065B670, 0, 0);
}

uint64_t sub_10065B670()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  (*(v5 + 56))(v2, 1, 1, v4);
  (*(v5 + 16))(v3, v6, v4);
  sub_1000D2A70(v2, v1, &qword_1016980D0, &unk_10138F3B0);
  v7 = *(v5 + 48);
  v8 = v7(v1, 1, v4);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  if (v8 == 1)
  {
    v12 = v0[5];
    UUID.init()();
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if (v7(v10, 1, v12) != 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v13 = v0[5];
    v14 = v0[6];
    sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
    (*(v14 + 32))(v11, v10, v13);
  }

  v15 = v0[13];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[5];
  v19 = *(v0[6] + 32);
  v24 = *(v0 + 3);
  v19(v15, v0[7], v18);
  v19(v15 + v16[5], v17, v18);
  v20 = v15 + v16[6];
  *v20 = xmmword_1013B5E80;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = xmmword_10139BF70;
  *(v15 + v16[7]) = 1;
  *(v15 + v16[8]) = 1;
  v21 = swift_task_alloc();
  v0[14] = v21;
  v21[1] = vextq_s8(v24, v24, 8uLL);
  v21[2].i64[0] = v15;
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_10065B938;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x800000010135C580, sub_100680A8C, v21, &type metadata for Int);
}

uint64_t sub_10065B938()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10065BCBC;
  }

  else
  {

    v2 = sub_10065BA54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10065BA54()
{
  v18 = v0;
  v1 = v0[2];
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B048);
  sub_10067B9CC(v2, v3, type metadata accessor for AccessoryCommand);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 134218242;
    *(v9 + 4) = v1;
    *(v9 + 12) = 2080;
    v11 = sub_1010C00BC();
    v13 = v12;
    sub_10067BA34(v8, type metadata accessor for AccessoryCommand);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Read TX Power HELE: %ld. Command %s", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_10067BA34(v8, type metadata accessor for AccessoryCommand);
  }

  sub_10067BA34(v0[13], type metadata accessor for AccessoryCommand);

  v15 = v0[1];

  return v15(v1);
}

uint64_t sub_10065BCBC()
{
  v1 = *(v0 + 104);

  sub_10067BA34(v1, type metadata accessor for AccessoryCommand);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10065BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = type metadata accessor for AccessoryCommand(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1000BC4D4(&qword_1016998F0, &qword_1013B60E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for UUID();
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a3);
  v20 = sub_1000BC4D4(&qword_1016C3210, &qword_101392040);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15, a1, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  swift_beginAccess();
  sub_1001DFAC8(v15, v18);
  swift_endAccess();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_10067B9CC(v26, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryCommand);
  v23 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a2;
  sub_10067B810(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AccessoryCommand);

  sub_100A838D4(0, 0, v12, &unk_1013B6230, v24);
}

uint64_t sub_10065C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_10065D4FC(a5);
}

uint64_t sub_10065C190(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for MACAddress();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10065C2A4, 0, 0);
}

uint64_t sub_10065C2A4(uint64_t a1)
{
  v65 = v1;
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[6];
  MACAddress.data.getter();
  MACAddress.type.getter();
  MACAddress.init(addressToSanitize:type:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(v1[6], &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v6 = v1[8];
    v5 = v1[9];
    v7 = v1[7];
    v8 = v1[4];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B048);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[8];
    v14 = v1[9];
    v15 = v1[7];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v64[0] = v17;
      *v16 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v13 + 8))(v14, v15);
      v21 = sub_1000136BC(v18, v20, v64);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid MAC address %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }

LABEL_20:
    v58 = v1[3];
    v59 = type metadata accessor for OwnerCommandManager.Error(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);

    v60 = v1[1];

    return v60();
  }

  v22 = v1[11];
  v23 = v1[5];
  (*(v1[8] + 32))(v22, v1[6], v1[7]);
  v24 = *(*(v23 + 56) + 24);
  v25 = swift_task_alloc();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();

  v26 = v1[2];
  v1[12] = v26;
  if (!v26)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v39 = v1[10];
    v40 = v1[7];
    v41 = v1[8];
    v42 = v1[4];
    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_10177B048);
    (*(v41 + 16))(v39, v42, v40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v1[10];
    v48 = v1[11];
    v50 = v1[7];
    v49 = v1[8];
    if (v46)
    {
      v63 = v1[11];
      v51 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64[0] = v62;
      *v51 = 136446210;
      sub_100003E44(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v55 = *(v49 + 8);
      v55(v47, v50);
      v56 = sub_1000136BC(v52, v54, v64);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "No peripheral for MAC address %{public}s", v51, 0xCu);
      sub_100007BAC(v62);

      v55(v63, v50);
    }

    else
    {

      v57 = *(v49 + 8);
      v57(v47, v50);
      v57(v48, v50);
    }

    goto LABEL_20;
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177B048);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v28;
    *v32 = v26;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Peripheral to disconnect: %{public}@", v31, 0xCu);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);
  }

  v34 = v1[5];

  v35 = swift_task_alloc();
  v1[13] = v35;
  *(v35 + 16) = v34;
  *(v35 + 24) = v28;
  v36 = swift_task_alloc();
  v1[14] = v36;
  v37 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  *v36 = v1;
  v36[1] = sub_10065CA48;
  v38 = v1[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v38, 0, 0, 0xD000000000000011, 0x800000010135C540, sub_100680A50, v35, v37);
}

uint64_t sub_10065CA48()
{

  return _swift_task_switch(sub_10065CB60, 0, 0);
}

uint64_t sub_10065CB60()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10065CC9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = a4;
  v18 = a1;
  v15 = sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v15 - v6;
  v17 = sub_1000BC4D4(&qword_1016A7268, &unk_1013B6060);
  v19 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v15 - v8;
  v20 = sub_10131FAE0(a3);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  type metadata accessor for OwnerCommandManager.Error(0);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
  Publisher.mapError<A>(_:)();

  v10 = v15;
  (*(v5 + 16))(v7, v16, v15);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v18;
  (*(v5 + 32))(v12 + v11, v7, v10);
  sub_1000041A4(&qword_1016A7270, &qword_1016A7268, &unk_1013B6060, &protocol conformance descriptor for Publishers.MapError<A, B>);

  v13 = v17;
  Publisher.oneshot(_:)();

  return (*(v19 + 8))(v9, v13);
}

void sub_10065CFD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v36 = a4;
  v37 = a5;
  v39 = a3;
  v38 = type metadata accessor for OwnerCommandManager.Error(0);
  v6 = *(v38 - 8);
  v7 = __chkstk_darwin(v38);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_1000BC4D4(&qword_1016A7278, &qword_1013B6070);
  __chkstk_darwin(v15);
  v17 = (&v35 - v16);
  Transaction.capture()();
  sub_1000D2A70(a1, v17, &qword_1016A7278, &qword_1013B6070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10067B810(v17, v11, type metadata accessor for OwnerCommandManager.Error);
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177B048);
    sub_10067B9CC(v11, v9, type metadata accessor for OwnerCommandManager.Error);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136446210;
      v23 = sub_100656B14();
      v25 = v24;
      sub_10067BA34(v9, type metadata accessor for OwnerCommandManager.Error);
      v26 = sub_1000136BC(v23, v25, &v40);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, v37, v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      sub_10067BA34(v9, type metadata accessor for OwnerCommandManager.Error);
    }

    sub_10067B9CC(v11, v14, type metadata accessor for OwnerCommandManager.Error);
    (*(v6 + 56))(v14, 0, 1, v38);
    sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
    CheckedContinuation.resume(returning:)();
    sub_10067BA34(v11, type metadata accessor for OwnerCommandManager.Error);
  }

  else
  {
    v27 = *v17;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177B048);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, v36, v32, 0xCu);
      sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);
    }

    (*(v6 + 56))(v14, 1, 1, v38);
    sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10065D4FC(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = type metadata accessor for BinaryDecoder();
  v2[62] = v3;
  v2[63] = *(v3 - 8);
  v2[64] = swift_task_alloc();
  v4 = type metadata accessor for BinaryEncoder();
  v2[65] = v4;
  v2[66] = *(v4 - 8);
  v2[67] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[68] = v5;
  v2[69] = *(v5 - 8);
  v2[70] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[71] = v6;
  v2[72] = *(v6 - 8);
  v2[73] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[74] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[75] = swift_task_alloc();
  v7 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[76] = v7;
  v2[77] = *(v7 - 8);
  v2[78] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[79] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[80] = swift_task_alloc();
  v8 = type metadata accessor for CentralManager.State();
  v2[81] = v8;
  v2[82] = *(v8 - 8);
  v2[83] = swift_task_alloc();
  v2[84] = type metadata accessor for AccessoryCommand(0);
  v2[85] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[86] = v9;
  v2[87] = *(v9 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();

  return _swift_task_switch(sub_10065D954, 0, 0);
}

uint64_t sub_10065D954()
{
  v34 = v0;
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[60];
  v6 = *(v0[84] + 20);
  v7 = *(v3 + 16);
  v0[95] = v7;
  v0[96] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v4);
  v7(v2, v5, v4);
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v8 = v0[94];
  v9 = v0[92];
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[60];
  v13 = type metadata accessor for Logger();
  v0[97] = sub_1000076D4(v13, qword_10177B048);
  sub_10067B9CC(v12, v11, type metadata accessor for AccessoryCommand);
  v7(v9, v8, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[92];
  v18 = v0[87];
  v19 = v0[86];
  v20 = v0[85];
  if (v16)
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v21 = 136446723;
    v22 = sub_1010C00BC();
    v24 = v23;
    sub_10067BA34(v20, type metadata accessor for AccessoryCommand);
    v25 = sub_1000136BC(v22, v24, &v33);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v18 + 8);
    v29(v17, v19);
    v30 = sub_1000136BC(v26, v28, &v33);

    *(v21 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v14, v15, "[FindMyBluetooth] Execute command %{public}s for beacon %{private,mask.hash}s", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v18 + 8);
    v29(v17, v19);
    sub_10067BA34(v20, type metadata accessor for AccessoryCommand);
  }

  v0[98] = v29;
  v31 = swift_task_alloc();
  v0[99] = v31;
  *v31 = v0;
  v31[1] = sub_10065DCE4;

  return sub_1006565A4();
}

uint64_t sub_10065DCE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 800) = a1;
  *(v3 + 808) = v1;

  if (v1)
  {
    v4 = sub_100660B70;
  }

  else
  {
    v4 = sub_10065DDFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10065DDFC()
{
  (*(v0[82] + 104))(v0[83], enum case for CentralManager.State.poweredOn(_:), v0[81]);
  v1 = swift_task_alloc();
  v0[102] = v1;
  v2 = type metadata accessor for CentralManager();
  v3 = sub_100003E44(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_10065DF10;
  v4 = v0[83];

  return CentralManagerProtocol.await(state:)(v4, v2, v3);
}

uint64_t sub_10065DF10()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  (*(v2[82] + 8))(v2[83], v2[81]);
  if (v0)
  {
    v3 = sub_100660D14;
  }

  else
  {
    v3 = sub_10065E078;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10065E078()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[87];
  v4 = v0[86];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[104] = v6;
  *(v6 + 16) = xmmword_101385D80;
  v1(v6 + v5, v2, v4);
  v9 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:));
  v7 = swift_task_alloc();
  v0[105] = v7;
  *v7 = v0;
  v7[1] = sub_10065E19C;

  return v9(v6);
}

uint64_t sub_10065E19C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 848) = a1;
  *(v3 + 856) = v1;

  if (v1)
  {
    v4 = sub_100660EC4;
  }

  else
  {
    v4 = sub_10065E2DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10065E2DC()
{
  v1 = v0[106];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15 = v0[98];
    v16 = v0[95];
    v17 = v0[94];
    v21 = v0[93];
    v18 = v0[86];

    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    swift_allocError();
    v16(v19, v17, v18);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15(v21, v18);
    v15(v17, v18);

    v20 = v0[1];

    return v20();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[106] + 32);
  }

  v0[108] = v3;
  v4 = v0[80];
  v22 = v0[79];
  v5 = v0[75];
  v6 = v0[74];

  sub_1010BF2CC(v4);
  v7 = type metadata accessor for ConnectUseCase();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[56] = v8;
  sub_100003E44(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = type metadata accessor for LongTermKey();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v11 = type metadata accessor for Peripheral.Options();
  (*(*(v11 - 8) + 56))(v22, 0, 1, v11);
  v23 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v12 = swift_task_alloc();
  v0[109] = v12;
  *v12 = v0;
  v12[1] = sub_10065E860;
  v13 = v0[80];
  v14 = v0[79];

  return v23(v13, v14);
}

uint64_t sub_10065E860()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 640);
  sub_10000B3A8(*(v2 + 632), &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v4 = sub_100661074;
  }

  else
  {
    v4 = sub_10065E9D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10065E9D0()
{
  v26 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 864);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315138;
    *(v0 + 472) = v3;
    type metadata accessor for Peripheral();
    sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v25);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connected to peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  sub_1010BF57C((v0 + 128));
  v9 = *(v0 + 136);
  *(v0 + 888) = *(v0 + 128);
  *(v0 + 896) = v9;
  v10 = *(v0 + 160);
  *(v0 + 904) = v10;
  if ((~(v9 & v10) & 0x3000000000000000) != 0)
  {
    *(v0 + 416) = *(v0 + 144);
    type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v24 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
    v22 = swift_task_alloc();
    *(v0 + 920) = v22;
    *v22 = v0;
    v22[1] = sub_10065EE1C;
    v23 = *(v0 + 584);

    return v24(v23);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 752);
    v15 = *(v0 + 744);
    v16 = *(v0 + 696);
    v17 = *(v0 + 688);
    if (v13)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No command to execute. Calling completion.", v18, 2u);
    }

    v19 = *(v16 + 8);
    v19(v15, v17);
    v19(v14, v17);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10065EE1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[116] = a1;
  v4[117] = v1;

  (*(v3[72] + 8))(v3[73], v3[71]);
  if (v1)
  {
    v5 = sub_10066122C;
  }

  else
  {
    v5 = sub_10065EF90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10065EF90()
{
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v1 = swift_task_alloc();
  *(v0 + 944) = v1;
  *v1 = v0;
  v1[1] = sub_10065F064;
  v2 = *(v0 + 560);

  return v4(v2);
}

uint64_t sub_10065F064(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[119] = a1;
  v4[120] = v1;

  (*(v3[69] + 8))(v3[70], v3[68]);

  if (v1)
  {
    v5 = sub_100661400;
  }

  else
  {
    v5 = sub_10065F1F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10065F1F4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Config characteristic.", v4, 2u);
  }

  v5 = *(v1 + 960);
  v6 = *(v1 + 912);
  v7 = *(v1 + 904);
  v8 = *(v1 + 896);
  v9 = *(v1 + 888);

  BinaryEncoder.init()();
  *(v1 + 176) = v9;
  *(v1 + 184) = v8;
  *(v1 + 192) = *(v1 + 416);
  *(v1 + 208) = v7;
  *(v1 + 216) = v6;
  *(v1 + 968) = sub_10067C1D4();
  *(v1 + 976) = BinaryEncoder.encode<A>(_:)();
  *(v1 + 984) = v10;
  if (v5)
  {
    v11 = *(v1 + 752);
    v12 = *(v1 + 744);
    v13 = *(v1 + 696);
    v14 = *(v1 + 688);
    v15 = *(v1 + 536);
    v16 = *(v1 + 528);
    v17 = *(v1 + 520);

    (*(v16 + 8))(v15, v17);
    v18 = *(v13 + 8);
    v18(v12, v14);
    v18(v11, v14);
    sub_10000B3A8(v1 + 128, &qword_1016A72E8, &unk_1013B60D0);

    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    v22 = (&async function pointer to dispatch thunk of Characteristic.mtu.getter + async function pointer to dispatch thunk of Characteristic.mtu.getter);
    v21 = swift_task_alloc();
    *(v1 + 992) = v21;
    *v21 = v1;
    v21[1] = sub_10065F548;

    return v22();
  }
}

uint64_t sub_10065F548(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1000) = v1;

  if (v1)
  {
    v5 = sub_1006615D4;
  }

  else
  {
    *(v4 + 1008) = a1;
    v5 = sub_10065F670;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10065F670()
{
  v1 = fragment(data:mtu:)();
  v0[127] = v1;
  v2 = v0[119];
  v3 = swift_allocObject();
  v0[128] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[129] = v4;
  *v4 = v0;
  v4[1] = sub_10065F790;

  return withTimeout<A>(_:block:)(v0 + 54, 0x40AAD21B3B700000, 3, &unk_1013B6208, v3, &type metadata for Data);
}

uint64_t sub_10065F790()
{
  *(*v1 + 1040) = v0;

  if (v0)
  {

    v2 = sub_1006617E8;
  }

  else
  {
    v2 = sub_10065F8D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10065F8D4()
{
  v146 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 864);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v145[0] = v7;
    *v6 = 136315138;
    *(v0 + 456) = v5;
    type metadata accessor for Peripheral();
    sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v145);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Command successfully sent to: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0 + 1040);
  BinaryDecoder.init()();
  v12 = sub_10067C180();
  BinaryDecoder.decode<A>(_:from:)();
  if (v11)
  {
    v13 = *(v0 + 984);
    v14 = v1;
    v15 = *(v0 + 976);
    v139 = *(v0 + 744);
    v141 = *(v0 + 752);
    v16 = v2;
    v17 = *(v0 + 696);
    v18 = *(v0 + 688);
    v137 = *(v0 + 536);
    v19 = *(v0 + 528);
    v135 = *(v0 + 520);
    v20 = *(v0 + 504);
    v128 = *(v0 + 512);
    v21 = *(v0 + 496);
    sub_100016590(v16, v14);
    sub_100016590(v15, v13);
    sub_10000B3A8(v0 + 128, &qword_1016A72E8, &unk_1013B60D0);

    (*(v20 + 8))(v128, v21);
    (*(v19 + 8))(v137, v135);
    v22 = *(v17 + 8);
    v22(v139, v18);
    v22(v141, v18);
LABEL_13:

    v94 = *(v0 + 8);

    return v94();
  }

  v23 = *(v0 + 968);
  v142 = v1;
  v131 = *(v0 + 480);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  v27 = *(v0 + 240);
  v26 = *(v0 + 248);
  v29 = *(v0 + 256);
  v28 = *(v0 + 264);
  *(v0 + 296) = &type metadata for AccessoryConfigCommand;
  *(v0 + 304) = v12;
  *(v0 + 312) = v23;
  v30 = swift_allocObject();
  *(v0 + 272) = v30;
  v30[2] = v24;
  v30[3] = v25;
  v30[4] = v27;
  v30[5] = v26;
  v30[6] = v29;
  v30[7] = v28;
  v134 = v24;
  v136 = v25;
  v138 = v27;
  v140 = v26;
  v31 = v27;
  v32 = v28;
  sub_10067F4FC(v24, v25, v31, v26, v29, v28, sub_100017D5C);
  sub_1006739AC(v0 + 272, v131, (v0 + 16));
  sub_100007BAC((v0 + 272));
  sub_1000D2A70(v0 + 16, v0 + 72, &qword_1016A72E0, &qword_1013B60C8);
  if (*(v0 + 121))
  {
    v126 = v28;
    v129 = v29;
    v132 = v2;
    v33 = *(v0 + 760);
    v34 = *(v0 + 752);
    v35 = *(v0 + 744);
    v36 = *(v0 + 712);
    v37 = *(v0 + 704);
    v38 = *(v0 + 688);

    v39 = *(v0 + 88);
    *(v0 + 320) = *(v0 + 72);
    *(v0 + 336) = v39;
    *(v0 + 345) = *(v0 + 97);
    v125 = v0 + 320;
    sub_100101AA8(v0 + 320, v0 + 368);
    v33(v36, v34, v38);
    v33(v37, v35, v38);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 712);
    v44 = *(v0 + 704);
    v45 = *(v0 + 696);
    v46 = *(v0 + 688);
    if (v42)
    {
      v47 = swift_slowAlloc();
      v145[0] = swift_slowAlloc();
      *v47 = 136446979;
      v120 = v41;
      v48 = sub_1013181BC();
      v50 = v49;
      sub_100101B04(v0 + 368);
      v51 = sub_1000136BC(v48, v50, v145);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2160;
      *(v47 + 14) = 1752392040;
      *(v47 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v40;
      v54 = v53;
      v55 = *(v45 + 8);
      v55(v43, v46);
      v56 = sub_1000136BC(v52, v54, v145);

      *(v47 + 24) = v56;
      *(v47 + 32) = 2082;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v123 = v55;
      v55(v44, v46);
      v60 = sub_1000136BC(v57, v59, v145);

      *(v47 + 34) = v60;
      _os_log_impl(&_mh_execute_header, log, v120, "Command failed with %{public}s.\nBeacon %{private,mask.hash}s Command %{public}s", v47, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v85 = *(v45 + 8);
      v85(v44, v46);
      v123 = v85;
      v85(v43, v46);
      sub_100101B04(v0 + 368);
    }

    v86 = *(v0 + 984);
    v87 = *(v0 + 976);
    logb = *(v0 + 744);
    v122 = *(v0 + 752);
    v115 = *(v0 + 536);
    v116 = *(v0 + 688);
    v88 = *(v0 + 528);
    v89 = *(v0 + 504);
    v113 = *(v0 + 512);
    v114 = *(v0 + 520);
    v112 = *(v0 + 496);
    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    swift_allocError();
    v91 = v90;
    sub_100101B58();
    v92 = swift_allocError();
    sub_100101AA8(v125, v93);
    *v91 = v92;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v132, v142);
    sub_100016590(v87, v86);
    sub_10000B3A8(v0 + 128, &qword_1016A72E8, &unk_1013B60D0);

    sub_10067F4FC(v134, v136, v138, v140, v129, v126, sub_100016590);

    sub_100101B04(v125);
    sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
    (*(v89 + 8))(v113, v112);
    (*(v88 + 8))(v115, v114);
    v123(logb, v116);
    v123(v122, v116);
    goto LABEL_13;
  }

  v61 = *(v0 + 120);
  sub_10067F5FC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  if (v61 == 1)
  {
    v130 = v29;
    v133 = v2;
    v62 = *(v0 + 760);
    v63 = *(v0 + 744);
    v64 = *(v0 + 720);
    v65 = *(v0 + 688);
    v62(*(v0 + 728), *(v0 + 752), v65);
    v62(v64, v63, v65);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 728);
    v70 = *(v0 + 720);
    v71 = *(v0 + 696);
    v72 = *(v0 + 688);
    v143 = *(v0 + 512);
    v73 = *(v0 + 496);
    v74 = (*(v0 + 504) + 8);
    if (v68)
    {
      v121 = *(v0 + 720);
      v75 = swift_slowAlloc();
      v145[0] = swift_slowAlloc();
      *v75 = 141558531;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v124 = v73;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v32;
      v78 = v77;
      loga = v67;
      v79 = *(v71 + 8);
      v79(v69, v72);
      v80 = sub_1000136BC(v76, v78, v145);

      *(v75 + 14) = v80;
      *(v75 + 22) = 2082;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v79(v121, v72);
      v84 = sub_1000136BC(v81, v83, v145);

      *(v75 + 24) = v84;
      _os_log_impl(&_mh_execute_header, v66, loga, "Command completed successfully! Beacon %{private,mask.hash}s Command %{public}s.", v75, 0x20u);
      swift_arrayDestroy();

      sub_100016590(v133, v142);

      sub_10067F4FC(v134, v136, v138, v140, v130, v127, sub_100016590);
      sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
      (*v74)(v143, v124);
    }

    else
    {
      sub_100016590(v133, v142);

      sub_10067F4FC(v134, v136, v138, v140, v130, v32, sub_100016590);
      v79 = *(v71 + 8);
      v79(v70, v72);
      v79(v69, v72);
      sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
      (*v74)(v143, v73);
    }

    *(v0 + 1048) = v79;

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = *(v0 + 864);
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v145[0] = v107;
      *v106 = 136315138;
      *(v0 + 464) = v105;
      type metadata accessor for Peripheral();
      sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = sub_1000136BC(v108, v109, v145);

      *(v106 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v103, v104, "Canceling connection to %s", v106, 0xCu);
      sub_100007BAC(v107);
    }

    v144 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v111 = swift_task_alloc();
    *(v0 + 1056) = v111;
    *v111 = v0;
    v111[1] = sub_10066084C;

    return v144();
  }

  else
  {
    v96 = *(v0 + 504);
    v97 = *(v0 + 512);
    v98 = *(v0 + 496);
    sub_100016590(v2, v142);
    sub_10067F4FC(v134, v25, v138, v140, v29, v32, sub_100016590);
    sub_10000B3A8(v0 + 16, &qword_1016A72E0, &qword_1013B60C8);
    (*(v96 + 8))(v97, v98);
    v99 = *(v0 + 1016);
    v100 = *(v0 + 952);
    v101 = swift_allocObject();
    *(v0 + 1024) = v101;
    *(v101 + 16) = v100;
    *(v101 + 24) = v99;

    v102 = swift_task_alloc();
    *(v0 + 1032) = v102;
    *v102 = v0;
    v102[1] = sub_10065F790;

    return withTimeout<A>(_:block:)(v0 + 432, 0x40AAD21B3B700000, 3, &unk_1013B6208, v101, &type metadata for Data);
  }
}

uint64_t sub_10066084C()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_1006619FC;
  }

  else
  {
    v2 = sub_100660960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100660960()
{
  v1 = v0[131];
  v8 = v0[93];
  v9 = v0[94];
  v2 = v0[86];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v4 + 8))(v3, v5);
  v1(v8, v2);
  v1(v9, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100660B70()
{
  v1 = v0[98];
  v2 = v0[94];
  v3 = v0[86];
  v1(v0[93], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100660D14()
{
  v1 = v0[98];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[86];

  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100660EC4()
{
  v1 = v0[98];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[86];

  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100661074()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10066122C()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100661400()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006615D4()
{
  v10 = v0[94];
  v1 = v0[93];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v7(v1, v3);
  v7(v10, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006617E8()
{
  v10 = v0[94];
  v1 = v0[93];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v7(v1, v3);
  v7(v10, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006619FC()
{
  v1 = v0[131];
  v8 = v0[93];
  v9 = v0[94];
  v2 = v0[86];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  sub_100016590(v0[122], v0[123]);
  sub_10000B3A8((v0 + 16), &qword_1016A72E8, &unk_1013B60D0);

  (*(v4 + 8))(v3, v5);
  v1(v8, v2);
  v1(v9, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100661C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v9 = (&async function pointer to dispatch thunk of Characteristic.write(data:) + async function pointer to dispatch thunk of Characteristic.write(data:));
  v7 = swift_task_alloc();
  v3[6] = v7;
  *v7 = v3;
  v7[1] = sub_1000EFFFC;

  return v9(v6, a3);
}

uint64_t sub_100661D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryCommand(0);
  v4[20] = v7;
  v8 = *(v7 - 8);
  v4[21] = v8;
  v4[22] = *(v8 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_100661F7C, 0, 0);
}

uint64_t sub_100661F7C()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[9];
  v5 = *(v0[20] + 20);
  v6 = *(v3 + 16);
  v3 += 16;
  v0[30] = v6;
  v0[31] = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v7 = (*(v3 + 64) + 32) & ~*(v3 + 64);
  v8 = swift_allocObject();
  v0[32] = v8;
  *(v8 + 16) = xmmword_101385D80;
  v6(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_1006620C4;

  return sub_10131BD2C(v8);
}

uint64_t sub_1006620C4(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_1006621E4, 0, 0);
}

uint64_t sub_1006621E4()
{
  v73 = v0;
  v1 = v0[34];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:

    if (qword_101694828 == -1)
    {
LABEL_14:
      v36 = v0[30];
      v37 = v0[29];
      v38 = v0[27];
      v39 = v0[25];
      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177B048);
      v36(v38, v37, v39);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v41, v42);
      v45 = v0[26];
      v44 = v0[27];
      v46 = v0[25];
      if (v43)
      {
        v47 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = v71;
        *v47 = 141558275;
        *(v47 + 4) = 1752392040;
        *(v47 + 12) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        aBlock = v42;
        v50 = v49;
        v51 = *(v45 + 8);
        v51(v44, v46);
        v52 = sub_1000136BC(v48, v50, &v72);

        *(v47 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v41, aBlock, "No peripheral for beacon %{private,mask.hash}s", v47, 0x16u);
        sub_100007BAC(v71);
      }

      else
      {

        v51 = *(v45 + 8);
        v51(v44, v46);
      }

      v53 = v0[29];
      v54 = v0[25];
      v55 = v0[13];
      v56 = v0[11];
      v57 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
      v56(v55);
      sub_10000B3A8(v55, &qword_1016A7258, &qword_1013B6050);
      v51(v53, v54);
      goto LABEL_18;
    }

LABEL_23:
    swift_once();
    goto LABEL_14;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v70 = *(v0[34] + 32);
LABEL_6:

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[9];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B048);
  sub_10067B9CC(v7, v6, type metadata accessor for AccessoryCommand);
  v2(v3, v4, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v16 = 136446723;
    v17 = sub_1010C00BC();
    v19 = v18;
    sub_10067BA34(v15, type metadata accessor for AccessoryCommand);
    v20 = sub_1000136BC(v17, v19, &v72);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v68 = *(v13 + 8);
    v68(v12, v14);
    v24 = sub_1000136BC(v21, v23, &v72);

    *(v16 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "Executing %{public}s for beacon %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v68 = *(v13 + 8);
    v68(v12, v14);
    sub_10067BA34(v15, type metadata accessor for AccessoryCommand);
  }

  v66 = v0[25];
  v67 = v0[29];
  v25 = v0[22];
  v26 = v0[23];
  v27 = v0[21];
  v64 = v0[18];
  v65 = v0[17];
  v60 = v0[19];
  v61 = v0[16];
  v62 = v0[14];
  v29 = v0[11];
  v28 = v0[12];
  v30 = v0[10];
  v63 = v0[15];
  sub_10067B9CC(v0[9], v26, type metadata accessor for AccessoryCommand);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v70;
  sub_10067B810(v26, v32 + v31, type metadata accessor for AccessoryCommand);
  v33 = (v32 + ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v29;
  v33[1] = v28;
  v0[6] = sub_10067B730;
  v0[7] = v32;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10162CC80;
  v34 = _Block_copy(v0 + 2);

  v35 = v70;

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v63 + 8))(v61, v62);
  (*(v64 + 8))(v60, v65);
  v68(v67, v66);

LABEL_18:

  v58 = v0[1];

  return v58();
}

uint64_t sub_100662A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_100662C58, 0, 0);
}

uint64_t sub_100662C58()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 80);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v4 = *(v2 + 80);
  *(v0 + 256) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 216) = v6;
  *(v6 + 16) = xmmword_101385D80;
  v7 = *(v2 + 16);
  *(v0 + 224) = v7;
  *(v0 + 232) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v3, v1);
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = sub_100662D7C;

  return sub_10131BD2C(v6);
}

uint64_t sub_100662D7C(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_100662E9C, 0, 0);
}

uint64_t sub_100662E9C()
{
  v52 = v0;
  v1 = v0[31];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    if (qword_101694828 == -1)
    {
LABEL_9:
      v16 = v0[28];
      v17 = v0[24];
      v18 = v0[21];
      v19 = v0[10];
      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177B048);
      v16(v17, v19, v18);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[24];
      v25 = v0[21];
      v26 = v0[22];
      if (v23)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v51 = v28;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v26 + 8))(v24, v25);
        v32 = sub_1000136BC(v29, v31, &v51);

        *(v27 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v21, v22, "No peripheral for beacon %{private,mask.hash}s", v27, 0x16u);
        sub_100007BAC(v28);
      }

      else
      {

        (*(v26 + 8))(v24, v25);
      }

      v33 = v0[14];
      v34 = v0[11];
      v35 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
      v34(v33);
      sub_10000B3A8(v33, &qword_1016A7258, &qword_1013B6050);
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_18;
  }

  v45 = *(v0[31] + 32);
LABEL_6:
  v39 = v0[28];
  v2 = *(v0 + 256);
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[22];
  v40 = v3;
  v41 = v0[23];
  v6 = v0[21];
  v44 = v0[20];
  v49 = v0[19];
  v50 = v0[18];
  v46 = v0[17];
  v48 = v0[16];
  v47 = v0[15];
  v38 = v0[13];
  v7 = v0[10];
  v42 = v0[11];
  v43 = v0[12];
  v8 = v0[9];

  v9 = (v2 + 32) & ~v2;
  v39(v4, v7, v6);
  v39(v3, v38, v6);
  v10 = (v41 + v2 + v9) & ~v2;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v45;
  v12 = *(v5 + 32);
  v12(v11 + v9, v4, v6);
  v12(v11 + v10, v40, v6);
  v13 = (v11 + ((v41 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v42;
  v13[1] = v43;
  v0[6] = sub_10067B878;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10162CCD0;
  v14 = _Block_copy(v0 + 2);

  v15 = v45;

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v48 + 8))(v46, v47);
  (*(v49 + 8))(v44, v50);

LABEL_13:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1006634C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v99 = a4;
  v91 = sub_1000BC4D4(&qword_1016A7268, &unk_1013B6060);
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v80[-v10];
  v98 = type metadata accessor for UUID();
  v11 = *(v98 - 8);
  v12 = __chkstk_darwin(v98);
  v90 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v88 = &v80[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v80[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v80[-v20];
  v89 = v22;
  __chkstk_darwin(v19);
  v24 = &v80[-v23];
  v25 = *&a2[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v26 = [v25 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v97 = a1;
  v27 = *(a1 + 112);
  v28 = *(v27 + 16);
  v94 = a6;
  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = sub_1000210EC(v24);
  if ((v30 & 1) == 0)
  {

LABEL_9:
    v47 = v98;
    v96 = *(v11 + 8);
    v96(v24, v98);
    goto LABEL_10;
  }

  v86 = *(*(v27 + 56) + 8 * v29);
  v87 = v11;
  v31 = *(v11 + 8);

  v96 = v31;
  v31(v24, v98);

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000076D4(v32, qword_10177B048);
  v85 = a2;
  v33 = a2;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v100[0] = v84;
    *v36 = 136446210;
    v37 = [v25 identifier];
    LODWORD(v83) = v35;
    v38 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = a3;
    v40 = v98;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v40;
    a3 = v39;
    v96(v21, v44);
    v45 = sub_1000136BC(v41, v43, v100);

    *(v36 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v34, v83, "Canceling disconnection block for %{public}s", v36, 0xCu);
    sub_100007BAC(v84);
  }

  v11 = v87;
  dispatch thunk of DispatchWorkItem.cancel()();
  v46 = [v25 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DF908(0, v21);
  swift_endAccess();

  v47 = v98;
  a2 = v85;
LABEL_10:
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177B048);
  v49 = *(v11 + 16);
  v98 = a3;
  v49(v18, a3, v47);
  v50 = v88;
  v86 = v49;
  v87 = v11 + 16;
  v49(v88, v99, v47);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v85 = a2;
    v54 = v53;
    v83 = swift_slowAlloc();
    v100[0] = v83;
    *v54 = 141558531;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v82 = v51;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v84 = v21;
    v81 = v52;
    v58 = v96;
    v96(v18, v47);
    v59 = sub_1000136BC(v55, v57, v100);

    *(v54 + 14) = v59;
    *(v54 + 22) = 2082;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v58(v50, v47);
    v21 = v84;
    v63 = sub_1000136BC(v60, v62, v100);

    *(v54 + 24) = v63;
    v64 = v82;
    _os_log_impl(&_mh_execute_header, v82, v81, "Disconnecting from beacon %{private,mask.hash}s. CommandId: %{public}s", v54, 0x20u);
    swift_arrayDestroy();

    a2 = v85;
  }

  else
  {

    v65 = v96;
    v96(v50, v47);
    v65(v18, v47);
  }

  v100[0] = sub_10131FAE0(a2);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  type metadata accessor for OwnerCommandManager.Error(0);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
  v66 = v93;
  Publisher.mapError<A>(_:)();

  v67 = v86;
  v86(v21, v98, v47);
  v68 = v21;
  v69 = v90;
  v67(v90, v99, v47);
  v70 = *(v11 + 80);
  v71 = (v70 + 16) & ~v70;
  v72 = (v89 + v70 + v71) & ~v70;
  v73 = (v89 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = *(v11 + 32);
  v75(v74 + v71, v68, v47);
  v75(v74 + v72, v69, v47);
  v76 = (v74 + v73);
  v77 = v94;
  *v76 = v92;
  v76[1] = v77;
  sub_1000041A4(&qword_1016A7270, &qword_1016A7268, &unk_1013B6060, &protocol conformance descriptor for Publishers.MapError<A, B>);

  v78 = v91;
  Publisher.oneshot(_:)();

  return (*(v95 + 8))(v66, v78);
}