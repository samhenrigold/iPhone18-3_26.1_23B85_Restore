unint64_t sub_100105878()
{
  result = qword_1002B41B8;
  if (!qword_1002B41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41B8);
  }

  return result;
}

unint64_t sub_1001058D0()
{
  result = qword_1002B41C0;
  if (!qword_1002B41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41C0);
  }

  return result;
}

unint64_t sub_100105928()
{
  result = qword_1002B41C8;
  if (!qword_1002B41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41C8);
  }

  return result;
}

unint64_t sub_100105980()
{
  result = qword_1002B41D0;
  if (!qword_1002B41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41D0);
  }

  return result;
}

unint64_t sub_1001059D4()
{
  result = qword_1002B41D8;
  if (!qword_1002B41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41D8);
  }

  return result;
}

unint64_t sub_100105A28()
{
  result = qword_1002B41E0;
  if (!qword_1002B41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41E0);
  }

  return result;
}

unint64_t sub_100105A7C()
{
  result = qword_1002B41E8;
  if (!qword_1002B41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41E8);
  }

  return result;
}

uint64_t sub_100105AE4@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;

  return sub_1001F7C08();
}

uint64_t sub_100105B1C(uint64_t a1)
{

  return sub_1001F7C48();
}

void CircularBuffer.init(initialCapacity:)(unint64_t a1, uint64_t a2)
{
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_100056624();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    sub_100106280(a1);
    sub_1000995D4();
    sub_100018460(v5, v6, v7, a2);
    sub_10005053C();
    sub_1001F7968();
    return;
  }

  __break(1u);
}

uint64_t CircularBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    sub_1000D4D04();
    sub_1001F74B8();
    v3 += _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  }

  return v3;
}

void CircularBuffer.append(_:)()
{
  sub_100037AEC();
  v3 = v2;
  v5 = *(v4 + 16);
  sub_10010B340();
  v6 = sub_1001F74B8();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  sub_10010B168();
  v10 = v0[2];
  sub_10007E2C8();
  (*(v11 + 16))(v1, v3, v5);
  sub_100099784();
  sub_100018460(v12, v13, v14, v5);
  sub_10010B030();
  sub_1001F7988();
  sub_1001F78E8();
  v15 = *v0;
  sub_10010B2FC();
  sub_10010AA80(v16, v17);
  sub_10010B2D4();
  v19(v15 + v18 + *(v8 + 32) * v10, v1, v6);
  CircularBuffer.advanceTailIdx(by:)(1);
  if (v0[1] == v0[2])
  {
    CircularBuffer._doubleCapacity()();
  }

  sub_100037A50();
}

Swift::Void __swiftcall CircularBuffer.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  sub_10010B19C();
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v5);
  sub_100056624();
  if (keepingCapacity)
  {
    v6 = CircularBuffer.count.getter(*v2, v2[1], v2[2]);
    CircularBuffer.removeFirst(_:)(v6);
  }

  else
  {
    sub_1001F7988();
    sub_1001F7958(0);
    sub_1000995D4();
    sub_100018460(v7, v8, v9, v4);
    sub_10005053C();
    sub_1001F7948();
  }

  v2[1] = 0;
  v2[2] = 0;
}

uint64_t CircularBuffer.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v8 = CircularBuffer.startIndex.getter(a1, a2, a3);
    sub_10010AF38(v8);
    CircularBuffer.subscript.getter(a4, a5);
    v7 = 0;
  }

  return sub_100018460(a5, v7, 1, a4);
}

void CircularBuffer.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_10010B19C();
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_100056624();
  CircularBuffer.first.getter(*v2, v2[1], v2[2], v5, v3);
  if (sub_10001C990(v3, 1, v5) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10007E2C8();
    (*(v7 + 32))(a2, v3, v5);
    sub_1001099C8(v2, v5, v8, v9);
  }
}

uint64_t CircularBuffer.capacity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001F74B8();

  return _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
}

void CircularBuffer.prepend(_:)()
{
  sub_100037C08();
  v2 = *(v1 + 16);
  sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_100056624();
  v4 = v0[2];
  v5 = CircularBuffer.indexBeforeHeadIdx()();
  sub_10007E2C8();
  v6 = sub_100075518();
  v7(v6);
  sub_100099784();
  sub_100018460(v8, v9, v10, v2);
  sub_10010B030();
  sub_1001F7988();
  sub_1001F78E8();
  sub_10010AA80(v5, *v0);
  sub_10010B2D4();
  sub_10010B2FC();
  v11();
  CircularBuffer.advanceHeadIdx(by:)(-1);
  if (v0[1] == v4)
  {
    CircularBuffer._doubleCapacity()();
  }

  sub_100037B00();
}

unint64_t CircularBuffer.startIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CircularBuffer.count.getter(a1, a2, a3);
  v5 = CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(a2, v4, a2);
  return sub_10010AF38(v5);
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
  result = sub_10001C990(v8, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10007E2C8();
    return (*(v10 + 32))(a4, v8, a3);
  }

  return result;
}

unint64_t CircularBuffer.index(after:)(uint64_t a1)
{
  v1 = sub_10010B210(a1);
  v6 = CircularBuffer.index(_:offsetBy:)(v1, 1, v2, v3, v4, v5);
  return sub_10010AF38(v6);
}

uint64_t sub_100106280(int a1)
{
  v1 = __clz(a1 - 1);
  if (v1)
  {
    v2 = 1 << -v1;
  }

  else
  {
    v2 = 0;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001062A8(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = __clz(result - 1);
    if (v1)
    {
      return 1 << -v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = 0x1FFFFFF00000000;
  if (result < a3)
  {
    v3 = 0xFFFFFF00000000;
  }

  return v3 | result;
}

uint64_t static CircularBuffer.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFFFFFFFFLL) == (a2 & 0xFFFFFFFFFFFFFFLL))
  {
    return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
  }

  else
  {
    return 0;
  }
}

BOOL static CircularBuffer.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 < a2;
  if ((a2 & 0x100000000000000) != 0)
  {
    v2 = 0;
    v3 = a1 < a2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100106560(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  return a5(v5 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v6 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, a3, a4);
}

void CircularBuffer.description.getter()
{
  sub_100037C08();
  v25 = v0;
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v5 = sub_1001F74B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v33 = 8283;
  v34 = 0xE200000000000000;
  v24 = v4;
  v32._countAndFlagsBits = v4;
  sub_1001F7988();
  swift_getWitnessTable();
  sub_1001F6E08();
  v31 = v29;
  sub_10010B030();
  sub_1001F7B38();
  sub_1001F7B08();
  sub_10010B030();
  sub_1001F7B28();
  v26 = v5 - 8;
  for (i = (v8 + 8); ; (*i)(v11, TupleTypeMetadata2))
  {
    sub_1001F7B18();
    if (sub_10001C990(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v16 = *v14;
    v17 = *(TupleTypeMetadata2 + 48);
    *v11 = *v14;
    v18 = (*(*(v5 - 8) + 32))(&v11[v17], &v14[v17], v5);
    if (v16 == v27)
    {
      v19._countAndFlagsBits = 60;
    }

    else
    {
      if (v16 != v25)
      {
        goto LABEL_8;
      }

      v19._countAndFlagsBits = 62;
    }

    v19._object = 0xE100000000000000;
    sub_1001F6CA8(v19);
LABEL_8:
    __chkstk_darwin(v18);
    *(&v24 - 2) = v28;
    sub_1000B3104(sub_10010AA9C, type metadata for String, v20, &v29);
    if (v30)
    {
      v21._countAndFlagsBits = v29;
    }

    else
    {
      v21._countAndFlagsBits = 8287;
    }

    if (v30)
    {
      v22 = v30;
    }

    else
    {
      v22 = 0xE200000000000000;
    }

    v21._object = v22;
    sub_1001F6CA8(v21);
  }

  v35._countAndFlagsBits = 93;
  v35._object = 0xE100000000000000;
  sub_1001F6CA8(v35);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_1001F77B8(37);

  v32._countAndFlagsBits = 0xD000000000000012;
  v32._object = 0x8000000100228040;
  v23 = v24;
  v29 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  sub_10010B258();
  v36._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v36);

  v37._countAndFlagsBits = 0x654C676E6972202CLL;
  v37._object = 0xEE00203A6874676ELL;
  sub_1001F6CA8(v37);
  v29 = CircularBuffer.count.getter(v23, v27, v25);
  sub_10010B258();
  v38._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v38);

  v39._countAndFlagsBits = 41;
  v39._object = 0xE100000000000000;
  sub_1001F6CA8(v39);
  sub_1001F6CA8(v32);

  sub_100037B00();
}

unint64_t CircularBuffer.index(_:offsetBy:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2 + a1;
  v9 = CircularBuffer.mask.getter(a3, a2, a3, a6);
  v10 = sub_10005053C();
  CircularBuffer.count.getter(v10, v11, a5);
  v13 = CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(v9 & v8, v12, a4);
  return sub_10010AF38(v13);
}

unint64_t CircularBuffer.index(before:)(uint64_t a1)
{
  v1 = sub_10010B210(a1);
  v6 = CircularBuffer.index(_:offsetBy:)(v1, -1, v2, v3, v4, v5);
  return sub_10010AF38(v6);
}

void CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100037AEC();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v26 = *(v25 + 16);
  v27 = sub_1001F74B8();
  sub_10001A278();
  v29 = v28;
  sub_10001E844();
  v31.n128_f64[0] = __chkstk_darwin(v30);
  v33 = &a9 - v32;
  v34 = *(v26 - 8);
  (*(v34 + 16))(&a9 - v32, v24, v26, v31);
  sub_100099784();
  sub_100018460(v35, v36, v37, v26);
  sub_10010B19C();
  sub_1001F7988();
  sub_1001F78E8();
  (*(v34 + 8))(v24, v26);
  v38 = *v18;
  sub_10010AA80(v22, v38);
  (*(v29 + 40))(v38 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v33, v27);
  sub_100037A50();
}

uint64_t (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = *(a3 + 16);
  v7[3] = v8;
  sub_10002DFFC();
  *(v9 + 32) = v10;
  v12 = *(v11 + 64);
  v7[5] = sub_100064190(v12);
  v13 = sub_100064190(v12);
  v7[6] = v13;
  CircularBuffer.subscript.getter(v8, v13);
  return sub_100106CB4;
}

unint64_t CircularBuffer.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CircularBuffer.count.getter(a1, a2, a3);
  v6 = CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(a3, v5, a2);
  return sub_10010AF38(v6);
}

uint64_t CircularBuffer.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D4D04();
  sub_1001F74B8();
  v5 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if ((v3 & 0x100000000000000) != 0)
  {
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - v3;
    }

    else
    {
      return v5 - v3 + a2;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v7 = v3 - a2 + v5;
    result = -v7;
    if (__OFSUB__(0, v7))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - v3;
  }

  return result;
}

void sub_100106E60(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  a2(*v3, v3[1], v3[2], *(a1 + 16));
  sub_10010AF64();
  *a3 = v5;
  *(a3 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

uint64_t (*sub_100106EB0(void *a1, unsigned int *a2, uint64_t a3))()
{
  v7 = sub_100064190(0x28uLL);
  *a1 = v7;
  v7[4] = sub_100106F98(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_100106F50;
}

void sub_100106F50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_100106F98(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  sub_10002DFFC();
  *v8 = v9;
  v8[1] = v10;
  v12 = sub_100064190(*(v11 + 64));
  *(a1 + 16) = v12;
  CircularBuffer.subscript.getter(a6, v12);
  return sub_100107050;
}

void sub_100107050(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

unint64_t sub_10010709C@<X0>(unsigned int *a1@<X0>, unint64_t *a3@<X8>)
{
  v5 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v5 = 0;
  }

  result = CircularBuffer.subscript.getter(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v6, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v5, *v3, v3[1], v3[2]);
  *a3 = result;
  a3[1] = v8;
  a3[2] = v9;
  return result;
}

unint64_t CircularBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = CircularBuffer.startIndex.getter(a3, a4, a5);
  v11 = sub_10010AF38(v10);
  result = CircularBuffer.distance(from:to:)(v11, a1 & 0x1FFFFFFFFFFFFFFLL, a3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    CircularBuffer.endIndex.getter(a3, a4, a5);
    sub_10010AF50();
    result = CircularBuffer.distance(from:to:)(a2 & 0x1FFFFFFFFFFFFFFLL, v14 | (v13 << 56), a3);
    if ((result & 0x8000000000000000) == 0)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_100107248(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v18 = 0;
  }

  CircularBuffer.subscript.setter(a1, v18 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t (*sub_100107274(void *a1, uint64_t a2, uint64_t a3))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v8 = *(a3 + 16);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  v7[4] = sub_100064190(v10);
  v11 = sub_100064190(v10);
  v7[5] = v11;
  *(v7 + 12) = *a2;
  *(v7 + 26) = *(a2 + 4);
  *(v7 + 54) = *(a2 + 6);
  *(v7 + 55) = *(a2 + 7);
  CircularBuffer.subscript.getter(v8, v11);
  return sub_100107398;
}

unint64_t sub_100107480(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  return CircularBuffer.subscript.setter(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v4, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v3, a3);
}

unint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = sub_10010B2C0();
  v13 = CircularBuffer.startIndex.getter(v10, v11, v12);
  v14 = sub_10010AF38(v13);
  result = CircularBuffer.distance(from:to:)(v14, a4 & 0x1FFFFFFFFFFFFFFLL, v9);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_10010B2C0();
    CircularBuffer.endIndex.getter(v16, v17, v18);
    sub_10010AF50();
    result = CircularBuffer.distance(from:to:)(a5 & 0x1FFFFFFFFFFFFFFLL, v20 | (v19 << 56), v9);
    if ((result & 0x8000000000000000) == 0)
    {
      sub_10010AFD4();
      swift_getWitnessTable();
      CircularBuffer.replaceSubrange<A>(_:with:)();
    }
  }

  __break(1u);
  return result;
}

void (*sub_1001075D4(void *a1, unsigned int *a2, uint64_t a3))()
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  v7[3] = v3;
  v7[4] = a3;
  v8 = *a2;
  v9 = *(a2 + 2);
  *(v7 + 24) = v9;
  v10 = *(a2 + 6);
  *(v7 + 52) = v10;
  v11 = *(a2 + 7);
  *(v7 + 53) = v11;
  v12 = a2[2];
  *(v7 + 10) = v8;
  *(v7 + 11) = v12;
  v13 = *(a2 + 6);
  *(v7 + 25) = v13;
  v14 = *(a2 + 14);
  v15 = v8 | (v9 << 32);
  *(v7 + 54) = v14;
  v16 = *(a2 + 15);
  v17 = v15 | (v10 << 48);
  *(v7 + 55) = v16;
  if (v11)
  {
    v18 = 0x100000000000000;
  }

  else
  {
    v18 = 0;
  }

  v19 = v12 | (v13 << 32) | (v14 << 48);
  if (v16)
  {
    v20 = 0x100000000000000;
  }

  else
  {
    v20 = 0;
  }

  *v7 = CircularBuffer.subscript.getter(v17 | v18, v19 | v20, *v3, v3[1], v3[2]);
  v7[1] = v21;
  v7[2] = v22;
  return sub_1001076C0;
}

void sub_1001076C0()
{
  sub_100037AEC();
  v1 = **v0;
  if (v2)
  {

    sub_10010B264(v3);
  }

  else
  {
    sub_10010B264(v1);
  }

  sub_100037A50();

  free(v4);
}

void (*CircularBuffer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  sub_1000997D8();
  v9 = sub_100064190(0x38uLL);
  *v7 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = v6;
  v9[4] = v5;
  *v9 = CircularBuffer.subscript.getter(v6 & 0x1FFFFFFFFFFFFFFLL, v5 & 0x1FFFFFFFFFFFFFFLL, *v4, v4[1], v4[2]);
  v9[1] = v10;
  v9[2] = v11;
  return sub_100107800;
}

void sub_100107800()
{
  sub_100037AEC();
  v1 = **v0;
  if (v2)
  {

    sub_10010B288(v3);
  }

  else
  {
    sub_10010B288(v1);
  }

  sub_100037A50();

  free(v4);
}

uint64_t sub_1001078F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  v7 = CircularBuffer.startIndex.getter(v6, v4, v5);

  *(a1 + 24) = v7;
  *(a1 + 28) = WORD2(v7);
  *(a1 + 30) = BYTE6(v7);
  *(a1 + 31) = HIBYTE(v7) != 0;
  return result;
}

uint64_t sub_100107980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1001079D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection._copyToContiguousArray()(a1, WitnessTable);
}

