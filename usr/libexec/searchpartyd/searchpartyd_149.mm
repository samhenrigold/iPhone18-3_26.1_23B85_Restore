void *sub_1010738E0(uint64_t a1, uint64_t a2)
{
  v9[2] = a1;

  v4 = sub_10013D230(sub_101076668, v9, a2);
  sub_1000BC4D4(&qword_101697DD8, &unk_10138CDD0);
  v5 = *(type metadata accessor for DefaultConfigurationLayer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  sub_100041EB0(a1, v7 + v6);
  v10 = v4;
  sub_100398154(v7);

  sub_101078C18(&v10, &off_101607EC0);

  return v10;
}

uint64_t sub_101073A3C(uint64_t a1)
{
  swift_getKeyPath();
  sub_101075428(a1, &v4);
  if (v5 >> 60 == 15)
  {
    sub_100006654(v4, v5);
    v4 = 0;
    v5 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v3._object = 0x800000010134CA80;
    v3._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v3);
    sub_1000BC4D4(&qword_1016C5078, &qword_1013FD9F8);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return v4;
  }

  return result;
}

uint64_t sub_101073D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_101075BB4(KeyPath, a1);
  if (v8)
  {
    v9 = v8;

    return v9;
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v11._object = 0x800000010134CA80;
    v11._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v11);
    sub_1000BC4D4(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10107406C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1010755BC(KeyPath, a1);
  if (v3)
  {
    v4 = v3;

    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C5068, &qword_1013FD970);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_101074250(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_10003E938(KeyPath, a1);

  return v3;
}

uint64_t sub_1010742D8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, void *x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10107575C(KeyPath, a1, a3, a4, a5, x8_0);
}

uint64_t sub_1010743B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_getKeyPath();
  sub_1010759C4(a1, &v10);
  if (v13)
  {

    v5 = v15;
    a2[4] = v14;
    a2[5] = v5;
    a2[6] = v16;
    v6 = v11;
    *a2 = v10;
    a2[1] = v6;
    v7 = v13;
    a2[2] = v12;
    a2[3] = v7;
  }

  else
  {
    v9[4] = v14;
    v9[5] = v15;
    v9[6] = v16;
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    sub_10000B3A8(v9, &qword_1016ADCE8, &qword_1013C53A0);
    _StringGuts.grow(_:)(40);
    v8._object = 0x800000010134CA80;
    v8._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v8);
    sub_1000BC4D4(&qword_1016C50E8, &qword_1013FE4E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_101074C0C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_101075280(KeyPath, a1);
  if (v5)
  {
    v6 = v4;

    return v6;
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v8._object = 0x800000010134CA80;
    v8._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v8);
    sub_1000BC4D4(&qword_1016C5090, &qword_1013FDD80);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_101074D70(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_101075D30(KeyPath, a1);
  if ((v3 & 0x100000000) != 0)
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C50F8, &qword_1013FED60);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t sub_101074EE0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_101075108(KeyPath, a1);
  if (v4 == 2)
  {
    _StringGuts.grow(_:)(40);
    v7._object = 0x800000010134CA80;
    v7._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v7);
    sub_1000BC4D4(&qword_1016C5070, &qword_1013FD9A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4;

    return v5 & 1;
  }

  return result;
}

uint64_t sub_101074FFC(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_101075EB8(KeyPath, a1);
  if ((v3 & 0x100) != 0)
  {
    _StringGuts.grow(_:)(40);
    v6._object = 0x800000010134CA80;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    sub_1000BC4D4(&qword_1016C5088, &qword_1013FDD50);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;

    return v4;
  }

  return result;
}

uint64_t sub_101075108(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (!v7)
  {
    return 2;
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  while (1)
  {
    sub_100041EB0(v8, v6);
    v15[3] = v3;
    v15[4] = &off_10163B190;
    v10 = sub_1000280DC(v15);
    sub_100041EB0(v6, v10);
    swift_getAtKeyPath();
    v11 = v14[15];
    sub_100007BAC(v15);
    if (v11 != 2)
    {
      break;
    }

    sub_100041F5C(v6);
    v8 += v9;
    if (!--v7)
    {
      return 2;
    }
  }

  v16[3] = v3;
  v16[4] = &off_10163B190;
  v13 = sub_1000280DC(v16);
  sub_1000420BC(v6, v13);
  swift_getAtKeyPath();
  sub_100007BAC(v16);
  return LOBYTE(v15[0]);
}

uint64_t sub_101075280(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  while (1)
  {
    sub_100041EB0(v8, v6);
    v16[3] = v3;
    v16[4] = &off_10163B190;
    v10 = sub_1000280DC(v16);
    sub_100041EB0(v6, v10);
    swift_getAtKeyPath();
    v11 = v15;

    sub_100007BAC(v16);
    if (v11)
    {
      break;
    }

    sub_100041F5C(v6);
    v8 += v9;
    if (!--v7)
    {
      return 0;
    }
  }

  v17[3] = v3;
  v17[4] = &off_10163B190;
  v13 = sub_1000280DC(v17);
  sub_1000420BC(v6, v13);
  swift_getAtKeyPath();
  sub_100007BAC(v17);
  return v16[0];
}

uint64_t sub_101075428@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = type metadata accessor for DefaultConfigurationLayer(0);
  result = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    while (1)
    {
      sub_100041EB0(v11, v9);
      v18[3] = v5;
      v18[4] = &off_10163B190;
      v13 = sub_1000280DC(v18);
      sub_100041EB0(v9, v13);
      swift_getAtKeyPath();
      v14 = v17;
      sub_100006654(v16, v17);
      sub_100007BAC(v18);
      if (v14 >> 60 != 15)
      {
        break;
      }

      result = sub_100041F5C(v9);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v19[3] = v5;
    v19[4] = &off_10163B190;
    v15 = sub_1000280DC(v19);
    sub_1000420BC(v9, v15);
    swift_getAtKeyPath();
    return sub_100007BAC(v19);
  }

  else
  {
LABEL_5:
    *a3 = xmmword_10138BBF0;
  }

  return result;
}

uint64_t sub_1010755BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  while (1)
  {
    sub_100041EB0(v8, v6);
    v16[3] = v3;
    v16[4] = &off_10163B190;
    v10 = sub_1000280DC(v16);
    sub_100041EB0(v6, v10);
    swift_getAtKeyPath();
    v11 = v15;

    sub_100007BAC(v16);
    if (v11)
    {
      break;
    }

    sub_100041F5C(v6);
    v8 += v9;
    if (!--v7)
    {
      return 0;
    }
  }

  v17[3] = v3;
  v17[4] = &off_10163B190;
  v13 = sub_1000280DC(v17);
  sub_1000420BC(v6, v13);
  swift_getAtKeyPath();
  sub_100007BAC(v17);
  return v16[0];
}

uint64_t sub_10107575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v26[0] = a6;
  v26[1] = a1;
  v10 = sub_1000BC4D4(a3, a4);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  v13 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    while (1)
    {
      sub_100041EB0(v18, v16);
      v27[3] = v13;
      v27[4] = &off_10163B190;
      v20 = sub_1000280DC(v27);
      sub_100041EB0(v16, v20);
      swift_getAtKeyPath();
      v21 = a5(0);
      v22 = (*(*(v21 - 8) + 48))(v12, 1, v21);
      sub_10000B3A8(v12, a3, a4);
      sub_100007BAC(v27);
      if (v22 != 1)
      {
        break;
      }

      sub_100041F5C(v16);
      v18 += v19;
      if (!--v17)
      {
        goto LABEL_5;
      }
    }

    v28[3] = v13;
    v28[4] = &off_10163B190;
    v25 = sub_1000280DC(v28);
    sub_1000420BC(v16, v25);
    swift_getAtKeyPath();
    return sub_100007BAC(v28);
  }

  else
  {
LABEL_5:
    v23 = a5(0);
    return (*(*(v23 - 8) + 56))(v26[0], 1, 1, v23);
  }
}

uint64_t sub_1010759C4@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = a3;
  v4 = type metadata accessor for DefaultConfigurationLayer(0);
  result = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    while (1)
    {
      sub_100041EB0(v10, v8);
      v24[3] = v4;
      v24[4] = &off_10163B190;
      v12 = sub_1000280DC(v24);
      sub_100041EB0(v8, v12);
      swift_getAtKeyPath();
      v13 = v20;
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = v23;
      v25[0] = v17;
      v25[1] = v18;
      v25[2] = v19;
      v25[3] = v20;
      sub_10000B3A8(v25, &qword_1016ADCE8, &qword_1013C53A0);
      sub_100007BAC(v24);
      if (v13)
      {
        break;
      }

      result = sub_100041F5C(v8);
      v10 += v11;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    v26[3] = v4;
    v26[4] = &off_10163B190;
    v15 = sub_1000280DC(v26);
    sub_1000420BC(v8, v15);
    swift_getAtKeyPath();
    return sub_100007BAC(v26);
  }

  else
  {
LABEL_5:
    v14 = v16;
    *(v16 + 5) = 0u;
    v14[6] = 0u;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
  }

  return result;
}

uint64_t sub_101075BB4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  while (1)
  {
    sub_100041EB0(v8, v6);
    v15[3] = v3;
    v15[4] = &off_10163B190;
    v10 = sub_1000280DC(v15);
    sub_100041EB0(v6, v10);
    swift_getAtKeyPath();
    v11 = v14[1];

    sub_100007BAC(v15);
    if (v11)
    {
      break;
    }

    sub_100041F5C(v6);
    v8 += v9;
    if (!--v7)
    {
      return 0;
    }
  }

  v16[3] = v3;
  v16[4] = &off_10163B190;
  v13 = sub_1000280DC(v16);
  sub_1000420BC(v6, v13);
  swift_getAtKeyPath();
  sub_100007BAC(v16);
  return v15[0];
}

unint64_t sub_101075D30(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    while (1)
    {
      sub_100041EB0(v8, v6);
      v17[3] = v3;
      v17[4] = &off_10163B190;
      v10 = sub_1000280DC(v17);
      sub_100041EB0(v6, v10);
      swift_getAtKeyPath();
      v11 = v16[12];
      sub_100007BAC(v17);
      if ((v11 & 1) == 0)
      {
        break;
      }

      sub_100041F5C(v6);
      v8 += v9;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v18[3] = v3;
    v18[4] = &off_10163B190;
    v14 = sub_1000280DC(v18);
    sub_1000420BC(v6, v14);
    swift_getAtKeyPath();
    sub_100007BAC(v18);
    v12 = LODWORD(v17[0]);
    v13 = BYTE4(v17[0]);
  }

  else
  {
LABEL_5:
    v12 = 0;
    v13 = 1;
  }

  return v12 | (v13 << 32);
}

uint64_t sub_101075EB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    while (1)
    {
      sub_100041EB0(v8, v6);
      v17[3] = v3;
      v17[4] = &off_10163B190;
      v10 = sub_1000280DC(v17);
      sub_100041EB0(v6, v10);
      swift_getAtKeyPath();
      v11 = v16[15];
      sub_100007BAC(v17);
      if ((v11 & 1) == 0)
      {
        break;
      }

      sub_100041F5C(v6);
      v8 += v9;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v18[3] = v3;
    v18[4] = &off_10163B190;
    v14 = sub_1000280DC(v18);
    sub_1000420BC(v6, v14);
    swift_getAtKeyPath();
    sub_100007BAC(v18);
    v12 = LOBYTE(v17[0]);
    v13 = BYTE1(v17[0]);
  }

  else
  {
LABEL_5:
    v12 = 0;
    v13 = 1;
  }

  return v12 | (v13 << 8);
}

