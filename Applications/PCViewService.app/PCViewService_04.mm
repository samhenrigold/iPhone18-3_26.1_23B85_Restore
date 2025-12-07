uint64_t sub_100063F98(uint64_t a1)
{
  v2 = sub_1000651C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063FD4(uint64_t a1)
{
  v2 = sub_1000651C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064010(uint64_t a1)
{
  v2 = sub_100065170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006404C(uint64_t a1)
{
  v2 = sub_100065170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064088(uint64_t a1)
{
  v2 = sub_1000650C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000640C4(uint64_t a1)
{
  v2 = sub_1000650C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064130(void *a1)
{
  v3 = sub_1000056EC(&qword_1000E07B8, &qword_100097ED8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006768(a1, a1[3]);
  sub_1000653AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_100064EB4(&qword_1000DC588, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10006431C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1000056EC(&qword_1000E07A8, &qword_100097ED0);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v10);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006768(a1, a1[3]);
  sub_1000653AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000529C(a1);
  }

  else
  {
    v13 = v24;
    v28 = 0;
    *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[1] = v14;
    v21[1] = v14;
    v22 = v12;
    type metadata accessor for Date();
    v27 = 1;
    sub_100064EB4(&qword_1000DC508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10006533C(v6, v22 + *(v10 + 20));
    v26 = 2;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    (*(v13 + 8))(v9, v25);
    v19 = v22;
    v18 = v23;
    v20 = (v22 + *(v10 + 24));
    *v20 = v15;
    v20[1] = v17;
    sub_100065218(v19, v18, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    sub_10000529C(a1);
    sub_100064EFC(v19, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
  }
}

uint64_t sub_1000646AC()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_100064710@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000664EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100064738(uint64_t a1)
{
  v2 = sub_1000653AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064774(uint64_t a1)
{
  v2 = sub_1000653AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000647E0(void *a1)
{
  v3 = sub_1000056EC(&qword_1000E07A0, &qword_100097EC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006768(a1, a1[3]);
  sub_1000652E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_100064EB4(&qword_1000DC588, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100064998(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000056EC(&qword_1000E0790, &qword_100097EC0);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006768(a1, a1[3]);
  sub_1000652E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000529C(a1);
  }

  else
  {
    v17 = v10;
    v13 = v19;
    v22 = 0;
    v14 = v12;
    *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[1] = v15;
    type metadata accessor for Date();
    v21 = 1;
    sub_100064EB4(&qword_1000DC508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = v20;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v13 + 8))(v9, v16);
    sub_10006533C(v6, v14 + *(v17 + 20));
    sub_100065218(v14, v18, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    sub_10000529C(a1);
    sub_100064EFC(v14, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
  }
}

uint64_t sub_100064C94()
{
  if (*v0)
  {
    return 0x6574614465726966;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

void sub_100064CD8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100064DB8(uint64_t a1)
{
  v2 = sub_1000652E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064DF4(uint64_t a1)
{
  v2 = sub_1000652E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100064E60()
{
  result = qword_1000E06A0;
  if (!qword_1000E06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E06A0);
  }

  return result;
}

uint64_t sub_100064EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100064EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__CFString *sub_100064F5C(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v1 = @"FPO_O";
      }

      else
      {
        v1 = @"miniBasalt";
      }

      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v1 = @"b620Dark";
      goto LABEL_18;
    }

    if (a1 == 8)
    {
      v1 = @"b620Light";
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v1 = @"FPO_B";
      }

      else
      {
        v1 = @"FPO_Y";
      }

      goto LABEL_18;
    }

    if (a1 == 1)
    {
      v1 = @"miniDark";
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      v1 = @"miniLight";
LABEL_18:
      v2 = v1;
      goto LABEL_19;
    }
  }

  v1 = [NSString stringWithFormat:@"? (%ld)", a1];
LABEL_19:

  return v1;
}

unint64_t sub_100065074()
{
  result = qword_1000E0720;
  if (!qword_1000E0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0720);
  }

  return result;
}

unint64_t sub_1000650C8()
{
  result = qword_1000E0728;
  if (!qword_1000E0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0728);
  }

  return result;
}

unint64_t sub_10006511C()
{
  result = qword_1000E0738;
  if (!qword_1000E0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0738);
  }

  return result;
}

unint64_t sub_100065170()
{
  result = qword_1000E0748;
  if (!qword_1000E0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0748);
  }

  return result;
}

unint64_t sub_1000651C4()
{
  result = qword_1000E0750;
  if (!qword_1000E0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0750);
  }

  return result;
}

uint64_t sub_100065218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000652E8()
{
  result = qword_1000E0798;
  if (!qword_1000E0798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0798);
  }

  return result;
}

uint64_t sub_10006533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000653AC()
{
  result = qword_1000E07B0;
  if (!qword_1000E07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E07B0);
  }

  return result;
}

uint64_t sub_100065400()
{
  v1 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v10 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {

      v7 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 20);
      v8 = type metadata accessor for Date();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v5 + v7, 1, v8))
      {
        (*(v9 + 8))(v5 + v7, v8);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

LABEL_10:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100065600@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100062B34(v4, a1);
}

uint64_t getEnumTagSinglePayload for ActivityDisplayContext.DynamicTextScheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityDisplayContext.DynamicTextScheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ActivityDisplayContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDisplayContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100065984()
{
  result = qword_1000E0820;
  if (!qword_1000E0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0820);
  }

  return result;
}

unint64_t sub_1000659DC()
{
  result = qword_1000E0828;
  if (!qword_1000E0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0828);
  }

  return result;
}

unint64_t sub_100065A34()
{
  result = qword_1000E0830;
  if (!qword_1000E0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0830);
  }

  return result;
}

unint64_t sub_100065A8C()
{
  result = qword_1000E0838;
  if (!qword_1000E0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0838);
  }

  return result;
}

unint64_t sub_100065AE4()
{
  result = qword_1000E0840;
  if (!qword_1000E0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0840);
  }

  return result;
}

unint64_t sub_100065B3C()
{
  result = qword_1000E0848;
  if (!qword_1000E0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0848);
  }

  return result;
}

unint64_t sub_100065B94()
{
  result = qword_1000E0850;
  if (!qword_1000E0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0850);
  }

  return result;
}

unint64_t sub_100065BEC()
{
  result = qword_1000E0858;
  if (!qword_1000E0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0858);
  }

  return result;
}

unint64_t sub_100065C44()
{
  result = qword_1000E0860;
  if (!qword_1000E0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0860);
  }

  return result;
}

unint64_t sub_100065C9C()
{
  result = qword_1000E0868;
  if (!qword_1000E0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0868);
  }

  return result;
}

unint64_t sub_100065CF4()
{
  result = qword_1000E0870;
  if (!qword_1000E0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0870);
  }

  return result;
}

unint64_t sub_100065D4C()
{
  result = qword_1000E0878;
  if (!qword_1000E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0878);
  }

  return result;
}

unint64_t sub_100065DA4()
{
  result = qword_1000E0880;
  if (!qword_1000E0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0880);
  }

  return result;
}

unint64_t sub_100065DFC()
{
  result = qword_1000E0888;
  if (!qword_1000E0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0888);
  }

  return result;
}

unint64_t sub_100065E54()
{
  result = qword_1000E0890;
  if (!qword_1000E0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0890);
  }

  return result;
}

unint64_t sub_100065EAC()
{
  result = qword_1000E0898;
  if (!qword_1000E0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0898);
  }

  return result;
}

unint64_t sub_100065F04()
{
  result = qword_1000E08A0;
  if (!qword_1000E08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08A0);
  }

  return result;
}

unint64_t sub_100065F5C()
{
  result = qword_1000E08A8;
  if (!qword_1000E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08A8);
  }

  return result;
}

unint64_t sub_100065FB4()
{
  result = qword_1000E08B0;
  if (!qword_1000E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08B0);
  }

  return result;
}

unint64_t sub_10006600C()
{
  result = qword_1000E08B8;
  if (!qword_1000E08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08B8);
  }

  return result;
}

unint64_t sub_100066064()
{
  result = qword_1000E08C0;
  if (!qword_1000E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08C0);
  }

  return result;
}

unint64_t sub_1000660BC()
{
  result = qword_1000E08C8;
  if (!qword_1000E08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08C8);
  }

  return result;
}

unint64_t sub_100066114()
{
  result = qword_1000E08D0;
  if (!qword_1000E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08D0);
  }

  return result;
}

uint64_t sub_100066168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461654864726163 && a2 == 0xEF6567616D497265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A5B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xEE00656D65686353)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100066390(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000664EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

unint64_t *sub_100066634@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100066718()
{
  v1 = 0x736F6C4365766F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72746E69;
  }
}

unint64_t sub_100066778()
{
  result = qword_1000E08D8;
  if (!qword_1000E08D8)
  {
    sub_100005818(&qword_1000E08E0, qword_100098838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08D8);
  }

  return result;
}

unint64_t sub_1000667E0()
{
  result = qword_1000E08E8;
  if (!qword_1000E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08E8);
  }

  return result;
}

uint64_t sub_100066834(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000056EC(&qword_1000E0938, &qword_1000989F8);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000056EC(&qword_1000E0940, &qword_100098A00);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000056EC(&qword_1000E0948, &qword_100098A08);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000056EC(&qword_1000E0950, &qword_100098A10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006768(a1, a1[3]);
  sub_100067564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_10006760C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1000675B8();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_100067660();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_100066BB4()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0x65756E69746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t sub_100066C1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100066EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100066C44(uint64_t a1)
{
  v2 = sub_100067564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066C80(uint64_t a1)
{
  v2 = sub_100067564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066CBC(uint64_t a1)
{
  v2 = sub_100067660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066CF8(uint64_t a1)
{
  v2 = sub_100067660();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066D34(uint64_t a1)
{
  v2 = sub_10006760C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066D70(uint64_t a1)
{
  v2 = sub_10006760C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066DAC(uint64_t a1)
{
  v2 = sub_1000675B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066DE8(uint64_t a1)
{
  v2 = sub_1000675B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066E24@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100066FF4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100066E70()
{
  result = qword_1000E08F0;
  if (!qword_1000E08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08F0);
  }

  return result;
}

uint64_t sub_100066EC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65756E69746E6F63 && a2 == 0xEE00646570706154;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF74756F656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000A5B70 == a2)
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

uint64_t sub_100066FF4(void *a1)
{
  v31 = sub_1000056EC(&qword_1000E08F8, &qword_1000989D0);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1000056EC(&qword_1000E0900, &qword_1000989D8);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1000056EC(&qword_1000E0908, &qword_1000989E0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000056EC(&qword_1000E0910, &unk_1000989E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100006768(a1, v12);
  sub_100067564();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100074828();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_10006760C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000529C(v35);
          return v9;
        }

        v40 = 2;
        sub_1000675B8();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_100067660();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v22 = &type metadata for EducationViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000529C(v35);
  return v9;
}

unint64_t sub_100067564()
{
  result = qword_1000E0918;
  if (!qword_1000E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0918);
  }

  return result;
}

unint64_t sub_1000675B8()
{
  result = qword_1000E0920;
  if (!qword_1000E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0920);
  }

  return result;
}

unint64_t sub_10006760C()
{
  result = qword_1000E0928;
  if (!qword_1000E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0928);
  }

  return result;
}

unint64_t sub_100067660()
{
  result = qword_1000E0930;
  if (!qword_1000E0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0930);
  }

  return result;
}

unint64_t sub_1000676B4()
{
  result = qword_1000E0958;
  if (!qword_1000E0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0958);
  }

  return result;
}

unint64_t sub_10006774C()
{
  result = qword_1000E0960;
  if (!qword_1000E0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0960);
  }

  return result;
}

unint64_t sub_1000677A4()
{
  result = qword_1000E0968;
  if (!qword_1000E0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0968);
  }

  return result;
}

unint64_t sub_1000677FC()
{
  result = qword_1000E0970;
  if (!qword_1000E0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0970);
  }

  return result;
}

unint64_t sub_100067854()
{
  result = qword_1000E0978;
  if (!qword_1000E0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0978);
  }

  return result;
}

unint64_t sub_1000678AC()
{
  result = qword_1000E0980;
  if (!qword_1000E0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0980);
  }

  return result;
}

unint64_t sub_100067904()
{
  result = qword_1000E0988;
  if (!qword_1000E0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0988);
  }

  return result;
}

unint64_t sub_10006795C()
{
  result = qword_1000E0990;
  if (!qword_1000E0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0990);
  }

  return result;
}

unint64_t sub_1000679B4()
{
  result = qword_1000E0998;
  if (!qword_1000E0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0998);
  }

  return result;
}

unint64_t sub_100067A0C()
{
  result = qword_1000E09A0;
  if (!qword_1000E09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09A0);
  }

  return result;
}

uint64_t Publisher.conditionalDebounce<A>(for:tolerance:scheduler:options:when:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v66 = a5;
  v64 = a4;
  v65 = a6;
  v63 = a3;
  v60 = a1;
  v61 = a2;
  v67 = a9;
  v54 = a8;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v71 = *(v13 - 8);
  v72 = v13;
  v62 = *(v71 + 64);
  v14 = __chkstk_darwin(v13);
  v70 = &v45 - v15;
  v68 = *(a8 - 8);
  v58 = *(v68 + 64);
  __chkstk_darwin(v14);
  v69 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v48 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v45 - v22;
  v50 = &v45 - v22;
  v47 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v45 - v26;
  v49 = &v45 - v26;
  v52 = a10;
  v51 = a7;
  swift_getAssociatedTypeWitness();
  v55 = type metadata accessor for AnyPublisher();
  v28 = type metadata accessor for Publishers.Map();
  v29 = *(v28 - 8);
  v56 = v28;
  v57 = v29;
  __chkstk_darwin(v28);
  v53 = &v45 - v30;
  (*(v24 + 16))(v27, v60, AssociatedTypeWitness);
  v31 = v19;
  v46 = v19;
  (*(v19 + 16))(v23, v61, v18);
  v32 = v68;
  v33 = v54;
  (*(v68 + 16))(v69, v63, v54);
  v34 = v71;
  (*(v71 + 16))(v70, v64, v72);
  v35 = (*(v24 + 80) + 64) & ~*(v24 + 80);
  v36 = (v25 + *(v31 + 80) + v35) & ~*(v31 + 80);
  v37 = (v20 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v58 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = v51;
  *(v39 + 3) = v33;
  v40 = v59;
  *(v39 + 4) = v52;
  *(v39 + 5) = v40;
  v41 = v65;
  *(v39 + 6) = v66;
  *(v39 + 7) = v41;
  (*(v24 + 32))(&v39[v35], v49, v47);
  (*(v46 + 32))(&v39[v36], v50, v48);
  (*(v68 + 32))(&v39[v37], v69, v33);
  (*(v71 + 32))(&v39[v38], v70, v72);

  v42 = v53;
  Publisher.map<A>(_:)();

  v43 = v56;
  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v57 + 8))(v42, v43);
}