void CircularBuffer.replaceSubrange<A>(_:with:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v145 = v6;
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = HIWORD(v7);
  v11 = HIBYTE(v7);
  v170 = HIBYTE(v7);
  v149 = v12;
  v169 = HIBYTE(v12);
  v141 = v13;
  v14 = *(v13 + 16);
  sub_1001F74B8();
  sub_1000D4D04();
  v125[3] = sub_1001F81E8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v15);
  sub_1000AD8B4();
  sub_100099A14(v16);
  v148 = v3;
  v17 = *(v3 + 8);
  sub_10010B19C();
  v134 = sub_1001F77D8();
  sub_10001A278();
  v133 = v18;
  sub_10001E844();
  __chkstk_darwin(v19);
  sub_1000AD8B4();
  sub_100099A14(v20);
  sub_10010B19C();
  v132 = sub_1001F7A08();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v21);
  sub_1000AD8B4();
  sub_100099A14(v22);
  v154 = v0;
  v153 = *(v0 - 1);
  __chkstk_darwin(v23);
  sub_10004FE10();
  v151 = v24;
  __chkstk_darwin(v25);
  v27 = v125 - v26;
  sub_10002DFFC();
  v138 = v28;
  __chkstk_darwin(v29);
  sub_100023510();
  sub_100099A14(v31 - v30);
  v142 = v17;
  v143 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10001A278();
  v33 = v32;
  sub_10001E844();
  __chkstk_darwin(v34);
  sub_1000AD8B4();
  v155 = v35;
  v38 = type metadata accessor for CircularBuffer.Index(0, v14, v36, v37);
  v164 = v8;
  v165 = v9;
  v166 = v10;
  v135 = HIBYTE(v8) & 1;
  v167 = HIBYTE(v8) & 1;
  v40 = *v1;
  v39 = v1[1];
  v152 = v1;
  v41 = v1[2];
  v150 = v39;
  v144 = v14;
  CircularBuffer.startIndex.getter(v40, v39, v41);
  sub_10010AF64();
  LODWORD(v157) = v43;
  WORD2(v157) = v44;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  BYTE6(v157) = v42;
  HIBYTE(v157) = v46;
  sub_10010B0C0();
  WitnessTable = swift_getWitnessTable();
  sub_10010B360();
  if ((sub_1001F6AB8() & 1) == 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v136 = v33;
  v48 = v169;
  v164 = v149;
  v129 = HIDWORD(v149);
  v165 = WORD2(v149);
  v130 = HIWORD(v149);
  v166 = BYTE6(v149);
  v167 = v169;
  v147 = v41;
  v49 = v41;
  v50 = v144;
  CircularBuffer.endIndex.getter(v40, v150, v49);
  sub_10010AF64();
  LODWORD(v157) = v52;
  WORD2(v157) = v53;
  if (v45)
  {
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  BYTE6(v157) = v51;
  HIBYTE(v157) = v54;
  sub_10010B360();
  v139 = WitnessTable;
  v140 = v38;
  if ((sub_1001F6AC8() & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v11)
  {
    v55 = 0x100000000000000;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL;
  v128 = v48;
  if (v48)
  {
    v57 = 0x100000000000000;
  }

  else
  {
    v57 = 0;
  }

  v127 = v56;
  v126 = v57 & 0xFF00000000000000 | v149 & 0xFFFFFFFFFFFFFFLL;
  v58 = CircularBuffer.distance(from:to:)(v56, v126, v40);
  v59 = v145;
  v60 = v40;
  v61 = v143;
  if (v58 == sub_1001F7118())
  {
    v138[2](v137, v59, v61);
    sub_1001F6DC8();
    swift_getAssociatedConformanceWitness();
    v150 = v50 - 8;
    v62 = v151;
    while (1)
    {
      sub_1001F7578();
      if (sub_10001C990(v27, 1, v50) == 1)
      {
        break;
      }

      v63 = 0x100000000000000;
      if ((v11 & 1) == 0)
      {
        v63 = 0;
      }

      v64 = v10 << 48;
      v65 = v8;
      v66 = v64 & 0xFFFF000000000000 | (v9 << 32) | v63 & 0xFFFFFFFF00000000 | v8;
      (*(*(v50 - 8) + 32))(v62, v27, v50);
      sub_100099784();
      sub_100018460(v67, v68, v69, v50);
      v70 = v154;
      sub_1001F7988();
      v71 = v152;
      sub_1001F78E8();
      v72 = *v71;
      sub_10010AA80(v65, *v71);
      (*(v153 + 40))(v72 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v65, v62, v70);
      v8 = CircularBuffer.index(after:)(v66);
      v9 = HIDWORD(v8);
      v10 = HIWORD(v8);
      sub_10010B03C();
      if (v45)
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        LOBYTE(v11) = 1;
      }
    }

    (*(v136 + 8))(v155, AssociatedTypeWitness);
    goto LABEL_37;
  }

  v146 = v60;
  v73 = v50;
  v74 = v147;
  v75 = v73;
  v76 = v61;
  if (v58 == CircularBuffer.count.getter(v60, v150, v147) && (sub_1001F7128() & 1) != 0)
  {
    CircularBuffer.removeSubrange(_:)();
LABEL_37:
    sub_100037B00();
    return;
  }

  sub_10010B32C();
  sub_1001F6F78();
  v168 = sub_1001F78A8();
  v77 = v74;
  v78 = v75;
  v79 = CircularBuffer.count.getter(v146, v150, v77);
  v80 = sub_1001F7118();
  v83 = v79 + v80;
  if (__OFADD__(v79, v80))
  {
    goto LABEL_40;
  }

  v84 = __OFSUB__(v83, v58);
  v85 = v83 - v58;
  if (v84)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v86 = v85 + 1;
  if (__OFADD__(v85, 1))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v87 = v146;
  v88 = CircularBuffer.capacity.getter(v146, v81, v82, v78);
  v89 = sub_1001062A8(v86);
  if (v89 > v88)
  {
    v88 = v89;
  }

  sub_10010B32C();
  v90 = sub_1001F7988();
  v155 = v88;
  AssociatedTypeWitness = v90;
  sub_1001F78B8(v88);
  v91 = v150;
  v92 = CircularBuffer.startIndex.getter(v87, v150, v147);
  v164 = v92;
  v165 = WORD2(v92);
  v166 = BYTE6(v92);
  v167 = HIBYTE(v92) != 0;
  LODWORD(v157) = v8;
  WORD2(v157) = v9;
  BYTE6(v157) = v10;
  HIBYTE(v157) = v135;
  sub_10010B360();
  if ((sub_1001F6AC8() & 1) == 0)
  {
    goto LABEL_43;
  }

  v157 = CircularBuffer.subscript.getter(v92 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v92) != 0) << 56), v127, v146, v91, v147);
  v158 = v93;
  v159 = v94;
  sub_10010B0A8();
  v95 = swift_getWitnessTable();
  sub_1001F6E58();

  v160 = v162;
  v161 = v163;
  v96 = sub_10010B36C(&unk_100289750);
  v96[2] = v78;
  v96[3] = v76;
  v97 = v148;
  v96[4] = v148;
  sub_1000A3FC4();
  v98 = swift_allocObject();
  v98[2] = v78;
  v98[3] = v76;
  v98[4] = v97;
  v98[5] = sub_10010AF24;
  v98[6] = v96;
  sub_10010B340();
  v99 = v76;
  v100 = sub_1001F77D8();
  v138 = &protocol conformance descriptor for LazySequence<A>;
  swift_getWitnessTable();
  sub_10010B1E0();
  *(v101 - 256) = v100;
  v135 = v102;
  sub_1001F7B98();

  sub_10010B240();
  sub_10010B340();
  v137 = v95;
  v103 = sub_1001F7A08();
  v104 = swift_getWitnessTable();
  v127 = v103;
  v125[1] = v104;
  sub_1001F7938();
  v105 = v131;
  sub_1001F6E58();
  v106 = sub_10010B36C(&unk_1002897A0);
  v106[2] = v78;
  v106[3] = v99;
  v106[4] = v97;
  sub_1000A3FC4();
  v107 = swift_allocObject();
  v107[2] = v78;
  v107[3] = v99;
  v107[4] = v97;
  v107[5] = sub_10010AAE8;
  v107[6] = v106;
  v108 = v134;
  swift_getWitnessTable();
  sub_1001F7B98();

  (*(v133 + 8))(v105, v108);
  swift_getWitnessTable();
  v109 = v150;
  sub_1001F7938();
  v164 = v149;
  v165 = v129;
  v166 = v130;
  v167 = v128;
  v110 = CircularBuffer.endIndex.getter(v146, v109, v147);
  LODWORD(v157) = v110;
  WORD2(v157) = WORD2(v110);
  BYTE6(v157) = BYTE6(v110);
  HIBYTE(v157) = HIBYTE(v110) != 0;
  sub_10010B360();
  if (sub_1001F6AC8())
  {
    v157 = CircularBuffer.subscript.getter(v126, v110 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v110) != 0) << 56), v146, v109, v147);
    v158 = v111;
    v159 = v112;
    sub_1001F6E58();

    v160 = v162;
    v161 = v163;
    v113 = sub_10010B36C(&unk_1002897F0);
    v113[2] = v78;
    v113[3] = v99;
    v114 = v148;
    v113[4] = v148;
    sub_1000A3FC4();
    v115 = swift_allocObject();
    v115[2] = v78;
    v115[3] = v99;
    v115[4] = v114;
    v115[5] = sub_10010AF24;
    v115[6] = v113;
    sub_10010B1E0();
    v116 = v154;
    sub_1001F7B98();

    sub_10010B240();
    sub_1001F7938();
    v117 = v155 - _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
    if (v117 >= 1)
    {
      v118 = v151;
      sub_1000995D4();
      sub_100018460(v119, v120, v121, v78);
      sub_1001F7868();
      (*(v153 + 8))(v118, v116);
      sub_10010AF78();
      swift_getWitnessTable();
      sub_1001F7938();
    }

    v122 = v168;

    v123 = v152;
    *v152 = v122;
    v123[1] = 0;
    v124 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();

    v123[2] = v124 - v117;
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
}

void sub_100108838(uint64_t a1@<X8>)
{
  sub_10010B2AC();
  sub_10010B2E8();
  if (v8)
  {
    v7 = 0;
  }

  v3(v7 | (v6 << 48) | (v5 << 32) | v4, v2);
  sub_10010AF64();
  *a1 = v9;
  *(a1 + 4) = v10;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_10010B320(v11);
}

void sub_1001088B0(uint64_t a1)
{
  sub_10010B2AC();
  sub_10010B2E8();
  if (v8)
  {
    v7 = 0;
  }

  v2(v7 | (v6 << 48) | (v5 << 32) | v4, v3);
  sub_10010AF64();
  *a1 = v9;
  *(a1 + 4) = v10;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_10010B320(v11);
}

void sub_100108910(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  CircularBuffer.index(_:offsetBy:)(*a1, a2, *v4, v4[1], v4[2], *(a3 + 16));
  sub_10010AF64();
  *a4 = v6;
  *(a4 + 4) = v7;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_10010B320(v9);
}

uint64_t sub_100108980()
{
  sub_1000997D8();
  swift_getWitnessTable();
  sub_10010B2FC();

  return sub_1001F70F8();
}

uint64_t sub_1001089F8(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  return CircularBuffer.distance(from:to:)(v3 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v4 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, *v2);
}

Swift::Void __swiftcall CircularBuffer._doubleCapacity()()
{
  sub_100037C08();
  v1 = v0;
  v3 = *(v2 + 16);
  sub_10010B340();
  v4 = sub_1001F74B8();
  sub_10001A278();
  v32 = v5;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  sub_10010B030();
  v9 = sub_1001F81E8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v10);
  v12 = *v1;
  v11 = v1[1];
  v31 = v1[2];
  v15 = 2 * CircularBuffer.capacity.getter(v12, v13, v14, v3);
  sub_10010B030();
  sub_1001F6F78();
  v34 = sub_1001F78A8();
  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_10010B030();
    sub_1001F7988();
    v27 = v15;
    v28 = v8;
    v30 = v9;
    sub_1001F78B8(v15);
    v33 = v11;
    sub_1000183C4(&qword_1002B41F0, &qword_10020D4C0);
    v26 = v3;
    sub_10010AF90();
    swift_getWitnessTable();
    v29 = v12;
    sub_10010B0D8(&qword_1002B41F8);
    sub_10010B008();
    sub_1001F6B08();
    sub_10010B314();
    sub_10010B030();
    v16 = sub_1001F76E8();
    sub_10010AFA8(v16);
    sub_10010B01C();
    sub_1001F7938();
    v33 = v31;
    sub_1000183C4(&qword_1002B4200, &qword_10020D4C8);
    sub_10010B08C();
    sub_100019C4C(v17, v18, &qword_10020D4C8, v19);
    sub_10010B008();
    sub_1001F6B08();
    sub_10010B314();
    sub_10010B01C();
    sub_1001F7938();
    v20 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
    v21 = v28;
    sub_1000995D4();
    sub_100018460(v22, v23, v24, v26);
    sub_1001F7868();
    (*(v32 + 8))(v21, v4);
    sub_10010AF78();
    swift_getWitnessTable();
    sub_10010B178();
    sub_1001F7938();

    v1[1] = 0;
    v1[2] = v20;
    *v1 = v34;
    sub_100037B00();
  }
}

Swift::Bool __swiftcall CircularBuffer.verifyInvariants()()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v10);
  sub_10010B168();
  v12 = (v11 + 8);
  while (v6 != v4)
  {
    sub_10005053C();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    v13 = sub_10001C990(v0, 1, v2);
    (*v12)(v0, v9);
    if (v13 == 1)
    {
      break;
    }

    v6 = CircularBuffer.mask.getter(v8, v14, v15, v2) & (v6 + 1);
  }

  sub_100037A50();
  return result;
}

Swift::Void __swiftcall CircularBuffer._resizeAndFlatten(newCapacity:)(Swift::Int newCapacity)
{
  sub_100037C08();
  v3 = v1;
  v5 = v4;
  v33 = *(v6 + 16);
  v7 = sub_1001F74B8();
  sub_10001A278();
  v9 = v8;
  sub_10001E844();
  __chkstk_darwin(v10);
  sub_100056624();
  sub_10010B030();
  sub_1001F81E8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  sub_10010B030();
  sub_1001F6F78();
  v39 = sub_1001F78A8();
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v2;
    v32 = v13;
    sub_10010B030();
    sub_1001F7988();
    sub_1001F78B8(v5);
    v14 = v3[2];
    if (v14 >= v3[1])
    {
      v35 = sub_1001F7998();
      v36 = v19;
      v37 = v20;
      v38 = v21;
      sub_10010B030();
      v22 = sub_1001F76E8();
      sub_10010AFA8(v22);
    }

    else
    {
      v34 = v3[1];
      sub_1000183C4(&qword_1002B41F0, &qword_10020D4C0);
      v30 = v9;
      sub_10010AF90();
      v29[1] = swift_getWitnessTable();
      sub_10010B0D8(&qword_1002B41F8);
      sub_10010B008();
      sub_1001F6B08();
      sub_10010B314();
      sub_10010B030();
      v15 = sub_1001F76E8();
      v29[0] = sub_10010AFA8(v15);
      sub_10010B01C();
      sub_1001F7938();
      v34 = v14;
      sub_1000183C4(&qword_1002B4200, &qword_10020D4C8);
      sub_10010B08C();
      sub_100019C4C(v16, v17, &qword_10020D4C8, v18);
      sub_10010B008();
      sub_1001F6B08();
      sub_10010B314();
      sub_10010B01C();
      v9 = v30;
    }

    sub_1001F7938();
    v23 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
    v24 = v31;
    sub_1000995D4();
    sub_100018460(v25, v26, v27, v33);
    sub_1001F7868();
    (*(v9 + 8))(v24, v7);
    sub_10010AF78();
    swift_getWitnessTable();
    sub_10010B178();
    sub_1001F7938();
    v3[1] = 0;
    v3[2] = v23;
    v28 = v39;

    *v3 = v28;
    sub_100037B00();
  }
}

uint64_t CircularBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000997D8();
  v7 = v6;
  v11 = CircularBuffer.startIndex.getter(v8, v9, v10);
  sub_10010AF38(v11);
  sub_10010B228();
  v18 = CircularBuffer.index(_:offsetBy:)(v12, v13, v14, v15, v16, v17);
  sub_10010AF38(v18);

  return CircularBuffer.subscript.getter(a5, v7);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = *(a3 + 16);
  v7[3] = v8;
  sub_10002DFFC();
  *(v9 + 32) = v10;
  v12 = *(v11 + 64);
  v7[5] = sub_100064190(v12);
  v7[6] = sub_100064190(v12);
  CircularBuffer.subscript.getter(a2, *v3, v3[1], v3[2], v8);
  return sub_100109374;
}

void sub_100109374()
{
  sub_100037AEC();
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  if (v4)
  {
    v5 = v1[1];
    v6 = *v1;
    v7 = sub_10010B118();
    v8(v7);
    CircularBuffer.subscript.setter(v2, v6, v5);
    v9 = sub_100075518();
    v10(v9);
  }

  else
  {
    CircularBuffer.subscript.setter(*(*v0 + 48), *v1, v1[1]);
  }

  free(v3);
  free(v2);
  sub_100037A50();

  free(v11);
}

Swift::Void __swiftcall CircularBuffer.removeFirst(_:)(Swift::Int a1)
{
  sub_100037C08();
  v3 = v2;
  v5 = *(v4 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_10010B168();
  v7 = v1[1];
  if (CircularBuffer.count.getter(*v1, v7, v1[2]) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v3)
  {
    sub_1001F7988();
    sub_1001F78E8();
    sub_1001F78E8();
    do
    {
      sub_1000995D4();
      sub_100018460(v8, v9, v10, v5);
      sub_1001F78E8();
      v11 = sub_10010B178();
      sub_10010AA80(v11, v12);
      v13 = sub_10010B12C();
      v14(v13);
      v7 = CircularBuffer.mask.getter(*v1, v15, v16, v5) & (v7 + 1);
      --v3;
    }

    while (v3);
  }

  v1[1] = v7;
  sub_100037B00();
}

uint64_t CircularBuffer.modify<A>(_:_:)(unsigned int a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a1;
  v8 = sub_1001F74B8();
  sub_1001F7988();
  sub_1001F78E8();
  v9 = *v4;
  sub_10010AA80(v7, v9);
  v10 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7;
  result = sub_10001C990(v10, 1, v6);
  if (result != 1)
  {
    return a2(v10);
  }

  __break(1u);
  return result;
}

void sub_100109668(void *a3@<X8>)
{
  sub_1001F7E68();
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_1001F6CA8(v4);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
}

uint64_t CircularBuffer.popFirst()()
{
  if (sub_10010B1B8() < 1)
  {
    v3 = 1;
  }

  else
  {
    CircularBuffer.removeFirst()(v2, v0);
    v3 = 0;
  }

  return sub_100018460(v0, v3, 1, v1);
}

uint64_t CircularBuffer.popLast()()
{
  if (sub_10010B1B8() < 1)
  {
    v3 = 1;
  }

  else
  {
    CircularBuffer.removeLast()(v2);
    v3 = 0;
  }

  return sub_100018460(v0, v3, 1, v1);
}

void CircularBuffer.removeLast()(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v3);
  v5 = v12 - v4;
  v12[1] = *v1;
  v13 = *(v1 + 8);
  sub_10010B184();
  swift_getWitnessTable();
  sub_1001F6A58();
  if (sub_10001C990(v5, 1, v2) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10007E2C8();
    v6 = sub_100075518();
    v7(v6);
    v8 = sub_10010B258();
    sub_1001099FC(v8, v9, v10, v11);
  }
}