uint64_t sub_101076038(uint64_t a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = *(a1 + 25);
  v4 = *(a2 + 25);
  v5 = 0xE700000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x73656C6F72;
  v8 = 0x6166654472657375;
  v9 = 0xEC00000073746C75;
  if (v3 != 3)
  {
    v8 = 0x5365636976726573;
    v9 = 0xEF73676E69747465;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v9;
  }

  v10 = 0x726576726573;
  if (*(a1 + 25))
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (*(a1 + 25) <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE700000000000000;
  v14 = 0xE500000000000000;
  v15 = 0x73656C6F72;
  v16 = 0x6166654472657375;
  v17 = 0xEC00000073746C75;
  if (v4 != 3)
  {
    v16 = 0x5365636976726573;
    v17 = 0xEF73676E69747465;
  }

  if (v4 != 2)
  {
    v15 = v16;
    v14 = v17;
  }

  if (*(a2 + 25))
  {
    v2 = 0x726576726573;
    v13 = 0xE600000000000000;
  }

  if (*(a2 + 25) <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*(a2 + 25) <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {

    v20 = 0;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1010761F0(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016C50C0, &qword_1013FDEB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_101078EBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016C50A8, &qword_1013FDEA8);
  sub_101078F10(&qword_1016C50C8, &qword_1016C50D0, &unk_1013C5658, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_101076398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000)
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

uint64_t sub_10107641C(uint64_t a1)
{
  v2 = sub_101078EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101076458(uint64_t a1)
{
  v2 = sub_101078EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_101076494@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_101078D00(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1010764E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 104))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_101076548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 112))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1010765A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1304))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_101076608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1272))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_101076688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v90 = a5;
  v95 = a4;
  v88 = type metadata accessor for DefaultConfigurationLayer(0);
  v8 = __chkstk_darwin(v88);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v89 = &v83 - v12;
  v13 = __chkstk_darwin(v11);
  v94 = &v83 - v14;
  result = __chkstk_darwin(v13);
  v18 = *(v17 + 72);
  if (!v18)
  {
    goto LABEL_234;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    return result;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_236;
  }

  v20 = (a2 - a1) / v18;
  v98 = a1;
  v21 = v95;
  v97 = v95;
  v91 = v18;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (v95 < a2 || a2 + v23 <= v95)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v95 == a2)
      {
LABEL_126:
        v53 = v21 + v23;
        if (v23 < 1)
        {
          goto LABEL_230;
        }

        v54 = -v18;
        v55 = v90 + 32;
        v56 = v53;
        v91 = -v18;
        v92 = a1;
        v85 = v10;
        while (1)
        {
          v83 = v53;
          v57 = a2;
          v58 = a2 + v54;
          v93 = v58;
          v59 = v89;
          v60 = v53;
          v86 = v57;
          while (2)
          {
            if (v57 <= a1)
            {
              v98 = v57;
              v96 = v83;
              goto LABEL_231;
            }

            v61 = a3;
            v87 = v56;
            v94 = v56 + v91;
            sub_100041EB0(v56 + v91, v59);
            sub_100041EB0(v58, v10);
            v62 = *(v90 + 16);
            v84 = v60;
            if (!v62)
            {
              v73 = 0;
              v63 = 0;
              goto LABEL_217;
            }

            v63 = 0;
            v64 = *(v59 + 25);
            while (1)
            {
              v65 = *(v55 + v63);
              if (v65 <= 1)
              {
                if (*(v55 + v63))
                {
                  v66 = 0x726576726573;
                }

                else
                {
                  v66 = 0x746C7561666564;
                }

                if (*(v55 + v63))
                {
                  v67 = 0xE600000000000000;
                }

                else
                {
                  v67 = 0xE700000000000000;
                }

                if (v64 > 1)
                {
LABEL_152:
                  v68 = 0x6166654472657375;
                  if (v64 != 3)
                  {
                    v68 = 0x5365636976726573;
                  }

                  v69 = 0xEF73676E69747465;
                  if (v64 == 3)
                  {
                    v69 = 0xEC00000073746C75;
                  }

                  if (v64 == 2)
                  {
                    v70 = 0x73656C6F72;
                  }

                  else
                  {
                    v70 = v68;
                  }

                  if (v64 == 2)
                  {
                    v71 = 0xE500000000000000;
                  }

                  else
                  {
                    v71 = v69;
                  }

                  if (v66 != v70)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_169;
                }
              }

              else if (v65 == 2)
              {
                v67 = 0xE500000000000000;
                v66 = 0x73656C6F72;
                if (v64 > 1)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                if (v65 == 3)
                {
                  v66 = 0x6166654472657375;
                }

                else
                {
                  v66 = 0x5365636976726573;
                }

                if (v65 == 3)
                {
                  v67 = 0xEC00000073746C75;
                }

                else
                {
                  v67 = 0xEF73676E69747465;
                }

                if (v64 > 1)
                {
                  goto LABEL_152;
                }
              }

              if (!v64)
              {
                break;
              }

              v71 = 0xE600000000000000;
              if (v66 == 0x726576726573)
              {
                goto LABEL_169;
              }

LABEL_170:
              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v72)
              {
                goto LABEL_175;
              }

              if (v62 == ++v63)
              {
                v63 = 0;
                goto LABEL_175;
              }
            }

            v71 = 0xE700000000000000;
            if (v66 != 0x746C7561666564)
            {
              goto LABEL_170;
            }

LABEL_169:
            if (v67 != v71)
            {
              goto LABEL_170;
            }

LABEL_175:
            v73 = 0;
            v74 = v85[25];
            while (2)
            {
              if (v62 == v73)
              {
                goto LABEL_233;
              }

              v75 = *(v55 + v73);
              if (v75 <= 1)
              {
                if (*(v55 + v73))
                {
                  v76 = 0x726576726573;
                }

                else
                {
                  v76 = 0x746C7561666564;
                }

                if (*(v55 + v73))
                {
                  v77 = 0xE600000000000000;
                }

                else
                {
                  v77 = 0xE700000000000000;
                }

                if (v74 > 1)
                {
                  goto LABEL_194;
                }

LABEL_207:
                if (v74)
                {
                  v81 = 0xE600000000000000;
                  if (v76 != 0x726576726573)
                  {
                    goto LABEL_212;
                  }
                }

                else
                {
                  v81 = 0xE700000000000000;
                  if (v76 != 0x746C7561666564)
                  {
                    goto LABEL_212;
                  }
                }
              }

              else
              {
                if (v75 == 2)
                {
                  v77 = 0xE500000000000000;
                  v76 = 0x73656C6F72;
                  if (v74 <= 1)
                  {
                    goto LABEL_207;
                  }
                }

                else
                {
                  if (v75 == 3)
                  {
                    v76 = 0x6166654472657375;
                  }

                  else
                  {
                    v76 = 0x5365636976726573;
                  }

                  if (v75 == 3)
                  {
                    v77 = 0xEC00000073746C75;
                  }

                  else
                  {
                    v77 = 0xEF73676E69747465;
                  }

                  if (v74 <= 1)
                  {
                    goto LABEL_207;
                  }
                }

LABEL_194:
                v78 = 0x6166654472657375;
                if (v74 != 3)
                {
                  v78 = 0x5365636976726573;
                }

                v79 = 0xEF73676E69747465;
                if (v74 == 3)
                {
                  v79 = 0xEC00000073746C75;
                }

                if (v74 == 2)
                {
                  v80 = 0x73656C6F72;
                }

                else
                {
                  v80 = v78;
                }

                if (v74 == 2)
                {
                  v81 = 0xE500000000000000;
                }

                else
                {
                  v81 = v79;
                }

                if (v76 != v80)
                {
LABEL_212:
                  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v82)
                  {
                    goto LABEL_216;
                  }

                  if (v62 == ++v73)
                  {
                    v73 = 0;
                    goto LABEL_216;
                  }

                  continue;
                }
              }

              break;
            }

            if (v77 != v81)
            {
              goto LABEL_212;
            }

LABEL_216:
            v10 = v85;
LABEL_217:
            a3 = v61 + v91;
            sub_100041F5C(v10);
            sub_100041F5C(v89);
            a1 = v92;
            if (v63 >= v73)
            {
              v58 = v93;
              v60 = v94;
              if (v61 < v87 || a3 >= v87)
              {
                swift_arrayInitWithTakeFrontToBack();
                v59 = v89;
              }

              else
              {
                v59 = v89;
                if (v61 != v87)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v56 = v60;
              v57 = v86;
              if (v94 <= v95)
              {
                v53 = v60;
                a2 = v86;
                goto LABEL_230;
              }

              continue;
            }

            break;
          }

          a2 = v93;
          if (v61 < v86 || a3 >= v86)
          {
            swift_arrayInitWithTakeFrontToBack();
            v54 = v91;
          }

          else
          {
            v54 = v91;
            if (v61 != v86)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v56 = v87;
          v53 = v84;
          if (v87 <= v95)
          {
LABEL_230:
            v98 = a2;
            v96 = v53;
            goto LABEL_231;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v18 = v91;
    v21 = v95;
    goto LABEL_126;
  }

  v89 = &v83 - v16;
  v22 = v20 * v18;
  if (v95 < a1 || a1 + v22 <= v95)
  {
    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_16;
  }

  if (v95 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
LABEL_16:
    v21 = v95;
  }

  v87 = v21 + v22;
  v96 = v21 + v22;
  if (v22 >= 1 && a2 < a3)
  {
    v25 = v90 + 32;
    v86 = a3;
    while (1)
    {
      v92 = a1;
      v26 = v21;
      v27 = v89;
      sub_100041EB0(a2, v89);
      v95 = v26;
      sub_100041EB0(v26, v94);
      v28 = *(v90 + 16);
      v93 = a2;
      if (v28)
      {
        v29 = 0;
        v30 = *(v27 + 25);
        while (1)
        {
          v31 = *(v25 + v29);
          if (v31 <= 1)
          {
            if (*(v25 + v29))
            {
              v32 = 0x726576726573;
            }

            else
            {
              v32 = 0x746C7561666564;
            }

            if (*(v25 + v29))
            {
              v33 = 0xE600000000000000;
            }

            else
            {
              v33 = 0xE700000000000000;
            }

            if (v30 > 1)
            {
LABEL_41:
              v34 = 0x6166654472657375;
              if (v30 != 3)
              {
                v34 = 0x5365636976726573;
              }

              v35 = 0xEF73676E69747465;
              if (v30 == 3)
              {
                v35 = 0xEC00000073746C75;
              }

              if (v30 == 2)
              {
                v36 = 0x73656C6F72;
              }

              else
              {
                v36 = v34;
              }

              if (v30 == 2)
              {
                v37 = 0xE500000000000000;
              }

              else
              {
                v37 = v35;
              }

              if (v32 != v36)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }
          }

          else if (v31 == 2)
          {
            v33 = 0xE500000000000000;
            v32 = 0x73656C6F72;
            if (v30 > 1)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v31 == 3)
            {
              v32 = 0x6166654472657375;
            }

            else
            {
              v32 = 0x5365636976726573;
            }

            if (v31 == 3)
            {
              v33 = 0xEC00000073746C75;
            }

            else
            {
              v33 = 0xEF73676E69747465;
            }

            if (v30 > 1)
            {
              goto LABEL_41;
            }
          }

          if (v30)
          {
            v37 = 0xE600000000000000;
            if (v32 != 0x726576726573)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v37 = 0xE700000000000000;
            if (v32 != 0x746C7561666564)
            {
              goto LABEL_59;
            }
          }

LABEL_58:
          if (v33 == v37)
          {

LABEL_64:
            v39 = 0;
            v40 = *(v94 + 25);
            while (2)
            {
              if (v28 == v39)
              {
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
                goto LABEL_235;
              }

              v41 = *(v25 + v39);
              if (v41 <= 1)
              {
                if (*(v25 + v39))
                {
                  v42 = 0x726576726573;
                }

                else
                {
                  v42 = 0x746C7561666564;
                }

                if (*(v25 + v39))
                {
                  v43 = 0xE600000000000000;
                }

                else
                {
                  v43 = 0xE700000000000000;
                }

                if (v40 > 1)
                {
                  goto LABEL_83;
                }

LABEL_96:
                if (v40)
                {
                  v47 = 0xE600000000000000;
                  if (v42 != 0x726576726573)
                  {
                    goto LABEL_101;
                  }
                }

                else
                {
                  v47 = 0xE700000000000000;
                  if (v42 != 0x746C7561666564)
                  {
                    goto LABEL_101;
                  }
                }
              }

              else
              {
                if (v41 == 2)
                {
                  v43 = 0xE500000000000000;
                  v42 = 0x73656C6F72;
                  if (v40 <= 1)
                  {
                    goto LABEL_96;
                  }
                }

                else
                {
                  if (v41 == 3)
                  {
                    v42 = 0x6166654472657375;
                  }

                  else
                  {
                    v42 = 0x5365636976726573;
                  }

                  if (v41 == 3)
                  {
                    v43 = 0xEC00000073746C75;
                  }

                  else
                  {
                    v43 = 0xEF73676E69747465;
                  }

                  if (v40 <= 1)
                  {
                    goto LABEL_96;
                  }
                }

LABEL_83:
                v44 = 0x6166654472657375;
                if (v40 != 3)
                {
                  v44 = 0x5365636976726573;
                }

                v45 = 0xEF73676E69747465;
                if (v40 == 3)
                {
                  v45 = 0xEC00000073746C75;
                }

                if (v40 == 2)
                {
                  v46 = 0x73656C6F72;
                }

                else
                {
                  v46 = v44;
                }

                if (v40 == 2)
                {
                  v47 = 0xE500000000000000;
                }

                else
                {
                  v47 = v45;
                }

                if (v42 != v46)
                {
LABEL_101:
                  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v48)
                  {
                    goto LABEL_105;
                  }

                  if (v28 == ++v39)
                  {
                    v39 = 0;
LABEL_105:
                    v27 = v89;
                    goto LABEL_106;
                  }

                  continue;
                }
              }

              break;
            }

            if (v43 == v47)
            {

              goto LABEL_105;
            }

            goto LABEL_101;
          }

LABEL_59:
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_64;
          }

          if (v28 == ++v29)
          {
            v29 = 0;
            goto LABEL_64;
          }
        }
      }

      v39 = 0;
      v29 = 0;
LABEL_106:
      sub_100041F5C(v94);
      sub_100041F5C(v27);
      v49 = v92;
      if (v29 < v39)
      {
        v50 = v91;
        a2 = v93 + v91;
        v51 = v86;
        if (v92 < v93 || v92 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_116:
          v50 = v91;
        }

        else if (v92 != v93)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_116;
        }

        v21 = v95;
        goto LABEL_121;
      }

      v50 = v91;
      v52 = v95 + v91;
      a2 = v93;
      v51 = v86;
      if (v92 < v95 || v92 >= v52)
      {
        break;
      }

      if (v92 != v95)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_119:
        v50 = v91;
      }

      v97 = v52;
      v21 = v52;
LABEL_121:
      a1 = v49 + v50;
      v98 = a1;
      if (v21 >= v87 || a2 >= v51)
      {
        goto LABEL_231;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_119;
  }

LABEL_231:
  sub_10060AACC(&v98, &v97, &v96);
  return 1;
}

