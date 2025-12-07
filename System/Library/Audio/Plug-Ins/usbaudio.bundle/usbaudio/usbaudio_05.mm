uint64_t sub_1000570D4(uint64_t a1, uint64_t a2)
{
  if (sub_100053CF0(a1, a2, 21))
  {
    v5 = type metadata accessor for ClientDescriptionInterface();
    v6 = sub_1000BE1D8(v2, v5, a1, a2);
    (*(a2 + 144))(v6, a1, a2);
  }

  if (sub_100053CF0(a1, a2, 31))
  {
    v7 = type metadata accessor for B2PInterface();
    v8 = sub_100083EF0(v2, v7, a1, a2);
    (*(a2 + 120))(v8, a1, a2);
  }

  result = sub_100053C48(a1, a2);
  if (result)
  {
    v10 = type metadata accessor for CS46L06Interface();
    v11 = sub_1000A29BC(v2, v10, a1, a2);
    return (*(a2 + 96))(v11, a1, a2);
  }

  return result;
}

uint64_t sub_100057224(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100176188, &qword_100124520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057378(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000573C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = *(*(v2 + 192) + 168);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v8 = 0;
    v9 = &qword_100174F60;
    v10 = &qword_100175380;
    v11 = &qword_100120E70;
    v21 = v4;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      sub_10001EAFC(v6, v26);
      sub_10001EAFC(v26, v23);
      sub_100001AB4(v9, &qword_100121090);
      sub_100001AB4(v10, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (!*(&v29 + 1))
      {
        goto LABEL_4;
      }

      v12 = v5;
      v13 = v11;
      v14 = v10;
      v15 = v9;
      result = sub_100057224(&v28, v23);
      v16 = v24;
      if (!v24)
      {
        goto LABEL_22;
      }

      v17 = v25;
      sub_10001EAB8(v23, v24);
      v18 = (*(v17 + 40))(v16, v17);
      v19 = *(*(a1 + 16) + 2);
      sub_10000CE78(v23);
      sub_10000D040(&v28, &qword_100176188, &qword_100124520);
      if (v19 == v18)
      {

        sub_10001EFE4(v26, &v28);
        v3 = a2;
        goto LABEL_14;
      }

      result = sub_10000CE78(v26);
      v9 = v15;
      v10 = v14;
      v11 = v13;
      v5 = v12;
      v4 = v21;
LABEL_5:
      ++v8;
      v6 += 40;
      if (v5 == v8)
      {

        v3 = a2;
        goto LABEL_13;
      }
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_4:
    sub_10000CE78(v26);
    result = sub_10000D040(&v28, &qword_100176188, &qword_100124520);
    goto LABEL_5;
  }

LABEL_13:
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
LABEL_14:
  v26[0] = v28;
  v26[1] = v29;
  v27 = v30;
  if (*(&v29 + 1))
  {
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    sub_100001AB4(&qword_100175380, &qword_100120E70);
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10000D040(v26, &qword_100174FB0, &unk_100120FC0);
  }

  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

uint64_t sub_100057754()
{
  v0 = type metadata accessor for LogID(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v8 = v1;
    swift_once();
    v1 = v8;
  }

  v4 = sub_10000A1BC(v1, qword_1001794F0);
  sub_10000A2A4(v4, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039F58(2, v3, 0xD00000000000002DLL, 0x800000010012CFB0);
  sub_10000C9D0(v3);
  sub_10000CA2C();
  swift_allocError();
  *v6 = 2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000578F0()
{
  sub_10000CA2C();
  swift_allocError();
  *v0 = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000579AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = *(*a2 + 2);
  if (!a3)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  v10 = NSData.startIndex.getter();
  v11 = NSData.endIndex.getter();
  v12 = NSData.startIndex.getter();
  v13 = NSData.endIndex.getter();
  if (v10 < v12 || v13 < v10)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = NSData.startIndex.getter();
  v15 = NSData.endIndex.getter();
  if (v11 < v14 || v15 < v11)
  {
    goto LABEL_25;
  }

  v16 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
    goto LABEL_27;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v16 >= 0x10000)
  {
    v16 = 0xFFFFLL;
  }

LABEL_11:
  while (1)
  {
    sub_1000FC690((v9 << 32) | (v16 << 48) | 0x2A1, v7, a4);
    if (!v4)
    {
      break;
    }

    v7 = _convertErrorToNSError(_:)();
    v17 = [v7 code];

    if (v17 < 0xFFFFFFFF80000000)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v18 = [a1 boxName];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xEE00656369766544;
        v20 = 0x206E776F6E6B6E55;
      }

      if (v17 == -536850432)
      {
        _StringGuts.grow(_:)(32);

        v34 = 0xD000000000000012;
        v35 = 0x800000010012BEE0;
        v23._countAndFlagsBits = v20;
        v23._object = v22;
        String.append(_:)(v23);

        v24._countAndFlagsBits = 0x64656C6C61745320;
        v24._object = 0xEA0000000000203ALL;
        String.append(_:)(v24);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
      }

      else
      {
        _StringGuts.grow(_:)(45);

        v34 = 0x20726F727245;
        v35 = 0xE600000000000000;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10011DE90;
        *(v25 + 56) = &type metadata for Int32;
        *(v25 + 64) = &protocol witness table for Int32;
        *(v25 + 32) = v17;
        v26._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0xD000000000000020;
        v27._object = 0x800000010012BE90;
        String.append(_:)(v27);
        v28._countAndFlagsBits = v20;
        v28._object = v22;
        String.append(_:)(v28);

        v29._countAndFlagsBits = 58;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
      }

      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100120CD0;
      *(v30 + 56) = &type metadata for UInt8;
      *(v30 + 64) = &protocol witness table for UInt8;
      *(v30 + 32) = -95;
      *(v30 + 96) = &type metadata for UInt8;
      *(v30 + 104) = &protocol witness table for UInt8;
      *(v30 + 72) = 2;
      *(v30 + 136) = &type metadata for UInt16;
      *(v30 + 144) = &protocol witness table for UInt16;
      *(v30 + 112) = 0;
      *(v30 + 176) = &type metadata for UInt16;
      *(v30 + 184) = &protocol witness table for UInt16;
      *(v30 + 152) = v9;
      *(v30 + 216) = &type metadata for UInt16;
      *(v30 + 224) = &protocol witness table for UInt16;
      *(v30 + 192) = v16;
      v31._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v31);

      v32 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v33, qword_100179508);
      sub_100039F58(2, a1 + v32, v34, v35);

      swift_willThrow();
      return;
    }

    __break(1u);
LABEL_29:
    v16 = 0;
    v4 = v5;
  }
}

void sub_100057DFC(void *a1, void *a2)
{
  v51 = 0;
  v6 = USBDescriptorControl.pbLayout()();
  sub_1000A0294(v6);
  if (v3)
  {
    return;
  }

  v49 = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v32 = 7;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v48 = Strong;
  v9 = *(v2 + 192);
  v11 = *(v9 + 32);
  v10 = *(v9 + 48);
  v12 = *(v9 + 80);
  v55[2] = *(v9 + 64);
  v55[3] = v12;
  v14 = *(v9 + 96);
  v13 = *(v9 + 112);
  v56 = *(v9 + 144);
  v15 = *(v9 + 128);
  v55[5] = v13;
  v55[6] = v15;
  v55[4] = v14;
  v55[0] = v11;
  v55[1] = v10;
  v16 = a2[3];
  v17 = a2[4];
  sub_10001EAB8(a2, v16);
  v18 = *(v17 + 8);
  sub_100057294(v55, &v52);
  v18(&v52, v16, v17);
  v19 = v53;
  v20 = v54;
  v21 = sub_10001EAB8(&v52, v53);
  v22 = (*(v20 + 16))(v19, v20);
  if (v22 >> 16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  sub_10000CE78(&v52);
  v24 = sub_1000A2D88(a1 & 0xFFFFFF);
  v50 = 0;
  v25 = [objc_allocWithZone(NSMutableData) initWithLength:12];
  if (!v25)
  {
    __break(1u);
    return;
  }

  a1 = v25;
  v26 = [v25 mutableBytes];
  *v26 = v23;
  *(v26 + 1) = v24;
  *(v26 + 4) = 1;
  v47 = *(*&v55[0] + 2);
  v21 = a1;
  v19 = NSData.startIndex.getter();
  v20 = NSData.endIndex.getter();
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  if (v19 < v27 || v28 < v19)
  {
    goto LABEL_23;
  }

  v21 = a1;
  v29 = NSData.startIndex.getter();
  v30 = NSData.endIndex.getter();
  if (v20 < v29 || v30 < v20)
  {
    goto LABEL_24;
  }

  v31 = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
LABEL_25:
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v37 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v37, qword_100179508);
    sub_100039F58(2, v48 + v20, v21, v19);

    swift_willThrow();
    sub_1000572F0(v55);

    return;
  }

  if (v31 >= 0xFFFF)
  {
    v31 = 0xFFFFLL;
  }

  sub_1000FC690((v47 << 32) | ((v31 & ~(v31 >> 63)) << 48) | 0x221, a1, &v50);
  sub_1000572F0(v55);

  v33 = *(v9 + 112);
  v57[4] = *(v9 + 96);
  v57[5] = v33;
  v57[6] = *(v9 + 128);
  v58 = *(v9 + 144);
  v34 = *(v9 + 48);
  v57[0] = *(v9 + 32);
  v57[1] = v34;
  v35 = *(v9 + 80);
  v57[2] = *(v9 + 64);
  v57[3] = v35;
  sub_100057294(v57, &v52);
  v36 = v49;
  sub_1000579AC(v48, v57, v49, &v51);

  sub_1000572F0(v57);
  v38 = v51;
  v39 = v36;
  v40 = NSData.startIndex.getter();
  v41 = NSData.endIndex.getter();
  v42 = NSData.startIndex.getter();
  v43 = NSData.endIndex.getter();
  if (v40 < v42 || v43 < v40)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v44 = NSData.startIndex.getter();
  v45 = NSData.endIndex.getter();

  if (v41 < v44 || v45 < v41)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v41, v40))
  {
    goto LABEL_28;
  }

  if (v38 != v41 - v40)
  {
    sub_10000CA2C();
    swift_allocError();
    *v46 = 30;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

void sub_1000585B0(void *a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v42 = 0;
  v10 = [objc_allocWithZone(NSMutableData) initWithLength:12];
  if (!v10)
  {
    __break(1u);
  }

  v11 = v10;
  v12 = [v10 mutableBytes];
  *v12 = a3;
  *(v12 + 1) = 0;
  *(v12 + 2) = a4;
  *(v12 + 6) = 0;
  *(v12 + 5) = 0;
  v13 = *(*a2 + 2);
  v14 = v11;
  v15 = NSData.startIndex.getter();
  v16 = NSData.endIndex.getter();
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v15 < v17 || v18 < v15)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v11;
  v20 = NSData.startIndex.getter();
  v21 = NSData.endIndex.getter();
  if (v16 < v20 || v21 < v16)
  {
    goto LABEL_26;
  }

  v23 = v16 - v15;
  if (__OFSUB__(v16, v15))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v23 >= 0xFFFF)
  {
    v23 = 0xFFFFLL;
  }

  v5 = v23 & ~(v23 >> 63);
  sub_1000FC690((v13 << 32) | (v5 << 48) | 0x221, v11, &v42);
  if (v4)
  {
    v14 = _convertErrorToNSError(_:)();
    v24 = [v14 code];

    if (v24 >= 0xFFFFFFFF80000000)
    {
      if (v24 <= 0x7FFFFFFF)
      {
        v25 = [a1 boxName];
        if (v25)
        {
          v26 = v25;
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
        }

        else
        {
          v29 = 0xEE00656369766544;
          v27 = 0x206E776F6E6B6E55;
        }

        if (v24 == -536850432)
        {
          _StringGuts.grow(_:)(32);

          v30._countAndFlagsBits = v27;
          v30._object = v29;
          String.append(_:)(v30);

          v31._countAndFlagsBits = 0x64656C6C61745320;
          v31._object = 0xEA0000000000203ALL;
          String.append(_:)(v31);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_100120CD0;
          *(v32 + 56) = &type metadata for UInt8;
          *(v32 + 64) = &protocol witness table for UInt8;
          *(v32 + 32) = 33;
          *(v32 + 96) = &type metadata for UInt8;
          *(v32 + 104) = &protocol witness table for UInt8;
          *(v32 + 72) = 2;
          *(v32 + 136) = &type metadata for UInt16;
          *(v32 + 144) = &protocol witness table for UInt16;
          *(v32 + 112) = 0;
          *(v32 + 176) = &type metadata for UInt16;
          *(v32 + 184) = &protocol witness table for UInt16;
          *(v32 + 152) = v13;
          *(v32 + 216) = &type metadata for UInt16;
          *(v32 + 224) = &protocol witness table for UInt16;
          *(v32 + 192) = v5;
          v33._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v33);

          v14 = 0xD000000000000012;
          v15 = 0x800000010012BEE0;
          v5 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
          if (qword_100173CC0 == -1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          _StringGuts.grow(_:)(45);

          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_10011DE90;
          *(v34 + 56) = &type metadata for Int32;
          *(v34 + 64) = &protocol witness table for Int32;
          *(v34 + 32) = v24;
          v35._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v35);

          v36._countAndFlagsBits = 0xD000000000000020;
          v36._object = 0x800000010012BE90;
          String.append(_:)(v36);
          v37._countAndFlagsBits = v27;
          v37._object = v29;
          String.append(_:)(v37);

          v38._countAndFlagsBits = 58;
          v38._object = 0xE100000000000000;
          String.append(_:)(v38);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_100120CD0;
          *(v39 + 56) = &type metadata for UInt8;
          *(v39 + 64) = &protocol witness table for UInt8;
          *(v39 + 32) = 33;
          *(v39 + 96) = &type metadata for UInt8;
          *(v39 + 104) = &protocol witness table for UInt8;
          *(v39 + 72) = 2;
          *(v39 + 136) = &type metadata for UInt16;
          *(v39 + 144) = &protocol witness table for UInt16;
          *(v39 + 112) = 0;
          *(v39 + 176) = &type metadata for UInt16;
          *(v39 + 184) = &protocol witness table for UInt16;
          *(v39 + 152) = v13;
          *(v39 + 216) = &type metadata for UInt16;
          *(v39 + 224) = &protocol witness table for UInt16;
          *(v39 + 192) = v5;
          v40._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v40);

          v14 = 0x20726F727245;
          v15 = 0xE600000000000000;
          v5 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
          if (qword_100173CC0 == -1)
          {
LABEL_23:
            v41 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v41, qword_100179508);
            sub_100039F58(2, a1 + v5, v14, v15);

            swift_willThrow();
            goto LABEL_24;
          }
        }

LABEL_30:
        swift_once();
        goto LABEL_23;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_24:
}