Swift::Void __swiftcall CircularBuffer.removeLast(_:)(Swift::Int a1)
{
  sub_100037C08();
  v3 = v2;
  v5 = *(v4 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_10010B168();
  v7 = v1[2];
  if (CircularBuffer.count.getter(*v1, v1[1], v7) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v3)
  {
    sub_1001F7988();
    sub_1001F78E8();
    sub_1001F78E8();
    do
    {
      v7 = CircularBuffer.mask.getter(*v1, v8, v9, v5) & (v7 - 1);
      sub_1000995D4();
      sub_100018460(v10, v11, v12, v5);
      sub_1001F78E8();
      v13 = sub_10010B178();
      sub_10010AA80(v13, v14);
      v15 = sub_10010B12C();
      v16(v15);
      --v3;
    }

    while (v3);
  }

  v1[2] = v7;
  sub_100037B00();
}

void CircularBuffer.removeSubrange(_:)()
{
  sub_100037C08();
  v2 = v1;
  v30 = v3;
  v5 = *(v4 + 16);
  sub_10002DFFC();
  __chkstk_darwin(v6);
  sub_100023510();
  v7 = sub_10010B030();
  type metadata accessor for CircularBuffer.Index(v7, v8, v9, v10);
  v11 = *v0;
  v28 = v0 + 1;
  v29 = v0;
  v12 = sub_10010B104();
  CircularBuffer.startIndex.getter(v12, v13, v14);
  sub_10010AF64();
  sub_10010B0C0();
  swift_getWitnessTable();
  sub_10010B1F8();
  if ((sub_1001F6AB8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = sub_10010B104();
  CircularBuffer.endIndex.getter(v15, v16, v17);
  sub_10010AF64();
  sub_10010B1F8();
  if ((sub_1001F6AC8() & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v18 = CircularBuffer.distance(from:to:)(v30 & 0x1FFFFFFFFFFFFFFLL, v2 & 0x1FFFFFFFFFFFFFFLL, v11);
  if (v18 == 1)
  {
    CircularBuffer.remove(at:)();
    v19 = sub_10010B258();
    v20(v19);
  }

  else
  {
    v21 = v18;
    v22 = sub_10010B104();
    if (CircularBuffer.count.getter(v22, v23, v24) == v21)
    {
      sub_10010B030();
      sub_1001F74B8();
      v25 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
      CircularBuffer.init(initialCapacity:)(v25, v5);
      v27 = v26;

      *v29 = v27;
      *v28 = 0;
      v28[1] = 0;
    }

    else
    {
      sub_10010B030();
      sub_1001F6F78();
      sub_10010B030();
      sub_1001F6FC8();
      swift_getWitnessTable();
      CircularBuffer.replaceSubrange<A>(_:with:)();
    }
  }

  sub_100037B00();
}

uint64_t sub_100109C94@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  a1();

  return sub_100018460(a3, 0, 1, a2);
}

void CircularBuffer.remove(at:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  LODWORD(v5) = v4;
  v42 = v6;
  v44 = v4;
  v45 = v7;
  v46 = v8;
  v47 = v9;
  v10 = *(v2 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001A278();
  v40[2] = v11;
  __chkstk_darwin(v12);
  sub_10004FE10();
  v40[1] = v13;
  __chkstk_darwin(v14);
  v16 = v40 - v15;
  sub_10002DFFC();
  v41 = v17;
  __chkstk_darwin(v18);
  sub_100023510();
  v43 = (v20 - v19);
  v21 = v0[1];
  v22 = v0[2];
  v54 = *v0;
  v55 = v21;
  v40[0] = v22;
  v56 = v22;
  sub_10010AFD4();
  swift_getWitnessTable();
  sub_1001F71B8();
  v48 = v51;
  v49 = v52;
  v50 = v53;
  v40[3] = v3;
  v23 = sub_1001F6A18();
  swift_getWitnessTable();
  type metadata accessor for CircularBuffer.Index(255, v10, v24, v25);
  swift_getWitnessTable();
  v26 = sub_1001F6E88();
  v57[0] = v48;
  v57[1] = v49;
  v58 = v50;
  sub_10007E2C8();
  (*(v27 + 8))(v57, v23);
  if (v26)
  {
    v5 = v5;
    sub_10010B308();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    if (sub_10001C990(v16, 1, v10) != 1)
    {
      v28 = *(v41 + 32);
      v28(v43, v16, v10);
      if (v21 == v5)
      {
        sub_10010B1A8();
        CircularBuffer.advanceHeadIdx(by:)(v29);
        sub_10010B048();
        sub_1001F78E8();
        sub_10010AA80(v21, *v1);
        sub_10010AFEC();
      }

      else
      {
        if (CircularBuffer.indexBeforeTailIdx()() != v5)
        {
          sub_10010B048();
          sub_1001F78E8();
          sub_10010AA80(v5, *v1);
          sub_10010AFEC();
          sub_10010B308();
          v32();
          v33 = v1[2];
          for (i = CircularBuffer.mask.getter(*v1, v34, v35, v10) & (v5 + 1); i != v33; i = CircularBuffer.mask.getter(*v1, v37, v38, v10) & (i + 1))
          {
            *&v51 = v5;
            *&v48 = i;
            sub_10010AF90();
            swift_getWitnessTable();
            sub_1001F6AF8();
            v5 = i;
          }

          sub_10010B1A8();
          CircularBuffer.advanceTailIdx(by:)(v39);
          goto LABEL_11;
        }

        sub_10010B1A8();
        CircularBuffer.advanceTailIdx(by:)(v30);
        sub_10010B048();
        sub_1001F78E8();
        sub_10010AA80(v5, *v1);
        sub_10010AFEC();
      }

      sub_10010B308();
      v31();
LABEL_11:
      v28(v42, v43, v10);
      sub_100037B00();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CircularBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  if (CircularBuffer.capacity.getter(*v3, v1, v2, *(v1 + 16)) < a1)
  {
    v5 = sub_1001062A8(a1);

    CircularBuffer._resizeAndFlatten(newCapacity:)(v5);
  }
}

void sub_10010A19C(uint64_t a1@<X0>, void *a2@<X8>)
{
  CircularBuffer.init()(*(a1 + 16));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
}

uint64_t sub_10010A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CircularBuffer.replaceSubrange<A>(_:with:)();
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_10010A29C(uint64_t a1, uint64_t a2)
{
  CircularBuffer.append(_:)();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_10010A38C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RangeReplaceableCollection<>._customRemoveLast()(a1, WitnessTable, a2);
}

uint64_t sub_10010A3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RangeReplaceableCollection<>._customRemoveLast(_:)(a1, a2, WitnessTable, a3);
}

void static CircularBuffer<A>.== infix(_:_:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v7 = CircularBuffer.count.getter(v4, v5, v6);
  sub_10010B2FC();
  if (v7 == CircularBuffer.count.getter(v8, v9, v10))
  {
    type metadata accessor for CircularBuffer(0, v3, v11, v12);
    sub_10010B0A8();
    swift_getWitnessTable();
    sub_1001F7F98();
    v13 = sub_10010B36C(&unk_100289840);
    v13[2] = v3;
    v13[3] = v1;
    v13[4] = v3;
    __chkstk_darwin(v13);
    sub_1001F77F8();
    swift_getWitnessTable();
    sub_1001F6DF8();
  }

  sub_100037B00();
}

void CircularBuffer<A>.hash(into:)()
{
  sub_100037C08();
  v1 = v0;
  sub_10002DFFC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100023510();
  v7 = v6 - v5;

  v8 = sub_10010B154();
  v11 = CircularBuffer.startIndex.getter(v8, v9, v10);
  sub_10010B03C();
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_10010B154();
  CircularBuffer.endIndex.getter(v14, v15, v16);
  sub_10010B03C();
  sub_10010B34C();
  if (!v12 || v13 != v17)
  {
    v18 = (v3 + 8);
    do
    {
      if (v13)
      {
        v19 = 0x100000000000000;
      }

      else
      {
        v19 = 0;
      }

      CircularBuffer.subscript.getter(v1, v7);
      v11 = CircularBuffer.index(after:)(v19 & 0xFF00000000000000 | v11 & 0xFFFFFFFFFFFFFFLL);
      sub_10010B03C();
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      sub_1001F6A08();
      (*v18)(v7, v1);
      v20 = sub_10010B154();
      CircularBuffer.endIndex.getter(v20, v21, v22);
      sub_10010B03C();
      sub_10010B34C();
    }

    while (!v12 || ((v13 ^ v23) & 1) != 0);
  }

  sub_100037B00();
}

Swift::Int CircularBuffer<A>.hashValue.getter()
{
  sub_1000997D8();
  sub_1001F8068();
  sub_10010B228();
  CircularBuffer<A>.hash(into:)();
  return sub_1001F80D8();
}

Swift::Int sub_10010A944()
{
  sub_1001F8068();
  CircularBuffer<A>.hash(into:)();
  return sub_1001F80D8();
}

uint64_t CircularBuffer.init(arrayLiteral:)()
{
  v0 = sub_1000D4D04();
  type metadata accessor for CircularBuffer(v0, v1, v2, v3);
  sub_10010B19C();
  sub_1001F6FC8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1001F7228();
  return v5;
}

uint64_t sub_10010AA50@<X0>(uint64_t *a1@<X8>)
{
  result = CircularBuffer.init(arrayLiteral:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_10010AA80(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10010AB2C()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010AE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010AE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010AE78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 8))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 7);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_10010AEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010AFA8(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_10010B048()
{
  sub_100018460(*(v1 - 296), 1, 1, v0);

  return sub_1001F7988();
}

uint64_t sub_10010B0D8(unint64_t *a1)
{

  return sub_100019C4C(a1, v1, v2, &protocol conformance descriptor for PartialRangeFrom<A>);
}

uint64_t sub_10010B1B8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];

  return CircularBuffer.count.getter(v2, v3, v4);
}

__n128 sub_10010B240()
{
  *(v0 - 240) = *(v0 - 152);
  result = *(v0 - 128);
  *(v0 - 232) = *(v0 - 144);
  *(v0 - 216) = result;
  return result;
}

unint64_t sub_10010B264(uint64_t a1)
{

  return CircularBuffer.subscript.setter(a1, v2, v3, v4, v5, v1);
}

unint64_t sub_10010B288(uint64_t a1)
{

  return CircularBuffer.subscript.setter(a1, v1, v3, v5 & 0x1FFFFFFFFFFFFFFLL, v4 & 0x1FFFFFFFFFFFFFFLL, v2);
}

__n128 sub_10010B314()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  *(v0 - 160) = result;
  *(v0 - 144) = v2;
  return result;
}

uint64_t sub_10010B36C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10010B384()
{
  v1 = v0;
  v2 = sub_1000183C4(&qword_1002B4310, &unk_10020DA00);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-1] - v6;
  sub_100026064(v1, v18);
  sub_1000183C4(&qword_1002B4318, &qword_10020DA10);
  if (swift_dynamicCast())
  {
    memcpy(v16, v17, 0xD1uLL);
    if (v16[8])
    {
      sub_1000888D8(v16[8], v4);
      v8 = type metadata accessor for IAPTransaction(0);
      if (sub_10001C990(v4, 1, v8) == 1)
      {
        sub_100057E48(v16);
        v9 = &qword_1002B4310;
        v10 = &unk_10020DA00;
        v11 = v4;
      }

      else
      {
        sub_10010B5FC(&v4[*(v8 + 68)], v7);
        sub_10010B66C(v4);
        v12 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
        if (sub_10001C990(v7, 1, v12) != 1)
        {
          v15 = *&v7[*(v12 + 52)];

          sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
          sub_10003A2B4();
          v13 = sub_1001F6A68();
          sub_100057E48(v16);

          sub_10004BDE8(v7, &qword_1002AC7C8, &qword_1002008C0);
          return v13;
        }

        sub_100057E48(v16);
        v9 = &qword_1002AF150;
        v10 = &unk_100202ED0;
        v11 = v7;
      }

      sub_10004BDE8(v11, v9, v10);
    }

    else
    {
      sub_100057E48(v16);
    }
  }

  return 0;
}

uint64_t sub_10010B5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010B66C(uint64_t a1)
{
  v2 = type metadata accessor for IAPTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010B6C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010B708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NonBlockingFileIO.readChunked(fileRegion:chunkSize:allocator:eventLoop:chunkHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = a3 & 0xFFFFFFFFFFFFFFLL;
  result = FileRegion.readableBytes.getter(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  if (a4 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(result / a4, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v41 = a5;
  v40 = result % a4;
  v20 = result / a4 + 1;
  swift_getObjectType();
  sub_10010E868();
  v27 = EventLoop.makePromise<A>(of:file:line:)(v21, v22, v23, v24, 176, v25, v26, a10);
  v28 = v20;
  v29 = v27;
  v30 = a4;
  if (v28 <= 1 && ((v30 = v40, v28 == 1) ? (v31 = v40 < 1) : (v31 = 1), v31))
  {
    sub_1000A13B0(0);
  }

  else
  {
    sub_10010E884();
    v39 = v32;
    v38 = a6;
    v33 = swift_allocObject();
    type metadata accessor for ByteBuffer._Storage();
    v34 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v30, v41, a6, a7, a8);
    sub_10010E8A0(v34);
    sub_10010E878();
    v35 = v29;
    v36 = swift_allocObject();
    *(v36 + 16) = v30;
    *(v36 + 24) = v33;
    *(v36 + 32) = a1;
    *(v36 + 40) = v18;
    *(v36 + 48) = 0;

    sub_10010CF1C(a9, a10, sub_10010DC8C, v36, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

    v29 = v35;

    sub_10010E8FC();
    v37 = swift_allocObject();
    *(v37 + 16) = a11;
    *(v37 + 24) = a12;
    *(v37 + 32) = v35;
    *(v37 + 40) = a9;
    *(v37 + 48) = a10;
    *(v37 + 56) = v40;
    *(v37 + 64) = a4;
    *(v37 + 72) = a13;
    *(v37 + 80) = a1;
    *(v37 + 88) = v18;
    *(v37 + 96) = 0;
    *(v37 + 104) = v41;
    *(v37 + 112) = v38;
    *(v37 + 120) = a7;
    *(v37 + 128) = a8;
    *(v37 + 136) = v39;
    *(v37 + 144) = 0;

    swift_unknownObjectRetain();

    sub_100121C30();
  }

  return v29;
}

uint64_t NonBlockingFileIO.readChunked(fileHandle:fromOffset:byteCount:chunkSize:allocator:eventLoop:chunkHandler:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = a3 / a4 + 1;
  if (__OFADD__(a3 / a4, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v39 = a3 % a4;
  swift_getObjectType();
  sub_10010E868();
  v25 = EventLoop.makePromise<A>(of:file:line:)(v19, v20, v21, v22, 176, v23, v24, a10);
  v26 = v14;
  v38 = v25;
  v27 = a4;
  if (v26 <= 1 && ((v27 = v39, v26 == 1) ? (v28 = v39 < 1) : (v28 = 1), v28))
  {
    v29 = v25;
    sub_1000A13B0(0);
  }

  else
  {
    sub_10010E884();
    v36 = v30;
    v35 = a5;
    v31 = swift_allocObject();
    type metadata accessor for ByteBuffer._Storage();
    v32 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v27, a5, a6, a7, a8);
    sub_10010E8A0(v32);
    sub_10010E878();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v31;
    *(v33 + 32) = v18;
    *(v33 + 40) = a2;
    *(v33 + 48) = 0;

    sub_10010CF1C(a9, a10, sub_10010E808, v33, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

    sub_10010E8FC();
    v34 = swift_allocObject();
    *(v34 + 16) = a11;
    *(v34 + 24) = a12;
    v29 = v38;
    *(v34 + 32) = v38;
    *(v34 + 40) = a9;
    *(v34 + 48) = a10;
    *(v34 + 56) = v39;
    *(v34 + 64) = a4;
    *(v34 + 72) = a13;
    *(v34 + 80) = v18;
    *(v34 + 88) = a2;
    *(v34 + 96) = 0;
    *(v34 + 104) = v35;
    *(v34 + 112) = a6;
    *(v34 + 120) = a7;
    *(v34 + 128) = a8;
    *(v34 + 136) = v36;
    *(v34 + 144) = 0;

    swift_unknownObjectRetain();

    sub_100121C30();
  }

  return v29;
}

uint64_t NonBlockingFileIO.readChunked(fileHandle:byteCount:chunkSize:allocator:eventLoop:chunkHandler:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a3 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = a2 / a3 + 1;
  if (__OFADD__(a2 / a3, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v39 = a2 % a3;
  swift_getObjectType();
  sub_10010E868();
  v25 = EventLoop.makePromise<A>(of:file:line:)(v19, v20, v21, v22, 176, v23, v24, a9);
  v26 = v13;
  v38 = v25;
  v27 = a3;
  if (v26 <= 1 && ((v27 = v39, v26 == 1) ? (v28 = v39 < 1) : (v28 = 1), v28))
  {
    v29 = v25;
    sub_1000A13B0(0);
  }

  else
  {
    sub_10010E884();
    v37 = v30;
    v36 = a4;
    v31 = swift_allocObject();
    type metadata accessor for ByteBuffer._Storage();
    v32 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v27, a4, a5, a6, a7);
    v33 = *(v32 + 16);
    *(v31 + 16) = v32;
    *(v31 + 24) = 0;
    *(v31 + 32) = v33;
    *(v31 + 36) = 0;
    *(v31 + 38) = 0;
    sub_10010E878();
    v34 = swift_allocObject();
    *(v34 + 16) = v27;
    *(v34 + 24) = v31;
    *(v34 + 32) = v18;
    *(v34 + 40) = 0;
    *(v34 + 48) = 1;

    sub_10010CF1C(a8, a9, sub_10010E808, v34, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

    sub_10010E8FC();
    v35 = swift_allocObject();
    *(v35 + 16) = a10;
    *(v35 + 24) = a11;
    v29 = v38;
    *(v35 + 32) = v38;
    *(v35 + 40) = a8;
    *(v35 + 48) = a9;
    *(v35 + 56) = v39;
    *(v35 + 64) = a3;
    *(v35 + 72) = a12;
    *(v35 + 80) = v18;
    *(v35 + 88) = 0;
    *(v35 + 96) = 1;
    *(v35 + 104) = v36;
    *(v35 + 112) = a5;
    *(v35 + 120) = a6;
    *(v35 + 128) = a7;
    *(v35 + 136) = v37;
    *(v35 + 144) = 0;

    swift_unknownObjectRetain();

    sub_100121C30();
  }

  return v29;
}

uint64_t *sub_10010BFA0(uint64_t *result, void (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *result;
  v19 = result[1];
  v21 = *(result + 4) | ((*(result + 10) | (*(result + 22) << 16)) << 32);
  if (*(result + 23))
  {
    swift_errorRetain();
    sub_1000A13B0(v20);

    return sub_1000A3A2C(v20, v19, v21, 1);
  }

  else
  {
    v22 = (HIDWORD(v19) - v19);
    if (HIDWORD(v19) < v19)
    {
      __break(1u);
    }

    else
    {
      if (v22)
      {
        v28 = v21 & 0xFFFFFFFFFFFFFFLL;
        (a2)(v20, v19, v28);
        v30 = swift_allocObject();
        *(v30 + 16) = a5;
        *(v30 + 24) = a6;
        *(v30 + 32) = a7;
        *(v30 + 40) = a8;
        *(v30 + 48) = a9;
        *(v30 + 56) = a10;
        *(v30 + 64) = a11;
        *(v30 + 72) = a12 & 1;
        *(v30 + 80) = a13;
        *(v30 + 88) = a14;
        *(v30 + 96) = a15;
        *(v30 + 104) = a16;
        *(v30 + 112) = a2;
        *(v30 + 120) = a3;
        *(v30 + 128) = a4;
        *(v30 + 136) = a17;
        *(v30 + 144) = a18;
        *(v30 + 152) = v22;

        swift_unknownObjectRetain();

        sub_10011DE78();
      }

      else
      {
        a2(*result, v19, v21 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6, a7, a8);
        sub_10002FEFC(a4);
      }
    }
  }

  return result;
}

uint64_t sub_10010C1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (*(a1 + 8))
  {
    v19 = *a1;
    swift_errorRetain();
    sub_1000A13B0(v19);

    return sub_1000374AC(v19, 1);
  }

  swift_getObjectType();
  debugOnly(_:)();
  if (__OFSUB__(a17, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = a18 + a19;
  if (__OFADD__(a18, a19))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = a5;
  if (a17 - 1 > 1 || ((v26 = a4, a17 == 2) ? (v27 = a4 < 1) : (v27 = 1), !v27))
  {
    v28 = a8;
    if ((a9 & 1) != 0 || (v28 = a8 + v25, !__OFADD__(a8, v25)))
    {
      v39 = a18 + a19;
      v40 = a17 - 1;
      v41 = a8;
      v38 = a10;
      if (v26 >= 1)
      {
        v29 = swift_allocObject();
        type metadata accessor for ByteBuffer._Storage();
        v30 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v26, a10, a11, a12, a13);
        v31 = *(v30 + 16);
        *(v29 + 16) = v30;
        *(v29 + 24) = 0;
        *(v29 + 32) = v31;
        *(v29 + 36) = 0;
        *(v29 + 38) = 0;
        v32 = swift_allocObject();
        *(v32 + 16) = v26;
        *(v32 + 24) = v29;
        *(v32 + 32) = a7;
        *(v32 + 40) = v28;
        v33 = a9;
        *(v32 + 48) = a9 & 1;

        v34 = a6;
        sub_10010CF1C(a2, a3, sub_10010E808, v32, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

        v35 = a15;
        v36 = a4;
LABEL_22:
        v37 = swift_allocObject();
        *(v37 + 16) = a14;
        *(v37 + 24) = v35;
        *(v37 + 32) = a16;
        *(v37 + 40) = a2;
        *(v37 + 48) = a3;
        *(v37 + 56) = v36;
        *(v37 + 64) = a5;
        *(v37 + 72) = v34;
        *(v37 + 80) = a7;
        *(v37 + 88) = v41;
        *(v37 + 96) = v33 & 1;
        *(v37 + 104) = v38;
        *(v37 + 112) = a11;
        *(v37 + 120) = a12;
        *(v37 + 128) = a13;
        *(v37 + 136) = v40;
        *(v37 + 144) = v39;

        swift_unknownObjectRetain();

        sub_100121C30();
      }

      if (qword_1002AC430 == -1)
      {
LABEL_21:

        EventLoop.makeSucceededFuture<A>(_:file:line:)();

        v35 = a15;
        v34 = a6;
        v36 = a4;
        v33 = a9;
        goto LABEL_22;
      }

LABEL_26:
      swift_once();
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return sub_1000A13B0(0);
}

void sub_10010CB18(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  if (result < 1)
  {
LABEL_52:
    swift_beginAccess();
    v47 = *(a2 + 32);
    v48 = *(a2 + 36);
    v49 = *(a2 + 38);
    *a6 = *(a2 + 16);
    *(a6 + 8) = *(a2 + 24);
    *(a6 + 16) = v47;
    *(a6 + 20) = v48;
    *(a6 + 22) = v49;

    return;
  }

  v10 = 0;
  v53 = result;
  while (1)
  {
    v11 = result - v10;
    if (__OFSUB__(result, v10))
    {
      break;
    }

    swift_beginAccess();
    if (v11 >= 1)
    {
      v12 = *(a2 + 28);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_61;
      }

      v14 = *(a2 + 32);
      v15 = *(a2 + 38) | (*(a2 + 36) << 8);
      v16 = v14 >= v15;
      v17 = v14 - v15;
      if (!v16)
      {
        goto LABEL_62;
      }

      if (v13 > v17)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(a2 + 38) | (*(a2 + 36) << 8);
        if (!isUniquelyReferenced_nonNull_native)
        {
          LODWORD(v25) = *(a2 + 32);
          if (v25 < v19)
          {
            goto LABEL_67;
          }

          if (__CFADD__(v19, v25 - v19))
          {
            goto LABEL_69;
          }

          v26 = v19 + v13;
          if (__CFADD__(v19, v13))
          {
            goto LABEL_70;
          }

          if (v26 >= v25)
          {
            v25 = v25;
          }

          else
          {
            v25 = v26;
          }

          if (v25 < v19)
          {
            goto LABEL_71;
          }

          v27 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v19 | (v25 << 32), v13);
          *(a2 + 16) = v27;

          v28 = *(v27 + 16);
          goto LABEL_28;
        }

        v20 = v19 + v13;
        if (__CFADD__(v19, v13))
        {
          goto LABEL_68;
        }

        v21 = *(a2 + 32);
        if (v21 < v20)
        {
          v22 = *(a2 + 16);
          v23 = *(v22 + 16);
          if (v23 < v20)
          {
            if (v19)
            {
              if (v21 < v19)
              {
                goto LABEL_73;
              }

              v24 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v19 | (v21 << 32), v13);

              *(a2 + 16) = v24;
              v22 = v24;
            }

            else
            {
              ByteBuffer._Storage.reallocStorage(capacity:)(v13);
            }

            v28 = *(v22 + 16);
LABEL_28:
            *(a2 + 32) = v28;
            *(a2 + 36) = 0;
            *(a2 + 38) = 0;
            goto LABEL_29;
          }

          if (v23 < v19)
          {
            goto LABEL_72;
          }

          *(a2 + 32) = v23;
        }
      }
    }

LABEL_29:
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a2 + 32);
    v31 = *(a2 + 36);
    v32 = *(a2 + 38);
    if ((v29 & 1) == 0)
    {
      v33 = v32 | (v31 << 8);
      v34 = v30 - v33;
      if (v30 < v33)
      {
        goto LABEL_63;
      }

      if (__CFADD__(v33, v34))
      {
        goto LABEL_64;
      }

      if (v30 < v33)
      {
        goto LABEL_65;
      }

      v35 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v33 | (v30 << 32), v34);
      *(a2 + 16) = v35;

      v32 = 0;
      v31 = 0;
      v30 = *(v35 + 16);
      *(a2 + 32) = v30;
      *(a2 + 36) = 0;
      *(a2 + 38) = 0;
    }

    v36 = *(a2 + 16);
    swift_beginAccess();
    v37 = v32 | (v31 << 8);
    v38 = v30 - v37;
    if (v30 < v37)
    {
      goto LABEL_58;
    }

    v39 = *(v36 + 24);
    v40 = *(a2 + 28);
    swift_beginAccess();
    if (*(a3 + 16) != 1)
    {
      sub_1000274C4();
      swift_allocError();
      *v50 = 0xD00000000000001FLL;
      *(v50 + 8) = 0x8000000100224AB0;
      *(v50 + 16) = 9;
LABEL_55:
      swift_willThrow();
LABEL_56:
      swift_endAccess();
      return;
    }

    if (v38 >= v40)
    {
      LODWORD(v41) = v40;
    }

    else
    {
      LODWORD(v41) = v38;
    }

    if (v40)
    {
      v41 = v41;
    }

    else
    {
      v41 = 0;
    }

    if (a5)
    {
      v42 = v7;
      sub_10019DF8C(*(a3 + 20), v39 + v37 + v41, v11);
    }

    else
    {
      if (__OFADD__(a4, v10))
      {
        goto LABEL_66;
      }

      v42 = v7;
      sub_10019E0EC();
    }

    v7 = v42;
    if (v42)
    {
      goto LABEL_56;
    }

    v45 = v43;
    if ((v44 & 1) == 0)
    {
      sub_10010E5A0();
      swift_allocError();
      goto LABEL_55;
    }

    if (__CFADD__(v40, v43))
    {
      goto LABEL_59;
    }

    *(a2 + 28) = v40 + v43;
    swift_endAccess();
    if (!v45)
    {
      goto LABEL_52;
    }

    v46 = __OFADD__(v10, v45);
    v10 += v45;
    if (v46)
    {
      goto LABEL_60;
    }

    result = v53;
    if (v10 >= v53)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
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
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_10010CF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = EventLoop.makePromise<A>(of:file:line:)(a5, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, a5, a2);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;

  NIOThreadPool.submit(_:)(a7, v14);

  return v13;
}

uint64_t sub_10010CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1000183C4(&qword_1002B4330, qword_10020DB88);
  v9 = EventLoop.makePromise<A>(of:file:line:)(v8, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, v8, a2);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;

  NIOThreadPool.submit(_:)(sub_10010E590, v10);

  return v9;
}

uint64_t sub_10010D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for NIOFileHandle();
  v9 = EventLoop.makePromise<A>(of:file:line:)(v8, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, v8, a2);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;

  NIOThreadPool.submit(_:)(sub_10010E52C, v10);

  return v9;
}

uint64_t NonBlockingFileIO.changeFileSize(fileHandle:size:eventLoop:)()
{
  sub_10010E8D0();
  sub_10004794C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  v3 = sub_100037B7C();
  v9 = sub_10010CF1C(v3, v4, v5, v2, v6, v7, v8);

  return v9;
}

void sub_10010D250(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    sub_10019E1A4();
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v3 = 0xD00000000000001FLL;
    *(v3 + 8) = 0x8000000100224AB0;
    *(v3 + 16) = 9;
    swift_willThrow();
  }
}

uint64_t NonBlockingFileIO.readFileSize(fileHandle:eventLoop:)(uint64_t a1)
{

  v2 = sub_100037B7C();
  v8 = sub_10010CF1C(v2, v3, v4, a1, v5, v6, v7);

  return v8;
}

void sub_10010D39C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v5 = *(a1 + 20);
    sub_10019E23C(v5, 0, 1);
    if (!v2)
    {
      v7 = v6;
      sub_10019E23C(v5, 0, 2);
      v9 = v8;
      sub_10019E23C(v5, v7, 0);
      *a2 = v9;
    }
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v10 = 0xD00000000000001FLL;
    *(v10 + 8) = 0x8000000100224AB0;
    *(v10 + 16) = 9;
    swift_willThrow();
  }
}

void NonBlockingFileIO.write(fileHandle:buffer:eventLoop:)(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = HIDWORD(a3);
  v8 = (HIDWORD(a3) - a3);
  if (HIDWORD(a3) < a3)
  {
    __break(1u);
  }

  else if (v8)
  {
    v10 = a4;
    v13 = HIWORD(a4);
    v14 = HIDWORD(a4);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v6;
    *(v15 + 28) = v7;
    *(v15 + 32) = v10;
    *(v15 + 36) = v14;
    *(v15 + 38) = v13;
    *(v15 + 40) = v8;
    *(v15 + 48) = result;
    *(v15 + 56) = 0;
    *(v15 + 64) = 1;

    sub_10010CF1C(a5, a6, sub_10010DD18, v15, &type metadata for ()[1], &unk_100289D20, sub_10010E604);
  }

  else
  {
    swift_getObjectType();
    sub_10010E868();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
  }
}

void NonBlockingFileIO.write(fileHandle:toOffset:buffer:eventLoop:)()
{
  sub_1000A409C();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = (HIDWORD(v6) - v6);
  if (HIDWORD(v6) < v6)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = v3;
      v11 = v2;
      v12 = v1;
      v13 = v0;
      v17 = v4;
      v18 = v5;
      v14 = HIWORD(v3);
      v15 = HIDWORD(v3);
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      *(v16 + 24) = v7;
      *(v16 + 28) = v8;
      *(v16 + 32) = v10;
      *(v16 + 36) = v15;
      *(v16 + 38) = v14;
      *(v16 + 40) = v9;
      *(v16 + 48) = v13;
      *(v16 + 56) = v12;
      *(v16 + 64) = 0;

      sub_10010CF1C(v17, v18, sub_10010E820, v16, &type metadata for ()[1], &unk_100289D20, sub_10010E604);
    }

    else
    {
      swift_getObjectType();
      sub_10010E868();
      EventLoop.makeSucceededFuture<A>(_:file:line:)();
    }

    sub_1000814C0();
  }
}

void sub_10010D748(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = a2;
  v14 = HIDWORD(a2);
  v15 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);

  swift_beginAccess();
  swift_beginAccess();
  v16 = 0;
  while (v14 >= v12)
  {
    v17 = a4 - v16;
    if (__OFSUB__(a4, v16))
    {
      goto LABEL_21;
    }

    if (v17 != v14 - v12)
    {
      goto LABEL_22;
    }

    if (*(a5 + 16) != 1)
    {
      sub_1000274C4();
      swift_allocError();
      *v23 = 0xD00000000000001FLL;
      *(v23 + 8) = 0x8000000100224AB0;
      *(v23 + 16) = 9;
LABEL_18:
      swift_willThrow();
LABEL_19:

      return;
    }

    if (a7)
    {
      v18 = v8;
      sub_10019E03C(*(a5 + 20), *(a1 + 24) + v15 + v12, v17);
    }

    else
    {
      if (__OFADD__(a6, v16))
      {
        goto LABEL_25;
      }

      v18 = v8;
      sub_10019E2DC();
    }

    v8 = v18;
    if (v18)
    {
      goto LABEL_19;
    }

    if ((v20 & 1) == 0)
    {
      sub_10010E5A0();
      swift_allocError();
      goto LABEL_18;
    }

    v21 = __CFADD__(v12, v19);
    v12 += v19;
    if (v21)
    {
      goto LABEL_23;
    }

    v22 = __OFADD__(v16, v19);
    v16 += v19;
    if (v22)
    {
      goto LABEL_24;
    }

    if (v16 >= a4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t NonBlockingFileIO.openFile(path:eventLoop:)()
{
  sub_10010E8D0();
  sub_10004794C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  v3 = sub_100037B7C();
  v6 = sub_10010CFEC(v3, v4, v5, v2);

  return v6;
}

void sub_10010D980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for NIOFileHandle();

  NIOFileHandle.__allocating_init(path:mode:flags:)(a1, a2, 1, 0);
  if (!v3)
  {
    v8 = v7;
    swift_beginAccess();
    if (*(v8 + 16) == 1)
    {
      v9 = *(v8 + 20);

      v10 = sub_100027518(v9, 0, 2);
      sub_100027518(v9, 0, 0);
      if (v10 < 0)
      {
        __break(1u);
      }

      else
      {
        v13 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(0);
        *a3 = v8;
        *(a3 + 8) = v8;
        *(a3 + 16) = v10;
        *(a3 + 24) = v13;
        *(a3 + 28) = WORD2(v13);
        *(a3 + 30) = BYTE6(v13);
      }
    }

    else
    {
      sub_1000274C4();
      swift_allocError();
      *v11 = 0xD00000000000001FLL;
      *(v11 + 8) = 0x8000000100224AB0;
      *(v11 + 16) = 9;
      swift_willThrow();
      NIOFileHandle.close()();
      if (v12)
      {
      }

      swift_willThrow();
    }
  }
}

uint64_t NonBlockingFileIO.openFile(path:mode:flags:eventLoop:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v4 = a4;
  v8 = HIDWORD(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 36) = v4;
  *(v9 + 40) = v8;

  v10 = sub_100037B7C();
  v13 = sub_10010D0D0(v10, v11, v12, v9);

  return v13;
}

void sub_10010DBD4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for NIOFileHandle();

  NIOFileHandle.__allocating_init(path:mode:flags:)(a1, a2, a3, a4 & 0xFFFFFFFF0000FFFFLL);
  if (!v5)
  {
    *a5 = v11;
  }
}

uint64_t sub_10010DC58()
{

  sub_10010E884();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010DCA8()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010DD30()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10010DDAC()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010DDFC()
{

  return _swift_deallocObject(v0, 44, 7);
}

unint64_t sub_10010DE64()
{
  result = qword_1002B4320;
  if (!qword_1002B4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4320);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NonBlockingFileIO.Error(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10010DF64);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10010DF9C(char a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    v4 = swift_allocError();
    swift_errorRetain();
    LOBYTE(v17[0]) = 1;
    sub_1000A18A4(v4, 0, 0x100000000000000, a2, v5, v6, v7, v8);
  }

  else
  {
    a3(v17);
    v9 = v17[1];
    v10 = v18 | (v19 << 32) | (v20 << 48);

    sub_1000A18A4(v11, v9, v10, a2, v12, v13, v14, v15);
  }
}

uint64_t sub_10010E0D8(char a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    sub_10010E53C();
    v3 = swift_allocError();
    swift_errorRetain();
    sub_1000A13B0(v3);
  }

  else
  {
    a3();

    return sub_1000A13B0(0);
  }
}

uint64_t sub_10010E1C8(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    v4 = swift_allocError();
    swift_errorRetain();
    sub_1000A1A00(v4, 1, a2);
  }

  else
  {
    a3(&v7);
    v6 = v7;

    return sub_1000A1A00(v6, 0, a2);
  }
}

uint64_t sub_10010E2BC(char a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    v3 = swift_allocError();
    swift_errorRetain();
    LOBYTE(v9[0]) = 1;
    sub_1000A1A48(v3, 0, 0, 0x100000000000000);
  }

  else
  {
    a3(v9);
    v4 = v9[0];
    v5 = v9[1];
    v6 = v9[2];
    v7 = v10 | (v11 << 32) | (v12 << 48);

    sub_1000A1A48(v4, v5, v6, v7);
  }
}

uint64_t sub_10010E42C(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    v4 = swift_allocError();
    swift_errorRetain();
    sub_1000A1BA8(v4, 1, a2, v5, v6, v7, v8, v9);
  }

  else
  {
    a3(&v17);

    sub_1000A1BA8(v10, 0, a2, v11, v12, v13, v14, v15);
  }
}