uint64_t sub_1010772C0(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_100B31E68(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(type metadata accessor for DefaultConfigurationLayer(0) - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_101076688(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_101077480(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v170 = a1;
  v171 = a4;
  v185 = type metadata accessor for DefaultConfigurationLayer(0);
  v174 = *(v185 - 8);
  v9 = __chkstk_darwin(v185);
  v172 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v182 = &v165 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v165 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v165 - v17;
  v19 = __chkstk_darwin(v16);
  v181 = &v165 - v20;
  v21 = __chkstk_darwin(v19);
  v178 = &v165 - v22;
  v23 = __chkstk_darwin(v21);
  v167 = &v165 - v24;
  __chkstk_darwin(v23);
  v166 = &v165 - v25;
  v190 = _swiftEmptyArrayStorage;
  v176 = a3;
  v26 = a3[1];
  v179 = a5;
  if (v26 < 1)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_270;
  }

  v177 = v5;
  v27 = a5 + 32;
  v28 = v26;
  swift_bridgeObjectRetain_n();
  v29 = v28;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v180 = v15;
  v189 = v18;
  v173 = v27;
LABEL_4:
  v32 = v30++;
  if (v30 >= v29)
  {
    v71 = v171;
    goto LABEL_117;
  }

  v168 = v31;
  v33 = v29;
  v34 = *v176;
  v31 = *(v174 + 72);
  v35 = v166;
  sub_100041EB0(*v176 + v31 * v30, v166);
  v184 = v32;
  v175 = v34;
  v36 = v34 + v31 * v32;
  v37 = v167;
  sub_100041EB0(v36, v167);
  v38 = v179;
  v39 = sub_1005E48C0(*(v35 + 25), v179);
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39;
  }

  v187 = v41;
  v42 = sub_1005E48C0(*(v37 + 25), v38);
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  v186 = v44;
  sub_100041F5C(v37);
  sub_100041F5C(v35);
  v169 = v33;
  v183 = v33 - 1;
LABEL_15:
  if (v30 != v183)
  {
    v188 = v30 + 1;
    v48 = v175;
    v49 = v178;
    sub_100041EB0(v175 + (v30 + 1) * v31, v178);
    sub_100041EB0(v48 + v30 * v31, v181);
    v50 = *(v179 + 16);
    if (!v50)
    {
      v61 = 0;
      v51 = 0;
      goto LABEL_14;
    }

    v51 = 0;
    v52 = *(v49 + 25);
    while (1)
    {
      v53 = *(v27 + v51);
      if (v53 <= 1)
      {
        if (*(v27 + v51))
        {
          v54 = 0x726576726573;
        }

        else
        {
          v54 = 0x746C7561666564;
        }

        if (*(v27 + v51))
        {
          v55 = 0xE600000000000000;
        }

        else
        {
          v55 = 0xE700000000000000;
        }

        if (v52 > 1)
        {
LABEL_35:
          v56 = 0x6166654472657375;
          if (v52 != 3)
          {
            v56 = 0x5365636976726573;
          }

          v57 = 0xEF73676E69747465;
          if (v52 == 3)
          {
            v57 = 0xEC00000073746C75;
          }

          if (v52 == 2)
          {
            v58 = 0x73656C6F72;
          }

          else
          {
            v58 = v56;
          }

          if (v52 == 2)
          {
            v59 = 0xE500000000000000;
          }

          else
          {
            v59 = v57;
          }

          if (v54 != v58)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }
      }

      else if (v53 == 2)
      {
        v55 = 0xE500000000000000;
        v54 = 0x73656C6F72;
        if (v52 > 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v53 == 3)
        {
          v54 = 0x6166654472657375;
        }

        else
        {
          v54 = 0x5365636976726573;
        }

        if (v53 == 3)
        {
          v55 = 0xEC00000073746C75;
        }

        else
        {
          v55 = 0xEF73676E69747465;
        }

        if (v52 > 1)
        {
          goto LABEL_35;
        }
      }

      if (v52)
      {
        v59 = 0xE600000000000000;
        if (v54 != 0x726576726573)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v59 = 0xE700000000000000;
        if (v54 != 0x746C7561666564)
        {
          goto LABEL_53;
        }
      }

LABEL_52:
      if (v55 == v59)
      {

LABEL_58:
        v61 = 0;
        v62 = *(v181 + 25);
        while (2)
        {
          if (v50 == v61)
          {
            goto LABEL_278;
          }

          v63 = *(v27 + v61);
          if (v63 <= 1)
          {
            if (*(v27 + v61))
            {
              v64 = 0x726576726573;
            }

            else
            {
              v64 = 0x746C7561666564;
            }

            if (*(v27 + v61))
            {
              v65 = 0xE600000000000000;
            }

            else
            {
              v65 = 0xE700000000000000;
            }

            if (v62 > 1)
            {
              goto LABEL_77;
            }

LABEL_90:
            if (v62)
            {
              v69 = 0xE600000000000000;
              if (v64 != 0x726576726573)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v69 = 0xE700000000000000;
              if (v64 != 0x746C7561666564)
              {
                goto LABEL_95;
              }
            }

LABEL_94:
            if (v65 == v69)
            {

              goto LABEL_13;
            }

            goto LABEL_95;
          }

          if (v63 == 2)
          {
            v65 = 0xE500000000000000;
            v64 = 0x73656C6F72;
            if (v62 <= 1)
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v63 == 3)
            {
              v64 = 0x6166654472657375;
            }

            else
            {
              v64 = 0x5365636976726573;
            }

            if (v63 == 3)
            {
              v65 = 0xEC00000073746C75;
            }

            else
            {
              v65 = 0xEF73676E69747465;
            }

            if (v62 <= 1)
            {
              goto LABEL_90;
            }
          }

LABEL_77:
          v66 = 0x6166654472657375;
          if (v62 != 3)
          {
            v66 = 0x5365636976726573;
          }

          v67 = 0xEF73676E69747465;
          if (v62 == 3)
          {
            v67 = 0xEC00000073746C75;
          }

          if (v62 == 2)
          {
            v68 = 0x73656C6F72;
          }

          else
          {
            v68 = v66;
          }

          if (v62 == 2)
          {
            v69 = 0xE500000000000000;
          }

          else
          {
            v69 = v67;
          }

          if (v64 == v68)
          {
            goto LABEL_94;
          }

LABEL_95:
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v70)
          {
            goto LABEL_13;
          }

          if (v50 != ++v61)
          {
            continue;
          }

          break;
        }

        v61 = 0;
LABEL_13:
        v15 = v180;
LABEL_14:
        v45 = v187 < v186;
        sub_100041F5C(v181);
        sub_100041F5C(v178);
        v46 = v51 >= v61;
        v47 = v188;
        v18 = v189;
        v30 = v188;
        if (((v45 ^ v46) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_15;
      }

LABEL_53:
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {
        goto LABEL_58;
      }

      if (v50 == ++v51)
      {
        v51 = 0;
        goto LABEL_58;
      }
    }
  }

  v47 = v169;
LABEL_100:
  v71 = v171;
  if (v187 >= v186)
  {
    v30 = v47;
    goto LABEL_116;
  }

  v32 = v184;
  if (v47 < v184)
  {
    goto LABEL_300;
  }

  if (v184 >= v47)
  {
    v30 = v47;
    v31 = v168;
  }

  else
  {
    v72 = v31 * (v47 - 1);
    v73 = v47 * v31;
    v188 = v47;
    v74 = v184;
    v75 = v184 * v31;
    do
    {
      if (v74 != --v47)
      {
        v76 = *v176;
        if (!*v176)
        {
          goto LABEL_303;
        }

        sub_1000420BC(v76 + v75, v172);
        if (v75 < v72 || v76 + v75 >= (v76 + v73))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v75 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1000420BC(v172, v76 + v72);
        v71 = v171;
      }

      ++v74;
      v72 -= v31;
      v73 -= v31;
      v75 += v31;
    }

    while (v74 < v47);
    v30 = v188;
    v18 = v189;
    v15 = v180;
LABEL_116:
    v31 = v168;
    v32 = v184;
  }

LABEL_117:
  v77 = v176[1];
  if (v30 >= v77)
  {
    goto LABEL_218;
  }

  if (__OFSUB__(v30, v32))
  {
    goto LABEL_297;
  }

  if (v30 - v32 >= v71)
  {
    goto LABEL_218;
  }

  v78 = v32 + v71;
  if (__OFADD__(v32, v71))
  {
    goto LABEL_298;
  }

  if (v78 >= v77)
  {
    v78 = v176[1];
  }

  if (v78 < v32)
  {
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_302:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_303:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_304:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_305;
  }

  if (v30 == v78)
  {
    goto LABEL_218;
  }

  v184 = v32;
  v168 = v31;
  v188 = *v176;
  v79 = *(v179 + 16);
  v183 = *(v174 + 72);
  v169 = v78;
LABEL_128:
  v175 = v30;
  v80 = v30;
  while (1)
  {
    v81 = v80 - 1;
    v82 = v188;
    v31 = v183;
    v83 = v188 + v183 * v80;
    sub_100041EB0(v83, v18);
    v186 = v82 + v81 * v31;
    v187 = v81;
    sub_100041EB0(v186, v15);
    if (!v79)
    {
      v93 = 0;
      v84 = 0;
      goto LABEL_213;
    }

    v84 = 0;
    v85 = v18[25];
    while (1)
    {
      v86 = *(v27 + v84);
      if (v86 <= 1)
      {
        if (*(v27 + v84))
        {
          v87 = 0x726576726573;
        }

        else
        {
          v87 = 0x746C7561666564;
        }

        if (*(v27 + v84))
        {
          v88 = 0xE600000000000000;
        }

        else
        {
          v88 = 0xE700000000000000;
        }

        if (v85 > 1)
        {
LABEL_148:
          v89 = 0x6166654472657375;
          if (v85 != 3)
          {
            v89 = 0x5365636976726573;
          }

          v90 = 0xEF73676E69747465;
          if (v85 == 3)
          {
            v90 = 0xEC00000073746C75;
          }

          if (v85 == 2)
          {
            v91 = 0x73656C6F72;
          }

          else
          {
            v91 = v89;
          }

          if (v85 == 2)
          {
            v92 = 0xE500000000000000;
          }

          else
          {
            v92 = v90;
          }

          if (v87 != v91)
          {
            goto LABEL_166;
          }

          goto LABEL_165;
        }
      }

      else if (v86 == 2)
      {
        v88 = 0xE500000000000000;
        v87 = 0x73656C6F72;
        if (v85 > 1)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v86 == 3)
        {
          v87 = 0x6166654472657375;
        }

        else
        {
          v87 = 0x5365636976726573;
        }

        if (v86 == 3)
        {
          v88 = 0xEC00000073746C75;
        }

        else
        {
          v88 = 0xEF73676E69747465;
        }

        if (v85 > 1)
        {
          goto LABEL_148;
        }
      }

      if (!v85)
      {
        break;
      }

      v92 = 0xE600000000000000;
      if (v87 == 0x726576726573)
      {
        goto LABEL_165;
      }

LABEL_166:
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_171;
      }

      if (v79 == ++v84)
      {
        v84 = 0;
        goto LABEL_171;
      }
    }

    v92 = 0xE700000000000000;
    if (v87 != 0x746C7561666564)
    {
      goto LABEL_166;
    }

LABEL_165:
    if (v88 != v92)
    {
      goto LABEL_166;
    }

LABEL_171:
    v93 = 0;
    v94 = v15[25];
LABEL_172:
    if (v79 == v93)
    {
      break;
    }

    v95 = *(v27 + v93);
    if (v95 <= 1)
    {
      if (*(v27 + v93))
      {
        v96 = 0x726576726573;
      }

      else
      {
        v96 = 0x746C7561666564;
      }

      if (*(v27 + v93))
      {
        v97 = 0xE600000000000000;
      }

      else
      {
        v97 = 0xE700000000000000;
      }

      if (v94 > 1)
      {
        goto LABEL_190;
      }

LABEL_203:
      if (v94)
      {
        v101 = 0xE600000000000000;
        if (v96 != 0x726576726573)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v101 = 0xE700000000000000;
        if (v96 != 0x746C7561666564)
        {
          goto LABEL_208;
        }
      }
    }

    else
    {
      if (v95 == 2)
      {
        v97 = 0xE500000000000000;
        v96 = 0x73656C6F72;
        if (v94 <= 1)
        {
          goto LABEL_203;
        }
      }

      else
      {
        if (v95 == 3)
        {
          v96 = 0x6166654472657375;
        }

        else
        {
          v96 = 0x5365636976726573;
        }

        if (v95 == 3)
        {
          v97 = 0xEC00000073746C75;
        }

        else
        {
          v97 = 0xEF73676E69747465;
        }

        if (v94 <= 1)
        {
          goto LABEL_203;
        }
      }

LABEL_190:
      v98 = 0x6166654472657375;
      if (v94 != 3)
      {
        v98 = 0x5365636976726573;
      }

      v99 = 0xEF73676E69747465;
      if (v94 == 3)
      {
        v99 = 0xEC00000073746C75;
      }

      if (v94 == 2)
      {
        v100 = 0x73656C6F72;
      }

      else
      {
        v100 = v98;
      }

      if (v94 == 2)
      {
        v101 = 0xE500000000000000;
      }

      else
      {
        v101 = v99;
      }

      if (v96 != v100)
      {
LABEL_208:
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_212;
        }

        if (v79 == ++v93)
        {
          v93 = 0;
          goto LABEL_212;
        }

        goto LABEL_172;
      }
    }

    if (v97 != v101)
    {
      goto LABEL_208;
    }

LABEL_212:
    v15 = v180;
LABEL_213:
    sub_100041F5C(v15);
    sub_100041F5C(v189);
    if (v84 >= v93)
    {
      v18 = v189;
      goto LABEL_127;
    }

    if (!v188)
    {
      goto LABEL_301;
    }

    v102 = v182;
    sub_1000420BC(v83, v182);
    v103 = v186;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000420BC(v102, v103);
    v80 = v187;
    v18 = v189;
    if (v187 == v184)
    {
LABEL_127:
      v30 = v175 + 1;
      if (v175 + 1 != v169)
      {
        goto LABEL_128;
      }

      v30 = v169;
      v31 = v168;
      v32 = v184;
LABEL_218:
      if (v30 < v32)
      {
        goto LABEL_296;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100A5B430(0, *(v31 + 16) + 1, 1, v31);
      }

      v105 = *(v31 + 16);
      v104 = *(v31 + 24);
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v31 = sub_100A5B430((v104 > 1), v105 + 1, 1, v31);
      }

      *(v31 + 16) = v106;
      v107 = v31 + 32;
      v108 = (v31 + 32 + 16 * v105);
      *v108 = v32;
      v108[1] = v30;
      v188 = *v170;
      if (!v188)
      {
        goto LABEL_304;
      }

      if (v105)
      {
        v175 = v30;
        v187 = v31 + 32;
        while (1)
        {
          v109 = v106 - 1;
          if (v106 >= 4)
          {
            break;
          }

          if (v106 == 3)
          {
            v110 = *(v31 + 32);
            v111 = *(v31 + 40);
            v120 = __OFSUB__(v111, v110);
            v112 = v111 - v110;
            v113 = v120;
LABEL_239:
            if (v113)
            {
              goto LABEL_286;
            }

            v126 = (v31 + 16 * v106);
            v128 = *v126;
            v127 = v126[1];
            v129 = __OFSUB__(v127, v128);
            v130 = v127 - v128;
            v131 = v129;
            if (v129)
            {
              goto LABEL_288;
            }

            v132 = (v107 + 16 * v109);
            v134 = *v132;
            v133 = v132[1];
            v120 = __OFSUB__(v133, v134);
            v135 = v133 - v134;
            if (v120)
            {
              goto LABEL_291;
            }

            if (__OFADD__(v130, v135))
            {
              goto LABEL_293;
            }

            if (v130 + v135 >= v112)
            {
              if (v112 < v135)
              {
                v109 = v106 - 2;
              }

              goto LABEL_261;
            }

            goto LABEL_254;
          }

          if (v106 < 2)
          {
            goto LABEL_294;
          }

          v136 = (v31 + 16 * v106);
          v138 = *v136;
          v137 = v136[1];
          v120 = __OFSUB__(v137, v138);
          v130 = v137 - v138;
          v131 = v120;
LABEL_254:
          if (v131)
          {
            goto LABEL_290;
          }

          v139 = (v107 + 16 * v109);
          v141 = *v139;
          v140 = v139[1];
          v120 = __OFSUB__(v140, v141);
          v142 = v140 - v141;
          if (v120)
          {
            goto LABEL_292;
          }

          if (v142 < v130)
          {
            goto LABEL_3;
          }

LABEL_261:
          if (v109 - 1 >= v106)
          {
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
            goto LABEL_299;
          }

          v147 = *v176;
          if (!*v176)
          {
            goto LABEL_302;
          }

          v148 = v31;
          v149 = (v107 + 16 * (v109 - 1));
          v150 = *v149;
          v151 = v109;
          v152 = (v107 + 16 * v109);
          v153 = v152[1];
          v154 = *(v174 + 72);
          v155 = v147 + v154 * *v149;
          v156 = v147 + v154 * *v152;
          v157 = v147 + v154 * v153;
          v158 = v179;

          v159 = v155;
          v160 = v177;
          sub_101076688(v159, v156, v157, v188, v158);
          v177 = v160;
          if (v160)
          {

            v190 = v148;
            goto LABEL_274;
          }

          if (v153 < v150)
          {
            goto LABEL_281;
          }

          v161 = *(v148 + 16);
          if (v151 > v161)
          {
            goto LABEL_282;
          }

          *v149 = v150;
          v149[1] = v153;
          if (v151 >= v161)
          {
            goto LABEL_283;
          }

          v106 = v161 - 1;
          memmove(v152, v152 + 2, 16 * (v161 - 1 - v151));
          v31 = v148;
          *(v148 + 16) = v161 - 1;
          v30 = v175;
          v107 = v187;
          v27 = v173;
          if (v161 <= 2)
          {
            goto LABEL_3;
          }
        }

        v114 = v107 + 16 * v106;
        v115 = *(v114 - 64);
        v116 = *(v114 - 56);
        v120 = __OFSUB__(v116, v115);
        v117 = v116 - v115;
        if (v120)
        {
          goto LABEL_284;
        }

        v119 = *(v114 - 48);
        v118 = *(v114 - 40);
        v120 = __OFSUB__(v118, v119);
        v112 = v118 - v119;
        v113 = v120;
        if (v120)
        {
          goto LABEL_285;
        }

        v121 = (v31 + 16 * v106);
        v123 = *v121;
        v122 = v121[1];
        v120 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v120)
        {
          goto LABEL_287;
        }

        v120 = __OFADD__(v112, v124);
        v125 = v112 + v124;
        if (v120)
        {
          goto LABEL_289;
        }

        if (v125 >= v117)
        {
          v143 = (v107 + 16 * v109);
          v145 = *v143;
          v144 = v143[1];
          v120 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v120)
          {
            goto LABEL_295;
          }

          if (v112 < v146)
          {
            v109 = v106 - 2;
          }

          goto LABEL_261;
        }

        goto LABEL_239;
      }