uint64_t sub_100068080@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a6;
  v35 = a7;
  v33 = a5;
  v31 = a4;
  v37 = a3;
  v38 = a2;
  v39 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Just();
  v36 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  WitnessTable = swift_getWitnessTable();
  v40 = v17;
  v41 = a10;
  v30 = a10;
  v42 = WitnessTable;
  v43 = a12;
  v32 = a12;
  v21 = type metadata accessor for Publishers.Delay();
  v29 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v28 - v22;
  v24 = v38(a1);
  (*(v14 + 16))(v16, a1, AssociatedTypeWitness);
  Just.init(_:)();
  v25 = (v36 + 8);
  if (v24)
  {
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    (*v25)(v19, v17);
    swift_getWitnessTable();
    v26 = Publisher.eraseToAnyPublisher()();
    result = (*(v29 + 8))(v23, v21);
  }

  else
  {
    v26 = Publisher.eraseToAnyPublisher()();
    result = (*v25)(v19, v17);
  }

  *v39 = v26;
  return result;
}

uint64_t sub_100068398()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v21 = *(v3 + 80);
  v4 = *(v3 + 64);
  v5 = *(type metadata accessor for Optional() - 8);
  v20 = *(v5 + 80);
  v6 = (((v21 + 64) & ~v21) + v4 + v20) & ~v20;
  v7 = *(v1 - 8);
  v19 = *(v7 + 80);
  v8 = (v6 + *(v5 + 64) + v19) & ~v19;
  v9 = *(v7 + 64);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for Optional() - 8);
  v12 = *(v11 + 80);
  v17 = v8;
  v13 = (v8 + v9 + v12) & ~v12;
  v18 = *(v11 + 64);

  v14 = *(v3 + 8);
  v14(v0 + ((v21 + 64) & ~v21), AssociatedTypeWitness);
  if (!(*(v3 + 48))(v0 + v6, 1, AssociatedTypeWitness))
  {
    v14(v0 + v6, AssociatedTypeWitness);
  }

  (*(v7 + 8))(v0 + v17, v1);
  v15 = *(v10 - 8);
  if (!(*(v15 + 48))(v0 + v13, 1, v10))
  {
    (*(v15 + 8))(v0 + v13, v10);
  }

  return _swift_deallocObject(v0, v13 + v18, v21 | v20 | v19 | v12 | 7);
}

uint64_t sub_100068700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v13 = *(*(v4 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v14 = *(type metadata accessor for Optional() - 8);
  return sub_100068080(a1, *(v2 + 48), *(v2 + 56), v2 + v8, v2 + v11, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a2, v4, v6, v5);
}

uint64_t sub_100068938(void *a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPublisher();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Publishers.SetFailureType();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  return swift_getWitnessTable();
}

uint64_t sub_100068AF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656E6E6162;
  }

  else
  {
    v3 = 0x6572757472657061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656E6E6162;
  }

  else
  {
    v5 = 0x6572757472657061;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100068B9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100068C1C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100068C88(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100068D10(uint64_t *a1@<X8>)
{
  v2 = 0x6572757472657061;
  if (*v1)
  {
    v2 = 0x72656E6E6162;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100068E0C()
{
  if (*v0)
  {
    return 0x72656E6E6142;
  }

  else
  {
    return 0x2063696D616E7944;
  }
}

unint64_t sub_100068E84()
{
  result = qword_1000E09B8;
  if (!qword_1000E09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09B8);
  }

  return result;
}

uint64_t sub_100068ED8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x74696D69786F7270;
  }

  if (v2)
  {
    v4 = 0xED00006472614379;
  }

  else
  {
    v4 = 0x80000001000A0B50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v6 = 0x80000001000A0B50;
  }

  else
  {
    v6 = 0xED00006472614379;
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

Swift::Int sub_100068F90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100069024(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000690A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100069140(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000A0B50;
  v3 = 0x74696D69786F7270;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00006472614379;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100069250()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

unint64_t sub_1000692D0()
{
  result = qword_1000E09D0;
  if (!qword_1000E09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09D0);
  }

  return result;
}

unint64_t sub_100069324()
{
  result = qword_1000E09D8;
  if (!qword_1000E09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09D8);
  }

  return result;
}

unint64_t sub_100069378()
{
  result = qword_1000E09E0;
  if (!qword_1000E09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09E0);
  }

  return result;
}

uint64_t sub_1000693CC()
{
  result = SBUIIsSystemApertureEnabled();
  byte_1000F3CF8 = result;
  return result;
}

uint64_t _s8CardInfoOMa(uint64_t a1)
{
  result = qword_1000E0A58;
  if (!qword_1000E0A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069438(uint64_t a1)
{
  sub_1000694AC(319);
  if (v1 <= 0x3F)
  {
    sub_100069514();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000694AC(uint64_t a1)
{
  if (!qword_1000E0A68)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000E0A68);
    }
  }
}

void sub_100069514()
{
  if (!qword_1000E0A70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000E0A70);
    }
  }
}

uint64_t sub_100069574(void *a1)
{
  v30 = sub_1000056EC(&qword_1000E0AD8, &qword_100099140);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v25 - v2;
  v29 = sub_1000056EC(&qword_1000E0AE0, &qword_100099148);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v36 = &v25 - v3;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v35 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = _s8CardInfoOMa(0);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000056EC(&qword_1000E0AE8, &qword_100099150);
  v34 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_100006768(a1, a1[3]);
  sub_10006A734();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10006A894(v31, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = 1;
    sub_10006A788();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = 0;
    v15 = v30;
    v16 = v33;
    KeyedEncodingContainer.encode(_:forKey:)();

    if (v16)
    {

      (*(v28 + 8))(v32, v15);
    }

    else
    {
      v40 = 1;
      v23 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v28 + 8))(v23, v15);
    }
  }

  else
  {
    v17 = *(sub_1000056EC(&qword_1000E0AD0, &qword_100099138) + 48);
    v18 = v26;
    v19 = *(v26 + 32);
    v19(v8, v11, v4);
    v19(v35, &v11[v17], v4);
    v39 = 0;
    sub_10006A840();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = 0;
    sub_10006A8F8(&qword_1000DB440, &protocol conformance descriptor for UUID);
    v20 = v29;
    v21 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v21)
    {
      v37 = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v27 + 8))(v36, v20);
    v22 = *(v18 + 8);
    v22(v35, v4);
    v22(v8, v4);
  }

  return (*(v34 + 8))(v14, v12);
}

uint64_t sub_100069AD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000056EC(&qword_1000E0AA0, &qword_100099118);
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v55 = &v47 - v4;
  v5 = sub_1000056EC(&qword_1000E0AA8, &qword_100099120);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v8 = sub_1000056EC(&qword_1000E0AB0, &unk_100099128);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = _s8CardInfoOMa(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - v17;
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = a1[3];
  v60 = a1;
  sub_100006768(a1, v21);
  sub_10006A734();
  v22 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v48 = v15;
    v49 = v20;
    v50 = v18;
    v24 = v54;
    v23 = v55;
    v59 = v12;
    v25 = v56;
    v26 = v57;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = sub_10007482C();
    v30 = v11;
    if (v29 == 2 || v63 != v64 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      sub_1000056EC(&qword_1000DBA80, &qword_100094060);
      *v36 = v59;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
      (*(v58 + 8))(v30, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v31 = v58;
        v65 = 1;
        sub_10006A788();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v65 = 0;
        v32 = v52;
        v33 = KeyedDecodingContainer.decode(_:forKey:)();
        v40 = v39;
        v54 = v33;
        v65 = 1;
        v41 = KeyedDecodingContainer.decode(_:forKey:)();
        v53 = v42;
        v43 = v41;
        (*(v51 + 8))(v23, v32);
        (*(v31 + 8))(v11, v57);
        swift_unknownObjectRelease();
        v44 = v53;
        v45 = v48;
        *v48 = v54;
        v45[1] = v40;
        v45[2] = v43;
        v45[3] = v44;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v65 = 0;
        sub_10006A840();
        v38 = v7;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for UUID();
        v65 = 0;
        sub_10006A8F8(&qword_1000DB460, &protocol conformance descriptor for UUID);
        v45 = v50;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        sub_1000056EC(&qword_1000E0AD0, &qword_100099138);
        v65 = 1;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v53 + 8))(v38, v24);
        (*(v58 + 8))(v11, v26);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v25 = v56;
      }

      v46 = v49;
      sub_10006A7DC(v45, v49);
      sub_10006A7DC(v46, v25);
    }
  }

  return sub_10000529C(v60);
}

uint64_t sub_10006A260()
{
  if (*v0)
  {
    return 0x756F52616964656DLL;
  }

  else
  {
    return 0x74696B656D6F68;
  }
}

void sub_10006A2A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696B656D6F68 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x756F52616964656DLL && a2 == 0xEA00000000006574)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10006A384(uint64_t a1)
{
  v2 = sub_10006A734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A3C0(uint64_t a1)
{
  v2 = sub_10006A734();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A3FC()
{
  if (*v0)
  {
    return 0x4449656D6F68;
  }

  else
  {
    return 0x726F737365636361;
  }
}

void sub_10006A43C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F737365636361 && a2 == 0xEB00000000444979;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10006A518(uint64_t a1)
{
  v2 = sub_10006A840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A554(uint64_t a1)
{
  v2 = sub_10006A840();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A590()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

void sub_10006A5B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10006A68C(uint64_t a1)
{
  v2 = sub_10006A788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A6C8(uint64_t a1)
{
  v2 = sub_10006A788();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006A734()
{
  result = qword_1000E0AB8;
  if (!qword_1000E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AB8);
  }

  return result;
}

unint64_t sub_10006A788()
{
  result = qword_1000E0AC0;
  if (!qword_1000E0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AC0);
  }

  return result;
}

uint64_t sub_10006A7DC(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A840()
{
  result = qword_1000E0AC8;
  if (!qword_1000E0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AC8);
  }

  return result;
}

uint64_t sub_10006A894(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A8F8(unint64_t *a1, uint64_t a2)
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

unint64_t sub_10006A970()
{
  result = qword_1000E0AF0;
  if (!qword_1000E0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AF0);
  }

  return result;
}

unint64_t sub_10006A9C8()
{
  result = qword_1000E0AF8;
  if (!qword_1000E0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AF8);
  }

  return result;
}

unint64_t sub_10006AA20()
{
  result = qword_1000E0B00;
  if (!qword_1000E0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B00);
  }

  return result;
}

unint64_t sub_10006AA78()
{
  result = qword_1000E0B08;
  if (!qword_1000E0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B08);
  }

  return result;
}

unint64_t sub_10006AAD0()
{
  result = qword_1000E0B10;
  if (!qword_1000E0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B10);
  }

  return result;
}

unint64_t sub_10006AB28()
{
  result = qword_1000E0B18;
  if (!qword_1000E0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B18);
  }

  return result;
}

unint64_t sub_10006AB80()
{
  result = qword_1000E0B20;
  if (!qword_1000E0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B20);
  }

  return result;
}

unint64_t sub_10006ABD8()
{
  result = qword_1000E0B28;
  if (!qword_1000E0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B28);
  }

  return result;
}

unint64_t sub_10006AC30()
{
  result = qword_1000E0B30;
  if (!qword_1000E0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B30);
  }

  return result;
}

uint64_t sub_10006AC84(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return AnyView.init<A>(_:)();
}

uint64_t AnyTransition.init(arrayLiteral:)(uint64_t a1)
{
  static AnyTransition.identity.getter();
  v2 = *(a1 + 16);

  v4 = result;
  if (v2)
  {
    v5 = 0;
    while (v5 < *(a1 + 16))
    {
      v6 = v5 + 1;

      v4 = AnyTransition.combined(with:)();

      v5 = v6;
      if (v2 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return v4;
  }

  return result;
}

uint64_t sub_10006AE08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AnyTransition.init(arrayLiteral:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006AE30(uint64_t a1, int a2)
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

uint64_t sub_10006AE78(uint64_t result, int a2, int a3)
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

uint64_t sub_10006AEC8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_1000056EC(&qword_1000E0B58, &qword_100099648);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100006768(a1, a1[3]);
  sub_10006B830();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    sub_10006B8D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10006B054()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1868983913;
  }
}

void sub_10006B078(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10006B154(uint64_t a1)
{
  v2 = sub_10006B830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006B190(uint64_t a1)
{
  v2 = sub_10006B830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006B1CC(uint64_t a1)
{
  v2 = sub_10006B344();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10006B208(uint64_t a1)
{
  v2 = sub_10006B344();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10006B260()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3._countAndFlagsBits = sub_10006B398(*(v0 + 16));
  String.append(_:)(v3);

  v4._countAndFlagsBits = 656423463;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 39;
}

uint64_t sub_10006B2F0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10006B640(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_10006B344()
{
  result = qword_1000E0B38;
  if (!qword_1000E0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B38);
  }

  return result;
}

unint64_t sub_10006B398(char a1)
{
  result = 0x4979646165726C41;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 5:
      result = 0xD000000000000012;
      break;
    case 3:
      return result;
    case 4:
      result = 0x7075727265746E69;
      break;
    case 6:
      result = 0x6974696E49746F4ELL;
      break;
    case 7:
      result = 0x6F6974617265704FLL;
      break;
    case 8:
      result = 0x74756F656D6954;
      break;
    case 9:
      result = 0x7463657078656E55;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6E776F6E6B6E55;
      break;
    case 12:
      result = 0x726F707075736E55;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_10006B55C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006BC40(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006B640(void *a1)
{
  v3 = sub_1000056EC(&qword_1000E0B40, &qword_100099640);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10006B830();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 1;
    sub_10006B884();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000529C(a1);
  return v7;
}

unint64_t sub_10006B830()
{
  result = qword_1000E0B48;
  if (!qword_1000E0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B48);
  }

  return result;
}

unint64_t sub_10006B884()
{
  result = qword_1000E0B50;
  if (!qword_1000E0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B50);
  }

  return result;
}

unint64_t sub_10006B8D8()
{
  result = qword_1000E0B60;
  if (!qword_1000E0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonError.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonError.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006BA90()
{
  result = qword_1000E0B68;
  if (!qword_1000E0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B68);
  }

  return result;
}

unint64_t sub_10006BAE8()
{
  result = qword_1000E0B70;
  if (!qword_1000E0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B70);
  }

  return result;
}

unint64_t sub_10006BB40()
{
  result = qword_1000E0B78;
  if (!qword_1000E0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B78);
  }

  return result;
}

unint64_t sub_10006BB98()
{
  result = qword_1000E0B80;
  if (!qword_1000E0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B80);
  }

  return result;
}

unint64_t sub_10006BBEC()
{
  result = qword_1000E0B88;
  if (!qword_1000E0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B88);
  }

  return result;
}

unint64_t sub_10006BC40(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

void (*sub_10006BC50(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10006BCE8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_1000056EC(&qword_1000DAB20, &qword_100099A00);
    swift_allocObject();
    v3 = v2;
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10006BD88()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1000056EC(&qword_1000DA8E8, &qword_100091BC0);
    swift_allocObject();
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10006BE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = -1;
  *(v2 + 48) = _swiftEmptyArrayStorage;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E00C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_10006BF30()
{
  v1 = v0;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E00C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000343F8(0x56746E6572727563, 0xEE00292865756C61, &v12);
    *(v5 + 12) = 2080;
    sub_10006F64C(*(v1 + 32), *(v1 + 40));
    sub_1000056EC(&qword_1000E0EF0, &unk_1000999D0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000343F8(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.state=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v1 + 40);
  if (v9 > 0xFD)
  {
    return 0;
  }

  v10 = *(v1 + 32);
  sub_100019E1C(v10, v9 & 1);
  return v10;
}

void sub_10006C130()
{
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E00C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x292864616F6CLL, 0xE600000000000000, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10006C284(0, 0);
}

void sub_10006C284(void (*a1)(void **), uint64_t a2)
{
  v3 = v2;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E00C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000343F8(0x61682865756C6176, 0xEF293A72656C646ELL, &v36);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000529C(v10);
  }

  v11 = *(v2 + 40);
  if (v11 == 254)
  {
    if (a1)
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Load in progress - caching handler", v22, 2u);
      }

      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      *(v23 + 24) = a2;
      swift_beginAccess();
      v24 = *(v3 + 48);
      sub_10000B16C(a1, a2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 48) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_10006F518(0, v24[2] + 1, 1, v24);
        *(v3 + 48) = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_10006F518((v26 > 1), v27 + 1, 1, v24);
      }

      v24[2] = v27 + 1;
      v28 = &v24[2 * v27];
      v28[4] = sub_1000701E4;
      v28[5] = v23;
      *(v3 + 48) = v24;
      swift_endAccess();
      sub_10000B17C(a1, a2);
    }

    else
    {
      oslog = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v33, "Load in progress", v34, 2u);
      }
    }
  }

  else if (v11 == 255)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Value not yet loaded - loading now", v14, 2u);
    }

    v15 = *(v3 + 32);
    *(v3 + 32) = 0;
    v16 = *(v3 + 40);
    *(v3 + 40) = -2;
    sub_1000701CC(v15, v16);
    v17 = *(v3 + 16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;

    sub_10000B16C(a1, a2);
    v17(sub_100070270, v19);
  }

  else
  {
    v29 = *(v2 + 32);
    v36 = v29;
    v37 = v11 & 1;
    sub_100019E1C(v29, v11 & 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Returning cached value", v32, 2u);
    }

    if (a1)
    {
      a1(&v36);
    }

    sub_1000701CC(v29, v11);
  }
}