unint64_t sub_10010E53C()
{
  result = qword_1002B4328;
  if (!qword_1002B4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4328);
  }

  return result;
}

unint64_t sub_10010E5A0()
{
  result = qword_1002B4338;
  if (!qword_1002B4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4338);
  }

  return result;
}

uint64_t sub_10010E624()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10010E6C8()
{

  swift_unknownObjectRelease();

  sub_10010E8FC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010E76C()
{

  sub_10010E878();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010E8A0(uint64_t result)
{
  v2 = *(result + 16);
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 36) = 0;
  *(v1 + 38) = 0;
  return result;
}

uint64_t sub_10010E8B8(uint64_t result)
{
  v2 = *(result + 16);
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 36) = 0;
  *(v1 + 38) = 0;
  return result;
}

uint64_t sub_10010E908(uint64_t a1, uint64_t a2)
{

  return static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(a1, a2, v4, v3, v2);
}

__n128 sub_10010E928@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F031C();
  if (v3)
  {
    v5 = sub_10010EA20(v2, v3, v4 & 1);

    sub_1001F15CC(v5);
    v10 = v13;
    v11 = v12;
    v6 = v14 | ((v15 | (v16 << 16)) << 32);
    v7 = 3;
  }

  else
  {
    v6 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = 21;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = v7;
  *(v8 + 40) = 65537;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *a1 = v8;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  result = v11;
  *(a1 + 40) = v10;
  *(a1 + 24) = v11;
  *(a1 + 62) = BYTE6(v6);
  *(a1 + 60) = WORD2(v6);
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_10010EA20(unint64_t a1, unint64_t a2, char a3)
{
  v7 = sub_10005A558(a1, a2);
  if ((v8 & 1) != 0 || (v9 = v7, sub_10001AE68((v3 + 88), *(v3 + 112)), (v10 = sub_10008E790(v9)) == 0))
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v14 = sub_1001F6688();
    sub_100019C94(v14, qword_1002E6180);

    v15 = sub_1001F6668();
    v16 = sub_1001F7298();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      sub_10005A558(a1, a2);
      sub_1000183C4(&qword_1002B32F0, &unk_10020A070);
      v19 = sub_1001F6BA8();
      v21 = sub_1000E4544(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "no transaction for id: %s", v17, 0xCu);
      sub_100019CCC(v18);
      sub_10003A72C(v18);
      sub_10003A72C(v17);
    }

    return 0;
  }

  else
  {
    v11 = v10;
    sub_1000C5464(3);
    if ((v12 & 1) != 0 && (sub_1000BFBB0() & 1) == 0)
    {
      sub_10001AE68((v3 + 88), *(v3 + 112));
      sub_10008E384(v11, 1, a3 & 1);

      return 2;
    }

    else
    {

      return 1;
    }
  }
}

uint64_t HTTPServerUpgradeHandler.__allocating_init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  HTTPServerUpgradeHandler.init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t HTTPServerUpgradeHandler.init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = sub_10002EC5C(0x10uLL);
  *(v5 + 88) = v11;
  *(v5 + 96) = v12;
  v43 = *(a1 + 16);
  if (v43)
  {
    v39 = a4;
    v40 = a2;
    v41 = a5;
    v42 = a3;
    v13 = 0;
    v14 = a1 + 32;
    v15 = _swiftEmptyDictionarySingleton;
    while (v13 < *(a1 + 16))
    {
      sub_100026064(v14, &v46);
      v16 = v47;
      v17 = v48;
      sub_10001AE68(&v46, v47);
      (*(v17 + 8))(v16, v17);
      v18 = sub_1001F6BB8();
      v20 = v19;

      sub_10002DD3C(&v46, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v15;
      v22 = sub_10007B9BC();
      v23 = sub_10011108C(v22);
      v25 = v15[2];
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_17;
      }

      v28 = v23;
      v29 = v24;
      sub_1000183C4(&qword_1002B4420, &qword_10020DBD0);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v27))
      {
        v30 = sub_10007B9BC();
        v31 = sub_10011108C(v30);
        if ((v29 & 1) != (v32 & 1))
        {
          goto LABEL_19;
        }

        v28 = v31;
      }

      if (v29)
      {

        v15 = v44;
        v33 = (v44[7] + 40 * v28);
        sub_100019CCC(v33);
        sub_10002DD3C(v45, v33);
      }

      else
      {
        v15 = v44;
        v44[(v28 >> 6) + 8] |= 1 << v28;
        v34 = (v44[6] + 16 * v28);
        *v34 = v18;
        v34[1] = v20;
        sub_10002DD3C(v45, v44[7] + 40 * v28);
        v35 = v44[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_18;
        }

        v44[2] = v37;
      }

      ++v13;
      v14 += 40;
      if (v43 == v13)
      {

        a3 = v42;
        a2 = v40;
        a5 = v41;
        a4 = v39;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1001F7FC8();
    __break(1u);
  }

  else
  {

    v15 = _swiftEmptyDictionarySingleton;
LABEL_15:
    *(v5 + 16) = v15;
    *(v5 + 24) = a4;
    *(v5 + 32) = a5;
    *(v5 + 40) = a2;
    *(v5 + 48) = a3;
    return v5;
  }

  return result;
}

void HTTPServerUpgradeHandler.channelRead(context:data:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    v5 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
    v8 = sub_1000375EC(v5);
    v9 = v7;
    v10 = HIBYTE(v7);
    v11 = *(v2 + 64);
    switch(v11)
    {
      case 0uLL:
        sub_10010F244(a1, v8, v6, v7);
        goto LABEL_13;
      case 1uLL:
        if (v10 != 2)
        {
          goto LABEL_13;
        }

        v17 = sub_10007B9BC();
        sub_100037548(v17, v18, v9, 2);
        *(v2 + 56) = 1;
        goto LABEL_3;
      case 2uLL:
        __break(1u);
        goto LABEL_17;
      case 3uLL:
        ChannelHandlerContext.fireChannelRead(_:)();
        goto LABEL_13;
      case 4uLL:
LABEL_17:
        __break(1u);
        JUMPOUT(0x10010F230);
      default:
        if (v10 == 2)
        {
          *(v2 + 56) = 1;

          v11(v12);
          v13 = sub_10007B9BC();
          sub_100037548(v13, v14, v9, 2);
          sub_1000814C0();

          sub_10011202C(v15);
        }

        else
        {
LABEL_13:
          sub_10007B9BC();
          sub_1000814C0();

          sub_100037548(v19, v20, v21, v22);
        }

        return;
    }
  }

  swift_beginAccess();
  sub_10002F1C8(a2);
  swift_endAccess();
LABEL_3:
  sub_1000814C0();
}

void sub_10010F244(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (HIBYTE(a4))
  {
    sub_100112394();
    swift_allocError();
    ChannelHandlerContext.fireErrorCaught(_:)();

    sub_10010F780(a1, a2, a3, a4);
  }

  else
  {

    HTTPHeaders.subscript.getter();
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v25 = v5;
      v26 = a3;
      v27 = a2;
      sub_1000375CC(0, v12, 0);
      v13 = 0;
      v14 = v11 + 56;
      while (v13 < *(v11 + 16))
      {

        v15 = sub_1001F6BE8();
        v17 = v16;

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000375CC(v18 > 1, v19 + 1, 1);
        }

        ++v13;
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v14 += 32;
        if (v12 == v13)
        {

          a3 = v26;
          a2 = v27;
          v5 = v25;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_13:
      if (_swiftEmptyArrayStorage[2])
      {
        v21 = *(v5 + 64);
        *(v5 + 64) = xmmword_100206DF0;
        sub_10011202C(v21);
        sub_10010F8E4(a1, a2, a3, a4, _swiftEmptyArrayStorage);

        v22 = *(*(a1 + 32) + 56);
        v23 = swift_unknownObjectRetain();
        sub_1001509C0(v23, v22);

        swift_unknownObjectRelease();
        v24 = swift_allocObject();
        *(v24 + 16) = a1;
        *(v24 + 24) = v5;
        *(v24 + 32) = a2;
        *(v24 + 40) = a3;
        *(v24 + 54) = BYTE6(a4);
        *(v24 + 52) = WORD2(a4);
        *(v24 + 48) = a4;
        *(v24 + 55) = 0;
        sub_1000811E4(a2, a3, a4, 0);

        sub_10011FAE0();
      }

      else
      {

        sub_10010F780(a1, a2, a3, a4);
      }
    }
  }
}