LABEL_3:
      v29 = v176[1];
      v15 = v180;
      v18 = v189;
      if (v30 >= v29)
      {
        goto LABEL_279;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  v190 = v31;
  v6 = v177;
LABEL_270:
  v162 = *v170;
  if (!*v170)
  {
LABEL_305:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v163 = v179;

  sub_1010772C0(&v190, v162, v176, v163);
  if (v6)
  {

LABEL_274:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_101078518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v56 = a1;
  v55 = type metadata accessor for DefaultConfigurationLayer(0);
  v9 = __chkstk_darwin(v55);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - v12;
  result = __chkstk_darwin(v11);
  v18 = &v50 - v16;
  v51 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v62 = *a4;
  v19 = *(a5 + 16);
  v20 = *(v15 + 72);
  v57 = &v50 - v16;
  v58 = v20;
  v21 = a5 + 32;
  v53 = v13;
LABEL_5:
  v52 = v17;
  v22 = v17;
  while (1)
  {
    v23 = v22 - 1;
    v24 = v62;
    v25 = v58;
    v59 = v62 + v58 * v22;
    sub_100041EB0(v59, v18);
    v60 = v24 + v23 * v25;
    v61 = v23;
    sub_100041EB0(v60, v13);
    if (v19)
    {
      break;
    }

    v36 = 0;
    v26 = 0;
LABEL_90:
    sub_100041F5C(v13);
    v46 = v57;
    result = sub_100041F5C(v57);
    v47 = v26 < v36;
    v18 = v46;
    if (v47)
    {
      if (!v62)
      {
        goto LABEL_96;
      }

      v48 = v54;
      sub_1000420BC(v59, v54);
      v49 = v60;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000420BC(v48, v49);
      v22 = v61;
      if (v61 != v56)
      {
        continue;
      }
    }

    v17 = v52 + 1;
    if (v52 + 1 == v51)
    {
      return result;
    }

    goto LABEL_5;
  }

  v26 = 0;
  v27 = v18[25];
  while (1)
  {
    v28 = *(v21 + v26);
    if (v28 <= 1)
    {
      if (*(v21 + v26))
      {
        v29 = 0x726576726573;
      }

      else
      {
        v29 = 0x746C7561666564;
      }

      if (*(v21 + v26))
      {
        v30 = 0xE600000000000000;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      if (v27 > 1)
      {
LABEL_25:
        v31 = 0x6166654472657375;
        if (v27 != 3)
        {
          v31 = 0x5365636976726573;
        }

        v32 = 0xEF73676E69747465;
        if (v27 == 3)
        {
          v32 = 0xEC00000073746C75;
        }

        if (v27 == 2)
        {
          v33 = 0x73656C6F72;
        }

        else
        {
          v33 = v31;
        }

        if (v27 == 2)
        {
          v34 = 0xE500000000000000;
        }

        else
        {
          v34 = v32;
        }

        if (v29 != v33)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else if (v28 == 2)
    {
      v30 = 0xE500000000000000;
      v29 = 0x73656C6F72;
      if (v27 > 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v28 == 3)
      {
        v29 = 0x6166654472657375;
      }

      else
      {
        v29 = 0x5365636976726573;
      }

      if (v28 == 3)
      {
        v30 = 0xEC00000073746C75;
      }

      else
      {
        v30 = 0xEF73676E69747465;
      }

      if (v27 > 1)
      {
        goto LABEL_25;
      }
    }

    if (!v27)
    {
      break;
    }

    v34 = 0xE600000000000000;
    if (v29 == 0x726576726573)
    {
      goto LABEL_42;
    }

LABEL_43:
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_48;
    }

    if (v19 == ++v26)
    {
      v26 = 0;
      goto LABEL_48;
    }
  }

  v34 = 0xE700000000000000;
  if (v29 != 0x746C7561666564)
  {
    goto LABEL_43;
  }

LABEL_42:
  if (v30 != v34)
  {
    goto LABEL_43;
  }

LABEL_48:
  v36 = 0;
  v37 = v13[25];
  while (2)
  {
    if (v19 != v36)
    {
      v38 = *(v21 + v36);
      if (v38 <= 1)
      {
        if (*(v21 + v36))
        {
          v39 = 0x726576726573;
        }

        else
        {
          v39 = 0x746C7561666564;
        }

        if (*(v21 + v36))
        {
          v40 = 0xE600000000000000;
        }

        else
        {
          v40 = 0xE700000000000000;
        }

        if (v37 > 1)
        {
          goto LABEL_67;
        }

LABEL_80:
        if (v37)
        {
          v44 = 0xE600000000000000;
          if (v39 != 0x726576726573)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v44 = 0xE700000000000000;
          if (v39 != 0x746C7561666564)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        if (v38 == 2)
        {
          v40 = 0xE500000000000000;
          v39 = 0x73656C6F72;
          if (v37 <= 1)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v38 == 3)
          {
            v39 = 0x6166654472657375;
          }

          else
          {
            v39 = 0x5365636976726573;
          }

          if (v38 == 3)
          {
            v40 = 0xEC00000073746C75;
          }

          else
          {
            v40 = 0xEF73676E69747465;
          }

          if (v37 <= 1)
          {
            goto LABEL_80;
          }
        }

LABEL_67:
        v41 = 0x6166654472657375;
        if (v37 != 3)
        {
          v41 = 0x5365636976726573;
        }

        v42 = 0xEF73676E69747465;
        if (v37 == 3)
        {
          v42 = 0xEC00000073746C75;
        }

        if (v37 == 2)
        {
          v43 = 0x73656C6F72;
        }

        else
        {
          v43 = v41;
        }

        if (v37 == 2)
        {
          v44 = 0xE500000000000000;
        }

        else
        {
          v44 = v42;
        }

        if (v39 != v43)
        {
LABEL_85:
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            goto LABEL_89;
          }

          if (v19 == ++v36)
          {
            v36 = 0;
LABEL_89:
            v13 = v53;
            goto LABEL_90;
          }

          continue;
        }
      }

      if (v40 == v44)
      {

        goto LABEL_89;
      }

      goto LABEL_85;
    }

    break;
  }

  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

Swift::Int sub_101078A94(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DefaultConfigurationLayer(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(type metadata accessor for DefaultConfigurationLayer(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_101077480(v10, v11, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_101078518(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_101078C18(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DefaultConfigurationLayer(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100B32034(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_101078A94(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void *sub_101078D00(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C5098, &qword_1013FDEA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_101078EBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016C50A8, &qword_1013FDEA8);
    sub_101078F10(&qword_1016C50B0, &qword_1016C50B8, &unk_1013C5680, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_101078EBC()
{
  result = qword_1016C50A0;
  if (!qword_1016C50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C50A0);
  }

  return result;
}

uint64_t sub_101078F10(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C50A8, &qword_1013FDEA8);
    sub_101078F98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101078F98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultConfigurationLayer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101078FF0()
{
  result = qword_1016C5108;
  if (!qword_1016C5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5108);
  }

  return result;
}

unint64_t sub_101079048()
{
  result = qword_1016C5110;
  if (!qword_1016C5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5110);
  }

  return result;
}

unint64_t sub_1010790A0()
{
  result = qword_1016C5118;
  if (!qword_1016C5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5118);
  }

  return result;
}

uint64_t sub_1010790F8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C5128, &qword_1013FF6F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10107999C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1010792D8()
{
  v1 = *v0;
  v2 = 1684628325;
  v3 = 0x754E6C6169726573;
  v4 = 0x49746375646F7270;
  if (v1 != 3)
  {
    v4 = 0x6449726F646E6576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x644970696863;
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

uint64_t sub_101079374@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101079B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10107939C(uint64_t a1)
{
  v2 = sub_10107999C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010793D8(uint64_t a1)
{
  v2 = sub_10107999C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_101079450(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v44 = v6;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v8 = v44;
  v9 = [objc_opt_self() currentDevice];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 serverFriendlyDescription];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = swift_isUniquelyReferenced_nonNull_native();
      *&v44 = v8;
      sub_100FFACA0(v12, v14, 0xD000000000000011, 0x800000010134EA40, v15);
      v16 = v44;
      Date.init()();
      v17 = Date.epoch.getter();
      (*(v3 + 8))(v5, v2);
      *&v44 = v17;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v44 = v16;
      sub_100FFACA0(v18, v20, 0xD000000000000015, 0x800000010134EA60, v21);
      v22 = v44;
      *&v44 = 1;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *&v44 = v22;
      sub_100FFACA0(v23, v25, 0xD000000000000013, 0x800000010134EA80, v26);
      v27 = v44;
      v29 = sub_1008D9A78(v28);
      v31 = v30;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v44 = v27;
      sub_100FFACA0(v29, v31, 0x6567412D72657355, 0xEA0000000000746ELL, v32);
      v33 = Data.hexString.getter();
      v35 = v34;
      v36 = Data.hexString.getter();
      v37 = *(a1 + 32);
      v38 = *(a1 + 40);
      *&v44 = v33;
      *(&v44 + 1) = v35;
      *&v45 = v36;
      *(&v45 + 1) = v39;
      *&v46 = v37;
      *(&v46 + 1) = v38;
      v47 = *(a1 + 48);
      type metadata accessor for JSONEncoder();
      swift_allocObject();

      JSONEncoder.init()();
      v43[1] = v44;
      v43[2] = v45;
      v43[3] = v46;
      v43[4] = v47;
      sub_1010798F8();
      v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v42 = v41;

      sub_1004059C4(a1);
      sub_10107994C(&v44);

      sub_100017D5C(v40, v42);

      sub_100016590(v40, v42);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1010798F8()
{
  result = qword_1016C5120;
  if (!qword_1016C5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5120);
  }

  return result;
}

unint64_t sub_10107999C()
{
  result = qword_1016C5130;
  if (!qword_1016C5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5130);
  }

  return result;
}

unint64_t sub_101079A04()
{
  result = qword_1016C5138;
  if (!qword_1016C5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5138);
  }

  return result;
}

unint64_t sub_101079A5C()
{
  result = qword_1016C5140;
  if (!qword_1016C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5140);
  }

  return result;
}

unint64_t sub_101079AB4()
{
  result = qword_1016C5148;
  if (!qword_1016C5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5148);
  }

  return result;
}

uint64_t sub_101079B08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
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

uint64_t sub_101079CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *&v26 = a7;
  *(&v26 + 1) = a8;
  *&v25 = a5;
  *(&v25 + 1) = a6;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_1000E0A3C();
  v35 = a1;
  v36 = a2;
  *&v43 = 0;
  *(&v43 + 1) = DataProtocol.intValue.getter();
  *&v44 = DataProtocol.intValue.getter();
  *(&v44 + 1) = &off_101608C80;
  v45 = v25;
  *&v46 = a11;
  *(&v46 + 1) = 1;
  v47 = v26;
  v40 = v46;
  v41 = v26;
  v37 = v43;
  v38 = v44;
  v39 = v25;
  v48 = a9;
  v31 = v25;
  v32 = v46;
  v42 = a9;
  v33 = v26;
  v34 = a9;

  sub_100017D5C(v26, *(&v26 + 1));
  sub_100017D5C(a9, *(&a9 + 1));
  sub_10016517C();
  v28 = a10;
  v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v29 = v13;
  v30 = v14;
  v15 = v14;
  sub_100017D5C(a10, *(&a10 + 1));
  sub_1001651D0();
  v27 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C548);
  sub_1001650CC(&v43, &v28);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  sub_100165128(&v43);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v28 = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_10107D964();
    v23 = sub_1000136BC(v21, v22, &v28);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "baaRKProps = %{private,mask.hash}s", v19, 0x16u);
    sub_100007BAC(v20);

    sub_100165128(&v43);
    sub_100016590(a10, *(&a10 + 1));
    sub_100016590(v13, v15);
  }

  else
  {
    sub_100016590(a10, *(&a10 + 1));
    sub_100016590(v13, v15);

    sub_100165128(&v43);
  }

  return v27;
}

uint64_t sub_10107A1C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C548);
  sub_1000076D4(v0, qword_10177C548);
  return Logger.init(subsystem:category:)();
}

uint64_t DeviceIdentitySignature.leafCertificate.getter()
{
  v1 = *(v0 + 16);
  sub_10002E98C(v1, *(v0 + 24));
  return v1;
}

uint64_t DeviceIdentitySignature.intermediateCertificate.getter()
{
  v1 = *(v0 + 32);
  sub_10002E98C(v1, *(v0 + 40));
  return v1;
}

uint64_t DeviceIdentitySignature.encodedCerts.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeviceIdentityUtility.signDataWithDeviceIdentity(dataToSign:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return _swift_task_switch(sub_10107A308, v3, 0);
}

uint64_t sub_10107A308()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_10107A3B0;

  return sub_100526FA4(v0 + 80, v1);
}

uint64_t sub_10107A3B0()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_10107A4C0, v1, 0);
}

uint64_t sub_10107A4C0()
{
  if (*(v0 + 122))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_10107A60C;

    return sub_10107AD50(v2, v3, v4, v5, v6, v1);
  }

  else
  {
    sub_10107AA40(v0 + 80);
    sub_10107AA94();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10107A60C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[22] = a1;
  v6[23] = a2;
  v6[24] = v2;

  if (v2)
  {
    v8 = v6[19];

    return _swift_task_switch(sub_10107A978, v8, 0);
  }

  else
  {
    sub_10107AA40((v6 + 10));
    v9 = swift_task_alloc();
    v6[25] = v9;
    *v9 = v7;
    v9[1] = sub_10107A7B8;
    v10 = v6[18];
    v11 = v6[17];

    return sub_10107C1E4((v6 + 2), v11, v10, a1, a2);
  }
}

uint64_t sub_10107A7B8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);

  if (v0)
  {
    v4 = sub_10107A9DC;
  }

  else
  {
    v4 = sub_10107A900;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10107A900()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10107A978()
{
  sub_10107AA40(v0 + 80);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10107A9DC()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10107AA94()
{
  result = qword_1016C5158;
  if (!qword_1016C5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5158);
  }

  return result;
}

uint64_t sub_10107AAE8()
{
  v1 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  swift_beginAccess();
  sub_1000D3410(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000B3A8(v3, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    static Date.trustedNow.getter(v8);
    v12 = static Date.< infix(_:_:)();
    v13 = *(v5 + 8);
    v13(v8, v4);
    if ((v12 & 1) != 0 && (v14 = *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey)) != 0)
    {
      v15 = *(*(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) + 16);
      v16 = *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey);
      v17 = v14;
      v13(v10, v4);
      if (v15 == 2)
      {

        return v16;
      }
    }

    else
    {
      v13(v10, v4);
    }
  }

  return 0;
}

uint64_t sub_10107AD50(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 696) = v6;
  *(v7 + 688) = a6;
  *(v7 + 680) = a5;
  *(v7 + 672) = a4;
  *(v7 + 664) = a3;
  *(v7 + 777) = a2;
  *(v7 + 656) = a1;
  v8 = type metadata accessor for Date();
  *(v7 + 704) = v8;
  *(v7 + 712) = *(v8 - 8);
  *(v7 + 720) = swift_task_alloc();
  *(v7 + 728) = swift_task_alloc();

  return _swift_task_switch(sub_10107AE34, v6, 0);
}

uint64_t sub_10107AE34()
{
  v53 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 632) = 0x7365547265646E75;
  *(v0 + 640) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 776))
  {
    sub_10107AA94();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = sub_10107AAE8();
  if (v5)
  {
    v7 = v5;
    v8 = v6;

    v9 = *(v0 + 8);

    return v9(v7, v8);
  }

  v10 = *(v0 + 656);
  static Date.trustedNow.getter(*(v0 + 720));
  if ((v10 * 60) >> 64 == (60 * v10) >> 63)
  {
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v13 = *(v0 + 704);
    v14 = *(v0 + 777);
    v15 = *(v0 + 656);
    Date.addingTimeInterval(_:)();
    v16 = *(v12 + 8);
    *(v0 + 736) = v16;
    *(v0 + 744) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v11, v13);
    *(v0 + 648) = _swiftEmptyDictionarySingleton;
    *(v0 + 584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 592) = v17;
    AnyHashable.init<A>(_:)();
    *(v0 + 304) = &type metadata for Int;
    *(v0 + 280) = v15;
    sub_1001E6224((v0 + 280), (v0 + 312));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = _swiftEmptyDictionarySingleton;
    sub_100FFAB54((v0 + 312), v0 + 96, isUniquelyReferenced_nonNull_native);
    sub_100476E48(v0 + 96);
    if (v14 == 1)
    {
      *(v0 + 616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 624) = v19;
      AnyHashable.init<A>(_:)();
      sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10138BBE0;
      *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 40) = v21;
      *(v20 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 56) = v22;
      *(v0 + 240) = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
      *(v0 + 216) = v20;
      sub_1001E6224((v0 + 216), (v0 + 440));
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = _swiftEmptyDictionarySingleton;
      sub_100FFAB54((v0 + 440), v0 + 56, v23);
      sub_100476E48(v0 + 56);
    }

    v1 = v0 + 648;
    v24 = *(v0 + 688);
    v25 = *(v0 + 680);
    v26 = *(v0 + 672);
    v27 = *(v0 + 664);
    *(v0 + 568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 576) = v28;
    AnyHashable.init<A>(_:)();
    *(v0 + 400) = &type metadata for String;
    *(v0 + 376) = v27;
    *(v0 + 384) = v26;
    sub_1001E6224((v0 + 376), (v0 + 408));

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFAB54((v0 + 408), v0 + 136, v29);
    sub_100476E48(v0 + 136);
    *(v0 + 536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 544) = v30;
    AnyHashable.init<A>(_:)();
    *(v0 + 496) = &type metadata for String;
    *(v0 + 472) = v25;
    *(v0 + 480) = v24;
    sub_1001E6224((v0 + 472), (v0 + 504));

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFAB54((v0 + 504), v0 + 176, v31);
    sub_100476E48(v0 + 176);
    *(v0 + 552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 560) = v32;
    AnyHashable.init<A>(_:)();
    *(v0 + 368) = &type metadata for Int;
    *(v0 + 344) = 1;
    sub_1001E6224((v0 + 344), (v0 + 248));
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = _swiftEmptyDictionarySingleton;
    sub_100FFAB54((v0 + 248), v0 + 16, v33);
    sub_100476E48(v0 + 16);
    *(v0 + 648) = _swiftEmptyDictionarySingleton;
    if (qword_1016951C0 == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_15:
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177C548);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v0 + 696);
    v38 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v38 = 136446466;
    v39 = sub_100526E1C(*(v37 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType));
    v41 = sub_1000136BC(v39, v40, v52);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;

    v42 = Dictionary.description.getter();
    v44 = v43;

    v45 = sub_1000136BC(v42, v44, v52);

    *(v38 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "Getting %{public}s attestation certs and key with options - %s.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v46 = *(v0 + 728);
  v47 = *(v0 + 696);
  v48 = sub_10107E0C8(&qword_1016C52E8, type metadata accessor for DeviceIdentityUtility, &protocol conformance descriptor for DeviceIdentityUtility);
  v49 = swift_task_alloc();
  *(v0 + 752) = v49;
  v49[2] = v1;
  v49[3] = v47;
  v49[4] = v46;
  v50 = swift_task_alloc();
  *(v0 + 760) = v50;
  v51 = sub_1000BC4D4(&qword_1016C52F0, &qword_1013FFB80);
  *v50 = v0;
  v50[1] = sub_10107B608;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 600, v47, v48, 0xD000000000000062, 0x8000000101379490, sub_10107E110, v49, v51);
}

