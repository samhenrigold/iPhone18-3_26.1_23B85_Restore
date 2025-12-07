uint64_t sub_1001A7150(int64_t a1)
{
  if (a1 <= 0x11391)
  {
    v3 = &byte_100319230;
    v4 = 64;
    do
    {
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      if (v8 <= a1 && v9 >= a1)
      {
        v11 = *(v3 - 3);
        v12 = *v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001F5418(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_1001F5418((v5 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        v7 = &_swiftEmptyArrayStorage[4 * v6];
        v7[4] = v11;
        v7[5] = v8;
        v7[6] = v9;
        *(v7 + 56) = v12;
      }

      v3 += 32;
      --v4;
    }

    while (v4);
    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      sub_1001F53F8(0, v13, 0);
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage[2];
      v16 = 4;
      do
      {
        v17 = _swiftEmptyArrayStorage[v16];
        v26 = v14;
        v18 = v14[3];
        if (v15 >= v18 >> 1)
        {
          sub_1001F53F8((v18 > 1), v15 + 1, 1);
          v14 = v26;
        }

        v14[2] = v15 + 1;
        v14[v15 + 4] = v17;
        v16 += 4;
        ++v15;
        --v13;
      }

      while (v13);
      v19 = v14;

      v20 = v19;
      v21 = *(v19 + 2);
      if (v21)
      {
LABEL_20:
        if (v21 != 1)
        {
          v22 = v20;
          v23 = sub_1001A649C(v20, 0, 0);
          if (*(v23 + 2))
          {
            v22 = v23;
          }

          v20 = v22;
          v1 = *(v22 + 2);
          if (!v1)
          {
            goto LABEL_30;
          }

          if (v1 != 1)
          {
LABEL_29:
            v1 = *(v20 + 4);
LABEL_30:

            return v1;
          }
        }

        v24 = *(v20 + 4);
LABEL_28:

        sub_1001A551C(&qword_100377110, &qword_1002F22D0);
        v20 = swift_allocObject();
        *(v20 + 1) = xmmword_1002EED40;
        *(v20 + 4) = v24;
        goto LABEL_29;
      }
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
      v21 = _swiftEmptyArrayStorage[2];
      if (v21)
      {
        goto LABEL_20;
      }
    }

    v24 = -1;
    goto LABEL_28;
  }

  return -1;
}

double sub_1001A73BC(uint64_t a1, uint64_t a2)
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002EED50;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x80000001002BA750;
  *(v3 + 88) = &type metadata for Int;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = a1;
  print(_:separator:terminator:)();

  v4 = &byte_100319A50;
  v5 = 37;
  do
  {
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    if (v9 <= a1 && v10 >= a1)
    {
      v12 = *(v4 - 3);
      v13 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001F5418(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_1001F5418((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[4 * v7];
      v8[4] = v12;
      v8[5] = v9;
      v8[6] = v10;
      *(v8 + 56) = v13;
    }

    v4 += 32;
    --v5;
  }

  while (v5);
  v14 = _swiftEmptyArrayStorage[2];
  if (!v14)
  {

    v21 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_24:
    v26 = -1;
    goto LABEL_25;
  }

  sub_1001F53F8(0, v14, 0);
  v15 = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  v17 = 4;
  do
  {
    v18 = _swiftEmptyArrayStorage[v17];
    v29 = v15;
    v19 = v15[3];
    if (v16 >= v19 >> 1)
    {
      sub_1001F53F8((v19 > 1), v16 + 1, 1);
      v15 = v29;
    }

    v15[2] = v16 + 1;
    v15[v16 + 4] = v18;
    v17 += 4;
    ++v16;
    --v14;
  }

  while (v14);
  v20 = v15;

  v21 = v20;
  v22 = *(v20 + 2);
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (v22 == 1)
  {
    goto LABEL_22;
  }

  v23 = v21;
  v24 = sub_1001A649C(v21, a2, 1);
  if (*(v24 + 2))
  {
    v23 = v24;
  }

  v21 = v23;
  if (*(v23 + 2) == 1)
  {
LABEL_22:
    v26 = *(v21 + 4);
LABEL_25:

    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    v27 = swift_allocObject();
    *&result = 1;
    *(v27 + 16) = xmmword_1002EED40;
    *(v27 + 32) = v26;
  }

  return result;
}

unint64_t sub_1001A7684()
{
  result = qword_100377100;
  if (!qword_100377100)
  {
    sub_1001A55C8(&qword_1003751B0, &unk_1002EED80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377100);
  }

  return result;
}

unint64_t sub_1001A76E8()
{
  result = qword_100378C50;
  if (!qword_100378C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378C50);
  }

  return result;
}

uint64_t sub_1001A773C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_1001A779C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001A77B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001A77F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTMNeighbourCellType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMNeighbourCellType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001A79C0()
{
  result = qword_1003751B8;
  if (!qword_1003751B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FRType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FRType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001A7B68()
{
  result = qword_1003751C0;
  if (!qword_1003751C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751C0);
  }

  return result;
}

uint64_t sub_1001A7BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001A551C(&qword_100375258, &qword_1002EF050);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v46 = sub_1001A551C(&qword_100375250, &qword_1002EF048);
  __chkstk_darwin(v46);
  v8 = &v38 - v7;
  v45 = sub_1001A551C(&qword_100375288, &qword_1002EF060);
  __chkstk_darwin(v45);
  v10 = &v38 - v9;
  if (*(a1 + 72))
  {
    *v6 = static HorizontalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v11 = sub_1001A551C(&qword_100375290, &qword_1002EF098);
    sub_1001A810C(a1, &v6[*(v11 + 44)]);
    v43 = LocalizedStringKey.init(stringLiteral:)();
    v42 = v12;
    v40 = v13;
    v41 = v14;
    v49 = *(a1 + 32);
    sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
    State.projectedValue.getter();
    v38 = v47[0];
    v39 = v48;
    v44 = a2;
    sub_1001A551C(&qword_100375260, &qword_1002EF058);
    sub_1001AD0C8(&qword_100375268, &qword_100375258, &qword_1002EF050, &protocol conformance descriptor for VStack<A>);
    sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058, &protocol conformance descriptor for Button<A>);
    View.alert<A, B>(_:isPresented:actions:message:)();

    sub_1001AC99C(v6, &qword_100375258, &qword_1002EF050);
    v15 = swift_allocObject();
    v16 = *(a1 + 48);
    v15[3] = *(a1 + 32);
    v15[4] = v16;
    *(v15 + 74) = *(a1 + 58);
    v17 = *(a1 + 16);
    v15[1] = *a1;
    v15[2] = v17;
    v18 = &v8[*(v46 + 36)];
    *v18 = sub_1001AC53C;
    v18[1] = v15;
    v18[2] = 0;
    v18[3] = 0;
    sub_1001AC934(v8, v10, &qword_100375250, &qword_1002EF048);
    swift_storeEnumTagMultiPayload();
    sub_1001AC560(a1, v47);
    sub_1001A551C(&qword_100375200, &qword_1002EF020);
    sub_1001AC178();
    sub_1001AC374();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v8, &qword_100375250, &qword_1002EF048);
  }

  else
  {
    v47[0] = 0xD00000000000003CLL;
    v47[1] = 0x80000001002BA820;
    sub_1001A56A0();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v28 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    LOBYTE(v47[0]) = v24 & 1;
    LOBYTE(v49) = 0;
    static Color.gray.getter();
    v37 = Color.gradient.getter();

    *v10 = v20;
    *(v10 + 1) = v22;
    v10[16] = v24 & 1;
    *(v10 + 3) = v26;
    *(v10 + 4) = KeyPath;
    v10[40] = 1;
    v10[48] = v28;
    *(v10 + 7) = v30;
    *(v10 + 8) = v32;
    *(v10 + 9) = v34;
    *(v10 + 10) = v36;
    v10[88] = 0;
    *(v10 + 12) = v37;
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100375200, &qword_1002EF020);
    sub_1001AC178();
    sub_1001AC374();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1001A810C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = sub_1001A551C(&qword_1003752A0, &qword_1002EF0A8);
  v41 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v33 - v5;
  KeyPath = type metadata accessor for SURLSessionRunningView(0);
  __chkstk_darwin(KeyPath);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_1003752A8, &qword_1002EF0B0);
  __chkstk_darwin(v8 - 8);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v33 - v11;
  v34 = LocalizedStringKey.init(stringLiteral:)();
  v47 = a1[1];
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  sub_100283B2C(v7);
  sub_1001AC598(&qword_1003752B0, type metadata accessor for SURLSessionRunningView, &unk_1002F4440);
  v12 = v38;
  NavigationLink<>.init(_:destination:isActive:)();
  v43 = a1;
  sub_1001A551C(&qword_1003752B8, &qword_1002EF0B8);
  sub_1001AD0C8(&qword_1003752C0, &qword_1003752B8, &qword_1002EF0B8, &protocol conformance descriptor for TupleView<A>);
  Form.init(content:)();
  v13 = swift_allocObject();
  v14 = a1[3];
  v13[3] = a1[2];
  v13[4] = v14;
  *(v13 + 74) = *(a1 + 58);
  v15 = a1[1];
  v13[1] = *a1;
  v13[2] = v15;
  sub_1001AC560(a1, v51);
  v16 = sub_100283F74();
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = (v16 & 1) == 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v39;
  sub_1001AC934(v12, v39, &qword_1003752A8, &qword_1002EF0B0);
  v18 = v40;
  v19 = *(v41 + 16);
  v20 = v36;
  v19(v40, v42, v36);
  v21 = v17;
  v22 = v37;
  sub_1001AC934(v21, v37, &qword_1003752A8, &qword_1002EF0B0);
  v23 = sub_1001A551C(&qword_1003752C8, &qword_1002EF0F0);
  v19((v22 + *(v23 + 48)), v18, v20);
  v24 = *(v23 + 64);
  *&v47 = 0x7472617453;
  *(&v47 + 1) = 0xE500000000000000;
  *&v48 = sub_1001AC640;
  *(&v48 + 1) = v13;
  v26 = v34;
  v25 = KeyPath;
  *&v50[8] = v44;
  v27 = v22 + v24;
  *&v49 = KeyPath;
  *(&v49 + 1) = sub_1001AC6B0;
  *v50 = v34;
  *&v50[24] = v45;
  *&v50[40] = v46;
  sub_1001AC934(&v47, v51, &qword_1003752D0, &qword_1002EF0F8);
  v28 = *(v41 + 8);
  v28(v42, v20);
  sub_1001AC99C(v38, &qword_1003752A8, &qword_1002EF0B0);
  v29 = *&v50[32];
  *(v27 + 64) = *&v50[16];
  *(v27 + 80) = v29;
  *(v27 + 96) = *&v50[48];
  v30 = v48;
  *v27 = v47;
  *(v27 + 16) = v30;
  v31 = *v50;
  *(v27 + 32) = v49;
  *(v27 + 48) = v31;
  v51[0] = 0x7472617453;
  v51[1] = 0xE500000000000000;
  v51[2] = sub_1001AC640;
  v51[3] = v13;
  v51[4] = v25;
  v51[5] = sub_1001AC6B0;
  v51[6] = v26;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  sub_1001AC99C(v51, &qword_1003752D0, &qword_1002EF0F8);
  v28(v40, v20);
  return sub_1001AC99C(v39, &qword_1003752A8, &qword_1002EF0B0);
}

uint64_t sub_1001A869C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_1001A551C(&qword_1003752E8, &qword_1002EF158);
  v46 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v31 - v5;
  v35 = sub_1001A551C(&qword_1003752F0, &unk_1002EF160);
  v45 = *(v35 - 8);
  __chkstk_darwin(v35);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v31 - v8;
  v9 = sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  __chkstk_darwin(v9);
  v42 = sub_1001A551C(&qword_100375300, &qword_1002EF170);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v49 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_1001A551C(&qword_100375308, &qword_1002EF178);
  sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790, &protocol conformance descriptor for Label<A, B>);
  sub_1001AD0C8(&qword_100375318, &qword_100375308, &qword_1002EF178, &protocol conformance descriptor for TupleView<A>);
  v34 = v13;
  Section<>.init(header:content:)();
  v48 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_1001A551C(&qword_100375320, &qword_1002EF180);
  sub_1001AD0C8(&qword_100375328, &qword_100375320, &qword_1002EF180, &protocol conformance descriptor for TupleView<A>);
  v14 = v39;
  Section<>.init(header:content:)();
  v47 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_1001A551C(&qword_100375330, &qword_1002EF188);
  sub_1001AD0C8(&qword_100375338, &qword_100375330, &qword_1002EF188, &protocol conformance descriptor for TupleView<A>);
  v15 = v44;
  Section<>.init(header:content:)();
  v31 = *(v40 + 16);
  v16 = v41;
  v17 = v42;
  v31(v41, v13, v42);
  v33 = *(v45 + 16);
  v18 = v43;
  v19 = v35;
  v33(v43, v14, v35);
  v32 = *(v46 + 16);
  v20 = v36;
  v21 = v15;
  v22 = v37;
  v32(v36, v21, v37);
  v23 = v38;
  v31(v38, v16, v17);
  v24 = sub_1001A551C(&qword_100375340, &qword_1002EF190);
  v33(&v23[*(v24 + 48)], v18, v19);
  v32(&v23[*(v24 + 64)], v20, v22);
  v25 = *(v46 + 8);
  v25(v44, v22);
  v26 = *(v45 + 8);
  v27 = v19;
  v26(v39, v19);
  v28 = *(v40 + 8);
  v29 = v42;
  v28(v34, v42);
  v25(v20, v22);
  v26(v43, v27);
  return (v28)(v41, v29);
}

uint64_t sub_1001A8D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SURLSessionViewModel(0);
  sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel, &unk_1002F62C8);
  v3 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v32[4] = v45;
  v32[5] = v46;
  v33 = v47;
  v32[0] = v41;
  v32[1] = v42;
  v32[2] = v43;
  v32[3] = v44;
  swift_getKeyPath();
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  sub_1001A551C(&qword_100375358, &qword_1002EF1C8);
  Binding.subscript.getter();

  sub_1001AC99C(v32, &qword_100375358, &qword_1002EF1C8);
  v4 = v23;
  v13 = v24;
  v11 = v21;
  v12 = v26;
  v5 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v38 = v45;
  v39 = v46;
  v40 = v47;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  swift_getKeyPath();
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v22 = v34;
  v25 = v35;
  v27 = v36;
  v28 = v37;
  Binding.subscript.getter();

  sub_1001AC99C(&v34, &qword_100375358, &qword_1002EF1C8);
  v6 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v45 = v29;
  v46 = v30;
  v47 = v31;
  v41 = v22;
  v42 = v25;
  v43 = v27;
  v44 = v28;
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_1001AC99C(&v41, &qword_100375358, &qword_1002EF1C8);
  v7 = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  *a2 = v11;
  *(a2 + 8) = v4;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v20;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = sub_1001AD140;
  *(a2 + 96) = v9;
}

uint64_t sub_1001A9134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1001A551C(&qword_100375348, &qword_1002EF198);
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = &v55 - v4;
  v5 = sub_1001A551C(&qword_100375350, &qword_1002EF1A0);
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v56 = &v55 - v6;
  v7 = sub_1001A551C(&qword_100375378, &qword_1002EF268);
  __chkstk_darwin(v7 - 8);
  v69 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v55 - v10;
  v11 = sub_1001A551C(&qword_100375380, &qword_1002EF270);
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = &v55 - v12;
  v13 = sub_1001A551C(&qword_100375388, &qword_1002EF278);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v72 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  __chkstk_darwin(v19);
  v73 = &v55 - v20;
  v71 = a1;
  v21 = *a1;
  v60 = a1[1];
  v61 = v21;
  v22 = type metadata accessor for SURLSessionViewModel(0);
  sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel, &unk_1002F62C8);
  v23 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v109 = v102;
  v110 = v103;
  v111 = v104;
  v105 = v98;
  v106 = v99;
  v107 = v100;
  v108 = v101;
  swift_getKeyPath();
  v95 = v109;
  v96 = v110;
  v97 = v111;
  v91 = v105;
  v92 = v106;
  v93 = v107;
  v94 = v108;
  sub_1001A551C(&qword_100375358, &qword_1002EF1C8);
  Binding.subscript.getter();

  sub_1001AC99C(&v105, &qword_100375358, &qword_1002EF1C8);
  v89 = v75;
  v90 = v76;
  LocalizedStringKey.init(stringLiteral:)();
  *&v82 = Text.init(_:tableName:bundle:comment:)();
  *(&v82 + 1) = v24;
  LOBYTE(v83) = v25 & 1;
  *(&v83 + 1) = v26;
  sub_1001A551C(&qword_100375390, &qword_1002EF2A0);
  sub_1001AC7AC();
  sub_1001AC800();
  v27 = v64;
  Picker.init(selection:label:content:)();
  LOBYTE(v21) = *(v71 + 72);
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  v30 = (v21 & 1) == 0;
  *(v29 + 16) = v30;
  (*(v65 + 32))(v18, v27, v66);
  v31 = &v18[*(v14 + 44)];
  *v31 = KeyPath;
  v31[1] = sub_1001AD140;
  v31[2] = v29;
  sub_1001AC8C4(v18, v73);
  v55 = v22;
  v32 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v102 = v95;
  v103 = v96;
  v104 = v97;
  v98 = v91;
  v99 = v92;
  v100 = v93;
  v101 = v94;
  swift_getKeyPath();
  v86 = v102;
  v87 = v103;
  v88 = v104;
  v82 = v98;
  v83 = v99;
  v84 = v100;
  v85 = v101;
  Binding.subscript.getter();

  sub_1001AC99C(&v98, &qword_100375358, &qword_1002EF1C8);
  v65 = *(&v75 + 1);
  v66 = v75;
  v64 = v76;
  v63 = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = v30;
  if (*(v71 + 73))
  {
    LocalizedStringKey.init(stringLiteral:)();
    v71 = v33;
    v34 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v95 = v86;
    v96 = v87;
    v97 = v88;
    v91 = v82;
    v92 = v83;
    v93 = v84;
    v94 = v85;
    swift_getKeyPath();
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v75 = v91;
    v76 = v92;
    v77 = v93;
    v78 = v94;
    Binding.subscript.getter();

    sub_1001AC99C(&v91, &qword_100375358, &qword_1002EF1C8);
    v35 = v57;
    Toggle<>.init(_:isOn:)();
    v36 = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = v30;
    v38 = v56;
    (*(v58 + 32))(v56, v35, v59);
    v39 = v68;
    v40 = (v38 + *(v68 + 36));
    *v40 = v36;
    v40[1] = sub_1001AD140;
    v40[2] = v37;
    v41 = v74;
    sub_1001AC73C(v38, v74);
    (*(v67 + 56))(v41, 0, 1, v39);
  }

  else
  {
    (*(v67 + 56))(v74, 1, 1, v68);
  }

  v42 = v72;
  sub_1001AC934(v73, v72, &qword_100375388, &qword_1002EF278);
  v43 = v69;
  sub_1001AC934(v74, v69, &qword_100375378, &qword_1002EF268);
  v44 = v70;
  sub_1001AC934(v42, v70, &qword_100375388, &qword_1002EF278);
  v45 = sub_1001A551C(&qword_1003753A8, &qword_1002EF2C8);
  v46 = v44 + *(v45 + 48);
  *&v82 = 0x63696666617254;
  *(&v82 + 1) = 0xE700000000000000;
  v48 = v65;
  v47 = v66;
  *&v83 = &off_100319F00;
  *(&v83 + 1) = v66;
  v49 = v63;
  v50 = v64;
  *&v84 = v65;
  *(&v84 + 1) = v64;
  *&v85 = v63;
  *(&v85 + 1) = sub_1001AD140;
  v51 = v62;
  *&v86 = v62;
  *(v46 + 64) = v62;
  v52 = v83;
  *v46 = v82;
  *(v46 + 16) = v52;
  v53 = v85;
  *(v46 + 32) = v84;
  *(v46 + 48) = v53;
  sub_1001AC934(v43, v44 + *(v45 + 64), &qword_100375378, &qword_1002EF268);
  sub_1001AC934(&v82, &v91, &qword_1003753B0, &qword_1002EF2D0);
  sub_1001AC99C(v74, &qword_100375378, &qword_1002EF268);
  sub_1001AC99C(v73, &qword_100375388, &qword_1002EF278);
  sub_1001AC99C(v43, &qword_100375378, &qword_1002EF268);
  *&v91 = 0x63696666617254;
  *(&v91 + 1) = 0xE700000000000000;
  *&v92 = &off_100319F00;
  *(&v92 + 1) = v47;
  *&v93 = v48;
  *(&v93 + 1) = v50;
  *&v94 = v49;
  *(&v94 + 1) = sub_1001AD140;
  *&v95 = v51;
  sub_1001AC99C(&v91, &qword_1003753B0, &qword_1002EF2D0);
  return sub_1001AC99C(v72, &qword_100375388, &qword_1002EF278);
}