void sub_10006C7CC(void *a1, char a2, uint64_t a3, void (*a4)(void **))
{
  v23 = a1;
  v24 = a2 & 1;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000E00C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finished loading value", v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 32);
    v13 = *(Strong + 40);
    v14 = a2 & 1;
    v15 = Strong;
    sub_100019E1C(a1, v14);
    *(v15 + 32) = a1;
    *(v15 + 40) = v14;
    sub_1000701CC(v12, v13);
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    v18 = *(v17 + 48);

    __chkstk_darwin(v19);
    v22[2] = &v23;
    sub_10006BC50(sub_100070288, v22, v18);
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = v20;
    swift_beginAccess();
    *(v21 + 48) = _swiftEmptyArrayStorage;
  }

  if (a4)
  {
    a4(&v23);
  }
}

void sub_10006CA44(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10006CAD0()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E0B90);
  sub_1000047A0(v0, qword_1000E0B90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006CB50()
{
  sub_10006FF74(v0 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel_cardInfo);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HomeAccessoryViewHandleModel(uint64_t a1)
{
  result = qword_1000E0BE0;
  if (!qword_1000E0BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006CC28(uint64_t a1)
{
  result = _s8CardInfoOMa(319);
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

uint64_t sub_10006CCEC(void *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;

  v5 = a1;

  sub_10006BCE8();
  v6 = *(v3 + 24);
  CurrentValueSubject.send(_:)();
}

void *sub_10006CD78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = 0;
  sub_1000056EC(&qword_1000E0F18, qword_100099A08);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v2[5] = v6;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = &_swiftEmptySetSingleton;
  v2[9] = 0;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000E0B90);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  v3[2] = a1;
  v3[3] = a2;
  return v3;
}

void *sub_10006CEA8()
{
  v1 = v0;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10000B17C(*(v1 + 48), *(v1 + 56));

  return v1;
}

uint64_t sub_10006CFC0()
{
  sub_10006CEA8();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10006D018()
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E0B90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x292864616F6CLL, 0xE600000000000000, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10006D334();
  sub_10006C130();
}

uint64_t sub_10006D178(uint64_t a1, uint64_t a2)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E0B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A5F40, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  sub_10006D334();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_10006C284(sub_100070198, v9);
}

uint64_t sub_10006D334()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_1000056EC(&qword_1000E0EF8, &qword_1000999E0);
    swift_allocObject();
    v1 = sub_10006BE24(sub_10006F6DC, v2);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_10006D3F8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = _s8CardInfoOMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10006A894(*(Strong + 16) + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel_cardInfo, v7);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = sub_10006F6E4;
    v11[4] = v8;

    sub_10006FCE4(v7, sub_10006F764, v11);

    sub_10006FF74(v7);
  }

  else
  {

    sub_10000F850();
    v13 = swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 9;
    v16 = v13;
    v17 = 1;
    a1(&v16);
  }
}

uint64_t sub_10006D5DC(void *a1, char a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      if (qword_1000D97E8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000047A0(v7, qword_1000E0B90);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      sub_100019E10(a1, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to load homeCard: error=%@", v10, 0xCu);
        sub_100031FEC(v11);
      }

      sub_100019E1C(a1, 1);

      sub_1000816E8(a1, v36);
      v32 = v36[0];
      v33 = v36[1];
      *v34 = v37;
      *&v34[8] = v38;
      v34[24] = 0;
      PassthroughSubject.send(_:)();

      *aBlock = v32;
      *&aBlock[16] = v33;
      *&aBlock[32] = *v34;
      *&aBlock[41] = *&v34[9];
      sub_100070094(aBlock);
      (a4)(a1, 1);
    }

    else
    {
      if (qword_1000D97E8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000047A0(v15, qword_1000E0B90);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Finished loading homeCard", v18, 2u);
      }

      *aBlock = 1;
      memset(&aBlock[8], 0, 48);
      aBlock[56] = 2;

      PassthroughSubject.send(_:)();

      v19 = [a1 topViewController];
      if (v19)
      {
        v20 = v19;
        [v19 removeFromParentViewController];
        v21 = [objc_opt_self() sharedInstance];
        v22 = [v21 nowPlayingViewController];

        if (v22)
        {
          v23 = swift_allocObject();
          swift_weakInit();
          *&aBlock[32] = sub_1000700E8;
          *&aBlock[40] = v23;
          *aBlock = _NSConcreteStackBlock;
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_10006DD4C;
          *&aBlock[24] = &unk_1000CB670;
          v24 = _Block_copy(aBlock);

          [v22 setCoordinatedDismissalBlock:v24];
          _Block_release(v24);
        }

        else
        {
          v22 = Logger.logObject.getter();
          v29 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v22, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v22, v29, "### Could not set coordinatedDismissalBlock - no nowPlayingViewController", v30, 2u);
          }
        }

        v31 = v20;
        (a4)(v20, 0);
      }

      else
      {
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "### No topViewController?", v27, 2u);
        }

        sub_10000F850();
        swift_allocError();
        *v28 = 0;
        *(v28 + 8) = 0xE000000000000000;
        *(v28 + 16) = 9;
        a4();
      }
    }
  }

  else
  {
    sub_10000F850();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 9;
    a4();
  }
}

void sub_10006DBA8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = *(Strong + 48), v6 = *(Strong + 56), sub_10000B16C(v7, v6), , v7))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_10000B16C(a1, a2);
    v7(sub_100070168, v8);

    sub_10000B17C(v7, v6);
  }

  else
  {
    if (qword_1000D97E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000047A0(v9, qword_1000E0B90);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "### No coordinatedDismissalRequestedHandler?", v12, 2u);
    }

    if (a1)
    {
      a1();
    }
  }
}

uint64_t sub_10006DD4C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_10000EEE4;
  }

  else
  {
    v4 = 0;
  }

  v2(v3, v4);
  sub_10000B17C(v3, v4);
}

void sub_10006DDF4(void *a1)
{
  v2 = v1;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E0B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0xD00000000000002CLL, 0x80000001000A5E50, &v24);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000F3C58 + 520);
  v10 = sub_100025508();

  if (v10)
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "### Skipping due to Defaults.shared.skipMRCoordinator = true";
    goto LABEL_13;
  }

  if (*(*(v2 + 40) + 24))
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "mrCoordinator already exists - not initiating a new mrCoordinator";
    goto LABEL_13;
  }

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 nowPlayingViewController];

  if (v15)
  {
    v16 = [objc_allocWithZone(MRUNowPlayingQueueHandoffCoordinator) init];
    [v16 setResponse:a1];
    [v16 setHideArtwork:0];
    oslog = v16;
    sub_10006CCEC(v16);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = a1;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Initiating QueueHandoffTransition with mrResponse: %@", v20, 0xCu);
      sub_100031FEC(v21);
    }

    [v15 initiateQueueHandoffTansitionWithCoordinator:oslog];
    [oslog setupTransition];
    [oslog beginTransition];
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "### No nowPlayingViewController?";
LABEL_13:
      _os_log_impl(&_mh_execute_header, oslog, v11, v13, v12, 2u);
    }
  }

LABEL_20:
}

void sub_10006E250()
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000E0B90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A5E30, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000529C(v5);
  }

  v6 = *(*(v0 + 40) + 24);
  if (v6)
  {
    v9 = v6;
    [v9 endTransition];
    [v9 completeHandoff];
    sub_10006CCEC(0);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "### No mrCoordinator?", v8, 2u);
    }
  }
}

void sub_10006E450(uint64_t a1, uint64_t a2)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000E0B90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000343F8(0xD000000000000020, 0x80000001000A5E00, &v17);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000529C(v9);
  }

  if (*(v2 + 32))
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Transition animation starting", v12, 2u);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    sub_10005E8C4(sub_10006F69C, v13);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "### No existing ArtworkAnimation - Was prepareForPresentation called?", v15, 2u);
    }
  }
}

uint64_t sub_10006E718(uint64_t (*a1)(void))
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Transition animation ended", v5, 2u);
  }

  return a1();
}

void sub_10006E80C(char a1)
{
  v2 = v1;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E0B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0xD000000000000026, 0x80000001000A5DD0, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  v9 = sub_10006EA3C(a1 & 1);
  if (v9)
  {
    *(v2 + 32) = v9;

    sub_10005E430();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "### Could not create AlbumArtwork", v11, 2u);
    }
  }
}

uint64_t sub_10006EA3C(char a1)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0xD00000000000001DLL, 0x80000001000A5DB0, &v33);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  sub_10006D334();
  v7 = sub_10006BF30();
  v9 = v8;
  v10 = ~v8;

  if (!v10)
  {
    goto LABEL_14;
  }

  if ((v9 & 1) != 0 || (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_10006F3F4(v7, v9);
LABEL_14:
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### No viewController?", v21, 2u);
    }

    goto LABEL_16;
  }

  v12 = v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 nowPlayingViewController];

  if (!v14)
  {
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v23, "### No nowPlayingViewController?", v24, 2u);
    }

    sub_10006F3F4(v7, v9);
LABEL_16:

    return 0;
  }

  sub_100019E1C(v7, 0);
  v15 = [v14 artworkView];
  type metadata accessor for ArtworkAnimation();
  swift_allocObject();
  v16 = sub_10005F910(v12, v15, 0);
  if (a1)
  {
    v17 = v16;
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v18 = &xmmword_1000F3CC0;
  }

  else
  {
    v17 = v16;
    if (qword_1000D97B8 != -1)
    {
      swift_once();
    }

    v18 = &xmmword_1000F3CA0;
  }

  v32 = *v18;
  v25 = *(v18 + 2);
  v26 = *(v18 + 3);

  sub_10006F3F4(v7, v9);
  result = v17;
  *(v17 + 56) = v32;
  *(v17 + 72) = v25;
  *(v17 + 80) = v26;
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v17 + 104) = _Q0;
  return result;
}

void sub_10006EE48(void *a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000047A0(v13, qword_1000E0B90);
  v14 = a1;
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v43 = v8;
    v44 = a3;
    v40 = a4;
    v41 = v11;
    v42 = v9;
    v17 = 7104878;
    v18 = a1;
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315394;
    v39 = v18;
    v20 = v18 == 0;
    if (v18)
    {
      v21 = 1701670771;
    }

    else
    {
      v21 = 7104878;
    }

    v22 = 0xE300000000000000;
    if (v20)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    v24 = sub_1000343F8(v21, v23, aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    if (a2)
    {
      v48 = a2;
      swift_errorRetain();
      sub_1000056EC(&qword_1000E0F08, &qword_1000999E8);
      v17 = String.init<A>(describing:)();
      v22 = v25;
    }

    v26 = sub_1000343F8(v17, v22, aBlock);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "HomeCard future completed: homeCard=%s, error=%s", v19, 0x16u);
    swift_arrayDestroy();

    v9 = v42;
    v8 = v43;
    a4 = v40;
    v11 = v41;
    a3 = v44;
    a1 = v39;
    v27 = a2;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v27 = a2;
    if (a2)
    {
LABEL_19:
      sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);
      swift_errorRetain();
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = a3;
      *(v35 + 24) = a4;
      *(v35 + 32) = v27;
      *(v35 + 40) = 1;
      aBlock[4] = sub_100070060;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100035630;
      aBlock[3] = &unk_1000CB648;
      v36 = _Block_copy(aBlock);

      sub_100019E1C(v27, 1);

      v37 = v45;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10004A128();
      sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
      sub_100035260();
      v38 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      sub_100019E10(v27, 1);
      (*(v9 + 8))(v38, v8);
      (*(v46 + 8))(v37, v11);
      return;
    }
  }

  v44 = a3;
  if (!a1)
  {
LABEL_18:
    sub_10000F850();
    v27 = swift_allocError();
    *v33 = 0xD000000000000035;
    *(v33 + 8) = 0x80000001000A5EF0;
    *(v33 + 16) = 9;
    a3 = v44;
    goto LABEL_19;
  }

  v28 = a1;
  v29 = objc_allocWithZone(NSNull);
  v30 = v14;
  v31 = [v29 init];
  sub_10000ED88(0, &qword_1000E0F00, NSObject_ptr);
  v32 = static NSObject.== infix(_:_:)();

  if (v32)
  {

    goto LABEL_18;
  }

  v44(v28, 0);
}