uint64_t sub_10107B608()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = *(v2 + 696);
    v4 = sub_10107B7E4;
  }

  else
  {
    v5 = *(v2 + 696);

    v4 = sub_10107B730;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10107B730()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[88];

  v4 = v0[75];
  v5 = v0[76];
  v1(v2, v3);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_10107B7E4()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[88];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_10107B894(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v20 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v19 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  swift_beginAccess();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v8 + 16))(v11, v20, v7);
  v12 = v4;
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v4);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v5 + 80) + v14 + 8) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v13, v11, v7);
  *(v16 + v14) = v23;
  (*(v5 + 32))(v16 + v15, v19, v12);
  aBlock[4] = sub_10107E11C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10107C130;
  aBlock[3] = &unk_101662F68;
  v17 = _Block_copy(aBlock);

  v18 = isa;
  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v17);
}

void sub_10107BB90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = objc_autoreleasePoolPush();
  if (a3)
  {
    swift_errorRetain();
    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C548);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "DeviceIdentityUtility: Unable to get attestation certs and key. Error - %{public}@.", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }

    v62 = a3;
    goto LABEL_7;
  }

  if (!a1)
  {
    sub_10107AA94();
    v36 = swift_allocError();
    *v37 = 0;
    v62 = v36;
LABEL_7:
    sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
    CheckedContinuation.resume(throwing:)();
LABEL_8:
    objc_autoreleasePoolPop(v15);
    return;
  }

  if (!a2 || *(a2 + 16) != 2 || (v22 = sub_100514740(a2)) == 0)
  {
    sub_10107AA94();
    v34 = swift_allocError();
    *v35 = 1;
    v62 = v34;
    sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
    CheckedContinuation.resume(throwing:)();

    goto LABEL_8;
  }

  v56 = a6;
  v60 = a4;
  v58 = a1;
  if (v22 >> 62)
  {
    v54 = v22;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v54;
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v15;
  v57 = a5;
  v61 = v22;
  if (!v23)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_28:

    v38 = type metadata accessor for Date();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v14, v56, v38);
    (*(v39 + 56))(v14, 0, 1, v38);
    v40 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v41 = v57;
    swift_beginAccess();
    sub_1008CCF08(v14, v41 + v40);
    swift_endAccess();
    *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = v25;

    v42 = *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey);
    v43 = v58;
    *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = v58;
    v44 = v43;

    v62 = v44;
    v63 = v25;
    sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
    CheckedContinuation.resume(returning:)();
    v15 = v59;
    goto LABEL_8;
  }

  if (v23 >= 1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      v25 = _swiftEmptyArrayStorage;
      do
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = SecCertificateCopyData(v26);
        v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100A5B734(0, *(v25 + 2) + 1, 1, v25);
        }

        v32 = *(v25 + 2);
        v31 = *(v25 + 3);
        if (v32 >= v31 >> 1)
        {
          v25 = sub_100A5B734((v31 > 1), v32 + 1, 1, v25);
        }

        ++v24;

        swift_unknownObjectRelease();
        *(v25 + 2) = v32 + 1;
        v33 = &v25[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
      }

      while (v23 != v24);
    }

    else
    {
      v45 = (v22 + 32);
      v25 = _swiftEmptyArrayStorage;
      do
      {
        v46 = *v45;
        v47 = SecCertificateCopyData(v46);
        v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100A5B734(0, *(v25 + 2) + 1, 1, v25);
        }

        v52 = *(v25 + 2);
        v51 = *(v25 + 3);
        if (v52 >= v51 >> 1)
        {
          v25 = sub_100A5B734((v51 > 1), v52 + 1, 1, v25);
        }

        *(v25 + 2) = v52 + 1;
        v53 = &v25[16 * v52];
        *(v53 + 4) = v48;
        *(v53 + 5) = v50;
        ++v45;
        --v23;
      }

      while (v23);
    }

    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_10107C130(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_10107C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for HashAlgorithm();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_10107C2D8, v5, 0);
}

uint64_t sub_10107C2D8()
{
  v33 = v0;
  if (*(*(v0 + 176) + 16) == 2)
  {
    v1 = *(v0 + 168);
    *(v0 + 120) = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    Signature = SecKeyCreateSignature(v1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, (v0 + 120));
    *(v0 + 216) = Signature;

    if (Signature)
    {
      v4 = *(*(v0 + 184) + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType);
      v5 = swift_task_alloc();
      *(v0 + 224) = v5;
      *v5 = v0;
      v5[1] = sub_10107C808;

      return sub_100526FA4(v0 + 72, v4);
    }

    v10 = *(v0 + 120);
    if (v10)
    {
      type metadata accessor for CFError(0);
      sub_10107E0C8(&qword_1016B47F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
      swift_allocError();
      *v11 = v10;
      if (qword_1016951C0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C548);

      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 184);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v32 = v18;
        *v16 = 136446466;
        v19 = sub_100526E1C(*(v15 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType));
        v21 = sub_1000136BC(v19, v20, &v32);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2114;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v22;
        *v17 = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "Unable to sign the %{public}s data. Error - %{public}@.", v16, 0x16u);
        sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v18);
      }

      goto LABEL_8;
    }

    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C548);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 184);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136446210;
      v29 = sub_100526E1C(*(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType));
      v31 = sub_1000136BC(v29, v30, &v32);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to sign the %{public}s data.", v27, 0xCu);
      sub_100007BAC(v28);
    }

    sub_10107AA94();
    swift_allocError();
    v8 = 2;
  }

  else
  {
    sub_10107AA94();
    swift_allocError();
    v8 = 1;
  }

  *v7 = v8;
LABEL_8:
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10107C808()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_10107C944, v1, 0);
}

uint64_t sub_10107C944()
{
  sub_10107AA40(v0 + 72);
  if ((*(v0 + 113) & 1) == 0)
  {
    v16 = *(v0 + 176);
    v17 = v16[4];
    v18 = v16[5];
    v19 = v16[6];
    v20 = v16[7];
    sub_100017D5C(v17, v18);
    sub_100017D5C(v19, v20);
    v40 = 0;
    v41 = 0;
LABEL_4:
    v21 = *(v0 + 144);
    v22 = *(v0 + 216);
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *v21 = v23;
    v21[1] = v25;
    v21[2] = v17;
    v21[3] = v18;
    v21[4] = v19;
    v21[5] = v20;
    v21[6] = v41;
    v21[7] = v40;

    v26 = *(v0 + 8);
    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v4[4];
  v7 = v4[5];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = v4[6];
  v9 = v4[7];
  (*(v2 + 104))(v1, enum case for HashAlgorithm.sha256(_:), v3);
  sub_100017D5C(v6, v7);
  sub_100017D5C(v8, v9);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  sub_100016590(v8, v9);
  (*(v2 + 8))(v1, v3);
  *(v5 + 48) = v10;
  *(v5 + 56) = v12;
  sub_1000BC4D4(&qword_1016C52C8, &qword_1013FFB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x7374726563;
  v14 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v5;
  v15 = sub_100907E5C(inited);
  swift_setDeallocating();
  sub_10000B3A8(v14, &qword_1016C52D0, &qword_1013FFB68);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *(v0 + 128) = v15;
  sub_1000BC4D4(&qword_1016C52D8, &unk_1013FFB70);
  sub_10107E03C();
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v30 = v29;

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 136) = 0;
  v32 = [(objc_class *)isa compressedDataUsingAlgorithm:3 error:v0 + 136];

  v33 = *(v0 + 136);
  if (v32)
  {
    v34 = v33;
    v35 = [v32 base64EncodedStringWithOptions:0];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v37;
    v41 = v36;

    sub_100016590(v28, v30);

    v19 = 0;
    v17 = 0;
    v20 = 0xF000000000000000;
    v18 = 0xF000000000000000;
    goto LABEL_4;
  }

  v38 = *(v0 + 216);
  v39 = v33;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100016590(v28, v30);

  v26 = *(v0 + 8);
LABEL_5:

  return v26();
}

uint64_t DeviceIdentityUtility.deinit()
{
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, &unk_101696900, &unk_10138B1E0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DeviceIdentityUtility.__deallocating_deinit()
{
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, &unk_101696900, &unk_10138B1E0);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10107CE00(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v9 = sub_1000BC4D4(&qword_1016C5310, &qword_1013FFE40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_10107E338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v16, v17);
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_100017D5C(v14, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10107CFC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10107D01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DeviceIdentityUtility(uint64_t a1)
{
  result = qword_1016C51A0;
  if (!qword_1016C51A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10107D0E4(uint64_t a1)
{
  sub_100157BAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10107D1B4()
{
  result = qword_1016C52C0;
  if (!qword_1016C52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C52C0);
  }

  return result;
}

uint64_t sub_10107D208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265706F72504B52;
  }

  else
  {
    v3 = 0x6669747265434B52;
  }

  if (v2)
  {
    v4 = 0xEF6E6F6974616369;
  }

  else
  {
    v4 = 0xEC00000073656974;
  }

  if (*a2)
  {
    v5 = 0x7265706F72504B52;
  }

  else
  {
    v5 = 0x6669747265434B52;
  }

  if (*a2)
  {
    v6 = 0xEC00000073656974;
  }

  else
  {
    v6 = 0xEF6E6F6974616369;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10107D2C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10107D35C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10107D3E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10107D474@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AB48, *a1);

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

void sub_10107D4D4(uint64_t *a1@<X8>)
{
  v2 = 0x6669747265434B52;
  if (*v1)
  {
    v2 = 0x7265706F72504B52;
  }

  v3 = 0xEF6E6F6974616369;
  if (*v1)
  {
    v3 = 0xEC00000073656974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10107D528()
{
  if (*v0)
  {
    return 0x7265706F72504B52;
  }

  else
  {
    return 0x6669747265434B52;
  }
}

uint64_t sub_10107D578@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160AB48, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10107D5DC(uint64_t a1)
{
  v2 = sub_10107E338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10107D618(uint64_t a1)
{
  v2 = sub_10107E338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10107D674(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x747265434143;
    v6 = 0x6843657571696E55;
    if (a1 != 2)
    {
      v6 = 0x6E496F545344494FLL;
    }

    if (a1)
    {
      v5 = 0x444970696843;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6275504B4953;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6574744174726373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x754E6C6169726553;
    if (a1 != 4)
    {
      v3 = 0x79746964696C6156;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10107D7B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076F154(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10107D808(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10076F154(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_10107D84C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10107E5BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10107D87C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10107D674(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10107D8C4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10107E5BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10107D8EC(uint64_t a1)
{
  v2 = sub_10107E2E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10107D928(uint64_t a1)
{
  v2 = sub_10107E2E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10107D964()
{
  _StringGuts.grow(_:)(114);
  v1._countAndFlagsBits = 0x3A7472654361633CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A64497069686320;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A6469636520;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x497463656A626F20;
  v7._object = 0xEC000000203A7364;
  String.append(_:)(v7);
  v8._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x4E6C616972657320;
  v9._object = 0xEF203A7265626D75;
  String.append(_:)(v9);
  String.append(_:)(v0[2]);
  v10._object = 0x8000000101379470;
  v10._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x4B6D657473797320;
  v12._object = 0xEF203A6275507965;
  String.append(_:)(v12);
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v14 = v0[4]._object >> 62;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_9;
    }

    v15 = countAndFlagsBits + 16;
    countAndFlagsBits = *(countAndFlagsBits + 16);
    if (!__OFSUB__(*(v15 + 8), countAndFlagsBits))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v14)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(countAndFlagsBits), countAndFlagsBits))
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x5079654B66657220;
  v17._object = 0xEC000000203A6275;
  String.append(_:)(v17);
  v18 = v0[5]._countAndFlagsBits;
  v19 = v0[5]._object >> 62;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_17;
    }

    v22 = v18 + 16;
    v20 = *(v18 + 16);
    v21 = *(v22 + 8);
    v23 = __OFSUB__(v21, v20);
    v18 = v21 - v20;
    if (!v23)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v19)
  {
    goto LABEL_17;
  }

  if (!__OFSUB__(HIDWORD(v18), v18))
  {
LABEL_17:
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 62;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_10107DCCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5300, &qword_1013FFE38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_10107E2E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v13 = *(v3 + 24);
    v11[0] = 3;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 64);
    v13 = *(v3 + 64);
    v12 = 6;
    sub_1001022C4(&v15, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 80);
    v14 = v13;
    v12 = 7;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10107E03C()
{
  result = qword_1016C52E0;
  if (!qword_1016C52E0)
  {
    sub_1000BC580(&qword_1016C52D8, &unk_1013FFB70);
    sub_1002DE008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C52E0);
  }

  return result;
}

uint64_t sub_10107E0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10107E11C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v3 + v9);
  v12 = v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80));

  sub_10107BB90(a1, a2, a3, v3 + v8, v11, v12);
}

uint64_t sub_10107E234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10107E27C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10107E2E4()
{
  result = qword_1016C5308;
  if (!qword_1016C5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5308);
  }

  return result;
}

unint64_t sub_10107E338()
{
  result = qword_1016C5318;
  if (!qword_1016C5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5318);
  }

  return result;
}

unint64_t sub_10107E3B0()
{
  result = qword_1016C5320;
  if (!qword_1016C5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5320);
  }

  return result;
}

unint64_t sub_10107E408()
{
  result = qword_1016C5328;
  if (!qword_1016C5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5328);
  }

  return result;
}

unint64_t sub_10107E460()
{
  result = qword_1016C5330;
  if (!qword_1016C5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5330);
  }

  return result;
}

unint64_t sub_10107E4B8()
{
  result = qword_1016C5338;
  if (!qword_1016C5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5338);
  }

  return result;
}

unint64_t sub_10107E510()
{
  result = qword_1016C5340;
  if (!qword_1016C5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5340);
  }

  return result;
}

unint64_t sub_10107E568()
{
  result = qword_1016C5348;
  if (!qword_1016C5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5348);
  }

  return result;
}