uint64_t sub_1001A9B48()
{
  sub_1001A551C(&qword_1003753B8, &qword_1002EF2F8);
  sub_1001A551C(&qword_1003753C0, &qword_1002EF300);
  sub_1001AD0C8(&qword_1003753C8, &qword_1003753B8, &qword_1002EF2F8, &protocol conformance descriptor for [A]);
  sub_1001AC7AC();
  swift_getOpaqueTypeConformance2();
  sub_1001AC9FC();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001A9C78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10023E8AC(*a1);
  sub_1001A56A0();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_1001A9CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v106 = sub_1001A551C(&qword_100375348, &qword_1002EF198);
  v113 = *(v106 - 8);
  __chkstk_darwin(v106);
  v88 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v110 = &v85 - v5;
  v101 = sub_1001A551C(&qword_100375350, &qword_1002EF1A0);
  __chkstk_darwin(v101);
  v111 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v85 - v8;
  __chkstk_darwin(v9);
  v87 = &v85 - v10;
  __chkstk_darwin(v11);
  v114 = &v85 - v12;
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  v19 = LocalizedStringKey.init(stringLiteral:)();
  v108 = v20;
  v109 = v19;
  v107 = v21;
  v22 = *(a1 + 8);
  v100 = *a1;
  v23 = type metadata accessor for SURLSessionViewModel(0);
  v24 = sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel, &unk_1002F62C8);
  v96 = v23;
  v25 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  v97 = v24;
  ObservedObject.Wrapper.subscript.getter();

  v175 = v151;
  v176 = v152;
  v177 = v153;
  v171 = v147;
  v172 = v148;
  v173 = v149;
  v174 = v150;
  swift_getKeyPath();
  v144 = v175;
  v145 = v176;
  LOWORD(v146) = v177;
  v140 = v171;
  v141 = v172;
  v142 = v173;
  v143 = v174;
  v92 = sub_1001A551C(&qword_100375358, &qword_1002EF1C8);
  Binding.subscript.getter();

  sub_1001AC99C(&v171, &qword_100375358, &qword_1002EF1C8);
  v26 = v110;
  Toggle<>.init(_:isOn:)();
  LOBYTE(a1) = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  v29 = (a1 & 1) == 0;
  *(v28 + 16) = v29;
  v30 = *(v113 + 32);
  v113 += 32;
  v86 = v30;
  v30(v15, v26, v106);
  v31 = &v15[*(v101 + 36)];
  *v31 = KeyPath;
  v31[1] = sub_1001AD140;
  v31[2] = v28;
  v108 = v18;
  sub_1001AC73C(v15, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v99 = v22;
  static Published.subscript.getter();

  v167[2] = v149;
  v168 = v150;
  v169 = v151;
  v170 = v152;
  v167[0] = v147;
  v167[1] = v148;
  sub_1001AC6D0(v167);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v168 == 1)
  {
    v45 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v151 = v144;
    v152 = v145;
    LOWORD(v153) = v146;
    v147 = v140;
    v148 = v141;
    v149 = v142;
    v150 = v143;
    swift_getKeyPath();
    v137 = v151;
    v138 = v152;
    LOWORD(v139) = v153;
    v133 = v147;
    v134 = v148;
    v135 = v149;
    v136 = v150;
    Binding.subscript.getter();

    sub_1001AC99C(&v147, &qword_100375358, &qword_1002EF1C8);
    v47 = *(&v126 + 1);
    v46 = v126;
    v48 = v127;
    v49 = BYTE8(v127);
    swift_getKeyPath();
    v160 = __PAIR128__(v47, v46);
    *&v161 = v48;
    BYTE8(v161) = v49;
    sub_1001A551C(&qword_100375370, &qword_1002EF240);
    Binding.subscript.getter();

    v33 = *(&v154 + 1);
    v32 = v154;
    v34 = v155;
    v44 = BYTE8(v155);

    v118 = 0x4059000000000000;
    State.init(wrappedValue:)();
    v39 = v122;
    v40 = v123;
    v36 = 0x80000001002BA900;
    v41 = swift_getKeyPath();
    v43 = swift_allocObject();
    *(v43 + 16) = v29;
    v42 = sub_1001AD140;
    v38 = 0xE200000000000000;
    v37 = 19541;
    v35 = 0xD00000000000001DLL;
  }

  v90 = v35;
  v91 = v37;
  v93 = v38;
  v94 = v42;
  v95 = v43;
  v98 = v41;
  v102 = v36;
  v103 = v40;
  v104 = v39;
  v105 = v44;
  v107 = v34;
  v109 = v33;
  v110 = v32;
  LocalizedStringKey.init(stringLiteral:)();
  v50 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v164 = v151;
  v165 = v152;
  v166 = v153;
  v160 = v147;
  v161 = v148;
  v162 = v149;
  v163 = v150;
  swift_getKeyPath();
  v144 = v164;
  v145 = v165;
  LOWORD(v146) = v166;
  v140 = v160;
  v141 = v161;
  v142 = v162;
  v143 = v163;
  Binding.subscript.getter();

  sub_1001AC99C(&v160, &qword_100375358, &qword_1002EF1C8);
  v51 = v88;
  Toggle<>.init(_:isOn:)();
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = v29;
  v54 = v87;
  v86(v87, v51, v106);
  v55 = (v54 + *(v101 + 36));
  *v55 = v52;
  v55[1] = sub_1001AD140;
  v55[2] = v53;
  sub_1001AC73C(v54, v114);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v156 = v149;
  v157 = v150;
  v158 = v151;
  v159 = v152;
  v154 = v147;
  v155 = v148;
  sub_1001AC6D0(&v154);
  if (BYTE1(v157) == 1)
  {
    v56 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v151 = v144;
    v152 = v145;
    LOWORD(v153) = v146;
    v147 = v140;
    v148 = v141;
    v149 = v142;
    v150 = v143;
    swift_getKeyPath();
    v137 = v151;
    v138 = v152;
    LOWORD(v139) = v153;
    v133 = v147;
    v134 = v148;
    v135 = v149;
    v136 = v150;
    Binding.subscript.getter();

    sub_1001AC99C(&v147, &qword_100375358, &qword_1002EF1C8);
    v58 = *(&v126 + 1);
    v57 = v126;
    v59 = v127;
    v60 = BYTE8(v127);
    swift_getKeyPath();
    v122 = v57;
    v123 = v58;
    v124 = v59;
    v125 = v60;
    sub_1001A551C(&qword_100375370, &qword_1002EF240);
    Binding.subscript.getter();

    v113 = v118;
    v106 = v119;
    v99 = v120;
    v97 = v121;

    v115 = 0x4059000000000000;
    State.init(wrappedValue:)();
    v96 = v116;
    v92 = v117;
    v61 = 0x80000001002BA8E0;
    v87 = swift_getKeyPath();
    v88 = swift_allocObject();
    v88[16] = v29;
    v62 = 0xD00000000000001FLL;
    v100 = 0xE200000000000000;
    v101 = sub_1001AD140;
    v63 = 19524;
  }

  else
  {
    v113 = 0;
    v106 = 0;
    v99 = 0;
    v100 = 0;
    v62 = 0;
    v61 = 0;
    v63 = 0;
    v96 = 0;
    v97 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v101 = 0;
  }

  v85 = v61;
  v64 = v112;
  sub_1001AC934(v108, v112, &qword_100375350, &qword_1002EF1A0);
  v65 = v111;
  sub_1001AC934(v114, v111, &qword_100375350, &qword_1002EF1A0);
  v66 = v64;
  v67 = v89;
  sub_1001AC934(v66, v89, &qword_100375350, &qword_1002EF1A0);
  v68 = sub_1001A551C(&qword_100375360, &qword_1002EF1F0);
  v69 = v67 + v68[12];
  *&v126 = v110;
  *(&v126 + 1) = v109;
  *&v127 = v107;
  *(&v127 + 1) = v105;
  *&v128 = v90;
  *(&v128 + 1) = v102;
  *&v129 = v91;
  *(&v129 + 1) = v93;
  *&v130 = v104;
  *(&v130 + 1) = v103;
  *&v131 = v98;
  *(&v131 + 1) = v94;
  v132 = v95;
  *(v69 + 96) = v95;
  v70 = v127;
  *v69 = v126;
  *(v69 + 16) = v70;
  v71 = v129;
  v72 = v130;
  *(v69 + 32) = v128;
  *(v69 + 48) = v71;
  v73 = v131;
  *(v69 + 64) = v72;
  *(v69 + 80) = v73;
  sub_1001AC934(v65, v67 + v68[16], &qword_100375350, &qword_1002EF1A0);
  v74 = v67 + v68[20];
  *&v133 = v113;
  *(&v133 + 1) = v106;
  v75 = v99;
  v76 = v97;
  *&v134 = v99;
  *(&v134 + 1) = v97;
  *&v135 = v62;
  *(&v135 + 1) = v61;
  v86 = v63;
  *&v136 = v63;
  *(&v136 + 1) = v100;
  v77 = v96;
  v78 = v92;
  *&v137 = v96;
  *(&v137 + 1) = v92;
  v80 = v87;
  v79 = v88;
  *&v138 = v87;
  *(&v138 + 1) = v101;
  v139 = v88;
  *(v74 + 96) = v88;
  v81 = v134;
  *v74 = v133;
  *(v74 + 16) = v81;
  v82 = v136;
  *(v74 + 32) = v135;
  *(v74 + 48) = v82;
  v83 = v138;
  *(v74 + 64) = v137;
  *(v74 + 80) = v83;
  sub_1001AC934(&v126, &v147, &qword_100375368, &qword_1002EF1F8);
  sub_1001AC934(&v133, &v147, &qword_100375368, &qword_1002EF1F8);
  sub_1001AC99C(v114, &qword_100375350, &qword_1002EF1A0);
  sub_1001AC99C(v108, &qword_100375350, &qword_1002EF1A0);
  *&v140 = v113;
  *(&v140 + 1) = v106;
  *&v141 = v75;
  *(&v141 + 1) = v76;
  *&v142 = v62;
  *(&v142 + 1) = v85;
  *&v143 = v86;
  *(&v143 + 1) = v100;
  *&v144 = v77;
  *(&v144 + 1) = v78;
  *&v145 = v80;
  *(&v145 + 1) = v101;
  v146 = v79;
  sub_1001AC99C(&v140, &qword_100375368, &qword_1002EF1F8);
  sub_1001AC99C(v111, &qword_100375350, &qword_1002EF1A0);
  *&v147 = v110;
  *(&v147 + 1) = v109;
  *&v148 = v107;
  *(&v148 + 1) = v105;
  *&v149 = v90;
  *(&v149 + 1) = v102;
  *&v150 = v91;
  *(&v150 + 1) = v93;
  *&v151 = v104;
  *(&v151 + 1) = v103;
  *&v152 = v98;
  *(&v152 + 1) = v94;
  v153 = v95;
  sub_1001AC99C(&v147, &qword_100375368, &qword_1002EF1F8);
  return sub_1001AC99C(v112, &qword_100375350, &qword_1002EF1A0);
}

uint64_t sub_1001AAA50(uint64_t a1)
{
  sub_1001AAAB0();
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  return State.wrappedValue.setter();
}

void sub_1001AAAB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v14 = v12;
  v13[0] = v7;
  v13[1] = v8;
  sub_1001AC6D0(v13);
  if ((v14 & 0x100) != 0)
  {
    v0 = 24;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v4;
    v11 = v5;
    v12 = v6;
    v7 = v1;
    v8 = v2;
    v9 = v3;
    sub_1001AC6D0(&v7);
    v0 = BYTE10(v8);
  }

  sub_100284444(v0);
}

uint64_t sub_1001AACB8()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Button<>.init(_:action:)();
}

uint64_t sub_1001AAD14@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001AADB0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001A551C(&qword_1003751D8, &qword_1002EF008);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v19 = sub_1001A551C(&qword_1003751E0, &qword_1002EF010);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  v12 = v1[3];
  v27[2] = v1[2];
  v28[0] = v12;
  *(v28 + 10) = *(v1 + 58);
  v13 = v1[1];
  v27[0] = *v1;
  v27[1] = v13;
  v24 = v27;
  sub_1001A551C(&qword_1003751E8, &qword_1002EF018);
  sub_1001AC0EC();
  NavigationView.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v14 = sub_1001AD0C8(&qword_100375278, &qword_1003751D8, &qword_1002EF008, &protocol conformance descriptor for NavigationView<A>);
  View.navigationTitle(_:)();

  (*(v7 + 8))(v9, v6);
  StackNavigationViewStyle.init()();
  v25 = v6;
  v26 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1001AC598(&qword_100375280, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  v15 = v19;
  v16 = v21;
  View.navigationViewStyle<A>(_:)();
  (*(v22 + 8))(v5, v16);
  return (*(v20 + 8))(v11, v15);
}

uint64_t sub_1001AB148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_1001A551C(&qword_1003753E0, &unk_1002EF5C0);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v43 - v5;
  v6 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_1001A551C(&qword_1003753F0, &qword_1002EF5D0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v43 - v13);
  v61 = *(a1 + 32);
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = type metadata accessor for SSFImage(0);
  sub_1001ACE9C(&v61, &v52);

  static SymbolRenderingMode.multicolor.getter();
  *v14 = v61;
  v18 = (v14 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = static Font.system(size:weight:design:)();
  sub_1001AC99C(v8, &qword_1003753E8, &unk_1002EFAB0);
  KeyPath = swift_getKeyPath();
  v22 = (v14 + *(v10 + 44));
  v44 = v14;
  *v22 = KeyPath;
  v22[1] = v20;
  v51 = *(a1 + 64);
  sub_1001A551C(&qword_1003753F8, &qword_1002EF608);
  State.projectedValue.getter();
  v23 = v52;
  v24 = v53;
  v25 = v54;
  v26 = swift_allocObject();
  v27 = *(a1 + 48);
  v26[3] = *(a1 + 32);
  v26[4] = v27;
  v26[5] = *(a1 + 64);
  v28 = *(a1 + 16);
  v26[1] = *a1;
  v26[2] = v28;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  v57 = xmmword_1002EEF40;
  v56 = 0x4039000000000000;
  sub_1001ACF60(a1, &v52);
  LocalizedStringKey.init(stringLiteral:)();
  v52 = Text.init(_:tableName:bundle:comment:)();
  v53 = v29;
  LOBYTE(v54) = v30 & 1;
  v55 = v31;
  sub_1001AB6DC(&v51);
  sub_1001ACF98();
  v32 = v48;
  Slider.init<A>(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)();
  v33 = v14;
  v34 = v47;
  sub_1001AC934(v33, v47, &qword_1003753F0, &qword_1002EF5D0);
  v35 = v45;
  v36 = *(v45 + 16);
  v37 = v49;
  v38 = v46;
  v36(v49, v32, v46);
  v39 = v50;
  sub_1001AC934(v34, v50, &qword_1003753F0, &qword_1002EF5D0);
  v40 = sub_1001A551C(&qword_100375408, &qword_1002EF610);
  v36((v39 + *(v40 + 48)), v37, v38);
  v41 = *(v35 + 8);
  v41(v32, v38);
  sub_1001AC99C(v44, &qword_1003753F0, &qword_1002EF5D0);
  v41(v37, v38);
  return sub_1001AC99C(v34, &qword_1003753F0, &qword_1002EF5D0);
}

uint64_t sub_1001AB674@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void *sub_1001AB6DC@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  sub_1001A551C(&qword_1003753F8, &qword_1002EF608);
  result = State.wrappedValue.getter();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v6);

    v7._countAndFlagsBits = 4345120;
    v7._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
    LocalizedStringKey.init(stringInterpolation:)();
    result = Text.init(_:tableName:bundle:comment:)();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1001AB868(uint64_t a1, _OWORD *a2)
{
  sub_1001A551C(&qword_1003753F8, &qword_1002EF608);
  State.wrappedValue.getter();
  sub_1001A551C(&qword_100375410, &qword_1002EF618);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001AB8F4@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[3];
  v15[2] = v9[2];
  v15[3] = v11;
  v15[4] = v9[4];
  v12 = v9[1];
  v15[0] = *v9;
  v15[1] = v12;
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v13 = sub_1001A551C(&qword_1003753D8, &qword_1002EF5B8);
  return sub_1001AB148(v15, a9 + *(v13 + 44));
}

uint64_t sub_1001AB968()
{
  LocalizedStringKey.init(stringLiteral:)();
  sub_1001A551C(&unk_100379B50, &qword_1002EF620);
  Binding.projectedValue.getter();
  return Toggle<>.init(_:isOn:)();
}

uint64_t sub_1001ABA28@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v14;
  sub_1001A5174(v2, v4, v6 & 1);

  sub_1001A5174(v9, v11, v13);

  sub_1001ACFEC(v9, v11, v13);

  sub_1001ACFEC(v2, v4, v6 & 1);
}

__n128 sub_1001ABB98@<Q0>(uint64_t a9@<X8>)
{
  v10 = static VerticalAlignment.center.getter();
  sub_1001ABA28(v13);
  *&v12[55] = v13[3];
  *&v12[39] = v13[2];
  *&v12[23] = v13[1];
  *&v12[7] = v13[0];
  *(a9 + 33) = *&v12[16];
  result = *&v12[32];
  *(a9 + 49) = *&v12[32];
  *(a9 + 65) = *&v12[48];
  *a9 = v10;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 80) = *&v12[63];
  *(a9 + 17) = *v12;
  return result;
}

uint64_t sub_1001ABC1C@<X0>(uint64_t a4@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1001A551C(&qword_100375418, &qword_1002EF628);
  Binding.wrappedValue.getter();
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_1001A56A0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v15 = v9 & 1;
  v20 = v9 & 1;
  v17 = v16 & 1;
  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v15;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v16 & 1;
  *(a4 + 56) = v18;
  sub_1001A5174(v5, v7, v15);

  sub_1001A5174(v12, v14, v17);

  sub_1001ACFEC(v12, v14, v17);

  sub_1001ACFEC(v5, v7, v20);
}

__n128 sub_1001ABE10@<Q0>(uint64_t a9@<X8>)
{
  v10 = static VerticalAlignment.center.getter();
  sub_1001ABC1C(v13);
  *&v12[55] = v13[3];
  *&v12[39] = v13[2];
  *&v12[23] = v13[1];
  *&v12[7] = v13[0];
  *(a9 + 33) = *&v12[16];
  result = *&v12[32];
  *(a9 + 49) = *&v12[32];
  *(a9 + 65) = *&v12[48];
  *a9 = v10;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 80) = *&v12[63];
  *(a9 + 17) = *v12;
  return result;
}

__n128 sub_1001ABEB8@<Q0>(unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  type metadata accessor for SURLSessionViewModel(0);
  sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel, &unk_1002F62C8);
  v7 = ObservedObject.init(wrappedValue:)();
  v9 = v8;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  State.init(wrappedValue:)();
  result = v11;
  a4->n128_u64[0] = v7;
  a4->n128_u64[1] = v9;
  a4[1].n128_u8[0] = v11.n128_u8[0];
  a4[1].n128_u64[1] = v11.n128_u64[1];
  a4[2].n128_u8[0] = v11.n128_u8[0];
  a4[2].n128_u64[1] = v11.n128_u64[1];
  a4[3] = v11;
  a4[4].n128_u64[0] = v12;
  a4[4].n128_u8[8] = a2;
  a4[4].n128_u8[9] = a3;
  return result;
}

__n128 sub_1001ABFF8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001AC01C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_1001AC064(uint64_t result, int a2, int a3)
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
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001AC0EC()
{
  result = qword_1003751F0;
  if (!qword_1003751F0)
  {
    sub_1001A55C8(&qword_1003751E8, &qword_1002EF018);
    sub_1001AC178();
    sub_1001AC374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751F0);
  }

  return result;
}

unint64_t sub_1001AC178()
{
  result = qword_1003751F8;
  if (!qword_1003751F8)
  {
    sub_1001A55C8(&qword_100375200, &qword_1002EF020);
    sub_1001AC230();
    sub_1001AD0C8(&qword_100375238, &qword_100375240, &qword_1002EF040, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751F8);
  }

  return result;
}

unint64_t sub_1001AC230()
{
  result = qword_100375208;
  if (!qword_100375208)
  {
    sub_1001A55C8(&qword_100375210, &qword_1002EF028);
    sub_1001AC2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375208);
  }

  return result;
}

unint64_t sub_1001AC2BC()
{
  result = qword_100375218;
  if (!qword_100375218)
  {
    sub_1001A55C8(&qword_100375220, &qword_1002EF030);
    sub_1001AD0C8(&qword_100375228, &qword_100375230, &qword_1002EF038, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375218);
  }

  return result;
}

unint64_t sub_1001AC374()
{
  result = qword_100375248;
  if (!qword_100375248)
  {
    sub_1001A55C8(&qword_100375250, &qword_1002EF048);
    sub_1001A55C8(&qword_100375258, &qword_1002EF050);
    sub_1001A55C8(&qword_100375260, &qword_1002EF058);
    sub_1001AD0C8(&qword_100375268, &qword_100375258, &qword_1002EF050, &protocol conformance descriptor for VStack<A>);
    sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375248);
  }

  return result;
}

uint64_t sub_1001AC4E4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001AC598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001AC5E8()
{

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_1001AC648@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001AC73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375350, &qword_1002EF1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AC7AC()
{
  result = qword_100375398;
  if (!qword_100375398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375398);
  }

  return result;
}

unint64_t sub_1001AC800()
{
  result = qword_1003753A0;
  if (!qword_1003753A0)
  {
    sub_1001A55C8(&qword_100375390, &qword_1002EF2A0);
    sub_1001AC7AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003753A0);
  }

  return result;
}

uint64_t sub_1001AC8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375388, &qword_1002EF278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AC934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001A551C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001AC99C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001A551C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1001AC9FC()
{
  result = qword_1003753D0;
  if (!qword_1003753D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003753D0);
  }

  return result;
}

__n128 sub_1001ACA50(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001ACA6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001ACAB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1001ACB18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001ACB2C(uint64_t a1, int a2)
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

uint64_t sub_1001ACB74(uint64_t result, int a2, int a3)
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

__n128 sub_1001ACBC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001ACBD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1001ACC20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001ACC70(uint64_t a1, int a2)
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

uint64_t sub_1001ACCB8(uint64_t result, int a2, int a3)
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

uint64_t sub_1001ACD08()
{
  sub_1001A55C8(&qword_1003751E0, &qword_1002EF010);
  type metadata accessor for StackNavigationViewStyle();
  sub_1001A55C8(&qword_1003751D8, &qword_1002EF008);
  sub_1001AD0C8(&qword_100375278, &qword_1003751D8, &qword_1002EF008, &protocol conformance descriptor for NavigationView<A>);
  swift_getOpaqueTypeConformance2();
  sub_1001AC598(&qword_100375280, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001ACF00()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_1001ACF98()
{
  result = qword_100375400;
  if (!qword_100375400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375400);
  }

  return result;
}

uint64_t sub_1001ACFEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001AD0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001AD144()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setBackgroundColor:v3];
  v4 = [v0 layer];
  [v4 setCornerRadius:10.0];

  v5 = [v0 layer];
  [v5 setMasksToBounds:1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal10ExportView_label];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = String._bridgeToObjectiveC()();

  [v6 setText:v7];

  v8 = String._bridgeToObjectiveC()();
  v9 = [v2 colorNamed:v8];

  [v6 setTextColor:v9];
  v10 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightBold];
  [v6 setFont:v10];

  [v0 addSubview:v6];
  v11 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapExportButton:"];
  [v0 addGestureRecognizer:v11];
  v12 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002EF640;
  v14 = [v6 centerYAnchor];
  v15 = [v0 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  v17 = [v6 centerXAnchor];
  v18 = [v0 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v13 + 40) = v19;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];
}

id sub_1001AD638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001AD6F0()
{
  result = qword_1003774A0;
  if (!qword_1003774A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003774A0);
  }

  return result;
}

void sub_1001AD73C()
{
  v9 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v9 impactOccurred];
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100382490;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Export View - didTapExportButton", 32, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal10ExportView_timeFrame);
    v6 = sub_10026C7A0();
    sub_100205F2C();

    if (qword_100375018 != -1)
    {
      swift_once();
    }

    if (*(qword_100382500 + 160))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      swift_unknownObjectRetain();
      sub_10025C024();
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1001AD99C;
      *(v8 + 24) = v7;

      sub_1002676B0(v5, sub_1001AD9DC, v8);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001AD964()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD9A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001ADA20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1001ADAFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FTMCellMonitorBookmarkedSheetView(uint64_t a1)
{
  result = qword_1003754F0;
  if (!qword_1003754F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001ADBF8(uint64_t a1)
{
  sub_1001ADC7C(319);
  if (v1 <= 0x3F)
  {
    sub_1001ADD10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001ADC7C(uint64_t a1)
{
  if (!qword_100375500)
  {
    type metadata accessor for FTMAllMetricsModel(255);
    sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100375500);
    }
  }
}

void sub_1001ADD10(uint64_t a1)
{
  if (!qword_100375510)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100375510);
    }
  }
}

uint64_t sub_1001ADD84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001AC934(*a1, a2, &qword_100375550, &qword_1002EF718);
  v4 = sub_1001A551C(&qword_1003755A8, &qword_1002EF758);
  v5 = v4[12];
  v6 = a1[1];
  v7 = type metadata accessor for Divider();
  v8 = *(*(v7 - 8) + 16);
  v8(a2 + v5, v6, v7);
  v9 = v4[16];
  v10 = a1[2];
  v11 = v10[192];
  v12 = *(v10 + 11);
  v13 = *(v10 + 9);
  v93[10] = *(v10 + 10);
  v93[11] = v12;
  v94 = v11;
  v93[9] = v13;
  v14 = *(v10 + 8);
  v15 = *(v10 + 5);
  v16 = *(v10 + 6);
  v93[7] = *(v10 + 7);
  v93[8] = v14;
  v93[5] = v15;
  v93[6] = v16;
  v18 = *(v10 + 1);
  v17 = *(v10 + 2);
  v19 = *(v10 + 3);
  v93[4] = *(v10 + 4);
  v93[0] = *v10;
  v93[1] = v18;
  v93[2] = v17;
  v93[3] = v19;
  memmove((a2 + v9), v10, 0xC1uLL);
  v20 = v4[20];
  v21 = a1[3];
  v22 = v21[192];
  v23 = *(v21 + 11);
  v24 = *(v21 + 9);
  v95[10] = *(v21 + 10);
  v95[11] = v23;
  v96 = v22;
  v95[9] = v24;
  v25 = *(v21 + 8);
  v26 = *(v21 + 5);
  v27 = *(v21 + 6);
  v95[7] = *(v21 + 7);
  v95[8] = v25;
  v95[5] = v26;
  v95[6] = v27;
  v95[0] = *v21;
  v28 = *(v21 + 4);
  v30 = *(v21 + 1);
  v29 = *(v21 + 2);
  v95[3] = *(v21 + 3);
  v95[4] = v28;
  v95[1] = v30;
  v95[2] = v29;
  memmove((a2 + v20), v21, 0xC1uLL);
  v8(a2 + v4[24], a1[4], v7);
  v31 = v4[28];
  v32 = a1[5];
  v33 = v32[192];
  v34 = *(v32 + 11);
  v35 = *(v32 + 9);
  v97[10] = *(v32 + 10);
  v97[11] = v34;
  v98 = v33;
  v97[9] = v35;
  v37 = *(v32 + 5);
  v36 = *(v32 + 6);
  v38 = *(v32 + 8);
  v97[7] = *(v32 + 7);
  v97[8] = v38;
  v97[0] = *v32;
  v39 = *(v32 + 4);
  v41 = *(v32 + 1);
  v40 = *(v32 + 2);
  v97[3] = *(v32 + 3);
  v97[4] = v39;
  v97[1] = v41;
  v97[2] = v40;
  v97[5] = v37;
  v97[6] = v36;
  memmove((a2 + v31), v32, 0xC1uLL);
  v42 = v4[32];
  v43 = a1[6];
  v44 = v43[192];
  v45 = *(v43 + 11);
  v46 = *(v43 + 9);
  v99[10] = *(v43 + 10);
  v99[11] = v45;
  v100 = v44;
  v99[9] = v46;
  v48 = *(v43 + 5);
  v47 = *(v43 + 6);
  v49 = *(v43 + 7);
  v99[8] = *(v43 + 8);
  v99[0] = *v43;
  v50 = *(v43 + 4);
  v52 = *(v43 + 1);
  v51 = *(v43 + 2);
  v99[3] = *(v43 + 3);
  v99[4] = v50;
  v99[1] = v52;
  v99[2] = v51;
  v99[6] = v47;
  v99[7] = v49;
  v99[5] = v48;
  memmove((a2 + v42), v43, 0xC1uLL);
  v53 = v4[36];
  v54 = a1[7];
  v55 = v54[192];
  v56 = *(v54 + 11);
  v57 = *(v54 + 9);
  v101[10] = *(v54 + 10);
  v101[11] = v56;
  v102 = v55;
  v101[9] = v57;
  v101[0] = *v54;
  v58 = *(v54 + 4);
  v60 = *(v54 + 1);
  v59 = *(v54 + 2);
  v101[3] = *(v54 + 3);
  v101[4] = v58;
  v101[1] = v60;
  v101[2] = v59;
  v61 = *(v54 + 8);
  v63 = *(v54 + 5);
  v62 = *(v54 + 6);
  v101[7] = *(v54 + 7);
  v101[8] = v61;
  v101[5] = v63;
  v101[6] = v62;
  memmove((a2 + v53), v54, 0xC1uLL);
  v64 = v4[40];
  v65 = a1[8];
  v66 = v65[192];
  v67 = *(v65 + 11);
  v68 = *(v65 + 9);
  v103[10] = *(v65 + 10);
  v103[11] = v67;
  v104 = v66;
  v103[0] = *v65;
  v69 = *(v65 + 3);
  v70 = *(v65 + 4);
  v71 = *(v65 + 2);
  v103[1] = *(v65 + 1);
  v103[4] = v70;
  v103[3] = v69;
  v103[2] = v71;
  v72 = *(v65 + 7);
  v73 = *(v65 + 8);
  v74 = *(v65 + 6);
  v103[5] = *(v65 + 5);
  v103[8] = v73;
  v103[7] = v72;
  v103[6] = v74;
  v103[9] = v68;
  memmove((a2 + v64), v65, 0xC1uLL);
  v75 = a2 + v4[44];
  v76 = a1[9];
  v77 = a1[10];
  v78 = *v76;
  v79 = *(v76 + 8);
  v80 = *(v76 + 16);
  v81 = *(v76 + 24);
  *v75 = *v76;
  *(v75 + 8) = v79;
  *(v75 + 16) = v80;
  *(v75 + 24) = v81;
  v82 = a2 + v4[48];
  v83 = *v77;
  LOBYTE(v77) = *(v77 + 8);
  *v82 = v83;
  *(v82 + 8) = v77;
  v84 = v4[52];
  v85 = a1[11];
  v86 = *v85;
  v87 = v85[1];
  v88 = v85[2];
  v105[3] = v85[3];
  v105[2] = v88;
  v105[1] = v87;
  v105[0] = v86;
  LOBYTE(v83) = *(v85 + 112);
  v89 = v85[6];
  v90 = v85[4];
  v105[5] = v85[5];
  v105[6] = v89;
  v105[4] = v90;
  v106 = v83;
  memmove((a2 + v84), v85, 0x71uLL);
  sub_1001AC934(v93, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v95, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v97, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v99, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v101, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v103, v92, &qword_100375570, &qword_1002EF738);
  sub_1001A5174(v78, v79, v80);

  return sub_1001AC934(v105, v92, &qword_100375578, &qword_1002EF740);
}