void sub_10006F3F4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100019E10(a1, a2 & 1);
  }
}

char *sub_10006F40C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000056EC(&qword_1000DEE08, &qword_100096BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10006F518(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000056EC(&qword_1000E0F10, &unk_1000999F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000056EC(&unk_1000DA470, qword_1000919F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10006F64C(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_100019E1C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10006F664()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F6A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F6E4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_10006F724()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10006F774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v47 - v10;
  v11 = _s8CardInfoOMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000047A0(v20, qword_1000E0B90);
  sub_10006A894(a1, v19);
  v21 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v50))
  {
    v22 = swift_slowAlloc();
    v48 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v49 = v6;
    v47 = v24;
    aBlock[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5ED0, aBlock);
    *(v23 + 12) = 2080;
    sub_10006A894(v19, v17);
    v25 = String.init<A>(describing:)();
    v26 = v9;
    v27 = v5;
    v28 = a3;
    v30 = v29;
    sub_10006FF74(v19);
    v31 = sub_1000343F8(v25, v30, aBlock);
    a3 = v28;
    v5 = v27;
    v9 = v26;

    *(v23 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v21, v50, "%s: info=%s", v23, 0x16u);
    swift_arrayDestroy();
    v6 = v49;

    a1 = v48;
  }

  else
  {

    sub_10006FF74(v19);
  }

  sub_10006A894(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();

    v35 = [v32 SAHomePodCardForMediaRoutingIdentifier:v33 deviceName:v34 mediaAccessoryItemType:2];
  }

  else
  {
    v36 = *(sub_1000056EC(&qword_1000E0AD0, &qword_100099138) + 48);
    v37 = *(v6 + 32);
    v38 = v51;
    v37(v51, v14, v5);
    v37(v9, &v14[v36], v5);
    v39 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v41 = UUID._bridgeToObjectiveC()().super.isa;
    v35 = [v39 SAHomePodCardWithQuickControlsForDeviceUUID:isa inHomeWithUUID:v41];

    v42 = *(v6 + 8);
    v42(v9, v5);
    v42(v38, v5);
  }

  v43 = swift_allocObject();
  *(v43 + 16) = v52;
  *(v43 + 24) = a3;
  aBlock[4] = sub_10006FFFC;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CA44;
  aBlock[3] = &unk_1000CB5F8;
  v44 = _Block_copy(aBlock);
  v45 = v35;

  v46 = [v45 addCompletionBlock:v44];

  _Block_release(v44);
}

uint64_t sub_10006FCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8CardInfoOMa(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000047A0(v12, qword_1000E0B90);
  sub_10006A894(a1, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5E80, &v23);
    *(v15 + 12) = 2080;
    sub_10006A894(v11, v9);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    sub_10006FF74(v11);
    v19 = sub_1000343F8(v16, v18, &v23);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: cardInfo=%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10006FF74(v11);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  sub_10006F774(a1, sub_10006FFD0, v20);
}

uint64_t sub_10006FF74(uint64_t a1)
{
  v2 = _s8CardInfoOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100070004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007001C()
{

  sub_100019E10(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000700F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070128()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070168()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1000701CC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_100019E10(a1, a2 & 1);
  }
}

uint64_t sub_1000701E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_100070228()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100070288(uint64_t (**a1)(uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  v6 = v4;
  v7 = v2;
  return v3(&v6);
}

uint64_t sub_100070320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDisplayContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = _s8CardInfoOMa(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100070464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDisplayContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = _s8CardInfoOMa(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ClassicCardViewServiceContext(uint64_t a1)
{
  result = qword_1000E0F78;
  if (!qword_1000E0F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000705D4(uint64_t a1)
{
  type metadata accessor for ActivityDisplayContext(319);
  if (v1 <= 0x3F)
  {
    sub_100070698(319);
    if (v2 <= 0x3F)
    {
      _s8CardInfoOMa(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PCActivityAssetType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100070698(uint64_t a1)
{
  if (!qword_1000E0F88)
  {
    v2 = sub_10002C290();
    v5 = type metadata accessor for NSCodingCodableOptional(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1000E0F88);
    }
  }
}

uint64_t sub_1000706F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E0FE8, &qword_100099AC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100006768(a1, a1[3]);
  sub_100071298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  type metadata accessor for ActivityDisplayContext(0);
  sub_1000713B0(&qword_1000DC4B0, type metadata accessor for ActivityDisplayContext, &unk_100097DFC);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for ClassicCardViewServiceContext(0);
    LOBYTE(v11) = *(v3 + v9[5]);
    v12 = 1;
    sub_10003CCE8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11 = *(v3 + v9[6]);
    v12 = 2;
    sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
    sub_10002F85C(&qword_1000DBDC8, &unk_100091810);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + v9[7]);
    v12 = 3;
    sub_10003CC94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 4;
    _s8CardInfoOMa(0);
    sub_1000713B0(&qword_1000E0FF0, _s8CardInfoOMa, &unk_1000990C8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11 = *(v3 + v9[9]);
    v12 = 5;
    type metadata accessor for PCActivityAssetType(0);
    sub_1000713B0(&qword_1000E06E0, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100070A6C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = _s8CardInfoOMa(0);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v5);
  v20 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000056EC(&qword_1000E0FD0, &unk_100099AB0);
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ClassicCardViewServiceContext(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006768(a1, a1[3]);
  sub_100071298();
  v21 = v8;
  v12 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_10000529C(a1);
  }

  else
  {
    v23 = v4;
    v13 = v19;
    LOBYTE(v24) = 0;
    sub_1000713B0(&qword_1000DC450, type metadata accessor for ActivityDisplayContext, &unk_100097E24);
    v14 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001A648(v14, v11, type metadata accessor for ActivityDisplayContext);
    v25 = 1;
    sub_10003CB84();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11[v9[5]] = v24;
    sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
    v25 = 2;
    sub_10002F85C(&qword_1000DBDB8, &unk_100091838);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v11[v9[6]] = v24;
    v25 = 3;
    sub_10003CA88();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v11[v9[7]] = v24;
    LOBYTE(v24) = 4;
    sub_1000713B0(&qword_1000E0FE0, _s8CardInfoOMa, &unk_1000990F0);
    v15 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001A648(v15, &v11[v9[8]], _s8CardInfoOMa);
    type metadata accessor for PCActivityAssetType(0);
    v25 = 5;
    sub_1000713B0(&qword_1000E06B0, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v21, v22);
    *&v11[v9[9]] = v24;
    sub_1000712EC(v11, v17);
    sub_10000529C(a1);
    sub_100071350(v11, type metadata accessor for ClassicCardViewServiceContext);
  }
}

unint64_t sub_100071064()
{
  v1 = *v0;
  v2 = 0x436C616974696E69;
  v3 = 0xD00000000000001ALL;
  v4 = 0x6F666E4964726163;
  if (v1 != 4)
  {
    v4 = 0x7341656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001DLL;
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

uint64_t sub_100071144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100071510(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007116C(uint64_t a1)
{
  v2 = sub_100071298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000711A8(uint64_t a1)
{
  v2 = sub_100071298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071214(uint64_t a1)
{
  *(a1 + 8) = sub_1000713B0(&qword_1000DA1C0, type metadata accessor for ClassicCardViewServiceContext, &unk_100099A68);
  result = sub_1000713B0(&qword_1000E0FC8, type metadata accessor for ClassicCardViewServiceContext, &unk_100099A40);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100071298()
{
  result = qword_1000E0FD8;
  if (!qword_1000E0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0FD8);
  }

  return result;
}

uint64_t sub_1000712EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicCardViewServiceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000713B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10007140C()
{
  result = qword_1000E0FF8;
  if (!qword_1000E0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0FF8);
  }

  return result;
}

unint64_t sub_100071464()
{
  result = qword_1000E1000;
  if (!qword_1000E1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1000);
  }

  return result;
}

unint64_t sub_1000714BC()
{
  result = qword_1000E1008;
  if (!qword_1000E1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1008);
  }

  return result;
}

uint64_t sub_100071510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x80000001000A1350 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C616974696E69 && a2 == 0xEF65646F4D647261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A5F60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000A11D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4964726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7341656369766564 && a2 == 0xEF65707954746573)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100071728(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 sub_100071744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100071760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1000717A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000717FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_10007183C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100071870()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000718A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000718D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007190C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100071944()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100071978()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 1)
    {
      _StringGuts.grow(_:)(22);

      v5._countAndFlagsBits = v1;
      v5._object = v2;
      String.append(_:)(v5);
      v6._countAndFlagsBits = 10528;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      return 0xD000000000000012;
    }

    else
    {
      v12 = *(v0 + 32) | *(v0 + 40) | *(v0 + 48);
      if (v4 | v2 | v1 | v3 | v12)
      {
        v13 = v4 | v2 | v3 | v12;
        if (v1 != 1 || v13)
        {
          if (v1 != 2 || v13)
          {
            if (v1 != 3 || v13)
            {
              if (v1 != 4 || v13)
              {
                return 0xD000000000000014;
              }

              else
              {
                return 0xD00000000000001DLL;
              }
            }

            else
            {
              return 0x65746E6573657270;
            }
          }

          else
          {
            return 0x69746E6573657270;
          }
        }

        else
        {
          return 0x646564616F6CLL;
        }
      }

      else
      {
        return 0x6574736575716572;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);

    strcpy(v16, "failed( error=");
    HIBYTE(v16[1]) = -18;
    sub_10007400C();
    LocalizedError.errorDescription.getter();
    if (v8)
    {
      v9 = String.init<A>(describing:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v14 = v11;
    String.append(_:)(*&v9);

    v15._countAndFlagsBits = 10528;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    return v16[0];
  }
}

uint64_t sub_100071BDC(void *a1)
{
  v2 = v1;
  v52 = sub_1000056EC(&qword_1000E10A8, &qword_100099D78);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v46 - v4;
  v49 = sub_1000056EC(&qword_1000E10B0, &qword_100099D80);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v46 - v5;
  v6 = sub_1000056EC(&qword_1000E10B8, &qword_100099D88);
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = &v46 - v7;
  v55 = sub_1000056EC(&qword_1000E10C0, &qword_100099D90);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - v8;
  v58 = sub_1000056EC(&qword_1000E10C8, &qword_100099D98);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v46 - v9;
  v10 = sub_1000056EC(&qword_1000E10D0, &qword_100099DA0);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v65 = &v46 - v11;
  v12 = sub_1000056EC(&qword_1000E10D8, &qword_100099DA8);
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v59 = &v46 - v13;
  v14 = sub_1000056EC(&qword_1000E10E0, &qword_100099DB0);
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v46 - v15;
  v81 = sub_1000056EC(&qword_1000E10E8, &qword_100099DB8);
  v71 = *(v81 - 8);
  __chkstk_darwin(v81);
  v17 = &v46 - v16;
  sub_100006768(a1, a1[3]);
  sub_100073C70();
  v72 = v17;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *v2;
  v18 = v2[1];
  v21 = v2[2];
  v20 = v2[3];
  v22 = v2[4];
  v23 = v2[5];
  v24 = v2[6];
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      LOBYTE(v73) = 5;
      sub_100073D6C();
      v25 = v68;
      v26 = v81;
      v27 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v70;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v69 + 8))(v25, v28);
      return (*(v71 + 8))(v27, v26);
    }

    v32 = v22 | v23 | v24;
    if (v21 | v18 | v19 | v20 | v32)
    {
      v33 = v21 | v18 | v20 | v32;
      if (v19 != 1 || v33)
      {
        if (v19 != 2 || v33)
        {
          if (v19 != 3 || v33)
          {
            if (v19 != 4 || v33)
            {
              LOBYTE(v73) = 7;
              sub_100073CC4();
              v45 = v50;
              v35 = v81;
              v36 = v72;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v40 = *(v51 + 8);
              v41 = v45;
              v42 = &v82;
            }

            else
            {
              LOBYTE(v73) = 6;
              sub_100073D18();
              v44 = v47;
              v35 = v81;
              v36 = v72;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v40 = *(v48 + 8);
              v41 = v44;
              v42 = &v80;
            }
          }

          else
          {
            LOBYTE(v73) = 4;
            sub_100073DC0();
            v43 = v53;
            v35 = v81;
            v36 = v72;
            KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v40 = *(v54 + 8);
            v41 = v43;
            v42 = &v83;
          }
        }

        else
        {
          LOBYTE(v73) = 3;
          sub_100073E14();
          v39 = v56;
          v35 = v81;
          v36 = v72;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v40 = *(v57 + 8);
          v41 = v39;
          v42 = &v84;
        }

        v40(v41, *(v42 - 32));
        return (*(v71 + 8))(v36, v35);
      }

      LOBYTE(v73) = 1;
      sub_100073F10();
      v34 = v59;
      v35 = v81;
      v36 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v60;
      v37 = v61;
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_100073F64();
      v34 = v62;
      v35 = v81;
      v36 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v63;
      v37 = v64;
    }

    (*(v38 + 8))(v34, v37);
    return (*(v71 + 8))(v36, v35);
  }

  LOBYTE(v73) = 2;
  sub_100073E68();
  v30 = v65;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v73 = v19;
  v74 = v18;
  v75 = v21;
  v76 = v20;
  v77 = v22;
  v78 = v23;
  v79 = v24;
  sub_100073FB8();
  v31 = v67;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v66 + 8))(v30, v31);
  return (*(v71 + 8))(v72, v81);
}

unint64_t sub_1000724E0()
{
  v1 = *v0;
  v2 = 0x6574736575716572;
  v3 = 0xD00000000000001DLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x65746E6573657270;
  if (v1 != 4)
  {
    v4 = 0x657373696D736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 2)
  {
    v5 = 0x69746E6573657270;
  }

  if (*v0)
  {
    v2 = 0x646564616F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000725D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100072BEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100072600(uint64_t a1)
{
  v2 = sub_100073C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007263C(uint64_t a1)
{
  v2 = sub_100073C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072678(uint64_t a1)
{
  v2 = sub_100073D18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000726B4(uint64_t a1)
{
  v2 = sub_100073D18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000726F0(uint64_t a1)
{
  v2 = sub_100073CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007272C(uint64_t a1)
{
  v2 = sub_100073CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072768(uint64_t a1)
{
  v2 = sub_100073D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000727A4(uint64_t a1)
{
  v2 = sub_100073D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000727E0(uint64_t a1)
{
  v2 = sub_100073E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007281C(uint64_t a1)
{
  v2 = sub_100073E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072858(uint64_t a1)
{
  v2 = sub_100073F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072894(uint64_t a1)
{
  v2 = sub_100073F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000728D0(uint64_t a1)
{
  v2 = sub_100073DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007290C(uint64_t a1)
{
  v2 = sub_100073DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072948(uint64_t a1)
{
  v2 = sub_100073E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072984(uint64_t a1)
{
  v2 = sub_100073E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000729C0(uint64_t a1)
{
  v2 = sub_100073F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000729FC(uint64_t a1)
{
  v2 = sub_100073F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100072A38@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100072E9C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100072AA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v4 != 3 || v17)
        {
          if (v4 != 4 || v17)
          {
            if (v2 != 2 || v6 != 5)
            {
              return 0;
            }
          }

          else if (v2 != 2 || v6 != 4)
          {
            return 0;
          }
        }

        else if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100072BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001000A5FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A5F80 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100072E9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_1000056EC(&qword_1000E1010, &qword_100099D28);
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v90 = &v65 - v4;
  v82 = sub_1000056EC(&qword_1000E1018, &qword_100099D30);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v87 = &v65 - v5;
  v81 = sub_1000056EC(&qword_1000E1020, &qword_100099D38);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v86 = &v65 - v6;
  v77 = sub_1000056EC(&qword_1000E1028, &qword_100099D40);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v89 = &v65 - v7;
  v73 = sub_1000056EC(&qword_1000E1030, &qword_100099D48);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v85 = &v65 - v8;
  v76 = sub_1000056EC(&qword_1000E1038, &qword_100099D50);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v88 = &v65 - v9;
  v72 = sub_1000056EC(&qword_1000E1040, &qword_100099D58);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v11 = &v65 - v10;
  v12 = sub_1000056EC(&qword_1000E1048, &qword_100099D60);
  v70 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_1000056EC(&qword_1000E1050, &unk_100099D68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - v17;
  v19 = a1[3];
  v100 = a1;
  sub_100006768(a1, v19);
  sub_100073C70();
  v20 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v21 = v20;
  if (v20)
  {
    return sub_10000529C(v100);
  }

  v67 = v14;
  v66 = v12;
  v22 = v88;
  v23 = v89;
  v92 = v16;
  v25 = v90;
  v24 = v91;
  v69 = v15;
  v68 = v18;
  v26 = KeyedDecodingContainer.allKeys.getter();
  if (*(v26 + 16) != 1 || (v27 = *(v26 + 32), v27 == 8))
  {
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    sub_1000056EC(&qword_1000DBA80, &qword_100094060);
    *v38 = &type metadata for HomeAccessoryViewEvent;
    v39 = v69;
    v40 = v68;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    (*(v92 + 8))(v40, v39);
    swift_unknownObjectRelease();
    return sub_10000529C(v100);
  }

  if (*(v26 + 32) > 3u)
  {
    v33 = v69;
    v42 = v68;
    if (*(v26 + 32) > 5u)
    {
      v43 = v24;
      if (v27 == 6)
      {
        LOBYTE(v93) = 6;
        sub_100073D18();
        v50 = v87;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v92;
        v65 = 0;
        (*(v80 + 8))(v50, v82);
        (*(v51 + 8))(v42, v33);
        swift_unknownObjectRelease();
        v61 = 0;
        v32 = 0;
        v33 = 0;
        v11 = 0;
        v34 = 0;
        v35 = 2;
        v31 = 4;
      }

      else
      {
        LOBYTE(v93) = 7;
        sub_100073CC4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v60 = v92;
        v65 = 0;
        (*(v83 + 8))(v25, v84);
        (*(v60 + 8))(v42, v33);
        swift_unknownObjectRelease();
        v61 = 0;
        v32 = 0;
        v33 = 0;
        v11 = 0;
        v34 = 0;
        v35 = 2;
        v31 = 5;
      }
    }

    else
    {
      v90 = v26;
      v43 = v24;
      if (v27 == 4)
      {
        LOBYTE(v93) = 4;
        sub_100073DC0();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v44 = v92;
        v65 = 0;
        (*(v78 + 8))(v23, v77);
        (*(v44 + 8))(v42, v33);
        swift_unknownObjectRelease();
        v61 = 0;
        v32 = 0;
        v33 = 0;
        v11 = 0;
        v34 = 0;
        v35 = 2;
        v31 = 3;
      }

      else
      {
        LOBYTE(v93) = 5;
        sub_100073D6C();
        v34 = v86;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v92;
        v55 = v81;
        v21 = 0;
        v31 = KeyedDecodingContainer.decode(_:forKey:)();
        v65 = 0;
        v62 = *(v79 + 8);
        v89 = v63;
        v62(v34, v55);
        v64 = *(v54 + 8);
        v32 = v54 + 8;
        v64(v42, v33);
        swift_unknownObjectRelease();
        v35 = 1;
        v61 = v89;
      }
    }
  }

  else if (*(v26 + 32) > 1u)
  {
    v90 = v26;
    v43 = v24;
    if (v27 == 2)
    {
      LOBYTE(v93) = 2;
      sub_100073E68();
      v45 = v22;
      v46 = v69;
      v47 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = v92;
      sub_100073EBC();
      v49 = v76;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v65 = 0;
      (*(v75 + 8))(v45, v49);
      (*(v48 + 8))(v47, v46);
      swift_unknownObjectRelease();
      v35 = 0;
      v31 = v93;
      v61 = v94;
      v32 = v95;
      v33 = v96;
      v21 = v97;
      v11 = v98;
      v34 = v99;
    }

    else
    {
      LOBYTE(v93) = 3;
      sub_100073E14();
      v56 = v85;
      v57 = v69;
      v58 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v59 = v92;
      v65 = 0;
      (*(v74 + 8))(v56, v73);
      (*(v59 + 8))(v58, v57);
      swift_unknownObjectRelease();
      v61 = 0;
      v32 = 0;
      v33 = 0;
      v11 = 0;
      v34 = 0;
      v31 = 2;
      v35 = 2;
    }
  }

  else
  {
    if (*(v26 + 32))
    {
      LOBYTE(v93) = 1;
      sub_100073F10();
      v52 = v69;
      v53 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = 0;
      (*(v71 + 8))(v11, v72);
      (*(v92 + 8))(v53, v52);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v11 = 0;
      v34 = 0;
      v35 = 2;
      v31 = 1;
    }

    else
    {
      LOBYTE(v93) = 0;
      sub_100073F64();
      v28 = v67;
      v29 = v69;
      v30 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = 0;
      (*(v70 + 8))(v28, v66);
      (*(v92 + 8))(v30, v29);
      swift_unknownObjectRelease();
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v11 = 0;
      v34 = 0;
      v35 = 2;
    }

    v43 = v24;
    v61 = 0;
  }

  result = sub_10000529C(v100);
  *v43 = v31;
  *(v43 + 8) = v61;
  *(v43 + 16) = v32;
  *(v43 + 24) = v33;
  *(v43 + 32) = v21;
  *(v43 + 40) = v11;
  *(v43 + 48) = v34;
  *(v43 + 56) = v35;
  return result;
}

unint64_t sub_100073C70()
{
  result = qword_1000E1058;
  if (!qword_1000E1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1058);
  }

  return result;
}

unint64_t sub_100073CC4()
{
  result = qword_1000E1060;
  if (!qword_1000E1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1060);
  }

  return result;
}

unint64_t sub_100073D18()
{
  result = qword_1000E1068;
  if (!qword_1000E1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1068);
  }

  return result;
}

unint64_t sub_100073D6C()
{
  result = qword_1000E1070;
  if (!qword_1000E1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1070);
  }

  return result;
}

unint64_t sub_100073DC0()
{
  result = qword_1000E1078;
  if (!qword_1000E1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1078);
  }

  return result;
}

unint64_t sub_100073E14()
{
  result = qword_1000E1080;
  if (!qword_1000E1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1080);
  }

  return result;
}

unint64_t sub_100073E68()
{
  result = qword_1000E1088;
  if (!qword_1000E1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1088);
  }

  return result;
}

unint64_t sub_100073EBC()
{
  result = qword_1000E1090;
  if (!qword_1000E1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1090);
  }

  return result;
}

unint64_t sub_100073F10()
{
  result = qword_1000E1098;
  if (!qword_1000E1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1098);
  }

  return result;
}

unint64_t sub_100073F64()
{
  result = qword_1000E10A0;
  if (!qword_1000E10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E10A0);
  }

  return result;
}

unint64_t sub_100073FB8()
{
  result = qword_1000E10F0;
  if (!qword_1000E10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E10F0);
  }

  return result;
}

unint64_t sub_10007400C()
{
  result = qword_1000E10F8;
  if (!qword_1000E10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E10F8);
  }

  return result;
}

unint64_t sub_1000740F4()
{
  result = qword_1000E1100;
  if (!qword_1000E1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1100);
  }

  return result;
}

unint64_t sub_10007414C()
{
  result = qword_1000E1108;
  if (!qword_1000E1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1108);
  }

  return result;
}

unint64_t sub_1000741A4()
{
  result = qword_1000E1110;
  if (!qword_1000E1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1110);
  }

  return result;
}

unint64_t sub_1000741FC()
{
  result = qword_1000E1118;
  if (!qword_1000E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1118);
  }

  return result;
}

unint64_t sub_100074254()
{
  result = qword_1000E1120;
  if (!qword_1000E1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1120);
  }

  return result;
}

unint64_t sub_1000742AC()
{
  result = qword_1000E1128;
  if (!qword_1000E1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1128);
  }

  return result;
}

unint64_t sub_100074304()
{
  result = qword_1000E1130;
  if (!qword_1000E1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1130);
  }

  return result;
}

unint64_t sub_10007435C()
{
  result = qword_1000E1138;
  if (!qword_1000E1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1138);
  }

  return result;
}

unint64_t sub_1000743B4()
{
  result = qword_1000E1140;
  if (!qword_1000E1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1140);
  }

  return result;
}

unint64_t sub_10007440C()
{
  result = qword_1000E1148;
  if (!qword_1000E1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1148);
  }

  return result;
}

unint64_t sub_100074464()
{
  result = qword_1000E1150;
  if (!qword_1000E1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1150);
  }

  return result;
}

unint64_t sub_1000744BC()
{
  result = qword_1000E1158;
  if (!qword_1000E1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1158);
  }

  return result;
}

unint64_t sub_100074514()
{
  result = qword_1000E1160;
  if (!qword_1000E1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1160);
  }

  return result;
}