unint64_t sub_10107E5BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A440, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10107E618(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessagingMessageContext(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a1)
    {
      v28 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        v51 = v28;
        swift_once();
        v28 = v51;
      }

      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C378, "BUG: Did not expect to receive a .updateSharedKeys message on non-watchOS platform!", 83, 2, _swiftEmptyArrayStorage);
    }

    if (a1 == 1)
    {
      v20 = Strong;
      if (v57 != 1)
      {
        v29 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v30 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_10138BBE0;
        LOBYTE(aBlock) = 1;
        v32 = String.init<A>(describing:)();
        v34 = v33;
        *(v31 + 56) = &type metadata for String;
        v35 = sub_100008C00();
        *(v31 + 32) = v32;
        *(v31 + 40) = v34;
        *(v31 + 96) = &type metadata for Int;
        *(v31 + 104) = &protocol witness table for Int;
        v36 = v57;
        *(v31 + 64) = v35;
        *(v31 + 72) = v36;
        os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Unsupported version of %@: %d", 29, 2, v31);
      }

      sub_100D2577C(a5, &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      sub_100476E9C(v18, v22 + v21);
      v63 = sub_10107EF14;
      v64 = v22;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_100006684;
      v62 = &unk_1016632C8;
      v23 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v24 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);
    }

    else
    {
      v52 = Strong;
      if (v57 != 1)
      {
        v37 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v38 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10138BBE0;
        LOBYTE(aBlock) = 2;
        v40 = String.init<A>(describing:)();
        v42 = v41;
        *(v39 + 56) = &type metadata for String;
        v43 = sub_100008C00();
        *(v39 + 32) = v40;
        *(v39 + 40) = v42;
        *(v39 + 96) = &type metadata for Int;
        *(v39 + 104) = &protocol witness table for Int;
        v44 = v57;
        *(v39 + 64) = v43;
        *(v39 + 72) = v44;
        os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Unsupported version of %@: %d", 29, 2, v39);
      }

      v45 = sub_100594D14(2, 1, a3, a4);
      sub_100D2577C(a5, &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v47 = (v17 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = v52;
      sub_100476E9C(v18, v48 + v46);
      *(v48 + v47) = v45;
      v63 = sub_10107EF0C;
      v64 = v48;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_100006684;
      v62 = &unk_101663278;
      v49 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v24 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);
    }

    (*(v55 + 8))(v11, v24);
    (*(v53 + 8))(v14, v54);
  }

  v25 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    v50 = v25;
    swift_once();
    v25 = v50;
  }

  v26 = qword_10177C378;

  return os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Ignoring incoming message because there is no manager", 53, 2, _swiftEmptyArrayStorage);
}

unint64_t sub_10107EF90(uint64_t a1)
{
  *(a1 + 8) = sub_1001DA81C();
  result = sub_1009A0330();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10107EFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10107F070(uint64_t a1)
{
  v2 = sub_10107F6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10107F0AC(uint64_t a1)
{
  v2 = sub_10107F6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10107F0E8(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C5358, &qword_101400340);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_10107F6EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_10107F224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v8;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v10 = v39;
  v11 = [objc_opt_self() currentDevice];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 serverFriendlyDescription];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v10;
      sub_100FFACA0(v14, v16, 0xD000000000000011, 0x800000010134EA40, v17);
      v18 = v39;
      Date.init()();
      v19 = Date.epoch.getter();
      (*(v5 + 8))(v7, v4);
      v39 = v19;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v18;
      sub_100FFACA0(v20, v22, 0xD000000000000015, 0x800000010134EA60, v23);
      v24 = v39;
      v39 = 1;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v24;
      sub_100FFACA0(v25, v27, 0xD000000000000013, 0x800000010134EA80, v28);
      v29 = v39;
      v31 = sub_1008D9A78(v30);
      v33 = v32;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v29;
      sub_100FFACA0(v31, v33, 0x6567412D72657355, 0xEA0000000000746ELL, v34);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v39 = a1;
      v40 = a2;
      sub_10107F678();
      v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v37 = v36;

      sub_100017D5C(v35, v37);

      sub_100016590(v35, v37);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10107F678()
{
  result = qword_1016C5350;
  if (!qword_1016C5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5350);
  }

  return result;
}

unint64_t sub_10107F6EC()
{
  result = qword_1016C5360;
  if (!qword_1016C5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5360);
  }

  return result;
}

unint64_t sub_10107F754()
{
  result = qword_1016C5368;
  if (!qword_1016C5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5368);
  }

  return result;
}

unint64_t sub_10107F7AC()
{
  result = qword_1016C5370;
  if (!qword_1016C5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5370);
  }

  return result;
}

unint64_t sub_10107F804()
{
  result = qword_1016C5378;
  if (!qword_1016C5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5378);
  }

  return result;
}

uint64_t sub_10107F858()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();

  sub_1010749FC(v3);
  v1 = v0;

  qword_1016C5380 = v1;
  return result;
}

uint64_t sub_10107F924(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v2[5] = type metadata accessor for MemberSharingCircle(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10107F9E0, 0, 0);
}

uint64_t sub_10107F9E0()
{
  v32 = v0;
  v1 = v0[2];
  if (*(v1 + *(v0[5] + 40)))
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v2[7];
    v5 = v2[9];
    v6 = sub_1000035D0(v2 + 4, v4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_10107FF78;
    v8 = v0[2];

    return sub_101081B18(v8, v6, v3, v4, v5);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v10 = v0[6];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177A560);
    sub_101083C44(v1, v10, type metadata accessor for MemberSharingCircle);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[6];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_101084A78(v15, type metadata accessor for MemberSharingCircle);
      v21 = sub_1000136BC(v18, v20, &v31);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received tentative revoke for unaccepted sharingCircle %{private,mask.hash}s.", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      sub_101084A78(v15, type metadata accessor for MemberSharingCircle);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[7] = Strong;
    if (Strong)
    {
      v23 = v0[5];
      v24 = v0[2];
      v25 = *(v0[3] + 24);
      ObjectType = swift_getObjectType();
      v27 = *(v23 + 28);
      v30 = (*(v25 + 8) + **(v25 + 8));
      v28 = swift_task_alloc();
      v0[8] = v28;
      *v28 = v0;
      v28[1] = sub_10107FE34;

      return v30(v24 + v27, ObjectType, v25);
    }

    else
    {

      v29 = v0[1];

      return v29();
    }
  }
}

uint64_t sub_10107FE34()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10108080C, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10107FF78(char a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_101080078, 0, 0);
}

uint64_t sub_101080078()
{
  if (*(v0 + 128) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 88) = Strong;
    v2 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    if (Strong)
    {
      v5 = v3[3];
      ObjectType = swift_getObjectType();
      v7 = *(v2 + 28);
      v14 = (*(v5 + 8) + **(v5 + 8));
      v8 = swift_task_alloc();
      *(v0 + 96) = v8;
      *v8 = v0;
      v8[1] = sub_1010802F8;

      return v14(v4 + v7, ObjectType, v5);
    }

    else
    {
      v12 = *(v2 + 24);
      sub_1000035D0(v3 + 4, v3[7]);
      type metadata accessor for BeaconObservationStore(0);
      sub_1007ADFFC(v4 + v12, sub_101084AD8, 0);

      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_1010804E8;
    v11 = *(v0 + 16);

    return sub_10108240C(v11, 4);
  }
}