uint64_t sub_1001AE1BC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v66 = v2;
  v63 = sub_1001A551C(&qword_100375540, &qword_1002EF708);
  __chkstk_darwin(v63);
  v65 = &v59[-v3];
  v64 = sub_1001A551C(&qword_100375548, &qword_1002EF710);
  __chkstk_darwin(v64);
  v76 = &v59[-v4];
  v78 = type metadata accessor for Divider();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v62 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v74 = &v59[-v7];
  __chkstk_darwin(v8);
  v77 = &v59[-v9];
  __chkstk_darwin(v10);
  v12 = &v59[-v11];
  v13 = sub_1001A551C(&qword_100375550, &qword_1002EF718);
  __chkstk_darwin(v13);
  v73 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v59[-v16];
  v18 = *v1;
  if (*v1)
  {

    *v17 = static VerticalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v19 = sub_1001A551C(&qword_100375558, &qword_1002EF720);
    sub_1001AFB14(v1, &v17[*(v19 + 44)]);
    v20 = static Edge.Set.top.getter();
    v70 = v1;
    v21 = v20;
    EdgeInsets.init(_all:)();
    v22 = &v17[*(v13 + 36)];
    *v22 = v21;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    *(v22 + 4) = v26;
    v22[40] = 0;
    Divider.init()();
    v27 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B0220(v277);
    v180 = v277[8];
    v181[0] = v277[9];
    *(v181 + 9) = *(&v277[9] + 9);
    v176 = v277[4];
    v177 = v277[5];
    v179 = v277[7];
    v178 = v277[6];
    v172 = v277[0];
    v173 = v277[1];
    v175 = v277[3];
    v174 = v277[2];
    v182[8] = v277[8];
    v183[0] = v277[9];
    *(v183 + 9) = *(&v277[9] + 9);
    v182[4] = v277[4];
    v182[5] = v277[5];
    v182[7] = v277[7];
    v182[6] = v277[6];
    v182[0] = v277[0];
    v182[1] = v277[1];
    v182[3] = v277[3];
    v182[2] = v277[2];
    v72 = v12;
    sub_1001AC934(&v172, v275, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v182, &qword_100375560, &qword_1002EF728);
    *(&v277[7] + 7) = v179;
    *(&v277[8] + 7) = v180;
    *(&v277[9] + 7) = v181[0];
    v277[10] = *(v181 + 9);
    *(&v277[3] + 7) = v175;
    *(&v277[4] + 7) = v176;
    *(&v277[5] + 7) = v177;
    *(&v277[6] + 7) = v178;
    *(v277 + 7) = v172;
    *(&v277[1] + 7) = v173;
    *(&v277[2] + 7) = v174;
    *&v185[113] = v277[7];
    *&v185[129] = v277[8];
    *&v185[145] = v277[9];
    *&v185[161] = *(v181 + 9);
    *&v185[49] = v277[3];
    *&v185[65] = v277[4];
    *&v185[81] = v277[5];
    *&v185[97] = v277[6];
    *&v185[1] = v277[0];
    *&v185[17] = v277[1];
    v184 = v27;
    v185[0] = v273[0];
    *&v185[33] = v277[2];
    v71 = v17;

    v28 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B05E0(v277);
    v194 = v277[8];
    v195[0] = v277[9];
    *(v195 + 9) = *(&v277[9] + 9);
    v190 = v277[4];
    v191 = v277[5];
    v193 = v277[7];
    v192 = v277[6];
    v186 = v277[0];
    v187 = v277[1];
    v189 = v277[3];
    v188 = v277[2];
    v196[8] = v277[8];
    v197[0] = v277[9];
    *(v197 + 9) = *(&v277[9] + 9);
    v196[4] = v277[4];
    v196[5] = v277[5];
    v196[7] = v277[7];
    v196[6] = v277[6];
    v196[0] = v277[0];
    v196[1] = v277[1];
    v196[3] = v277[3];
    v196[2] = v277[2];
    sub_1001AC934(&v186, v275, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v196, &qword_100375560, &qword_1002EF728);

    *(&v277[4] + 7) = v190;
    *(&v277[3] + 7) = v189;
    *(&v277[7] + 7) = v193;
    *(&v277[8] + 7) = v194;
    *(&v277[9] + 7) = v195[0];
    v277[10] = *(v195 + 9);
    *(&v277[5] + 7) = v191;
    *(&v277[6] + 7) = v192;
    *(v277 + 7) = v186;
    *(&v277[1] + 7) = v187;
    *(&v277[2] + 7) = v188;
    *&v199[113] = v277[7];
    *&v199[129] = v277[8];
    *&v199[145] = v277[9];
    *&v199[161] = *(v195 + 9);
    *&v199[49] = v277[3];
    *&v199[65] = v277[4];
    *&v199[81] = v277[5];
    *&v199[97] = v277[6];
    *&v199[1] = v277[0];
    *&v199[17] = v277[1];
    v198 = v28;
    v199[0] = v273[0];
    *&v199[33] = v277[2];
    Divider.init()();
    v29 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B09A0(v277);
    v208 = v277[8];
    v209[0] = v277[9];
    *(v209 + 9) = *(&v277[9] + 9);
    v204 = v277[4];
    v205 = v277[5];
    v207 = v277[7];
    v206 = v277[6];
    v200 = v277[0];
    v201 = v277[1];
    v203 = v277[3];
    v202 = v277[2];
    v210[8] = v277[8];
    v211[0] = v277[9];
    *(v211 + 9) = *(&v277[9] + 9);
    v210[4] = v277[4];
    v210[5] = v277[5];
    v210[7] = v277[7];
    v210[6] = v277[6];
    v210[0] = v277[0];
    v210[1] = v277[1];
    v210[3] = v277[3];
    v210[2] = v277[2];
    sub_1001AC934(&v200, v275, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v210, &qword_100375560, &qword_1002EF728);
    *(&v277[7] + 7) = v207;
    *(&v277[8] + 7) = v208;
    *(&v277[9] + 7) = v209[0];
    v277[10] = *(v209 + 9);
    *(&v277[3] + 7) = v203;
    *(&v277[4] + 7) = v204;
    *(&v277[5] + 7) = v205;
    *(&v277[6] + 7) = v206;
    *(v277 + 7) = v200;
    *(&v277[1] + 7) = v201;
    *(&v277[2] + 7) = v202;
    *&v213[113] = v277[7];
    *&v213[129] = v277[8];
    *&v213[145] = v277[9];
    *&v213[161] = *(v209 + 9);
    *&v213[49] = v277[3];
    *&v213[65] = v277[4];
    *&v213[81] = v277[5];
    *&v213[97] = v277[6];
    *&v213[1] = v277[0];
    *&v213[17] = v277[1];
    v212 = v29;
    v213[0] = v273[0];
    *&v213[33] = v277[2];
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v30 = qword_100382508;

    v31 = v30;
    v32 = sub_10021A754(v18);

    v33 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B0D5C(v32, v277);
    v222 = v277[8];
    v223[0] = v277[9];
    *(v223 + 9) = *(&v277[9] + 9);
    v218 = v277[4];
    v219 = v277[5];
    v221 = v277[7];
    v220 = v277[6];
    v214 = v277[0];
    v215 = v277[1];
    v217 = v277[3];
    v216 = v277[2];
    v224[8] = v277[8];
    v225[0] = v277[9];
    *(v225 + 9) = *(&v277[9] + 9);
    v224[4] = v277[4];
    v224[5] = v277[5];
    v224[7] = v277[7];
    v224[6] = v277[6];
    v224[0] = v277[0];
    v224[1] = v277[1];
    v224[3] = v277[3];
    v224[2] = v277[2];
    v61 = v18;
    sub_1001AC934(&v214, v275, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v224, &qword_100375560, &qword_1002EF728);
    *(&v277[7] + 7) = v221;
    *(&v277[8] + 7) = v222;
    *(&v277[9] + 7) = v223[0];
    v277[10] = *(v223 + 9);
    *(&v277[3] + 7) = v217;
    *(&v277[4] + 7) = v218;
    *(&v277[5] + 7) = v219;
    *(&v277[6] + 7) = v220;
    *(v277 + 7) = v214;
    *(&v277[1] + 7) = v215;
    *(&v277[2] + 7) = v216;
    *&v227[113] = v277[7];
    *&v227[129] = v277[8];
    *&v227[145] = v277[9];
    *&v227[161] = *(v223 + 9);
    *&v227[49] = v277[3];
    *&v227[65] = v277[4];
    *&v227[81] = v277[5];
    *&v227[97] = v277[6];
    *&v227[1] = v277[0];
    *&v227[17] = v277[1];
    v226 = v33;
    v227[0] = v273[0];
    *&v227[33] = v277[2];
    v34 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B13E0(v32, v277);
    v236 = v277[8];
    v237[0] = v277[9];
    *(v237 + 9) = *(&v277[9] + 9);
    v232 = v277[4];
    v233 = v277[5];
    v235 = v277[7];
    v234 = v277[6];
    v228 = v277[0];
    v229 = v277[1];
    v231 = v277[3];
    v230 = v277[2];
    v238[8] = v277[8];
    v239[0] = v277[9];
    *(v239 + 9) = *(&v277[9] + 9);
    v238[4] = v277[4];
    v238[5] = v277[5];
    v238[7] = v277[7];
    v238[6] = v277[6];
    v238[0] = v277[0];
    v238[1] = v277[1];
    v238[3] = v277[3];
    v238[2] = v277[2];
    sub_1001AC934(&v228, v275, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v238, &qword_100375560, &qword_1002EF728);
    *(&v277[7] + 7) = v235;
    *(&v277[8] + 7) = v236;
    *(&v277[9] + 7) = v237[0];
    v277[10] = *(v237 + 9);
    *(&v277[3] + 7) = v231;
    *(&v277[4] + 7) = v232;
    *(&v277[5] + 7) = v233;
    *(&v277[6] + 7) = v234;
    *(v277 + 7) = v228;
    *(&v277[1] + 7) = v229;
    *(&v277[2] + 7) = v230;
    *&v241[113] = v277[7];
    *&v241[129] = v277[8];
    *&v241[145] = v277[9];
    *&v241[161] = *(v237 + 9);
    *&v241[49] = v277[3];
    *&v241[65] = v277[4];
    *&v241[81] = v277[5];
    *&v241[97] = v277[6];
    *&v241[1] = v277[0];
    *&v241[17] = v277[1];
    v240 = v34;
    v241[0] = v273[0];
    *&v241[33] = v277[2];
    v35 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B1A64(v32, v277);
    v250 = v277[8];
    v251[0] = v277[9];
    *(v251 + 9) = *(&v277[9] + 9);
    v246 = v277[4];
    v247 = v277[5];
    v249 = v277[7];
    v248 = v277[6];
    v242 = v277[0];
    v243 = v277[1];
    v245 = v277[3];
    v244 = v277[2];
    v252[8] = v277[8];
    v253[0] = v277[9];
    *(v253 + 9) = *(&v277[9] + 9);
    v252[4] = v277[4];
    v252[5] = v277[5];
    v252[7] = v277[7];
    v252[6] = v277[6];
    v252[0] = v277[0];
    v252[1] = v277[1];
    v252[3] = v277[3];
    v252[2] = v277[2];
    sub_1001AC934(&v242, v275, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v252, &qword_100375560, &qword_1002EF728);

    *(&v277[4] + 7) = v246;
    *(&v277[3] + 7) = v245;
    *(&v277[7] + 7) = v249;
    *(&v277[8] + 7) = v250;
    *(&v277[9] + 7) = v251[0];
    v277[10] = *(v251 + 9);
    *(&v277[5] + 7) = v247;
    *(&v277[6] + 7) = v248;
    *(v277 + 7) = v242;
    *(&v277[1] + 7) = v243;
    *(&v277[2] + 7) = v244;
    *&v255[113] = v277[7];
    *&v255[129] = v277[8];
    *&v255[145] = v277[9];
    *&v255[161] = *(v251 + 9);
    *&v255[49] = v277[3];
    *&v255[65] = v277[4];
    *&v255[81] = v277[5];
    *&v255[97] = v277[6];
    *&v255[1] = v277[0];
    *&v255[17] = v277[1];
    v254 = v35;
    v255[0] = v273[0];
    *&v255[33] = v277[2];
    LocalizedStringKey.init(stringLiteral:)();
    v36 = Text.init(_:tableName:bundle:comment:)();
    v38 = v37;
    v40 = v39;
    static Color.black.getter();
    v41 = Text.foregroundColor(_:)();
    v67 = v42;
    v68 = v41;
    v60 = v43;
    v69 = v44;

    sub_1001ACFEC(v36, v38, v40 & 1);

    v45 = static VerticalAlignment.center.getter();
    LOBYTE(v273[0]) = 1;
    sub_1001B2248(v70, v277);
    v258 = v277[2];
    v259 = v277[3];
    v260[0] = v277[4];
    *(v260 + 9) = *(&v277[4] + 9);
    v256 = v277[0];
    v257 = v277[1];
    *(v262 + 9) = *(&v277[4] + 9);
    v261[2] = v277[2];
    v261[3] = v277[3];
    v262[0] = v277[4];
    v261[0] = v277[0];
    v261[1] = v277[1];
    sub_1001AC934(&v256, v275, &qword_100375568, &qword_1002EF730);
    sub_1001AC99C(v261, &qword_100375568, &qword_1002EF730);
    *(&v277[1] + 7) = v257;
    *(v277 + 7) = v256;
    v277[5] = *(v260 + 9);
    *(&v277[4] + 7) = v260[0];
    *(&v277[3] + 7) = v259;
    *(&v277[2] + 7) = v258;
    *&v264[33] = v277[2];
    *&v264[49] = v277[3];
    *&v264[65] = v277[4];
    *&v264[81] = v277[5];
    *&v264[1] = v277[0];
    v263 = v45;
    v264[0] = v273[0];
    *&v264[17] = v277[1];
    v46 = v73;
    sub_1001AC934(v71, v73, &qword_100375550, &qword_1002EF718);
    v171[0] = v46;
    v47 = *(v75 + 16);
    v48 = v74;
    v49 = v78;
    v47();
    v168 = *&v185[144];
    v169 = *&v185[160];
    v170 = v185[176];
    v164 = *&v185[80];
    v165 = *&v185[96];
    v167 = *&v185[128];
    v166 = *&v185[112];
    v160 = *&v185[16];
    v161 = *&v185[32];
    v163 = *&v185[64];
    v162 = *&v185[48];
    v159 = *v185;
    v158 = v184;
    v171[1] = v48;
    v171[2] = &v158;
    v155 = *&v199[144];
    v156 = *&v199[160];
    v157 = v199[176];
    v151 = *&v199[80];
    v152 = *&v199[96];
    v154 = *&v199[128];
    v153 = *&v199[112];
    v147 = *&v199[16];
    v148 = *&v199[32];
    v150 = *&v199[64];
    v149 = *&v199[48];
    v146 = *v199;
    v145 = v198;
    v171[3] = &v145;
    v50 = v62;
    (v47)(v62, v77, v49);
    v142 = *&v213[144];
    v143 = *&v213[160];
    v144 = v213[176];
    v138 = *&v213[80];
    v139 = *&v213[96];
    v141 = *&v213[128];
    v140 = *&v213[112];
    v134 = *&v213[16];
    v135 = *&v213[32];
    v137 = *&v213[64];
    v136 = *&v213[48];
    v132 = v212;
    v133 = *v213;
    v171[4] = v50;
    v171[5] = &v132;
    v129 = *&v227[144];
    v130 = *&v227[160];
    v131 = v227[176];
    v125 = *&v227[80];
    v126 = *&v227[96];
    v127 = *&v227[112];
    v128 = *&v227[128];
    v121 = *&v227[16];
    v122 = *&v227[32];
    v123 = *&v227[48];
    v124 = *&v227[64];
    v119 = v226;
    v120 = *v227;
    v116 = *&v241[144];
    v117 = *&v241[160];
    v118 = v241[176];
    v112 = *&v241[80];
    v113 = *&v241[96];
    v114 = *&v241[112];
    v115 = *&v241[128];
    v108 = *&v241[16];
    v109 = *&v241[32];
    v110 = *&v241[48];
    v111 = *&v241[64];
    v106 = v240;
    v107 = *v241;
    v171[6] = &v119;
    v171[7] = &v106;
    v103 = *&v255[144];
    v104 = *&v255[160];
    v105 = v255[176];
    v99 = *&v255[80];
    v100 = *&v255[96];
    v101 = *&v255[112];
    v102 = *&v255[128];
    v95 = *&v255[16];
    v96 = *&v255[32];
    v97 = *&v255[48];
    v98 = *&v255[64];
    v93 = v254;
    v94 = *v255;
    v52 = v67;
    v51 = v68;
    v89 = v68;
    v90 = v67;
    v53 = v60 & 1;
    v91 = v60 & 1;
    LODWORD(v70) = v60 & 1;
    v92 = v69;
    v171[8] = &v93;
    v171[9] = &v89;
    v87 = 0;
    v88 = 1;
    v83 = *&v264[48];
    v84 = *&v264[64];
    v85 = *&v264[80];
    v86 = v264[96];
    v79 = v263;
    v80 = *v264;
    v81 = *&v264[16];
    v82 = *&v264[32];
    v171[10] = &v87;
    v171[11] = &v79;
    sub_1001ADD84(v171, v76);
    v265[4] = v83;
    v265[5] = v84;
    v265[6] = v85;
    v266 = v86;
    v265[0] = v79;
    v265[1] = v80;
    v265[2] = v81;
    v265[3] = v82;
    sub_1001AC934(&v184, v277, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v198, v277, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v212, v277, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v226, v277, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v240, v277, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v254, v277, &qword_100375570, &qword_1002EF738);
    sub_1001A5174(v51, v52, v53);

    sub_1001AC934(&v263, v277, &qword_100375578, &qword_1002EF740);
    sub_1001AC99C(v265, &qword_100375578, &qword_1002EF740);
    sub_1001ACFEC(v89, v90, v91);

    v267[10] = v103;
    v267[11] = v104;
    v268 = v105;
    v267[6] = v99;
    v267[7] = v100;
    v267[9] = v102;
    v267[8] = v101;
    v267[2] = v95;
    v267[3] = v96;
    v267[5] = v98;
    v267[4] = v97;
    v267[1] = v94;
    v267[0] = v93;
    sub_1001AC99C(v267, &qword_100375570, &qword_1002EF738);
    v269[10] = v116;
    v269[11] = v117;
    v270 = v118;
    v269[6] = v112;
    v269[7] = v113;
    v269[9] = v115;
    v269[8] = v114;
    v269[2] = v108;
    v269[3] = v109;
    v269[5] = v111;
    v269[4] = v110;
    v269[1] = v107;
    v269[0] = v106;
    sub_1001AC99C(v269, &qword_100375570, &qword_1002EF738);
    v271[10] = v129;
    v271[11] = v130;
    v272 = v131;
    v271[6] = v125;
    v271[7] = v126;
    v271[9] = v128;
    v271[8] = v127;
    v271[2] = v121;
    v271[3] = v122;
    v271[5] = v124;
    v271[4] = v123;
    v271[1] = v120;
    v271[0] = v119;
    sub_1001AC99C(v271, &qword_100375570, &qword_1002EF738);
    v273[10] = v142;
    v273[11] = v143;
    v274 = v144;
    v273[6] = v138;
    v273[7] = v139;
    v273[9] = v141;
    v273[8] = v140;
    v273[2] = v134;
    v273[3] = v135;
    v273[5] = v137;
    v273[4] = v136;
    v273[1] = v133;
    v273[0] = v132;
    sub_1001AC99C(v273, &qword_100375570, &qword_1002EF738);
    v54 = *(v75 + 8);
    v55 = v78;
    v54(v50, v78);
    v275[10] = v155;
    v275[11] = v156;
    v276 = v157;
    v275[6] = v151;
    v275[7] = v152;
    v275[9] = v154;
    v275[8] = v153;
    v275[2] = v147;
    v275[3] = v148;
    v275[5] = v150;
    v275[4] = v149;
    v275[1] = v146;
    v275[0] = v145;
    sub_1001AC99C(v275, &qword_100375570, &qword_1002EF738);
    v277[10] = v168;
    v277[11] = v169;
    v278 = v170;
    v277[6] = v164;
    v277[7] = v165;
    v277[9] = v167;
    v277[8] = v166;
    v277[2] = v160;
    v277[3] = v161;
    v277[5] = v163;
    v277[4] = v162;
    v277[1] = v159;
    v277[0] = v158;
    sub_1001AC99C(v277, &qword_100375570, &qword_1002EF738);
    v54(v74, v55);
    sub_1001AC99C(v73, &qword_100375550, &qword_1002EF718);
    v56 = v76;
    sub_1001AC934(v76, v65, &qword_100375548, &qword_1002EF710);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100375580, &qword_1002EF748);
    sub_1001AD0C8(&qword_100375588, &qword_100375548, &qword_1002EF710, &protocol conformance descriptor for TupleView<A>);
    sub_1001B4FD4();
    _ConditionalContent<>.init(storage:)();

    sub_1001AC99C(&v263, &qword_100375578, &qword_1002EF740);
    sub_1001ACFEC(v68, v67, v70);

    sub_1001AC99C(&v254, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v240, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v226, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v212, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v198, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v184, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(v56, &qword_100375548, &qword_1002EF710);
    v57 = v78;
    v54(v77, v78);
    v54(v72, v57);
    return sub_1001AC99C(v71, &qword_100375550, &qword_1002EF718);
  }

  else
  {
    type metadata accessor for FTMAllMetricsModel(0);
    sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AFB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = type metadata accessor for FTMCellMonitorBookmarkedSheetView(0);
  v47 = *(v3 - 8);
  v46 = *(v47 + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_1003755C8, &unk_1002EF780);
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v41 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  static Color.black.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;

  sub_1001ACFEC(v9, v11, v13 & 1);

  static Font.headline.getter();
  v42 = Text.font(_:)();
  v41 = v19;
  v43 = v20;
  v44 = v21;

  sub_1001ACFEC(v14, v16, v18 & 1);

  v22 = LocalizedStringKey.init(stringLiteral:)();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;
  v28 = v45;
  sub_1001B50A8(v48, v45);
  v29 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v30 = swift_allocObject();
  sub_1001B5228(v28, v30 + v29);
  v53 = v22;
  v54 = v24;
  v55 = v14 & 1;
  v56 = v27;
  v57 = 0xD000000000000011;
  v58 = 0x80000001002BAAA0;
  sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790, &protocol conformance descriptor for Label<A, B>);
  v31 = v52;
  Button.init(action:label:)();

  v33 = v49;
  v32 = v50;
  v34 = *(v50 + 16);
  v35 = v51;
  v34(v49, v31, v51);
  *a2 = 0;
  *(a2 + 8) = 1;
  v36 = v42;
  v37 = v41;
  *(a2 + 16) = v42;
  *(a2 + 24) = v37;
  LOBYTE(v31) = v43 & 1;
  *(a2 + 32) = v43 & 1;
  *(a2 + 40) = v44;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v38 = sub_1001A551C(&qword_1003755D8, &qword_1002EF798);
  v34((a2 + *(v38 + 80)), v33, v35);
  sub_1001A5174(v36, v37, v31);
  v39 = *(v32 + 8);

  v39(v52, v35);
  v39(v33, v35);
  sub_1001ACFEC(v36, v37, v31);
}