uint64_t HTTPServerUpgradeHandler.removeHandler(context:removalToken:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
LABEL_2:
  v4 = v2[11];
  v5 = v2[12];
  v6 = v5 - v4;
  if (v5 < v4)
  {
    v6 += *(v2[10] + 16);
  }

  if (v6 < 1)
  {
    return ChannelHandlerContext.leavePipeline(removalToken:)(a2);
  }

  while (1)
  {
    v7 = v2[10];
    v8 = v5 - v4;
    if (v5 < v4)
    {
      v8 += *(v7 + 16);
    }

    if (v8 <= 0)
    {
      ChannelHandlerContext.fireChannelReadComplete()();
      goto LABEL_2;
    }

    result = swift_beginAccess();
    if (v5 == v4)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (HIDWORD(v4))
    {
      goto LABEL_25;
    }

    v10 = *(v7 + 16);
    if (v4 >= v10)
    {
      goto LABEL_26;
    }

    result = sub_100112040(v7 + (v4 << 6) + 32, &v15);
    if (v17[24] == 255)
    {
      goto LABEL_29;
    }

    v18[0] = v15;
    v18[1] = v16;
    v19[0] = *v17;
    *(v19 + 9) = *&v17[9];
    if (v5 >= v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if ((v5 - v4 + v11) < 1)
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v2[10] = v7;
    if ((result & 1) == 0)
    {
      result = sub_100111F84(v7, v12, v13, v14);
      v7 = result;
    }

    v16 = 0u;
    memset(v17, 0, 24);
    v15 = 0u;
    v17[24] = -1;
    v2[10] = v7;
    if (v4 >= *(v7 + 16))
    {
      goto LABEL_28;
    }

    sub_10008142C(&v15, v7 + (v4 << 6) + 32);
    v2[10] = v7;
    v2[11] = (*(v7 + 16) + 0x1FFFFFFFFLL) & (v4 + 1);
    swift_endAccess();
    ChannelHandlerContext.fireChannelRead(_:)();
    sub_100034310(v18);
    v4 = v2[11];
    v5 = v2[12];
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

void sub_10010F780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = HIBYTE(a4);
  v9 = *(v4 + 64);
  *(v4 + 64) = xmmword_100206E20;
  sub_10011202C(v9);
  if (*(v4 + 56))
  {
    v10 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
    v13 = v10;
    *v11 = a2;
    *&v11[8] = a3;
    v11[22] = BYTE6(a4);
    *&v11[20] = WORD2(a4);
    *&v11[16] = a4;
    v12 = v8;
    v14 = 2;
    sub_1000811E4(a2, a3, a4, v8);
    ChannelHandlerContext.fireChannelRead(_:)();
    sub_100034310(v11);
    v13 = v10;
    memset(v11, 0, sizeof(v11));
    v12 = 2;
    v14 = 2;
  }

  else
  {
    v13 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
    *v11 = a2;
    *&v11[8] = a3;
    v11[22] = BYTE6(a4);
    *&v11[20] = WORD2(a4);
    *&v11[16] = a4;
    v12 = v8;
    v14 = 2;
    sub_1000811E4(a2, a3, a4, v8);
  }

  ChannelHandlerContext.fireChannelRead(_:)();
  sub_100034310(v11);
  ChannelHandlerContext.fireChannelReadComplete()();
  ChannelPipeline.removeHandler(context:promise:)();
}

uint64_t sub_10010F8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  HTTPHeaders.subscript.getter();
  v8 = v7;
  v9 = *(v7 + 16);
  v36 = v5;
  if (v9)
  {
    sub_1000375CC(0, v9, 0);
    v10 = v8 + 56;
    do
    {

      v11 = sub_1001F74E8();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000375CC(v14 > 1, v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v10 += 32;
      --v9;
    }

    while (v9);

    v5 = v36;
  }

  else
  {
  }

  v18 = sub_1001B8580(_swiftEmptyArrayStorage, v17);
  v19 = *(a3 + 16);
  v20 = sub_10007012C(0, v19);
  if (v20)
  {
    v22 = v20;
    result = sub_1000375CC(0, v20 & ~(v20 >> 63), 0);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v24 = a3 + 40;
      while (v19)
      {
        result = sub_1001F6BB8();
        v25 = result;
        v27 = v26;
        v29 = _swiftEmptyArrayStorage[2];
        v28 = _swiftEmptyArrayStorage[3];
        if (v29 >= v28 >> 1)
        {
          result = sub_1000375CC(v28 > 1, v29 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v29 + 1;
        v30 = &_swiftEmptyArrayStorage[2 * v29];
        v30[4] = v25;
        v30[5] = v27;
        --v19;
        v24 += 32;
        if (!--v22)
        {
          v5 = v36;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v31 = sub_1001B8580(_swiftEmptyArrayStorage, v21);
    v32 = sub_10010FC80(a1, a5, 0, a2, a3, v5, v31, v18);

    return v32;
  }

  return result;
}

void sub_10010FB40(void (**a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    sub_10003742C(*a1, v8);

    sub_10010FBC0(a3, v7, v8);
  }

  else
  {
    sub_10010F780(a2, a4, a5, a6);
  }
}

uint64_t sub_10010FBC0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = sub_100112490;
    *(a1 + 72) = result;
    if (*(a1 + 56) == 1)
    {

      a2(v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010FC80(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = *(a2 + 16);
  if (v10 != a3)
  {
    if (v10 <= a3)
    {
      __break(1u);
      return result;
    }

    v13 = v8;
    v17 = a2;
    v18 = a2 + 16 * a3;
    v19 = *(v18 + 40);
    v20 = *(v8 + 16);
    v58 = *(v18 + 32);
    sub_1001F6BB8();

    sub_1001F1230(v20, &v63);

    if (!v64)
    {

      sub_100112498(&v63);
      v34 = sub_1001128E8();
      return sub_10010FC80(v34, v35, v36, v37, a5, a6, a7, a8);
    }

    v59 = a7;
    sub_10002DD3C(&v63, v65);
    v21 = v66;
    v22 = v67;
    sub_10001AE68(v65, v66);
    v23 = (*(v22 + 16))(v21, v22);
    v24 = *(v23 + 16);
    if (v24)
    {
      v52 = a4;
      v53 = v8;
      v54 = v17;
      v56 = v9;
      *&v63 = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v24, 0);
      v25 = v63;
      v26 = v23 + 40;
      do
      {
        v27 = sub_1001F6BB8();
        v29 = v28;
        *&v63 = v25;
        v31 = v25[2];
        v30 = v25[3];
        if (v31 >= v30 >> 1)
        {
          sub_1000375CC(v30 > 1, v31 + 1, 1);
          v25 = v63;
        }

        v25[2] = v31 + 1;
        v32 = &v25[2 * v31];
        v32[4] = v27;
        v32[5] = v29;
        v26 += 16;
        --v24;
      }

      while (v24);

      v13 = v53;
      v17 = v54;
      v9 = v56;
      a4 = v52;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    v38 = sub_1001B8580(v25, v33);
    sub_100110224(v59, v38);
    if (v39)
    {
      sub_100110224(a8, v38);
      v41 = v40;

      if (v41)
      {
        sub_1001103E4(v58, v19);
        v55 = v17;
        v42 = v67;
        sub_10001AE68(v65, v66);
        v43 = sub_10009B39C();
        v57 = v9;
        (*(v42 + 24))(v43);
        swift_unknownObjectRelease();

        sub_100026064(v65, &v63);
        v44 = swift_allocObject();
        *(v44 + 16) = v13;
        *(v44 + 24) = v9;
        *(v44 + 32) = a4;
        *(v44 + 40) = a5;
        *(v44 + 48) = a6;
        sub_10002DD3C(&v63, v44 + 56);
        *(v44 + 96) = v58;
        *(v44 + 104) = v19;

        v45 = sub_10019F760("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 215, sub_100112560, v44);

        v47 = *(v45 + 40);
        v46 = *(v45 + 48);
        sub_1000183C4(&qword_1002B4568, &qword_10020DE48);
        swift_allocObject();
        v12 = sub_10016E918(v47, v46, 0, 0, 255);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();

        swift_unknownObjectRetain();
        sub_10011F1AC(v45, v45, v12, v57, v13, v55, a3 + 1, a4, a5, a6, v59, a8);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

LABEL_19:
        sub_100019CCC(v65);
        return v12;
      }
    }

    else
    {
    }

    v48 = sub_1001128E8();
    v12 = sub_10010FC80(v48, v49, v50, v51, a5, a6, v59, a8);
    goto LABEL_19;
  }

  swift_getObjectType();
  v65[0] = 0;
  v65[1] = 0;
  swift_unknownObjectRetain();
  sub_1000183C4(&qword_1002ADD88, &qword_10020DE50);
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

void sub_100110224(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v22 = v2;
    if (v7)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
LABEL_10:
        while (2)
        {
          if (!*(a1 + 16))
          {
LABEL_22:

            return;
          }

          v12 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v13 = (*(v2 + 48) + ((v10 << 10) | (16 * v12)));
          v15 = *v13;
          v14 = v13[1];
          sub_1001F8068();

          sub_1001F6C28();
          v16 = sub_1001F80D8();
          v17 = ~(-1 << *(a1 + 32));
          do
          {
            v18 = v16 & v17;
            if (((*(v9 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {

              return;
            }

            v19 = (*(a1 + 48) + 16 * v18);
            if (*v19 == v15 && v19[1] == v14)
            {
              break;
            }

            v21 = sub_1001F7EA8();
            v16 = v18 + 1;
          }

          while ((v21 & 1) == 0);

          v2 = v22;
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001103E4(uint64_t a1, uint64_t a2)
{
  sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001FEBE0;
  *(v4 + 32) = 0x697463656E6E6F63;
  *(v4 + 40) = 0xEA00000000006E6FLL;
  *(v4 + 48) = 0x65646172677075;
  *(v4 + 56) = 0xE700000000000000;
  *(v4 + 64) = 0x65646172677075;
  *(v4 + 72) = 0xE700000000000000;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;

  return v4;
}

double sub_10011048C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10)
{
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_100026064(a7, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  sub_10002DD3C(v21, v18 + 72);
  *(v18 + 112) = a8;
  *(v18 + 120) = a10;
  *a9 = sub_100112600;
  a9[1] = v18;

  return result;
}

uint64_t sub_100110588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(a1 + 64);
  *(a1 + 64) = xmmword_100206E10;
  sub_10011202C(v17);
  v18 = sub_100110984(a2);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;

  v20 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 229, v18, sub_100112698, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 231, v20, sub_1001126D4, v21);

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1001126DC;
  *(v23 + 24) = v22;

  v24 = sub_10019F6C8();

  sub_100026064(a8, v30);
  v25 = swift_allocObject();
  sub_10002DD3C(v30, v25 + 16);
  *(v25 + 56) = a2;
  *(v25 + 64) = a3;
  *(v25 + 72) = a4;
  *(v25 + 80) = a5;

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 235, v24, sub_100112758, v25);

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a9;
  *(v26 + 32) = a10;
  *(v26 + 40) = a3;
  *(v26 + 48) = a4;
  *(v26 + 56) = a5;
  *(v26 + 64) = a1;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1001127C4;
  *(v27 + 24) = v26;

  sub_10019F6C8();

  swift_retain_n();

  sub_10011DE78();
}

uint64_t sub_100110984(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1001F78C8();
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      v7 = swift_unknownObjectRetain();
      ChannelPipeline.removeHandler(_:)(v7, v6);
      swift_unknownObjectRelease();
      sub_1001F7878();
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
      v5 += 2;
      --v4;
    }

    while (v4);
    v8 = *(*(a1 + 32) + 56);
    ObjectType = swift_getObjectType();
    v10 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1084, ObjectType, &type metadata for ()[1], v8);
    swift_unknownObjectRetain();
    sub_100110F70(_swiftEmptyArrayStorage, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v10 = v11;
    swift_unknownObjectRelease();
  }

  return v10;
}

uint64_t sub_100110B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  type metadata accessor for HTTPResponseHead._Storage();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *(v8 + 40) = 65537;
  v15 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  v12[0] = v8;
  v12[1] = a5;
  v13 = a6;
  v14 = 0;
  v16 = 2;
  sub_100030794("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 270);
  v10 = v9;

  ChannelHandlerContext.writeAndFlush(_:promise:)(v12, v10);

  sub_100034310(v12);
  return v10;
}

uint64_t sub_100110C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = &protocol witness table for HTTPResponseEncoder;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_100110C70(a2, v3, v4);

  return v5;
}

uint64_t sub_100110C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    ChannelPipeline.removeHandler(_:)(v4, a3);
    v6 = v5;
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v9 = v8;
    swift_unknownObjectRelease();
    return v9;
  }
}

uint64_t sub_100110D20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  sub_10001AE68(a1, v9);
  return (*(v10 + 32))(a2, a3, a4, a5, v9, v10);
}

unint64_t sub_100110D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16[3] = &type metadata for HTTPServerUpgradeEvents;
  v13 = swift_allocObject();
  v16[0] = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;

  ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
  sub_100019CCC(v16);
  v14 = *(a7 + 64);
  *(a7 + 64) = xmmword_100206E30;
  return sub_10011202C(v14);
}

uint64_t HTTPServerUpgradeHandler.deinit()
{

  sub_10011202C(*(v0 + 64));

  return v0;
}

uint64_t HTTPServerUpgradeHandler.__deallocating_deinit()
{
  HTTPServerUpgradeHandler.deinit();

  return swift_deallocClassInstance();
}

void sub_100110F70(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  if ((*(v4 + 16))(ObjectType, v4))
  {
    v7 = sub_10007B9BC();

    sub_100128958(v7, v8, v5);
  }

  else
  {
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a1;
    v9[4] = v5;
    v9[5] = v4;
    v10 = *(v4 + 24);

    swift_unknownObjectRetain();
    v10(sub_10011286C, v9, ObjectType, v4);
  }
}

unint64_t sub_10011108C(uint64_t a1)
{
  sub_1001128B0(a1);
  sub_1001F6C28();
  v3 = sub_1001F80D8();

  return sub_100111328(v2, v1, v3);
}

unint64_t sub_1001110F0(uint64_t a1)
{
  sub_1001F8068();
  v2 = sub_10013EBCC(a1);
  sub_10011288C(v2, v3, v4);

  v5 = sub_1001F80D8();

  return sub_1001113DC(a1, v5);
}

unint64_t sub_100111164(uint64_t a1)
{
  v2 = sub_1001F8058();

  return sub_1001114D4(a1, v2);
}

unint64_t sub_1001111A8(uint64_t a1)
{
  sub_1001128B0(a1);
  v3 = HTTPMethod.rawValue.getter(v2, v1);
  sub_10011288C(v3, v4, v5);

  v6 = sub_1001F80D8();

  return sub_100111534(v2, v1, v6);
}

unint64_t sub_100111214(uint64_t a1)
{
  sub_1001128FC(a1);
  type metadata accessor for CFString(0);
  sub_10011233C();
  sub_1001F6648();
  v2 = sub_1001F80D8();

  return sub_100111D78(v1, v2);
}

unint64_t sub_100111288(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F7738(*(v2 + 40));

  return sub_100111E48(a1, v4);
}

unint64_t sub_1001112D0(uint64_t a1)
{
  sub_1001128FC(a1);
  sub_1001F8088(v1);
  v2 = sub_1001F80D8();
  return sub_1001114D4(v1, v2);
}

unint64_t sub_100111328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1001F7EA8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1001113DC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_10013EBCC(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_10013EBCC(v3) && v8 == v9)
    {

      return i;
    }

    v11 = sub_1001F7EA8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1001114D4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_100111534(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v22 = ~v4;
    while (1)
    {
      v8 = (*(v3 + 48) + 16 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = 0xE300000000000000;
      v12 = 5522759;
      switch(v10)
      {
        case 0uLL:
          break;
        case 1uLL:
          v12 = 5526864;
          break;
        case 2uLL:
          v12 = 4997953;
          break;
        case 3uLL:
          v11 = 0xE400000000000000;
          v12 = 1145128264;
          break;
        case 4uLL:
          v11 = 0xE400000000000000;
          v12 = 1414745936;
          break;
        case 5uLL:
          v11 = 0xE400000000000000;
          v12 = 1498435395;
          break;
        case 6uLL:
          v11 = 0xE400000000000000;
          v12 = 1262702412;
          break;
        case 7uLL:
          v11 = 0xE400000000000000;
          v12 = 1163284301;
          break;
        case 8uLL:
          v11 = 0xE400000000000000;
          v12 = 1145981250;
          break;
        case 9uLL:
          v11 = 0xE400000000000000;
          v12 = 1263421772;
          break;
        case 0xAuLL:
          v11 = 0xE500000000000000;
          v12 = 0x4843544150;
          break;
        case 0xBuLL:
          v11 = 0xE500000000000000;
          v14 = 1128354388;
          goto LABEL_26;
        case 0xCuLL:
          v11 = 0xE500000000000000;
          v12 = 0x4C4F434B4DLL;
          break;
        case 0xDuLL:
          v11 = 0xE500000000000000;
          v13 = 17741;
          goto LABEL_25;
        case 0xEuLL:
          v11 = 0xE500000000000000;
          v13 = 21840;
LABEL_25:
          v14 = v13 & 0xFFFFFFFF0000FFFFLL | 0x47520000;
LABEL_26:
          v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
          break;
        case 0xFuLL:
          v11 = 0xE600000000000000;
          v12 = 0x594649544F4ELL;
          break;
        case 0x10uLL:
          v11 = 0xE600000000000000;
          v12 = 0x484352414553;
          break;
        case 0x11uLL:
          v11 = 0xE600000000000000;
          v12 = 0x4B434F4C4E55;
          break;
        case 0x12uLL:
          v11 = 0xE600000000000000;
          v12 = 0x444E49424552;
          break;
        case 0x13uLL:
          v12 = 0x444E49424E55;
          v11 = 0xE600000000000000;
          break;
        case 0x14uLL:
          v11 = 0xE600000000000000;
          v12 = 0x54524F504552;
          break;
        case 0x15uLL:
          v11 = 0xE600000000000000;
          v12 = 0x4554454C4544;
          break;
        case 0x16uLL:
          v11 = 0xE600000000000000;
          v12 = 0x4B4E494C4E55;
          break;
        case 0x17uLL:
          v11 = 0xE700000000000000;
          v12 = 0x5443454E4E4F43;
          break;
        case 0x18uLL:
          v11 = 0xE700000000000000;
          v12 = 0x4843524145534DLL;
          break;
        case 0x19uLL:
          v11 = 0xE700000000000000;
          v12 = 0x534E4F4954504FLL;
          break;
        case 0x1AuLL:
          v11 = 0xE800000000000000;
          v12 = 0x444E4946504F5250;
          break;
        case 0x1BuLL:
          v11 = 0xE800000000000000;
          v12 = 0x54554F4B43454843;
          break;
        case 0x1CuLL:
          v12 = 0x43544150504F5250;
          v11 = 0xE900000000000048;
          break;
        case 0x1DuLL:
          v12 = 0x4249524353425553;
          v11 = 0xE900000000000045;
          break;
        case 0x1EuLL:
          v12 = 0x444E454C41434B4DLL;
          v11 = 0xEA00000000005241;
          break;
        case 0x1FuLL:
          v12 = 0x4956495443414B4DLL;
          v11 = 0xEA00000000005954;
          break;
        case 0x20uLL:
          v12 = 0x5243534255534E55;
          v11 = 0xEB00000000454249;
          break;
        case 0x21uLL:
          v11 = 0xE600000000000000;
          v12 = 0x454352554F53;
          break;
        default:
          v12 = *v8;
          v11 = v8[1];
          break;
      }

      v15 = 0xE300000000000000;
      v16 = 5522759;
      switch(a2)
      {
        case 0uLL:
          break;
        case 1uLL:
          v16 = 5526864;
          break;
        case 2uLL:
          v16 = 4997953;
          break;
        case 3uLL:
          v15 = 0xE400000000000000;
          v16 = 1145128264;
          break;
        case 4uLL:
          v15 = 0xE400000000000000;
          v16 = 1414745936;
          break;
        case 5uLL:
          v15 = 0xE400000000000000;
          v16 = 1498435395;
          break;
        case 6uLL:
          v15 = 0xE400000000000000;
          v16 = 1262702412;
          break;
        case 7uLL:
          v15 = 0xE400000000000000;
          v16 = 1163284301;
          break;
        case 8uLL:
          v15 = 0xE400000000000000;
          v16 = 1145981250;
          break;
        case 9uLL:
          v15 = 0xE400000000000000;
          v16 = 1263421772;
          break;
        case 0xAuLL:
          v15 = 0xE500000000000000;
          v16 = 0x4843544150;
          break;
        case 0xBuLL:
          v15 = 0xE500000000000000;
          v18 = 1128354388;
          goto LABEL_63;
        case 0xCuLL:
          v15 = 0xE500000000000000;
          v16 = 0x4C4F434B4DLL;
          break;
        case 0xDuLL:
          v15 = 0xE500000000000000;
          v17 = 17741;
          goto LABEL_62;
        case 0xEuLL:
          v15 = 0xE500000000000000;
          v17 = 21840;
LABEL_62:
          v18 = v17 & 0xFFFFFFFF0000FFFFLL | 0x47520000;
LABEL_63:
          v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
          break;
        case 0xFuLL:
          v15 = 0xE600000000000000;
          v16 = 0x594649544F4ELL;
          break;
        case 0x10uLL:
          v15 = 0xE600000000000000;
          v16 = 0x484352414553;
          break;
        case 0x11uLL:
          v15 = 0xE600000000000000;
          v16 = 0x4B434F4C4E55;
          break;
        case 0x12uLL:
          v15 = 0xE600000000000000;
          v16 = 0x444E49424552;
          break;
        case 0x13uLL:
          v16 = 0x444E49424E55;
          v15 = 0xE600000000000000;
          break;
        case 0x14uLL:
          v15 = 0xE600000000000000;
          v16 = 0x54524F504552;
          break;
        case 0x15uLL:
          v15 = 0xE600000000000000;
          v16 = 0x4554454C4544;
          break;
        case 0x16uLL:
          v15 = 0xE600000000000000;
          v16 = 0x4B4E494C4E55;
          break;
        case 0x17uLL:
          v15 = 0xE700000000000000;
          v16 = 0x5443454E4E4F43;
          break;
        case 0x18uLL:
          v15 = 0xE700000000000000;
          v16 = 0x4843524145534DLL;
          break;
        case 0x19uLL:
          v15 = 0xE700000000000000;
          v16 = 0x534E4F4954504FLL;
          break;
        case 0x1AuLL:
          v15 = 0xE800000000000000;
          v16 = 0x444E4946504F5250;
          break;
        case 0x1BuLL:
          v15 = 0xE800000000000000;
          v16 = 0x54554F4B43454843;
          break;
        case 0x1CuLL:
          v16 = 0x43544150504F5250;
          v15 = 0xE900000000000048;
          break;
        case 0x1DuLL:
          v16 = 0x4249524353425553;
          v15 = 0xE900000000000045;
          break;
        case 0x1EuLL:
          v16 = 0x444E454C41434B4DLL;
          v15 = 0xEA00000000005241;
          break;
        case 0x1FuLL:
          v16 = 0x4956495443414B4DLL;
          v15 = 0xEA00000000005954;
          break;
        case 0x20uLL:
          v16 = 0x5243534255534E55;
          v15 = 0xEB00000000454249;
          break;
        case 0x21uLL:
          v15 = 0xE600000000000000;
          v16 = 0x454352554F53;
          break;
        default:
          v16 = a1;
          v15 = a2;
          break;
      }

      if (v12 == v16 && v11 == v15)
      {
        break;
      }

      v20 = sub_1001F7EA8();
      sub_10005E2E0(v9, v10);
      sub_10005E2E0(v9, v10);
      sub_10005E2E0(a1, a2);

      sub_10005E2F4(v9, v10);
      if ((v20 & 1) == 0)
      {
        v5 = (v5 + 1) & v22;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }

    sub_10005E2E0(v9, v10);
    sub_10005E2E0(v9, v10);
    sub_10005E2E0(a1, a2);

    sub_10005E2F4(v9, v10);
  }

  return v5;
}

unint64_t sub_100111D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_10011233C();
    v8 = v7;
    v9 = sub_1001F6638();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100111E48(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001122E0(*(v2 + 48) + 40 * i, v7);
    v5 = sub_1001F7748();
    sub_10003A1F8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10011202C(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_100112040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADD30, qword_100205400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001120B4()
{
  result = qword_1002B4428;
  if (!qword_1002B4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPServerUpgradeErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1001121A4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100112210(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100112228(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100112280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_10011233C()
{
  result = qword_1002B4550;
  if (!qword_1002B4550)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4550);
  }

  return result;
}

unint64_t sub_100112394()
{
  result = qword_1002B4558;
  if (!qword_1002B4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4558);
  }

  return result;
}

uint64_t sub_1001123E8()
{

  sub_100037548(*(v0 + 32), *(v0 + 40), *(v0 + 48) | ((*(v0 + 52) | (*(v0 + 54) << 16)) << 32), *(v0 + 55));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100112458()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100112498(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B4560, &qword_10020DE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100112500()
{

  sub_100019CCC((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100112598()
{

  sub_100019CCC((v0 + 72));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100112640()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100112708()
{
  sub_100019CCC((v0 + 16));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10011276C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001127DC()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100112824()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10011288C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1001F6C28();
}

void *sub_1001128B0(uint64_t a1, ...)
{

  return sub_1001F8068();
}

void *sub_1001128FC(uint64_t a1, ...)
{

  return sub_1001F8068();
}

uint64_t EventLoopPromise.succeed(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  sub_1001F8158();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_10007E2C8();
  (*(v8 + 16))(v7, a1, a3);
  sub_10007B9BC();
  swift_storeEnumTagMultiPayload();
  EventLoopPromise._resolve(value:)();
  v9 = sub_10007B9BC();
  return v10(v9);
}

uint64_t EventLoopPromise.fail(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  sub_1001F8158();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  *(&v9 - v5) = a1;
  sub_10007B9BC();
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  EventLoopPromise._resolve(value:)();
  v6 = sub_10007B9BC();
  return v7(v6);
}

uint64_t EventLoopFuture.cascadeFailure<A>(to:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    v5 = *v2;
    sub_1000A41C8();
    v6 = swift_allocObject();
    v6[2] = *(v5 + 80);
    v6[3] = a2;
    v6[4] = v4;
    sub_1000A3FAC();
    swift_retain_n();
    v7 = sub_10012F37C();
    EventLoopFuture.whenFailure(_:)(v7, v8);
  }

  return result;
}

uint64_t sub_100112C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, void (*a6)(uint64_t, __n128 *, uint64_t))
{
  v8 = sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
  v9 = sub_10012F8DC(v8);
  v10 = sub_10012EEF4(v9, a5[2]);
  sub_10012F78C(v10, v11, v12, v13, v14, v15, v16, v17, v20);

  a6(v18, a5, v9);

  return v9;
}

__n128 *sub_100112CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  sub_10012F1DC();
  v6 = swift_allocObject();
  sub_10012F094(v6, a5[2]);

  sub_10012F78C(v7, v8, v9, v10, v11, v12, v13, v14, v16);
  sub_100121D68(a5, a5, v6);

  return v6;
}

uint64_t EventLoopFuture.whenComplete(_:)()
{
  sub_100037B94();
  sub_1000A41C8();
  v1 = swift_allocObject();
  *(sub_10012F744(v1) + 32) = v0;

  sub_10012F998();
  EventLoopFuture._whenComplete(_:)();
}

void sub_100112E54(uint64_t a1)
{
  v2 = sub_1001135DC();
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v8 = a1 + 40;
  while (2)
  {
    for (i = (v8 + 16 * v7); ; i += 2)
    {
      v10 = *(a1 + 16);
      if (v7 == v10)
      {

        return;
      }

      if (v7 >= v10)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v12 = *(i - 1);
      v11 = *i;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100111F3C(v2, v13, v14, v15);
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v6 >= v2[2])
      {
        goto LABEL_19;
      }

      v16 = &v2[2 * v6 + 4];
      sub_100037408(*v16, v16[1]);
      *v16 = v12;
      v16[1] = v11;
      v17 = v2[2];
      v6 = (v17 + 0x7FFFFFFFFFFFFFFFLL) & (v6 + 1);
      if (v4 == v6)
      {
        break;
      }

      ++v7;
    }

    v18 = 2 * v17;
    if (2 * v17 < 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_1000375D4(0, v18, 0);
    if (v2[2] < v4)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100116AC8();
    if (v2[2] < v4)
    {
LABEL_22:
      __break(1u);
      break;
    }

    sub_100116AC8();
    v6 = _swiftEmptyArrayStorage[2];
    if ((v18 - v6) >= 0)
    {
      ++v7;
      sub_100116BF4(v18 - v6, 0, 0);

      v4 = 0;
      v8 = a1 + 40;
      v2 = _swiftEmptyArrayStorage;
      continue;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_100113068(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v5 = v1[2];
    v6 = *v1;
    v14 = *(v2 + 16 * v3 + 32);
    swift_retain_n();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100111F3C(v6, v7, v8, v9);
      v6 = result;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    if (v5 >= *(v6 + 16))
    {
      goto LABEL_16;
    }

    v10 = v6 + 16 * v5;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    *(v10 + 32) = v14;
    sub_100037408(v11, v12);
    *v1 = v6;
    v13 = (*(v6 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v5 + 1);
    v1[2] = v13;
    if (v1[1] == v13)
    {
      sub_100113CFC();
    }

    ++v3;
  }
}

void sub_100113180()
{
  sub_10001A1F0();
  v37 = v2;
  if (v1)
  {
    v3 = v0;
    v4 = v1;
    v5 = v1 & ~(v1 >> 63);
    while (1)
    {
      if (!v5)
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
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v35 = 1;
        goto LABEL_73;
      }

      v7 = *(v3 + 24);
      v6 = *(v3 + 32);
      if (v6 < v7)
      {
        goto LABEL_51;
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_52;
      }

      v9 = *(v3 + 12);
      v10 = v9 - v6;
      if (__OFSUB__(v9, v6))
      {
        goto LABEL_53;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10)
      {
        v38 = v4;
        v11 = *(v3 + 8);
        if (v6 < v11)
        {
          goto LABEL_71;
        }

        if (__OFADD__(v6, v10))
        {
          goto LABEL_58;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (__OFADD__(v8, v10))
          {
            goto LABEL_63;
          }

          if (v9 <= v8 + v10)
          {
            v12 = v8 + v10;
          }

          else
          {
            v12 = v9;
          }

          v13 = *(v3 + 22) | (*(v3 + 20) << 8);
          LODWORD(v14) = *(v3 + 16);
          if (v14 < v13)
          {
            goto LABEL_64;
          }

          if (__CFADD__(v13, v14 - v13))
          {
            goto LABEL_65;
          }

          v15 = v13 + v12;
          if (__CFADD__(v13, v12))
          {
            goto LABEL_66;
          }

          if (v15 >= v14)
          {
            v14 = v14;
          }

          else
          {
            v14 = v15;
          }

          if (v14 < v13)
          {
            goto LABEL_67;
          }

          v16 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v13 | (v14 << 32), v12);

          *v3 = v16;
          *(v3 + 8) = v11;
          *(v3 + 12) = v9;
          *(v3 + 16) = *(v16 + 16);
          *(v3 + 20) = 0;
          *(v3 + 22) = 0;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_59;
        }

        v17 = *(v3 + 20);
        v18 = *(v3 + 22);
        v19 = v18 | (v17 << 8);
        v20 = v19 + v8;
        if (__CFADD__(v19, v8))
        {
          goto LABEL_60;
        }

        v21 = __CFADD__(v20, v10);
        v22 = v20 + v10;
        if (v21)
        {
          goto LABEL_61;
        }

        v23 = *(v3 + 16);
        v24 = *v3;
        if (v23 < v22)
        {
          v25 = *(v24 + 16);
          if (v25 >= v22)
          {
            if (v25 < v19)
            {
              goto LABEL_68;
            }

            *(v3 + 16) = v25;
            LODWORD(v23) = v25;
          }

          else
          {
            if (__CFADD__(v8, v10))
            {
              goto LABEL_69;
            }

            if (v19)
            {
              if (v23 < v19)
              {
                goto LABEL_70;
              }

              v26 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v19 | (v23 << 32), v8 + v10);

              v27 = v26;
              *v3 = v26;
              v24 = v26;
            }

            else
            {
              ByteBuffer._Storage.reallocStorage(capacity:)(v8 + v10);
              v27 = *v3;
            }

            v18 = 0;
            v17 = 0;
            LODWORD(v23) = *(v24 + 16);
            *(v3 + 16) = v23;
            *(v3 + 20) = 0;
            *(v3 + 22) = 0;
            v24 = v27;
          }
        }

        sub_100047940();
        swift_beginAccess();
        v28 = v18 | (v17 << 8);
        v29 = v23 - v28;
        if (v23 < v28)
        {
          goto LABEL_62;
        }

        if ((v6 + 1) < v29)
        {
          v29 = (v6 + 1);
        }

        if (v6 == -1)
        {
          v29 = 0;
        }

        memmove((*(v24 + 24) + v28 + v29), (*(v24 + 24) + v28 + v6), v10);
        v4 = v38;
      }

      sub_10005FFC8(v37, v6);
      v30 = *(v3 + 12);
      v21 = __CFADD__(v30, 1);
      v31 = v30 + 1;
      if (v21)
      {
        goto LABEL_54;
      }

      v32 = *(v3 + 16);
      v33 = *(v3 + 22) | (*(v3 + 20) << 8);
      v21 = v32 >= v33;
      v34 = v32 - v33;
      if (!v21)
      {
        goto LABEL_55;
      }

      if (v34 < v31)
      {
        goto LABEL_56;
      }

      *(v3 + 12) = v31;
      if (v8 < v7)
      {
        goto LABEL_57;
      }

      *(v3 + 24) = v7;
      *(v3 + 32) = v8;
      --v5;
      if (!--v4)
      {
        goto LABEL_49;
      }
    }

    v35 = 0;
LABEL_73:
    sub_100061B5C();
    swift_allocError();
    *v36 = v35;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_49:
    sub_10001A1D4();
  }
}

uint64_t sub_10011349C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 - a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001134C0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_100113520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v8 = sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
  v9 = sub_10012F8DC(v8);
  v10 = sub_10012EEF4(v9, *(a5 + 40));
  sub_10012F78C(v10, v11, v12, v13, v14, v15, v16, v17, v20);

  sub_100120B40(v18, a5, v9, v6);

  return v9;
}

uint64_t sub_1001135DC()
{
  sub_1000183C4(&qword_1002B46E0, &unk_10020E150);
  v0 = sub_1001F78F8();
  *(v0 + 16) = 16;
  bzero((v0 + 32), 0x100uLL);
  return v0;
}

uint64_t EventLoopFuture.map<A>(file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *(*v7 + 80);
  v11 = &type metadata for ()[1];
  if (v10 == a7 && a7 == v11)
  {
    sub_10012F98C();
    swift_getFunctionTypeMetadata1();

    swift_dynamicCast();
    sub_100047958();
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v11;
    *(v16 + 32) = v20;
    EventLoopFuture.whenSuccess(_:)(sub_100128918, v16);

    type metadata accessor for EventLoopFuture(0, &type metadata for ()[1], v17, v18);
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v14 = EventLoopPromise.init(eventLoop:file:line:)(*(v7 + *(*v7 + 96)), *(v7 + *(*v7 + 96) + 8), a1, a2, a3, a4, a7);
    sub_1000A3FC4();
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = v14;
    v15[4] = v7;
    v15[5] = a5;
    v15[6] = a6;

    swift_unknownObjectRetain();

    sub_10012F1E8();
    EventLoopFuture._whenComplete(_:)();
  }

  return v14;
}

uint64_t sub_100113818(void (*a1)(_BYTE *))
{
  v2 = *v1;
  if (*(v1 + 63))
  {
    swift_errorRetain();
  }

  else
  {
    *v7 = *v1;
    *&v7[8] = *(v1 + 1);
    *&v7[24] = *(v1 + 3);
    *&v7[40] = *(v1 + 5);
    *&v7[55] = *(v1 + 55);
    sub_1000ACFAC();
    a1(v7);
    v5[0] = *v7;
    v5[1] = *&v7[16];
    v6[0] = *&v7[32];
    *(v6 + 15) = *&v7[47];
    sub_1000E5E28(v5);
    return 0;
  }

  return v2;
}

uint64_t sub_1001138E8(void (*a1)(void), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    swift_errorRetain();
  }

  else
  {
    a1();
    return 0;
  }

  return a3;
}

uint64_t sub_100113934(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    swift_errorRetain();
  }

  else
  {
    a1(&v6);
    return v6;
  }

  return a3;
}

uint64_t EventLoopFuture.always(_:)()
{
  sub_100037B94();
  v3 = *v1;
  sub_1000A41C8();
  v4 = swift_allocObject();
  v4[2] = *(v3 + 80);
  v4[3] = v2;
  v4[4] = v0;

  sub_10012F37C();
  EventLoopFuture.whenComplete(_:)();
}

uint64_t EventLoopFuture.wait(file:line:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = v4;
  v10 = *v7;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  sub_10012F52C();
  v30 = sub_1001F74B8();
  sub_10002DFFC();
  v12 = v11;
  sub_10001E844();
  __chkstk_darwin(v13);
  sub_10005DBB4();
  v14 = *(v7 + *(v10 + 96) + 8);
  ObjectType = swift_getObjectType();
  (*(v14 + 80))(a1, a2, a3, a4, ObjectType, v14);
  v16 = swift_allocBox();
  v18 = v17;
  v19 = sub_10012F57C(v16, v17);
  sub_100018460(v19, v20, v21, v5);
  sub_1000183C4(&qword_1002B4570, &qword_10020DE58);
  sub_1000A41C8();
  swift_allocObject();
  v22 = sub_10012CD34(0);
  sub_1000A41C8();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v16;
  v23[4] = v7;

  sub_10012F37C();
  EventLoopFuture._whenComplete(_:)();

  sub_100127948(1);
  Lock.unlock()();
  sub_100047940();
  swift_beginAccess();
  (*(v12 + 16))(v6, v18, v30);
  v24 = sub_1000D4AC8();
  result = sub_10001C990(v24, v25, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10012F2E8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();
    }

    else
    {

      sub_10007E2C8();
      (*(v27 + 32))();
    }
  }

  return result;
}

void sub_100113CFC()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_10012EF24();
  sub_1000375D4(v3, v4, v5);
  sub_10012F4E4();
  sub_10012EDD0();
  sub_100116AC8();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v6)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EDD0();
  sub_10012F304();
  sub_100116AC8();
  sub_10012F310(v7, v8, v9, v10, v11, v12, v13, v14, v23, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_10012EDE8();
    sub_10012F1C4();
    sub_100116870();

    sub_10012F2F4(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100113DE8()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_10012EF24();
  sub_100033FEC(v3, v4, v5);
  sub_10012F4E4();
  sub_100114730();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v6)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EF6C();
  sub_100114730();
  sub_10012F310(v7, v8, v9, v10, v11, v12, v13, v14, v24, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_100047940();
    sub_1001144E4(v15);

    sub_10012F2F4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100113EE0()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_10012EF24();
  sub_10003402C(v3, v4, v5);
  sub_10012F4E4();
  sub_100114730();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v6)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EF6C();
  sub_100114730();
  sub_10012F310(v7, v8, v9, v10, v11, v12, v13, v14, v26, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_10012F1C4();
    sub_100114858(v15, v16, v17, 0);

    sub_10012F2F4(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100113FD8()
{
  sub_10012EE00();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = sub_10012EF24();
  sub_10003406C(v4, v5, v6);
  v7 = sub_10012F4E4();
  sub_100114AFC(v7, v8, v9, v10);
  if ((v0[2] & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_100114AFC(v12, v13, v14, v15);
  v16 = _swiftEmptyArrayStorage[2];
  if (v1 - v16 >= 0)
  {
    v17 = v1 - v16;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    sub_100114C84(&v17);

    v0[1] = 0;
    v0[2] = v16;
    *v0 = _swiftEmptyArrayStorage;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1001140B0()
{
  sub_10012EE00();
  if (v3 != v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = _swiftEmptyArrayStorage;
  v5 = sub_10012EF24();
  sub_1000341A4(v5, v6, v7);
  v8 = sub_10012F4E4();
  sub_10011502C(v8, v9, v10, v11);
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_10011502C(v13, v14, v15, v16);
  sub_10012F3E0();
  v18 = -1;
  if (v1 - v2 >= 0)
  {
    v17[0] = v1 - v2;
    sub_10011535C(v17);

    sub_10012F4C4();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_10011416C()
{
  sub_10012EE00();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = sub_10012EF24();
  sub_1000341E4(v4, v5, v6);
  v7 = sub_10012F4E4();
  sub_1001156F8(v7, v8, v9, v10);
  if ((v0[2] & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_1001156F8(v12, v13, v14, v15);
  v16 = _swiftEmptyArrayStorage[2];
  if (v1 - v16 >= 0)
  {
    v17[0] = v1 - v16;
    memset(&v17[1], 0, 24);
    v17[4] = 1;
    sub_100115850(v17);

    v0[1] = 0;
    v0[2] = v16;
    *v0 = _swiftEmptyArrayStorage;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100114244()
{
  sub_10012EE00();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v23 = _swiftEmptyArrayStorage;
  v4 = sub_10012EF24();
  sub_100034224(v4, v5, v6);
  v7 = sub_10012F4E4();
  sub_100115AF0(v7, v8, v9, v10);
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_10012F304();
  sub_100115AF0(v12, v13, v14, v15);
  v16 = v23[2];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v22 = 1;
  if (v1 - v16 >= 0)
  {
    v17 = v1 - v16;
    sub_100115E18(&v17);

    sub_10012F4C4();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100114318()
{
  sub_10012EE00();
  if (v3 != v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = _swiftEmptyArrayStorage;
  v5 = sub_10012EF24();
  sub_100034244(v5, v6, v7);
  v8 = sub_10012F4E4();
  sub_1001161A4(v8, v9, v10, v11);
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_1001161A4(v13, v14, v15, v16);
  sub_10012F3E0();
  v18 = -256;
  if (v1 - v2 >= 0)
  {
    v17[0] = v1 - v2;
    sub_1001164D4(v17);

    sub_10012F4C4();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1001143D4()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_10012EF24();
  sub_10003458C(v3, v4, v5);
  sub_10012F4E4();
  sub_100116AC8();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v6)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EF6C();
  sub_100116AC8();
  sub_10012F310(v7, v8, v9, v10, v11, v12, v13, v14, v23, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_10012F1C4();
    sub_100116870();

    sub_10012F2F4(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1001144E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 + a1;
  if (__OFADD__(v3, a1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v2 + 24) >> 1;
    if (v7 >= v4)
    {
      goto LABEL_11;
    }

    if (v3 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }
  }

  else if (v3 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  sub_100033FEC(isUniquelyReferenced_nonNull_native, v8, 1);
  v2 = *v1;
  v7 = *(*v1 + 24) >> 1;
LABEL_11:
  v9 = v7 - *(v2 + 16);
  sub_10006D7FC();
  if (v10 < a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= 1)
  {
    v11 = *(v2 + 16);
    v12 = __OFADD__(v11, v10);
    v13 = v11 + v10;
    if (v12)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v2 + 16) = v13;
  }

  if (v10 != v9 || v30 == v25)
  {
LABEL_30:

    *v1 = v2;
    return;
  }

  if ((v30 & 0x8000000000000000) == 0 && v30 < v25)
  {
    v23 = v1;
    v14 = *(v2 + 16);
    v15 = v30 + 1;

LABEL_20:
    v16 = *(v2 + 24);
    if (v14 + 1 > (v16 >> 1))
    {
      sub_100033FEC(v16 > 1, v14 + 1, 1);
    }

    v17 = 0;
    v18 = *(*v23 + 24) >> 1;
    v24 = *v23;
    for (i = *v23 + 24 * v14 + 48; ; i += 24)
    {
      v20 = v14 + v17;
      v21 = v15 + v17;
      if (v14 + v17 >= v18)
      {
        v2 = v24;
        *(v24 + 16) = v20;
        v14 = v20;
        v15 = v21;
        goto LABEL_20;
      }

      *(i - 16) = v26;
      *i = v27;
      *(i + 6) = (v27 | ((v28 | (v29 << 16)) << 32)) >> 48;
      *(i + 4) = v28;
      if (!(v15 - v25 + v17))
      {
        v22 = v14 + v17 + 1;
        v1 = v23;
        v2 = v24;
        *(v24 + 16) = v22;
        goto LABEL_30;
      }

      if (v15 < 0 || v21 >= v25)
      {
        break;
      }

      ++v17;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_35:
  __break(1u);
}

void sub_100114730()
{
  sub_1000A4080();
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v1;
  if (__OFSUB__(v5 >> 1, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v0;
  v9 = *(*v0 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v2;
  v11 = v1;
  v17 = v3;
  v18 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v13 = *(v8 + 24) >> 1, v13 < v9 + v7))
  {
    v10();
    v8 = *v0;
    v13 = *(*v0 + 24) >> 1;
  }

  if (v6 == v11)
  {
    if (v7 <= 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      *v0 = v8;
      sub_1000A3DA0();
      return;
    }

    __break(1u);
  }

  if (v13 - *(v8 + 16) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000183C4(v17, v18);
  swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_13;
  }

  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 + v7;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

void sub_100114858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + result;
  if (__OFADD__(v6, result))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v5 + 24) >> 1;
    if (v12 >= v7)
    {
      goto LABEL_11;
    }

    if (v6 <= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }
  }

  else if (v6 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  sub_10003402C(isUniquelyReferenced_nonNull_native, v13, 1);
  v5 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_11:
  v14 = *(v5 + 16);
  v15 = v12 - v14;
  v29 = v4;
  if (v12 == v14)
  {
LABEL_18:
    if (result > 0)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v20 = 0;
    goto LABEL_25;
  }

  v28 = v12 - v14;
  v30 = v5;
  v16 = v5 + 24 * v14 + 32;
  v17 = v12 - v14;
  v5 = v15 & ~(v15 >> 63);
  v18 = result;
  v4 = result & ~(result >> 63);
  v19 = ~v14 + v12;
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  while (1)
  {
    if (!v18)
    {
      v5 = v30;
      v20 = result;
      v4 = v29;
      v15 = v17;
      goto LABEL_22;
    }

    if (!v4)
    {
      goto LABEL_43;
    }

    *v16 = a2;
    *(v16 + 8) = a3;
    *(v16 + 16) = v8;
    if (!v19)
    {
      break;
    }

    v16 += 24;
    sub_10012DC6C(a2, a3);
    --v4;
    --v5;
    --v19;
    --v18;
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  sub_10012DC6C(a2, a3);
  v5 = v30;
  v15 = v17;
  v20 = v28;
  v4 = v29;
  if (v17 < result)
  {
    goto LABEL_45;
  }

LABEL_22:
  if (v20 <= 0)
  {
    goto LABEL_25;
  }

  v21 = __OFADD__(v14, v20);
  v14 += v20;
  if (!v21)
  {
    *(v5 + 16) = v14;
LABEL_25:
    if (v20 != v15 || v15 == result)
    {
LABEL_41:
      sub_1000370B8(a2, a3);
      *v4 = v5;
      return;
    }

    if (v15 >= result)
    {
      goto LABEL_46;
    }

    v23 = v15 + 1;
    sub_10012DC6C(a2, a3);
LABEL_31:
    v24 = *(v5 + 24);
    if (v14 + 1 > (v24 >> 1))
    {
      sub_10003402C(v24 > 1, v14 + 1, 1);
    }

    v25 = 0;
    v26 = *(*v4 + 24) >> 1;
    v31 = *v4;
    for (i = (*v4 + 24 * v14 + 48); ; i += 24)
    {
      if (v14 + v25 >= v26)
      {
        v4 = v29;
        v5 = v31;
        *(v31 + 16) = v14 + v25;
        v14 += v25;
        v23 += v25;
        goto LABEL_31;
      }

      *(i - 2) = a2;
      *(i - 1) = a3;
      *i = v8;
      if (!(v23 - result + v25))
      {
        v4 = v29;
        v5 = v31;
        *(v31 + 16) = v14 + v25 + 1;
        goto LABEL_41;
      }

      if (v23 < 0 || v23 + v25 >= result)
      {
        break;
      }

      sub_10012DC6C(a2, a3);
      ++v25;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_47:
  __break(1u);
}

void sub_100114AFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_10003406C(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  v14 = v12 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v14 >= v6)
    {
      sub_1000183C4(&qword_1002ADC00, &qword_100205800);
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, v6);
      v17 = v15 + v6;
      if (!v16)
      {
        *(v7 + 16) = v17;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 > 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = 0;
LABEL_19:
  swift_unknownObjectRelease();
  if (v6 == v14)
  {
    v18 = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    sub_1000374B8(&v18, &qword_1002B46A0, &unk_10020E0E8);
  }

  *v4 = v7;
}

uint64_t sub_100114C84(uint64_t result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v4 + 24) >> 1;
    if (v8 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  sub_10003406C(isUniquelyReferenced_nonNull_native, v9, 1);
  v4 = *v2;
  v8 = *(*v2 + 24) >> 1;
LABEL_11:
  v10 = *(v4 + 16);
  v11 = v8 - v10;
  result = sub_10006D8EC(__src, (v4 + (v10 << 6) + 32), v8 - v10);
  if (result < v3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = v4;
  if (result < 1)
  {
LABEL_15:
    if (result == v11)
    {
      v16 = *(v4 + 16);
      v17 = __src[0];
      if (__src[9] == __src[0])
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0uLL;
        v22 = 1;
        v23 = 0uLL;
        v24 = __src[0];
      }

      else
      {
        __dst[0] = *&__src[1];
        __dst[1] = *&__src[3];
        __dst[2] = *&__src[5];
        __dst[3] = *&__src[7];
        if ((__src[9] & 0x8000000000000000) != 0 || __src[9] >= __src[0])
        {
          goto LABEL_43;
        }

        v24 = __src[9] + 1;
        v20 = *(&__dst[3] + 1);
        v19 = *&__dst[3];
        v18 = *(&__dst[2] + 1);
        v22 = *&__dst[0];
        ++__src[9];
        sub_1000ACFAC();
        v23 = *(&__dst[1] + 8);
        v21 = *(__dst + 8);
      }

      v35 = v24;
      v31 = v2;
LABEL_22:
      if (v22 != 1)
      {
        v34 = v24;
        v25 = *(v12 + 24);
        if (v16 + 1 > (v25 >> 1))
        {
          v37 = v23;
          v39 = v21;
          sub_10003406C(v25 > 1, v16 + 1, 1);
          v23 = v37;
          v21 = v39;
        }

        v26 = *(*v2 + 24) >> 1;
        v27 = *v2 + 88;
        v28 = v35;
        v32 = v27;
        v33 = *v2;
        while (1)
        {
          v29 = (v27 + (v16 << 6));
          while (1)
          {
            if (v22 == 1 || v16 >= v26)
            {
              v12 = v33;
              *(v33 + 16) = v16;
              v35 = v28;
              v2 = v31;
              v24 = v34;
              goto LABEL_22;
            }

            v42 = v21;
            v43 = v23;
            v41 = v22;
            v44 = v18;
            v45 = v19;
            v46 = v20;
            *(__dst + 8) = v21;
            *(&__dst[1] + 8) = v23;
            *&__dst[0] = v22;
            *(&__dst[2] + 1) = v18;
            *&__dst[3] = v19;
            *(&__dst[3] + 1) = v20;
            v36 = v23;
            v38 = v21;
            sub_1000ACFAC();
            result = sub_1000374B8(&v41, &qword_1002B46A0, &unk_10020E0E8);
            *(v29 - 7) = v22;
            *(v29 - 3) = v38;
            *(v29 - 2) = v36;
            *(v29 - 2) = v18;
            *(v29 - 1) = v19;
            *v29 = v20;
            if (v28 != v17)
            {
              break;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            v29 += 8;
            v21 = 0uLL;
            ++v16;
            v23 = 0uLL;
            v22 = 1;
          }

          *v40 = __src[2];
          *&v40[8] = *&__src[3];
          *&v40[24] = __src[5];
          if (v35 < 0 || v28 >= v17)
          {
            break;
          }

          ++v16;
          ++v28;
          v20 = __src[8];
          v19 = __src[7];
          v18 = __src[6];
          v22 = __src[1];
          sub_1000ACFAC();
          v23 = *&v40[16];
          v21 = *v40;
          v34 = v28;
          v27 = v32;
        }

        __break(1u);
        goto LABEL_40;
      }

      __src[9] = v24;
      v43 = v23;
      v42 = v21;
      v41 = 1;
      v44 = v18;
      v45 = v19;
      v46 = v20;
      sub_1000374B8(&v41, &qword_1002B46A0, &unk_10020E0E8);
    }

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_1000374B8(__dst, &qword_1002B4698, &unk_10020E0D8);
    *v2 = v12;
    return result;
  }

  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, result);
  v15 = v13 + result;
  if (!v14)
  {
    *(v4 + 16) = v15;
    goto LABEL_15;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_10011502C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_1000341A4(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  v14 = v12 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v14 >= v6)
    {
      sub_1000183C4(&qword_1002ADD30, qword_100205400);
      swift_arrayInitWithCopy();
      if (v6 > 0)
      {
        v16 = *(v7 + 16);
        v17 = __OFADD__(v16, v6);
        v18 = v16 + v6;
        if (v17)
        {
LABEL_47:
          __break(1u);
          return;
        }

        *(v7 + 16) = v18;
      }

      v15 = v5;
      goto LABEL_20;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v6 > 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = 0;
  v15 = a3;
LABEL_20:
  if (v6 == v14)
  {
    v19 = *(v7 + 16);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v40 = -2;
    while (1)
    {
      sub_1000ACFAC();
      if (v35[24] == 254)
      {
        break;
      }

      sub_1000374B8(&v33, &qword_1002B46B8, &qword_10020E110);
      v20 = *(v7 + 24);
      if (v19 + 1 > (v20 >> 1))
      {
        sub_1000341A4(v20 > 1, v19 + 1, 1);
      }

      v7 = *v4;
      v21 = *(*v4 + 24) >> 1;
      for (i = (v19 << 6) | 0x20; ; i += 64)
      {
        sub_1000ACFAC();
        if (v32[24] == 254)
        {
          v28 = v31;
          v29 = &qword_1002B46B8;
          v30 = &qword_10020E110;
          goto LABEL_39;
        }

        v33 = v31[0];
        v34 = v31[1];
        *v35 = *v32;
        *&v35[9] = *&v32[9];
        if (v19 >= v21)
        {
          break;
        }

        sub_1000374B8(&v36, &qword_1002B46B8, &qword_10020E110);
        v23 = (v7 + i);
        v25 = v34;
        v24 = *v35;
        v26 = v33;
        *(v23 + 41) = *&v35[9];
        v23[1] = v25;
        v23[2] = v24;
        *v23 = v26;
        if (v15 == v5)
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          v15 = v5;
          v40 = -2;
        }

        else
        {
          if (v15 < a3 || v15 >= v5)
          {
            __break(1u);
            goto LABEL_43;
          }

          sub_1000ACFAC();
          ++v15;
        }

        ++v19;
      }

      v28 = &v33;
      v29 = &qword_1002ADD30;
      v30 = qword_100205400;
LABEL_39:
      sub_1000374B8(v28, v29, v30);
      *(v7 + 16) = v19;
    }

    sub_1000374B8(&v36, &qword_1002B46B8, &qword_10020E110);
    swift_unknownObjectRelease();
    sub_1000374B8(&v33, &qword_1002B46B8, &qword_10020E110);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v7;
}

uint64_t *sub_10011535C(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v4 + 24) >> 1;
    if (v9 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  sub_1000341A4(isUniquelyReferenced_nonNull_native, v10, 1);
  v4 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = v9 - *(v4 + 16);
  sub_1000ACFAC();
  v12 = sub_10006DCA0();
  result = sub_1000374B8(v7, &qword_1002B46A8, &qword_10020E0F8);
  if (v12 < v3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v12 >= 1)
  {
    v13 = *(v4 + 16);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (!v14)
    {
      *(v4 + 16) = v15;
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_15:
  if (v12 != v11)
  {
    result = sub_1000374B8(v40, &qword_1002B46B0, &unk_10020E100);
LABEL_38:
    *v2 = v4;
    return result;
  }

  v16 = *(v4 + 16);
  v17 = v40[0];
  v29 = v2;
  if (v41 == v40[0])
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v39 = -2;
    v18 = v40[0];
LABEL_22:
    while (2)
    {
      sub_1000ACFAC();
      if (v34[24] != 254)
      {
        sub_1000374B8(&v32, &qword_1002B46B8, &qword_10020E110);
        v19 = *(v4 + 24);
        if (v16 + 1 > (v19 >> 1))
        {
          sub_1000341A4(v19 > 1, v16 + 1, 1);
        }

        v4 = *v29;
        v20 = *(*v29 + 24) >> 1;
        for (i = (v16 << 6) | 0x20; ; i += 64)
        {
          sub_1000ACFAC();
          if (v31[24] == 254)
          {
            break;
          }

          v32 = v30[0];
          v33 = v30[1];
          *v34 = *v31;
          *&v34[9] = *&v31[9];
          if (v16 >= v20)
          {
            v26 = &v32;
            v27 = &qword_1002ADD30;
            v28 = qword_100205400;
            goto LABEL_36;
          }

          result = sub_1000374B8(&v35, &qword_1002B46B8, &qword_10020E110);
          v22 = (v4 + i);
          v24 = v33;
          v23 = *v34;
          v25 = v32;
          *(v22 + 41) = *&v34[9];
          v22[1] = v24;
          v22[2] = v23;
          *v22 = v25;
          if (v18 == v17)
          {
            v38 = 0;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v18 = v17;
            v39 = -2;
          }

          else
          {
            if (v18 < 0 || v18 >= v17)
            {
              __break(1u);
              goto LABEL_40;
            }

            sub_1000ACFAC();
            v41 = ++v18;
          }

          ++v16;
        }

        v26 = v30;
        v27 = &qword_1002B46B8;
        v28 = &qword_10020E110;
LABEL_36:
        sub_1000374B8(v26, v27, v28);
        *(v4 + 16) = v16;
        continue;
      }

      break;
    }

    sub_1000374B8(&v35, &qword_1002B46B8, &qword_10020E110);
    sub_1000374B8(v40, &qword_1002B46B0, &unk_10020E100);
    result = sub_1000374B8(&v32, &qword_1002B46B8, &qword_10020E110);
    v2 = v29;
    goto LABEL_38;
  }

  if ((v41 & 0x8000000000000000) == 0 && v41 < v40[0])
  {
    sub_1000ACFAC();
    v18 = ++v41;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_1001156F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_1000341E4(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  v14 = v12 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v14 >= v6)
    {
      sub_1000183C4(&qword_1002ADC28, &qword_100200970);
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, v6);
      v17 = v15 + v6;
      if (!v16)
      {
        *(v7 + 16) = v17;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 > 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = 0;
LABEL_19:
  swift_unknownObjectRelease();
  if (v6 == v14)
  {
    sub_10012DBF8(0, 0, 0, 2);
  }

  *v4 = v7;
}

void sub_100115850(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *a1;
  if (__OFADD__(v5, *a1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v4 + 24) >> 1;
    if (v8 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  sub_1000341E4(isUniquelyReferenced_nonNull_native, v9, 1);
  v4 = *v2;
  v8 = *(*v2 + 24) >> 1;
LABEL_11:
  v10 = v8 - *(v4 + 16);
  sub_10006DD84();
  if (v11 < v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v11 < 1)
  {
LABEL_15:
    if (v11 == v10)
    {
      v15 = *(v4 + 16);
      v31 = v2;
      if (v43 == v38)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v34 = v39;
        v35 = v40;
        v19 = 2;
        v20 = v38;
        v32 = v41;
        v33 = v42;
      }

      else
      {
        if (v43 < 0 || v43 >= v38)
        {
          goto LABEL_42;
        }

        v16 = v41;
        v19 = v42;
        v18 = v39;
        v17 = v40;
        v20 = v43 + 1;
        sub_10006E310(v39, v40, v41, v42);
        v32 = v41;
        v33 = v42;
        v34 = v39;
        v35 = v40;
      }

LABEL_22:
      if (v19 != 2)
      {
        v25 = *(v4 + 24);
        if (v15 + 1 > (v25 >> 1))
        {
          sub_1000341E4(v25 > 1, v15 + 1, 1);
        }

        v26 = *v2 + 56;
        v36 = v20;
        v37 = *v2;
        v27 = *(*v2 + 24) >> 1;
        v28 = v20;
        while (1)
        {
          v29 = (v26 + 32 * v15);
          do
          {
            if (v19 == 2 || v15 >= v27)
            {
              v4 = v37;
              *(v37 + 16) = v15;
              v20 = v28;
              v2 = v31;
              goto LABEL_22;
            }

            sub_10006E310(v18, v17, v16, v19);
            sub_10012DBF8(v18, v17, v16, v19);
            *(v29 - 3) = v18;
            *(v29 - 2) = v17;
            ++v15;
            *(v29 - 1) = v16;
            *v29 = v19;
            v29 += 4;
            v19 = 2;
            v16 = 0;
            v17 = 0;
            v18 = 0;
          }

          while (v28 == v38);
          if (v36 < 0 || v28 >= v38)
          {
            break;
          }

          ++v28;
          v18 = v34;
          v17 = v35;
          v16 = v32;
          v19 = v33;
          sub_10006E310(v34, v35, v32, v33);
        }

        __break(1u);
        goto LABEL_39;
      }

      sub_10012DBF8(v18, v17, v16, 2);
      v21 = v34;
      v22 = v35;
      v23 = v32;
      v24 = v33;
    }

    else
    {
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v24 = v42;
    }

    sub_10003715C(v21, v22, v23, v24);
    *v2 = v4;
    return;
  }

  v12 = *(v4 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v4 + 16) = v14;
    goto LABEL_15;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_100115AF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_100034224(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  v14 = v12 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v14 >= v6)
    {
      sub_1000183C4(&qword_1002ADD70, &qword_100200AE0);
      swift_arrayInitWithCopy();
      if (v6 > 0)
      {
        v16 = *(v7 + 16);
        v17 = __OFADD__(v16, v6);
        v18 = v16 + v6;
        if (v17)
        {
LABEL_47:
          __break(1u);
          return;
        }

        *(v7 + 16) = v18;
      }

      v15 = v5;
      goto LABEL_20;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v6 > 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = 0;
  v15 = a3;
LABEL_20:
  if (v6 == v14)
  {
    v19 = *(v7 + 16);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v33 = 2;
    while (1)
    {
      sub_1000ACFAC();
      if (__dst[8] == 2)
      {
        break;
      }

      sub_1000374B8(__dst, &qword_1002B46D0, &unk_10020E130);
      v20 = *(v7 + 24);
      if (v19 + 1 > (v20 >> 1))
      {
        sub_100034224(v20 > 1, v19 + 1, 1);
      }

      v7 = *v4;
      v21 = *(*v4 + 24) >> 1;
      for (i = 72 * v19 + 32; ; i += 72)
      {
        sub_1000ACFAC();
        if (__src[8] == 2)
        {
          v24 = __src;
          v25 = &qword_1002B46D0;
          v26 = &unk_10020E130;
          goto LABEL_39;
        }

        memcpy(__dst, __src, sizeof(__dst));
        if (v19 >= v21)
        {
          break;
        }

        sub_1000374B8(&v29, &qword_1002B46D0, &unk_10020E130);
        memcpy((v7 + i), __dst, 0x48uLL);
        if (v15 == v5)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v15 = v5;
          v33 = 2;
        }

        else
        {
          if (v15 < a3 || v15 >= v5)
          {
            __break(1u);
            goto LABEL_43;
          }

          sub_1000ACFAC();
          ++v15;
        }

        ++v19;
      }

      v24 = __dst;
      v25 = &qword_1002ADD70;
      v26 = &qword_100200AE0;
LABEL_39:
      sub_1000374B8(v24, v25, v26);
      *(v7 + 16) = v19;
    }

    sub_1000374B8(&v29, &qword_1002B46D0, &unk_10020E130);
    swift_unknownObjectRelease();
    sub_1000374B8(__dst, &qword_1002B46D0, &unk_10020E130);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v7;
}

uint64_t *sub_100115E18(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v4 + 24) >> 1;
    if (v9 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  sub_100034224(isUniquelyReferenced_nonNull_native, v10, 1);
  v4 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = v9 - *(v4 + 16);
  sub_1000ACFAC();
  v12 = sub_10006DE4C();
  result = sub_1000374B8(v7, &qword_1002B46C0, &qword_10020E118);
  if (v12 < v3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v12 >= 1)
  {
    v13 = *(v4 + 16);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (!v14)
    {
      *(v4 + 16) = v15;
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_15:
  if (v12 != v11)
  {
    result = sub_1000374B8(v33, &qword_1002B46C8, &unk_10020E120);
LABEL_38:
    *v2 = v4;
    return result;
  }

  v16 = *(v4 + 16);
  v17 = v33[0];
  v25 = v2;
  if (v34 == v33[0])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v32 = 2;
    v18 = v33[0];
LABEL_22:
    while (2)
    {
      sub_1000ACFAC();
      if (__dst[8] != 2)
      {
        sub_1000374B8(__dst, &qword_1002B46D0, &unk_10020E130);
        v19 = *(v4 + 24);
        if (v16 + 1 > (v19 >> 1))
        {
          sub_100034224(v19 > 1, v16 + 1, 1);
        }

        v4 = *v25;
        v20 = *(*v25 + 24) >> 1;
        for (i = 72 * v16 + 32; ; i += 72)
        {
          sub_1000ACFAC();
          if (__src[8] == 2)
          {
            break;
          }

          memcpy(__dst, __src, sizeof(__dst));
          if (v16 >= v20)
          {
            v22 = __dst;
            v23 = &qword_1002ADD70;
            v24 = &qword_100200AE0;
            goto LABEL_36;
          }

          sub_1000374B8(&v28, &qword_1002B46D0, &unk_10020E130);
          result = memcpy((v4 + i), __dst, 0x48uLL);
          if (v18 == v17)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v18 = v17;
            v32 = 2;
          }

          else
          {
            if (v18 < 0 || v18 >= v17)
            {
              __break(1u);
              goto LABEL_40;
            }

            sub_1000ACFAC();
            v34 = ++v18;
          }

          ++v16;
        }

        v22 = __src;
        v23 = &qword_1002B46D0;
        v24 = &unk_10020E130;
LABEL_36:
        sub_1000374B8(v22, v23, v24);
        *(v4 + 16) = v16;
        continue;
      }

      break;
    }

    sub_1000374B8(&v28, &qword_1002B46D0, &unk_10020E130);
    sub_1000374B8(v33, &qword_1002B46C8, &unk_10020E120);
    result = sub_1000374B8(__dst, &qword_1002B46D0, &unk_10020E130);
    v2 = v25;
    goto LABEL_38;
  }

  if ((v34 & 0x8000000000000000) == 0 && v34 < v33[0])
  {
    sub_1000ACFAC();
    v18 = ++v34;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_1001161A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v11 = *(v7 + 24) >> 1;
    if (v11 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v12 = v8 + v6;
  }

  else
  {
    v12 = v8;
  }

  sub_100034244(isUniquelyReferenced_nonNull_native, v12, 1);
  v7 = *v4;
  v11 = *(*v4 + 24) >> 1;
LABEL_12:
  v13 = v11 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v13 >= v6)
    {
      sub_1000183C4(&qword_1002ADA18, &qword_100200400);
      swift_arrayInitWithCopy();
      if (v6 > 0)
      {
        v15 = *(v7 + 16);
        v16 = __OFADD__(v15, v6);
        v17 = v15 + v6;
        if (v16)
        {
LABEL_47:
          __break(1u);
          return;
        }

        *(v7 + 16) = v17;
      }

      v14 = v5;
      goto LABEL_20;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v6 > 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = 0;
  v14 = a3;
LABEL_20:
  if (v6 == v13)
  {
    v18 = *(v7 + 16);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v40 = -512;
    while (1)
    {
      sub_1000ACFAC();
      if (v35[25] << 8 == 65024)
      {
        break;
      }

      sub_1000374B8(&v33, &qword_1002B46F8, &qword_10020E178);
      v19 = *(v7 + 24);
      if (v18 + 1 > (v19 >> 1))
      {
        sub_100034244(v19 > 1, v18 + 1, 1);
      }

      v7 = *v4;
      v20 = *(*v4 + 24) >> 1;
      for (i = (v18 << 6) | 0x20; ; i += 64)
      {
        sub_1000ACFAC();
        if (v32[25] << 8 == 65024)
        {
          v27 = v31;
          v28 = &qword_1002B46F8;
          v29 = &qword_10020E178;
          goto LABEL_39;
        }

        v33 = v31[0];
        v34 = v31[1];
        *v35 = *v32;
        *&v35[10] = *&v32[10];
        if (v18 >= v20)
        {
          break;
        }

        sub_1000374B8(&v36, &qword_1002B46F8, &qword_10020E178);
        v22 = (v7 + i);
        v24 = v34;
        v23 = *v35;
        v25 = v33;
        *(v22 + 42) = *&v35[10];
        v22[1] = v24;
        v22[2] = v23;
        *v22 = v25;
        if (v14 == v5)
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          v14 = v5;
          v40 = -512;
        }

        else
        {
          if (v14 < a3 || v14 >= v5)
          {
            __break(1u);
            goto LABEL_43;
          }

          sub_1000ACFAC();
          ++v14;
        }

        ++v18;
      }

      v27 = &v33;
      v28 = &qword_1002ADA18;
      v29 = &qword_100200400;
LABEL_39:
      sub_1000374B8(v27, v28, v29);
      *(v7 + 16) = v18;
    }

    sub_1000374B8(&v36, &qword_1002B46F8, &qword_10020E178);
    swift_unknownObjectRelease();
    sub_1000374B8(&v33, &qword_1002B46F8, &qword_10020E178);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v7;
}

uint64_t *sub_1001164D4(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v4 + 24) >> 1;
    if (v9 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  sub_100034244(isUniquelyReferenced_nonNull_native, v10, 1);
  v4 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = v9 - *(v4 + 16);
  sub_1000ACFAC();
  v12 = sub_10006DF30();
  result = sub_1000374B8(v7, &qword_1002B46E8, &qword_10020E160);
  if (v12 < v3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v12 >= 1)
  {
    v13 = *(v4 + 16);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (!v14)
    {
      *(v4 + 16) = v15;
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_15:
  if (v12 != v11)
  {
    result = sub_1000374B8(v40, &qword_1002B46F0, &unk_10020E168);
LABEL_38:
    *v2 = v4;
    return result;
  }

  v16 = *(v4 + 16);
  v17 = v40[0];
  v29 = v2;
  if (v41 == v40[0])
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v39 = -512;
    v18 = v40[0];
LABEL_22:
    while (2)
    {
      sub_1000ACFAC();
      if (v34[25] << 8 != 65024)
      {
        sub_1000374B8(&v32, &qword_1002B46F8, &qword_10020E178);
        v19 = *(v4 + 24);
        if (v16 + 1 > (v19 >> 1))
        {
          sub_100034244(v19 > 1, v16 + 1, 1);
        }

        v4 = *v29;
        v20 = *(*v29 + 24) >> 1;
        for (i = (v16 << 6) | 0x20; ; i += 64)
        {
          sub_1000ACFAC();
          if (v31[25] << 8 == 65024)
          {
            break;
          }

          v32 = v30[0];
          v33 = v30[1];
          *v34 = *v31;
          *&v34[10] = *&v31[10];
          if (v16 >= v20)
          {
            v26 = &v32;
            v27 = &qword_1002ADA18;
            v28 = &qword_100200400;
            goto LABEL_36;
          }

          result = sub_1000374B8(&v35, &qword_1002B46F8, &qword_10020E178);
          v22 = (v4 + i);
          v24 = v33;
          v23 = *v34;
          v25 = v32;
          *(v22 + 42) = *&v34[10];
          v22[1] = v24;
          v22[2] = v23;
          *v22 = v25;
          if (v18 == v17)
          {
            v38 = 0;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v18 = v17;
            v39 = -512;
          }

          else
          {
            if (v18 < 0 || v18 >= v17)
            {
              __break(1u);
              goto LABEL_40;
            }

            sub_1000ACFAC();
            v41 = ++v18;
          }

          ++v16;
        }

        v26 = v30;
        v27 = &qword_1002B46F8;
        v28 = &qword_10020E178;
LABEL_36:
        sub_1000374B8(v26, v27, v28);
        *(v4 + 16) = v16;
        continue;
      }

      break;
    }

    sub_1000374B8(&v35, &qword_1002B46F8, &qword_10020E178);
    sub_1000374B8(v40, &qword_1002B46F0, &unk_10020E168);
    result = sub_1000374B8(&v32, &qword_1002B46F8, &qword_10020E178);
    v2 = v29;
    goto LABEL_38;
  }

  if ((v41 & 0x8000000000000000) == 0 && v41 < v40[0])
  {
    sub_1000ACFAC();
    v18 = ++v41;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_100116870()
{
  sub_10001A1F0();
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = v7 + v1;
  if (__OFADD__(v7, v1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v9 = v5;
  v10 = v4;
  v11 = v3;
  v12 = v2;
  v13 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v6 + 24) >> 1, v15 < v8))
  {
    v10();
    v6 = *v0;
    v15 = *(*v0 + 24) >> 1;
  }

  v36 = v10;
  v16 = *(v6 + 16);
  v17 = v15 - v16;
  v39 = v0;
  if (v15 == v16)
  {
    goto LABEL_12;
  }

  v35 = v15 - v16;
  v37 = v15 - v16;
  v38 = v6;
  v18 = (v6 + 16 * v16 + 32);
  v19 = v17 & ~(v17 >> 63);
  v0 = v13 & ~(v13 >> 63);
  v6 = ~v16 + v15;
  v20 = v13;
  if (!v19)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    if (v13 > 0)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v22 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    if (!v20)
    {
      v22 = v13;
      v0 = v39;
      v17 = v37;
      v6 = v38;
      goto LABEL_16;
    }

    if (!v0)
    {
      goto LABEL_37;
    }

    *v18 = v12;
    v18[1] = v11;
    if (!v6)
    {
      break;
    }

    v18 += 2;
    v21 = sub_10005053C();
    v9(v21);
    --v0;
    --v19;
    --v6;
    --v20;
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  v23 = sub_10005053C();
  v9(v23);
  v17 = v37;
  v6 = v38;
  v0 = v39;
  v22 = v35;
  if (v37 < v13)
  {
    goto LABEL_39;
  }

LABEL_16:
  if (v22 <= 0)
  {
    goto LABEL_19;
  }

  v24 = __OFADD__(v16, v22);
  v16 += v22;
  if (!v24)
  {
    *(v6 + 16) = v16;
LABEL_19:
    if (v22 != v17 || v17 == v13)
    {
LABEL_35:
      v33 = sub_10005053C();
      v34(v33);
      *v0 = v6;
      sub_10001A1D4();
      return;
    }

    if (v17 >= v13)
    {
      goto LABEL_40;
    }

    v26 = v17 + 1;
    v27 = sub_10005053C();
    v9(v27);
LABEL_25:
    v28 = *(v6 + 24);
    if (v16 + 1 > (v28 >> 1))
    {
      (v36)(v28 > 1);
    }

    v29 = *(*v0 + 24) >> 1;
    v6 = *v0;
    v30 = (*v0 + 16 * v16 + 40);
    v31 = v26;
    while (1)
    {
      if (v16 >= v29)
      {
        *(v6 + 16) = v16;
        v26 = v31;
        v0 = v39;
        goto LABEL_25;
      }

      *(v30 - 1) = v12;
      *v30 = v11;
      if (v13 == v31)
      {
        *(v6 + 16) = v16 + 1;
        v0 = v39;
        goto LABEL_35;
      }

      if (v26 < 0 || v31 >= v13)
      {
        break;
      }

      ++v31;
      v32 = sub_10005053C();
      v9(v32);
      v30 += 2;
      ++v16;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
}

void sub_100116AC8()
{
  sub_100037C08();
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v1;
  if (__OFSUB__(v3 >> 1, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = *v0;
  v7 = *(*v0 + 16);
  if (__OFADD__(v7, v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v2;
  v9 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v6 + 24) >> 1, v11 < v7 + v5))
  {
    v8();
    v6 = *v0;
    v11 = *(*v0 + 24) >> 1;
  }

  if (v4 == v9)
  {
    if (v5 <= 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      *v0 = v6;
      sub_100037B00();
      return;
    }

    __break(1u);
  }

  if (v11 - *(v6 + 16) < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000183C4(&qword_1002ADD88, &qword_10020DE50);
  swift_arrayInitWithCopy();
  if (v5 <= 0)
  {
    goto LABEL_13;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100116BF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = v5 + result;
  if (__OFADD__(v5, result))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (result)
  {
    v10 = *(v4 + 24) >> 1;
    if (v10 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  result = sub_1000375D4(result, v11, 1);
  v4 = *v3;
  v10 = *(*v3 + 24) >> 1;
LABEL_11:
  v12 = *(v4 + 16);
  v13 = v10 - v12;
  if (v10 == v12)
  {
LABEL_18:
    if (v9 > 0)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v17 = 0;
    goto LABEL_25;
  }

  v26 = v4;
  v27 = v3;
  v25 = v10 - v12;
  v14 = (v4 + 16 * v12 + 32);
  v4 = v13 & ~(v13 >> 63);
  v15 = v9 & ~(v9 >> 63);
  v3 = (~v12 + v10);
  v16 = v9;
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  while (1)
  {
    if (!v16)
    {
      v17 = v9;
      v4 = v26;
      v3 = v27;
      goto LABEL_22;
    }

    if (!v15)
    {
      goto LABEL_43;
    }

    *v14 = a2;
    v14[1] = a3;
    if (!v3)
    {
      break;
    }

    v14 += 2;
    result = sub_10003742C(a2, a3);
    --v15;
    --v4;
    v3 = (v3 - 1);
    --v16;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  result = sub_10003742C(a2, a3);
  v4 = v26;
  v3 = v27;
  v17 = v25;
  if (v13 < v9)
  {
    goto LABEL_45;
  }

LABEL_22:
  if (v17 <= 0)
  {
    goto LABEL_25;
  }

  v18 = __OFADD__(v12, v17);
  v12 += v17;
  if (!v18)
  {
    *(v4 + 16) = v12;
LABEL_25:
    if (v17 != v13 || v13 == v9)
    {
LABEL_41:
      result = sub_100037408(a2, a3);
      *v3 = v4;
      return result;
    }

    if (v13 >= v9)
    {
      goto LABEL_46;
    }

    v20 = v13 + 1;
    result = sub_10003742C(a2, a3);
LABEL_31:
    v21 = *(v4 + 24);
    if (v12 + 1 > (v21 >> 1))
    {
      result = sub_1000375D4(v21 > 1, v12 + 1, 1);
    }

    v4 = *v3;
    v22 = *(*v3 + 24) >> 1;
    v23 = (*v3 + 16 * v12 + 40);
    v24 = v20;
    while (1)
    {
      if (v12 >= v22)
      {
        *(v4 + 16) = v12;
        v20 = v24;
        goto LABEL_31;
      }

      *(v23 - 1) = a2;
      *v23 = a3;
      if (v9 == v24)
      {
        *(v4 + 16) = v12 + 1;
        goto LABEL_41;
      }

      if (v20 < 0 || v24 >= v9)
      {
        break;
      }

      ++v24;
      result = sub_10003742C(a2, a3);
      v23 += 2;
      ++v12;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_47:
  __break(1u);
  return result;
}