void sub_100058B70(__int16 a1, void *a2, uint64_t a3)
{
  v13 = 0;
  sub_1000585B0(a2, a3, a1, 6);
  if (!v3)
  {
    v7 = [objc_allocWithZone(NSMutableData) initWithLength:10];
    sub_1000579AC(a2, a3, v7, &v13);
    if (v13 != 10)
    {
      goto LABEL_6;
    }

    if (!v7)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v8 = [v7 mutableBytes];
    if (v8[3] == a1)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(NSMutableData) initWithLength:*v8];
      sub_1000585B0(a2, a3, a1, 6);
      sub_1000579AC(a2, a3, v10, &v13);
      if (v13 == *v9)
      {
        if (v10)
        {

          return;
        }

        goto LABEL_14;
      }

      sub_10000CA2C();
      swift_allocError();
      *v12 = 30;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
LABEL_6:
      sub_10000CA2C();
      swift_allocError();
      *v11 = 30;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0xE000000000000000;
      swift_willThrow();
      v10 = v7;
    }
  }
}

void sub_100058D98(int a1, void *a2)
{
  v90 = 0;
  v6 = USBDescriptorControl.pbLayout()();
  v7 = sub_1000A0D14(v6, 1);
  if (!v3)
  {
    v84 = v7;
    v86 = v8;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_10000CA2C();
      swift_allocError();
      *v34 = 7;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0xE000000000000000;
      swift_willThrow();
      v35 = v86;
      goto LABEL_14;
    }

    v9 = *(v2 + 192);
    v11 = *(v9 + 32);
    v10 = *(v9 + 48);
    v12 = *(v9 + 80);
    v102[2] = *(v9 + 64);
    v102[3] = v12;
    v14 = *(v9 + 96);
    v13 = *(v9 + 112);
    v103 = *(v9 + 144);
    v15 = *(v9 + 128);
    v102[5] = v13;
    v102[6] = v15;
    v102[4] = v14;
    v102[0] = v11;
    v102[1] = v10;
    v16 = a2[3];
    v17 = a2[4];
    sub_10001EAB8(a2, v16);
    v18 = *(v17 + 8);
    sub_100057294(v102, &v94);
    v81 = v18;
    v82 = v17;
    v83 = v16;
    v18(&v94, v16, v17);
    v19 = *(&v95 + 1);
    v20 = v96;
    v21 = sub_10001EAB8(&v94, *(&v95 + 1));
    v22 = v20[2](v19, v20);
    if (v22 >> 16)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      sub_10000CE78(&v94);
      v24 = sub_1000A2D88(a1 & 0xFFFFFF);
      v91 = 0;
      v25 = [objc_allocWithZone(NSMutableData) initWithLength:12];
      if (!v25)
      {
        __break(1u);
        goto LABEL_56;
      }

      v26 = v25;
      v27 = [v25 mutableBytes];
      *v27 = v23;
      v80 = v24;
      *(v27 + 1) = v24;
      *(v27 + 4) = 3;
      v85 = *(*&v102[0] + 2);
      v21 = v26;
      v28 = NSData.startIndex.getter();
      v20 = NSData.endIndex.getter();
      v29 = NSData.startIndex.getter();
      v30 = NSData.endIndex.getter();
      if (v28 >= v29 && v30 >= v28)
      {
        v21 = v26;
        v31 = NSData.startIndex.getter();
        v32 = NSData.endIndex.getter();
        if (v20 >= v31 && v32 >= v20)
        {
          v33 = v20 - v28;
          if (!__OFSUB__(v20, v28))
          {
            if (v33 >= 0xFFFF)
            {
              v33 = 0xFFFFLL;
            }

            sub_1000FC690((v85 << 32) | ((v33 & ~(v33 >> 63)) << 48) | 0x221, v26, &v91);
            sub_1000572F0(v102);

            v36 = *(v9 + 112);
            v106[4] = *(v9 + 96);
            v106[5] = v36;
            v106[6] = *(v9 + 128);
            v107 = *(v9 + 144);
            v37 = *(v9 + 48);
            v106[0] = *(v9 + 32);
            v106[1] = v37;
            v38 = *(v9 + 80);
            v106[2] = *(v9 + 64);
            v106[3] = v38;
            sub_100057294(v106, &v94);
            v39 = v86;
            sub_1000579AC(Strong, v106, v86, &v90);

            sub_1000572F0(v106);
            v40 = v90;
            v41 = NSData.startIndex.getter();
            v42 = NSData.endIndex.getter();
            v43 = NSData.startIndex.getter();
            v44 = NSData.endIndex.getter();
            if (v41 < v43 || v44 < v41)
            {
              __break(1u);
            }

            else
            {
              v45 = NSData.startIndex.getter();
              v46 = NSData.endIndex.getter();
              if (v42 >= v45 && v46 >= v42)
              {
                if (!__OFSUB__(v42, v41))
                {
                  if (v40 == v42 - v41)
                  {
                    if ((v84 & 0x100) == 0)
                    {
                      sub_10000CA2C();
                      swift_allocError();
                      *v47 = 32;
                      *(v47 + 8) = 0;
                      *(v47 + 16) = 0xE000000000000000;
                      swift_willThrow();

                      return;
                    }

                    v49 = v39;
                    v50 = *[v49 bytes];

                    if (v50 == 1)
                    {

                      return;
                    }

                    sub_1000A0D14(v6, v50);
                    v87 = v51;

                    v52 = *(v9 + 112);
                    v98 = *(v9 + 96);
                    v99 = v52;
                    v100 = *(v9 + 128);
                    v101 = *(v9 + 144);
                    v53 = *(v9 + 48);
                    v94 = *(v9 + 32);
                    v95 = v53;
                    v54 = *(v9 + 80);
                    v96 = *(v9 + 64);
                    v97 = v54;
                    sub_100057294(&v94, &v91);
                    v81(&v91, v83, v82);
                    v55 = v92;
                    v56 = v93;
                    v57 = sub_10001EAB8(&v91, v92);
                    v58 = (v56[2])(v55, v56);
                    if (v58 >> 16)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v59 = v58;
                      sub_10000CE78(&v91);
                      v89 = 0;
                      v60 = [objc_allocWithZone(NSMutableData) initWithLength:12];
                      if (!v60)
                      {
LABEL_59:
                        __break(1u);
                        return;
                      }

                      v56 = v60;
                      v61 = [v60 mutableBytes];
                      *v61 = v59;
                      *(v61 + 1) = v80;
                      *(v61 + 4) = 3;
                      v62 = *(v94 + 2);
                      v57 = v56;
                      v63 = NSData.startIndex.getter();
                      v64 = NSData.endIndex.getter();
                      v55 = NSData.startIndex.getter();
                      v65 = NSData.endIndex.getter();
                      if (v63 >= v55 && v65 >= v63)
                      {
                        v57 = v56;
                        v55 = NSData.startIndex.getter();
                        v66 = NSData.endIndex.getter();
                        if (v64 >= v55 && v66 >= v64)
                        {
                          v67 = v64 - v63;
                          if (!__OFSUB__(v64, v63))
                          {
                            if (v67 >= 0xFFFF)
                            {
                              v67 = 0xFFFFLL;
                            }

                            sub_1000FC690((v62 << 32) | ((v67 & ~(v67 >> 63)) << 48) | 0x221, v56, &v89);
                            sub_1000572F0(&v94);

                            v68 = *(v9 + 112);
                            v104[4] = *(v9 + 96);
                            v104[5] = v68;
                            v104[6] = *(v9 + 128);
                            v105 = *(v9 + 144);
                            v69 = *(v9 + 48);
                            v104[0] = *(v9 + 32);
                            v104[1] = v69;
                            v70 = *(v9 + 80);
                            v104[2] = *(v9 + 64);
                            v104[3] = v70;
                            sub_100057294(v104, &v91);
                            v20 = v87;
                            sub_1000579AC(Strong, v104, v87, &v90);

                            sub_1000572F0(v104);
                            v72 = v90;
                            v73 = NSData.startIndex.getter();
                            v74 = NSData.endIndex.getter();
                            v75 = NSData.startIndex.getter();
                            v76 = NSData.endIndex.getter();
                            if (v73 >= v75 && v76 >= v73)
                            {
                              v77 = NSData.startIndex.getter();
                              v78 = NSData.endIndex.getter();
                              if (v74 >= v77 && v78 >= v74)
                              {
                                if (!__OFSUB__(v74, v73))
                                {
                                  v21 = Strong;
                                  if (v72 == v74 - v73)
                                  {

                                    return;
                                  }

                                  goto LABEL_47;
                                }

                                goto LABEL_58;
                              }

LABEL_57:
                              __break(1u);
LABEL_58:
                              __break(1u);
                              goto LABEL_59;
                            }

LABEL_56:
                            __break(1u);
                            goto LABEL_57;
                          }

LABEL_54:
                          __break(1u);
                          __break(1u);
                          __break(1u);
                          swift_once();
                          v71 = type metadata accessor for AUALog(0);
                          sub_10000A1BC(v71, qword_100179508);
                          sub_100039F58(2, Strong + v55, v57, 0);

                          swift_willThrow();
                          sub_1000572F0(&v94);

                          return;
                        }

LABEL_53:
                        __break(1u);
                        goto LABEL_54;
                      }
                    }

                    __break(1u);
                    goto LABEL_53;
                  }

                  sub_10000CA2C();
                  swift_allocError();
                  *v48 = 30;
                  *(v48 + 8) = 0;
                  *(v48 + 16) = 0xE000000000000000;
                  swift_willThrow();

                  v35 = Strong;
LABEL_14:

                  return;
                }

LABEL_50:
                __break(1u);
              }
            }

            __break(1u);
            goto LABEL_50;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          sub_10000CA2C();
          swift_allocError();
          *v79 = 30;
          *(v79 + 8) = 0;
          *(v79 + 16) = 0xE000000000000000;
          swift_willThrow();

          return;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_45;
  }
}

id sub_100059C68(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___AUAStreamFormat_altSetting] = a2;

  [a3 minimum];
  v7 = v6;
  [a3 maximum];
  if (v7 == v8)
  {
    v16.receiver = v3;
    v16.super_class = type metadata accessor for AUAStreamFormat();
    result = objc_msgSendSuper2(&v16, "initWithAudioStreamBasicDescription:", a1);
    if (result)
    {
LABEL_5:
      v15 = result;

      return v15;
    }

    __break(1u);
  }

  [a3 minimum];
  v11 = v10;
  [a3 maximum];
  *a1 = 0;
  v12 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v12;
  v19 = *(a1 + 32);
  v20 = v11;
  v21 = v13;
  v14 = type metadata accessor for AUAStreamFormat();
  v17.receiver = v3;
  v17.super_class = v14;
  result = objc_msgSendSuper2(&v17, "initWithAudioStreamRangedDescription:", v18);
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100059DAC@<X0>(void *a1@<X8>)
{
  [v1 audioStreamBasicDescription];
  v16 = v13;
  v17 = v14;
  v15 = v12;
  v3 = *&v1[OBJC_IVAR___AUAStreamFormat_altSetting];

  [v1 minimumSampleRate];
  v5 = v4;
  [v1 maximumSampleRate];
  v7 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:v5 maximum:v6];
  v8 = type metadata accessor for AUAStreamFormat();
  v9 = objc_allocWithZone(v8);
  v10 = sub_100059C68(&v15, v3, v7);
  result = [v10 setSampleRate:v12];
  a1[3] = v8;
  *a1 = v10;
  return result;
}

BOOL sub_100059F40(uint64_t a1)
{
  sub_100022990(a1, v19);
  v3 = v20;
  if (v20)
  {
    v4 = sub_10001EAB8(v19, v20);
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    sub_10000CE78(v19);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for AUAStreamFormat();
  v18.receiver = v1;
  v18.super_class = v9;
  v10 = objc_msgSendSuper2(&v18, "isEqual:", v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_100022990(a1, v19);
    if (v20)
    {
      if (swift_dynamicCast())
      {
        v11 = *&v17[OBJC_IVAR___AUAStreamFormat_altSetting];
        if (v11)
        {
          v12 = *&v1[OBJC_IVAR___AUAStreamFormat_altSetting];
          if (v12)
          {
            v13 = *(*(v11 + 16) + 3);
            v14 = *(*(v12 + 16) + 3);

            return v13 == v14;
          }
        }
      }
    }

    else
    {
      sub_100022ADC(v19);
    }
  }

  return 0;
}

BOOL sub_10005A198(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUAStreamFormat();
  if (objc_msgSendSuper2(&v5, "isCompatible:", a1))
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && swift_dynamicCastClass() != 0;
}

id sub_10005A324(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AUAStreamFormat();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t Endpoint.usageType.getter()
{
  v1 = *v0;
  result = IOUSBGetEndpointUsageType(*v0);
  if (!result)
  {
    wMaxPacketSize = v1->wMaxPacketSize;
    return wMaxPacketSize <= 8 && wMaxPacketSize > 2;
  }

  return result;
}

Swift::Int sub_10005A400()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005A448(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t tIOUSBEndpointType.string.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x7075727265746E49;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1802270018;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6E6F7268636F7349;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x6C6F72746E6F43;
  }
}

uint64_t tIOUSBEndpointUsageType.string.getter(int a1)
{
  v1 = 0x706D4920636F7349;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x65654620636F7349;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x74614420636F7349;
  }
}

uint64_t tIOUSBEndpointSynchronizationType.string.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E6F7268636E7953;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x6576697470616441;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6F7268636E797341;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701736270;
  }
}