uint64_t sub_1001AFF98(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FTMCellMonitorBookmarkedSheetView(0);
  sub_1001AC934(a1 + *(v12 + 20), v7, &qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001B0220@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v43 = v9;
  v44 = v8;
  v11 = v10;
  v45 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  v42 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v5) = v11 & 1;
  sub_1001A56A0();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static Color.gray.getter();
  v40 = Text.foregroundColor(_:)();
  v41 = v26;
  v28 = v27;
  v30 = v29;

  sub_1001ACFEC(v21, v23, v25 & 1);

  LOBYTE(v23) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  DWORD1(v53) = *&v49[3];
  *(&v53 + 1) = *v49;
  DWORD1(v56) = *&v48[3];
  *(&v56 + 1) = *v48;
  DWORD1(v57) = *&v47[3];
  *(&v57 + 1) = *v47;
  LOBYTE(v74[0]) = 0;
  *&v51 = v44;
  *(&v51 + 1) = v43;
  LOBYTE(v52) = v5;
  *(&v52 + 1) = v45;
  LOBYTE(v53) = v42;
  *(&v53 + 1) = v14;
  *v54 = v16;
  *&v54[8] = v18;
  *&v54[16] = v20;
  v54[24] = 0;
  *(v62 + 9) = *&v54[9];
  v61 = v53;
  v62[0] = *v54;
  v59 = v51;
  v60 = v52;
  *&v55 = v40;
  *(&v55 + 1) = v28;
  LOBYTE(v56) = v30 & 1;
  *(&v56 + 1) = v41;
  LOBYTE(v57) = v23;
  *(&v57 + 1) = v31;
  *v58 = v32;
  *&v58[8] = v33;
  *&v58[16] = v34;
  v58[24] = 0;
  *&v46[7] = v55;
  *&v46[64] = *&v58[9];
  *&v46[55] = *v58;
  *&v46[39] = v57;
  *&v46[23] = v56;
  v35 = v51;
  v36 = v52;
  v37 = v62[1];
  *(a2 + 48) = *v54;
  *(a2 + 64) = v37;
  v38 = v61;
  *(a2 + 16) = v36;
  *(a2 + 32) = v38;
  *a2 = v35;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v46;
  *(a2 + 153) = *&v46[64];
  *(a2 + 137) = *&v46[48];
  *(a2 + 121) = *&v46[32];
  *(a2 + 105) = *&v46[16];
  v63[0] = v40;
  v63[1] = v28;
  v64 = v30 & 1;
  *&v65[3] = *&v48[3];
  *v65 = *v48;
  v66 = v41;
  v67 = v23;
  *&v68[3] = *&v47[3];
  *v68 = *v47;
  v69 = v31;
  v70 = v32;
  v71 = v33;
  v72 = v34;
  v73 = 0;
  sub_1001AC934(&v51, v74, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v55, v74, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v63, &qword_1003755C0, &qword_1002F1E70);
  v74[0] = v44;
  v74[1] = v43;
  v75 = v5;
  *v76 = *v50;
  *&v76[3] = *&v50[3];
  v77 = v45;
  v78 = v42;
  *v79 = *v49;
  *&v79[3] = *&v49[3];
  v80 = v14;
  v81 = v16;
  v82 = v18;
  v83 = v20;
  v84 = 0;
  return sub_1001AC99C(v74, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B05E0@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Color.blue.getter();
  v9 = Text.foregroundColor(_:)();
  v47 = v10;
  v48 = v9;
  v12 = v11;
  v49 = v13;

  sub_1001ACFEC(v4, v6, v8 & 1);

  v46 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v12 & 1;
  sub_1001A56A0();

  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  static Color.gray.getter();
  v28 = Text.foregroundColor(_:)();
  v43 = v29;
  v44 = v28;
  v31 = v30;
  v45 = v32;

  sub_1001ACFEC(v23, v25, v27 & 1);

  v33 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *(&v56 + 1) = *v54;
  DWORD1(v56) = *&v54[3];
  DWORD1(v57) = *&v53[3];
  *(&v57 + 1) = *v53;
  DWORD1(v60) = *&v52[3];
  *(&v60 + 1) = *v52;
  DWORD1(v61) = *&v51[3];
  *(&v61 + 1) = *v51;
  LOBYTE(v78[0]) = 0;
  *&v55 = v48;
  *(&v55 + 1) = v47;
  LOBYTE(v56) = v22;
  *(&v56 + 1) = v49;
  LOBYTE(v57) = v46;
  *(&v57 + 1) = v15;
  *v58 = v17;
  *&v58[8] = v19;
  *&v58[16] = v21;
  v58[24] = 0;
  *(v66 + 9) = *&v58[9];
  v65 = v57;
  v66[0] = *v58;
  v63 = v55;
  v64 = v56;
  *&v59 = v44;
  *(&v59 + 1) = v43;
  LOBYTE(v60) = v31 & 1;
  *(&v60 + 1) = v45;
  LOBYTE(v61) = v33;
  *(&v61 + 1) = v34;
  *v62 = v35;
  *&v62[8] = v36;
  *&v62[16] = v37;
  v62[24] = 0;
  *&v50[7] = v59;
  *&v50[64] = *&v62[9];
  *&v50[55] = *v62;
  *&v50[39] = v61;
  *&v50[23] = v60;
  v38 = v55;
  v39 = v56;
  v40 = v66[1];
  *(a3 + 48) = *v58;
  *(a3 + 64) = v40;
  v41 = v65;
  *(a3 + 16) = v39;
  *(a3 + 32) = v41;
  *a3 = v38;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 89) = *v50;
  *(a3 + 153) = *&v50[64];
  *(a3 + 137) = *&v50[48];
  *(a3 + 121) = *&v50[32];
  *(a3 + 105) = *&v50[16];
  v67[0] = v44;
  v67[1] = v43;
  v68 = v31 & 1;
  *&v69[3] = *&v52[3];
  *v69 = *v52;
  v70 = v45;
  v71 = v33;
  *&v72[3] = *&v51[3];
  *v72 = *v51;
  v73 = v34;
  v74 = v35;
  v75 = v36;
  v76 = v37;
  v77 = 0;
  sub_1001AC934(&v55, v78, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v59, v78, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v67, &qword_1003755C0, &qword_1002F1E70);
  v78[0] = v48;
  v78[1] = v47;
  v79 = v22;
  *v80 = *v54;
  *&v80[3] = *&v54[3];
  v81 = v49;
  v82 = v46;
  *v83 = *v53;
  *&v83[3] = *&v53[3];
  v84 = v15;
  v85 = v17;
  v86 = v19;
  v87 = v21;
  v88 = 0;
  return sub_1001AC99C(v78, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B09A0@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v43 = v9;
  v44 = v8;
  v11 = v10;
  v45 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  v42 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v5) = v11 & 1;
  sub_1001A56A0();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static Color.gray.getter();
  v40 = Text.foregroundColor(_:)();
  v41 = v26;
  v28 = v27;
  v30 = v29;

  sub_1001ACFEC(v21, v23, v25 & 1);

  LOBYTE(v23) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  DWORD1(v53) = *&v49[3];
  *(&v53 + 1) = *v49;
  DWORD1(v56) = *&v48[3];
  *(&v56 + 1) = *v48;
  DWORD1(v57) = *&v47[3];
  *(&v57 + 1) = *v47;
  LOBYTE(v74[0]) = 0;
  *&v51 = v44;
  *(&v51 + 1) = v43;
  LOBYTE(v52) = v5;
  *(&v52 + 1) = v45;
  LOBYTE(v53) = v42;
  *(&v53 + 1) = v14;
  *v54 = v16;
  *&v54[8] = v18;
  *&v54[16] = v20;
  v54[24] = 0;
  *(v62 + 9) = *&v54[9];
  v61 = v53;
  v62[0] = *v54;
  v59 = v51;
  v60 = v52;
  *&v55 = v40;
  *(&v55 + 1) = v28;
  LOBYTE(v56) = v30 & 1;
  *(&v56 + 1) = v41;
  LOBYTE(v57) = v23;
  *(&v57 + 1) = v31;
  *v58 = v32;
  *&v58[8] = v33;
  *&v58[16] = v34;
  v58[24] = 0;
  *&v46[7] = v55;
  *&v46[64] = *&v58[9];
  *&v46[55] = *v58;
  *&v46[39] = v57;
  *&v46[23] = v56;
  v35 = v51;
  v36 = v52;
  v37 = v62[1];
  *(a2 + 48) = *v54;
  *(a2 + 64) = v37;
  v38 = v61;
  *(a2 + 16) = v36;
  *(a2 + 32) = v38;
  *a2 = v35;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v46;
  *(a2 + 153) = *&v46[64];
  *(a2 + 137) = *&v46[48];
  *(a2 + 121) = *&v46[32];
  *(a2 + 105) = *&v46[16];
  v63[0] = v40;
  v63[1] = v28;
  v64 = v30 & 1;
  *&v65[3] = *&v48[3];
  *v65 = *v48;
  v66 = v41;
  v67 = v23;
  *&v68[3] = *&v47[3];
  *v68 = *v47;
  v69 = v31;
  v70 = v32;
  v71 = v33;
  v72 = v34;
  v73 = 0;
  sub_1001AC934(&v51, v74, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v55, v74, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v63, &qword_1003755C0, &qword_1002F1E70);
  v74[0] = v44;
  v74[1] = v43;
  v75 = v5;
  *v76 = *v50;
  *&v76[3] = *&v50[3];
  v77 = v45;
  v78 = v42;
  *v79 = *v49;
  *&v79[3] = *&v49[3];
  v80 = v14;
  v81 = v16;
  v82 = v18;
  v83 = v20;
  v84 = 0;
  return sub_1001AC99C(v74, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B0D5C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v63 = v9;
  v64 = v8;
  v11 = v10;
  v66 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  v62 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v68 = v11 & 1;
  LOBYTE(v82) = v11 & 1;
  LOBYTE(v97[0]) = 0;
  if (a1 >> 62)
  {
LABEL_35:
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_36:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v71 = a1 & 0xFFFFFFFFFFFFFF8;
  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_3:
  v22 = 0;
  v70 = a1 & 0xC000000000000001;
  v23 = _swiftEmptyArrayStorage;
  v69 = a1;
  do
  {
    v67 = v23;
    v24 = v22;
    while (1)
    {
      if (v70)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v26;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v24 >= *(v71 + 16))
        {
          goto LABEL_34;
        }

        v25 = *(a1 + 8 * v24 + 32);

        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v28 = *(v25 + 128);
      v27 = *(v25 + 136);
      v97[0] = 0;
      __chkstk_darwin(v26);
      if ((v27 & 0x1000000000000000) == 0)
      {
        if ((v27 & 0x2000000000000000) != 0)
        {
          *&v82 = v28;
          *(&v82 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;

          if (v28 >= 0x21u || ((0x100003E01uLL >> v28) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
LABEL_18:
              LOBYTE(v86[0]) = *v30 == 0;
              goto LABEL_20;
            }
          }

          goto LABEL_19;
        }

        if ((v28 & 0x1000000000000000) != 0)
        {
          v29 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v29 >= 0x21 || ((0x100003E01uLL >> v29) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          LOBYTE(v86[0]) = 0;
          goto LABEL_20;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_20:

      if (v86[0])
      {
        break;
      }

      ++v24;
      a1 = v69;
      if (v22 == v21)
      {
        v23 = v67;
        goto LABEL_37;
      }
    }

    v31 = v97[0];
    v32 = v67;
    a1 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1002249D0(0, *(v67 + 2) + 1, 1, v67);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v32;
    if (v34 >= v33 >> 1)
    {
      v35 = sub_1002249D0((v33 > 1), v34 + 1, 1, v32);
    }

    v23 = v35;
    *(v35 + 2) = v34 + 1;
    *&v35[8 * v34 + 32] = v31;
  }

  while (v22 != v21);
LABEL_37:
  v36 = *(v23 + 2);
  if (v36)
  {
    v37 = v23[4];
    v38 = v36 - 1;
    if (v38)
    {
      v39 = v23 + 5;
      do
      {
        v40 = *v39++;
        v41 = v40;
        if (v40 < v37)
        {
          v37 = v41;
        }

        --v38;
      }

      while (v38);
    }
  }

  Double.description.getter();
  sub_1001A56A0();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Color.gray.getter();
  v47 = Text.foregroundColor(_:)();
  v49 = v48;
  v51 = v50;
  v72 = v52;

  sub_1001ACFEC(v42, v44, v46 & 1);

  LOBYTE(v42) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v111 = v51 & 1;
  v108 = 0;
  *&v74 = v64;
  *(&v74 + 1) = v63;
  LOBYTE(v75) = v68;
  *(&v75 + 1) = v113[0];
  DWORD1(v75) = *(v113 + 3);
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v62;
  DWORD1(v76) = *&v112[3];
  *(&v76 + 1) = *v112;
  *(&v76 + 1) = v14;
  *&v77[0] = v16;
  *(&v77[0] + 1) = v18;
  *&v77[1] = v20;
  BYTE8(v77[1]) = 0;
  *(v85 + 9) = *(v77 + 9);
  v84 = v76;
  v85[0] = v77[0];
  v82 = v74;
  v83 = v75;
  *&v78 = v47;
  *(&v78 + 1) = v49;
  LOBYTE(v79) = v51 & 1;
  DWORD1(v79) = *&v110[3];
  *(&v79 + 1) = *v110;
  *(&v79 + 1) = v72;
  LOBYTE(v80) = v42;
  DWORD1(v80) = *&v109[3];
  *(&v80 + 1) = *v109;
  *(&v80 + 1) = v53;
  *&v81[0] = v54;
  *(&v81[0] + 1) = v55;
  *&v81[1] = v56;
  BYTE8(v81[1]) = 0;
  *&v73[7] = v78;
  *&v73[64] = *(v81 + 9);
  *&v73[55] = v81[0];
  *&v73[39] = v80;
  *&v73[23] = v79;
  v57 = v74;
  v58 = v75;
  v59 = v85[1];
  *(a2 + 48) = v77[0];
  *(a2 + 64) = v59;
  v60 = v84;
  *(a2 + 16) = v58;
  *(a2 + 32) = v60;
  *a2 = v57;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v73;
  *(a2 + 153) = *&v73[64];
  *(a2 + 137) = *&v73[48];
  *(a2 + 121) = *&v73[32];
  *(a2 + 105) = *&v73[16];
  v86[0] = v47;
  v86[1] = v49;
  v87 = v51 & 1;
  *&v88[3] = *&v110[3];
  *v88 = *v110;
  v89 = v72;
  v90 = v42;
  *&v91[3] = *&v109[3];
  *v91 = *v109;
  v92 = v53;
  v93 = v54;
  v94 = v55;
  v95 = v56;
  v96 = 0;
  sub_1001AC934(&v74, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v78, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v86, &qword_1003755C0, &qword_1002F1E70);
  v97[0] = v64;
  v97[1] = v63;
  v98 = v68;
  *v99 = v113[0];
  *&v99[3] = *(v113 + 3);
  v100 = v66;
  v101 = v62;
  *v102 = *v112;
  *&v102[3] = *&v112[3];
  v103 = v14;
  v104 = v16;
  v105 = v18;
  v106 = v20;
  v107 = 0;
  return sub_1001AC99C(v97, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B13E0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v63 = v9;
  v64 = v8;
  v11 = v10;
  v66 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  v62 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v68 = v11 & 1;
  LOBYTE(v82) = v11 & 1;
  LOBYTE(v97[0]) = 0;
  if (a1 >> 62)
  {
LABEL_35:
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_36:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v71 = a1 & 0xFFFFFFFFFFFFFF8;
  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_3:
  v22 = 0;
  v70 = a1 & 0xC000000000000001;
  v23 = _swiftEmptyArrayStorage;
  v69 = a1;
  do
  {
    v67 = v23;
    v24 = v22;
    while (1)
    {
      if (v70)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v26;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v24 >= *(v71 + 16))
        {
          goto LABEL_34;
        }

        v25 = *(a1 + 8 * v24 + 32);

        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v28 = *(v25 + 128);
      v27 = *(v25 + 136);
      v97[0] = 0;
      __chkstk_darwin(v26);
      if ((v27 & 0x1000000000000000) == 0)
      {
        if ((v27 & 0x2000000000000000) != 0)
        {
          *&v82 = v28;
          *(&v82 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;

          if (v28 >= 0x21u || ((0x100003E01uLL >> v28) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
LABEL_18:
              LOBYTE(v86[0]) = *v30 == 0;
              goto LABEL_20;
            }
          }

          goto LABEL_19;
        }

        if ((v28 & 0x1000000000000000) != 0)
        {
          v29 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v29 >= 0x21 || ((0x100003E01uLL >> v29) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          LOBYTE(v86[0]) = 0;
          goto LABEL_20;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_20:

      if (v86[0])
      {
        break;
      }

      ++v24;
      a1 = v69;
      if (v22 == v21)
      {
        v23 = v67;
        goto LABEL_37;
      }
    }

    v31 = v97[0];
    v32 = v67;
    a1 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1002249D0(0, *(v67 + 2) + 1, 1, v67);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v32;
    if (v34 >= v33 >> 1)
    {
      v35 = sub_1002249D0((v33 > 1), v34 + 1, 1, v32);
    }

    v23 = v35;
    *(v35 + 2) = v34 + 1;
    *&v35[8 * v34 + 32] = v31;
  }

  while (v22 != v21);
LABEL_37:
  v36 = *(v23 + 2);
  if (v36)
  {
    v37 = v23[4];
    v38 = v36 - 1;
    if (v38)
    {
      v39 = v23 + 5;
      do
      {
        v40 = *v39++;
        v41 = v40;
        if (v37 < v40)
        {
          v37 = v41;
        }

        --v38;
      }

      while (v38);
    }
  }

  Double.description.getter();
  sub_1001A56A0();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Color.gray.getter();
  v47 = Text.foregroundColor(_:)();
  v49 = v48;
  v51 = v50;
  v72 = v52;

  sub_1001ACFEC(v42, v44, v46 & 1);

  LOBYTE(v42) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v111 = v51 & 1;
  v108 = 0;
  *&v74 = v64;
  *(&v74 + 1) = v63;
  LOBYTE(v75) = v68;
  *(&v75 + 1) = v113[0];
  DWORD1(v75) = *(v113 + 3);
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v62;
  DWORD1(v76) = *&v112[3];
  *(&v76 + 1) = *v112;
  *(&v76 + 1) = v14;
  *&v77[0] = v16;
  *(&v77[0] + 1) = v18;
  *&v77[1] = v20;
  BYTE8(v77[1]) = 0;
  *(v85 + 9) = *(v77 + 9);
  v84 = v76;
  v85[0] = v77[0];
  v82 = v74;
  v83 = v75;
  *&v78 = v47;
  *(&v78 + 1) = v49;
  LOBYTE(v79) = v51 & 1;
  DWORD1(v79) = *&v110[3];
  *(&v79 + 1) = *v110;
  *(&v79 + 1) = v72;
  LOBYTE(v80) = v42;
  DWORD1(v80) = *&v109[3];
  *(&v80 + 1) = *v109;
  *(&v80 + 1) = v53;
  *&v81[0] = v54;
  *(&v81[0] + 1) = v55;
  *&v81[1] = v56;
  BYTE8(v81[1]) = 0;
  *&v73[7] = v78;
  *&v73[64] = *(v81 + 9);
  *&v73[55] = v81[0];
  *&v73[39] = v80;
  *&v73[23] = v79;
  v57 = v74;
  v58 = v75;
  v59 = v85[1];
  *(a2 + 48) = v77[0];
  *(a2 + 64) = v59;
  v60 = v84;
  *(a2 + 16) = v58;
  *(a2 + 32) = v60;
  *a2 = v57;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v73;
  *(a2 + 153) = *&v73[64];
  *(a2 + 137) = *&v73[48];
  *(a2 + 121) = *&v73[32];
  *(a2 + 105) = *&v73[16];
  v86[0] = v47;
  v86[1] = v49;
  v87 = v51 & 1;
  *&v88[3] = *&v110[3];
  *v88 = *v110;
  v89 = v72;
  v90 = v42;
  *&v91[3] = *&v109[3];
  *v91 = *v109;
  v92 = v53;
  v93 = v54;
  v94 = v55;
  v95 = v56;
  v96 = 0;
  sub_1001AC934(&v74, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v78, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v86, &qword_1003755C0, &qword_1002F1E70);
  v97[0] = v64;
  v97[1] = v63;
  v98 = v68;
  *v99 = v113[0];
  *&v99[3] = *(v113 + 3);
  v100 = v66;
  v101 = v62;
  *v102 = *v112;
  *&v102[3] = *&v112[3];
  v103 = v14;
  v104 = v16;
  v105 = v18;
  v106 = v20;
  v107 = 0;
  return sub_1001AC99C(v97, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B1A64@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v75 = v9;
  v11 = v10;
  v13 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  LOBYTE(v5) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11 & 1;
  v23 = a1;
  v73 = v22;
  LOBYTE(v94) = v22;
  LOBYTE(v109[0]) = 0;
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002EED40;
  v78 = v13;
  v76 = v8;
  v74 = v5;
  if (a1 >> 62)
  {
LABEL_41:
    v83 = v23 & 0xFFFFFFFFFFFFFF8;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    if (v41 >= 1)
    {
      v42 = v41;
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v72 = v42;
      if (!v25)
      {
        v79 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }

      goto LABEL_4;
    }

LABEL_47:
    v46 = 0.0;
    goto LABEL_55;
  }

  v83 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = v25;
LABEL_4:
  v26 = 0;
  v81 = v23 & 0xC000000000000001;
  v79 = _swiftEmptyArrayStorage;
  v80 = v25;
  v71 = v24;
  do
  {
    v24 = v26;
    while (1)
    {
      if (v81)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v28;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v24 >= *(v83 + 16))
        {
          goto LABEL_40;
        }

        v27 = *(v23 + 8 * v24 + 32);

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v29 = v23;
      v30 = *(v27 + 128);
      v31 = *(v27 + 136);
      v109[0] = 0;
      __chkstk_darwin(v28);
      if ((v31 & 0x1000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if ((v31 & 0x2000000000000000) == 0)
      {
        if ((v30 & 0x1000000000000000) != 0)
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          v34 = (v32 >= 0x21 || ((0x100003E01uLL >> v32) & 1) == 0) && (v33 = _swift_stdlib_strtod_clocale()) != 0 && *v33 == 0;
          v23 = v29;
          LOBYTE(v98[0]) = v34;
        }

        else
        {
LABEL_29:

          _StringGuts._slowWithCString<A>(_:)();
        }

        v37 = v80;
        goto LABEL_26;
      }

      *&v94 = v30;
      *(&v94 + 1) = v31 & 0xFFFFFFFFFFFFFFLL;

      if (v30 < 0x21u && ((0x100003E01uLL >> v30) & 1) != 0)
      {
        v35 = 0;
      }

      else
      {
        v36 = _swift_stdlib_strtod_clocale();
        v35 = v36 && *v36 == 0;
      }

      v37 = v80;
      LOBYTE(v98[0]) = v35;

LABEL_26:
      if (v98[0])
      {
        break;
      }

      ++v24;
      if (v26 == v37)
      {
        v24 = v71;
        goto LABEL_44;
      }
    }

    v38 = v109[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1002249D0(0, *(v79 + 2) + 1, 1, v79);
    }

    v24 = v71;
    v40 = *(v79 + 2);
    v39 = *(v79 + 3);
    if (v40 >= v39 >> 1)
    {
      v79 = sub_1002249D0((v39 > 1), v40 + 1, 1, v79);
    }

    *(v79 + 2) = v40 + 1;
    *&v79[8 * v40 + 32] = v38;
  }

  while (v26 != v37);
LABEL_44:
  v43 = *(v79 + 2);
  if (v43)
  {
    if (v43 <= 3)
    {
      v44 = 0;
      v45 = 0.0;
      goto LABEL_52;
    }

    v44 = v43 & 0x7FFFFFFFFFFFFFFCLL;
    v47 = (v79 + 48);
    v45 = 0.0;
    v48 = v43 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = v45 + *(v47 - 2) + *(v47 - 1) + *v47 + v47[1];
      v47 += 4;
      v48 -= 4;
    }

    while (v48);
    if (v43 != v44)
    {
LABEL_52:
      v49 = v43 - v44;
      v50 = &v79[8 * v44 + 32];
      do
      {
        v51 = *v50++;
        v45 = v45 + v51;
        --v49;
      }

      while (v49);
    }
  }

  else
  {
    v45 = 0.0;
  }

  v46 = v45 / v72;
LABEL_55:
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v46;
  String.init(format:_:)();
  sub_1001A56A0();
  v52 = Text.init<A>(_:)();
  v54 = v53;
  v56 = v55;
  static Color.gray.getter();
  v57 = Text.foregroundColor(_:)();
  v82 = v58;
  v84 = v59;
  v61 = v60;

  sub_1001ACFEC(v52, v54, v56 & 1);

  LOBYTE(v52) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v123 = v61 & 1;
  v120 = 0;
  *&v86 = v76;
  *(&v86 + 1) = v75;
  LOBYTE(v87) = v73;
  *(&v87 + 1) = v125[0];
  DWORD1(v87) = *(v125 + 3);
  *(&v87 + 1) = v78;
  LOBYTE(v88) = v74;
  DWORD1(v88) = *&v124[3];
  *(&v88 + 1) = *v124;
  *(&v88 + 1) = v15;
  *&v89[0] = v17;
  *(&v89[0] + 1) = v19;
  *&v89[1] = v21;
  BYTE8(v89[1]) = 0;
  *(v97 + 9) = *(v89 + 9);
  v96 = v88;
  v97[0] = v89[0];
  v94 = v86;
  v95 = v87;
  *&v90 = v57;
  *(&v90 + 1) = v82;
  LOBYTE(v91) = v61 & 1;
  DWORD1(v91) = *&v122[3];
  *(&v91 + 1) = *v122;
  *(&v91 + 1) = v84;
  LOBYTE(v92) = v52;
  DWORD1(v92) = *&v121[3];
  *(&v92 + 1) = *v121;
  *(&v92 + 1) = v62;
  *&v93[0] = v63;
  *(&v93[0] + 1) = v64;
  *&v93[1] = v65;
  BYTE8(v93[1]) = 0;
  *&v85[7] = v90;
  *&v85[64] = *(v93 + 9);
  *&v85[55] = v93[0];
  *&v85[39] = v92;
  *&v85[23] = v91;
  v66 = v86;
  v67 = v87;
  v68 = v97[1];
  *(a2 + 48) = v89[0];
  *(a2 + 64) = v68;
  v69 = v96;
  *(a2 + 16) = v67;
  *(a2 + 32) = v69;
  *a2 = v66;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v85;
  *(a2 + 153) = *&v85[64];
  *(a2 + 137) = *&v85[48];
  *(a2 + 121) = *&v85[32];
  *(a2 + 105) = *&v85[16];
  v98[0] = v57;
  v98[1] = v82;
  v99 = v61 & 1;
  *&v100[3] = *&v122[3];
  *v100 = *v122;
  v101 = v84;
  v102 = v52;
  *&v103[3] = *&v121[3];
  *v103 = *v121;
  v104 = v62;
  v105 = v63;
  v106 = v64;
  v107 = v65;
  v108 = 0;
  sub_1001AC934(&v86, v109, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v90, v109, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v98, &qword_1003755C0, &qword_1002F1E70);
  v109[0] = v76;
  v109[1] = v75;
  v110 = v73;
  *v111 = v125[0];
  *&v111[3] = *(v125 + 3);
  v112 = v78;
  v113 = v74;
  *v114 = *v124;
  *&v114[3] = *&v124[3];
  v115 = v15;
  v116 = v17;
  v117 = v19;
  v118 = v21;
  v119 = 0;
  return sub_1001AC99C(v109, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B2248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FTMAllMetricsModel(0);
  sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
  v4 = EnvironmentObject.init()();
  v14 = v5;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1001A551C(&qword_1003755B0, &qword_1002EF760);
  State.init(wrappedValue:)();
  v6 = *a1;
  if (*a1)
  {
    v7 = v22;
    v8 = v23;

    v9 = static ObservableObject.environmentStore.getter();
    v17 = 1;
    *&v18 = v4;
    *(&v18 + 1) = v14;
    v19 = v22;
    v20 = v23;
    *&v21 = v9;
    *(&v21 + 1) = v6;
    *&v16[7] = v18;
    *&v16[23] = v22;
    *&v16[39] = v23;
    *&v16[55] = v21;
    v15[64] = 1;
    *a2 = 0;
    *(a2 + 8) = 1;
    v10 = *&v16[16];
    *(a2 + 9) = *v16;
    v11 = *&v16[32];
    v12 = *&v16[48];
    *(a2 + 72) = *&v16[63];
    *(a2 + 80) = 0;
    *(a2 + 57) = v12;
    *(a2 + 41) = v11;
    *(a2 + 25) = v10;
    *(a2 + 88) = 1;
    *&v22 = v4;
    *(&v22 + 1) = v14;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v6;
    sub_1001AC934(&v18, v15, &qword_1003755B8, &qword_1002EF768);
    return sub_1001AC99C(&v22, &qword_1003755B8, &qword_1002EF768);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B240C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1001A551C(&qword_1003755F0, &qword_1002EF840);
  __chkstk_darwin(v3 - 8);
  v67 = &v66 - v4;
  v5 = sub_1001A551C(&qword_1003755F8, &qword_1002EF848);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v66 - v7;
  v9 = sub_1001A551C(&qword_100375600, &qword_1002EF850);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - v11;
  if (qword_100375020 != -1)
  {
    goto LABEL_88;
  }

LABEL_2:
  v12 = qword_100382508;
  v13 = *v1;
  if (!*v1)
  {
    goto LABEL_91;
  }

  v14 = qword_100382508;

  v16 = sub_10021A754(v15);

  v77 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v13;
  v74 = v8;
  v66 = v6;
  v75 = v1;
  v68 = v5;
  v70 = v10;
  v71 = v9;
  v72 = a1;
  v78 = v16;
  v18 = v16 & 0xC000000000000001;
  if (!v17)
  {
    v9 = 0;
    v20 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage[2];
    if (v28)
    {
      goto LABEL_36;
    }

LABEL_79:
    v29 = 0.0;

    if (v17)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

  v19 = 0;
  v9 = 0;
  v20 = _swiftEmptyArrayStorage;
LABEL_7:
  v76 = v20;
  v10 = v19;
  do
  {
    if (v18)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v21;
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v10 >= *(v77 + 16))
      {
        goto LABEL_85;
      }

      v5 = *(v78 + 8 * v10 + 32);

      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        swift_once();
        goto LABEL_2;
      }
    }

    a1 = &v66;
    v1 = *(v5 + 128);
    v6 = *(v5 + 136);
    *&v87 = 0;
    __chkstk_darwin(v21);
    v8 = (&v66 - 4);
    *(&v66 - 2) = &v87;
    if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v79 = v1;
        v80 = v6 & 0xFFFFFFFFFFFFFFLL;
        v8 = v1;

        if (v1 >= 0x21u || ((0x100003E01uLL >> v1) & 1) == 0)
        {
          v22 = _swift_stdlib_strtod_clocale();
          if (v22)
          {
LABEL_21:
            LOBYTE(v83) = *v22 == 0;
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v1 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v8 >= 0x21 || ((0x100003E01uLL >> v8) & 1) == 0)
        {
          v22 = _swift_stdlib_strtod_clocale();
          if (v22)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        LOBYTE(v83) = 0;
        goto LABEL_23;
      }
    }

    _StringGuts._slowWithCString<A>(_:)();
LABEL_23:

    if (LOBYTE(v83))
    {
      v23 = v87;
      v24 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1002249D0(0, *(v24 + 2) + 1, 1, v24);
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      v27 = v24;
      v1 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v27 = sub_1002249D0((v25 > 1), v26 + 1, 1, v27);
      }

      v20 = v27;
      *(v27 + 2) = v1;
      *&v27[8 * v26 + 32] = v23;
      if (v19 == v17)
      {
        goto LABEL_35;
      }

      goto LABEL_7;
    }

    ++v10;
  }

  while (v19 != v17);
  v20 = v76;
LABEL_35:
  v28 = *(v20 + 2);
  if (!v28)
  {
    goto LABEL_79;
  }

LABEL_36:
  v29 = v20[4];
  v30 = v28 - 1;
  if (v30)
  {
    v31 = v20 + 5;
    do
    {
      v32 = *v31++;
      v33 = v32;
      if (v32 < v29)
      {
        v29 = v33;
      }

      --v30;
    }

    while (v30);
  }

  if (!v17)
  {
LABEL_80:
    v35 = _swiftEmptyArrayStorage;
    v43 = _swiftEmptyArrayStorage[2];
    if (v43)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

LABEL_42:
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  do
  {
    v76 = v35;
    v10 = v34;
    while (1)
    {
      if (v18)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v36;
        v34 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v10 >= *(v77 + 16))
        {
          goto LABEL_87;
        }

        v5 = *(v78 + 8 * v10 + 32);

        v34 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_86;
        }
      }

      a1 = &v66;
      v1 = *(v5 + 128);
      v6 = *(v5 + 136);
      *&v87 = 0;
      __chkstk_darwin(v36);
      v8 = (&v66 - 4);
      *(&v66 - 2) = &v87;
      if ((v6 & 0x1000000000000000) == 0)
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v79 = v1;
          v80 = v6 & 0xFFFFFFFFFFFFFFLL;
          v8 = v1;

          if (v1 >= 0x21u || ((0x100003E01uLL >> v1) & 1) == 0)
          {
            v37 = _swift_stdlib_strtod_clocale();
            if (v37)
            {
LABEL_57:
              LOBYTE(v83) = *v37 == 0;
              goto LABEL_59;
            }
          }

          goto LABEL_58;
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          v1 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v8 >= 0x21 || ((0x100003E01uLL >> v8) & 1) == 0)
          {
            v37 = _swift_stdlib_strtod_clocale();
            if (v37)
            {
              goto LABEL_57;
            }
          }

LABEL_58:
          LOBYTE(v83) = 0;
          goto LABEL_59;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_59:

      if (LOBYTE(v83))
      {
        break;
      }

      ++v10;
      if (v34 == v17)
      {
        v35 = v76;
        goto LABEL_71;
      }
    }

    v38 = v87;
    v39 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1002249D0(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    v42 = v39;
    v1 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v42 = sub_1002249D0((v40 > 1), v41 + 1, 1, v42);
    }

    v35 = v42;
    *(v42 + 2) = v1;
    *&v42[8 * v41 + 32] = v38;
  }

  while (v34 != v17);
LABEL_71:
  v43 = *(v35 + 2);
  if (!v43)
  {
LABEL_81:
    v44 = 0.0;
    v47 = v74;
    v46 = v75;
    v48 = v78;
    goto LABEL_82;
  }

LABEL_72:
  v44 = v35[4];
  v45 = v43 - 1;
  v47 = v74;
  v46 = v75;
  v48 = v78;
  if (v45)
  {
    v49 = v35 + 5;
    do
    {
      v50 = *v49++;
      v51 = v50;
      if (v44 < v50)
      {
        v44 = v51;
      }

      --v45;
    }

    while (v45);
  }

LABEL_82:

  v85 = v48;
  v87 = *(v46 + 16);
  v52 = *(v46 + 40);
  v88 = *(v46 + 32);
  v86 = v52;
  v53 = swift_allocObject();
  v54 = *(v46 + 16);
  *(v53 + 16) = *v46;
  *(v53 + 32) = v54;
  *(v53 + 48) = *(v46 + 32);
  *(v53 + 64) = v29;
  *(v53 + 72) = v44;

  sub_1001AC934(&v87, &v79, &qword_1003755B0, &qword_1002EF760);
  sub_1001AC934(&v86, &v79, &qword_100375608, &qword_1002EF858);
  v12 = sub_1001A551C(&qword_100375610, &qword_1002EF860);
  sub_1001A551C(&qword_100375618, &qword_1002EF868);
  sub_1001AD0C8(&qword_100375620, &qword_100375610, &qword_1002EF860, &protocol conformance descriptor for [A]);
  sub_1001B54CC();
  sub_1001B5EC8(&qword_100375690, type metadata accessor for FTMAllMetricsModel, &unk_1002F3328);
  Chart.init<A, B>(_:content:)();
  if (v29 <= v44)
  {
    v83 = v29;
    v84 = v44;
    v55 = type metadata accessor for ScaleType();
    v56 = v67;
    (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
    v78 = sub_1001A551C(&qword_100375698, &qword_1002EF8B0);
    v57 = sub_1001AD0C8(&qword_1003756A0, &qword_1003755F8, &qword_1002EF848, &protocol conformance descriptor for Chart<A>);
    v58 = sub_1001B58E0();
    v59 = v69;
    v60 = v68;
    View.chartYScale<A>(domain:type:)();
    sub_1001AC99C(v56, &qword_1003755F0, &qword_1002EF840);
    (*(v66 + 8))(v47, v60);
    v61 = swift_allocObject();
    v62 = *(v46 + 16);
    v61[1] = *v46;
    v61[2] = v62;
    v61[3] = *(v46 + 32);

    sub_1001AC934(&v87, &v79, &qword_1003755B0, &qword_1002EF760);
    sub_1001AC934(&v86, &v79, &qword_100375608, &qword_1002EF858);
    static Alignment.center.getter();
    sub_1001A551C(&qword_1003756B0, &qword_1002EF8B8);
    v79 = v60;
    v80 = v78;
    v81 = v57;
    v82 = v58;
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_1003756B8, &qword_1003756B0, &qword_1002EF8B8, &protocol conformance descriptor for GeometryReader<A>);
    v63 = v71;
    View.chartOverlay<A>(alignment:content:)();

    return (*(v70 + 8))(v59, v63);
  }

  __break(1u);
LABEL_91:
  type metadata accessor for FTMAllMetricsModel(0);
  sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
  v65 = v12;
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B2FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v133 = a3;
  v132 = sub_1001A551C(&qword_100375730, &qword_1002EF8F8);
  __chkstk_darwin(v132);
  v131 = &v92 - v9;
  v10 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v10 - 8);
  v12 = &v92 - v11;
  v108 = type metadata accessor for Date();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1001A551C(&qword_100375740, &qword_1002EF908);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v109 = &v92 - v16;
  v115 = type metadata accessor for LineMark();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1001A551C(&qword_100375670, &qword_1002EF8A0);
  v114 = *(v122 - 8);
  __chkstk_darwin(v122);
  v112 = &v92 - v18;
  v124 = sub_1001A551C(&qword_100375668, &qword_1002EF898);
  v121 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v92 - v19;
  v126 = sub_1001A551C(&qword_100375658, &qword_1002EF888);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v92 - v20;
  v130 = sub_1001A551C(&qword_100375748, &qword_1002EF910);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v127 = &v92 - v23;
  v101 = type metadata accessor for AnnotationPosition();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001A551C(&qword_100375750, &qword_1002EF918);
  __chkstk_darwin(v25 - 8);
  v105 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v28 = type metadata accessor for RuleMark();
  v95 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1001A551C(&qword_100375650, &qword_1002EF880);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v92 - v31;
  v103 = sub_1001A551C(&qword_100375758, &unk_1002EF920);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v96 = &v92 - v32;
  v104 = sub_1001A551C(&qword_100375648, &qword_1002EF878);
  v33 = *(v104 - 8);
  __chkstk_darwin(v104);
  v35 = &v92 - v34;
  v36 = sub_1001A551C(&qword_100375638, &qword_1002EF870);
  __chkstk_darwin(v36 - 8);
  v110 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v92 - v39;
  v40 = *a1;
  v41 = *(a2 + 16);
  v42 = *(a2 + 32);
  v117 = a2;
  v141 = v41;
  v142 = v42;
  sub_1001A551C(&qword_100375728, &qword_1002EF8F0);
  State.wrappedValue.getter();
  v134 = v40;
  if (v139)
  {
    v43 = v140;
    if (a4 + -10.0 >= v140 || v140 >= a5 + 10.0)
    {

      v51 = 1;
      v52 = v107;
      v50 = v103;
      v49 = v102;
    }

    else
    {
      v92 = v138;
      LocalizedStringKey.init(stringLiteral:)();
      v93 = v12;
      *&v141 = v43;
      static PlottableValue.value(_:_:)();

      RuleMark.init<A>(xStart:xEnd:y:)();
      *&v141 = static Color.gray.getter();
      v44 = v94;
      ChartContent.foregroundStyle<A>(_:)();

      v45 = (v95[1])(v30, v28);
      v95 = &v92;
      __chkstk_darwin(v45);
      v46 = v99;
      static AnnotationPosition.automatic.getter();
      static Alignment.center.getter();
      *&v141 = v28;
      *(&v141 + 1) = &type metadata for Color;
      *&v142 = &protocol witness table for RuleMark;
      *(&v142 + 1) = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      v47 = v96;
      v12 = v93;
      v40 = v134;
      v48 = v98;
      ChartContent.annotation<A>(position:alignment:spacing:content:)();

      (*(v100 + 8))(v46, v101);
      (*(v97 + 8))(v44, v48);
      v49 = v102;
      v50 = v103;
      (*(v102 + 32))(v35, v47, v103);
      v51 = 0;
      v52 = v107;
    }

    (*(v49 + 56))(v35, v51, 1, v50);
    v54 = v135;
    sub_1001B603C(v35, v135, &qword_100375648, &qword_1002EF878);
    v53 = 0;
  }

  else
  {
    v53 = 1;
    v54 = v135;
    v52 = v107;
  }

  (*(v33 + 56))(v54, v53, 1, v104);
  LocalizedStringKey.init(stringLiteral:)();
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  v55 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001AC934(v40 + v55, v12, &qword_100375738, &qword_1002EF900);
  v56 = *(v52 + 48);
  v57 = v108;
  if (v56(v12, 1, v108) == 1)
  {
    v58 = v12;
    v59 = v106;
    Date.init()();
    v60 = v59;
    if (v56(v58, 1, v57) != 1)
    {
      sub_1001AC99C(v58, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    v60 = v106;
    (*(v52 + 32))(v106, v12, v57);
  }

  sub_1001B5EC8(&unk_100375760, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v61);

  (*(v52 + 8))(v60, v57);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v62 = *(v134 + 128);
  v63 = *(v134 + 136);
  *&v141 = 0;

  LOBYTE(v62) = sub_10022464C(v62, v63, &v141);

  v64 = *&v141;
  if ((v62 & 1) == 0)
  {
    v64 = 0.0;
  }

  *&v141 = v64;
  static PlottableValue.value(_:_:)();

  v65 = v111;
  LineMark.init<A, B>(x:y:)();
  LocalizedStringKey.init(stringLiteral:)();
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  v66 = *v117;
  if (*v117)
  {
    v67 = *(v66 + 48);
    v68 = *(v66 + 56);

    v69._countAndFlagsBits = v67;
    v69._object = v68;
    String.append(_:)(v69);

    v70 = v116;
    static PlottableValue.value(_:_:)();

    v71 = v112;
    v72 = v115;
    ChartContent.foregroundStyle<A>(by:)();
    (*(v119 + 8))(v70, v120);
    (*(v113 + 8))(v65, v72);
    *&v141 = v72;
    *(&v141 + 1) = &type metadata for String;
    *&v142 = &protocol witness table for LineMark;
    *(&v142 + 1) = &protocol witness table for String;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = v118;
    v75 = v122;
    ChartContent.interpolationMethod(_:)();
    (*(v114 + 8))(v71, v75);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v136 = v75;
    v137 = OpaqueTypeConformance2;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = v123;
    v78 = v124;
    ChartContent.lineStyle(_:)();
    sub_1001B5F10(&v141);
    (*(v121 + 8))(v74, v78);
    sub_1001A551C(&qword_100375660, &qword_1002EF890);
    v136 = v78;
    v137 = v76;
    swift_getOpaqueTypeConformance2();
    sub_1001B5828();
    v79 = v127;
    v80 = v126;
    ChartContent.symbol<A>(symbol:)();
    (*(v125 + 8))(v77, v80);
    v81 = v110;
    sub_1001B5F64(v135, v110);
    v82 = v129;
    v83 = *(v129 + 16);
    v84 = v128;
    v85 = v130;
    v83(v128, v79, v130);
    sub_1001B568C();
    v86 = v131;
    sub_1001B5F64(v81, v131);
    v87 = v132;
    v88 = *(v132 + 48);
    v83((v86 + v88), v84, v85);
    v89 = v133;
    sub_1001B603C(v86, v133, &qword_100375638, &qword_1002EF870);
    (*(v82 + 32))(v89 + *(v87 + 48), v86 + v88, v85);
    v90 = *(v82 + 8);
    v90(v79, v85);
    sub_1001B5FD4(v135);
    v90(v84, v85);
    return sub_1001B5FD4(v81);
  }

  else
  {
    type metadata accessor for FTMAllMetricsModel(0);
    sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  String.append(_:)(*&a1);
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002EED40;
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = a3;
  String.init(format:_:)();

  sub_1001A56A0();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Color.gray.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1001ACFEC(v7, v9, v11 & 1);

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  return result;
}

__n128 sub_1001B4494@<Q0>(uint64_t a1@<X8>)
{
  v2 = static Color.yellow.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v4[6] = v5;
  *&v4[22] = v6;
  *&v4[38] = v7;
  *(a1 + 10) = *v4;
  *a1 = v2;
  *(a1 + 8) = 256;
  *(a1 + 26) = *&v4[16];
  result = *&v4[32];
  *(a1 + 42) = *&v4[32];
  *(a1 + 56) = *(&v7 + 1);
  return result;
}

uint64_t sub_1001B4524@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = type metadata accessor for ChartProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6, v9);
  v10 = a2[1];
  v21 = *a2;
  v19 = v10;
  v11 = *(a2 + 5);
  v20 = *(a2 + 4);
  v18 = v11;
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = a2[2];
  *a3 = sub_1001B5A1C;
  a3[1] = v13;
  sub_1001AC934(&v21, v17, &qword_1003756C0, &qword_1002EF8C0);
  sub_1001AC934(&v19, v17, &qword_1003755B0, &qword_1002EF760);
  return sub_1001AC934(&v18, v17, &qword_100375608, &qword_1002EF858);
}

uint64_t sub_1001B46E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v47 = a2;
  v44 = a1;
  v57 = a4;
  v46 = type metadata accessor for ChartProxy();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v46);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v10);
  v49 = type metadata accessor for DragGesture();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001A551C(&qword_1003756C8, &qword_1002EF8C8);
  v13 = *(v12 - 8);
  v52 = v12;
  v53 = v13;
  __chkstk_darwin(v12);
  v48 = &v40 - v14;
  v15 = sub_1001A551C(&qword_1003756D0, &qword_1002EF8D0);
  v16 = *(v15 - 8);
  v55 = v15;
  v56 = v16;
  __chkstk_darwin(v15);
  v51 = &v40 - v17;
  v54 = static Color.clear.getter();
  v59 = v54;
  v60 = 256;
  v61 = 0;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v18 = v6;
  (*(v7 + 16))(v9, v44, v6);
  v19 = v4;
  v41 = v4;
  v20 = v43;
  v21 = v46;
  (*(v4 + 16))(v43, v47, v46);
  v22 = v45;
  v23 = *(v45 + 16);
  v65[0] = *v45;
  v63 = v23;
  v24 = *(v45 + 40);
  v64 = *(v45 + 32);
  v62 = v24;
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = (v8 + *(v19 + 80) + v25) & ~*(v19 + 80);
  v27 = (v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v7 + 32))(v28 + v25, v9, v18);
  (*(v41 + 32))(v28 + v26, v20, v21);
  v29 = (v28 + v27);
  v30 = v22[1];
  *v29 = *v22;
  v29[1] = v30;
  v29[2] = v22[2];
  sub_1001AC934(v65, v58, &qword_1003756C0, &qword_1002EF8C0);
  sub_1001AC934(&v63, v58, &qword_1003755B0, &qword_1002EF760);
  sub_1001AC934(&v62, v58, &qword_100375608, &qword_1002EF858);
  sub_1001B5EC8(&qword_1003756D8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_1001B5EC8(&qword_1003756E0, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v31 = v48;
  v32 = v49;
  v33 = v42;
  Gesture<>.onChanged(_:)();

  (*(v50 + 8))(v33, v32);
  v34 = swift_allocObject();
  v35 = v22[1];
  v34[1] = *v22;
  v34[2] = v35;
  v34[3] = v22[2];
  sub_1001AC934(v65, v58, &qword_1003756C0, &qword_1002EF8C0);
  sub_1001AC934(&v63, v58, &qword_1003755B0, &qword_1002EF760);
  sub_1001AC934(&v62, v58, &qword_100375608, &qword_1002EF858);
  sub_1001AD0C8(&qword_1003756E8, &qword_1003756C8, &qword_1002EF8C8, &protocol conformance descriptor for _ChangedGesture<A>);
  v37 = v51;
  v36 = v52;
  Gesture.onEnded(_:)();

  (*(v53 + 8))(v31, v36);
  static GestureMask.all.getter();
  sub_1001A551C(&qword_1003756F0, &qword_1002EF8D8);
  sub_1001B5DE4();
  sub_1001AD0C8(&qword_100375720, &qword_1003756D0, &qword_1002EF8D0, &protocol conformance descriptor for _EndedGesture<A>);
  v38 = v55;
  View.gesture<A>(_:including:)();
  (*(v56 + 8))(v37, v38);
}

uint64_t sub_1001B4E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ChartProxy.plotAreaFrame.getter();
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();

  DragGesture.Value.location.getter();
  DragGesture.Value.location.getter();
  ChartProxy.value<A, B>(at:as:)();
  sub_1001A551C(&qword_100375728, &qword_1002EF8F0);
  return State.wrappedValue.setter();
}

uint64_t sub_1001B4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)();
}

unint64_t sub_1001B4FD4()
{
  result = qword_100375590;
  if (!qword_100375590)
  {
    sub_1001A55C8(&qword_100375580, &qword_1002EF748);
    sub_1001AD0C8(&qword_100375598, &qword_1003755A0, &qword_1002EF750, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375590);
  }

  return result;
}

uint64_t sub_1001B50A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorBookmarkedSheetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B510C()
{
  v1 = (type metadata accessor for FTMCellMonitorBookmarkedSheetView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001B5228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorBookmarkedSheetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B528C()
{
  v1 = *(type metadata accessor for FTMCellMonitorBookmarkedSheetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1001AFF98(v2);
}

__n128 sub_1001B5300(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1001B5314(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1001B5370(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1001B53E4()
{
  result = qword_1003755E0;
  if (!qword_1003755E0)
  {
    sub_1001A55C8(&qword_1003755E8, qword_1002EF7E8);
    sub_1001AD0C8(&qword_100375588, &qword_100375548, &qword_1002EF710, &protocol conformance descriptor for TupleView<A>);
    sub_1001B4FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003755E0);
  }

  return result;
}

unint64_t sub_1001B54CC()
{
  result = qword_100375628;
  if (!qword_100375628)
  {
    sub_1001A55C8(&qword_100375618, &qword_1002EF868);
    sub_1001B568C();
    sub_1001A55C8(&qword_100375658, &qword_1002EF888);
    sub_1001A55C8(&qword_100375660, &qword_1002EF890);
    sub_1001A55C8(&qword_100375668, &qword_1002EF898);
    sub_1001A55C8(&qword_100375670, &qword_1002EF8A0);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001B5828();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375628);
  }

  return result;
}

unint64_t sub_1001B568C()
{
  result = qword_100375630;
  if (!qword_100375630)
  {
    sub_1001A55C8(&qword_100375638, &qword_1002EF870);
    sub_1001B5710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375630);
  }

  return result;
}

unint64_t sub_1001B5710()
{
  result = qword_100375640;
  if (!qword_100375640)
  {
    sub_1001A55C8(&qword_100375648, &qword_1002EF878);
    sub_1001A55C8(&qword_100375650, &qword_1002EF880);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375640);
  }

  return result;
}

unint64_t sub_1001B5828()
{
  result = qword_100375678;
  if (!qword_100375678)
  {
    sub_1001A55C8(&qword_100375660, &qword_1002EF890);
    sub_1001AD0C8(&qword_100375680, &qword_100375688, &qword_1002EF8A8, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375678);
  }

  return result;
}

unint64_t sub_1001B58E0()
{
  result = qword_1003756A8;
  if (!qword_1003756A8)
  {
    sub_1001A55C8(&qword_100375698, &qword_1002EF8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003756A8);
  }

  return result;
}

uint64_t sub_1001B596C()
{
  v1 = type metadata accessor for ChartProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 48, v3 | 7);
}

uint64_t sub_1001B5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChartProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1001B46E4(a1, v2 + v6, v7, a2);
}

uint64_t sub_1001B5AC8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ChartProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 48, v10 | 7);
}