uint64_t sub_1010802F8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1010809BC;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_101080414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101080414()
{
  v1 = v0[2];
  v2 = *(v0[5] + 24);
  sub_1000035D0((v0[3] + 32), *(v0[3] + 56));
  type metadata accessor for BeaconObservationStore(0);
  sub_1007ADFFC(v1 + v2, sub_101084AD8, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010804E8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_101080664;
  }

  else
  {
    v2 = sub_1010805FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010805FC()
{
  sub_101080B6C(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101080664()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share revoke handling %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10108080C()
{
  swift_unknownObjectRelease();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share revoke handling %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1010809BC()
{
  swift_unknownObjectRelease();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share revoke handling %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_101080B6C(uint64_t *a1)
{
  v3 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v3);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v59 - v10;
  v11 = __chkstk_darwin(v9);
  v60 = &v59 - v12;
  __chkstk_darwin(v11);
  v64 = &v59 - v13;
  v14 = type metadata accessor for BeaconObservation(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  v20 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v59 - v24;
  v26 = *(v1 + 56);
  v63 = v1;
  sub_1000035D0((v1 + 32), v26);
  v61 = v3;
  v67 = *(v3 + 24);
  v27 = sub_100035730(a1 + v67, sub_1000BB4A4, 0);
  v28 = v27[2];
  v70 = a1;
  v66 = v25;
  if (!v28)
  {

    (*(v6 + 56))(v25, 1, 1, v5);
LABEL_10:
    v36 = v69;
    static Date.trustedNow.getter(v69);
    v37 = type metadata accessor for UUID();
    v38 = v68;
    (*(*(v37 - 8) + 16))(v68, a1 + v67, v37);
    v39 = *(v6 + 16);
    v39(v38 + *(v14 + 20), v36, v5);
    *(v38 + *(v14 + 24)) = 43;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177A560);
    v41 = v62;
    v39(v62, v36, v5);
    v42 = v65;
    sub_101083C44(a1, v65, type metadata accessor for MemberSharingCircle);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v71 = v64;
      *v45 = 136315651;
      sub_100019810(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = *(v6 + 8);
      v49(v41, v5);
      v50 = sub_1000136BC(v46, v48, &v71);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2160;
      *(v45 + 14) = 1752392040;
      *(v45 + 22) = 2081;
      sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = v65;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_101084A78(v51, type metadata accessor for MemberSharingCircle);
      v55 = sub_1000136BC(v52, v54, &v71);

      *(v45 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Store tentatively Revoked Date %s for %{private,mask.hash}s.", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_101084A78(v42, type metadata accessor for MemberSharingCircle);
      v49 = *(v6 + 8);
      v49(v41, v5);
    }

    v56 = v63;
    sub_1000035D0((v63 + 32), *(v63 + 56));
    type metadata accessor for BeaconObservationStore(0);
    sub_1007ADFFC(v70 + v67, sub_101084AD8, 0);
    sub_1000035D0((v56 + 32), *(v56 + 56));
    v57 = v68;
    sub_1007ADEC0(v68);
    sub_101084A78(v57, type metadata accessor for BeaconObservation);
    v49(v69, v5);
    v31 = v66;
    return sub_10000B3A8(v31, &unk_101696900, &unk_10138B1E0);
  }

  sub_101083C44(v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v19, type metadata accessor for BeaconObservation);

  (*(v6 + 16))(v25, &v19[*(v14 + 20)], v5);
  sub_101084A78(v19, type metadata accessor for BeaconObservation);
  (*(v6 + 56))(v25, 0, 1, v5);
  sub_1000D3410(v25, v23);
  v29 = *(v6 + 48);
  if (v29(v23, 1, v5) == 1)
  {
    v30 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v70, v64);
    objc_autoreleasePoolPop(v30);
    if (v29(v23, 1, v5) != 1)
    {
      sub_10000B3A8(v23, &unk_101696900, &unk_10138B1E0);
    }

    v31 = v66;
    v32 = v64;
  }

  else
  {
    v32 = v64;
    (*(v6 + 32))(v64, v23, v5);
    v31 = v66;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = v60;
  a1 = v70;
  sub_100E7AB5C(v70, v60);
  objc_autoreleasePoolPop(v33);
  LOBYTE(v33) = static Date.< infix(_:_:)();
  v35 = *(v6 + 8);
  v35(v34, v5);
  v35(v32, v5);
  if ((v33 & 1) != 0 || *(a1 + *(v61 + 40)) == 1)
  {
    goto LABEL_10;
  }

  return sub_10000B3A8(v31, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_10108147C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MemberSharingCircle(0);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_101081510, 0, 0);
}

uint64_t sub_101081510()
{
  v19 = v0;
  v1 = v0[2];
  if (*(v1 + *(v0[4] + 40)) == 4)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v2 = v0[5];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    sub_101083C44(v1, v2, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_101084A78(v7, type metadata accessor for MemberSharingCircle);
      v13 = sub_1000136BC(v10, v12, &v18);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up revoke state for circle %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {

      sub_101084A78(v7, type metadata accessor for MemberSharingCircle);
    }

    v16 = swift_task_alloc();
    v0[6] = v16;
    *v16 = v0;
    v16[1] = sub_10108180C;
    v17 = v0[2];

    return sub_10108240C(v17, 1);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10108180C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_101081958, 0, 0);
  }
}

uint64_t sub_101081958()
{
  v1 = v0[2];
  v2 = *(v0[4] + 24);
  sub_1000035D0((v0[3] + 32), *(v0[3] + 56));
  type metadata accessor for BeaconObservationStore(0);
  sub_1007ADFFC(v1 + v2, sub_101084AD8, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_101081A30()
{
  sub_100477574(v0 + 16);
  sub_100007BAC((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_101081A70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_1010834B4(a1);
}

uint64_t sub_101081B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a1;
  v5[9] = type metadata accessor for MemberSharingCircle(0);
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for BeaconObservation(0);
  v5[11] = v10;
  v5[12] = *(v10 - 8);
  v5[13] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v5[14] = v11;
  v5[15] = *(v11 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v12 = sub_1000280DC(v5 + 2);
  (*(*(a4 - 8) + 16))(v12, a2, a4);
  v13 = swift_task_alloc();
  v5[21] = v13;
  *v13 = v5;
  v13[1] = sub_101081D20;

  return sub_101083CAC(a1);
}

uint64_t sub_101081D20(char a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_101081E20, 0, 0);
}

uint64_t sub_101081E20()
{
  v51 = v0;
  if (*(v0 + 176))
  {
    v1 = 1;
    goto LABEL_11;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (*(v2 + *(v3 + 40)) != 4)
  {
    goto LABEL_10;
  }

  sub_1000035D0((v0 + 16), *(v0 + 40));
  v4 = sub_100035730(v2 + *(v3 + 24), sub_1000BB4A4, 0);
  if (!v4[2])
  {

    goto LABEL_10;
  }

  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(*(v0 + 96) + 80);
  sub_101083C44(v4 + ((v12 + 32) & ~v12), v10, type metadata accessor for BeaconObservation);

  v13 = *(v9 + 16);
  v13(v6, v10 + *(v11 + 20), v8);
  sub_101084A78(v10, type metadata accessor for BeaconObservation);
  (*(v9 + 32))(v5, v6, v8);
  static Date.trustedNow.getter(v7);
  Date.timeIntervalSince(_:)();
  v15 = v14;
  v16 = *(v9 + 8);
  v16(v7, v8);
  if (qword_1016951C8 != -1)
  {
    swift_once();
  }

  if (*&qword_1016C5380 > v15 || (v19 = *(v0 + 136), v20 = *(v0 + 64), v21 = objc_autoreleasePoolPush(), sub_100E7AB5C(v20, v19), objc_autoreleasePoolPop(v21), v22 = *(v0 + 136), v23 = *(v0 + 112), v24 = static Date.> infix(_:_:)(), v16(v22, v23), (v24 & 1) == 0))
  {
    v16(*(v0 + 160), *(v0 + 112));
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 160);
  v25 = *(v0 + 128);
  v26 = *(v0 + 112);
  v27 = *(v0 + 80);
  v28 = *(v0 + 64);
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177A560);
  sub_101083C44(v28, v27, type metadata accessor for MemberSharingCircle);
  v13(v25, v48, v26);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 160);
  v34 = *(v0 + 128);
  v35 = *(v0 + 112);
  v36 = *(v0 + 80);
  if (v32)
  {
    v49 = *(v0 + 160);
    v37 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v37 = 141558531;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    type metadata accessor for UUID();
    v47 = v31;
    sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    sub_101084A78(v36, type metadata accessor for MemberSharingCircle);
    v41 = sub_1000136BC(v38, v40, v50);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2082;
    sub_100019810(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v16(v34, v35);
    v45 = sub_1000136BC(v42, v44, v50);

    *(v37 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v30, v47, "    Delete share %{private,mask.hash}s,\n    tentativelyRevoked since %{public}s.", v37, 0x20u);
    swift_arrayDestroy();

    v46 = v49;
  }

  else
  {

    v16(v34, v35);
    sub_101084A78(v36, type metadata accessor for MemberSharingCircle);
    v46 = v33;
  }

  v16(v46, v35);
  v1 = 1;
LABEL_11:
  sub_100007BAC((v0 + 16));

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_10108240C(uint64_t a1, char a2)
{
  *(v2 + 128) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = type metadata accessor for MemberSharingCircle(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1010824E8, 0, 0);
}

uint64_t sub_1010824E8()
{
  v29 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + *(*(v0 + 24) + 40)) == *(v0 + 128))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = *(v0 + 32);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    sub_101083C44(v1, v2, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v7 = 136446723;
      v8 = 0xEB00000000646574;
      v9 = 0x70656363616E752ELL;
      v10 = 0xE500000000000000;
      v11 = 0x746E65732ELL;
      v12 = 0x800000010134B830;
      v13 = 0xD000000000000013;
      if (v6 != 4)
      {
        v13 = 0x64656C6961662ELL;
        v12 = 0xE700000000000000;
      }

      if (v6 != 3)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0xE900000000000064;
      v15 = 0x657470656363612ELL;
      if (v6 != 1)
      {
        v15 = 0x747365757165722ELL;
        v14 = 0xEA00000000006465;
      }

      if (v6)
      {
        v9 = v15;
        v8 = v14;
      }

      if (v6 <= 2)
      {
        v16 = v9;
      }

      else
      {
        v16 = v11;
      }

      if (v6 <= 2)
      {
        v17 = v8;
      }

      else
      {
        v17 = v10;
      }

      v18 = *(v0 + 32);
      v19 = sub_1000136BC(v16, v17, &v28);

      *(v7 + 4) = v19;
      *(v7 + 12) = 2160;
      *(v7 + 14) = 1752392040;
      *(v7 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_101084A78(v18, type metadata accessor for MemberSharingCircle);
      v23 = sub_1000136BC(v20, v22, &v28);

      *(v7 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping acceptanceState update for %{public}s\nsharingCircle %{private,mask.hash}s.", v7, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v25 = *(v0 + 32);

      sub_101084A78(v25, type metadata accessor for MemberSharingCircle);
    }

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 56) = v24;
    *v24 = v0;
    v24[1] = sub_1010828F8;

    return daemon.getter();
  }
}

uint64_t sub_1010828F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019810(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019810(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_101082AD4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101082AD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_10108342C;
  }

  else
  {

    v4 = sub_101082BF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101082BF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 128);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_100EC0C48(sub_101083C20, v2);
  v6 = *(v0 + 80);
  if (v1)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_101082D1C, v6, 0);
  }
}

uint64_t sub_101082D44()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_101082E3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_101082E3C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_101083320;
  }

  else
  {

    v2 = sub_101082F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101082F58()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_101083C44(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v7 = 136446723;
    v8 = 0xEB00000000646574;
    v9 = 0x70656363616E752ELL;
    v10 = 0xE500000000000000;
    v11 = 0x746E65732ELL;
    v12 = 0x800000010134B830;
    v13 = 0xD000000000000013;
    if (v6 != 4)
    {
      v13 = 0x64656C6961662ELL;
      v12 = 0xE700000000000000;
    }

    if (v6 != 3)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xE900000000000064;
    v15 = 0x657470656363612ELL;
    if (v6 != 1)
    {
      v15 = 0x747365757165722ELL;
      v14 = 0xEA00000000006465;
    }

    if (v6)
    {
      v9 = v15;
      v8 = v14;
    }

    if (v6 <= 2)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (v6 <= 2)
    {
      v17 = v8;
    }

    else
    {
      v17 = v10;
    }

    v18 = *(v0 + 40);
    v29 = *(v0 + 48);
    v19 = sub_1000136BC(v16, v17, &v30);

    *(v7 + 4) = v19;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_101084A78(v18, type metadata accessor for MemberSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v30);

    *(v7 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v4, v5, "Acceptance state changed to %{public}s\nfor member circle: %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();

    v24 = v29;
  }

  else
  {
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);

    sub_101084A78(v26, type metadata accessor for MemberSharingCircle);
    v24 = v25;
  }

  sub_10000B3A8(v24, &qword_1016975C8, &qword_10138C1F0);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_101083320()
{

  return _swift_task_switch(sub_101083388, 0, 0);
}

uint64_t sub_101083388()
{
  v1 = *(v0 + 48);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10108342C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010834B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_101083548;

  return daemon.getter();
}

uint64_t sub_101083548(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100019810(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019810(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_101083724;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101083724(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_101083B0C;
  }

  else
  {

    v4 = sub_101083840;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101083840()
{
  v1 = *(v0 + 16);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  v4 = *(v3 + 80);
  *(v0 + 104) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1010839AC;

  return sub_10019DE18(v6);
}

uint64_t sub_1010839AC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_101083B70;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = *(v2 + 80);
    v6 = *(v2 + 104);
    v7 = *(v2 + 64);
    v8 = (v6 + 32) & ~v6;
    swift_setDeallocating();
    (*(v5 + 8))(v4 + v8, v7);
    swift_deallocClassInstance();
    v3 = sub_1004A9788;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101083B0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101083B70()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);

  swift_setDeallocating();
  (*(v2 + 8))(v1 + ((v3 + 32) & ~v3), v4);
  swift_deallocClassInstance();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_101083C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101083CAC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MemberSharingCircle(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[15] = v5;
  *v5 = v1;
  v5[1] = sub_101083E78;

  return daemon.getter();
}

uint64_t sub_101083E78(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019810(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019810(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_101084054;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101084054(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v5 = sub_101084778;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 168) = *(v7 + 24);
    v5 = sub_1010841C0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1010841C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 168), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 152) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_101084328;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_101084A04, v6, v9);
}

uint64_t sub_101084328()
{

  return _swift_task_switch(sub_101084440, 0, 0);
}

uint64_t sub_101084440()
{
  v22 = v0;
  v1 = v0[12];
  v2 = v0[11];
  if ((*(v0[13] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = v0[5];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_101083C44(v4, v3, type metadata accessor for MemberSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[5];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_101084A78(v8, type metadata accessor for MemberSharingCircle);
      v14 = sub_1000136BC(v11, v13, &v21);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing shared beacon record on share revoke handling, shareId: %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {
      v18 = v0[5];

      sub_101084A78(v18, type metadata accessor for MemberSharingCircle);
    }

    v17 = 0;
  }

  else
  {
    v15 = v0[14];

    sub_100591C20(v2, v15);
    v16 = *(v15 + *(v1 + 64));
    sub_101084A78(v15, type metadata accessor for SharedBeaconRecord);
    v17 = v16 == 4;
  }

  v19 = v0[1];

  return v19(v17);
}

uint64_t sub_101084778()
{
  v17 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_101083C44(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100019810(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_101084A78(v6, type metadata accessor for MemberSharingCircle);
    v12 = sub_1000136BC(v9, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Missing Service BeaconStoreActor on share revoke handling, shareId: %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[4];

    sub_101084A78(v13, type metadata accessor for MemberSharingCircle);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_101084A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E714A0(v4, a1);
}

uint64_t sub_101084A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101084ADC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C560);
  sub_1000076D4(v0, qword_10177C560);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101084B60(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E752ELL;
      case 1:
        return 0x79646165726C612ELL;
      case 2:
        return 0xD000000000000012;
    }

LABEL_13:
    _StringGuts.grow(_:)(29);
    v2._countAndFlagsBits = 0xD00000000000001BLL;
    v2._object = 0x8000000101379890;
    String.append(_:)(v2);
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x6F707075736E752ELL;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    return 0x676E697373696D2ELL;
  }

  else
  {
    return 0x6544654D746F6E2ELL;
  }
}

id sub_101084D30()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 BOOLForKey:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_101084E98()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = [objc_opt_self() standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v9 = String._bridgeToObjectiveC()();
    [v7 setValue:isa forKey:v9];
  }

  else
  {
    __break(1u);
  }
}

id sub_101085018()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_101085084(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = sub_1000BC488();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (qword_1016951D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C560);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "MaskedIdentifierService init", v12, 2u);
  }

  *(v2 + 16) = v19;
  v13 = *(v2 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_101088B00;
  *(v14 + 24) = v2;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016638B0;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v17 = type metadata accessor for Transaction();
    __chkstk_darwin(v17);
    v18[-3] = 0;
    v18[-2] = 0;
    v18[-4] = v2;
    static Transaction.named<A>(_:with:)();

    return v2;
  }

  return result;
}

uint64_t sub_101085524()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_101088A8C;
  *(v2 + 24) = v0;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101663838;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for Transaction();
    __chkstk_darwin(v5);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_1010856DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 24);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a2;
  aBlock[4] = sub_1010888E4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016635E0;
  v15 = _Block_copy(aBlock);

  sub_100012908(a3, a4);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);
}

uint64_t sub_1010859C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a2;
  v111 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v114 = *(v5 - 8);
  v115 = v5;
  __chkstk_darwin(v5);
  v112 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v116 = *(v7 - 8);
  v117 = v7;
  __chkstk_darwin(v7);
  v113 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS.QoSClass();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for StableIdentifier(0);
  v10 = __chkstk_darwin(v122);
  v121 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v106 - v12;
  v120 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v120 - 8);
  v15 = __chkstk_darwin(v120);
  v123 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v106 - v17;
  v19 = type metadata accessor for SystemInfo.DeviceLockState();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v106 - v24;
  Transaction.capture()();
  static SystemInfo.lockState.getter();
  (*(v20 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v19);
  sub_1000040CC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v20 + 8);
  v27(v23, v19);
  v27(v25, v19);
  if (v26)
  {
    if (qword_1016951D0 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  v106 = a4;
  v41 = sub_100025044();
  v42 = _swiftEmptyArrayStorage;
  v119 = v41[2];
  if (!v119)
  {
LABEL_22:

    v53 = v42[2];

    if (v53)
    {
      if ((sub_101084D30() & 1) == 0)
      {
        v76 = sub_101086C94();
        if (v77)
        {
          if (qword_1016951D0 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for Logger();
          sub_1000076D4(v78, qword_10177C560);
          sub_1010888F0(v76);
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();
          sub_101088900(v76, 1);
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            aBlock = v82;
            *v81 = 136315138;
            sub_1010888F0(v76);
            v83 = sub_10110A764(v76);
            v85 = sub_1000136BC(v83, v84, &aBlock);

            *(v81 + 4) = v85;
            _os_log_impl(&_mh_execute_header, v79, v80, "Failed to update masked identifiers. Error %s", v81, 0xCu);
            sub_100007BAC(v82);
          }

          sub_101088050();
          sub_1000BC488();
          v86 = v108;
          v87 = v107;
          v88 = v109;
          (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
          v89 = static OS_dispatch_queue.global(qos:)();
          (*(v86 + 8))(v87, v88);
          v90 = swift_allocObject();
          v92 = v110;
          v91 = v111;
          v90[2] = v110;
          v90[3] = v91;
          v90[4] = v76;
          v129 = sub_10108891C;
          v130 = v90;
          aBlock = _NSConcreteStackBlock;
          v126 = 1107296256;
          v127 = sub_100006684;
          v128 = &unk_101663630;
          v93 = _Block_copy(&aBlock);
          sub_100012908(v92, v91);
          sub_10108894C(v76, 1);
          v40 = v113;
          static DispatchQoS.unspecified.getter();
          v124 = _swiftEmptyArrayStorage;
          sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v73 = v112;
          v74 = v115;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v93);

          sub_101088900(v76, 1);
        }

        else
        {
          if (qword_1016951D0 != -1)
          {
            swift_once();
          }

          v94 = type metadata accessor for Logger();
          sub_1000076D4(v94, qword_10177C560);
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&_mh_execute_header, v95, v96, "Successfully updated masked identifiers!", v97, 2u);
          }

          sub_101084E98();
          sub_1000BC488();
          v98 = v108;
          v99 = v107;
          v100 = v109;
          (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
          v101 = static OS_dispatch_queue.global(qos:)();
          (*(v98 + 8))(v99, v100);
          v102 = swift_allocObject();
          v104 = v110;
          v103 = v111;
          *(v102 + 16) = v110;
          *(v102 + 24) = v103;
          v129 = sub_101088958;
          v130 = v102;
          aBlock = _NSConcreteStackBlock;
          v126 = 1107296256;
          v127 = sub_100006684;
          v128 = &unk_101663680;
          v105 = _Block_copy(&aBlock);
          sub_100012908(v104, v103);
          v40 = v113;
          static DispatchQoS.unspecified.getter();
          v124 = _swiftEmptyArrayStorage;
          sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v73 = v112;
          v74 = v115;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v105);

          sub_101088900(v76, 0);
        }

        goto LABEL_36;
      }

      if (qword_1016951D0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_1000076D4(v54, qword_10177C560);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Already updated masked identifier", v57, 2u);
      }

      sub_1000BC488();
      v58 = v108;
      v59 = v107;
      v60 = v109;
      (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
      v35 = static OS_dispatch_queue.global(qos:)();
      (*(v58 + 8))(v59, v60);
      v61 = swift_allocObject();
      v63 = v110;
      v62 = v111;
      *(v61 + 16) = v110;
      *(v61 + 24) = v62;
      v129 = sub_101088960;
      v130 = v61;
      aBlock = _NSConcreteStackBlock;
      v126 = 1107296256;
      v64 = &unk_1016636D0;
    }

    else
    {
      if (qword_1016951D0 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_1000076D4(v65, qword_10177C560);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "No paired accessories. Not updating masked identifier.", v68, 2u);
      }

      sub_1000BC488();
      v69 = v108;
      v70 = v107;
      v71 = v109;
      (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
      v35 = static OS_dispatch_queue.global(qos:)();
      (*(v69 + 8))(v70, v71);
      v72 = swift_allocObject();
      v63 = v110;
      v62 = v111;
      *(v72 + 16) = v110;
      *(v72 + 24) = v62;
      v129 = sub_101088968;
      v130 = v72;
      aBlock = _NSConcreteStackBlock;
      v126 = 1107296256;
      v64 = &unk_101663720;
    }

    v127 = sub_100006684;
    v128 = v64;
    v39 = _Block_copy(&aBlock);
    sub_100012908(v63, v62);
    v40 = v113;
    static DispatchQoS.unspecified.getter();
    v124 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v43 = 0;
  v118 = v121 + 8;
  while (v43 < v41[2])
  {
    v44 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v45 = *(v14 + 72);
    sub_101088A14(v41 + v44 + v45 * v43, v18, type metadata accessor for OwnedBeaconRecord);
    v46 = *(v120 + 24);
    sub_101088A14(&v18[v46], v13, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100032824(v13, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_17;
    }

    sub_101088A14(&v18[v46], v121, type metadata accessor for StableIdentifier);
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 == 3)
    {
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_16;
    }

    if (v48 == 2)
    {
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_16:

      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 8))(v121, v49);
LABEL_17:
      sub_100132D2C(v18, v123);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10112434C(0, v42[2] + 1, 1);
        v42 = aBlock;
      }

      v52 = v42[2];
      v51 = v42[3];
      if (v52 >= v51 >> 1)
      {
        sub_10112434C((v51 > 1), v52 + 1, 1);
        v42 = aBlock;
      }

      v42[2] = (v52 + 1);
      sub_100132D2C(v123, v42 + v44 + v52 * v45);
      goto LABEL_9;
    }

    sub_100032824(v18, type metadata accessor for OwnedBeaconRecord);
    sub_100032824(v121, type metadata accessor for StableIdentifier);
LABEL_9:
    if (v119 == ++v43)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_3:
  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177C560);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Not updating because device is in beforeFirstUnlock", v31, 2u);
  }

  sub_1000BC488();
  v32 = v108;
  v33 = v107;
  v34 = v109;
  (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
  v35 = static OS_dispatch_queue.global(qos:)();
  (*(v32 + 8))(v33, v34);
  v36 = swift_allocObject();
  v38 = v110;
  v37 = v111;
  *(v36 + 16) = v110;
  *(v36 + 24) = v37;
  v129 = sub_101088970;
  v130 = v36;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_100006684;
  v128 = &unk_101663770;
  v39 = _Block_copy(&aBlock);
  sub_100012908(v38, v37);
  v40 = v113;
  static DispatchQoS.unspecified.getter();
  v124 = _swiftEmptyArrayStorage;
LABEL_35:
  sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v73 = v112;
  v74 = v115;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);

LABEL_36:
  (*(v114 + 8))(v73, v74);
  (*(v116 + 8))(v40, v117);
}