unint64_t sub_10007456C()
{
  result = qword_1000E1168;
  if (!qword_1000E1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1168);
  }

  return result;
}

unint64_t sub_1000745C4()
{
  result = qword_1000E1170;
  if (!qword_1000E1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1170);
  }

  return result;
}

unint64_t sub_10007461C()
{
  result = qword_1000E1178;
  if (!qword_1000E1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1178);
  }

  return result;
}

unint64_t sub_100074674()
{
  result = qword_1000E1180;
  if (!qword_1000E1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1180);
  }

  return result;
}

unint64_t sub_1000746CC()
{
  result = qword_1000E1188;
  if (!qword_1000E1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1188);
  }

  return result;
}

unint64_t sub_100074724()
{
  result = qword_1000E1190;
  if (!qword_1000E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1190);
  }

  return result;
}

unint64_t sub_10007477C()
{
  result = qword_1000E1198;
  if (!qword_1000E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1198);
  }

  return result;
}

unint64_t sub_1000747D4()
{
  result = qword_1000E11A0;
  if (!qword_1000E11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11A0);
  }

  return result;
}

uint64_t sub_100074894()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E11A8);
  sub_1000047A0(v0, qword_1000E11A8);
  return Logger.init(subsystem:category:)();
}

id sub_100074914()
{
  ObjectType = swift_getObjectType();
  if (qword_1000D97F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E11A8);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = *&v3[qword_1000E11C8];
    v9 = *&v3[qword_1000E11C8 + 8];

    v10 = sub_1000343F8(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s-Deinit", v6, 0xCu);
    sub_10000529C(v7);
  }

  v11 = *&v3[qword_1000E11C0];
  v12 = v3;
  v13 = v11;

  v14 = String._bridgeToObjectiveC()();

  [v13 removeObserver:v12 forKeyPath:v14 context:0];

  v17.receiver = v12;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "dealloc");
}

uint64_t sub_100074B40(uint64_t a1)
{
}

uint64_t sub_100074BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000752EC();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_100074CF0(v8, v10, v17, v13);

  return sub_100075284(v17);
}

void sub_100074CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v41 = a2;
  v6 = *((swift_isaMask & *v4) + 0x50);
  v7 = type metadata accessor for Optional();
  v39 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = *(v6 - 8);
  __chkstk_darwin(v10);
  v37 = &v35 - v14;
  if (qword_1000D97F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000047A0(v15, qword_1000E11A8);

  v16 = v4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v13;
    v44[0] = v21;
    *v20 = 136315650;
    v22 = v16;
    *(v20 + 4) = sub_1000343F8(*(v16 + qword_1000E11C8), *(v16 + qword_1000E11C8 + 8), v44);
    v36 = v7;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1000343F8(0xD00000000000002BLL, 0x80000001000A6020, v44);
    *(v20 + 22) = 2080;
    v43[0] = v42;

    sub_1000056EC(&qword_1000E1258, qword_10009A630);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000343F8(v23, v24, v44);
    v7 = v36;

    *(v20 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s-%s: change=%s", v20, 0x20u);
    swift_arrayDestroy();
    v13 = v35;

    a4 = v42;
  }

  else
  {
    v22 = v16;
  }

  if (a4 && v41 && (*(v22 + qword_1000E11C8) == v40 && *(v22 + qword_1000E11C8 + 8) == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (*(a4 + 16))
    {
      v26 = sub_100045154(NSKeyValueChangeNewKey);
      if (v27)
      {
        v28 = v22;
        sub_10000A150(*(a4 + 56) + 32 * v26, v44);
        sub_10000A150(v44, v43);
        v29 = swift_dynamicCast();
        v30 = *(v13 + 56);
        if (v29)
        {
          v30(v12, 0, 1, v6);
          v31 = v37;
          (*(v13 + 32))(v37, v12, v6);
          v32 = v38;
          (*(v13 + 16))(v38, v31, v6);
          v30(v32, 0, 1, v6);
          (*(v28 + qword_1000E11D0))(v32);
          (*(v39 + 8))(v32, v7);
          (*(v13 + 8))(v31, v6);
        }

        else
        {
          v30(v12, 1, 1, v6);
          v33 = *(v39 + 8);
          v33(v12, v7);
          v34 = v38;
          v30(v38, 1, 1, v6);
          (*(v28 + qword_1000E11D0))(v34);
          v33(v34, v7);
        }

        sub_10000529C(v44);
      }
    }
  }
}

uint64_t sub_100075284(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000D9E38, &qword_100091570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000752EC()
{
  result = qword_1000D99D8;
  if (!qword_1000D99D8)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99D8);
  }

  return result;
}