uint64_t sub_1001B5C38(uint64_t a1)
{
  v3 = *(type metadata accessor for GeometryProxy() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ChartProxy() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1001B4E3C(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_1001B5D38(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_1001B5DE4()
{
  result = qword_1003756F8;
  if (!qword_1003756F8)
  {
    sub_1001A55C8(&qword_1003756F0, &qword_1002EF8D8);
    sub_1001AD0C8(&qword_100375700, &qword_100375708, &qword_1002EF8E0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_1001AD0C8(&qword_100375710, &qword_100375718, &qword_1002EF8E8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003756F8);
  }

  return result;
}

uint64_t sub_1001B5EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B5F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375638, &qword_1002EF870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B5FD4(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100375638, &qword_1002EF870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B603C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001A551C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001B60B0()
{
  sub_1001A55C8(&qword_100375600, &qword_1002EF850);
  sub_1001A55C8(&qword_1003756B0, &qword_1002EF8B8);
  sub_1001A55C8(&qword_1003755F8, &qword_1002EF848);
  sub_1001A55C8(&qword_100375698, &qword_1002EF8B0);
  sub_1001AD0C8(&qword_1003756A0, &qword_1003755F8, &qword_1002EF848, &protocol conformance descriptor for Chart<A>);
  sub_1001B58E0();
  swift_getOpaqueTypeConformance2();
  sub_1001AD0C8(&qword_1003756B8, &qword_1003756B0, &qword_1002EF8B8, &protocol conformance descriptor for GeometryReader<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_1001B63B8()
{
  v1 = OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView;
  [*&v0[OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView] setUserInteractionEnabled:0];
  v2 = *&v0[v1];
  type metadata accessor for TickerCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [*&v0[v1] setDataSource:v0];
  [*&v0[v1] setDelegate:v0];
  [*&v0[v1] setSeparatorStyle:0];
  v6 = *&v0[v1];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [v0 contentView];
  [v10 addSubview:*&v0[v1]];

  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v0 contentView];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002EF930;
  v13 = *&v0[v1];
  v14 = [v0 contentView];
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 constraintWithItem:v16 attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:0.0];

  *(v12 + 32) = v17;
  v18 = *&v0[v1];
  v19 = [v0 contentView];
  v20 = v18;
  v21 = [v15 constraintWithItem:v20 attribute:6 relatedBy:0 toItem:v19 attribute:6 multiplier:1.0 constant:0.0];

  *(v12 + 40) = v21;
  v22 = *&v0[v1];
  v23 = [v0 contentView];
  v24 = v22;
  v25 = [v15 constraintWithItem:v24 attribute:3 relatedBy:0 toItem:v23 attribute:3 multiplier:1.0 constant:0.0];

  *(v12 + 48) = v25;
  v26 = *&v0[v1];
  v27 = [v0 contentView];
  v28 = v26;
  v29 = [v15 constraintWithItem:v28 attribute:4 relatedBy:0 toItem:v27 attribute:4 multiplier:1.0 constant:0.0];

  *(v12 + 56) = v29;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 addConstraints:isa];
}

id sub_1001B67B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TickerColumnCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001B6854(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for TickerCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v1 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters);
      if (result < *(v10 + 16))
      {
        v11 = v10 + 16 * result;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);
        v14 = (v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_digit);
        *v14 = v12;
        v14[1] = v13;

        v15 = OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel;
        v16 = *(v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel);

        v17 = String._bridgeToObjectiveC()();

        [v16 setText:v17];

        if (*(v2 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) == 1)
        {
          v18 = 35.0;
        }

        else
        {
          v18 = 40.0;
        }

        *(v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize) = v18;
        v19 = *(v8 + v15);
        v20 = [objc_opt_self() systemFontOfSize:v18 weight:UIFontWeightRegular];
        [v19 setFont:v20];

        return v8;
      }
    }

    __break(1u);
    return result;
  }

  v21 = objc_allocWithZone(UITableViewCell);

  return [v21 init];
}

unint64_t sub_1001B6BCC()
{
  result = qword_1003757B8;
  if (!qword_1003757B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003757B8);
  }

  return result;
}