unint64_t sub_101086C94()
{
  v1 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v1 - 8);
  v3 = &v43 - v2;
  updated = type metadata accessor for PairingLockUpdateEndPoint(0);
  v5 = __chkstk_darwin(updated - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 24);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  v17 = sub_101085018();
  v18 = sub_100513CD8();

  if (v18)
  {
    v19 = sub_100513FCC();
    v21 = v20;

    if (v21)
    {
      sub_10107F224(v19, v21);
      if (v22)
      {
        v25 = v22;
        v26 = v23;
        v27 = v24;
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
        sub_100D54B58(v9);
        type metadata accessor for SearchPartyURLSessionFactory(0);
        swift_allocObject();
        v29 = type metadata accessor for FMNMockingPreferences();
        (*(*(v29 - 8) + 56))(v3, 1, 1, v29);
        v30 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
        type metadata accessor for ServerInteractionController(0);
        v31 = swift_allocObject();
        sub_101088A14(v9, v7, type metadata accessor for PairingLockUpdateEndPoint);
        v32 = sub_100624EBC(v7, v30, v31);
        sub_100032824(v9, type metadata accessor for PairingLockUpdateEndPoint);

        sub_100017D5C(v26, v27);
        sub_1004FF798(v25, v26, v27, 0, v32);

        sub_100165328(v25, v26, v27);
        v33 = swift_allocObject();
        *(v33 + 16) = v28;
        *(v33 + 24) = v16;
        v34 = v28;

        Future.addFailure(block:)();

        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        *(v35 + 24) = v16;
        v36 = v34;

        Future.addSuccess(block:)();

        OS_dispatch_group.wait()();
        sub_100165328(v25, v26, v27);

        swift_beginAccess();
        v37 = *(v16 + 16);
        sub_10108894C(v37, *(v16 + 24));

        return v37;
      }
    }
  }

  if (qword_1016951D0 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177C560);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Missing info to form update request!", v42, 2u);
  }

  return 3;
}

void sub_1010871D4(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (qword_1016951D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C560);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update masked identifier due to %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = 1;
  sub_101088900(v14, v15);
  swift_errorRetain();
  dispatch_group_leave(a2);
}

void sub_10108739C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v10 == 200)
  {
    if (qword_1016951D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C560);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully updated masked identifier!", v23, 2u);
    }
  }

  else
  {
    if (qword_1016951D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C560);
    (*(v7 + 16))(v9, a1, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = a2;
      v15 = v14;
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v15 = 136315138;
      sub_1000040CC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      v19 = sub_1000136BC(v16, v18, v29);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to update masked identifier due to %s", v15, 0xCu);
      sub_100007BAC(v27);

      a2 = v28;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  swift_beginAccess();
  v24 = *(a3 + 16);
  v25 = *(a3 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = v10 != 200;
  sub_101088900(v24, v25);
  dispatch_group_leave(a2);
}

uint64_t sub_101087718()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v35 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + 24);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (qword_1016951D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v32 = v4;
  v33 = v2;
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C560);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "checkinRetry", v21, 2u);
  }

  v30 = v11;
  v31 = 0x8000000101379790;
  static DispatchQoS.default.getter();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v24 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v24 + 40) = v25;
  swift_unknownObjectWeakInit();
  *(v24 + 88) = 0;
  v26 = sub_1000BC488();
  v29[1] = "rvice.retryFetch";
  v29[2] = v26;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  v27 = v37;
  (*(v37 + 16))(v35, v11, v7);
  (*(v5 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v34);
  v38 = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  v29[0] = v7;
  v34 = v1;
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v24 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v24 + 24) = 0xD000000000000040;
  *(v24 + 32) = v31;
  *(v24 + 48) = sub_1010888B4;
  *(v24 + 56) = v22;
  *(v24 + 64) = sub_1010888BC;
  *(v24 + 72) = v23;

  sub_100997398();

  (*(v27 + 8))(v30, v29[0]);

  *(v34 + 32) = v24;
}

uint64_t sub_101087CE8@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    v5 = v4;
    sub_1000BC4D4(&qword_1016C2F18, &qword_1013F7750);
    OS_dispatch_queue.sync<A>(execute:)();

    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  else
  {
    v8 = 0;
    v6 = xmmword_10139D930;
    v7 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_101087DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      if (qword_1016951D0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177C560);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        type metadata accessor for XPCActivity();

        v11 = String.init<A>(describing:)();
        v13 = sub_1000136BC(v11, v12, &v15);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "scheduleRetryFetch timer fired: %s", v9, 0xCu);
        sub_100007BAC(v10);
      }

      Transaction.capture()();
      v14 = type metadata accessor for Transaction();
      __chkstk_darwin(v14);
      static Transaction.named<A>(_:with:)();
      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_101088050()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1016951D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C560);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "scheduleRetryUpdate", v11, 2u);
  }

  *(v1 + 40) = 1;
  v12 = *(v1 + 32);
  v13 = type metadata accessor for Transaction();
  __chkstk_darwin(v13);
  *&v15[-16] = v12;

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1010882A4(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1010125F8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663568;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t sub_101088644()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1010886D4(uint64_t a1, uint64_t a2)
{
  if (qword_1016951D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C560);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BeaconManagerService.updateObfuscatedIdentifier", v7, 2u);
  }

  sub_100A2C2B8();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_101085524();
}

uint64_t sub_101088828(unint64_t a1, void (*a2)(uint64_t))
{
  if (a1 == 7)
  {
    v3 = 0;
  }

  else
  {
    v4 = a1;
    sub_101088AAC();
    v3 = swift_allocError();
    a1 = v4;
    *v5 = v4;
  }

  sub_101088A9C(a1);
  a2(v3);
}

unint64_t sub_1010888F0(unint64_t result)
{
  if (result >= 7)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_101088900(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_10108890C(a1);
  }

  return a1;
}

unint64_t sub_10108890C(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

uint64_t sub_10108891C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

unint64_t sub_10108894C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1010888F0(result);
  }

  return result;
}

uint64_t sub_101088978()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

__n128 sub_1010889A8@<Q0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 16) + 40) == 1)
  {
    v2 = *(v1 + 24);
    if (*v2 == 2)
    {
      result.n128_u64[0] = 0;
      *a1 = xmmword_101400580;
      *(a1 + 16) = xmmword_101400590;
      *(a1 + 32) = 707;
    }

    else
    {
      result = *v2;
      v4 = *(v2 + 16);
      *a1 = *v2;
      *(a1 + 16) = v4;
      *(a1 + 32) = *(v2 + 32);
    }
  }

  else
  {
    *a1 = 2;
    result.n128_u64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  return result;
}

uint64_t sub_101088A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_101088A9C(unint64_t result)
{
  if (result != 7)
  {
    return sub_1010888F0(result);
  }

  return result;
}

unint64_t sub_101088AAC()
{
  result = qword_1016C5650;
  if (!qword_1016C5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5650);
  }

  return result;
}

uint64_t sub_101088B04(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_101088B1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101088B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_101088C30(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5660, &qword_1014008B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_10108AA28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v12;
  v11[23] = 0;
  sub_1001022C4(&v13, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, *(&v12 + 1));
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101088DEC()
{
  v1 = 0x49746375646F7270;
  if (*v0 != 1)
  {
    v1 = 0x6449726F646E6576;
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

uint64_t sub_101088E54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10108AB94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_101088E7C(uint64_t a1)
{
  v2 = sub_10108AA28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101088EB8(uint64_t a1)
{
  v2 = sub_10108AA28();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_101088F30@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v17 = *a1;
  if ((a1[1].n128_u8[8] & 1) == 0)
  {
    sub_100BA0908(a1, v18);
    sub_1000C3258();
    v12 = FixedWidthInteger.data.getter();
    v14 = v13;
    v4 = Data.hexString.getter();
    v5 = v15;
    sub_100016590(v12, v14);
    if ((a1[2].n128_u8[8] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_100BA0940(a1);
    v9 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  sub_100BA0908(a1, v18);
  v4 = 0;
  v5 = 0;
  if (a1[2].n128_u8[8])
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[0] = a1[2].n128_u64[0];
  sub_1000C3258();
  v6 = FixedWidthInteger.data.getter();
  v8 = v7;
  v9 = Data.hexString.getter();
  v11 = v10;
  sub_100BA0940(a1);
  sub_100016590(v6, v8);
LABEL_6:
  result = v17;
  *a2 = v17;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v5;
  a2[2].n128_u64[0] = v9;
  a2[2].n128_u64[1] = v11;
  return result;
}

uint64_t sub_101089060(uint64_t a1, uint64_t a2)
{
  v2[66] = a2;
  v2[65] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[67] = v3;
  v2[68] = *(v3 - 8);
  v2[69] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[70] = v4;
  v2[71] = *(v4 - 8);
  v2[72] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[73] = v5;
  v2[74] = *(v5 - 8);
  v2[75] = swift_task_alloc();

  return _swift_task_switch(sub_1010891DC, 0, 0);
}

void sub_1010891DC()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 600);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v45 = *(v0 + 568);
  v46 = *(v0 + 560);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 504) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 512) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v45 + 8))(v9, v46);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  *(v0 + 608) = v33;
  v40 = *(v0 + 520);
  sub_100BA0908(v40, v0 + 400);
  sub_101088F30(v40, (v0 + 16));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 616) = JSONEncoder.init()();
  v41 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 80) = v41;
  *(v0 + 96) = *(v0 + 48);
  sub_10108A890();
  v42 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 624) = 0;
  *(v0 + 632) = v42;
  *(v0 + 640) = v43;
  sub_100017D5C(v42, v43);
  v44 = swift_task_alloc();
  *(v0 + 648) = v44;
  *v44 = v0;
  v44[1] = sub_1010898F8;

  sub_100EA7FE4();
}

uint64_t sub_1010898F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 656) = a1;
  *(v3 + 664) = a2;

  return _swift_task_switch(sub_1010899FC, 0, 0);
}

uint64_t sub_1010899FC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;
  *(v0 + 472) = &type metadata for Data;
  *(v0 + 480) = &protocol witness table for Data;
  *(v0 + 448) = *(v0 + 632);
  v6 = sub_1000035D0((v0 + 448), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 488);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 448));
  v9 = *(v0 + 496);
  *(v0 + 672) = *(v0 + 488);
  *(v0 + 680) = v9;
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 688) = v10;
  *(v0 + 696) = v11;
  (*(v4 + 8))(v3, v5);
  v13 = swift_task_alloc();
  *(v0 + 704) = v13;
  *v13 = v0;
  v13[1] = sub_101089BAC;
  v14 = *(v0 + 528);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_101089BAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v5 = sub_10108A22C;
  }

  else
  {
    v6 = v4[87];
    v7 = v4[86];
    v4[90] = a1;
    sub_100016590(v7, v6);
    v5 = sub_101089CE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101089CE0()
{
  v50 = v0;
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[76];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v49);

  sub_100016590(v3, v2);
  v6 = v49[0];
  if (qword_1016950D0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v46 = v0;
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C418);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing lock header:", v10, 2u);
  }

  v11 = v6 + 64;
  v12 = -1;
  v13 = -1 << *(v6 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v6 + 64);
  v0 = ((63 - v13) >> 6);

  v15 = 0;
  v47 = v6;
  if (v14)
  {
    while (2)
    {
      v16 = v15;
LABEL_13:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v6 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v6 + 56) + v18);
      v23 = v22[1];
      v48 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, v49);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v48, v23, v49);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s): %s", v26, 0x16u);
        swift_arrayDestroy();

        v6 = v47;

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      else
      {

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v16 >= v0)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v15;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  sub_10108A8E4((v46 + 2), (v46 + 32));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_10108A91C((v46 + 2));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v46[65];
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315138;
    v35 = *(v46 + 2);
    *(v46 + 19) = *(v46 + 1);
    *(v46 + 20) = v35;
    *(v46 + 21) = *(v46 + 3);
    sub_10108A8E4((v46 + 2), (v46 + 44));
    v36 = String.init<A>(describing:)();
    v38 = v6;
    v39 = sub_1000136BC(v36, v37, v49);

    *(v33 + 4) = v39;
    v6 = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing lock body %s", v33, 0xCu);
    sub_100007BAC(v34);

    sub_10108A91C((v46 + 2));

    sub_100BA0940(v32);
  }

  else
  {

    sub_100BA0940(v32);

    sub_10108A91C((v46 + 2));
  }

  v40 = v46[80];
  v41 = v46[79];

  sub_100017D5C(v41, v40);

  sub_100016590(v41, v40);
  v42 = v46[80];
  v43 = v46[79];

  v44 = v46[1];

  return v44(v6, v43, v42);
}

uint64_t sub_10108A22C()
{
  v53 = v0;
  v1 = v0[85];
  v2 = v0[84];
  sub_100016590(v0[86], v0[87]);
  sub_100016590(v2, v1);
  v3 = &qword_101695000;
  if (qword_1016950D0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to sign pairing lock request. %{public}@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  else
  {
  }

  v10 = v0[76];
  if (v3[26] != -1)
  {
    swift_once();
  }

  v51 = v0;
  sub_1000076D4(v4, qword_10177C418);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Pairing lock header:", v13, 2u);
  }

  v3 = (v10 + 64);
  v14 = -1;
  v15 = -1 << *(v10 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v10 + 64);
  v0 = ((63 - v15) >> 6);

  v17 = 0;
  v49 = v10;
  if (v16)
  {
    while (2)
    {
      v18 = v17;
LABEL_18:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v10 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v10 + 56) + v20);
      v25 = v24[1];
      v50 = *v24;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = sub_1000136BC(v22, v23, &v52);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        v30 = sub_1000136BC(v50, v25, &v52);

        *(v28 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s): %s", v28, 0x16u);
        swift_arrayDestroy();

        v10 = v49;

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      else
      {

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v18 >= v0)
    {
      break;
    }

    v16 = v3[v18];
    ++v17;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  v31 = v51;
  sub_10108A8E4((v51 + 2), (v51 + 32));
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  sub_10108A91C((v51 + 2));
  v34 = os_log_type_enabled(v32, v33);
  v35 = v51[65];
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136315138;
    v38 = *(v51 + 2);
    *(v51 + 19) = *(v51 + 1);
    *(v51 + 20) = v38;
    *(v51 + 21) = *(v51 + 3);
    sub_10108A8E4((v51 + 2), (v51 + 44));
    v39 = String.init<A>(describing:)();
    v41 = v10;
    v42 = sub_1000136BC(v39, v40, &v52);

    *(v36 + 4) = v42;
    v10 = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Pairing lock body %s", v36, 0xCu);
    sub_100007BAC(v37);

    v31 = v51;

    sub_10108A91C((v51 + 2));

    sub_100BA0940(v35);
  }

  else
  {

    sub_100BA0940(v35);

    sub_10108A91C((v51 + 2));
  }

  v43 = v31[80];
  v44 = v31[79];

  sub_100017D5C(v44, v43);

  sub_100016590(v44, v43);
  v45 = v31[80];
  v46 = v31[79];

  v47 = v31[1];

  return v47(v10, v46, v45);
}