uint64_t sub_100075344()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1260);
  sub_1000047A0(v0, qword_1000E1260);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000753EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10007545C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000754D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10007556C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000056EC(&qword_1000E15B8, &qword_10009A9B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  type metadata accessor for ActivityDisplayContext(0);
  v8[1] = sub_100060D40();
  sub_1000056EC(&qword_1000E15C0, &qword_10009A9C0);
  sub_10000EE58(&qword_1000E15C8, &qword_1000E15C0, &qword_10009A9C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000EE58(&qword_1000E15D0, &qword_1000E15B8, &qword_10009A9B8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v6 = Publisher.eraseToAnyPublisher()();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_100075738(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

id sub_1000757D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return v2;
}

BOOL sub_1000757E4(UIImage **a1, UIImage **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 && (v4 = UIImagePNGRepresentation(v2)) != 0)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v9 = UIImagePNGRepresentation(v3);
  if (v9)
  {
    v10 = v9;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    goto LABEL_10;
  }

  v3 = 0;
LABEL_9:
  v12 = 0xF000000000000000;
LABEL_10:
  if (v8 >> 60 == 15)
  {
    if (v12 >> 60 == 15)
    {
      sub_100052280(v6, v8);
      return 1;
    }

    goto LABEL_14;
  }

  if (v12 >> 60 == 15)
  {
LABEL_14:
    sub_100052280(v6, v8);
    sub_100052280(v3, v12);
    return 0;
  }

  sub_10007BDBC(v6, v8);
  sub_10007BDBC(v3, v12);
  v14 = sub_10007AE1C(v6, v8, v3, v12);
  sub_100052280(v3, v12);
  sub_100052280(v3, v12);
  sub_100052280(v6, v8);
  sub_100052280(v6, v8);
  return v14;
}

uint64_t sub_100075944(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000759D8()
{
  v1 = v0;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E1260);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1];

  v7 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__activityDisplayContext;
  v8 = sub_1000056EC(&qword_1000E1538, &qword_10009A960);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__movie;
  v10 = sub_1000056EC(&qword_1000E1540, &qword_10009A968);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  sub_10000B17C(*(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler), *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler + 8));
  v11 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__subtitle;
  v12 = sub_1000056EC(&qword_1000E1548, &qword_10009A970);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__activityImage;
  v14 = sub_1000056EC(&qword_1000E1550, &qword_10009A978);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__canShowActivityIcon;
  v16 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v17 = *(*(v16 - 8) + 8);
  v17(v1 + v15, v16);
  v17(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__isOptimisticStateActive, v16);

  return v1;
}

uint64_t sub_100075CB8()
{
  sub_1000759D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ProximityCardHeaderViewModel(uint64_t a1)
{
  result = qword_1000E12D8;
  if (!qword_1000E12D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100075D64()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AdjustedMovie(0);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = __chkstk_darwin(v5);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v59 = &v56 - v10;
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v14 = __chkstk_darwin(v13 - 8);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v61 = &v56 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = (&v56 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = &v56 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v56 - v25;
  __chkstk_darwin(v24);
  v28 = &v56 - v27;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v64 = v20;
  v29 = type metadata accessor for Logger();
  v30 = sub_1000047A0(v29, qword_1000E1260);

  v60 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v12;
    v57 = v4;
    v34 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_1000343F8(0xD000000000000015, 0x80000001000A6100, &v67);
    *(v34 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v1;
    static Published.subscript.getter();

    sub_10001A510(v28, v26, &qword_1000E12F8, &qword_10009A670);
    if ((*(v66 + 48))(v26, 1, v65) == 1)
    {
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      sub_10007D080(v26, v33, type metadata accessor for AdjustedMovie);
      sub_10007C364(v33, v59, type metadata accessor for AdjustedMovie);
      v36 = String.init<A>(describing:)();
      v35 = v37;
      sub_10007C3CC(v33, type metadata accessor for AdjustedMovie);
    }

    sub_10000A628(v28, &qword_1000E12F8, &qword_10009A670);
    v38 = sub_1000343F8(v36, v35, &v67);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s: self.movie=%s", v34, 0x16u);
    swift_arrayDestroy();

    v4 = v57;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v65;
  v40 = *(v66 + 48);
  v41 = v40(v23, 1, v65);
  sub_10000A628(v23, &qword_1000E12F8, &qword_10009A670);
  if (v41 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v42 = *(v4 + 2);
    sub_10007C3CC(v4, type metadata accessor for ActivityDisplayContext);
    v43 = v64;
    sub_1000042B8(v42, v64);
    if (v40(v43, 1, v39) == 1)
    {
      sub_10000A628(v43, &qword_1000E12F8, &qword_10009A670);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v67 = v47;
        *v46 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v48 = *(v4 + 2);
        sub_10007C3CC(v4, type metadata accessor for ActivityDisplayContext);
        v49 = sub_100064F5C(v48);
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v53 = sub_1000343F8(v50, v52, &v67);

        *(v46 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "### Could not create movie: assetType=%s", v46, 0xCu);
        sub_10000529C(v47);
      }
    }

    else
    {
      v54 = v63;
      sub_10007D080(v43, v63, type metadata accessor for AdjustedMovie);
      v55 = v61;
      sub_10007C364(v54, v61, type metadata accessor for AdjustedMovie);
      (*(v66 + 56))(v55, 0, 1, v39);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10001A510(v55, v62, &qword_1000E12F8, &qword_10009A670);

      static Published.subscript.setter();
      sub_10000A628(v55, &qword_1000E12F8, &qword_10009A670);
      sub_10007C3CC(v54, type metadata accessor for AdjustedMovie);
    }
  }
}

void sub_1000765F8(uint64_t a1)
{
  sub_10007C084(319, &qword_1000E12E8, type metadata accessor for ActivityDisplayContext, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100027004(319, &qword_1000E12F0, &qword_1000E12F8, &qword_10009A670);
    if (v2 <= 0x3F)
    {
      sub_10007C0E8(319, &qword_1000E1300, &type metadata for String, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100027004(319, &qword_1000E1308, &unk_1000E1310, &unk_10009A690);
        if (v4 <= 0x3F)
        {
          sub_10007C0E8(319, &qword_1000DADC0, &type metadata for Bool, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_100076848()
{
  result = qword_1000E1530;
  if (!qword_1000E1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1530);
  }

  return result;
}

uint64_t sub_10007689C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ProximityCardHeaderViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000768DC()
{
  v0 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v2 + 3);

  sub_10007C3CC(v2, type metadata accessor for ActivityDisplayContext);
  return v3;
}

uint64_t sub_1000769BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100076A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v5;
}

uint64_t sub_100076ACC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler + 8);

    v2(v3 & 1);

    return sub_10000B17C(v2, v4);
  }

  return result;
}

uint64_t sub_100076B48(uint64_t a1)
{
  result = sub_10007D038(&qword_1000DA948, type metadata accessor for ProximityCardHeaderViewModel, &unk_10009A774);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100076BA0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityIcon(0);
  __chkstk_darwin(v2 - 8);
  sub_10007C364(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityIcon);
  sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
  State.wrappedValue.setter();
  return sub_10007C3CC(a1, type metadata accessor for ActivityIcon);
}

BOOL sub_100076CC0(uint64_t a1)
{
  v3 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  v6 = (v1 + *(a1 + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v16[16] = v7;
  v17 = v8;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if (v16[15] != 1)
  {
    return 0;
  }

  v11 = a1 + 16;
  v9 = *(a1 + 16);
  v10 = *(v11 + 8);
  v12 = *(v10 + 40);
  swift_unknownObjectRetain();
  v12(v9, v10);
  swift_unknownObjectRelease();
  v13 = type metadata accessor for AdjustedMovie(0);
  v14 = (*(*(v13 - 8) + 48))(v5, 1, v13) != 1;
  sub_10000A628(v5, &qword_1000E12F8, &qword_10009A670);
  return v14;
}

uint64_t sub_100076E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v29 = v5;
  v34 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000056EC(&qword_1000E1668, &qword_10009AA48);
  __chkstk_darwin(v33);
  v7 = &v24 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_1000056EC(&qword_1000E1670, &qword_10009AA50);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_100077184(v2, v9, v10, &v7[*(v8 + 44)]);
  v31 = v2;
  v11 = *(v10 + 32);
  swift_unknownObjectRetain();
  v27 = v10;
  v28 = v9;
  v12 = v11(v9, v10);
  v26 = v12;
  swift_unknownObjectRelease();
  v35 = v12;
  v30 = *(v4 + 16);
  v13 = v34;
  v25 = a1;
  v30(v34, v2, a1);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  v16 = *(v4 + 32);
  v16(v15 + v14, v13, a1);
  sub_1000056EC(&unk_1000E1310, &unk_10009A690);
  sub_10000EE58(&qword_1000E1678, &qword_1000E1668, &qword_10009AA48, &protocol conformance descriptor for HStack<A>);
  sub_10007C1E0();
  v17 = v32;
  View.onChange<A>(of:initial:_:)();

  sub_10000A628(v7, &qword_1000E1668, &qword_10009AA48);
  v18 = v34;
  v19 = v25;
  v30(v34, v31, v25);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v28;
  *(v20 + 24) = v21;
  v16(v20 + v14, v18, v19);
  result = sub_1000056EC(&qword_1000E1690, &qword_10009AA58);
  v23 = (v17 + *(result + 36));
  *v23 = sub_10007C2E0;
  v23[1] = v20;
  v23[2] = 0;
  v23[3] = 0;
  return result;
}

uint64_t sub_100077184@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v59 = sub_1000056EC(&qword_1000E16A8, &qword_10009AA68);
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v50 - v8;
  v9 = sub_1000056EC(&qword_1000E16B0, &qword_10009AA70);
  v10 = __chkstk_darwin(v9 - 8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_1000056EC(&qword_1000E16B8, &qword_10009AA78);
  v15 = __chkstk_darwin(v14 - 8);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = (&v50 - v17);
  *v18 = static Alignment.bottomTrailing.getter();
  v18[1] = v19;
  v20 = *(sub_1000056EC(&qword_1000E16C0, &qword_10009AA80) + 44);
  v55 = v18;
  sub_100077984(a1, a2, a3, v18 + v20);
  v52 = type metadata accessor for ProximityCardHeaderView(0, a2, a3, v21);
  v54 = a1;
  sub_100078630(v52, v65);
  memcpy(v67, v65, 0x131uLL);
  v22 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v65[448] = 0;
  memcpy(v68, v67, 0x138uLL);
  v68[312] = v22;
  *v69 = *v66;
  *&v69[3] = *&v66[3];
  v70 = v24;
  v71 = v26;
  v72 = v28;
  v73 = v30;
  v74 = 0;
  v31 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v53 = qword_1000F3C58;
  v32 = *(qword_1000F3C58 + 136);
  v33 = sub_100025508();

  if (v33)
  {
    sub_100029E7C(v31, v65);
    memcpy(v61, v65, 0x1B8uLL);
    memcpy(v62, v65, 0x1B8uLL);
    sub_10001A510(v61, v64, &qword_1000E16C8, &qword_10009AA88);
    sub_10000A628(v62, &qword_1000E16C8, &qword_10009AA88);
    memcpy(v64, v61, 0x1B8uLL);
    sub_10007C574(v64);
    memcpy(v63, v64, 0x1B9uLL);
    sub_10001A510(v61, v65, &qword_1000E16C8, &qword_10009AA88);
    sub_10001A510(v61, v65, &qword_1000E16C8, &qword_10009AA88);
    sub_1000056EC(&qword_1000E16C8, &qword_10009AA88);
    sub_1000056EC(&qword_1000DBA20, &qword_10009AA90);
    sub_10007C900(&qword_1000E16D0, &qword_1000E16C8, &qword_10009AA88, sub_10007C4BC);
    sub_10007C4BC();
    _ConditionalContent<>.init(storage:)();
    sub_10000A628(v68, &qword_1000DBA20, &qword_10009AA90);

    sub_10000A628(v61, &qword_1000E16C8, &qword_10009AA88);
    sub_10000A628(v61, &qword_1000E16C8, &qword_10009AA88);
  }

  else
  {
    memcpy(v64, v67, 0x138uLL);
    LOBYTE(v64[39]) = v22;
    *(&v64[39] + 1) = *v66;
    HIDWORD(v64[39]) = *&v66[3];
    v64[40] = v24;
    v64[41] = v26;
    v64[42] = v28;
    v64[43] = v30;
    LOBYTE(v64[44]) = 0;
    sub_10007C4B0(v64);
    memcpy(v63, v64, 0x1B9uLL);
    sub_1000056EC(&qword_1000E16C8, &qword_10009AA88);
    sub_1000056EC(&qword_1000DBA20, &qword_10009AA90);
    sub_10007C900(&qword_1000E16D0, &qword_1000E16C8, &qword_10009AA88, sub_10007C4BC);
    sub_10007C4BC();
    _ConditionalContent<>.init(storage:)();
  }

  memcpy(v63, v65, 0x1B9uLL);
  memcpy(v64, v65, 0x1B9uLL);
  sub_10001A510(v63, v62, &qword_1000E16F0, &qword_10009AAA8);
  sub_10000A628(v64, &qword_1000E16F0, &qword_10009AAA8);
  v34 = v53;
  v35 = *(v53 + 504);
  v36 = sub_100025508();

  if (v36)
  {
    sub_1000786E8(v52, v62);
    v51 = v62[0];
  }

  else
  {
    v51 = 0;
  }

  v37 = *(v34 + 544);
  v38 = sub_100025508();

  v39 = 1;
  if (v38)
  {
    v40 = v50;
    sub_10007878C(v52);
    (*(v7 + 32))(v13, v40, v59);
    v39 = 0;
  }

  (*(v7 + 56))(v13, v39, 1, v59);
  v42 = v55;
  v41 = v56;
  sub_10001A510(v55, v56, &qword_1000E16B8, &qword_10009AA78);
  memcpy(v60, v63, sizeof(v60));
  v43 = v57;
  sub_10001A510(v13, v57, &qword_1000E16B0, &qword_10009AA70);
  v44 = v58;
  sub_10001A510(v41, v58, &qword_1000E16B8, &qword_10009AA78);
  v45 = sub_1000056EC(&qword_1000E16F8, &qword_10009AAB0);
  v46 = v13;
  v47 = v45[12];
  memcpy(v61, v60, 0x1B9uLL);
  memcpy((v44 + v47), v60, 0x1B9uLL);
  v48 = v44 + v45[16];
  *v48 = 0;
  *(v48 + 8) = 1;
  *(v44 + v45[20]) = v51;
  sub_10001A510(v43, v44 + v45[24], &qword_1000E16B0, &qword_10009AA70);
  sub_10001A510(v61, v62, &qword_1000E16F0, &qword_10009AAA8);
  sub_10000A628(v46, &qword_1000E16B0, &qword_10009AA70);
  sub_10000A628(v42, &qword_1000E16B8, &qword_10009AA78);
  sub_10000A628(v43, &qword_1000E16B0, &qword_10009AA70);

  memcpy(v62, v60, 0x1B9uLL);
  sub_10000A628(v62, &qword_1000E16F0, &qword_10009AAA8);
  return sub_10000A628(v41, &qword_1000E16B8, &qword_10009AA78);
}

uint64_t sub_100077984@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  v83 = sub_1000056EC(&qword_1000E1748, &qword_10009AB58);
  __chkstk_darwin(v83);
  v85 = &v77 - v7;
  v84 = sub_1000056EC(&qword_1000DBA48, &unk_10009AB60);
  __chkstk_darwin(v84);
  v77 = &v77 - v8;
  v9 = sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  __chkstk_darwin(v9 - 8);
  v80 = &v77 - v10;
  v92 = sub_1000056EC(&qword_1000DBA40, &qword_10009AB70);
  __chkstk_darwin(v92);
  v86 = &v77 - v11;
  v95 = sub_1000056EC(&qword_1000E1750, &qword_10009AB78);
  v93 = *(v95 - 8);
  v12 = __chkstk_darwin(v95);
  v82 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v77 - v14;
  v15 = sub_1000056EC(&qword_1000E1758, &qword_10009AB80);
  v16 = __chkstk_darwin(v15 - 8);
  v96 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v77 - v18;
  v19 = sub_1000056EC(&qword_1000E1760, &qword_10009AB88);
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v22 = sub_1000056EC(&qword_1000DBA38, &unk_10009AB90);
  __chkstk_darwin(v22);
  v24 = &v77 - v23;
  v25 = sub_1000056EC(&qword_1000DBA30, &qword_100092F88);
  __chkstk_darwin(v25);
  v27 = &v77 - v26;
  v28 = sub_1000056EC(&qword_1000E1768, &qword_10009ABA0);
  v29 = __chkstk_darwin(v28 - 8);
  v91 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v77 - v32;
  __chkstk_darwin(v31);
  v90 = &v77 - v34;
  v87 = a2;
  v88 = a3;
  v79 = type metadata accessor for ProximityCardHeaderView(0, a2, a3, v35);
  v89 = a1;
  sub_1000783F0(v79, v27);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v27[*(v25 + 36)];
  v37 = v99;
  *v36 = v98;
  *(v36 + 1) = v37;
  *(v36 + 2) = v100;
  v38 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v78 = qword_1000F3C58;
  v39 = *(qword_1000F3C58 + 136);
  v40 = sub_100025508();

  if (v40)
  {
    sub_10002A084(v38, v24);
    sub_10001A510(v24, v21, &qword_1000DBA38, &unk_10009AB90);
    swift_storeEnumTagMultiPayload();
    sub_10007C900(&qword_1000E1770, &qword_1000DBA38, &unk_10009AB90, sub_10007C9B0);
    sub_10007C9B0();
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v24, &qword_1000DBA38, &unk_10009AB90);
  }

  else
  {
    sub_10001A510(v27, v21, &qword_1000DBA30, &qword_100092F88);
    swift_storeEnumTagMultiPayload();
    sub_10007C900(&qword_1000E1770, &qword_1000DBA38, &unk_10009AB90, sub_10007C9B0);
    sub_10007C9B0();
    _ConditionalContent<>.init(storage:)();
  }

  sub_10000A628(v27, &qword_1000DBA30, &qword_100092F88);
  v41 = v90;
  sub_10001F170(v33, v90, &qword_1000E1768, &qword_10009ABA0);
  v43 = v88;
  v42 = v89;
  v44 = *(v88 + 48);
  swift_unknownObjectRetain();
  v45 = v44(v87, v43);
  swift_unknownObjectRelease();
  v46 = v94;
  v47 = v92;
  if (v45)
  {
    sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
    v48 = v80;
    State.projectedValue.getter();
    v49 = *v42;
    v50 = v86;
    sub_10004987C(v48, v86, v49);
    LOBYTE(v48) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v50 + *(sub_1000056EC(&qword_1000E17C8, &qword_10009ABD8) + 36);
    *v59 = v48;
    *(v59 + 8) = v52;
    *(v59 + 16) = v54;
    *(v59 + 24) = v56;
    *(v59 + 32) = v58;
    *(v59 + 40) = 0;
    __asm { FMOV            V0.2D, #6.0 }

    *(v50 + *(v47 + 36)) = _Q0;
    v65 = static Color.blue.getter();
    v66 = *(v78 + 136);
    v67 = sub_100025508();

    if (v67)
    {
      v68 = v77;
      sub_10002A060(v65, v77);
      sub_10001A510(v68, v85, &qword_1000DBA48, &unk_10009AB60);
      swift_storeEnumTagMultiPayload();
      sub_10007CC38();
      sub_10007CCF0();
      v69 = v82;
      v50 = v86;
      _ConditionalContent<>.init(storage:)();

      sub_10000A628(v68, &qword_1000DBA48, &unk_10009AB60);
    }

    else
    {
      sub_10001A510(v50, v85, &qword_1000DBA40, &qword_10009AB70);
      swift_storeEnumTagMultiPayload();
      sub_10007CC38();
      sub_10007CCF0();
      v69 = v82;
      _ConditionalContent<>.init(storage:)();
    }

    sub_10000A628(v50, &qword_1000DBA40, &qword_10009AB70);
    v71 = v81;
    sub_10001F170(v69, v81, &qword_1000E1750, &qword_10009AB78);
    sub_10001F170(v71, v46, &qword_1000E1750, &qword_10009AB78);
    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  (*(v93 + 56))(v46, v70, 1, v95);
  v72 = v91;
  sub_10001A510(v41, v91, &qword_1000E1768, &qword_10009ABA0);
  v73 = v96;
  sub_10001A510(v46, v96, &qword_1000E1758, &qword_10009AB80);
  v74 = v97;
  sub_10001A510(v72, v97, &qword_1000E1768, &qword_10009ABA0);
  v75 = sub_1000056EC(&qword_1000E17C0, &qword_10009ABD0);
  sub_10001A510(v73, v74 + *(v75 + 48), &qword_1000E1758, &qword_10009AB80);
  sub_10000A628(v46, &qword_1000E1758, &qword_10009AB80);
  sub_10000A628(v41, &qword_1000E1768, &qword_10009ABA0);
  sub_10000A628(v73, &qword_1000E1758, &qword_10009AB80);
  return sub_10000A628(v72, &qword_1000E1768, &qword_10009ABA0);
}

uint64_t sub_1000783F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000056EC(&qword_1000E17B8, &unk_10009ABC0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v25 - v6);
  v8 = sub_1000056EC(&qword_1000E17A8, &qword_10009ABB8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = sub_1000056EC(&qword_1000E1798, &qword_10009ABB0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  *v7 = static Alignment.center.getter();
  v7[1] = v16;
  v17 = sub_1000056EC(&qword_1000E17F0, &qword_10009ABE0);
  sub_100078CE4(v2, *(a1 + 16), *(a1 + 24), (v7 + *(v17 + 44)));
  v18 = 0.0;
  if (sub_100076CC0(a1))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 10.0;
  }

  sub_10001F170(v7, v11, &qword_1000E17B8, &unk_10009ABC0);
  v20 = &v11[*(v9 + 44)];
  *v20 = v19;
  v20[8] = 0;
  if (sub_100076CC0(a1))
  {
    v18 = 1.0;
  }

  sub_10001F170(v11, v15, &qword_1000E17A8, &qword_10009ABB8);
  *&v15[*(v13 + 44)] = v18;
  v21 = static Animation.default.getter();
  v22 = sub_100076CC0(a1);
  sub_10001F170(v15, a2, &qword_1000E1798, &qword_10009ABB0);
  result = sub_1000056EC(&qword_1000E1788, &qword_10009ABA8);
  v24 = a2 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
  return result;
}

void *sub_100078630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1000794D8(*(a1 + 16), *(a1 + 24), __src);
  memcpy(__dst, __src, 0x119uLL);
  memcpy(v8, __src, 0x119uLL);
  sub_10001A510(__dst, &v5, &qword_1000E1710, &qword_10009AB00);
  sub_10000A628(v8, &qword_1000E1710, &qword_10009AB00);
  return memcpy((a2 + 24), __dst, 0x119uLL);
}

uint64_t sub_1000786E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 56);
  swift_unknownObjectRetain();
  v5(v4, v3);
  swift_unknownObjectRelease();
  result = Image.init(systemName:)();
  *a2 = result;
  return result;
}

uint64_t sub_10007878C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  (*(v2 + 32))(v5 + v4, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000056EC(&qword_1000E1700, &qword_10009AAB8);
  sub_10007C76C();
  return Button.init(action:label:)();
}

uint64_t sub_1000788F4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityIcon(0);
  __chkstk_darwin(v2);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100078A78(a1, v9);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    sub_100006768(v9, v10);
    v5 = sub_10006AC84(v5, v6);
    sub_10000529C(v9);
  }

  else
  {
    sub_10000A628(v9, &qword_1000DA920, &qword_100091C70);
  }

  UUID.init()();
  *&v4[*(v2 + 20)] = v5;
  return sub_100076BA0(v4);
}