uint64_t sub_1001B6C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001B6D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FTMBandDataView(uint64_t a1)
{
  result = qword_1003758F0;
  if (!qword_1003758F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B6E20(uint64_t a1)
{
  sub_1001B6EDC(319, &qword_100375900, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001B6EDC(319, &unk_100375908, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B6EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FTMBandInfoDataModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1001B6F58@<X0>(uint64_t a1@<X8>)
{
  v333 = a1;
  v2 = sub_1001A551C(&qword_100375938, &qword_1002EFA48);
  __chkstk_darwin(v2 - 8);
  v310 = &v285 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v319 = &v285 - v5;
  v315 = sub_1001A551C(&qword_100375940, &qword_1002EFA50);
  __chkstk_darwin(v315);
  v297 = &v285 - v6;
  v7 = sub_1001A551C(&qword_100375948, &qword_1002EFA58);
  __chkstk_darwin(v7 - 8);
  v309 = &v285 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v332 = &v285 - v10;
  __chkstk_darwin(v11);
  v331 = &v285 - v12;
  __chkstk_darwin(v13);
  v339 = &v285 - v14;
  __chkstk_darwin(v15);
  v340 = &v285 - v16;
  __chkstk_darwin(v17);
  v337 = &v285 - v18;
  __chkstk_darwin(v19);
  v327 = &v285 - v20;
  v312 = sub_1001A551C(&qword_100375950, &qword_1002EFA60);
  __chkstk_darwin(v312);
  v314 = &v285 - v21;
  v313 = sub_1001A551C(&qword_100375958, &qword_1002EFA68);
  __chkstk_darwin(v313);
  v292 = &v285 - v22;
  v23 = sub_1001A551C(&qword_100375960, &qword_1002EFA70);
  __chkstk_darwin(v23 - 8);
  v291 = &v285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v320 = &v285 - v26;
  v27 = sub_1001A551C(&qword_100375968, &qword_1002EFA78);
  __chkstk_darwin(v27 - 8);
  v330 = &v285 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v341 = &v285 - v30;
  v334 = sub_1001A551C(&qword_100375970, &qword_1002EFA80);
  __chkstk_darwin(v334);
  v335 = &v285 - v31;
  v354 = sub_1001A551C(&qword_100375978, &qword_1002EFA88);
  __chkstk_darwin(v354);
  v355 = &v285 - v32;
  v356 = sub_1001A551C(&qword_100375980, &qword_1002EFA90);
  v347 = *(v356 - 8);
  __chkstk_darwin(v356);
  v299 = &v285 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v300 = &v285 - v35;
  __chkstk_darwin(v36);
  v301 = &v285 - v37;
  __chkstk_darwin(v38);
  v296 = &v285 - v39;
  __chkstk_darwin(v40);
  v295 = &v285 - v41;
  __chkstk_darwin(v42);
  v316 = &v285 - v43;
  __chkstk_darwin(v44);
  v326 = &v285 - v45;
  __chkstk_darwin(v46);
  v328 = &v285 - v47;
  __chkstk_darwin(v48);
  v325 = &v285 - v49;
  __chkstk_darwin(v50);
  v323 = &v285 - v51;
  __chkstk_darwin(v52);
  v308 = &v285 - v53;
  __chkstk_darwin(v54);
  v287 = &v285 - v55;
  __chkstk_darwin(v56);
  v288 = &v285 - v57;
  __chkstk_darwin(v58);
  v322 = &v285 - v59;
  __chkstk_darwin(v60);
  v298 = &v285 - v61;
  v294 = sub_1001A551C(&qword_100375988, &qword_1002EFA98);
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v290 = &v285 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v336 = &v285 - v64;
  __chkstk_darwin(v65);
  v311 = &v285 - v66;
  __chkstk_darwin(v67);
  v289 = &v285 - v68;
  __chkstk_darwin(v69);
  v321 = &v285 - v70;
  __chkstk_darwin(v71);
  v342 = &v285 - v72;
  v73 = sub_1001A551C(&qword_100375990, &qword_1002EFAA0);
  v352 = *(v73 - 8);
  v353 = v73;
  __chkstk_darwin(v73);
  v75 = &v285 - v74;
  v344 = sub_1001A551C(&qword_100375998, &qword_1002EFAA8);
  __chkstk_darwin(v344);
  v348 = &v285 - v76;
  v77 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  __chkstk_darwin(v77 - 8);
  v306 = &v285 - v78;
  v305 = sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  v304 = *(v305 - 8);
  __chkstk_darwin(v305);
  v80 = &v285 - v79;
  v317 = sub_1001A551C(&qword_1003759A0, &qword_1002EFAC0);
  __chkstk_darwin(v317);
  v303 = &v285 - v81;
  v318 = sub_1001A551C(&qword_1003759A8, &qword_1002EFAC8);
  v307 = *(v318 - 8);
  __chkstk_darwin(v318);
  v302 = &v285 - v82;
  v83 = sub_1001A551C(&qword_1003759B0, &qword_1002EFAD0);
  __chkstk_darwin(v83 - 8);
  v329 = &v285 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v343 = &v285 - v86;
  v87 = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  __chkstk_darwin(v87 - 8);
  v89 = &v285 - v88;
  v90 = type metadata accessor for FTMBandInfoDataModel(0);
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v349 = &v285 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v93);
  v359 = &v285 - v94;
  __chkstk_darwin(v95);
  v350 = &v285 - v96;
  __chkstk_darwin(v97);
  v360 = &v285 - v98;
  __chkstk_darwin(v99);
  v351 = &v285 - v100;
  __chkstk_darwin(v101);
  v361 = (&v285 - v102);
  __chkstk_darwin(v103);
  v338 = &v285 - v104;
  __chkstk_darwin(v105);
  v107 = &v285 - v106;
  __chkstk_darwin(v108);
  v110 = (&v285 - v109);
  if (qword_100375018 != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    v357 = qword_100382500;
    v111 = *(v1 + *(type metadata accessor for FTMBandDataView(0) + 20));
    v324 = sub_10020C300(v111);
    sub_1001BB448(v1, v89);
    v358 = v91;
    if ((*(v91 + 48))(v89, 1, v90) == 1)
    {
      sub_1001AC99C(v89, &qword_100375890, &unk_1002EF9D0);
      v112 = 1;
      v113 = v333;
LABEL_176:
      v284 = sub_1001A551C(&qword_1003759B8, &qword_1002EFAD8);
      return (*(*(v284 - 8) + 56))(v113, v112, 1, v284);
    }

    sub_1001BB4B8(v89, v110);
    v114 = *(v110 + 9);
    v345 = v110;
    v346 = v75;
    if (v114 <= 1)
    {
      v115 = 0xE100000000000000;
      v116 = v114 ? 83 : 80;
    }

    else if (v114 == 2)
    {
      v115 = 0xE200000000000000;
      v116 = 21328;
    }

    else
    {
      if (v114 != 3)
      {
        goto LABEL_16;
      }

      v115 = 0xE200000000000000;
      v116 = 21331;
    }

    v117 = sub_10023F91C(v116, v115);
    v119 = v118;

    v110 = v345;
    v75 = v346;
    if (!v119)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (v117 == 80 && v119 == 0xE100000000000000)
    {

      goto LABEL_18;
    }

LABEL_17:
    _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_18:
    v120 = *(v110 + 5);
    if (v120)
    {
      v286 = *(v110 + 4);
      v366 = v286;
      v367 = v120;
      v364 = 1684955458;
      v365 = 0xE400000000000000;
      v362 = 0;
      v363 = 0xE000000000000000;
      sub_1001A56A0();

      v366 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v367 = v121;
      Label<>.init<A>(_:systemImage:)();
      sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790, &protocol conformance descriptor for Label<A, B>);
      sub_1001BB658();
      v122 = v303;
      v123 = v305;
      View.labelStyle<A>(_:)();
      (*(v304 + 8))(v80, v123);
      static Font.Weight.regular.getter();
      v124 = enum case for Font.Design.default(_:);
      v125 = type metadata accessor for Font.Design();
      v126 = *(v125 - 8);
      v127 = v306;
      (*(v126 + 104))(v306, v124, v125);
      (*(v126 + 56))(v127, 0, 1, v125);
      v128 = static Font.system(size:weight:design:)();
      sub_1001AC99C(v127, &qword_1003753E8, &unk_1002EFAB0);
      KeyPath = swift_getKeyPath();
      v130 = v317;
      v131 = (v122 + *(v317 + 36));
      *v131 = KeyPath;
      v131[1] = v128;
      v132 = swift_allocObject();
      *(v132 + 16) = v286;
      *(v132 + 24) = v120;
      v133 = sub_1001BB51C();
      v134 = v302;
      View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();
      v110 = v345;

      sub_1001AC99C(v122, &qword_1003759A0, &qword_1002EFAC0);
      v135 = v307;
      v136 = v318;
      (*(v307 + 16))(v348, v134, v318);
      swift_storeEnumTagMultiPayload();
      v366 = v130;
      v367 = v133;
      swift_getOpaqueTypeConformance2();
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v80 = v353;
      _ConditionalContent<>.init(storage:)();
      result = (*(v135 + 8))(v134, v136);
    }

    else
    {

      sub_1001BAE28(0, 0xE000000000000000, v75);
      v140 = v352;
      v80 = v353;
      (*(v352 + 16))(v348, v75, v353);
      swift_storeEnumTagMultiPayload();
      v141 = sub_1001BB51C();
      v366 = v317;
      v367 = v141;
      swift_getOpaqueTypeConformance2();
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      result = (*(v140 + 8))(v75, v80);
    }

    v142 = v328;
    v89 = v358;
    if ((v110[7] & 1) == 0)
    {
      break;
    }

    v143 = v346;
    sub_1001BAE28(0, 0xE000000000000000, v346);
    v144 = v352;
    v348 = *(v352 + 16);
    (v348)(v335, v143, v80);
    swift_storeEnumTagMultiPayload();
    sub_1001BB6AC();
    v366 = &type metadata for Text;
    v367 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    v344 = *(v144 + 8);
    v344(v143, v80);
LABEL_30:
    if (v324 & 0x100) != 0 || (v324)
    {
      if (v110[19])
      {
        sub_1001BAE28(0, 0xE000000000000000, v143);
      }

      else
      {
        v366 = *(v110 + 18);
        v157 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v157, v158, v143);
      }

      (v348)(v355, v143, v80);
      swift_storeEnumTagMultiPayload();
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      v344(v143, v80);
      if ((v324 & 0x100) != 0)
      {
        if (v110[21])
        {
          sub_1001BAE28(0, 0xE000000000000000, v143);
        }

        else
        {
          v366 = *(v110 + 20);
          v177 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v177, v178, v143);
        }

        (v348)(v355, v143, v80);
        swift_storeEnumTagMultiPayload();
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        v344(v143, v80);
        v179 = v327;
        sub_1001B603C(v142, v327, &qword_100375980, &qword_1002EFA90);
        v160 = v179;
        v159 = 0;
      }

      else
      {
        v159 = 1;
        v160 = v327;
      }

      (*(v347 + 56))(v160, v159, 1, v356);
      if (v110[31])
      {
        sub_1001BAE28(0, 0xE000000000000000, v143);
      }

      else
      {
        v366 = *(v110 + 30);
        v180 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v180, v181, v143);
      }

      (v348)(v355, v143, v80);
      swift_storeEnumTagMultiPayload();
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      v344(v143, v80);
      if (v110[33])
      {
        sub_1001BAE28(0, 0xE000000000000000, v143);
      }

      else
      {
        v366 = *(v110 + 32);
        v182 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v182, v183, v143);
      }

      (v348)(v355, v143, v80);
      swift_storeEnumTagMultiPayload();
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v184 = v316;
      _ConditionalContent<>.init(storage:)();
      v110 = v357;
      v344(v143, v80);
      v185 = v323;
      sub_1001AC934(v325, v323, &qword_100375980, &qword_1002EFA90);
      v186 = v337;
      sub_1001AC934(v327, v337, &qword_100375948, &qword_1002EFA58);
      v187 = v295;
      sub_1001AC934(v326, v295, &qword_100375980, &qword_1002EFA90);
      v188 = v296;
      sub_1001AC934(v184, v296, &qword_100375980, &qword_1002EFA90);
      v189 = v297;
      sub_1001AC934(v185, v297, &qword_100375980, &qword_1002EFA90);
      v190 = sub_1001A551C(&qword_100375A08, &qword_1002EFB00);
      sub_1001AC934(v186, v189 + v190[12], &qword_100375948, &qword_1002EFA58);
      sub_1001AC934(v187, v189 + v190[16], &qword_100375980, &qword_1002EFA90);
      sub_1001AC934(v188, v189 + v190[20], &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v188, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v187, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v186, &qword_100375948, &qword_1002EFA58);
      sub_1001AC99C(v185, &qword_100375980, &qword_1002EFA90);
      v90 = &qword_100375940;
      v91 = v314;
      sub_1001AC934(v189, v314, &qword_100375940, &qword_1002EFA50);
      swift_storeEnumTagMultiPayload();
      v75 = &protocol conformance descriptor for TupleView<A>;
      sub_1001AD0C8(&qword_1003759F0, &qword_100375958, &qword_1002EFA68, &protocol conformance descriptor for TupleView<A>);
      sub_1001AD0C8(&qword_1003759F8, &qword_100375940, &qword_1002EFA50, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(v189, &qword_100375940, &qword_1002EFA50);
      sub_1001AC99C(v316, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v326, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v327, &qword_100375948, &qword_1002EFA58);
      v191 = &v357;
    }

    else
    {
      if (v110[17])
      {
        sub_1001BAE28(0, 0xE000000000000000, v143);
      }

      else
      {
        v366 = *(v110 + 16);
        v161 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v161, v162, v143);
      }

      (v348)(v355, v143, v80);
      swift_storeEnumTagMultiPayload();
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      v91 = v344;
      result = (v344)(v143, v80);
      v165 = *(v110 + 184);
      v328 = (v144 + 8);
      if (v165)
      {
        sub_1001BAE28(0, 0xE000000000000000, v143);
        (v348)(v335, v143, v80);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        (v91)(v143, v80);
        v110 = v357;
        v75 = *(v111 + 16);
        if (v75)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v171 = v110[22];
        *v163.i64 = v171;
        *v164.i64 = *v163.i64 - trunc(*v163.i64);
        v172.f64[0] = NAN;
        v172.f64[1] = NAN;
        if (*vbslq_s8(vnegq_f64(v172), v164, v163).i64 == 0.0)
        {
          v173 = v344;
          if ((~*&v171 & 0x7FF0000000000000) == 0)
          {
            goto LABEL_193;
          }

          v110 = v357;
          if (v171 <= -9.22337204e18)
          {
            goto LABEL_194;
          }

          if (v171 >= 9.22337204e18)
          {
            goto LABEL_195;
          }

          v366 = v171;
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v174, v175, v143);

          (v348)(v355, v143, v80);
          swift_storeEnumTagMultiPayload();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v176 = v288;
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          sub_1001A551C(&unk_100377020, &unk_1002EF770);
          v192 = swift_allocObject();
          *(v192 + 16) = xmmword_1002EED40;
          *(v192 + 56) = &type metadata for Double;
          *(v192 + 64) = &protocol witness table for Double;
          *(v192 + 32) = v171;
          v193 = String.init(format:_:)();
          sub_1001BAE28(v193, v194, v143);

          (v348)(v355, v143, v80);
          swift_storeEnumTagMultiPayload();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v176 = v288;
          _ConditionalContent<>.init(storage:)();
          v110 = v357;
          v173 = v344;
        }

        v173(v143, v80);
        v91 = v335;
        sub_1001AC934(v176, v335, &qword_100375980, &qword_1002EFA90);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        sub_1001AC99C(v176, &qword_100375980, &qword_1002EFA90);
        v89 = v358;
        v75 = *(v111 + 16);
        if (v75)
        {
LABEL_44:
          v90 = 0;
          v1 = _swiftEmptyArrayStorage;
          while (v90 < *(v111 + 16))
          {
            v166 = (v89[80] + 32) & ~v89[80];
            v91 = *(v89 + 9);
            sub_1001BB760(v111 + v166 + v91 * v90, v107);
            v167 = *v107;
            if (*(v107 + 8))
            {
              v167 = 0;
            }

            if (v167 < 0xFFFFFFFF80000000)
            {
              goto LABEL_187;
            }

            if (v167 > 0x7FFFFFFF)
            {
              goto LABEL_188;
            }

            if (v110[20] & 1) != 0 || *(v110 + 39) != v167 || (*(v107 + 200))
            {
              sub_1001BB7C4(v107);
            }

            else
            {
              sub_1001BB4B8(v107, v338);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v366 = v1;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001F5438(0, v1[2] + 1, 1);
                v1 = v366;
              }

              v170 = v1[2];
              v169 = v1[3];
              if (v170 >= v169 >> 1)
              {
                sub_1001F5438((v169 > 1), v170 + 1, 1);
                v1 = v366;
              }

              v1[2] = v170 + 1;
              sub_1001BB4B8(v338, v1 + v166 + v170 * v91);
              v80 = v353;
              v89 = v358;
            }

            if (v75 == ++v90)
            {
              goto LABEL_77;
            }
          }

          goto LABEL_186;
        }
      }

      v1 = _swiftEmptyArrayStorage;