Swift::Int LockDelay.hashValue.getter(char a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10005A768()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10005A7C8()
{
  v1 = *(v0 + 1);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10005A808(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t Endpoint.bRefresh.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 25) = BYTE1(result) & 1;
  return result;
}

BOOL Endpoint.synchronizationType.getter()
{
  v1 = *v0;
  v2 = IOUSBGetEndpointSynchronizationType(*v0);
  if (IOUSBGetEndpointDirection(v1) == 1 && v2 == 0)
  {
    return !IOUSBGetEndpointUsageType(v1) && v1->wMaxPacketSize - 9 < 0xFFFFFFFA;
  }

  return v2;
}

uint64_t Endpoint.exceptionList.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

void Endpoint.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  v4 = *(v2 + 8);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
    v5 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v2 + 25))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v5);
  if (*(v2 + 25))
  {
LABEL_4:
    v6 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v6 = *(v2 + 24);
  Hasher._combine(_:)(1u);
LABEL_8:
  Hasher._combine(_:)(v6);
  v7 = *(v2 + 40);
  Hasher._combine(_:)(*(v2 + 32) & 1);
  Hasher._combine(_:)(v7);
  if (*(v2 + 49))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 48);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v8);
  v9 = *(v2 + 56);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    v10 = *(v9 + 16);
    Hasher._combine(_:)(v10);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v12 = *(v11 + 2);
        v13 = *v11;
        v11 = (v11 + 3);
        USBDescriptorControl.hash(into:)(a1, v13 | (v12 << 16));
        --v10;
      }

      while (v10);
    }

    v14 = *(v2 + 64);
    if (v14)
    {
LABEL_16:
      Hasher._combine(_:)(1u);
      v15 = *(v14 + 16);
      Hasher._combine(_:)(v15);
      if (v15)
      {
        v16 = (v14 + 48);
        do
        {
          v17 = *(v16 - 2);
          v18 = *(v16 - 1);
          v19 = *v16;
          v16 += 3;
          Hasher._combine(_:)(v17);
          Hasher._combine(_:)(v18);
          Hasher._combine(_:)(v19);
          --v15;
        }

        while (v15);
      }

      v20 = *(v2 + 72);
      if (v20)
      {
        goto LABEL_20;
      }

LABEL_26:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v14 = *(v2 + 64);
    if (v14)
    {
      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(0);
  v20 = *(v2 + 72);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_20:
  Hasher._combine(_:)(1u);
  v21 = *(v20 + 16);
  Hasher._combine(_:)(v21);
  if (v21)
  {
    v22 = (v20 + 32);
    do
    {
      v23 = *v22++;
      Hasher._combine(_:)(v23);
      --v21;
    }

    while (v21);
  }
}

Swift::Int Endpoint.hashValue.getter()
{
  Hasher.init(_seed:)();
  Endpoint.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005AC40(uint64_t a1)
{
  Hasher.init(_seed:)();
  Endpoint.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10005AC7C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9AUASDCore8EndpointV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

uint64_t _s9AUASDCore8EndpointV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    if (v6 != v7)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v2 = *(a2 + 25);
  if (*(a1 + 25))
  {
    if (!*(a2 + 25))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = 0;
  if (((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
  {
    v2 = *(a2 + 49);
    if (*(a1 + 49))
    {
      if (!*(a2 + 49))
      {
        return v2;
      }
    }

    else
    {
      if (*(a1 + 48) != *(a2 + 48))
      {
        LOBYTE(v2) = 1;
      }

      if (v2)
      {
        return 0;
      }
    }

    v2 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if (!v2)
      {
        return v2;
      }

      v8 = a1;
      v9 = a2;
      v10 = sub_1000E4630(*(a1 + 56), *(a2 + 56));
      a2 = v9;
      v11 = v10;
      a1 = v8;
      if (!v11)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }

    v2 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (!v2)
      {
        return v2;
      }

      v12 = a1;
      v13 = a2;
      v14 = sub_1000E46CC(*(a1 + 64), *(a2 + 64));
      a2 = v13;
      v15 = v14;
      a1 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }

    v16 = *(a2 + 72);
    if (*(a1 + 72))
    {
      if (v16 && (sub_1000EFF58() & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10005AF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005AFCC()
{
  result = qword_1001763D8;
  if (!qword_1001763D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001763D8);
  }

  return result;
}

unint64_t sub_10005B024()
{
  result = qword_1001763E0;
  if (!qword_1001763E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001763E0);
  }

  return result;
}

unint64_t sub_10005B07C()
{
  result = qword_1001763E8;
  if (!qword_1001763E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001763E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockDelay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LockDelay(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10005B174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_10005B1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_10005B254(char *a1, unint64_t a2)
{
  v5 = v2;
  v8 = type metadata accessor for OSSignpostID();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = __chkstk_darwin(v8);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v46 - v11;
  v50 = type metadata accessor for LogID(0);
  __chkstk_darwin(v50);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR___AUAStream_logID;
    v17 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
    swift_beginAccess();
    sub_10005D8A8(&a1[v16], v5 + v17);
    swift_endAccess();
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v18._countAndFlagsBits = 0x676E696C706D6173;
    v18._object = 0xED00002065746152;
    String.append(_:)(v18);
    [v15 samplingRate];
    Double.write<A>(to:)();
    v19._countAndFlagsBits = 0xD000000000000011;
    v19._object = 0x800000010012D370;
    String.append(_:)(v19);
    v55 = *(a2 + 96);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._object = 0x800000010012D390;
    v21._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v21);
    v55 = *(a2 + 104);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = v56;
    v24 = v57;
    sub_10000A2A4(v5 + v17, v13);
    v25 = qword_100173CB0;
    v26 = v15;

    v27 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    if (byte_1001794E8 == 1)
    {
      v28 = v23;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for AUALog(0);
      v30 = sub_10000A1BC(v29, qword_100179508);
      v31 = v26;

      sub_10003DFF4(4, "AUASampleManager_prepareSampleManager", 37, 2, v13, v28, v24, v30, v31, a2, v5, v27);
    }

    else
    {
      v47 = v26;
      v48 = v27;
      v49 = v13;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for AUALog(0);
      v33 = sub_10000A1BC(v32, qword_100179508);
      v34 = v52;
      v35 = *(v53 + 16);
      v35(v52, &v49[*(v50 + 20)], v54);

      v50 = v33;
      v36 = OSSignposter.logHandle.getter();
      v37 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v38 = v23;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v56 = v40;
        *v39 = 136446210;
        *(v39 + 4) = sub_100035760(v38, v24, &v56);
        v41 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v37, v41, "AUASampleManager_prepareSampleManager", "%{public}s", v39, 0xCu);
        sub_10000CE78(v40);
        v34 = v52;
      }

      v42 = v54;
      v35(v51, v34, v54);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v43 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v53 + 8))(v34, v42);
      v44 = v47;
      v27 = v48;
      sub_10005B8D4(v47, a2, v5, v48);

      sub_1000461FC(v50, "AUASampleManager_prepareSampleManager", 37, 2, v43);

      v13 = v49;
    }

    return sub_10000C9D0(v13);
  }

  else
  {
    __break(1u);

    __break(1u);

    sub_1000461FC(v50, "AUASampleManager_prepareSampleManager", 37, 2, v2);

    __break(1u);
  }

  return result;
}

void sub_10005B8D4(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  [a1 samplingRate];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v8 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v8;
  v10 = *(a2 + 104);
  if (!is_mul_ok(v8, v10))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = *(a2 + 96);
  if (!is_mul_ok(v11, 0x3E8uLL))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = 1000 * v11;
  if (!(1000 * v11))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = v9 * v10;
  v14 = v9 * v10 / v12;
  *(a3 + 16) = v14;
  if (!is_mul_ok(v14, v12))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = v14 * v12;
  v16 = v13 >= v15;
  v17 = v13 - v15;
  if (!v16)
  {
    goto LABEL_33;
  }

  if (HIWORD(v17))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = (v17 << 16) / v11;
  *(a3 + 24) = v18;
  *(a3 + 32) = 0;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = 8 * v11;
  *(a3 + 64) = v14;
  *(a3 + 72) = v18;
  *(a3 + 96) = sub_1000B817C() == 1;
  *(a3 + 80) = _swiftEmptyArrayStorage;

  v19 = [a4 physicalFormat];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  type metadata accessor for AUAStreamFormat();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = *(v21 + OBJC_IVAR___AUAStreamFormat_altSetting);

  if (!v22)
  {
    goto LABEL_21;
  }

  v20 = *(v22 + 112);

  if (!v20)
  {
    goto LABEL_21;
  }

  a2 = v20[13];

  v23 = *(a3 + 40);
  if (!v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = a2 / v23;
  v25 = *(a3 + 48);
  if (!is_mul_ok(v24, v25))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v24 * v25;
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:

LABEL_21:
    v26 = 0;
  }

  *(a3 + 104) = v26;
  if (*(a3 + 96) == 1)
  {
    a2 = *(a3 + 88);
    v27 = __chkstk_darwin(v19);
    __chkstk_darwin(v27);

    os_unfair_lock_lock((a2 + 16));
    sub_10001F004(v28);
    if (v4)
    {
LABEL_38:
      os_unfair_lock_unlock((a2 + 16));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((a2 + 16));
  }
}

void sub_10005BB84(void *a1, uint64_t a2)
{
  v2 = a1[7];
  if (v2 >> 61)
  {
    goto LABEL_29;
  }

  v4 = 8 * v2;
  if (*(a2 + OBJC_IVAR___AUAAudioDevice_function))
  {
    v5 = *(a2 + OBJC_IVAR___AUAAudioDevice_function + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    if (v7)
    {
      v8 = v7;
      v9 = *&v7[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v9)
      {
        v10 = sub_1000AA808(0x1Du, v9);

        v4 >>= v10;
        goto LABEL_6;
      }

      if (!v4)
      {
        return;
      }

LABEL_9:
      while (1)
      {
        v11 = a1[3];
        v12 = a1[4];
        v13 = __CFADD__(v12, v11);
        v14 = v12 + v11;
        if (v13)
        {
          break;
        }

        a1[4] = v14;
        v15 = a1[2];
        if (v14 < 0x3E80001)
        {
          v23 = a1[10];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1[10] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_10002400C(0, *(v23 + 2) + 1, 1, v23);
            a1[10] = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_10002400C((v25 > 1), v26 + 1, 1, v23);
          }

          *(v23 + 2) = v26 + 1;
          *&v23[8 * v26 + 32] = v15;
          a1[10] = v23;
          if (!--v4)
          {
            return;
          }
        }

        else
        {
          v13 = __CFADD__(v15, 1);
          v16 = v15 + 1;
          if (v13)
          {
            goto LABEL_27;
          }

          v17 = a1[10];
          v18 = swift_isUniquelyReferenced_nonNull_native();
          a1[10] = v17;
          if ((v18 & 1) == 0)
          {
            v17 = sub_10002400C(0, *(v17 + 2) + 1, 1, v17);
            a1[10] = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_10002400C((v19 > 1), v20 + 1, 1, v17);
          }

          *(v17 + 2) = v20 + 1;
          *&v17[8 * v20 + 32] = v16;
          a1[10] = v17;
          v21 = a1[4];
          v13 = v21 >= 0x3E80000;
          v22 = v21 - 65536000;
          if (!v13)
          {
            goto LABEL_28;
          }

          a1[4] = v22;
          if (!--v4)
          {
            return;
          }
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }
  }

LABEL_6:
  if (v4)
  {
    goto LABEL_9;
  }
}

char *sub_10005BDBC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LogID(0);
  v9 = __chkstk_darwin(v54);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v53 - v13;
  v15 = *(v3 + 96);
  v55 = v5;
  v56 = v8;
  v57 = v6;
  if (v15 == 1)
  {
    v16 = *(v3 + 88);
    v17 = __chkstk_darwin(v12);
    *(&v53 - 2) = v3;
    *(&v53 - 1) = a1;
    __chkstk_darwin(v17);
    *(&v53 - 2) = sub_10005D88C;
    *(&v53 - 1) = v18;

    os_unfair_lock_lock(v16 + 4);
    sub_10000CEE0(&v60);
    os_unfair_lock_unlock(v16 + 4);
    v19 = v60;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (!*(v19 + 2))
  {
    if (*(v3 + 96) == 1)
    {
      v40 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
      swift_beginAccess();
      sub_10000A2A4(v3 + v40, v14);
      sub_100038CD8("AUASampleManager_getSampleCounts", 32, 2, 0xD000000000000031, 0x800000010012D460, v14);
      sub_10000C9D0(v14);
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || a1 > *(v19 + 3) >> 1)
    {
      if (*(v19 + 2) <= a1)
      {
        v42 = a1;
      }

      else
      {
        v42 = *(v19 + 2);
      }

      result = sub_10002400C(result, v42, 0, v19);
      v19 = result;
    }

    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    if (a1)
    {
      v22 = 65536000;
      while (1)
      {
        v44 = *(v3 + 24);
        v45 = *(v3 + 32);
        v46 = __CFADD__(v45, v44);
        v47 = v45 + v44;
        if (v46)
        {
          break;
        }

        *(v3 + 32) = v47;
        v48 = *(v3 + 16);
        if (v47 < 0x3E80001)
        {
          v2 = *(v19 + 2);
          v43 = *(v19 + 3);
          if (v2 >= v43 >> 1)
          {
            v19 = sub_10002400C((v43 > 1), v2 + 1, 1, v19);
          }

          *(v19 + 2) = v2 + 1;
          *&v19[8 * v2 + 32] = v48;
          if (!--a1)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v46 = __CFADD__(v48, 1);
          v49 = v48 + 1;
          if (v46)
          {
            goto LABEL_40;
          }

          v2 = *(v19 + 2);
          v50 = *(v19 + 3);
          if (v2 >= v50 >> 1)
          {
            v19 = sub_10002400C((v50 > 1), v2 + 1, 1, v19);
          }

          *(v19 + 2) = v2 + 1;
          *&v19[8 * v2 + 32] = v49;
          v51 = *(v3 + 32);
          v46 = v51 >= 0x3E80000;
          v52 = v51 - 65536000;
          if (!v46)
          {
            goto LABEL_41;
          }

          *(v3 + 32) = v52;
          if (!--a1)
          {
            goto LABEL_5;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

LABEL_5:
  v60 = 0x20746C75736572;
  v61 = 0xE700000000000000;
  v58 = *(v19 + 2);

  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v2 = v60;
  a1 = v61;
  v21 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  swift_beginAccess();
  v22 = v11;
  sub_10000A2A4(v3 + v21, v11);
  if (qword_100173CB0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v23 = v56;
  v24 = v57;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v25, qword_100179508);
    v58 = StaticString.description.getter();
    v59 = v26;
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28._countAndFlagsBits = v2;
    v28._object = a1;
    String.append(_:)(v28);

    sub_100039AA0(4, v22, v58, v59);

    v29 = v22;
  }

  else
  {
    v53 = v2;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v30, qword_100179508);
    v31 = v55;
    (*(v24 + 16))(v23, v22 + *(v54 + 20), v55);

    v32 = OSSignposter.logHandle.getter();
    v33 = v22;
    v34 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v33;
      v37 = v36;
      v58 = v36;
      *v35 = 136446210;
      v38 = sub_100035760(v53, a1, &v58);

      *(v35 + 4) = v38;
      v39 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v34, v39, "AUASampleManager_getSampleCounts", "%{public}s", v35, 0xCu);
      sub_10000CE78(v37);

      (*(v24 + 8))(v23, v31);
      v29 = v54;
    }

    else
    {

      (*(v24 + 8))(v23, v31);
      v29 = v33;
    }
  }

  sub_10000C9D0(v29);

  return v19;
}

uint64_t sub_10005C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = _swiftEmptyArrayStorage;
  result = *(a1 + 80);
  if (*(result + 16) >= a2)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {

      sub_10007DE94(v8, v8 + 32, 0, (2 * a2) | 1);
      result = *(a1 + 80);
      v5 = *(result + 16);
      if (v5 >= a2)
      {
        if (!a2)
        {

LABEL_6:
          *(a1 + 80) = v9;

          goto LABEL_7;
        }

LABEL_10:
        sub_1000B9D74(result, result + 32, a2, (2 * v5) | 1);
        v9 = v10;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:
  *a3 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10005C530(uint64_t result)
{
  v2 = v1[13];
  v3 = *(result + 16);
  if ((v2 * v3) >> 64 == (v2 * v3) >> 63)
  {
    v4 = result;
    v5 = sub_10002400C(0, (v2 * v3) & ~((v2 * v3) >> 63), 0, _swiftEmptyArrayStorage);
    v12 = v5;
    if (v3)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6++;
        v11 = v7;
        sub_10005C664(&v11, v1, &v12);
        --v3;
      }

      while (v3);
      v5 = v12;
    }

    v8 = v1[11];
    v10 = __chkstk_darwin(v5);
    __chkstk_darwin(v10);

    os_unfair_lock_lock(v8 + 4);
    sub_10001F004(v9);
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005C664(unint64_t *a1, void *a2, char **a3)
{
  v83 = a3;
  *&v77 = type metadata accessor for OSSignpostID();
  v6 = *(v77 - 8);
  v7 = __chkstk_darwin(v77);
  v9 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v72[-v10];
  v12 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v72[-v17];
  v19 = *a1;
  v78 = a1[1];
  if (v19 | v78)
  {
    v20 = a2[8];
    if (v20 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v20 + 1 >= v19)
    {
      if (v19 == -1)
      {
        __break(1u);
      }

      else
      {
        if (v19 + 1 < v20)
        {
          goto LABEL_6;
        }

        v76 = v6;
        v6 = v16;
        v81 = 0;
        v82 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v81 = 0x20656C6F6877;
        v82 = 0xE600000000000000;
        v79 = v19;
        v3 = &protocol witness table for UInt;
        v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v52);

        v53._countAndFlagsBits = 0x697463617266202CLL;
        v53._object = 0xEB00000000206E6FLL;
        String.append(_:)(v53);
        v79 = v78;
        v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v54);

        v18 = v81;
        v11 = v82;
        v55 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
        swift_beginAccess();
        sub_10000A2A4(a2 + v55, v15);
        if (qword_100173CB0 == -1)
        {
LABEL_32:
          if (byte_1001794E8 == 1)
          {
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v56, qword_100179508);
            v79 = StaticString.description.getter();
            v80 = v57;
            v58._countAndFlagsBits = 32;
            v58._object = 0xE100000000000000;
            String.append(_:)(v58);
            v59._countAndFlagsBits = v18;
            v59._object = v11;
            String.append(_:)(v59);

            v11 = v80;
            sub_100039AA0(4, v15, v79, v80);
          }

          else
          {
            v75 = v18;
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v60 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v60, qword_100179508);
            v61 = *(v6 + 20);
            v62 = v76;
            v6 = v77;
            (*(v76 + 16))(v9, &v15[v61], v77);

            v63 = OSSignposter.logHandle.getter();
            v64 = static os_signpost_type_t.event.getter();

            if (OS_os_log.signpostsEnabled.getter())
            {
              v65 = swift_slowAlloc();
              v74 = v63;
              v73 = v64;
              v66 = v65;
              v79 = swift_slowAlloc();
              v6 = v79;
              *v66 = 136446210;
              v67 = sub_100035760(v75, v11, &v79);

              *(v66 + 4) = v67;
              v68 = OSSignpostID.rawValue.getter();
              v11 = v74;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v73, v68, "AUASampleManager_addExplicitFeedbackSamples", "%{public}s", v66, 0xCu);
              sub_10000CE78(v6);

              v69 = *(v62 + 8);
              v3 = (v62 + 8);
              v69(v9, v77);
            }

            else
            {

              v70 = *(v62 + 8);
              v3 = (v62 + 8);
              v70(v9, v6);
            }
          }

          result = sub_10000C9D0(v15);
          v71 = v78;
          a2[8] = v19;
          a2[9] = v71;
          v18 = a2[13];
          if (v18 < 0)
          {
            goto LABEL_42;
          }

          goto LABEL_16;
        }
      }

      swift_once();
      goto LABEL_32;
    }
  }

LABEL_6:
  v3 = v16;
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v81 = 0x20656C6F6877;
  v82 = 0xE600000000000000;
  v79 = v19;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x697463617266202CLL;
  v22._object = 0xEB00000000206E6FLL;
  String.append(_:)(v22);
  v79 = v78;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v19 = v81;
  v15 = v82;
  v24 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  swift_beginAccess();
  sub_10000A2A4(a2 + v24, v18);
  if (qword_100173CB0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    if (byte_1001794E8 == 1)
    {
      if (qword_100173CC0 != -1)
      {
LABEL_48:
        swift_once();
      }

      v25 = type metadata accessor for AUALog(0);
      v11 = sub_10000A1BC(v25, qword_100179508);
      v79 = StaticString.description.getter();
      v80 = v26;
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = v19;
      v28._object = v15;
      String.append(_:)(v28);

      sub_100039AA0(4, v18, v79, v80);
    }

    else
    {
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v29, qword_100179508);
      v30 = v3[5];
      v31 = v6;
      v32 = *(v6 + 16);
      v33 = v77;
      v32(v11, v18 + v30, v77);

      v34 = v33;
      v6 = OSSignposter.logHandle.getter();
      LODWORD(v78) = static os_signpost_type_t.event.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v19;
        v38 = v36;
        v79 = v36;
        *v35 = 136446210;
        v39 = sub_100035760(v37, v15, &v79);

        *(v35 + 4) = v39;
        v40 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v78, v40, "AUASampleManager_addExplicitFeedbackSamples using previous value", "%{public}s", v35, 0xCu);
        sub_10000CE78(v38);

        v41 = *(v31 + 8);
        v3 = (v31 + 8);
        v41(v11, v77);
      }

      else
      {

        v42 = *(v31 + 8);
        v3 = (v31 + 8);
        v42(v11, v34);
      }
    }

    result = sub_10000C9D0(v18);
    v19 = a2[8];
    v78 = a2[9];
    v18 = a2[13];
    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_16:
  if (v18)
  {
    v75 = (v19 + 1);
    LODWORD(v76) = v19 == -1;
    v11 = &qword_100175398;
    v77 = xmmword_10011DE90;
    while (1)
    {
      v44 = a2[4];
      v45 = __CFADD__(v44, v78);
      v46 = v44 + v78;
      if (v45)
      {
        goto LABEL_43;
      }

      a2[4] = v46;
      v15 = v19;
      if (v46 >= 0x3E80001)
      {
        if (v76)
        {
          goto LABEL_45;
        }

        a2[4] = v46 - 65536000;
        v15 = v75;
      }

      v6 = v19;
      v19 = a2;
      sub_100001AB4(&qword_100175398, &qword_100121F30);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = v15;
      a2 = v83;
      v15 = *v83;
      v3 = *(*v83 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if (!isUniquelyReferenced_nonNull_native || (v49 = *(v15 + 3) >> 1, v49 <= v3))
      {
        if (*(v15 + 2) <= v3 + 1)
        {
          v50 = v3 + 1;
        }

        else
        {
          v50 = *(v15 + 2);
        }

        v15 = sub_10002400C(isUniquelyReferenced_nonNull_native, v50, 1, v15);
        *v83 = v15;
        v49 = *(v15 + 3) >> 1;
      }

      v51 = *(v15 + 2);
      if (v49 <= v51)
      {
        goto LABEL_44;
      }

      a2 = v19;
      *&v15[8 * v51 + 32] = *(inited + 32);

      ++*(v15 + 2);
      *v83 = v15;
      --v18;
      v19 = v6;
      if (!v18)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10005D044(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v46 = type metadata accessor for OSSignpostID();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogID(0);
  __chkstk_darwin(v11);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v51 = 544044398;
  v52 = 0xE400000000000000;
  v45 = a1;
  v49 = *(a1 + 16);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x800000010012D370;
  String.append(_:)(v15);
  v48 = a2;
  v49 = a2;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._object = 0x800000010012D390;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v47 = a3;
  v49 = a3;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19 = v51;
  v20 = v52;
  v21 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  swift_beginAccess();
  sub_10000A2A4(v4 + v21, v13);
  if (qword_100173CB0 != -1)
  {
    swift_once();
  }

  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v22, qword_100179508);
    v49 = StaticString.description.getter();
    v50 = v23;
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = v19;
    v25._object = v20;
    String.append(_:)(v25);

    sub_100039AA0(4, v13, v49, v50);
  }

  else
  {
    v44 = v19;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v26, qword_100179508);
    v27 = v8;
    v28 = v46;
    (*(v8 + 16))(v10, &v13[*(v11 + 20)], v46);

    v29 = OSSignposter.logHandle.getter();
    v30 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v31 = swift_slowAlloc();
      v43 = v30;
      v32 = v31;
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136446210;
      v34 = sub_100035760(v44, v20, &v49);

      *(v32 + 4) = v34;
      v35 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v43, v35, "AUASampleManager_addImplicitFeedbackSamples", "%{public}s", v32, 0xCu);
      sub_10000CE78(v33);
    }

    else
    {
    }

    (*(v27 + 8))(v10, v28);
  }

  result = sub_10000C9D0(v13);
  if (v4[6] == v48 && v4[5] == v47)
  {
    v37 = v4[11];
    v38 = __chkstk_darwin(result);
    v39 = v45;
    *&v42[-16] = v4;
    *&v42[-8] = v39;
    __chkstk_darwin(v38);
    *&v42[-16] = sub_10005D784;
    *&v42[-8] = v40;

    os_unfair_lock_lock(v37 + 4);
    sub_10001EA48(v41);
    os_unfair_lock_unlock(v37 + 4);
  }

  return result;
}

uint64_t AUASampleManager.deinit()
{

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID);
  return v0;
}

uint64_t AUASampleManager.__deallocating_deinit()
{

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AUASampleManager(uint64_t a1)
{
  result = qword_100176418;
  if (!qword_100176418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005D6B4(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10005D79C()
{
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v2 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LogID(0);
  v4 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v4, v0 + v2);
  return v0;
}

uint64_t sub_10005D8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005D940(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if ((BYTE1(a1) - 1) > 5u)
  {
    v1 = 5;
  }

  else
  {
    v1 = qword_100121FC0[(BYTE1(a1) - 1)];
  }

  v3 = BYTE4(a1) | (v1 << 8);
  v4 = v3 | (BYTE3(a1) << 16);
  v5 = v3 | a1 & 0xFFFF0000;
  if ((a1 & 0xFF0000000000) != 0)
  {
    v5 = BYTE5(a1);
  }

  if ((a1 & 2) != 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10005D9E8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = 0;
  v9 = USBDescriptorControl.pbLayout()();
  v10 = sub_1000A0FF0(v9, 4);
  if (v3)
  {
    return v2;
  }

  v13 = v11;
  v96 = v10;
  v89 = a1;
  v14 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v29 = 7;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_18:

    return v2;
  }

  v16 = Strong;
  v17 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (v17 && sub_1000AA808(7u, v17))
  {
    sub_10000CA2C();
    swift_allocError();
    *v18 = 126;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v92 = v9;
  v91 = v14;
  v87 = v6;
  v88 = v8;
  v104 = v16;
  v90 = (v96 >> 8) & 1;
  HIBYTE(v86._object) = -18;
  strcpy(&v86, "Unknown Device");
  v100 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  v102 = *(a2 + 32);
  v97 = v89 & 0xFFFFFF00;
  v99 = "quest on device ";
  v94 = 0x800000010012BEE0;
  v95 = "ect number of bytes received";
  v101 = ((v89 & 0xFF00) << 16) | 0x1A1;
  v98 = xmmword_100120CD0;
  v93 = xmmword_10011DE90;
  v19 = 1;
  while (1)
  {
    v21 = *(v102 + 2);
    v22 = NSData.startIndex.getter();
    v23 = NSData.endIndex.getter();
    v24 = NSData.startIndex.getter();
    v25 = NSData.endIndex.getter();
    if (v22 < v24 || v25 < v22)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_55;
    }

    v24 = NSData.startIndex.getter();
    v26 = NSData.endIndex.getter();
    if (v23 < v24 || v26 < v23)
    {
      goto LABEL_52;
    }

    v27 = v23 - v22;
    if (__OFSUB__(v23, v22))
    {
      goto LABEL_53;
    }

    if (v27 >= 0xFFFF)
    {
      v27 = 0xFFFFLL;
    }

    v28 = v27 & ~(v27 >> 63);
    sub_1000FC690((v21 << 32) | (v28 << 48) | v101, v13, &v107);
    if (v19 == 4)
    {
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_54;
    }
  }

  v30 = v107;
  v2 = v13;
  v31 = NSData.startIndex.getter();
  v32 = NSData.endIndex.getter();
  v33 = NSData.startIndex.getter();
  v34 = NSData.endIndex.getter();
  if (v31 < v33 || v34 < v31)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    swift_once();
    v41 = sub_10000A1BC(v87, qword_1001794F0);
    v42 = v88;
    sub_10000A2A4(v41, v88);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for AUALog(0);
    v44 = sub_10000A1BC(v43, qword_100179508);
    v45 = v2;
    v2 = v44;
    sub_100039F58(2, v42, v45, v28);

    sub_10000C9D0(v42);
    sub_10000CA2C();
    swift_allocError();
    *v46 = 29;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v2 = v13;
  v33 = NSData.startIndex.getter();
  v35 = NSData.endIndex.getter();
  if (v32 < v33 || v35 < v32)
  {
    goto LABEL_67;
  }

  if (__OFSUB__(v32, v31))
  {
    goto LABEL_68;
  }

  if (v32 - v31 < v30)
  {
    sub_10000CA2C();
    swift_allocError();
    *v36 = 30;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  if (v90)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  v2 = v37 & 0xFFFFFF00 | v96;
  v38 = v13;
  v39 = sub_10009CAD4(v2, v38);
  v40 = v104;
  v48 = v39;

  if (v48 < 5u)
  {

    return v2;
  }

  v49 = sub_1000A0FF0(v92, v48);
  v51 = v50;
  v103 = 0;
  v97 = v49;

  v101 = sub_1000A2D88(v89 & 0xFFFFFF);
  v52 = *(v102 + 2);
  v13 = v51;
  v53 = NSData.startIndex.getter();
  v54 = v13;
  v24 = NSData.endIndex.getter();
  v55 = NSData.startIndex.getter();
  v56 = NSData.endIndex.getter();
  if (v53 < v55 || v56 < v53)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v54 = v13;
  v57 = NSData.startIndex.getter();
  v58 = NSData.endIndex.getter();
  if (v24 < v57 || v58 < v24)
  {
    goto LABEL_70;
  }

  v59 = v24 - v53;
  if (__OFSUB__(v24, v53))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v24 = v40;
  if (v59 >= 0xFFFF)
  {
    v59 = 0xFFFFLL;
  }

  v60 = v59 & ~(v59 >> 63);
  v61 = v52;
  v62 = (v52 << 32) | (v60 << 48);
  v63 = v101;
  v64 = v103;
  sub_1000FC690(v62 & 0xFFFFFFFF00FFFFFFLL | (v101 << 24) | 0x1A1, v51, &v107);
  if (v64)
  {
    v103 = v64;
    v54 = _convertErrorToNSError(_:)();
    v65 = [v54 code];

    if (v65 >= 0xFFFFFFFF80000000)
    {
      if (v65 <= 0x7FFFFFFF)
      {
        v66 = [v24 boxName];
        if (v66)
        {
          v67 = v66;
          v86._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86._object = v68;
        }

        v69 = v63 << 8;
        v105 = 0;
        v106 = 0xE000000000000000;
        if (v65 == -536850432)
        {
          _StringGuts.grow(_:)(32);

          v105 = 0xD000000000000012;
          v106 = v94;
          String.append(_:)(v86);

          v70._countAndFlagsBits = 0x64656C6C61745320;
          v70._object = 0xEA0000000000203ALL;
          String.append(_:)(v70);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
        }

        else
        {
          _StringGuts.grow(_:)(45);

          v105 = 0x20726F727245;
          v106 = 0xE600000000000000;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v77 = swift_allocObject();
          *(v77 + 16) = v93;
          *(v77 + 56) = &type metadata for Int32;
          *(v77 + 64) = &protocol witness table for Int32;
          *(v77 + 32) = v65;
          v78._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v78);

          v79._countAndFlagsBits = 0xD000000000000020;
          v79._object = (v95 | 0x8000000000000000);
          String.append(_:)(v79);
          String.append(_:)(v86);

          v80._countAndFlagsBits = 58;
          v80._object = 0xE100000000000000;
          String.append(_:)(v80);
        }

        v71 = swift_allocObject();
        *(v71 + 16) = v98;
        *(v71 + 56) = &type metadata for UInt8;
        *(v71 + 64) = &protocol witness table for UInt8;
        *(v71 + 32) = -95;
        *(v71 + 96) = &type metadata for UInt8;
        *(v71 + 104) = &protocol witness table for UInt8;
        *(v71 + 72) = 1;
        *(v71 + 136) = &type metadata for UInt16;
        *(v71 + 144) = &protocol witness table for UInt16;
        *(v71 + 112) = v69;
        *(v71 + 176) = &type metadata for UInt16;
        *(v71 + 184) = &protocol witness table for UInt16;
        *(v71 + 152) = v61;
        *(v71 + 216) = &type metadata for UInt16;
        *(v71 + 224) = &protocol witness table for UInt16;
        *(v71 + 192) = v60;
        v81._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v81);

        v54 = v105;
        v51 = v106;
        if (qword_100173CC0 == -1)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_64:
      v82 = type metadata accessor for AUALog(0);
      v83 = sub_10000A1BC(v82, qword_100179508);
      v84 = v54;
      v2 = v83;
      sub_100039F58(2, v24 + v100, v84, v51);

      swift_willThrow();

      goto LABEL_18;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_55:

  v72 = v107;
  v73 = NSData.startIndex.getter();
  v74 = NSData.endIndex.getter();
  v75 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v73 < v75 || result < v73)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v2 = v13;
  v76 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v74 < v76 || result < v74)
  {
    goto LABEL_76;
  }

  if (!__OFSUB__(v74, v73))
  {
    if (v72 == v74 - v73)
    {

      return v97 & 0x1FF;
    }

    else
    {
      sub_10000CA2C();
      swift_allocError();
      *v85 = 30;
      *(v85 + 8) = 0;
      *(v85 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    return v2;
  }

LABEL_77:
  __break(1u);
  return result;
}

unint64_t sub_10005EB10(int a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000010012D4F0;
  String.append(_:)(v8);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10011DE90;
  *(v9 + 56) = &type metadata for Int32;
  *(v9 + 64) = &protocol witness table for Int32;
  *(v9 + 32) = a1;
  v10._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v10);

  v11._object = 0x800000010012BE30;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v24 = a2;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v14 = v22;
  v13 = v23;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v15, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v16, qword_100179508);
  sub_100039AA0(2, v7, v14, v13);

  sub_10000C9D0(v7);
  if (a2 == 6 && (swift_beginAccess(), (v17 = *(v2 + 216)) != 0))
  {
    v18 = [v17 bytes];
    return sub_10005D940(*v18 | (*(v18 + 1) << 16));
  }

  else
  {
    sub_10000A2A4(v15, v7);
    sub_100039F58(2, v7, 0xD000000000000042, 0x800000010012D520);
    sub_10000C9D0(v7);
    sub_10000CA2C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }
}

unint64_t sub_10005EE4C(int a1, uint64_t a2)
{
  result = sub_10005EB10(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10005EE74(unsigned int a1, uint64_t a2)
{
  v3 = (a1 >> 18) & 0x3C | (a1 >> 6);
  if (v3 == 53)
  {
    v4 = sub_10005D9E8(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  else
  {
    if (v3 != 54)
    {
      sub_10000CA2C();
      swift_allocError();
      *v6 = 30;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0xE000000000000000;
      swift_willThrow();
      return v5;
    }

    sub_1000201E4(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  return v5;
}

uint64_t sub_10005EF14(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    return (0x30502010005uLL >> (8 * a1));
  }

  else
  {
    return 5;
  }
}

id sub_10005EF40(uint64_t a1, uint64_t a2, id a3)
{
  v7 = type metadata accessor for LogID(0);
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v10 = [objc_allocWithZone(NSMutableData) initWithLength:6];
  if (!v10)
  {
    sub_10000CA2C();
    swift_allocError();
    *v28 = 1;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    swift_willThrow();
    return a3;
  }

  v11 = v10;
  v55 = a1;
  v56 = a2;
  v54 = v7;
  v12 = v10;
  v13 = NSData.startIndex.getter();
  v14 = v12;
  v15 = NSData.endIndex.getter();
  v16 = NSData.startIndex.getter();
  v17 = NSData.endIndex.getter();
  if (v13 < v16 || v17 < v13)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = NSData.startIndex.getter();
  v14 = NSData.endIndex.getter();

  if (v15 < v16 || v14 < v15)
  {
    goto LABEL_46;
  }

  v20 = v15 - v13;
  if (__OFSUB__(v15, v13))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v20 >> 16)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v21 = a3 << 32;
  v14 = v56;
  sub_1000FC690(v21 | (v20 << 48) | (v55 << 16) | 0x6A1, v11, &v59);
  if (v3)
  {
    v22 = _convertErrorToNSError(_:)();
    v16 = [v22 code];

    if (v16 >= 0xFFFFFFFF80000000)
    {
      if (v16 <= 0x7FFFFFFF)
      {
        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v57 = 0x20726F727245;
        v58 = 0xE600000000000000;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_10011DE90;
        *(v23 + 56) = &type metadata for Int32;
        *(v23 + 64) = &protocol witness table for Int32;
        *(v23 + 32) = v16;
        v24._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v24);

        v25._object = 0x800000010012D570;
        v25._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v25);
        v14 = v57;
        v16 = v58;
        if (qword_100173CB8 == -1)
        {
LABEL_17:
          v26 = sub_10000A1BC(v54, qword_1001794F0);
          sub_10000A2A4(v26, v9);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v27, qword_100179508);
          sub_100039F58(2, v9, v14, v16);

          sub_10000C9D0(v9);
          goto LABEL_43;
        }

LABEL_52:
        swift_once();
        goto LABEL_17;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v53 = v9;
  v29 = v59;
  v12 = v12;
  a3 = NSData.startIndex.getter();
  v30 = v12;
  v31 = NSData.endIndex.getter();
  v32 = NSData.startIndex.getter();
  v33 = NSData.endIndex.getter();
  if (a3 < v32 || v33 < a3)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v30 = v12;
  v34 = NSData.startIndex.getter();
  v35 = NSData.endIndex.getter();

  if (v31 < v34 || v35 < v31)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v31, a3))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v31 - a3 < v29)
  {
    sub_10000CA2C();
    swift_allocError();
    v37 = 30;
LABEL_42:
    *v36 = v37;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
LABEL_43:
    swift_willThrow();

    return a3;
  }

  v38 = [v12 mutableBytes];
  v39 = *v38;
  if ([v12 length] >= v39)
  {
    sub_10000CA2C();
    swift_allocError();
    v37 = 37;
    goto LABEL_42;
  }

  result = [objc_allocWithZone(NSMutableData) initWithLength:*v38];
  if (result)
  {
    v52 = result;
    a3 = result;
    v41 = NSData.startIndex.getter();
    v30 = a3;
    v42 = NSData.endIndex.getter();
    v43 = NSData.startIndex.getter();
    v44 = NSData.endIndex.getter();
    if (v41 >= v43 && v44 >= v41)
    {
      v30 = a3;
      v45 = NSData.startIndex.getter();
      v46 = NSData.endIndex.getter();

      if (v42 >= v45 && v46 >= v42)
      {
        v47 = v42 - v41;
        v30 = v56;
        if (!__OFSUB__(v42, v41))
        {
          if ((v47 & 0x8000000000000000) == 0)
          {
            if (!(v47 >> 16))
            {
              sub_1000FC690(v21 | (v47 << 48) | (v55 << 16) | 0x6A1, v52, &v59);

              return a3;
            }

LABEL_60:
            __break(1u);
            __break(1u);
            __break(1u);
            swift_once();
            v48 = sub_10000A1BC(v54, qword_1001794F0);
            v49 = v53;
            sub_10000A2A4(v48, v53);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v50 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v50, qword_100179508);
            sub_100039F58(2, v49, v30, v21);

            sub_10000C9D0(v49);
            swift_willThrow();

            return a3;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005F6D4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v135 = a3;
  v8 = type metadata accessor for Mirror();
  v9 = __chkstk_darwin(v8);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_174;
  }

  v14 = *(a1 + 41);
  if (v14 > 0xF || ((1 << v14) & 0xF3FC) == 0)
  {
    v21 = 49;
    goto LABEL_18;
  }

  ObjectType = *(a1 + 32);
  if (ObjectType[2] != a2)
  {
    v21 = 84;
LABEL_18:
    sub_10000CA2C();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (!ObjectType[3])
  {
    v21 = 83;
    goto LABEL_18;
  }

  if (ObjectType[5] != 1)
  {
    v21 = 81;
    goto LABEL_18;
  }

  if (ObjectType[6] != 2)
  {
    v21 = 82;
    goto LABEL_18;
  }

  if (ObjectType[7] != 48)
  {
    v21 = 85;
    goto LABEL_18;
  }

  v131 = v12;
  v127 = v9;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v124 = 0;
  v123 = 0;
  v140 = 0;
  v141 = 0;
  LODWORD(v129) = 0;
  v132 = 0;
  v139 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 40);
  v19 = ObjectType[4];
  v117 = v3;
  v118 = v19;
  v164 = &_swiftEmptySetSingleton;
  v165 = &_swiftEmptySetSingleton;
  v136 = v18 | (v14 << 8);
  v125 = a1 + 41;
  v126 = (v10 + 8);
  v122 = 65280;
  v5 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v134 = ObjectType;
  v137 = v13;
  do
  {
    LODWORD(v133) = v132 & 1;
    v25 = (v125 + 16 * v17);
    while (1)
    {
      if (v17 >= v13)
      {
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v143 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_173;
      }

      v26 = *v25;
      v27 = *(v25 - 1) | (v26 << 8);
      v145 = *(v25 - 9);
      if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v145, v27, ObjectType, v136))
      {
        goto LABEL_20;
      }

      if (v26 != 17)
      {
        break;
      }

      if (v16)
      {
        v142 = v16;
        v28 = v165;
        v29 = v165[2];
        if (v29)
        {
          v144 = v20;
          v138 = v5;
          sub_100001AB4(&qword_100175170, &qword_100120D48);
          v30 = swift_allocObject();
          v31 = j__malloc_size(v30);
          v30[2] = v29;
          v30[3] = 2 * v31 - 64;
          v32 = sub_10011B610(&v159, v30 + 32, v29, v28);
          v129 = *(&v159 + 1);
          v33 = v159;
          v130 = v32;
          ObjectType = *(&v160 + 1);
          v5 = v161;

          sub_100022644(v33);
          if (v130 != v29)
          {
            goto LABEL_177;
          }

          ObjectType = v134;
          v5 = v138;
          v20 = v144;
        }

        else
        {
          v30 = _swiftEmptyArrayStorage;
        }

        v34 = v142;
        v13 = v137;
        if (!v30[2])
        {

          v30 = 0;
        }

        v148 = 1;
        v149 = 1;
        if (!*(v20 + 2))
        {

          v20 = 0;
        }

        *&v154 = v34;
        *(&v154 + 1) = v139;
        *&v155 = v140;
        BYTE8(v155) = 0;
        *(&v155 + 10) = v151;
        HIWORD(v155) = v152;
        *(&v156 + 1) = *v153;
        DWORD1(v156) = *&v153[3];
        *(&v157 + 2) = v146;
        WORD3(v157) = v147;
        BYTE9(v155) = v149;
        LOBYTE(v156) = v133;
        *(&v156 + 1) = v141;
        LOBYTE(v157) = 0;
        *&v159 = v34;
        *(&v159 + 1) = v139;
        BYTE1(v157) = v148;
        *(&v157 + 1) = v20;
        *&v158 = 0;
        *(&v158 + 1) = v30;
        *&v160 = v140;
        BYTE8(v160) = 0;
        BYTE9(v160) = v149;
        *(&v160 + 10) = v151;
        HIWORD(v160) = v152;
        LOBYTE(v161) = v133;
        DWORD1(v161) = *&v153[3];
        *(&v161 + 1) = *v153;
        *(&v161 + 1) = v141;
        LOBYTE(v162) = 0;
        BYTE1(v162) = v148;
        WORD3(v162) = v147;
        *(&v162 + 2) = v146;
        *(&v162 + 1) = v20;
        *&v163 = 0;
        *(&v163 + 1) = v30;
        sub_100022594(&v154, v150);
        sub_1000225F0(&v159);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
        }

        v36 = *(v5 + 2);
        v35 = *(v5 + 3);
        if (v36 >= v35 >> 1)
        {
          v5 = sub_1000243F8((v35 > 1), v36 + 1, 1, v5);
        }

        *(v5 + 2) = v36 + 1;
        v37 = &v5[80 * v36];
        *(v37 + 2) = v154;
        v38 = v155;
        v39 = v156;
        v40 = v158;
        *(v37 + 5) = v157;
        *(v37 + 6) = v40;
        *(v37 + 3) = v38;
        *(v37 + 4) = v39;
        LODWORD(v129) = v132;
      }

      else
      {
      }

      v25 += 16;
      ++v17;
      v140 = 0;
      v141 = 0;
      v139 = 0;
      v16 = v145;
      v20 = _swiftEmptyArrayStorage;
      if (v143 == v13)
      {
        v80 = v141;
        v81 = v141;
        v16 = v145;
        goto LABEL_122;
      }
    }

    if (v26 <= 19)
    {
      v24 = v128;
      if (v26 == 14)
      {
        goto LABEL_21;
      }

      if (v26 == 19)
      {
        v139 = v145;
        goto LABEL_21;
      }

      goto LABEL_77;
    }

    v24 = v128;
    if (v26 == 20)
    {
      v140 = v145;
      goto LABEL_21;
    }

    if (v26 != 73)
    {
      if (v26 == 71)
      {
        v142 = v16;
        v41 = v145;
        v42 = *(v145 + 1);
        if (v42)
        {
          if ((v42 & 2) != 0)
          {
            v64 = -3145343;
          }

          else
          {
            v64 = -3145344;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = sub_100024518(0, *(v128 + 2) + 1, 1, v128);
          }

          v66 = *(v128 + 2);
          v65 = *(v128 + 3);
          if (v66 >= v65 >> 1)
          {
            v128 = sub_100024518((v65 > 1), v66 + 1, 1, v128);
          }

          v67 = v128;
          *(v128 + 2) = v66 + 1;
          v68 = &v67[3 * v66];
          v68[34] = BYTE2(v64);
          *(v68 + 16) = v64;
          if ((v42 & 2) != 0)
          {
            sub_10009B498(&v159, 12);
          }

          v24 = v128;
          v13 = v137;
          v41 = v145;
          v43 = *(v145 + 1);
          if ((v43 & 4) != 0)
          {
            goto LABEL_91;
          }

LABEL_49:
          v44 = *(v41 + 1);
          if ((v44 & 0x10) != 0)
          {
LABEL_101:
            if ((v44 & 0x20) != 0)
            {
              v73 = -3013695;
            }

            else
            {
              v73 = -3013696;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100024518(0, *(v24 + 2) + 1, 1, v24);
            }

            v75 = *(v24 + 2);
            v74 = *(v24 + 3);
            if (v75 >= v74 >> 1)
            {
              v24 = sub_100024518((v74 > 1), v75 + 1, 1, v24);
            }

            *(v24 + 2) = v75 + 1;
            v76 = &v24[3 * v75];
            v76[34] = BYTE2(v73);
            *(v76 + 16) = v73;
            if ((v44 & 0x20) != 0)
            {
              sub_10009B498(&v159, 12);
            }

            v13 = v137;
            v41 = v145;
          }
        }

        else
        {
          v43 = *(v145 + 1);
          if ((v43 & 4) == 0)
          {
            goto LABEL_49;
          }

LABEL_91:
          if ((v43 & 8) != 0)
          {
            v69 = -2620863;
          }

          else
          {
            v69 = -2620864;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_100024518(0, *(v24 + 2) + 1, 1, v24);
          }

          v71 = *(v24 + 2);
          v70 = *(v24 + 3);
          if (v71 >= v70 >> 1)
          {
            v24 = sub_100024518((v70 > 1), v71 + 1, 1, v24);
          }

          *(v24 + 2) = v71 + 1;
          v72 = &v24[3 * v71];
          v72[34] = BYTE2(v69);
          *(v72 + 16) = v69;
          if ((v43 & 8) != 0)
          {
            sub_10009B498(&v159, 12);
          }

          v13 = v137;
          v41 = v145;
          v44 = *(v145 + 1);
          if ((v44 & 0x10) != 0)
          {
            goto LABEL_101;
          }
        }

        v77 = *(v41 + 10);
        v78 = v124;
        if ((v77 & 0x10) != 0)
        {
          v78 = 3;
        }

        if ((v77 & 8) != 0)
        {
          v78 = 4;
        }

        if ((v77 & 4) != 0)
        {
          v78 = 2;
        }

        if ((v77 & 3) != 0)
        {
          v79 = 1;
        }

        else
        {
          v79 = v78;
        }

        v124 = v79;
        v123 = *(v41 + 4);
        v120 = *(v41 + 3);
        v121 = *(v41 + 19);
        v119 = *(v41 + 18);
        v122 = 512;
        v16 = v142;
        goto LABEL_21;
      }

LABEL_77:
      sub_10009B498(&v159, 37);
      goto LABEL_21;
    }

    sub_100001AB4(&qword_100176820, &qword_100121FB8);
    v45 = swift_allocObject();
    v46 = 0;
    *(v45 + 32) = 0x200000001;
    *(v45 + 40) = 449;
    *(v45 + 42) = -64;
    *(v45 + 45) = -64;
    *(v45 + 43) = 448;
    *(v45 + 48) = 0x800000004;
    *(v45 + 56) = 577;
    *(v45 + 58) = 22;
    *(v45 + 61) = 22;
    *(v45 + 59) = 576;
    *(v45 + 64) = 0x2000000010;
    *(v45 + 72) = 769;
    *(v45 + 74) = 16;
    *(v45 + 77) = 16;
    v133 = v45;
    *(v45 + 75) = 768;
    v47 = v145;
    v138 = v5;
    v142 = v16;
    while (2)
    {
      v48 = v133 + v46;
      v49 = *(v47 + 3);
      if ((v49 & *(v133 + v46 + 32)) != 0)
      {
        v50 = *(v48 + 40) | (*(v48 + 42) << 16);
        v51 = *(v48 + 36) & v49;
        if (v51)
        {
          v52 = *(v48 + 40) | (*(v48 + 42) << 16);
        }

        else
        {
          v52 = *(v48 + 43) | (*(v48 + 45) << 16);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100024518(0, *(v20 + 2) + 1, 1, v20);
        }

        v53 = v20;
        v54 = *(v20 + 2);
        v144 = v53;
        v55 = *(v53 + 3);
        if (v54 >= v55 >> 1)
        {
          v144 = sub_100024518((v55 > 1), v54 + 1, 1, v144);
        }

        v56 = v144;
        *(v144 + 2) = v54 + 1;
        v57 = 3 * v54;
        v20 = v56;
        v58 = &v56[v57];
        v58[34] = BYTE2(v52);
        *(v58 + 16) = v52;
        if (!v51)
        {
          ObjectType = v134;
          v13 = v137;
          v5 = v138;
          goto LABEL_57;
        }

        *(&v160 + 1) = &type metadata for USBDescriptorControl;
        LOWORD(v159) = v50;
        BYTE2(v159) = BYTE2(v50);
        Mirror.init(reflecting:)();
        v5 = *(Mirror.children.getter() + 40);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v130 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        if (v130 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_176;
        }

        v59 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v59)
        {

          v60 = *v126;
          ObjectType = v134;
          v5 = v138;
          v20 = v144;
          goto LABEL_74;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v61 = v159;
        sub_10000CE78(&v160);
        v60 = *v126;
        ObjectType = v134;
        v5 = v138;
        v20 = v144;
        if (*(&v61 + 1))
        {
          v60(v131, v127);
          v13 = v137;
          if (v61 == __PAIR128__(0xE700000000000000, 0x68637469507065))
          {

            goto LABEL_57;
          }
        }

        else
        {
LABEL_74:
          v13 = v137;
          v60(v131, v127);
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v62 & 1) == 0)
        {
          sub_10009B498(&v159, 12);
        }

LABEL_57:
        v16 = v142;
        v47 = v145;
      }

      v46 += 16;
      if (v46 != 48)
      {
        continue;
      }

      break;
    }

    swift_setDeallocating();
    swift_deallocClassInstance();
    v63 = *(v47 + 7);
    if (v63 == 2)
    {
      v141 = *(v47 + 4);
      LODWORD(v129) = 1;
      v132 = 1;
LABEL_20:
      v24 = v128;
      goto LABEL_21;
    }

    v24 = v128;
    if (v63 == 1)
    {
      LODWORD(v129) = 0;
      v132 = 0;
      v141 = *(v47 + 4);
    }

LABEL_21:
    v128 = v24;
    v17 = v143;
  }

  while (v143 != v13);
  v81 = v139;
  v80 = v140;
  if (!v16)
  {
    goto LABEL_135;
  }

LABEL_122:
  v142 = v16;
  v82 = v165;
  v83 = v165[2];
  if (!v83)
  {

    v84 = _swiftEmptyArrayStorage;
LABEL_126:
    v86 = v142;
    if (!v84[2])
    {

      v84 = 0;
    }

    v148 = 1;
    v149 = 1;
    if (*(v20 + 2))
    {
      v87 = v20;
    }

    else
    {

      v87 = 0;
    }

    *&v154 = v86;
    *(&v154 + 1) = v81;
    *&v155 = v80;
    BYTE8(v155) = 0;
    *(&v155 + 10) = v151;
    HIWORD(v155) = v152;
    *(&v156 + 1) = *v153;
    DWORD1(v156) = *&v153[3];
    *(&v157 + 2) = v146;
    WORD3(v157) = v147;
    BYTE9(v155) = v149;
    LOBYTE(v156) = v129 & 1;
    *(&v156 + 1) = v141;
    LOBYTE(v157) = 0;
    *&v159 = v86;
    *(&v159 + 1) = v81;
    BYTE1(v157) = v148;
    *(&v157 + 1) = v87;
    *&v158 = 0;
    *(&v158 + 1) = v84;
    *&v160 = v80;
    BYTE8(v160) = 0;
    BYTE9(v160) = v149;
    *(&v160 + 10) = v151;
    HIWORD(v160) = v152;
    LOBYTE(v161) = v129 & 1;
    DWORD1(v161) = *&v153[3];
    *(&v161 + 1) = *v153;
    *(&v161 + 1) = v141;
    LOBYTE(v162) = 0;
    BYTE1(v162) = v148;
    WORD3(v162) = v147;
    *(&v162 + 2) = v146;
    *(&v162 + 1) = v87;
    *&v163 = 0;
    *(&v163 + 1) = v84;
    sub_100022594(&v154, v150);
    sub_1000225F0(&v159);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_132:
      v89 = *(v5 + 2);
      v88 = *(v5 + 3);
      if (v89 >= v88 >> 1)
      {
        v5 = sub_1000243F8((v88 > 1), v89 + 1, 1, v5);
      }

      *(v5 + 2) = v89 + 1;
      v90 = &v5[80 * v89];
      *(v90 + 2) = v154;
      v91 = v155;
      v92 = v156;
      v93 = v158;
      *(v90 + 5) = v157;
      *(v90 + 6) = v93;
      *(v90 + 3) = v91;
      *(v90 + 4) = v92;
LABEL_135:
      v94 = *(v5 + 2);

      if (v94)
      {
        v95 = 0;
        v96 = 0;
        v97 = (v5 + 32);
        while (1)
        {
          if (v96 >= *(v5 + 2))
          {
            goto LABEL_175;
          }

          v159 = *v97;
          v98 = v97[1];
          v99 = v97[2];
          v100 = v97[4];
          v162 = v97[3];
          v163 = v100;
          v160 = v98;
          v161 = v99;
          if (!v95)
          {
            v101 = v159;
            sub_100022594(&v159, &v154);
            if (IOUSBGetEndpointUsageType(v101) || (wMaxPacketSize = v101->wMaxPacketSize, wMaxPacketSize <= 8) && wMaxPacketSize > 2)
            {
              v102 = IOUSBGetEndpointUsageType(v101);
              sub_1000225F0(&v159);
              v95 = v102 == 2;
              goto LABEL_139;
            }

            sub_1000225F0(&v159);
          }

          v95 = 1;
LABEL_139:
          ++v96;
          v97 += 5;
          if (v94 == v96)
          {
            if (v95)
            {
              goto LABEL_149;
            }

            break;
          }
        }
      }

      sub_10009B498(&v159, 90);
LABEL_149:
      if (*(v5 + 2) != v118)
      {
        sub_10009B498(&v159, 91);
      }

      v104 = v122 >> 8;
      if (v122 >> 8 <= 0xFE)
      {
        v105 = v123;
      }

      else
      {
        v105 = 0;
      }

      if (v104 <= 0xFE)
      {
        v106 = v122;
      }

      else
      {
        v106 = 0;
      }

      if (v104 <= 0xFE)
      {
        v107 = BYTE1(v122);
      }

      else
      {
        v107 = 2;
      }

      v108 = v164;
      v109 = v164[2];
      if (v109)
      {
        v110 = sub_1001193F0(v164[2], 0);
        v111 = sub_10011B610(&v159, v110 + 32, v109, v108);
        sub_100022644(v159);
        if (v111 == v109)
        {
LABEL_164:
          v112 = v128;
          if (!v110[2])
          {

            v110 = 0;
          }

          if (*(v112 + 2))
          {
            v113 = v112;
          }

          else
          {

            v113 = 0;
          }

          *(&v154 + 9) = *v153;
          HIDWORD(v154) = *&v153[3];
          *(&v157 + 2) = v151;
          WORD3(v157) = v152;
          *&v154 = ObjectType;
          *&v159 = ObjectType;
          BYTE8(v154) = v124;
          *&v155 = v120;
          *(&v155 + 1) = v119;
          *&v156 = v121;
          *(&v156 + 1) = v105;
          LOBYTE(v157) = v106;
          BYTE1(v157) = v107;
          *(&v157 + 1) = v5;
          *&v158 = v113;
          *(&v158 + 1) = v110;
          BYTE8(v159) = v124;
          *(&v159 + 9) = *v153;
          HIDWORD(v159) = *&v153[3];
          *&v160 = v120;
          *(&v160 + 1) = v119;
          *&v161 = v121;
          *(&v161 + 1) = v105;
          LOBYTE(v162) = v106;
          BYTE1(v162) = v107;
          *(&v162 + 2) = v151;
          WORD3(v162) = v152;
          *(&v162 + 1) = v5;
          *&v163 = v113;
          *(&v163 + 1) = v110;
          sub_10001EBF0(&v154, v150);
          result = sub_10001EC4C(&v159);
          v114 = v157;
          v115 = v135;
          v135[2] = v156;
          v115[3] = v114;
          v115[4] = v158;
          v116 = v155;
          *v115 = v154;
          v115[1] = v116;
          return result;
        }

        __break(1u);
      }

      v110 = _swiftEmptyArrayStorage;
      goto LABEL_164;
    }

LABEL_178:
    v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
    goto LABEL_132;
  }

  v139 = v81;
  v140 = v80;
  v138 = v5;
  v84 = sub_1001193F0(v83, 0);
  v145 = sub_10011B610(&v159, v84 + 32, v83, v82);
  v85 = v159;

  result = sub_100022644(v85);
  if (v145 == v83)
  {
    ObjectType = v134;
    v5 = v138;
    v81 = v139;
    v80 = v140;
    goto LABEL_126;
  }

  __break(1u);
  return result;
}

char *sub_100060834(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4TerminalCompanionChannelMagnitudePhaseSegmentPoint(0);
  *(&v27 + 1) = v10;
  LODWORD(v26) = v1;
  WORD2(v26) = v2;
  WORD3(v26) = v3;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v9, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100023EEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_100023EEC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

char *sub_100060B70(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  v6 = HIBYTE(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a2(0);
  LOBYTE(v28) = v3;
  BYTE1(v28) = v4;
  BYTE2(v28) = v5;
  BYTE3(v28) = v6;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100060E44(unint64_t a1, unint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = a1;
  *v31 = a2;
  *&v31[8] = a3;
  v5 = a1 >> 16;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v23 = a2 >> 16;
  HIDWORD(v22) = *&v31[6];
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4AudioStreamingValidFrequencyRangeDescriptor(0);
  *&v31[24] = v14;
  *v31 = v4;
  *&v31[2] = v5;
  *&v31[4] = v6;
  *&v31[6] = v7;
  *&v31[8] = v3;
  *&v31[10] = v23;
  *&v31[14] = HIDWORD(v22);
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v23 = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v30[0] = *v31;
    v30[1] = *&v31[16];
    v30[2] = v32;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v24;
      v20 = v25;
      *(v18 + 8) = v26;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_10006116C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v22 = HIDWORD(a2);
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v31 + 1) = a3(0);
  LOWORD(v30) = v5;
  WORD1(v30) = v6;
  *(&v30 + 4) = __PAIR64__(v4, v7);
  HIDWORD(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v13, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_10006146C(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = HIWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = a2(0);
  LOWORD(v26) = v3;
  WORD1(v26) = v4;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v6 + 8))(v8, v5);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v10, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_100023EEC((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100061748(unint64_t a1, unsigned int a2)
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4TerminalCompanionChannelBandwidthSegment(0);
  *(&v29 + 1) = v12;
  LOWORD(v28) = v3;
  WORD1(v28) = v4;
  *(&v28 + 4) = __PAIR64__(a2, v5);
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100061A70(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v22 = HIWORD(a1);
  v23 = a2 >> 16;
  v24 = HIDWORD(a2);
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v33 + 1) = a3(0);
  LOWORD(v32) = v5;
  WORD1(v32) = v6;
  WORD2(v32) = v7;
  WORD3(v32) = v22;
  WORD4(v32) = v4;
  WORD5(v32) = v23;
  WORD6(v32) = v24;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v24 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v34 + 1))
  {
    v31[0] = v32;
    v31[1] = v33;
    v31[2] = v34;
    sub_100022D40(v31, v13, &v28);
    sub_10000D040(v31, &qword_100175248, &unk_100122110);
    if (*(&v29 + 1))
    {
      v25 = v28;
      v26 = v29;
      v27 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v25;
      v19 = v26;
      *(v17 + 8) = v27;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v28, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100061DA4(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a2(0);
  LOWORD(v27) = v3;
  WORD1(v27) = v4;
  WORD2(v27) = v5;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100062070(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClusterChannelInformationSegment(0);
  *(&v29 + 1) = v12;
  LOWORD(v28) = v1;
  BYTE2(v28) = v2;
  BYTE3(v28) = v3;
  BYTE4(v28) = v4;
  BYTE5(v28) = v5;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_10006235C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v21 = HIWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClusterChannelAmbiosonicSegment(0);
  *(&v30 + 1) = v12;
  LOWORD(v29) = v1;
  BYTE2(v29) = v2;
  BYTE3(v29) = v3;
  BYTE4(v29) = v4;
  BYTE5(v29) = v5;
  BYTE6(v29) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v11, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100062690(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *&v30 = a1;
  WORD4(v30) = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 40;
  v5 = HIWORD(a1);
  v6 = *(&v30 + 7);
  LODWORD(v22) = a2 >> 8;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2ProcessingUnitDescriptorPart2(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v2;
  *(&v30 + 1) = v3;
  BYTE5(v30) = v4;
  BYTE6(v30) = v5;
  *(&v30 + 7) = v6;
  BYTE9(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000629A0(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADCClassSpecificDescriptorHeader(0);
  *(&v27 + 1) = v10;
  LOBYTE(v26) = v1;
  BYTE1(v26) = v2;
  BYTE2(v26) = v3;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v9, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100023EEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_100023EEC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

char *sub_100062C7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4AudioStreamingSelfDescriptor(0);
  *(&v32 + 1) = v14;
  v15 = swift_allocObject();
  *&v31 = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  Mirror.init(reflecting:)();
  v16 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v23[1] = v16;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    sub_100022D40(v30, v13, &v27);
    sub_10000D040(v30, &qword_100175248, &unk_100122110);
    if (*(&v28 + 1))
    {
      v24 = v27;
      v25 = v28;
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_100023EEC((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[40 * v18];
      v20 = v24;
      v21 = v25;
      *(v19 + 8) = v26;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
    }

    else
    {
      sub_10000D040(&v27, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100062F5C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ExtensionUnitDescriptorPart2(0);
  *(&v27 + 1) = v10;
  LOWORD(v26) = v1;
  *(&v26 + 2) = v2;
  WORD3(v26) = v3;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v9, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100023EEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_100023EEC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

char *sub_100063238(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = a2(0);
  LODWORD(v26) = v3;
  WORD2(v26) = v4;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v6 + 8))(v8, v5);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v10, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_100023EEC((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_1000634FC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 40;
  v4 = HIWORD(a1);
  v5 = HIBYTE(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2ExtensionUnitDescriptorPart2(0);
  *(&v29 + 1) = v12;
  LOBYTE(v28) = v1;
  *(&v28 + 1) = v2;
  BYTE5(v28) = v3;
  BYTE6(v28) = v4;
  BYTE7(v28) = v5;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100063800(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v29 + 1) = a2(0);
  LOBYTE(v28) = v3;
  *(&v28 + 1) = v4;
  BYTE3(v28) = v5;
  BYTE4(v28) = v6;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v12, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100063AEC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4PowerDomainEntityDescriptor(0);
  *(&v26 + 1) = v7;
  v8 = swift_allocObject();
  *&v25 = v8;
  v9 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 32);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v27 + 1))
  {
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    sub_100022D40(v24, v6, &v21);
    sub_10000D040(v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100023EEC((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_100063DF0(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = a2(0);
  LOBYTE(v26) = v3;
  BYTE1(v26) = v4;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v6 + 8))(v8, v5);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v10, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_100023EEC((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_1000640B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = a1 >> 40;
  v21 = HIBYTE(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1ACInterfaceHeaderDescriptor(0);
  *(&v30 + 1) = v12;
  LOBYTE(v29) = v1;
  BYTE1(v29) = v2;
  BYTE2(v29) = v3;
  *(&v29 + 3) = v4;
  *(&v29 + 5) = v5;
  BYTE7(v29) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v11, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_1000643A0(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = HIWORD(a1);
  v22 = a2 >> 16;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4AudioControlSelfDescriptor(0);
  *(&v31 + 1) = v13;
  LOWORD(v30) = v3;
  WORD1(v30) = v4;
  WORD2(v30) = v5;
  WORD3(v30) = v6;
  WORD4(v30) = v2;
  *(&v30 + 10) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000646BC(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *&v30 = a1;
  DWORD2(v30) = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  LODWORD(v22) = *(&v30 + 5);
  HIDWORD(v21) = a2 >> 8;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClockMultiplierDescriptor(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v2;
  BYTE1(v30) = v3;
  BYTE2(v30) = v4;
  BYTE3(v30) = v5;
  BYTE4(v30) = v6;
  *(&v30 + 5) = v22;
  *(&v30 + 9) = WORD2(v21);
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000649E4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v20 = a1 >> 40;
  v21 = HIWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2ClockMultiplierDescriptor(0);
  *(&v30 + 1) = v12;
  LOBYTE(v29) = v1;
  BYTE1(v29) = v2;
  BYTE2(v29) = v3;
  BYTE3(v29) = v4;
  BYTE4(v29) = v5;
  BYTE5(v29) = v20;
  BYTE6(v29) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v11, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100064D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a4(0);
  *&v29 = a1;
  *(&v29 + 1) = a2;
  WORD2(v30) = WORD2(a3);
  LODWORD(v30) = a3;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v13, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100064FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  v14 = a4(0);
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v31 = a3;
  *(&v31 + 1) = v14;
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v22[1] = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v13, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100023EEC((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[40 * v17];
      v19 = v23;
      v20 = v24;
      *(v18 + 8) = v25;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_1000652AC(unint64_t a1, __int16 a2)
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = HIWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4ExtendedDescriptorHeader(0);
  *(&v30 + 1) = v13;
  LOWORD(v29) = v3;
  WORD1(v29) = v4;
  WORD2(v29) = v5;
  WORD3(v29) = v6;
  WORD4(v29) = a2;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100065598(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3OutputTerminalDescriptor(0);
  *(&v29 + 1) = v12;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  BYTE2(v29) = BYTE2(a3);
  LOWORD(v29) = a3;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100065878(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3HighCapabilityDescriptor(0);
  *(&v28 + 1) = v11;
  LOWORD(v27) = v1;
  BYTE2(v27) = v2;
  BYTE3(v27) = v3;
  WORD2(v27) = v4;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v6 + 8))(v8, v5);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v10, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100023EEC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_100065B5C(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v20 = HIDWORD(a1);
  v21 = HIWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a2(0);
  LOBYTE(v29) = v3;
  BYTE1(v29) = v4;
  BYTE2(v29) = v5;
  BYTE3(v29) = v6;
  WORD2(v29) = v20;
  BYTE6(v29) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100065E90(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 40;
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2MixerUnitDescriptorPart2(0);
  *(&v27 + 1) = v10;
  LOBYTE(v26) = v1;
  *(&v26 + 1) = v2;
  BYTE5(v26) = v3;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v9, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100023EEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_100023EEC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

char *sub_100066184(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a3(0);
  *&v27 = a1;
  BYTE8(v27) = a2;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100066448(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIBYTE(a1);
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1MixerUnitDescriptorPart2(0);
  *(&v27 + 1) = v10;
  LOBYTE(v26) = v1;
  *(&v26 + 1) = v2;
  BYTE3(v26) = v3;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v9, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100023EEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_100023EEC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

char *sub_100066724()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_100176848, &qword_100122120);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_10011DE90;
  *(inited + 40) = 0x800000010012D590;
  *&v26 = sub_100073D3C(*(v0 + 12), *(v0 + 20), sub_100073EDC, 0);
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_100073FB0();
  AnyHashable.init<A>(_:)();
  v6 = sub_10000AA2C(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A48, &qword_100120190);
  type metadata accessor for ADC4ExtensionUnitDescriptor(0);
  *(&v27 + 1) = v7;
  v8 = swift_allocObject();
  *&v26 = v8;
  v9 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 32);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v28 + 1))
  {
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v25[0] = v26;
      v25[1] = v27;
      v25[2] = v28;
      sub_100022D40(v25, v6, &v22);
      sub_10000D040(v25, &qword_100175248, &unk_100122110);
      if (*(&v23 + 1))
      {
        v19 = v22;
        v20 = v23;
        v21 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
        }

        v13 = *(v11 + 2);
        v12 = *(v11 + 3);
        if (v13 >= v12 >> 1)
        {
          v11 = sub_100023EEC((v12 > 1), v13 + 1, 1, v11);
        }

        *(v11 + 2) = v13 + 1;
        v14 = &v11[40 * v13];
        v15 = v19;
        v16 = v20;
        *(v14 + 8) = v21;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
      }

      else
      {
        sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v28 + 1));
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

char *sub_100066ACC(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  v6 = HIWORD(a1);
  LODWORD(v22) = HIWORD(a2);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC4ClusterDescriptorHeader(0);
  *(&v31 + 1) = v13;
  LOWORD(v30) = v3;
  WORD1(v30) = v4;
  WORD2(v30) = v5;
  WORD3(v30) = v6;
  WORD4(v30) = v2;
  WORD5(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100066E00(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = HIWORD(a1);
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3ClusterDescriptorHeader(0);
  *(&v29 + 1) = v12;
  LOWORD(v28) = v1;
  BYTE2(v28) = v2;
  BYTE3(v28) = v3;
  WORD2(v28) = v4;
  BYTE6(v28) = v5;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_1000670EC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC2InputTerminalDescriptor(0);
  *(&v29 + 1) = v12;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  LOBYTE(v29) = a3;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v20[1] = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v30 + 1))
  {
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    sub_100022D40(v27, v11, &v24);
    sub_10000D040(v27, &qword_100175248, &unk_100122110);
    if (*(&v25 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v21;
      v18 = v22;
      *(v16 + 8) = v23;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v24, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_1000673DC(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v21 = HIDWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a2(0);
  LOBYTE(v29) = v3;
  BYTE1(v29) = v4;
  BYTE2(v29) = v5;
  BYTE3(v29) = v6;
  BYTE4(v29) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v12, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100023EEC((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_1000676E0(uint64_t a1, int a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a3(0);
  *&v27 = a1;
  DWORD2(v27) = a2;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_1000679BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = a2(0);
  *&v25 = a1;
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v27 + 1))
  {
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    sub_100022D40(v24, v9, &v21);
    sub_10000D040(v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100023EEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_100023EEC((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

char *sub_100067CA8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a4(0);
  *&v29 = a1;
  *(&v29 + 1) = a2;
  LOWORD(v30) = a3;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v13, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100068000(unint64_t a1, int a2)
{
  LODWORD(v22) = a2;
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v21 = HIWORD(a1);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC3PowerDomainDescriptor(0);
  *(&v31 + 1) = v13;
  LOBYTE(v30) = v2;
  BYTE1(v30) = v3;
  BYTE2(v30) = v4;
  BYTE3(v30) = v5;
  WORD2(v30) = v6;
  WORD3(v30) = v21;
  BYTE8(v30) = v22;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v8 + 8))(v10, v7);
  v22 = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v32 + 1))
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    sub_100022D40(v29, v12, &v26);
    sub_10000D040(v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100023EEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_100023EEC((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      v18 = v23;
      v19 = v24;
      *(v17 + 8) = v25;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v11;
}

char *sub_100068378(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v21 = a1 >> 40;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1FeatureUnitDescriptor(0);
  *(&v30 + 1) = v12;
  LOBYTE(v29) = v1;
  BYTE1(v29) = v2;
  BYTE2(v29) = v3;
  BYTE3(v29) = v4;
  BYTE4(v29) = v5;
  BYTE5(v29) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v11, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100068664(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v21 = a1 >> 40;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  type metadata accessor for ADC1ASInterfaceDescriptor(0);
  *(&v30 + 1) = v12;
  LOBYTE(v29) = v1;
  BYTE1(v29) = v2;
  BYTE2(v29) = v3;
  BYTE3(v29) = v4;
  BYTE4(v29) = v5;
  *(&v29 + 5) = v21;
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v21 = v13;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v11, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100023EEC((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[40 * v15];
      v17 = v22;
      v18 = v23;
      *(v16 + 8) = v24;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100068968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a3(0);
  *&v27 = a1;
  *(&v27 + 1) = a2;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100068C70(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a4(0);
  *&v29 = a1;
  *(&v29 + 1) = a2;
  LODWORD(v30) = a3;
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  (*(v9 + 8))(v11, v8);
  v21[1] = v14;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v31 + 1))
  {
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    sub_100022D40(v28, v13, &v25);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v26 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100023EEC(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_100023EEC((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[40 * v16];
      v18 = v22;
      v19 = v23;
      *(v17 + 8) = v24;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
    }

    else
    {
      sub_10000D040(&v25, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v12;
}

char *sub_100068FB0(unsigned int a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = HIWORD(a1);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = a2(0);
  LOWORD(v26) = v3;
  BYTE2(v26) = v4;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v6 + 8))(v8, v5);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v10, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100023EEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_100023EEC((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v9;
}

char *sub_10006928C(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v28 + 1) = a2(0);
  LOWORD(v27) = v3;
  BYTE2(v27) = v4;
  *(&v27 + 3) = v5;
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v19[1] = v12;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    sub_100022D40(v26, v11, &v23);
    sub_10000D040(v26, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100023EEC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[40 * v14];
      v16 = v20;
      v17 = v21;
      *(v15 + 8) = v22;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
    }

    else
    {
      sub_10000D040(&v23, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_100069558()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v25 + 1) = &type metadata for MixerUnit;
  v7 = swift_allocObject();
  *&v24 = v7;
  v8 = *(v0 + 48);
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v0 + 64);
  *(v7 + 96) = *(v0 + 80);
  v9 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v9;
  sub_10002317C(v0, v27);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    sub_100022D40(&v24, v6, &v21);
    sub_10000D040(&v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100023EEC((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_100069854()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v25 + 1) = &type metadata for SampleRateConverter;
  v7 = swift_allocObject();
  *&v24 = v7;
  v8 = *(v0 + 48);
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v0 + 64);
  v9 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v9;
  sub_100076384(v0, v27);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    sub_100022D40(&v24, v6, &v21);
    sub_10000D040(&v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100023EEC((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_100069B44()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for ControlInterface;
  v7 = swift_allocObject();
  *&v25 = v7;
  v8 = *(v0 + 80);
  *(v7 + 80) = *(v0 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v0 + 96);
  *(v7 + 128) = *(v0 + 112);
  v9 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v9;
  v10 = *(v0 + 48);
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = v10;
  sub_100057294(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v6, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100023EEC((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_100069E1C()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v24 + 1) = &type metadata for ClockMultiplier;
  v7 = swift_allocObject();
  *&v23 = v7;
  v8 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = *(v0 + 48);
  sub_10007624C(v0, v26);
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v16[1] = v9;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v27 + 1))
  {
    v23 = v26[0];
    v24 = v26[1];
    v25 = v27;
    sub_100022D40(&v23, v6, &v20);
    sub_10000D040(&v23, &qword_100175248, &unk_100122110);
    if (*(&v21 + 1))
    {
      v17 = v20;
      v18 = v21;
      v19 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_100023EEC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[40 * v11];
      v13 = v17;
      v14 = v18;
      *(v12 + 8) = v19;
      *(v12 + 2) = v13;
      *(v12 + 3) = v14;
    }

    else
    {
      sub_10000D040(&v20, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006A108()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v25 + 1) = &type metadata for ProcessingUnit;
  v7 = swift_allocObject();
  *&v24 = v7;
  v8 = v0[3];
  v7[3] = v0[2];
  v7[4] = v8;
  v7[5] = v0[4];
  v9 = v0[1];
  v7[1] = *v0;
  v7[2] = v9;
  sub_100076430(v0, v27);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    sub_100022D40(&v24, v6, &v21);
    sub_10000D040(&v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100023EEC((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006A3FC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for OutputTerminal;
  v7 = swift_allocObject();
  *&v25 = v7;
  v8 = v0[3];
  v7[3] = v0[2];
  v7[4] = v8;
  v9 = v0[5];
  v7[5] = v0[4];
  v7[6] = v9;
  v10 = v0[1];
  v7[1] = *v0;
  v7[2] = v10;
  sub_1000766B0(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v6, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100023EEC((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006A6F4()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for InputTerminal;
  v7 = swift_allocObject();
  *&v25 = v7;
  v8 = *(v0 + 80);
  *(v7 + 80) = *(v0 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v0 + 96);
  v9 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v9;
  v10 = *(v0 + 48);
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = v10;
  sub_1000767C0(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v6, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100023EEC((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006A9C4()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for ExtensionUnit;
  v7 = swift_allocObject();
  *&v25 = v7;
  v8 = v0[3];
  v7[3] = v0[2];
  v7[4] = v8;
  v9 = v0[5];
  v7[5] = v0[4];
  v7[6] = v9;
  v10 = v0[1];
  v7[1] = *v0;
  v7[2] = v10;
  sub_10007651C(v0, v28);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    sub_100022D40(&v25, v6, &v22);
    sub_10000D040(&v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100023EEC((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006ACBC()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for ClockSelector;
  v7 = swift_allocObject();
  v8 = *(v0 + 32);
  v30 = *(v0 + 40);
  v31[0] = v8;
  v9 = *(v0 + 48);
  *&v26 = v7;
  v29 = v9;
  v10 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v10;
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = v9;
  sub_10000D0B8(v31, v25, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v30, v25, &qword_100176868, &unk_100122140);
  sub_10000D0B8(&v29, v25, &qword_100176870, &unk_100122880);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v6, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100023EEC((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006B028()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v26 + 1) = &type metadata for PowerDomain;
  v7 = swift_allocObject();
  *&v25 = v7;
  v8 = *(v0 + 32);
  v28 = *(v0 + 40);
  v29 = v8;
  v9 = *(v0 + 16);
  v7[1] = *v0;
  v7[2] = v9;
  v7[3] = *(v0 + 32);
  sub_10000D0B8(&v29, v24, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v28, v24, &qword_100176868, &unk_100122140);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v27 + 1))
  {
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    sub_100022D40(v24, v6, &v21);
    sub_10000D040(v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100023EEC((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006B36C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _OWORD *))
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v30 + 1) = a1;
  v12 = swift_allocObject();
  *&v29 = v12;
  v13 = *(v3 + 48);
  *(v12 + 48) = *(v3 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v3 + 64);
  v14 = *(v3 + 16);
  *(v12 + 16) = *v3;
  *(v12 + 32) = v14;
  a3(v3, v32);
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v7 + 8))(v9, v6);
  v22[1] = v15;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v33 + 1))
  {
    v29 = v32[0];
    v30 = v32[1];
    v31 = v33;
    sub_100022D40(&v29, v11, &v26);
    sub_10000D040(&v29, &qword_100175248, &unk_100122110);
    if (*(&v27 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100023EEC(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_100023EEC((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[40 * v17];
      v19 = v23;
      v20 = v24;
      *(v18 + 8) = v25;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
    }

    else
    {
      sub_10000D040(&v26, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v10;
}

char *sub_10006B660()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v25 + 1) = &type metadata for ClockSource;
  v7 = swift_allocObject();
  *&v24 = v7;
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v9 = v0[3];
  v7[3] = v0[2];
  v7[4] = v9;
  sub_10002C080(v0, v27);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v17[1] = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    sub_100022D40(&v24, v6, &v21);
    sub_10000D040(&v24, &qword_100175248, &unk_100122110);
    if (*(&v22 + 1))
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100023EEC((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[40 * v12];
      v14 = v18;
      v15 = v19;
      *(v13 + 8) = v20;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_10000D040(&v21, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

char *sub_10006B948()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_10000AA2C(_swiftEmptyArrayStorage);
  *(&v27 + 1) = &type metadata for EffectUnit;
  v7 = swift_allocObject();
  *&v26 = v7;
  v8 = *(v0 + 48);
  v29 = *(v0 + 56);
  v30 = v8;
  v9 = *(v0 + 16);
  v7[1] = *v0;
  v7[2] = v9;
  v10 = *(v0 + 48);
  v7[3] = *(v0 + 32);
  v7[4] = v10;
  sub_10000D0B8(&v30, v25, &qword_100176878, &qword_100122150);
  sub_10000D0B8(&v29, v25, &qword_100176860, &qword_100122138);
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v2 + 8))(v4, v1);
  v18[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v28 + 1))
  {
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    sub_100022D40(v25, v6, &v22);
    sub_10000D040(v25, &qword_100175248, &unk_100122110);
    if (*(&v23 + 1))
    {
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100023EEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100023EEC((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = v19;
      v16 = v20;
      *(v14 + 8) = v21;
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    else
    {
      sub_10000D040(&v22, &qword_100175250, &qword_100120DD0);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v5;
}

uint64_t sub_10006BD58(unint64_t a1, unint64_t a2, __int16 a3, unint64_t a4, unint64_t a5, __int16 a6)
{
  v6 = a5;
  WORD3(v21[0]) = HIWORD(a2);
  WORD4(v21[0]) = a3;
  v8 = *(v21 + 6);
  WORD3(v21[0]) = HIWORD(a5);
  WORD4(v21[0]) = a6;
  v9 = a5 >> 16;
  v10 = *(v21 + 6);
  LOWORD(v21[0]) = a2;
  *(v21 + 2) = a2 >> 16;
  WORD3(v21[0]) = v8;
  v11 = sub_100060E44(a1, *&v21[0], SHIWORD(v8));
  LOWORD(v21[0]) = v6;
  *(v21 + 2) = __PAIR64__(v10, v9);
  result = sub_100060E44(a4, *&v21[0], SHIWORD(v10));
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C100(unint64_t a1, __int16 a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  BYTE7(v21[0]) = HIBYTE(a1);
  WORD4(v21[0]) = a2;
  v5 = *(v21 + 7);
  BYTE7(v21[0]) = HIBYTE(a3);
  BYTE8(v21[0]) = a4;
  v6 = a3 >> 8;
  v7 = a3 >> 40;
  v8 = HIWORD(a3);
  v9 = *(v21 + 7);
  v10 = a4 >> 8;
  LOBYTE(v21[0]) = a1;
  *(v21 + 1) = a1 >> 8;
  BYTE5(v21[0]) = BYTE5(a1);
  BYTE6(v21[0]) = BYTE6(a1);
  *(v21 + 7) = v5;
  v11 = sub_100062690(*&v21[0], WORD4(v21[0]));
  LOBYTE(v21[0]) = v4;
  *(v21 + 1) = v6;
  BYTE5(v21[0]) = v7;
  BYTE6(v21[0]) = v8;
  *(v21 + 7) = v9;
  BYTE9(v21[0]) = v10;
  result = sub_100062690(*&v21[0], WORD4(v21[0]));
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C2F4(int a1, int a2)
{
  v3 = sub_1000629A0(a1 & 0xFFFFFF);
  result = sub_1000629A0(a2 & 0xFFFFFF);
  v5 = result;
  v6 = 0;
  v7 = *(v3 + 2);
  for (i = 32; ; i += 40)
  {
    if (v7 == v6)
    {

      return 1;
    }

    if (v6 >= *(v3 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v3[i], v11);
    v9 = *(v5 + 16);
    if (v6 == v9)
    {

      sub_10001E070(v11);
      return 1;
    }

    if (v6++ >= v9)
    {
      goto LABEL_13;
    }

    v13[0] = v11[0];
    v13[1] = v11[1];
    v14 = v12;
    sub_10001EDEC(v5 + i, &v15);
    v10 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v13, &qword_100176840, &qword_100122108);
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C478(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = sub_100062C7C(a1, a2, a3, a4);
  result = sub_100062C7C(a5, a6, a7, a8);
  v14 = result;
  v15 = 0;
  v16 = *(v12 + 2);
  for (i = 32; ; i += 40)
  {
    if (v16 == v15)
    {

      return 1;
    }

    if (v15 >= *(v12 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v12[i], v20);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {

      sub_10001E070(v20);
      return 1;
    }

    if (v15++ >= v18)
    {
      goto LABEL_13;
    }

    v22[0] = v20[0];
    v22[1] = v20[1];
    v23 = v21;
    sub_10001EDEC(v14 + i, &v24);
    v19 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v22, &qword_100176840, &qword_100122108);
    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C6B0()
{
  v0 = sub_100063AEC();
  result = sub_100063AEC();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C864(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  result = a3(a2);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 16);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v5 + i, v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006C9C4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = sub_1000643A0(a1, a2 & 0xFFFFFFFFFFFFLL);
  result = sub_1000643A0(a3, a4 & 0xFFFFFFFFFFFFLL);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006CB3C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  v4 = a3;
  *&v23[0] = a1;
  BYTE8(v23[0]) = a2;
  v5 = *(v23 + 7);
  BYTE7(v23[0]) = HIBYTE(a3);
  BYTE8(v23[0]) = a4;
  v6 = a3 >> 8;
  v7 = a3 >> 16;
  v8 = a3 >> 24;
  v9 = HIDWORD(a3);
  v10 = a3 >> 40;
  v11 = HIWORD(a3);
  v12 = *(v23 + 7);
  BYTE7(v23[0]) = v5;
  v13 = sub_100066184(*&v23[0], SHIBYTE(v5), type metadata accessor for ADC3SRConverterUnitDescriptor);
  LOBYTE(v23[0]) = v4;
  BYTE1(v23[0]) = v6;
  BYTE2(v23[0]) = v7;
  BYTE3(v23[0]) = v8;
  BYTE4(v23[0]) = v9;
  BYTE5(v23[0]) = v10;
  BYTE6(v23[0]) = v11;
  *(v23 + 7) = v12;
  result = sub_100066184(*&v23[0], SHIBYTE(v12), type metadata accessor for ADC3SRConverterUnitDescriptor);
  v15 = result;
  v16 = 0;
  v17 = *(v13 + 2);
  for (i = 32; ; i += 40)
  {
    if (v17 == v16)
    {

      return 1;
    }

    if (v16 >= *(v13 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v13[i], v21);
    v19 = *(v15 + 16);
    if (v16 == v19)
    {

      sub_10001E070(v21);
      return 1;
    }

    if (v16++ >= v19)
    {
      goto LABEL_13;
    }

    v23[0] = v21[0];
    v23[1] = v21[1];
    v24 = v22;
    sub_10001EDEC(v15 + i, &v25);
    v20 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v23, &qword_100176840, &qword_100122108);
    if ((v20 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006CD40(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  DWORD1(v22[0]) = HIDWORD(a1);
  BYTE8(v22[0]) = a2;
  v5 = *(v22 + 5);
  *(v22 + 4) = __PAIR64__(a4, HIDWORD(a3));
  v6 = a3 >> 8;
  v7 = a3 >> 16;
  v8 = a3 >> 24;
  v9 = HIDWORD(a3);
  v10 = __PAIR64__(a4, HIDWORD(a3)) >> 8;
  v11 = a4 >> 8;
  LOWORD(v22[0]) = a1;
  BYTE2(v22[0]) = BYTE2(a1);
  BYTE3(v22[0]) = BYTE3(a1);
  BYTE4(v22[0]) = BYTE4(a1);
  *(v22 + 5) = v5;
  *(v22 + 9) = a2 >> 8;
  v12 = sub_1000646BC(*&v22[0], DWORD2(v22[0]));
  LOBYTE(v22[0]) = v4;
  BYTE1(v22[0]) = v6;
  BYTE2(v22[0]) = v7;
  BYTE3(v22[0]) = v8;
  BYTE4(v22[0]) = v9;
  *(v22 + 5) = v10;
  *(v22 + 9) = v11;
  result = sub_1000646BC(*&v22[0], DWORD2(v22[0]));
  v14 = result;
  v15 = 0;
  v16 = *(v12 + 2);
  for (i = 32; ; i += 40)
  {
    if (v16 == v15)
    {

      return 1;
    }

    if (v15 >= *(v12 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v12[i], v20);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {

      sub_10001E070(v20);
      return 1;
    }

    if (v15++ >= v18)
    {
      goto LABEL_13;
    }

    v22[0] = v20[0];
    v22[1] = v20[1];
    v23 = v21;
    sub_10001EDEC(v14 + i, &v24);
    v19 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v22, &qword_100176840, &qword_100122108);
    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v11 = sub_100064FE8(a1, a2, a3, a7);
  result = sub_100064FE8(a4, a5, a6, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D0E8(unint64_t a1, __int16 a2, unint64_t a3, __int16 a4)
{
  v6 = sub_1000652AC(a1, a2);
  result = sub_1000652AC(a3, a4);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D25C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a5;
  BYTE7(v23[0]) = HIBYTE(a2);
  BYTE8(v23[0]) = a3;
  v8 = *(v23 + 7);
  BYTE7(v23[0]) = HIBYTE(a5);
  DWORD2(v23[0]) = a6;
  v9 = a5 >> 8;
  v10 = a5 >> 40;
  v11 = *(v23 + 7);
  v12 = a6 >> 8;
  LOBYTE(v23[0]) = a2;
  *(v23 + 1) = a2 >> 8;
  *(v23 + 5) = HIDWORD(a2) >> 8;
  *(v23 + 7) = v8;
  *(v23 + 9) = a3 >> 8;
  v13 = sub_100065598(a1, *&v23[0], SDWORD2(v23[0]));
  LOBYTE(v23[0]) = v6;
  *(v23 + 1) = v9;
  *(v23 + 5) = v10;
  *(v23 + 7) = v11;
  *(v23 + 9) = v12;
  result = sub_100065598(a4, *&v23[0], SDWORD2(v23[0]));
  v15 = result;
  v16 = 0;
  v17 = *(v13 + 2);
  for (i = 32; ; i += 40)
  {
    if (v17 == v16)
    {

      return 1;
    }

    if (v16 >= *(v13 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v13[i], v21);
    v19 = *(v15 + 16);
    if (v16 == v19)
    {

      sub_10001E070(v21);
      return 1;
    }

    if (v16++ >= v19)
    {
      goto LABEL_13;
    }

    v23[0] = v21[0];
    v23[1] = v21[1];
    v24 = v22;
    sub_10001EDEC(v15 + i, &v25);
    v20 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v23, &qword_100176840, &qword_100122108);
    if ((v20 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}