uint64_t sub_1000789FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ProximityCardHeaderView(0, a2, a3, a4);
  sub_1000788F4(v4);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

void sub_100078A78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Image.ResizingMode();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(v9 + 32);
  swift_unknownObjectRetain();
  v19 = v11(v10, v9);
  swift_unknownObjectRelease();
  if (v19)
  {
    v12 = *v3;
    v21.width = *v3;
    v21.height = *v3;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    [v19 drawInRect:{0.0, 0.0, v12, v12}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v13)
    {
      v14 = v13;
      Image.init(uiImage:)();
      v15 = v18;
      (*(v18 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v6);
      v16 = Image.resizable(capInsets:resizingMode:)();

      (*(v15 + 8))(v8, v6);
      *(a2 + 24) = sub_1000056EC(&qword_1000E1698, &qword_10009AA60);
      *(a2 + 32) = sub_10007C42C();

      *a2 = v16;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v17 = v19;
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

void *sub_100078CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a1;
  v72 = a4;
  v6 = sub_1000056EC(&qword_1000E17F8, &qword_10009ABE8);
  __chkstk_darwin(v6);
  v8 = &v59 - v7;
  v65 = sub_1000056EC(&qword_1000E1800, &unk_10009ABF0);
  __chkstk_darwin(v65);
  v68 = &v59 - v9;
  v67 = sub_1000056EC(&qword_1000DBA58, &unk_100092F90);
  __chkstk_darwin(v67);
  v61 = &v59 - v10;
  v11 = type metadata accessor for MovieView(0);
  __chkstk_darwin(v11 - 8);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000056EC(&qword_1000DBA50, &qword_10009AC00);
  __chkstk_darwin(v70);
  v64 = &v59 - v13;
  v14 = sub_1000056EC(&qword_1000E1808, &qword_10009AC08);
  v15 = __chkstk_darwin(v14);
  v63 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v59 - v17;
  v18 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for AdjustedMovie(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v69 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v25 = a3;
  v26 = v71;
  v28 = v26 + *(type metadata accessor for ProximityCardHeaderView(0, a2, v25, v27) + 44);
  v29 = *v28;
  v30 = *(v28 + 8);
  v74 = v29;
  v75 = v30;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if (v73 != 1)
  {
    goto LABEL_4;
  }

  v59 = v14;
  v60 = v8;
  v31 = v24;
  v32 = *(v24 + 40);
  swift_unknownObjectRetain();
  v32(a2, v31);
  swift_unknownObjectRelease();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000A628(v20, &qword_1000E12F8, &qword_10009A670);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_10007CE38();
    return _ConditionalContent<>.init(storage:)();
  }

  v34 = v69;
  sub_10007D080(v20, v69, type metadata accessor for AdjustedMovie);
  v35 = v34;
  v36 = v62;
  sub_10007C364(v35, v62, type metadata accessor for AdjustedMovie);
  sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100092B80;
  v38 = static Edge.Set.leading.getter();
  *(inited + 32) = v38;
  v39 = static Edge.Set.trailing.getter();
  *(inited + 33) = v39;
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v41 = Edge.Set.init(rawValue:)();
  v43 = v63;
  v42 = v64;
  if (v41 != v39)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10007D080(v36, v42, type metadata accessor for MovieView);
  v52 = v42 + *(v70 + 36);
  *v52 = v40;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  v53 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v54 = *(qword_1000F3C58 + 136);
  v55 = sub_100025508();

  if (v55)
  {
    v56 = v61;
    sub_10002A0A8(v53, v61);
    sub_10001A510(v56, v68, &qword_1000DBA58, &unk_100092F90);
    swift_storeEnumTagMultiPayload();
    sub_10007CEC4();
    sub_10007CF7C();
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v56, &qword_1000DBA58, &unk_100092F90);
  }

  else
  {
    sub_10001A510(v42, v68, &qword_1000DBA50, &qword_10009AC00);
    swift_storeEnumTagMultiPayload();
    sub_10007CEC4();
    sub_10007CF7C();
    _ConditionalContent<>.init(storage:)();
  }

  v57 = v60;
  sub_10000A628(v42, &qword_1000DBA50, &qword_10009AC00);
  v58 = v66;
  sub_10001F170(v43, v66, &qword_1000E1808, &qword_10009AC08);
  sub_10001A510(v58, v57, &qword_1000E1808, &qword_10009AC08);
  swift_storeEnumTagMultiPayload();
  sub_10007CE38();
  _ConditionalContent<>.init(storage:)();
  sub_10000A628(v58, &qword_1000E1808, &qword_10009AC08);
  return sub_10007C3CC(v69, type metadata accessor for AdjustedMovie);
}

uint64_t sub_1000794D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a3 + 16);
  swift_unknownObjectRetain();
  v57 = a2;
  v58 = a3;
  v7 = v6(a2, a3);
  v9 = v8;
  swift_unknownObjectRelease();
  *&v135 = v7;
  *(&v135 + 1) = v9;
  sub_10001F080();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  LOBYTE(v9) = v13;
  static Font.headline.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_100022470(v10, v12, v9 & 1);

  static Color.primary.getter();
  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_100022470(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v150 = v19;
  v151 = v21;
  v152 = v23 & 1;
  v55 = v25;
  v153 = v25;
  v154 = KeyPath;
  v155 = 1;
  v156 = 0;
  v27 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v56 = qword_1000F3C58;
  v28 = *(qword_1000F3C58 + 136);
  v29 = sub_100025508();

  if (v29)
  {
    sub_10002A0CC(v27, &v135);
    v109 = v141;
    *v110 = *v142;
    v105 = v137;
    v106 = v138;
    v108 = v140;
    v107 = v139;
    v104 = v136;
    v103 = v135;
    v117 = v141;
    *v118 = *v142;
    v113 = v137;
    v114 = v138;
    v116 = v140;
    v115 = v139;
    *&v110[16] = *&v142[16];
    *&v118[16] = *&v142[16];
    v112 = v136;
    v111 = v135;
    sub_10001A510(&v103, &v127, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v111, &qword_1000E1718, &qword_10009AB38);
    v133 = v109;
    *v134 = *v110;
    *&v134[16] = *&v110[16];
    v129 = v105;
    v130 = v106;
    v132 = v108;
    v131 = v107;
    v128 = v104;
    v127 = v103;
    sub_10007C8F8(&v127);
    v125 = v133;
    v126[0] = *v134;
    *(v126 + 9) = *&v134[9];
    v121 = v129;
    v122 = v130;
    v124 = v132;
    v123 = v131;
    v120 = v128;
    v119 = v127;
    sub_10001A510(&v103, &v135, &qword_1000E1718, &qword_10009AB38);
    sub_10001A510(&v103, &v135, &qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
    sub_100022470(v19, v21, v23 & 1);

    sub_10000A628(&v103, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v103, &qword_1000E1718, &qword_10009AB38);
  }

  else
  {
    *&v127 = v19;
    *(&v127 + 1) = v21;
    LOBYTE(v128) = v23 & 1;
    *(&v128 + 1) = v55;
    *&v129 = KeyPath;
    *(&v129 + 1) = 1;
    LOBYTE(v130) = 0;
    sub_10007C834(&v127);
    v125 = v133;
    v126[0] = *v134;
    *(v126 + 9) = *&v134[9];
    v121 = v129;
    v122 = v130;
    v124 = v132;
    v123 = v131;
    v120 = v128;
    v119 = v127;
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
  }

  v125 = v141;
  v126[0] = *v142;
  *(v126 + 9) = *&v142[9];
  v121 = v137;
  v122 = v138;
  v124 = v140;
  v123 = v139;
  v120 = v136;
  v119 = v135;
  v133 = v141;
  *v134 = *v142;
  *&v134[9] = *&v142[9];
  v129 = v137;
  v130 = v138;
  v132 = v140;
  v131 = v139;
  v128 = v136;
  v127 = v135;
  sub_10001A510(&v119, &v111, &qword_1000E1740, &qword_10009AB50);
  sub_10000A628(&v127, &qword_1000E1740, &qword_10009AB50);
  v30 = *(v58 + 24);
  swift_unknownObjectRetain();
  v31 = v30(v57, v58);
  v33 = v32;
  swift_unknownObjectRelease();
  *&v111 = v31;
  *(&v111 + 1) = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;
  static Font.headline.getter();
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;

  sub_100022470(v34, v36, v33 & 1);

  static Color.secondary.getter();
  v43 = Text.foregroundColor(_:)();
  v45 = v44;
  LOBYTE(v33) = v46;
  v48 = v47;

  sub_100022470(v38, v40, v42 & 1);

  v49 = swift_getKeyPath();
  v143 = v43;
  v144 = v45;
  v50 = v33 & 1;
  v145 = v50;
  v146 = v48;
  v147 = v49;
  v148 = 1;
  v149 = 0;
  v51 = static Color.blue.getter();
  v52 = *(v56 + 136);
  v53 = sub_100025508();

  if (v53)
  {
    sub_10002A0CC(v51, &v111);
    v85 = v117;
    *v86 = *v118;
    v81 = v113;
    v82 = v114;
    v83 = v115;
    v84 = v116;
    v79 = v111;
    v80 = v112;
    v92 = v116;
    v93 = v117;
    *v94 = *v118;
    v89 = v113;
    v90 = v114;
    v91 = v115;
    *&v86[16] = *&v118[16];
    *&v94[16] = *&v118[16];
    v87 = v111;
    v88 = v112;
    sub_10001A510(&v79, &v103, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v87, &qword_1000E1718, &qword_10009AB38);
    v109 = v85;
    *v110 = *v86;
    *&v110[16] = *&v86[16];
    v105 = v81;
    v106 = v82;
    v108 = v84;
    v107 = v83;
    v104 = v80;
    v103 = v79;
    sub_10007C8F8(&v103);
    v101 = v109;
    v102[0] = *v110;
    *(v102 + 9) = *&v110[9];
    v97 = v105;
    v98 = v106;
    v100 = v108;
    v99 = v107;
    v96 = v104;
    v95 = v103;
    sub_10001A510(&v79, &v111, &qword_1000E1718, &qword_10009AB38);
    sub_10001A510(&v79, &v111, &qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
    sub_100022470(v43, v45, v50);

    sub_10000A628(&v79, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v79, &qword_1000E1718, &qword_10009AB38);
  }

  else
  {
    *&v103 = v43;
    *(&v103 + 1) = v45;
    LOBYTE(v104) = v50;
    *(&v104 + 1) = v48;
    *&v105 = v49;
    *(&v105 + 1) = 1;
    LOBYTE(v106) = 0;
    sub_10007C834(&v103);
    v101 = v109;
    v102[0] = *v110;
    *(v102 + 9) = *&v110[9];
    v97 = v105;
    v98 = v106;
    v100 = v108;
    v99 = v107;
    v96 = v104;
    v95 = v103;
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
  }

  v75 = v117;
  v76[0] = *v118;
  *(v76 + 9) = *&v118[9];
  v71 = v113;
  v72 = v114;
  v73 = v115;
  v74 = v116;
  v69 = v111;
  v70 = v112;
  v77[6] = v117;
  v78[0] = *v118;
  *(v78 + 9) = *&v118[9];
  v77[2] = v113;
  v77[3] = v114;
  v77[4] = v115;
  v77[5] = v116;
  v77[0] = v111;
  v77[1] = v112;
  sub_10001A510(&v69, &v103, &qword_1000E1740, &qword_10009AB50);
  sub_10000A628(v77, &qword_1000E1740, &qword_10009AB50);
  v67 = v125;
  v68[0] = v126[0];
  *(v68 + 9) = *(v126 + 9);
  v63 = v121;
  v64 = v122;
  v65 = v123;
  v66 = v124;
  v61 = v119;
  v62 = v120;
  v101 = v75;
  v102[0] = v76[0];
  *(v102 + 9) = *(v76 + 9);
  v97 = v71;
  v98 = v72;
  v100 = v74;
  v99 = v73;
  v96 = v70;
  v95 = v69;
  v85 = v125;
  *v86 = v126[0];
  *&v86[9] = *(v126 + 9);
  v81 = v121;
  v82 = v122;
  v83 = v123;
  v84 = v124;
  v79 = v119;
  v80 = v120;
  __src[6] = v125;
  __src[7] = v126[0];
  *(&__src[7] + 9) = *(v126 + 9);
  __src[2] = v121;
  __src[3] = v122;
  __src[4] = v123;
  __src[5] = v124;
  __src[0] = v119;
  __src[1] = v120;
  *v94 = v76[0];
  *&v94[9] = *(v76 + 9);
  v89 = v71;
  v90 = v72;
  v92 = v74;
  v93 = v75;
  v91 = v73;
  v87 = v69;
  v88 = v70;
  *(&__src[16] + 9) = *(v76 + 9);
  __src[15] = v75;
  __src[16] = v76[0];
  __src[11] = v71;
  __src[12] = v72;
  __src[13] = v73;
  __src[14] = v74;
  __src[9] = v69;
  __src[10] = v70;
  memcpy(a4, __src, 0x119uLL);
  sub_10001A510(&v79, &v103, &qword_1000E1740, &qword_10009AB50);
  sub_10001A510(&v87, &v103, &qword_1000E1740, &qword_10009AB50);
  sub_10000A628(&v95, &qword_1000E1740, &qword_10009AB50);
  v109 = v67;
  *v110 = v68[0];
  *&v110[9] = *(v68 + 9);
  v105 = v63;
  v106 = v64;
  v108 = v66;
  v107 = v65;
  v104 = v62;
  v103 = v61;
  return sub_10000A628(&v103, &qword_1000E1740, &qword_10009AB50);
}

uint64_t sub_10007A250@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_10000A628(v4, &qword_1000DBD08, &qword_1000937D0);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_10007A38C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ActivityDisplayContext(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10007C364(a1, &v10 - v7, type metadata accessor for ActivityDisplayContext);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C364(v8, v6, type metadata accessor for ActivityDisplayContext);

  static Published.subscript.setter();
  return sub_10007C3CC(v8, type metadata accessor for ActivityDisplayContext);
}

uint64_t sub_10007A4A8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10007A528(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10007A5AC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10007A62C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_10007A6A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10007A71C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10001A510(a1, &v10 - v7, &qword_1000E12F8, &qword_10009A670);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v8, v6, &qword_1000E12F8, &qword_10009A670);

  static Published.subscript.setter();
  return sub_10000A628(v8, &qword_1000E12F8, &qword_10009A670);
}

uint64_t sub_10007A9A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10007ABD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10007AD64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100008A9C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10007A9A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_100008A9C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10007AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10007A9A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10007AE1C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_10000A1AC(a3, a4);
          return sub_10007ABD4(v13, a2, a3, a4) & 1;
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

uint64_t sub_10007AF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v75 = a2;
  v93 = a1;
  v3 = sub_1000056EC(&qword_1000E1558, &qword_10009A988);
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v87 = v67 - v4;
  v5 = sub_1000056EC(&qword_1000E1560, &qword_10009A990);
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v90 = v67 - v6;
  v7 = sub_1000056EC(&qword_1000E1568, &qword_10009A998);
  v85 = *(v7 - 8);
  v86 = v7;
  __chkstk_darwin(v7);
  v84 = v67 - v8;
  v9 = sub_1000056EC(&qword_1000E1570, &qword_10009A9A0);
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v78 = v67 - v10;
  v11 = sub_1000056EC(&qword_1000E1578, &qword_10009A9A8);
  v82 = *(v11 - 8);
  v83 = v11;
  __chkstk_darwin(v11);
  v81 = v67 - v12;
  v72 = type metadata accessor for ActivityDisplayContext(0);
  v13 = __chkstk_darwin(v72);
  v71 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = v67 - v15;
  v77 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v73 = *(v77 - 8);
  __chkstk_darwin(v77);
  v17 = v67 - v16;
  v69 = sub_1000056EC(&qword_1000E1550, &qword_10009A978);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67[0] = v67 - v18;
  v19 = sub_1000056EC(&qword_1000E1540, &qword_10009A968);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v67 - v21;
  v23 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v24 = __chkstk_darwin(v23);
  v26 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v67 - v27;
  v29 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__movie;
  v30 = type metadata accessor for AdjustedMovie(0);
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  sub_10001A510(v28, v26, &qword_1000E12F8, &qword_10009A670);
  Published.init(initialValue:)();
  v31 = v67[1];
  sub_10000A628(v28, &qword_1000E12F8, &qword_10009A670);
  (*(v20 + 32))(v31 + v29, v22, v19);
  v32 = (v31 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler);
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__activityImage;
  v96 = 0;
  v34 = sub_1000056EC(&unk_1000E1310, &unk_10009A690);
  v35 = v67[0];
  v74 = v34;
  Published.init(initialValue:)();
  (*(v68 + 32))(v31 + v33, v35, v69);
  v36 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__canShowActivityIcon;
  LOBYTE(v96) = 0;
  Published.init(initialValue:)();
  v37 = *(v73 + 4);
  v38 = v77;
  v37(v31 + v36, v17, v77);
  v39 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__isOptimisticStateActive;
  LOBYTE(v96) = 0;
  Published.init(initialValue:)();
  v37(v31 + v39, v17, v38);
  v77 = v31 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_tasks;
  *(v31 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_tasks) = &_swiftEmptySetSingleton;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000047A0(v40, qword_1000E1260);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Init", v43, 2u);
  }

  v44 = v70;
  v73 = type metadata accessor for ActivityDisplayContext;
  sub_10007C364(v93, v70, type metadata accessor for ActivityDisplayContext);
  swift_beginAccess();
  sub_10007C364(v44, v71, type metadata accessor for ActivityDisplayContext);
  Published.init(initialValue:)();
  sub_10007C3CC(v44, type metadata accessor for ActivityDisplayContext);
  swift_endAccess();
  v46 = *v32;
  v45 = v32[1];
  v47 = v75;
  v48 = v76;
  *v32 = v75;
  v32[1] = v48;
  sub_10000B16C(v47, v48);
  sub_10000B17C(v46, v45);
  v49 = sub_100060900();
  v51 = v50;
  swift_beginAccess();
  v94 = v49;
  v95 = v51;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v76 = sub_1000056EC(&qword_1000E1538, &qword_10009A960);
  v52 = v84;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000056EC(&qword_1000E1580, &qword_10009A9B0);
  v75 = sub_10000EE58(&qword_1000E1588, &qword_1000E1568, &qword_10009A998, &protocol conformance descriptor for Published<A>.Publisher);
  v53 = v78;
  v54 = v86;
  Publisher.map<A>(_:)();
  v85 = *(v85 + 8);
  (v85)(v52, v54);
  v72 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000EE58(&qword_1000E1590, &qword_1000E1570, &qword_10009A9A0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000EE58(&qword_1000E1598, &qword_1000E1580, &qword_10009A9B0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v55 = v80;
  v56 = v81;
  Publisher<>.switchToLatest()();
  (*(v79 + 8))(v53, v55);
  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000E15A0, &qword_1000E1578, &qword_10009A9A8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);

  v57 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v82 + 8))(v56, v57);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v58 = v93;
  v59 = *(v93 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v59;

  v60 = v59;
  static Published.subscript.setter();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v61 = v87;
  Publisher.map<A>(_:)();
  (v85)(v52, v54);
  sub_10000EE58(&qword_1000E15A8, &qword_1000E1558, &qword_10009A988, v72);
  v62 = v89;
  v63 = v90;
  Publisher.removeDuplicates(by:)();
  (*(v88 + 8))(v61, v62);
  swift_allocObject();
  swift_weakInit();

  sub_10000EE58(&qword_1000E15B0, &qword_1000E1560, &qword_10009A990, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v64 = v92;
  Publisher<>.sink(receiveValue:)();

  (*(v91 + 8))(v63, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100075D64();
  v65 = [objc_opt_self() defaultCenter];
  [v65 addObserver:v31 selector:"createMovieIfNeeded" name:kPCAssetManagerNotificationNameQueryDidComplete object:0];

  sub_10007C3CC(v58, v73);
  return v31;
}

uint64_t sub_10007BD74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10007BDBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_10000A1AC(a1, a2);
  }
}

void sub_10007BDD0(uint64_t a1)
{
  type metadata accessor for ObservedObject();
  if (v1 <= 0x3F)
  {
    sub_10007C084(319, &qword_1000E1660, type metadata accessor for ActivityIcon, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10007C0E8(319, &qword_1000DB1A0, &type metadata for Bool, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007BEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007BFBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007C084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}