LABEL_77:
      v195 = v1[2];

      if (v195)
      {
        v198 = v345;
        v199 = v346;
        v200 = v308;
        if (v345[25])
        {
          sub_1001BAE28(0, 0xE000000000000000, v346);
          (v348)(v335, v199, v80);
          swift_storeEnumTagMultiPayload();
          sub_1001BB6AC();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v201 = v289;
          _ConditionalContent<>.init(storage:)();
          v344(v199, v80);
        }

        else
        {
          v204 = v345[24];
          *v196.i64 = v204;
          *v197.i64 = *v196.i64 - trunc(*v196.i64);
          v205.f64[0] = NAN;
          v205.f64[1] = NAN;
          if (*vbslq_s8(vnegq_f64(v205), v197, v196).i64 == 0.0)
          {
            v206 = v287;
            if ((~*&v204 & 0x7FF0000000000000) == 0)
            {
              goto LABEL_199;
            }

            if (v204 <= -9.22337204e18)
            {
              goto LABEL_200;
            }

            if (v204 >= 9.22337204e18)
            {
              goto LABEL_201;
            }

            v366 = v204;
            v207 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1001BAE28(v207, v208, v199);

            (v348)(v355, v199, v80);
            swift_storeEnumTagMultiPayload();
            v366 = &type metadata for Text;
            v367 = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
          }

          else
          {
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v209 = swift_allocObject();
            *(v209 + 16) = xmmword_1002EED40;
            *(v209 + 56) = &type metadata for Double;
            *(v209 + 64) = &protocol witness table for Double;
            *(v209 + 32) = v204;
            v210 = String.init(format:_:)();
            sub_1001BAE28(v210, v211, v199);

            (v348)(v355, v199, v80);
            swift_storeEnumTagMultiPayload();
            v366 = &type metadata for Text;
            v367 = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
            v206 = v287;
          }

          _ConditionalContent<>.init(storage:)();
          v344(v199, v80);
          sub_1001AC934(v206, v335, &qword_100375980, &qword_1002EFA90);
          swift_storeEnumTagMultiPayload();
          sub_1001BB6AC();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v201 = v289;
          _ConditionalContent<>.init(storage:)();
          sub_1001AC99C(v206, &qword_100375980, &qword_1002EFA90);
          v200 = v308;
        }

        v203 = v320;
        sub_1001B603C(v201, v320, &qword_100375988, &qword_1002EFA98);
        v202 = 0;
      }

      else
      {
        v202 = 1;
        v198 = v345;
        v199 = v346;
        v203 = v320;
        v200 = v308;
      }

      result = (*(v293 + 56))(v203, v202, 1, v294);
      if (*(v198 + 232))
      {
        sub_1001BAE28(0, 0xE000000000000000, v199);
        (v348)(v335, v199, v80);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v214 = v311;
        _ConditionalContent<>.init(storage:)();
        v344(v199, v80);
        v110 = v357;
        v215 = v214;
      }

      else
      {
        v216 = *(v198 + 224);
        *v212.i64 = v216;
        *v213.i64 = *v212.i64 - trunc(*v212.i64);
        v217.f64[0] = NAN;
        v217.f64[1] = NAN;
        if (*vbslq_s8(vnegq_f64(v217), v213, v212).i64 == 0.0)
        {
          if ((~*&v216 & 0x7FF0000000000000) == 0)
          {
            goto LABEL_196;
          }

          v110 = v357;
          if (v216 <= -9.22337204e18)
          {
            goto LABEL_197;
          }

          if (v216 >= 9.22337204e18)
          {
            goto LABEL_198;
          }

          v366 = v216;
          v218 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v218, v219, v199);

          (v348)(v355, v199, v80);
          swift_storeEnumTagMultiPayload();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          sub_1001A551C(&unk_100377020, &unk_1002EF770);
          v220 = swift_allocObject();
          *(v220 + 16) = xmmword_1002EED40;
          *(v220 + 56) = &type metadata for Double;
          *(v220 + 64) = &protocol witness table for Double;
          *(v220 + 32) = v216;
          v221 = String.init(format:_:)();
          sub_1001BAE28(v221, v222, v199);

          (v348)(v355, v199, v80);
          swift_storeEnumTagMultiPayload();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          _ConditionalContent<>.init(storage:)();
          v110 = v357;
        }

        v344(v199, v80);
        sub_1001AC934(v200, v335, &qword_100375980, &qword_1002EFA90);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v223 = v311;
        _ConditionalContent<>.init(storage:)();
        sub_1001AC99C(v200, &qword_100375980, &qword_1002EFA90);
        v215 = v223;
      }

      v224 = v323;
      sub_1001AC934(v322, v323, &qword_100375980, &qword_1002EFA90);
      v225 = v336;
      sub_1001AC934(v321, v336, &qword_100375988, &qword_1002EFA98);
      v226 = v291;
      sub_1001AC934(v320, v291, &qword_100375960, &qword_1002EFA70);
      v227 = v290;
      sub_1001AC934(v215, v290, &qword_100375988, &qword_1002EFA98);
      v228 = v292;
      sub_1001AC934(v224, v292, &qword_100375980, &qword_1002EFA90);
      v229 = sub_1001A551C(&qword_1003759E8, &qword_1002EFAE8);
      sub_1001AC934(v225, v228 + v229[12], &qword_100375988, &qword_1002EFA98);
      sub_1001AC934(v226, v228 + v229[16], &qword_100375960, &qword_1002EFA70);
      sub_1001AC934(v227, v228 + v229[20], &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v227, &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v226, &qword_100375960, &qword_1002EFA70);
      sub_1001AC99C(v225, &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v323, &qword_100375980, &qword_1002EFA90);
      v75 = &qword_1002EFA68;
      v91 = v314;
      sub_1001AC934(v228, v314, &qword_100375958, &qword_1002EFA68);
      swift_storeEnumTagMultiPayload();
      v90 = &protocol conformance descriptor for TupleView<A>;
      sub_1001AD0C8(&qword_1003759F0, &qword_100375958, &qword_1002EFA68, &protocol conformance descriptor for TupleView<A>);
      sub_1001AD0C8(&qword_1003759F8, &qword_100375940, &qword_1002EFA50, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(v228, &qword_100375958, &qword_1002EFA68);
      sub_1001AC99C(v311, &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v320, &qword_100375960, &qword_1002EFA70);
      sub_1001AC99C(v321, &qword_100375988, &qword_1002EFA98);
      v191 = &v354;
    }

    sub_1001AC99C(*(v191 - 32), &qword_100375980, &qword_1002EFA90);
    v107 = *(v111 + 16);
    v89 = v358;
    if (v107)
    {
      v75 = 0;
      v1 = _swiftEmptyArrayStorage;
      v80 = 0x7FFFFFFFLL;
      while (v75 < *(v111 + 16))
      {
        v230 = (v89[80] + 32) & ~v89[80];
        v90 = *(v89 + 9);
        v91 = v361;
        sub_1001BB760(v111 + v230 + v90 * v75, v361);
        v231 = *v91;
        if (*(v91 + 8))
        {
          v231 = 0;
        }

        if (v231 < 0xFFFFFFFF80000000)
        {
          goto LABEL_178;
        }

        if (v231 > 0x7FFFFFFF)
        {
          goto LABEL_179;
        }

        if (v110[20] & 1) != 0 || *(v110 + 39) != v231 || (*(v91 + 88))
        {
          sub_1001BB7C4(v91);
        }

        else
        {
          sub_1001BB4B8(v91, v351);
          v232 = swift_isUniquelyReferenced_nonNull_native();
          v366 = v1;
          if ((v232 & 1) == 0)
          {
            sub_1001F5438(0, v1[2] + 1, 1);
            v1 = v366;
          }

          v234 = v1[2];
          v233 = v1[3];
          if (v234 >= v233 >> 1)
          {
            sub_1001F5438((v233 > 1), v234 + 1, 1);
            v1 = v366;
          }

          v1[2] = v234 + 1;
          sub_1001BB4B8(v351, v1 + v230 + v234 * v90);
          v110 = v357;
          v89 = v358;
        }

        if (v107 == ++v75)
        {
          goto LABEL_117;
        }
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
    }

    else
    {
      v1 = _swiftEmptyArrayStorage;
LABEL_117:
      v235 = v1[2];

      v236 = v353;
      if (v235)
      {
        v237 = v346;
        if (v345[11])
        {
          sub_1001BAE28(0, 0xE000000000000000, v346);
        }

        else
        {
          v366 = *(v345 + 10);
          v239 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v239, v240, v237);
        }

        (v348)(v355, v237, v236);
        swift_storeEnumTagMultiPayload();
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v241 = v301;
        _ConditionalContent<>.init(storage:)();
        v91 = v340;
        v344(v237, v236);
        sub_1001B603C(v241, v91, &qword_100375980, &qword_1002EFA90);
        v238 = 0;
      }

      else
      {
        v238 = 1;
        v91 = v340;
      }

      v242 = *(v347 + 56);
      v347 += 56;
      v361 = v242;
      v242(v91, v238, 1, v356);
      v107 = *(v111 + 16);
      v89 = v358;
      if (!v107)
      {
        v1 = _swiftEmptyArrayStorage;
LABEL_141:
        v250 = v1[2];

        v251 = v353;
        v252 = v346;
        if (v250)
        {
          if (v345[13])
          {
            sub_1001BAE28(0, 0xE000000000000000, v346);
          }

          else
          {
            v366 = *(v345 + 12);
            v255 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1001BAE28(v255, v256, v252);
          }

          (v348)(v355, v252, v251);
          swift_storeEnumTagMultiPayload();
          v366 = &type metadata for Text;
          v367 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v257 = v300;
          _ConditionalContent<>.init(storage:)();
          v254 = v339;
          v344(v252, v251);
          sub_1001B603C(v257, v254, &qword_100375980, &qword_1002EFA90);
          v253 = 0;
        }

        else
        {
          v253 = 1;
          v254 = v339;
        }

        v361(v254, v253, 1, v356);
        v91 = *(v111 + 16);
        v89 = v358;
        if (!v91)
        {
          v1 = _swiftEmptyArrayStorage;
LABEL_165:
          v265 = v1[2];

          v267 = v352;
          v266 = v353;
          v268 = v346;
          if (v265)
          {
            v269 = v331;
            if (v345[15])
            {
              sub_1001BAE28(0, 0xE000000000000000, v346);
            }

            else
            {
              v366 = *(v345 + 14);
              v271 = dispatch thunk of CustomStringConvertible.description.getter();
              sub_1001BAE28(v271, v272, v268);
            }

            (v348)(v355, v268, v266);
            swift_storeEnumTagMultiPayload();
            v366 = &type metadata for Text;
            v367 = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
            v273 = v299;
            _ConditionalContent<>.init(storage:)();
            v344(v268, v266);
            sub_1001B603C(v273, v269, &qword_100375980, &qword_1002EFA90);
            v270 = 0;
          }

          else
          {
            v270 = 1;
            v269 = v331;
          }

          v274 = 1;
          v361(v269, v270, 1, v356);
          if ((*(v110 + 4) != 1684099177 || *(v110 + 5) != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_1001BAE28(0, 0xE000000000000000, v319);
            v274 = 0;
          }

          v275 = v319;
          (*(v267 + 56))(v319, v274, 1, v266);
          v276 = v329;
          sub_1001AC934(v343, v329, &qword_1003759B0, &qword_1002EFAD0);
          v277 = v336;
          sub_1001AC934(v342, v336, &qword_100375988, &qword_1002EFA98);
          v278 = v330;
          sub_1001AC934(v341, v330, &qword_100375968, &qword_1002EFA78);
          sub_1001AC934(v340, v337, &qword_100375948, &qword_1002EFA58);
          v279 = v332;
          sub_1001AC934(v339, v332, &qword_100375948, &qword_1002EFA58);
          v280 = v309;
          sub_1001AC934(v269, v309, &qword_100375948, &qword_1002EFA58);
          v281 = v310;
          sub_1001AC934(v275, v310, &qword_100375938, &qword_1002EFA48);
          v113 = v333;
          sub_1001AC934(v276, v333, &qword_1003759B0, &qword_1002EFAD0);
          v282 = sub_1001A551C(&qword_100375A00, &unk_1002EFAF0);
          sub_1001AC934(v277, v113 + v282[12], &qword_100375988, &qword_1002EFA98);
          sub_1001AC934(v278, v113 + v282[16], &qword_100375968, &qword_1002EFA78);
          v283 = v337;
          sub_1001AC934(v337, v113 + v282[20], &qword_100375948, &qword_1002EFA58);
          sub_1001AC934(v279, v113 + v282[24], &qword_100375948, &qword_1002EFA58);
          sub_1001AC934(v280, v113 + v282[28], &qword_100375948, &qword_1002EFA58);
          sub_1001AC934(v281, v113 + v282[32], &qword_100375938, &qword_1002EFA48);
          sub_1001AC99C(v275, &qword_100375938, &qword_1002EFA48);
          sub_1001AC99C(v331, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v339, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v340, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v341, &qword_100375968, &qword_1002EFA78);
          sub_1001AC99C(v342, &qword_100375988, &qword_1002EFA98);
          sub_1001AC99C(v343, &qword_1003759B0, &qword_1002EFAD0);
          sub_1001BB7C4(v345);
          sub_1001AC99C(v281, &qword_100375938, &qword_1002EFA48);
          sub_1001AC99C(v280, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v332, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v283, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v330, &qword_100375968, &qword_1002EFA78);
          sub_1001AC99C(v336, &qword_100375988, &qword_1002EFA98);
          sub_1001AC99C(v329, &qword_1003759B0, &qword_1002EFAD0);
          v112 = 0;
          goto LABEL_176;
        }

        v107 = 0;
        v1 = _swiftEmptyArrayStorage;
        v80 = 0x7FFFFFFFLL;
        while (v107 < *(v111 + 16))
        {
          v258 = (v89[80] + 32) & ~v89[80];
          v90 = *(v89 + 9);
          v75 = v111;
          v259 = v111 + v258 + v90 * v107;
          v260 = v359;
          sub_1001BB760(v259, v359);
          v261 = *v260;
          if (*(v260 + 8))
          {
            v261 = 0;
          }

          if (v261 < 0xFFFFFFFF80000000)
          {
            goto LABEL_184;
          }

          if (v261 > 0x7FFFFFFF)
          {
            goto LABEL_185;
          }

          if (v110[20] & 1) != 0 || *(v110 + 39) != v261 || (*(v260 + 120))
          {
            sub_1001BB7C4(v260);
            v111 = v75;
          }

          else
          {
            sub_1001BB4B8(v260, v349);
            v262 = swift_isUniquelyReferenced_nonNull_native();
            v366 = v1;
            if ((v262 & 1) == 0)
            {
              sub_1001F5438(0, v1[2] + 1, 1);
              v1 = v366;
            }

            v111 = v75;
            v264 = v1[2];
            v263 = v1[3];
            if (v264 >= v263 >> 1)
            {
              sub_1001F5438((v263 > 1), v264 + 1, 1);
              v1 = v366;
            }

            v1[2] = v264 + 1;
            sub_1001BB4B8(v349, v1 + v258 + v264 * v90);
            v110 = v357;
            v89 = v358;
          }

          if (v91 == ++v107)
          {
            goto LABEL_165;
          }
        }

        goto LABEL_183;
      }

      v75 = 0;
      v1 = _swiftEmptyArrayStorage;
      v80 = 0x7FFFFFFFLL;
      while (v75 < *(v111 + 16))
      {
        v90 = (v89[80] + 32) & ~v89[80];
        v243 = *(v89 + 9);
        v91 = v111;
        v244 = v111 + v90 + v243 * v75;
        v245 = v360;
        sub_1001BB760(v244, v360);
        v246 = *v245;
        if (*(v245 + 8))
        {
          v246 = 0;
        }

        if (v246 < 0xFFFFFFFF80000000)
        {
          goto LABEL_181;
        }

        if (v246 > 0x7FFFFFFF)
        {
          goto LABEL_182;
        }

        if (v110[20] & 1) != 0 || *(v110 + 39) != v246 || (*(v245 + 104))
        {
          sub_1001BB7C4(v245);
          v111 = v91;
        }

        else
        {
          sub_1001BB4B8(v245, v350);
          v247 = swift_isUniquelyReferenced_nonNull_native();
          v366 = v1;
          if ((v247 & 1) == 0)
          {
            sub_1001F5438(0, v1[2] + 1, 1);
            v1 = v366;
          }

          v111 = v91;
          v249 = v1[2];
          v248 = v1[3];
          if (v249 >= v248 >> 1)
          {
            sub_1001F5438((v248 > 1), v249 + 1, 1);
            v1 = v366;
          }

          v1[2] = v249 + 1;
          sub_1001BB4B8(v350, v1 + v90 + v249 * v243);
          v110 = v357;
          v89 = v358;
        }

        if (v107 == ++v75)
        {
          goto LABEL_141;
        }
      }
    }

    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    swift_once();
  }

  v145 = v110[6];
  *v138.i64 = v145;
  *v139.i64 = *v138.i64 - trunc(*v138.i64);
  v146.f64[0] = NAN;
  v146.f64[1] = NAN;
  v147 = v346;
  if (*vbslq_s8(vnegq_f64(v146), v139, v138).i64 != 0.0)
  {
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_1002EED40;
    *(v152 + 56) = &type metadata for Double;
    *(v152 + 64) = &protocol witness table for Double;
    *(v152 + 32) = v145;
    v153 = String.init(format:_:)();
    sub_1001BAE28(v153, v154, v147);

    v155 = v352;
    v348 = *(v352 + 16);
    (v348)(v355, v147, v80);
    swift_storeEnumTagMultiPayload();
    v366 = &type metadata for Text;
    v367 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v148 = v298;
    v149 = v155;
LABEL_29:
    _ConditionalContent<>.init(storage:)();
    v344 = *(v149 + 8);
    v344(v147, v80);
    sub_1001AC934(v148, v335, &qword_100375980, &qword_1002EFA90);
    swift_storeEnumTagMultiPayload();
    sub_1001BB6AC();
    v366 = &type metadata for Text;
    v367 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v143 = v346;
    v156 = v352;
    _ConditionalContent<>.init(storage:)();
    v144 = v156;
    sub_1001AC99C(v148, &qword_100375980, &qword_1002EFA90);
    v110 = v345;
    v89 = v358;
    v142 = v328;
    goto LABEL_30;
  }

  v148 = v298;
  if ((~*&v145 & 0x7FF0000000000000) != 0)
  {
    v149 = v352;
    if (v145 <= -9.22337204e18)
    {
      goto LABEL_191;
    }

    if (v145 >= 9.22337204e18)
    {
      goto LABEL_192;
    }

    v366 = v145;
    v150 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_1001BAE28(v150, v151, v147);

    v348 = *(v149 + 16);
    (v348)(v355, v147, v80);
    swift_storeEnumTagMultiPayload();
    v366 = &type metadata for Text;
    v367 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    goto LABEL_29;
  }

  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
  return result;
}

void sub_1001BAD0C(uint64_t a1, uint64_t a2)
{
  if (qword_100375020 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a1 = v8;
    a2 = v9;
  }

  v2 = qword_100382508;
  v10 = a1;
  v11 = a2;
  v3 = sub_1001A56A0();
  v4 = v2;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  sub_10021AA10(v5, v6);

  v7 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:{1, &type metadata for String, v3, v3, v3, 0, 0xE000000000000000, 1684955458, 0xE400000000000000, v10, v11}];
  [v7 impactOccurred];
}

uint64_t sub_1001BAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v5 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v27 = a1;
  v28 = a2;
  sub_1001A56A0();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.Weight.regular.getter();
  v13 = enum case for Font.Design.default(_:);
  v14 = type metadata accessor for Font.Design();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  static Font.system(size:weight:design:)();
  sub_1001AC99C(v7, &qword_1003753E8, &unk_1002EFAB0);
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v15) = v19;
  v21 = v20;

  sub_1001ACFEC(v8, v10, v12 & 1);

  v22 = swift_allocObject();
  *(v22 + 16) = v25;
  *(v22 + 24) = a2;
  v27 = v16;
  v28 = v18;
  LOBYTE(v15) = v15 & 1;
  v29 = v15;
  v30 = v21;

  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001ACFEC(v16, v18, v15);
}

void sub_1001BB098(uint64_t a1, uint64_t a2)
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v4 = qword_100382508;
  sub_10021AA10(a1, a2);

  v5 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v5 impactOccurred];
}

uint64_t sub_1001BB160@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Icon();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for LabelStyleConfiguration.Title();
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(sub_1001A551C(&qword_100375A30, &qword_1002EFBA0) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1001BB3F0@<X0>(uint64_t a9@<X8>)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0x3FF0000000000000;
  *(a9 + 16) = 0;
  v10 = sub_1001A551C(&qword_100375A28, &qword_1002EFB98);
  return sub_1001BB160((a9 + *(v10 + 44)));
}

uint64_t sub_1001BB448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BB4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMBandInfoDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001BB51C()
{
  result = qword_1003759C0;
  if (!qword_1003759C0)
  {
    sub_1001A55C8(&qword_1003759A0, &qword_1002EFAC0);
    sub_1001A55C8(&qword_1003752F8, &qword_1002EF790);
    sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790, &protocol conformance descriptor for Label<A, B>);
    sub_1001BB658();
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_1003759D0, &qword_1003759D8, &qword_1002EFAE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003759C0);
  }

  return result;
}

unint64_t sub_1001BB658()
{
  result = qword_1003759C8;
  if (!qword_1003759C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003759C8);
  }

  return result;
}

unint64_t sub_1001BB6AC()
{
  result = qword_1003759E0;
  if (!qword_1003759E0)
  {
    sub_1001A55C8(&qword_100375980, &qword_1002EFA90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003759E0);
  }

  return result;
}

uint64_t sub_1001BB760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMBandInfoDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BB7C4(uint64_t a1)
{
  v2 = type metadata accessor for FTMBandInfoDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BB828()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001BB884()
{
  result = qword_100375A10;
  if (!qword_100375A10)
  {
    sub_1001A55C8(&qword_100375A18, &qword_1002EFB58);
    sub_1001AD0C8(&qword_100375A20, &qword_1003759B8, &qword_1002EFAD8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375A10);
  }

  return result;
}

uint64_t sub_1001BB9C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v372 = a2;
  v3 = type metadata accessor for FTMBandInfoDataModel(0);
  v384 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v396 = &v363 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v391 = &v363 - v6;
  __chkstk_darwin(v7);
  v397 = &v363 - v8;
  __chkstk_darwin(v9);
  v393 = &v363 - v10;
  __chkstk_darwin(v11);
  v398 = &v363 - v12;
  __chkstk_darwin(v13);
  v394 = &v363 - v14;
  __chkstk_darwin(v15);
  v387 = &v363 - v16;
  __chkstk_darwin(v17);
  v19 = &v363 - v18;
  v20 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v363 - v21;
  if (qword_100375018 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v405 = qword_100382500;
    v385 = a1;
    LODWORD(v386) = sub_10020C300(a1);
    *&v446 = 1684955458;
    *(&v446 + 1) = 0xE400000000000000;
    v404 = sub_1001A56A0();
    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    static Color.blue.getter();
    v388 = Text.foregroundColor(_:)();
    v383 = v28;
    v30 = v29;
    v381 = v31;

    sub_1001ACFEC(v23, v25, v27 & 1);

    static Font.Weight.semibold.getter();
    v32 = enum case for Font.Design.default(_:);
    LODWORD(v403) = enum case for Font.Design.default(_:);
    v33 = type metadata accessor for Font.Design();
    v34 = *(v33 - 8);
    v35 = *(v34 + 104);
    v400 = v34 + 104;
    v402 = v35;
    v35(v22, v32, v33);
    v401 = *(v34 + 56);
    v401(v22, 0, 1, v33);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v22, &qword_1003753E8, &unk_1002EFAB0);
    v36 = v388;
    v37 = v383;
    v382 = Text.font(_:)();
    v389 = v38;
    v390 = v39;
    v378 = v40;

    sub_1001ACFEC(v36, v37, v30 & 1);

    *&v446 = 22338;
    *(&v446 + 1) = 0xE200000000000000;
    v41 = Text.init<A>(_:)();
    v43 = v42;
    v45 = v44;
    static Color.blue.getter();
    v383 = Text.foregroundColor(_:)();
    v379 = v46;
    LODWORD(v376) = v47;
    v377 = v48;

    sub_1001ACFEC(v41, v43, v45 & 1);

    static Font.Weight.semibold.getter();
    v402(v22, v403, v33);
    v395 = v33;
    v399 = v34 + 56;
    v401(v22, 0, 1, v33);
    static Font.system(size:weight:design:)();
    v392 = v22;
    sub_1001AC99C(v22, &qword_1003753E8, &unk_1002EFAB0);
    LOBYTE(v37) = v376;
    v49 = v383;
    v50 = v379;
    v380 = Text.font(_:)();
    v381 = v51;
    v388 = v52;
    v371 = v53;

    sub_1001ACFEC(v49, v50, v37 & 1);

    if (v386 & 0x100) != 0 || (v386)
    {
      *&v446 = 4407628;
      *(&v446 + 1) = 0xE300000000000000;
      v92 = Text.init<A>(_:)();
      v94 = v93;
      v96 = v95;
      static Color.blue.getter();
      v383 = Text.foregroundColor(_:)();
      v98 = v97;
      v100 = v99;
      v379 = v101;

      sub_1001ACFEC(v92, v94, v96 & 1);

      static Font.Weight.semibold.getter();
      v102 = v392;
      v103 = v395;
      v402(v392, v403, v395);
      v401(v102, 0, 1, v103);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v102, &qword_1003753E8, &unk_1002EFAB0);
      v104 = v383;
      v370 = Text.font(_:)();
      v387 = v105;
      v369 = v106;
      *&v373 = v107;

      sub_1001ACFEC(v104, v98, v100 & 1);

      if ((v386 & 0x100) != 0)
      {
        *&v446 = 5129043;
        *(&v446 + 1) = 0xE300000000000000;
        v108 = Text.init<A>(_:)();
        v110 = v109;
        v112 = v111;
        static Color.blue.getter();
        v383 = Text.foregroundColor(_:)();
        v379 = v113;
        LODWORD(v376) = v114;
        v377 = v115;

        sub_1001ACFEC(v108, v110, v112 & 1);

        static Font.Weight.semibold.getter();
        v402(v102, v403, v103);
        v401(v102, 0, 1, v103);
        static Font.system(size:weight:design:)();
        sub_1001AC99C(v102, &qword_1003753E8, &unk_1002EFAB0);
        v116 = v376;
        v117 = v383;
        v118 = v379;
        v119 = Text.font(_:)();
        v121 = v120;
        LODWORD(v375) = v122;
        v124 = v123;

        sub_1001ACFEC(v117, v118, v116 & 1);

        v379 = v119;
        v377 = v121;
        v383 = v375 & 1;
        sub_1001A5174(v119, v121, v383);
        v376 = v124;
      }

      else
      {
        v379 = 0;
        v376 = 0;
        v377 = 0;
        v383 = 0;
      }

      *&v446 = 1346589522;
      *(&v446 + 1) = 0xE400000000000000;
      v125 = Text.init<A>(_:)();
      v127 = v126;
      v129 = v128;
      static Color.blue.getter();
      v130 = Text.foregroundColor(_:)();
      v368 = v131;
      v133 = v132;

      sub_1001ACFEC(v125, v127, v129 & 1);

      static Font.Weight.semibold.getter();
      v134 = v395;
      v402(v102, v403, v395);
      v401(v102, 0, 1, v134);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v102, &qword_1003753E8, &unk_1002EFAB0);
      v135 = v368;
      v136 = Text.font(_:)();
      v374 = v137;
      v375 = v136;
      *(&v373 + 1) = v138;
      LODWORD(v364) = v139;

      sub_1001ACFEC(v130, v135, v133 & 1);

      *&v446 = 810435397;
      *(&v446 + 1) = 0xE400000000000000;
      v140 = Text.init<A>(_:)();
      v142 = v141;
      LOBYTE(v135) = v143;
      static Color.blue.getter();
      v367 = Text.foregroundColor(_:)();
      v145 = v144;
      LOBYTE(v127) = v146;

      sub_1001ACFEC(v140, v142, v135 & 1);

      static Font.Weight.semibold.getter();
      v147 = v395;
      v402(v102, v403, v395);
      v401(v102, 0, 1, v147);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v102, &qword_1003753E8, &unk_1002EFAB0);
      v148 = v367;
      v149 = Text.font(_:)();
      v151 = v150;
      LOBYTE(v147) = v152;
      v154 = v153;
      v368 = v153;

      sub_1001ACFEC(v148, v145, v127 & 1);

      LODWORD(v145) = v369 & 1;
      v428 = v145;
      v369 = v364 & 1;
      v427 = v364 & 1;
      v426 = v145;
      v425 = v364 & 1;
      v155 = v147 & 1;
      v424 = v147 & 1;
      *&v429 = v370;
      *(&v429 + 1) = v387;
      LOBYTE(v430) = v145;
      v156 = *(&v373 + 1);
      *(&v430 + 1) = v373;
      *&v431 = v379;
      *(&v431 + 1) = v377;
      *&v432 = v383;
      v157 = v375;
      *(&v432 + 1) = v376;
      *&v433 = v375;
      *(&v433 + 1) = *(&v373 + 1);
      LOBYTE(v434) = v364 & 1;
      *(&v434 + 1) = v374;
      *&v435 = v149;
      *(&v435 + 1) = v151;
      LOBYTE(v436) = v424;
      *(&v436 + 1) = v154;
      v408 = v431;
      v409 = v432;
      v406 = v429;
      v407 = v430;
      v412 = v435;
      v413 = v436;
      v410 = v433;
      v411 = v434;
      v158 = v370;
      LODWORD(v367) = v145;
      sub_1001A5174(v370, v387, v145);

      v159 = v156;
      LOBYTE(v156) = v369;
      sub_1001A5174(v157, v159, v369);

      v365 = v151;
      v366 = v149;
      sub_1001A5174(v149, v151, v155);

      sub_1001A5174(v158, v387, v145);

      v160 = v379;
      v161 = v377;
      sub_1001BE028(v379, v377, v383, v376);
      v162 = v375;
      v163 = *(&v373 + 1);
      sub_1001A5174(v375, *(&v373 + 1), v156);

      LODWORD(v364) = v155;
      sub_1001A5174(v149, v151, v155);

      sub_1001ACFEC(v149, v151, v155);

      sub_1001ACFEC(v162, v163, v427);

      v164 = v376;
      sub_1001BE06C(v160, v161, v383, v376);
      v165 = v370;
      sub_1001ACFEC(v370, v387, v428);

      v441 = v410;
      v442 = v411;
      v443 = v412;
      v444 = v413;
      v437 = v406;
      v438 = v407;
      v439 = v408;
      v440 = v409;
      sub_1001BE0B8(&v437);
      v452 = v443;
      v453 = v444;
      v454 = v445;
      v448 = v439;
      v449 = v440;
      v450 = v441;
      v451 = v442;
      v446 = v437;
      v447 = v438;
      sub_1001AC934(&v429, &v415, &qword_100375A78, &qword_1002EFC60);
      sub_1001A551C(&qword_100375A50, &qword_1002EFC48);
      sub_1001A551C(&qword_100375A58, &qword_1002EFC50);
      sub_1001BE0F4(&qword_100375A60, &qword_100375A50, &qword_1002EFC48);
      sub_1001BE0F4(&qword_100375A68, &qword_100375A58, &qword_1002EFC50);
      _ConditionalContent<>.init(storage:)();
      sub_1001BE06C(v379, v377, v383, v164);
      sub_1001AC99C(&v429, &qword_100375A78, &qword_1002EFC60);
      sub_1001ACFEC(v366, v365, v364);

      sub_1001ACFEC(v375, *(&v373 + 1), v369);

      sub_1001ACFEC(v165, v387, v367);
    }

    else
    {
      *&v446 = 4801360;
      *(&v446 + 1) = 0xE300000000000000;
      v54 = Text.init<A>(_:)();
      v56 = v55;
      v58 = v57;
      static Color.blue.getter();
      v379 = Text.foregroundColor(_:)();
      v374 = v60;
      v375 = v59;
      v62 = v61;

      sub_1001ACFEC(v54, v56, v58 & 1);

      static Font.Weight.semibold.getter();
      v63 = v392;
      v64 = v395;
      v402(v392, v403, v395);
      v401(v63, 0, 1, v64);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v63, &qword_1003753E8, &unk_1002EFAB0);
      v65 = v379;
      v66 = v375;
      v67 = Text.font(_:)();
      v376 = v68;
      v377 = v67;
      v369 = v69;
      v383 = v70;

      sub_1001ACFEC(v65, v66, v62 & 1);

      *&v446 = 1347572562;
      *(&v446 + 1) = 0xE400000000000000;
      v71 = Text.init<A>(_:)();
      v73 = v72;
      v75 = v74;
      static Color.blue.getter();
      v76 = Text.foregroundColor(_:)();
      *&v373 = v77;
      *(&v373 + 1) = v76;
      v79 = v78;
      v370 = v80;

      sub_1001ACFEC(v71, v73, v75 & 1);

      static Font.Weight.semibold.getter();
      v402(v63, v403, v64);
      v401(v63, 0, 1, v64);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v63, &qword_1003753E8, &unk_1002EFAB0);
      v81 = v373;
      v379 = Text.font(_:)();
      v374 = v82;
      v375 = v83;
      LODWORD(v367) = v84;

      sub_1001ACFEC(*(&v81 + 1), v81, v79 & 1);

      v85 = v385[2];
      if (v85)
      {
        v86 = *(v384 + 72);
        *(&v373 + 1) = (*(v384 + 80) + 32) & ~*(v384 + 80);
        v87 = v385 + *(&v373 + 1);
        a1 = _swiftEmptyArrayStorage;
        v22 = v405;
        while (1)
        {
          sub_1001BB760(v87, v19);
          v88 = *v19;
          if (v19[8])
          {
            v88 = 0;
          }

          if (v88 < 0xFFFFFFFF80000000)
          {
            goto LABEL_101;
          }

          if (v88 > 0x7FFFFFFF)
          {
            goto LABEL_102;
          }

          if (v22[160] & 1) != 0 || *(v22 + 39) != v88 || (v19[200])
          {
            sub_1001BB7C4(v19);
          }

          else
          {
            sub_1001BB4B8(v19, v387);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v446 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001F5438(0, a1[2] + 1, 1);
              a1 = v446;
            }

            v91 = a1[2];
            v90 = a1[3];
            if (v91 >= v90 >> 1)
            {
              sub_1001F5438((v90 > 1), v91 + 1, 1);
              a1 = v446;
            }

            a1[2] = v91 + 1;
            sub_1001BB4B8(v387, a1 + *(&v373 + 1) + v91 * v86);
          }

          v87 += v86;
          if (!--v85)
          {
            goto LABEL_25;
          }
        }
      }

      a1 = _swiftEmptyArrayStorage;
LABEL_25:
      v166 = a1[2];

      if (v166)
      {
        *&v446 = 1364349778;
        *(&v446 + 1) = 0xE400000000000000;
        v167 = Text.init<A>(_:)();
        v169 = v168;
        v171 = v170;
        static Color.blue.getter();
        v172 = Text.foregroundColor(_:)();
        v174 = v173;
        LODWORD(v373) = v175;
        v387 = v176;

        sub_1001ACFEC(v167, v169, v171 & 1);

        static Font.Weight.semibold.getter();
        v177 = v392;
        v178 = v395;
        v402(v392, v403, v395);
        v401(v177, 0, 1, v178);
        static Font.system(size:weight:design:)();
        sub_1001AC99C(v177, &qword_1003753E8, &unk_1002EFAB0);
        v179 = Text.font(_:)();
        v181 = v180;
        DWORD2(v373) = v182;
        v184 = v183;

        v185 = v174;
        v186 = v178;
        sub_1001ACFEC(v172, v185, v373 & 1);

        v370 = v179;
        v387 = v181;
        *&v373 = BYTE8(v373) & 1;
        sub_1001A5174(v179, v181, v373);
        *(&v373 + 1) = v184;
      }

      else
      {
        v370 = 0;
        v387 = 0;
        v373 = 0uLL;
        v177 = v392;
        v186 = v395;
      }

      *&v446 = 5394003;
      *(&v446 + 1) = 0xE300000000000000;
      v187 = Text.init<A>(_:)();
      v189 = v188;
      v191 = v190;
      static Color.blue.getter();
      v192 = Text.foregroundColor(_:)();
      v363 = v193;
      v364 = v192;
      v195 = v194;
      v197 = v196;

      sub_1001ACFEC(v187, v189, v191 & 1);

      static Font.Weight.semibold.getter();
      v402(v177, v403, v186);
      v401(v177, 0, 1, v186);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v177, &qword_1003753E8, &unk_1002EFAB0);
      v198 = v364;
      v199 = v195;
      v200 = Text.font(_:)();
      v202 = v201;
      v368 = v201;
      LOBYTE(v189) = v203;
      v205 = v204;

      sub_1001ACFEC(v198, v199, v197 & 1);

      v206 = v369 & 1;
      v428 = v206;
      v369 = v367 & 1;
      v427 = v367 & 1;
      v426 = v206;
      v425 = v367 & 1;
      LODWORD(v367) = v189 & 1;
      v424 = v189 & 1;
      v207 = v376;
      v208 = v377;
      *&v429 = v377;
      *(&v429 + 1) = v376;
      LOBYTE(v430) = v206;
      *(&v430 + 1) = v383;
      v209 = v379;
      *&v431 = v379;
      v210 = v374;
      *(&v431 + 1) = v374;
      LOBYTE(v432) = v425;
      *(&v432 + 1) = v375;
      *&v433 = v370;
      *(&v433 + 1) = v387;
      v434 = v373;
      v365 = v200;
      v366 = v205;
      *&v435 = v200;
      *(&v435 + 1) = v202;
      LOBYTE(v436) = v424;
      *(&v436 + 1) = v205;
      v408 = v431;
      v409 = v432;
      v406 = v429;
      v407 = v430;
      v412 = v435;
      v413 = v436;
      v410 = v433;
      v411 = v373;
      LOBYTE(v202) = v206;
      LODWORD(v364) = v206;
      sub_1001A5174(v377, v376, v206);

      v211 = v369;
      sub_1001A5174(v209, v210, v369);

      v212 = v368;
      v213 = v367;
      sub_1001A5174(v200, v368, v367);

      sub_1001A5174(v208, v207, v202);

      sub_1001A5174(v379, v210, v211);

      v214 = v370;
      v215 = v387;
      v216 = v373;
      sub_1001BE028(v370, v387, v373, *(&v373 + 1));
      v217 = v365;
      sub_1001A5174(v365, v212, v213);

      sub_1001ACFEC(v217, v212, v213);

      sub_1001BE06C(v214, v215, v216, *(&v216 + 1));
      sub_1001ACFEC(v379, v374, v427);

      sub_1001ACFEC(v377, v376, v428);

      v441 = v410;
      v442 = v411;
      v443 = v412;
      v444 = v413;
      v437 = v406;
      v438 = v407;
      v439 = v408;
      v440 = v409;
      sub_1001BE0B0(&v437);
      v452 = v443;
      v453 = v444;
      v454 = v445;
      v448 = v439;
      v449 = v440;
      v450 = v441;
      v451 = v442;
      v446 = v437;
      v447 = v438;
      sub_1001AC934(&v429, &v415, &qword_100375A48, &qword_1002EFC40);
      sub_1001A551C(&qword_100375A50, &qword_1002EFC48);
      sub_1001A551C(&qword_100375A58, &qword_1002EFC50);
      sub_1001BE0F4(&qword_100375A60, &qword_100375A50, &qword_1002EFC48);
      sub_1001BE0F4(&qword_100375A68, &qword_100375A58, &qword_1002EFC50);
      _ConditionalContent<>.init(storage:)();
      sub_1001BE06C(v214, v387, v373, *(&v373 + 1));
      sub_1001AC99C(&v429, &qword_100375A48, &qword_1002EFC40);
      sub_1001ACFEC(v365, v368, v367);

      sub_1001ACFEC(v379, v374, v369);

      sub_1001ACFEC(v377, v376, v364);
    }

    v452 = v421;
    v453 = v422;
    v454 = v423;
    v448 = v417;
    v449 = v418;
    v450 = v419;
    v451 = v420;
    v446 = v415;
    v447 = v416;
    v19 = v385[2];
    v22 = v405;
    v218 = v394;
    if (v19)
    {
      v219 = *(v384 + 72);
      v387 = (*(v384 + 80) + 32) & ~*(v384 + 80);
      v220 = v385 + v387;
      a1 = _swiftEmptyArrayStorage;
      v221 = v19;
      while (1)
      {
        sub_1001BB760(v220, v218);
        v222 = *v218;
        if (*(v218 + 8))
        {
          v222 = 0;
        }

        if (v222 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v222 > 0x7FFFFFFF)
        {
          goto LABEL_96;
        }

        if (v22[160] & 1) != 0 || *(v22 + 39) != v222 || (*(v218 + 88))
        {
          sub_1001BB7C4(v218);
        }

        else
        {
          sub_1001BB4B8(v218, v398);
          v223 = swift_isUniquelyReferenced_nonNull_native();
          *&v437 = a1;
          if ((v223 & 1) == 0)
          {
            sub_1001F5438(0, a1[2] + 1, 1);
            a1 = v437;
          }

          v225 = a1[2];
          v224 = a1[3];
          if (v225 >= v224 >> 1)
          {
            sub_1001F5438((v224 > 1), v225 + 1, 1);
            a1 = v437;
          }

          a1[2] = v225 + 1;
          sub_1001BB4B8(v398, a1 + v387 + v225 * v219);
          v22 = v405;
          v218 = v394;
        }

        v220 += v219;
        if (!--v221)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_46:
    v226 = a1[2];

    if (v226)
    {
      *&v437 = 0x4E434652412D524ELL;
      *(&v437 + 1) = 0xE800000000000000;
      v227 = Text.init<A>(_:)();
      v229 = v228;
      v231 = v230;
      static Color.blue.getter();
      v232 = Text.foregroundColor(_:)();
      v234 = v233;
      v236 = v235;
      v398 = v237;

      sub_1001ACFEC(v227, v229, v231 & 1);

      static Font.Weight.semibold.getter();
      v238 = v392;
      v239 = v395;
      v402(v392, v403, v395);
      v401(v238, 0, 1, v239);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v238, &qword_1003753E8, &unk_1002EFAB0);
      LOBYTE(v238) = v236;
      v240 = Text.font(_:)();
      v242 = v241;
      LODWORD(v394) = v243;
      v245 = v244;

      v22 = v405;
      sub_1001ACFEC(v232, v234, v238 & 1);

      v398 = v240;
      v379 = v242;
      v387 = v394 & 1;
      sub_1001A5174(v240, v242, v387);
      v394 = v245;

      v246 = v393;
      if (v19)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v398 = 0;
      v379 = 0;
      v387 = 0;
      v394 = 0;
      v246 = v393;
      if (v19)
      {
LABEL_48:
        v247 = *(v384 + 72);
        v383 = (*(v384 + 80) + 32) & ~*(v384 + 80);
        v248 = v385 + v383;
        a1 = _swiftEmptyArrayStorage;
        v249 = v19;
        while (1)
        {
          sub_1001BB760(v248, v246);
          v250 = *v246;
          if (*(v246 + 8))
          {
            v250 = 0;
          }

          if (v250 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v250 > 0x7FFFFFFF)
          {
            goto LABEL_98;
          }

          if (v22[160] & 1) != 0 || *(v22 + 39) != v250 || (*(v246 + 104))
          {
            sub_1001BB7C4(v246);
          }

          else
          {
            sub_1001BB4B8(v246, v397);
            v251 = swift_isUniquelyReferenced_nonNull_native();
            *&v437 = a1;
            if ((v251 & 1) == 0)
            {
              sub_1001F5438(0, a1[2] + 1, 1);
              a1 = v437;
            }

            v253 = a1[2];
            v252 = a1[3];
            if (v253 >= v252 >> 1)
            {
              sub_1001F5438((v252 > 1), v253 + 1, 1);
              a1 = v437;
            }

            a1[2] = v253 + 1;
            sub_1001BB4B8(v397, a1 + v383 + v253 * v247);
            v22 = v405;
            v246 = v393;
          }

          v248 += v247;
          if (!--v249)
          {
            goto LABEL_65;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_65:
    v254 = a1[2];

    if (!v254)
    {
      v383 = 0;
      v377 = 0;
      v386 = 0;
      v397 = 0;
      v275 = v391;
      if (!v19)
      {
        break;
      }

      goto LABEL_69;
    }

    v255 = 0x4E434652412D45;
    if ((v386 & 0x100) != 0)
    {
      v255 = 0x4E434652412D55;
    }

    *&v437 = v255;
    *(&v437 + 1) = 0xE700000000000000;
    v256 = Text.init<A>(_:)();
    v258 = v257;
    v260 = v259;
    static Color.blue.getter();
    v261 = Text.foregroundColor(_:)();
    v263 = v262;
    v265 = v264;
    v397 = v266;

    sub_1001ACFEC(v256, v258, v260 & 1);

    static Font.Weight.semibold.getter();
    v267 = v392;
    v268 = v395;
    v402(v392, v403, v395);
    v401(v267, 0, 1, v268);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v267, &qword_1003753E8, &unk_1002EFAB0);
    LOBYTE(v267) = v265;
    v269 = Text.font(_:)();
    v271 = v270;
    LODWORD(v393) = v272;
    v274 = v273;

    v22 = v405;
    sub_1001ACFEC(v261, v263, v267 & 1);

    v383 = v269;
    v377 = v271;
    v386 = v393 & 1;
    sub_1001A5174(v269, v271, v386);
    v397 = v274;

    v275 = v391;
    if (!v19)
    {
      break;
    }

LABEL_69:
    v276 = (*(v384 + 80) + 32) & ~*(v384 + 80);
    v277 = *(v384 + 72);
    v278 = v385 + v276;
    a1 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1001BB760(v278, v275);
      v279 = *v275;
      if (*(v275 + 8))
      {
        v279 = 0;
      }

      if (v279 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v279 > 0x7FFFFFFF)
      {
        goto LABEL_100;
      }

      if (v22[160] & 1) != 0 || *(v22 + 39) != v279 || (*(v275 + 120))
      {
        sub_1001BB7C4(v275);
      }

      else
      {
        sub_1001BB4B8(v275, v396);
        v280 = swift_isUniquelyReferenced_nonNull_native();
        *&v437 = a1;
        if ((v280 & 1) == 0)
        {
          sub_1001F5438(0, a1[2] + 1, 1);
          a1 = v437;
        }

        v282 = a1[2];
        v281 = a1[3];
        if (v282 >= v281 >> 1)
        {
          sub_1001F5438((v281 > 1), v282 + 1, 1);
          a1 = v437;
        }

        a1[2] = v282 + 1;
        sub_1001BB4B8(v396, a1 + v276 + v282 * v277);
        v22 = v405;
        v275 = v391;
      }

      v278 += v277;
      if (!--v19)
      {
        goto LABEL_86;
      }
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_86:
  v283 = a1[2];

  if (v283)
  {
    *&v437 = 0x4E43465241;
    *(&v437 + 1) = 0xE500000000000000;
    v284 = Text.init<A>(_:)();
    v286 = v285;
    v288 = v287;
    static Color.blue.getter();
    v289 = Text.foregroundColor(_:)();
    v291 = v290;
    v293 = v292;

    sub_1001ACFEC(v284, v286, v288 & 1);

    static Font.Weight.semibold.getter();
    v294 = v392;
    v295 = v395;
    v402(v392, v403, v395);
    v401(v294, 0, 1, v295);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v294, &qword_1003753E8, &unk_1002EFAB0);
    v296 = Text.font(_:)();
    v298 = v297;
    LOBYTE(v294) = v299;
    v301 = v300;

    v302 = v293 & 1;
    v22 = v405;
    sub_1001ACFEC(v289, v291, v302);

    v396 = v296;
    v391 = v298;
    v385 = (v294 & 1);
    sub_1001A5174(v296, v298, v294 & 1);
    v393 = v301;
  }

  else
  {
    v396 = 0;
    v391 = 0;
    v385 = 0;
    v393 = 0;
  }

  v303 = v378;
  if (*(v22 + 4) == 1684099177 && *(v22 + 5) == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v304 = 0;
    v305 = 0;
    v306 = 0;
    v307 = 0;
  }

  else
  {
    *&v437 = 0;
    *(&v437 + 1) = 0xE000000000000000;
    v308 = Text.init<A>(_:)();
    v309 = v392;
    v311 = v310;
    v313 = v312;
    static Color.blue.getter();
    v314 = Text.foregroundColor(_:)();
    v316 = v315;
    v318 = v317;
    v405 = v319;

    sub_1001ACFEC(v308, v311, v313 & 1);

    static Font.Weight.semibold.getter();
    v320 = v395;
    v402(v309, v403, v395);
    v401(v309, 0, 1, v320);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v309, &qword_1003753E8, &unk_1002EFAB0);
    v321 = Text.font(_:)();
    v323 = v322;
    LOBYTE(v320) = v324;
    v326 = v325;

    sub_1001ACFEC(v314, v316, v318 & 1);

    sub_1001A5174(v321, v323, v320 & 1);

    v306 = (v320 & 1);
    v303 = v378;
    v307 = v326;
    v305 = v323;
    v304 = v321;
  }

  v402 = v306;
  v403 = v307;
  v404 = v305;
  v405 = v304;
  v412 = v452;
  v413 = v453;
  v408 = v448;
  v409 = v449;
  v410 = v450;
  v411 = v451;
  v406 = v446;
  v407 = v447;
  v327 = v453;
  v421 = v452;
  v422 = v453;
  v328 = v448;
  v329 = v449;
  v417 = v448;
  v418 = v449;
  v330 = v450;
  v331 = v451;
  v419 = v450;
  v420 = v451;
  v333 = v446;
  v332 = v447;
  v415 = v446;
  v416 = v447;
  v334 = v372;
  *(v372 + 160) = v452;
  *(v334 + 176) = v327;
  *(v334 + 96) = v328;
  *(v334 + 112) = v329;
  *(v334 + 128) = v330;
  *(v334 + 144) = v331;
  v335 = v303 & 1;
  LOBYTE(v429) = v303 & 1;
  v414 = v454;
  v428 = v303 & 1;
  v336 = v371 & 1;
  v427 = v371 & 1;
  LODWORD(v401) = v371 & 1;
  v423 = v454;
  v337 = v381;
  v338 = v382;
  v339 = v389;
  *v334 = v382;
  *(v334 + 8) = v339;
  *(v334 + 16) = v303 & 1;
  v340 = v380;
  *(v334 + 24) = v390;
  *(v334 + 32) = v340;
  *(v334 + 40) = v388;
  *(v334 + 48) = v336;
  *(v334 + 56) = v337;
  *(v334 + 192) = v454;
  *(v334 + 64) = v333;
  *(v334 + 80) = v332;
  v341 = v379;
  *(v334 + 200) = v398;
  *(v334 + 208) = v341;
  v342 = v394;
  *(v334 + 216) = v387;
  *(v334 + 224) = v342;
  v343 = v383;
  v344 = v377;
  *(v334 + 232) = v383;
  *(v334 + 240) = v344;
  v345 = v386;
  *(v334 + 248) = v386;
  v346 = v345;
  v347 = v396;
  *(v334 + 256) = v397;
  *(v334 + 264) = v347;
  v348 = v391;
  v349 = v385;
  *(v334 + 272) = v391;
  *(v334 + 280) = v349;
  *(v334 + 288) = v393;
  *(v334 + 296) = v304;
  *(v334 + 304) = v305;
  *(v334 + 312) = v306;
  *(v334 + 320) = v307;
  sub_1001AC934(&v446, &v437, &qword_100375A70, &qword_1002EFC58);
  sub_1001A5174(v338, v389, v335);

  sub_1001A5174(v340, v388, v336);

  sub_1001AC934(&v415, &v437, &qword_100375A70, &qword_1002EFC58);
  v350 = v379;
  sub_1001BE028(v398, v379, v387, v394);
  v351 = v343;
  v352 = v343;
  LOBYTE(v343) = v346;
  v386 = v346;
  v353 = v346;
  v354 = v397;
  sub_1001BE028(v352, v344, v353, v397);
  v355 = v396;
  v356 = v348;
  v391 = v348;
  v357 = v348;
  LOBYTE(v348) = v385;
  v358 = v393;
  sub_1001BE028(v396, v357, v385, v393);
  sub_1001BE028(v405, v404, v402, v403);
  sub_1001BE06C(v355, v356, v348, v358);
  sub_1001BE06C(v351, v344, v343, v354);
  LOBYTE(v358) = v387;
  sub_1001BE06C(v398, v350, v387, v394);
  sub_1001AC99C(&v446, &qword_100375A70, &qword_1002EFC58);
  v360 = v404;
  v359 = v405;
  LOBYTE(v356) = v402;
  v361 = v403;
  sub_1001BE06C(v405, v404, v402, v403);
  sub_1001BE06C(v359, v360, v356, v361);
  sub_1001BE06C(v396, v391, v348, v393);
  sub_1001BE06C(v351, v344, v386, v397);
  sub_1001BE06C(v398, v350, v358, v394);
  v443 = v412;
  v444 = v413;
  v445 = v414;
  v439 = v408;
  v440 = v409;
  v441 = v410;
  v442 = v411;
  v437 = v406;
  v438 = v407;
  sub_1001AC99C(&v437, &qword_100375A70, &qword_1002EFC58);
  sub_1001ACFEC(v380, v388, v401);

  sub_1001ACFEC(v382, v389, v429);
}

double sub_1001BE028(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001A5174(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001BE06C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001ACFEC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001BE0F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BE15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001BE230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FTMCellMonitorHardwareDetailModel(uint64_t a1)
{
  result = qword_100375AE8;
  if (!qword_100375AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BE338(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001BE3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001BE3CC()
{
  if (!qword_100375AF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100375AF8);
    }
  }
}

uint64_t sub_1001BE41C()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x70795465756C6176;
  }

  if (*v0)
  {
    v1 = 7955819;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001BE484@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001BEEA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001BE4C4(uint64_t a1)
{
  v2 = sub_1001BEC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BE500(uint64_t a1)
{
  v2 = sub_1001BEC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BE53C(void *a1)
{
  v3 = sub_1001A551C(&qword_100375B50, &qword_1002EFD28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1001A5610(a1, a1[3]);
  sub_1001BEC34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1001BED48(&qword_100375B58, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001BE748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for UUID();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001A551C(&qword_100375B38, &qword_1002EFD20);
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v29 - v8;
  v33 = type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
  __chkstk_darwin(v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = a1[3];
  v32 = a1;
  sub_1001A5610(a1, v12);
  sub_1001BEC34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v13 = v4;
    v14 = v34;
    sub_1001A5654(v32);
    return (*(v14 + 8))(v11, v13);
  }

  else
  {
    v38 = 0;
    sub_1001BED48(&qword_100375B48, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 40))(v11, v6, v4);
    v37 = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v33;
    v18 = &v11[*(v33 + 20)];
    *v18 = v16;
    v18[1] = v19;
    v36 = 2;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = &v11[*(v17 + 24)];
    *v21 = v20;
    v21[1] = v22;
    v35 = 3;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v24;
    v25 = v23;
    v26 = &v11[*(v17 + 28)];
    (*(v7 + 8))(v9, v31);
    v28 = v29;
    v27 = v30;
    *v26 = v25;
    *(v26 + 1) = v28;
    sub_1001BEC88(v11, v27);
    sub_1001A5654(v32);
    return sub_1001BECEC(v11);
  }
}

uint64_t sub_1001BEB68@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1001BEC34()
{
  result = qword_100375B40;
  if (!qword_100375B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B40);
  }

  return result;
}

uint64_t sub_1001BEC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BECEC(uint64_t a1)
{
  v2 = type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BED48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001BEDA0()
{
  result = qword_100375B60;
  if (!qword_100375B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B60);
  }

  return result;
}

unint64_t sub_1001BEDF8()
{
  result = qword_100375B68;
  if (!qword_100375B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B68);
  }

  return result;
}

unint64_t sub_1001BEE50()
{
  result = qword_100375B70;
  if (!qword_100375B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B70);
  }

  return result;
}