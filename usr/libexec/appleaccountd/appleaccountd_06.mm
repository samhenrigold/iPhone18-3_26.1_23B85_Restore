uint64_t sub_1000BF5D8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_1000080F8((v1 + 16), v2);
  return (*(*(v3 + 8) + 24))(v2) & 1;
}

uint64_t sub_1000BF62C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BF664()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000BF6C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000BF71C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000BD4B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000BF7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF868(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000BF960;

  return v6(a1);
}

uint64_t sub_1000BF960()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000BFA58()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BFA90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EF88;

  return sub_1000BF868(a1, v4);
}

uint64_t sub_1000BFB48(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1000BFC3C;

  return v5(v2 + 16);
}

uint64_t sub_1000BFC3C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000BFD6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EF88;

  return sub_1000BFB48(a1, v4);
}

uint64_t sub_1000BFE24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000082A8;

  return sub_1000BFB48(a1, v4);
}

id sub_1000BFEE8(__int16 a1, unsigned __int8 a2)
{
  v2 = -7200 - a2;
  if (a1 == 3)
  {
    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  else
  {
    sub_1002A18BC(a1);
    swift_getErrorValue();
    v4 = sub_100255F6C(v2, v5, v6);

    return v4;
  }
}

unint64_t sub_1000BFFBC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0C88(*a1);
  *a2 = result;
  return result;
}

id sub_1000C00B4(char a1, __int16 a2, unsigned __int8 a3)
{
  v3 = (a3 >> 6);
  if ((a3 >> 6) > 1u)
  {
    v5 = -7352;
    if ((a1 & 1) == 0)
    {
      v5 = -7302;
    }

    v6 = -7353;
    if ((a1 & 1) == 0)
    {
      v6 = -7303;
    }

    if (v3 == 2)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_13;
  }

  if (a3 >> 6)
  {
    if (a1)
    {
      v4 = -7351;
    }

    else
    {
      v4 = -7301;
    }

LABEL_13:
    sub_1000BFEE8(a2, a3 & 0x3F);
    swift_getErrorValue();
    v3 = sub_100255F6C(v4, v8, v9);
  }

  return v3;
}

uint64_t sub_1000C016C()
{
  v1 = 0x6574656C706D6F63;
  v2 = 0x6E776F446E726F74;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x676E69646E6570;
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

uint64_t sub_1000C01F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C0E48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C0234(uint64_t a1)
{
  v2 = sub_1000C1770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0270(uint64_t a1)
{
  v2 = sub_1000C1770();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C02AC(void *a1, int a2)
{
  v33 = a2;
  v3 = sub_100005814(&qword_1003DBD78, &qword_10033FE20);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v25 - v4;
  v5 = sub_100005814(&qword_1003DBD80, &qword_10033FE28);
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_100005814(&qword_1003DBD88, &qword_10033FE30);
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_100005814(&qword_1003DBD90, &qword_10033FE38);
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = sub_100005814(&qword_1003DBD98, &qword_10033FE40);
  v34 = *(v14 - 8);
  v35 = v14;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  sub_1000080F8(a1, a1[3]);
  sub_1000C1770();
  v17 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v17 >> 6) > 1u)
  {
    if (v17 >> 6 == 2)
    {
      v40 = 2;
      sub_1000C186C();
      v18 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v17 & 0x3F;
      sub_1000C1968();
      v19 = v29;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v20 = *(v28 + 8);
      v21 = v7;
    }

    else
    {
      v42 = 3;
      sub_1000C17C4();
      v24 = v30;
      v18 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v17 & 0x3F;
      sub_1000C1968();
      v19 = v32;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v20 = *(v31 + 8);
      v21 = v24;
    }

    v20(v21, v19);
  }

  else
  {
    if (v17 >> 6)
    {
      v38 = 1;
      sub_1000C18C0();
      v22 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v17 & 0x3F;
      sub_1000C1968();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v27 + 8))(v10, v8);
      return (*(v34 + 8))(v16, v22);
    }

    v36 = 0;
    sub_1000C1914();
    v18 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v26 + 8))(v13, v11);
  }

  return (*(v34 + 8))(v16, v18);
}

uint64_t sub_1000C0804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
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

uint64_t sub_1000C088C(uint64_t a1)
{
  v2 = sub_1000C1914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C08C8(uint64_t a1)
{
  v2 = sub_1000C1914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0958(uint64_t a1)
{
  v2 = sub_1000C17C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0994(uint64_t a1)
{
  v2 = sub_1000C17C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C09D0(uint64_t a1)
{
  v2 = sub_1000C18C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0A0C(uint64_t a1)
{
  v2 = sub_1000C18C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000C0A48()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000C0A8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000C0ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
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

uint64_t sub_1000C0B50(uint64_t a1)
{
  v2 = sub_1000C186C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0B8C(uint64_t a1)
{
  v2 = sub_1000C186C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0BD4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000C0FB8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1000C0C1C(int a1, int a2)
{
  v2 = a2 ^ a1;
  v3 = ((a2 ^ a1) & 0x3F) == 0;
  if ((a2 & 0xC0) != 0x80)
  {
    v3 = 0;
  }

  v4 = (v2 & 0x3F) == 0;
  if (a2 <= 0xBFu)
  {
    v4 = 0;
  }

  if (a1 >> 6 != 2)
  {
    v3 = v4;
  }

  v5 = v2 ^ 1;
  if (a2 >= 0x40u)
  {
    v5 = 0;
  }

  v6 = (v2 & 0x3F) == 0;
  v7 = (a2 & 0xC0) == 0x40 && v6;
  if (!(a1 >> 6))
  {
    v7 = v5;
  }

  if ((a1 >> 6) <= 1u)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C0C88(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianSetupReadinessState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD)
  {
    goto LABEL_17;
  }

  if (a2 + 243 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 243) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 243;
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

      return (*a1 | (v4 << 8)) - 243;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 243;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CustodianSetupReadinessState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 243 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 243) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD)
  {
    v4 = 0;
  }

  if (a2 > 0xC)
  {
    v5 = ((a2 - 13) >> 8) + 1;
    *result = a2 - 13;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000C0E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F446E726F74 && a2 == 0xEF726568744F7942 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t sub_1000C0FB8(void *a1)
{
  v40 = sub_100005814(&qword_1003DBD18, &qword_10033FDF0);
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v45 = &v36 - v2;
  v39 = sub_100005814(&qword_1003DBD20, &qword_10033FDF8);
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v44 = &v36 - v3;
  v37 = sub_100005814(&qword_1003DBD28, &qword_10033FE00);
  v41 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v36 - v4;
  v6 = sub_100005814(&qword_1003DBD30, &qword_10033FE08);
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_100005814(&qword_1003DBD38, &qword_10033FE10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v47 = a1;
  sub_1000080F8(a1, v14);
  sub_1000C1770();
  v15 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v8;
    v13 = v5;
    v17 = v44;
    v18 = v45;
    v36 = 0;
    v46 = v10;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
    {
      v13 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      sub_100005814(&qword_1003DBD48, &qword_10033FE18);
      *v24 = &type metadata for CustodianSetupReadinessState;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v13 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v13);
      swift_willThrow();
      (*(v46 + 8))(v12, v9);
    }

    else if (*(v19 + 32) > 1u)
    {
      v27 = v46;
      if (v21 == 2)
      {
        v52 = 2;
        sub_1000C186C();
        v28 = v36;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v28)
        {
          sub_1000C1818();
          v29 = v39;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v42 + 8))(v17, v29);
          (*(v27 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v13 = v51 | 0xFFFFFF80;
          goto LABEL_22;
        }
      }

      else
      {
        v54 = 3;
        sub_1000C17C4();
        v32 = v36;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v32)
        {
          sub_1000C1818();
          v33 = v40;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v43 + 8))(v18, v33);
          (*(v27 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v13 = v53 | 0xFFFFFFC0;
          goto LABEL_22;
        }
      }

      (*(v27 + 8))(v12, v9);
    }

    else
    {
      if (*(v19 + 32))
      {
        v50 = 1;
        sub_1000C18C0();
        v30 = v13;
        v31 = v36;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v31)
        {
          sub_1000C1818();
          v35 = v37;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v41 + 8))(v30, v35);
          (*(v46 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v13 = v49 | 0x40u;
          goto LABEL_22;
        }
      }

      else
      {
        v48 = 0;
        sub_1000C1914();
        v25 = v36;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v25)
        {
          v26 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v38 + 8))(v16, v6);
          (*(v46 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v13 = v26 & 1;
          goto LABEL_22;
        }
      }

      (*(v46 + 8))(v12, v9);
    }

    swift_unknownObjectRelease();
  }

LABEL_22:
  sub_10000839C(v47);
  return v13;
}

unint64_t sub_1000C1770()
{
  result = qword_1003DBD40;
  if (!qword_1003DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD40);
  }

  return result;
}

unint64_t sub_1000C17C4()
{
  result = qword_1003DBD50;
  if (!qword_1003DBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD50);
  }

  return result;
}

unint64_t sub_1000C1818()
{
  result = qword_1003DBD58;
  if (!qword_1003DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD58);
  }

  return result;
}

unint64_t sub_1000C186C()
{
  result = qword_1003DBD60;
  if (!qword_1003DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD60);
  }

  return result;
}

unint64_t sub_1000C18C0()
{
  result = qword_1003DBD68;
  if (!qword_1003DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD68);
  }

  return result;
}

unint64_t sub_1000C1914()
{
  result = qword_1003DBD70;
  if (!qword_1003DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD70);
  }

  return result;
}

unint64_t sub_1000C1968()
{
  result = qword_1003DBDA0;
  if (!qword_1003DBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianSetupReadinessState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CustodianSetupReadinessState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CustodianMessage.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CustodianMessage.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianSetupFault(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianSetupFault(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C1D78()
{
  result = qword_1003DBDA8;
  if (!qword_1003DBDA8)
  {
    sub_100008CBC(&qword_1003DBDB0, qword_10033FED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDA8);
  }

  return result;
}

unint64_t sub_1000C1DE0()
{
  result = qword_1003DBDB8;
  if (!qword_1003DBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDB8);
  }

  return result;
}

unint64_t sub_1000C1E38()
{
  result = qword_1003DBDC0;
  if (!qword_1003DBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDC0);
  }

  return result;
}

unint64_t sub_1000C1E90()
{
  result = qword_1003DBDC8;
  if (!qword_1003DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDC8);
  }

  return result;
}

unint64_t sub_1000C1EE8()
{
  result = qword_1003DBDD0;
  if (!qword_1003DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDD0);
  }

  return result;
}

unint64_t sub_1000C1F40()
{
  result = qword_1003DBDD8;
  if (!qword_1003DBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDD8);
  }

  return result;
}

unint64_t sub_1000C1F98()
{
  result = qword_1003DBDE0;
  if (!qword_1003DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDE0);
  }

  return result;
}

unint64_t sub_1000C1FF0()
{
  result = qword_1003DBDE8;
  if (!qword_1003DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDE8);
  }

  return result;
}

unint64_t sub_1000C2048()
{
  result = qword_1003DBDF0;
  if (!qword_1003DBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDF0);
  }

  return result;
}

unint64_t sub_1000C20A0()
{
  result = qword_1003DBDF8;
  if (!qword_1003DBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDF8);
  }

  return result;
}

unint64_t sub_1000C20F8()
{
  result = qword_1003DBE00;
  if (!qword_1003DBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE00);
  }

  return result;
}

unint64_t sub_1000C2150()
{
  result = qword_1003DBE08;
  if (!qword_1003DBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE08);
  }

  return result;
}

unint64_t sub_1000C21A8()
{
  result = qword_1003DBE10;
  if (!qword_1003DBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE10);
  }

  return result;
}

unint64_t sub_1000C2200()
{
  result = qword_1003DBE18;
  if (!qword_1003DBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE18);
  }

  return result;
}

unint64_t sub_1000C2258()
{
  result = qword_1003DBE20;
  if (!qword_1003DBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE20);
  }

  return result;
}

unint64_t sub_1000C22B0()
{
  result = qword_1003DBE28;
  if (!qword_1003DBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE28);
  }

  return result;
}

unint64_t sub_1000C2308()
{
  result = qword_1003DBE30;
  if (!qword_1003DBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE30);
  }

  return result;
}

unint64_t sub_1000C235C()
{
  result = qword_1003DBE38;
  if (!qword_1003DBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE38);
  }

  return result;
}

uint64_t sub_1000C23E4()
{
  v26 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v26);
  v25 = &v19 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v24 = 0x800000010032D140;
  static DispatchQoS.background.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = 256;
  *(v11 + 24) = vdupq_n_s64(0x8CA0uLL);
  *(v11 + 40) = xmmword_100340540;
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + 80) = 0;
  v14 = sub_100071C74();
  v21 = v4;
  v22 = v14;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  v19 = v10;
  v20 = v5;
  (*(v5 + 16))(v8, v10, v4);
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v23);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C5514(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v13 + 16) = v15;
  *(v13 + 24) = 0xD000000000000037;
  *(v13 + 32) = v24;
  *(v13 + 40) = sub_1000C508C;
  *(v13 + 48) = v11;
  *(v13 + 56) = sub_1000C50F4;
  *(v13 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000C50FC;
  *(v16 + 24) = v13;
  aBlock[4] = sub_100071DCC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003A8178;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v15, v17);
  _Block_release(v17);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 8))(v19, v21);

    return v13;
  }

  return result;
}

uint64_t sub_1000C28D0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071C74();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v18;
  *(v14 + 16) = a1;
  *(v14 + 24) = v15;
  aBlock[4] = sub_1000C48EC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A80D8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000C5514(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

uint64_t sub_1000C2C6C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Did dismiss previously posted custodian invitation CFUs? %{BOOL}d", v9, 8u);
  }

  return a3(a2);
}

uint64_t sub_1000C2D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v41 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v36 - v7;
  v9 = type metadata accessor for URL();
  v40 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA88);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v9;
    v43[0] = v36;
    *v17 = 136315138;
    v42[0] = v6;
    sub_100005814(&qword_1003DBF10, &qword_1003405F8);
    v18 = String.init<A>(describing:)();
    v20 = v3;
    v21 = a1;
    v22 = v13;
    v23 = v8;
    v24 = a2;
    v25 = sub_10021145C(v18, v19, v43);

    *(v17 + 4) = v25;
    a2 = v24;
    v8 = v23;
    v13 = v22;
    a1 = v21;
    v3 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s - Starting scheduled invitation status check for all custodianships.", v17, 0xCu);
    sub_10000839C(v36);
    v9 = v37;
  }

  sub_100040738((v3 + 2), v43);
  v26 = sub_1000080F8(v43, v43[3]);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a1;
  v28[4] = a2;
  v29 = sub_1000080F8((*v26 + 16), *(*v26 + 40));
  type metadata accessor for LocalCache();

  v30 = v38;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v31 = *(v40 + 8);
  v31(v30, v9);
  v32 = v39;
  v33 = *v29 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v34 = v41;
  (*(v39 + 16))(v8, v33, v41);
  Dependency.wrappedValue.getter();
  (*(v32 + 8))(v8, v34);
  sub_1000080F8(v42, v42[3]);
  sub_1000328BC(v13, sub_1000C51E4, v28);

  v31(v13, v9);
  sub_10000839C(v42);

  return sub_10000839C(v43);
}

void sub_1000C3210(unsigned int (**a1)(char *, uint64_t, uint64_t), char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v102 = a5;
  v105 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v97 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v96 = *(v10 - 8);
  __chkstk_darwin(v10);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS.QoSClass();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v14 = __chkstk_darwin(v13 - 8);
  v106 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v85 - v16;
  v18 = type metadata accessor for Date();
  v103 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v101 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = &v85 - v21;
  v110 = type metadata accessor for CustodianshipInfoRecord(0);
  v98 = *(v110 - 8);
  v22 = __chkstk_darwin(v110);
  v100 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v85 - v25;
  __chkstk_darwin(v24);
  v28 = &v85 - v27;
  if (a2)
  {
    if (qword_1003D7F38 == -1)
    {
LABEL_3:
      v29 = type metadata accessor for Logger();
      sub_100008D04(v29, qword_1003FAA88);
      v30 = v105;
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      sub_1000399DC(v30, 1);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315138;
        v113 = v30;
        swift_errorRetain();
        sub_100005814(&unk_1003DBB60, &unk_10033E740);
        v35 = String.init<A>(describing:)();
        v37 = sub_10021145C(v35, v36, aBlock);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to fetch custodianships - %s", v33, 0xCu);
        sub_10000839C(v34);
      }

      a4(v30);
      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v89 = v10;
  v90 = v8;
  v91 = a4;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAA88);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Successfully fetched Custodianship info.", v41, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v85 = v7;
    v86 = dispatch_group_create();
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    v42 = v105[2];
    v43 = _swiftEmptyArrayStorage;
    if (!v42)
    {
LABEL_31:
      v61 = v43[2];
      v62 = v102;
      v63 = v91;
      a4 = v87;
      v64 = v86;
      v65 = v98;
      if (!v61)
      {
LABEL_35:

        sub_100071C74();
        v67 = v93;
        v68 = v92;
        v69 = v94;
        (*(v93 + 104))(v92, enum case for DispatchQoS.QoSClass.default(_:), v94);
        v70 = static OS_dispatch_queue.global(qos:)();
        (*(v67 + 8))(v68, v69);
        v71 = swift_allocObject();
        v71[2] = v63;
        v71[3] = v62;
        v71[4] = a4;
        aBlock[4] = sub_1000C540C;
        aBlock[5] = v71;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        aBlock[3] = &unk_1003A8268;
        v72 = _Block_copy(aBlock);

        v73 = v95;
        static DispatchQoS.unspecified.getter();
        v112 = _swiftEmptyArrayStorage;
        sub_1000C5514(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
        v74 = v97;
        v75 = v85;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v72);
        (*(v90 + 8))(v74, v75);
        (*(v96 + 8))(v73, v89);

        return;
      }

      v66 = 0;
      while (v66 < v43[2])
      {
        sub_1000C522C(v43 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v66, v26);
        sub_1000C3FF8(v26, v64, Strong, a4);
        ++v66;
        sub_1000C54B4(v26, type metadata accessor for CustodianshipInfoRecord);
        if (v61 == v66)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v44 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v108 = *(v98 + 72);
    v88 = v44;
    v45 = v105 + v44;
    v46 = (v103 + 7);
    v104 = (v103 + 4);
    v105 = (v103 + 6);
    ++v103;
    while (1)
    {
      sub_1000C522C(v45, v28);
      v47 = sub_1002E1D08(*&v28[*(v110 + 32)], *&v28[*(v110 + 32) + 8]);
      if (!v47)
      {
        break;
      }

      v48 = v47;
      v49 = [v47 creationDate];

      if (v49)
      {
        v50 = v106;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = 0;
      }

      else
      {
        v51 = 1;
        v50 = v106;
      }

      v52 = v107;
      (*v46)(v50, v51, 1, v18);
      sub_1000C52F8(v50, v17);
      if ((*v105)(v17, 1, v18) == 1)
      {
        goto LABEL_19;
      }

      (*v104)(v52, v17, v18);
      if (*&v28[*(v110 + 28)] == 1)
      {
        v53 = v101;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v55 = v54;
        v99 = v43;
        v56 = *v103;
        (*v103)(v53, v18);
        v56(v107, v18);
        v43 = v99;
        if (v55 > 604800.0)
        {
          sub_1000C5368(v28, v100);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0244(0, v43[2] + 1, 1);
            v43 = aBlock[0];
          }

          v59 = v43[2];
          v58 = v43[3];
          v60 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            sub_1002E0244((v58 > 1), v59 + 1, 1);
            v60 = v59 + 1;
            v43 = aBlock[0];
          }

          v43[2] = v60;
          sub_1000C5368(v100, v43 + v88 + v59 * v108);
          goto LABEL_21;
        }
      }

      else
      {
        (*v103)(v52, v18);
      }

LABEL_20:
      sub_1000C54B4(v28, type metadata accessor for CustodianshipInfoRecord);
LABEL_21:
      v45 += v108;
      v42 = (v42 - 1);
      if (!v42)
      {
        goto LABEL_31;
      }
    }

    (*v46)(v17, 1, 1, v18);
LABEL_19:
    sub_1000C5290(v17);
    goto LABEL_20;
  }

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v78 = 136315138;
    v112 = type metadata accessor for CustodianInvitationStatusChecker(0);
    sub_100005814(&qword_1003DBF10, &qword_1003405F8);
    v80 = String.init<A>(describing:)();
    v82 = sub_10021145C(v80, v81, aBlock);

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v76, v77, "%s is nil", v78, 0xCu);
    sub_10000839C(v79);
  }

  v83 = v91;
  type metadata accessor for AACustodianError(0);
  v112 = -7000;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000C5514(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v84 = aBlock[0];
  v83(aBlock[0]);
}

uint64_t sub_1000C3FF8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v48 = a3;
  v55 = a1;
  v5 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v44 - v6;
  v46 = type metadata accessor for TrustedContactUserNotification(0);
  __chkstk_darwin(v46);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianshipInfoRecord(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA88);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "CustodianshipRecord invitation has been pending for more than threshold time limit.", v17, 2u);
  }

  v18 = v55;
  sub_1000C522C(v55, v13);
  sub_1000C522C(v18, v11);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v21 = 136315394;
    type metadata accessor for UUID();
    sub_1000C5514(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v45 = a2;
    sub_1000C54B4(v13, type metadata accessor for CustodianshipInfoRecord);
    v25 = sub_10021145C(v22, v24, v54);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = &v11[*(v8 + 24)];
    v27 = *v26;
    v28 = v26[1];

    a2 = v45;
    sub_1000C54B4(v11, type metadata accessor for CustodianshipInfoRecord);
    v29 = sub_10021145C(v27, v28, v54);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Notifying User for CustodianshipRecord - %s - %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000C54B4(v11, type metadata accessor for CustodianshipInfoRecord);
    sub_1000C54B4(v13, type metadata accessor for CustodianshipInfoRecord);
  }

  dispatch_group_enter(a2);
  v30 = sub_100005814(&qword_1003E7750, qword_100340600);
  v31 = v51;
  v32 = &v51[*(v30 + 48)];
  v33 = *(v8 + 20);
  v34 = type metadata accessor for UUID();
  v35 = v55;
  (*(*(v34 - 8) + 16))(v31, v55 + v33, v34);
  v36 = (v35 + *(v8 + 24));
  v37 = v36[1];
  *v32 = *v36;
  *(v32 + 1) = v37;
  swift_storeEnumTagMultiPayload();
  v38 = v49;
  v39 = v47;
  v40 = v50;
  (*(v49 + 16))(v47, v48 + OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__userNotificationManager, v50);

  Dependency.wrappedValue.getter();
  (*(v38 + 8))(v39, v40);
  sub_1000080F8(v53, v53[3]);
  sub_1002CA150(v54);
  v41 = swift_allocObject();
  *(v41 + 16) = v52;
  *(v41 + 24) = a2;

  v42 = a2;
  sub_1002D2E28(v54, sub_1000C5458, v41);

  sub_1000C5460(v54);
  sub_1000C54B4(v31, type metadata accessor for TrustedContactUserNotification);
  return sub_10000839C(v53);
}

void sub_1000C45B8(uint64_t a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
    swift_errorRetain();
  }

  dispatch_group_leave(group);
}

uint64_t sub_1000C4628(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_1000C4694()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__userNotificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianInvitationStatusChecker(uint64_t a1)
{
  result = qword_1003DBE78;
  if (!qword_1003DBE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C47E4(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000C4910(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4928(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v22 = v35 - v21;
  switch(a3)
  {
    case 4:
      return sub_10030FD6C();
    case 3:
      return sub_10030FD48(result, v14, v15, v16, v17, v18, v19, v20, v35[0]);
    case 2:
      v23 = result;
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v24 = result;
        v25 = swift_allocObject();
        *(v25 + 16) = a4;
        *(v25 + 24) = a1;
        (*(v12 + 16))(v22, v24 + OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__accountStore, v23);

        Dependency.wrappedValue.getter();
        (*(v12 + 8))(v22, v23);
        v26 = [*(*sub_1000080F8(v36 v37) + 16)];
        sub_10000839C(v36);
        if (v26)
        {
          (*(v8 + 16))(v10, v24 + OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__userNotificationManager, v7);
          Dependency.wrappedValue.getter();
          (*(v8 + 8))(v10, v7);
          v27 = sub_1000080F8(v36, v37);
          v28 = AAFollowUpIdentifierCustodianInvitationReminder;
          v29 = swift_allocObject();
          *(v29 + 16) = sub_1000C5154;
          *(v29 + 24) = v25;
          v30 = (*v27 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
          v31 = v30[3];
          v32 = v30[4];
          sub_1000080F8(v30, v31);
          v33 = *(v32 + 56);

          v33(v28, v26, sub_1000C519C, v29, v31, v32);

          return sub_10000839C(v36);
        }

        else
        {
          type metadata accessor for AACustodianError(0);
          v36[0] = -7002;
          sub_100212324(_swiftEmptyArrayStorage);
          sub_1000C5514(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
          _BridgedStoredNSError.init(_:userInfo:)();
          v34 = v35[1];
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            sub_1000C2D84(sub_1000C515C, a1);
          }

          else
          {
          }
        }
      }

      break;
  }

  return result;
}

uint64_t sub_1000C4D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000C2D84(sub_1000C5570, a3);
  }

  return result;
}

BOOL sub_1000C4E20(const char *a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v3, v4))
    {

      return sub_10030FF34(v13, v14, v15, v16, v17, v18, v19, v20, v22);
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = a1;
    v23 = v6;
    *v5 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v7 = String.init<A>(describing:)();
    v9 = sub_10021145C(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Scheduled Custodian Invitation Status check completed with error: %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA88);
    v3 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v3, v11, "Scheduled Custodian Invitation Status check is complete.", v12, 2u);
    }
  }

  return sub_10030FF34(v13, v14, v15, v16, v17, v18, v19, v20, v22);
}

__n128 sub_1000C508C@<Q0>(uint64_t a1@<X8>)
{
  v2 = 256;
  if ((*(v1 + 17) & 1) == 0)
  {
    v2 = 0;
  }

  *a1 = v2 & 0xFFFFFFFFFFFFFFFELL | *(v1 + 16) & 1;
  *(a1 + 8) = *(v1 + 24);
  result = *(v1 + 40);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000C50BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000C5114()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C5164()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C51A4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000C51F4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000C522C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5290(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C52F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C53CC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000C5418()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C54B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C5514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000C5574()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_1003DBF18 = result;
  return result;
}

void sub_1000C55A8()
{
  v1 = v0;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Custodian manatee migrator listening for CKAccountChanged", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v1 selector:"manateeStatusChanged" name:CKAccountChangedNotification object:0];
}

void sub_1000C56EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  *(v5 + 3) = a1;
  *(v5 + 4) = a2;
  v6 = type metadata accessor for AsyncOperation();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v8 = &v7[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v8 = sub_1000CB71C;
  v8[1] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v9 = objc_msgSendSuper2(&v10, "init");
  if (qword_1003D7DE0 != -1)
  {
    swift_once();
  }

  [qword_1003DBF18 addOperation:{v9, v10.receiver, v10.super_class}];
}

uint64_t sub_1000C5810(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_1000C99BC(v10, a4, a5, a1, a2);
  }

  return result;
}

uint64_t sub_1000C58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (*(a2 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) > 0)
  {
    if (!a1)
    {
      v6 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v6 = _convertErrorToNSError(_:)();
LABEL_6:
    swift_beginAccess();
    if (AAUnderTest.getter())
    {
LABEL_19:

      return a4(a1);
    }

    if (!v6)
    {
      v10 = 0;
LABEL_18:
      sub_100005814(&qword_1003E30D0, &unk_100340690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033E5C0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x800000010032DFF0;
      *(inited + 48) = Int._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000012;
      *(inited + 64) = 0x800000010032E010;
      *(inited + 72) = Int._bridgeToObjectiveC()();
      sub_1003093D0(inited);
      swift_setDeallocating();
      sub_100005814(&unk_1003E8C10, &unk_100344990);
      swift_arrayDestroy();
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      v6 = v10;
      goto LABEL_19;
    }

    sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
    type metadata accessor for CKError(0);
    v7 = v6;
    if (swift_dynamicCast())
    {
      v8 = v18;
      if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
      {
        v9 = sub_10030B6CC();

        if (v9)
        {
          swift_getErrorValue();
          sub_1002DEA80(v14, v15);

          goto LABEL_15;
        }
      }
    }

    sub_1000CB64C();
    v8 = v7;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
      *v11 = v8;
      goto LABEL_17;
    }

LABEL_15:

LABEL_17:
    swift_getErrorValue();
    sub_10025648C(v16, v17);
    v10 = _convertErrorToNSError(_:)();

    goto LABEL_18;
  }

  if (a1)
  {
    goto LABEL_5;
  }

  return a4(a1);
}

void sub_1000C5BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v49 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecord(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  if (a2)
  {
    swift_errorRetain();
    v19 = a2;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAB18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Couldn't fetch custodianship records for manatee migration.", v23, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_errorRetain();
      sub_1000C62AC(v19);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = *(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);

      dispatch_group_leave(v25);
    }

    else
    {
    }
  }

  else
  {
    v44 = v13;
    v45 = v10;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v46 = v8;
    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAB18);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Starting migrating custodianship records to Manatee.", v29, 2u);
    }

    v30 = *(v47 + 16);
    v31 = v7;
    if (v30)
    {
      v32 = v47 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      swift_beginAccess();
      v33 = *(v15 + 72);
      do
      {
        sub_1000CB554(v32, v17, type metadata accessor for CustodianRecord);
        dispatch_group_enter(v18);
        v34 = swift_weakLoadStrong();
        if (v34)
        {
          v35 = v34;
          v36 = v18;
          sub_1000CA3DC(v17, v35, v36);

          v31 = v7;
        }

        sub_1000CB5EC(v17, type metadata accessor for CustodianRecord);
        v32 += v33;
        --v30;
      }

      while (v30);
    }

    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v37 = v48;
    v38 = v44;
    (*(v48 + 104))(v44, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v39 = static OS_dispatch_queue.global(qos:)();
    (*(v37 + 8))(v38, v11);
    aBlock[4] = sub_1000CB5BC;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A8548;
    v40 = _Block_copy(aBlock);

    v41 = v45;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_1000CA394(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v42 = v31;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v40);

    (*(v50 + 8))(v42, v43);
    (*(v49 + 8))(v41, v46);
  }
}

void sub_1000C62AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock;
  os_unfair_lock_lock(*(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock));
  if (a1)
  {
    v4 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors;
    swift_beginAccess();
    v5 = *(v1 + v4);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v4) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1003062A8(0, v5[2] + 1, 1, v5);
      *(v1 + v4) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1003062A8((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v5[v8 + 4] = a1;
    *(v1 + v4) = v5;
    swift_endAccess();
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) = v11;
LABEL_9:
    os_unfair_lock_unlock(*(v1 + v3));
    return;
  }

  __break(1u);
}

uint64_t sub_1000C63CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v23 = type metadata accessor for URL();
  v9 = *(v23 - 8);
  v10 = __chkstk_darwin(v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100040738(v2 + 56, v25);
  v15 = sub_1000080F8(v25, v25[3]);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = sub_1000080F8((*v15 + 16), *(*v15 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v18 = *(v9 + 8);
  v19 = v12;
  v20 = v23;
  v18(v19, v23);
  (*(v6 + 16))(v8, *v17 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v24, v24[3]);
  sub_1000324D8(v14, sub_1000CB550, v16);

  v18(v14, v20);
  sub_10000839C(v24);
  return sub_10000839C(v25);
}

void sub_1000C6694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipInfoRecord(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAB18);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Couldn't fetch custodianship info records for manatee migration: %@", v22, 0xCu);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_errorRetain();
      sub_1000C62AC(a2);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);

      dispatch_group_leave(v26);
    }

    else
    {
    }
  }

  else
  {
    v45 = v13;
    v46 = v10;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v47 = v8;
    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAB18);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Starting migrating custodianship info records to Manatee.", v30, 2u);
    }

    v31 = *(v48 + 16);
    v32 = v7;
    if (v31)
    {
      v33 = v48 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      swift_beginAccess();
      v34 = *(v15 + 72);
      do
      {
        sub_1000CB554(v33, v17, type metadata accessor for CustodianshipInfoRecord);
        dispatch_group_enter(v18);
        v35 = swift_weakLoadStrong();
        if (v35)
        {
          v36 = v35;
          v37 = v18;
          sub_1000CA9C4(v17, v36, v37);

          v32 = v7;
        }

        sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
        v33 += v34;
        --v31;
      }

      while (v31);
    }

    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v38 = v49;
    v39 = v45;
    (*(v49 + 104))(v45, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v40 = static OS_dispatch_queue.global(qos:)();
    (*(v38 + 8))(v39, v11);
    aBlock[4] = sub_1000CB010;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A8430;
    v41 = _Block_copy(aBlock);

    v42 = v46;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_1000CA394(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v43 = v32;
    v44 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v41);

    (*(v51 + 8))(v43, v44);
    (*(v50 + 8))(v42, v47);
  }
}

void sub_1000C6DE8(uint64_t a1, const char *a2)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAB18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);

    dispatch_group_leave(v8);
  }
}

uint64_t sub_1000C6F20(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v23 = type metadata accessor for URL();
  v9 = *(v23 - 8);
  v10 = __chkstk_darwin(v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100040738(v2 + 56, v25);
  v15 = sub_1000080F8(v25, v25[3]);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = sub_1000080F8((*v15 + 16), *(*v15 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v18 = *(v9 + 8);
  v19 = v12;
  v20 = v23;
  v18(v19, v23);
  (*(v6 + 16))(v8, *v17 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v24, v24[3]);
  sub_1000328BC(v14, sub_1000CB72C, v16);

  v18(v14, v20);
  sub_10000839C(v24);
  return sub_10000839C(v25);
}

uint64_t sub_1000C71E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Custodian + CustodianshipInfo migration complete.", v8, 2u);
  }

  v9 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors;
  swift_beginAccess();
  v10 = *(a3 + v9);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 32);
    swift_errorRetain();
  }

  else
  {
    v11 = 0;
  }

  a1(v11);
}

uint64_t sub_1000C7328()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));
  v1 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__keyRepair;
  v4 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianManateeMigrator(uint64_t a1)
{
  result = qword_1003DBF78;
  if (!qword_1003DBF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C74A0(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000C7600(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock;
      os_unfair_lock_lock(*(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock));
      v16 = *(v14 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        __break(1u);
        return;
      }

      *(v14 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) = v18;
      os_unfair_lock_unlock(*(v14 + v15));
    }

    a3(0);
    return;
  }

  swift_errorRetain();
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v10 = String.init<A>(describing:)();
    v12 = sub_10021145C(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error migrating custodianRecord : %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_errorRetain();
    sub_1000C62AC(a1);
  }

  swift_errorRetain();
  a3(a1);
}

uint64_t sub_1000C7878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB18);
    sub_1000CB554(a2, v8, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = a3;
      v13 = v12;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136315394;
      type metadata accessor for UUID();
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1000CB5EC(v8, type metadata accessor for CustodianshipInfoRecord);
      v19 = sub_10021145C(v16, v18, &v23);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2112;
      v20 = _convertErrorToNSError(_:)();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error migrating CustodianshipInfoRecord for custodianID - %s: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);

      a3 = v22;
    }

    else
    {

      sub_1000CB5EC(v8, type metadata accessor for CustodianshipInfoRecord);
    }
  }

  return a3(a1);
}

uint64_t sub_1000C7B70()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAB18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Manatee status changed, fetching new manatee status.", v9, 2u);
  }

  sub_100040738(v1 + 16, v18);
  v10 = sub_1000080F8(v18, v18[3]);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v5, *v10 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v2);

  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v12 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000C9950;
  *(v13 + 24) = v11;
  aBlock[4] = sub_100016014;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003A8318;
  v14 = _Block_copy(aBlock);

  [v12 accountInfoWithCompletionHandler:v14];
  _Block_release(v14);

  sub_10000839C(v17);

  return sub_10000839C(v18);
}

void sub_1000C7EDC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAB18);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_21;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Something went wrong while checking manatee status: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

LABEL_20:

LABEL_21:

    return;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "Account is not manatee, skipping manatee migration.", v21, 2u);
    goto LABEL_20;
  }

  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAB18);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Account is now manatee, kicking off migration.", v12, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = OSTransaction.complete();
    *(v14 + 4) = 0;
    v15 = type metadata accessor for AsyncOperation();
    v16 = objc_allocWithZone(v15);
    v16[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v17 = &v16[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v17 = sub_1000C99B0;
    v17[1] = v14;
    v23.receiver = v16;
    v23.super_class = v15;
    v18 = objc_msgSendSuper2(&v23, "init");
    if (qword_1003D7DE0 != -1)
    {
      swift_once();
    }

    [qword_1003DBF18 addOperation:v18];
  }
}

uint64_t sub_1000C830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v60 = a3;
  v56 = type metadata accessor for UUID();
  v6 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianshipInfoRecord(0);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v58 = &v48 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  sub_1000CB554(a1, v18, type metadata accessor for CustodianshipInfoRecord);
  sub_1000CB554(a2, v16, type metadata accessor for CustodianshipInfoRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v54 = a1;
    v23 = v22;
    v53 = swift_slowAlloc();
    v62 = v53;
    *v23 = 136315650;
    v52 = v20;
    v50 = *(v6 + 16);
    v51 = v21;
    v24 = v8;
    v25 = v8;
    v26 = v56;
    v50(v25, v18, v56);
    v49 = type metadata accessor for CustodianshipInfoRecord;
    sub_1000CB5EC(v18, type metadata accessor for CustodianshipInfoRecord);
    v48 = sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = a2;
    v29 = v28;
    v30 = *(v6 + 8);
    v30(v24, v26);
    v31 = sub_10021145C(v27, v29, &v62);

    *(v23 + 4) = v31;
    *(v23 + 12) = 2080;
    v50(v24, v16, v26);
    sub_1000CB5EC(v16, v49);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v30(v24, v26);
    v35 = sub_10021145C(v32, v34, &v62);
    a2 = v55;

    *(v23 + 14) = v35;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v62);
    v20 = v52;
    _os_log_impl(&_mh_execute_header, v52, v51, "Storage Controller: Replacing the old record with recordID: %s with new record recordID: %s, type: %s...", v23, 0x20u);
    swift_arrayDestroy();

    a1 = v54;
  }

  else
  {
    sub_1000CB5EC(v16, type metadata accessor for CustodianshipInfoRecord);
    sub_1000CB5EC(v18, type metadata accessor for CustodianshipInfoRecord);
  }

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v58;
  sub_1000CB554(a2, v58, type metadata accessor for CustodianshipInfoRecord);
  v38 = v59;
  sub_1000CB554(a1, v59, type metadata accessor for CustodianshipInfoRecord);
  v39 = *(v57 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = (v10 + v39 + v40) & ~v39;
  v42 = (v10 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = a2;
  v44 = swift_allocObject();
  sub_1000C5368(v37, v44 + v40);
  sub_1000C5368(v38, v44 + v41);
  *(v44 + v42) = v36;
  v45 = (v44 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
  v46 = v61;
  *v45 = v60;
  v45[1] = v46;

  sub_100230FD4(v43, sub_1000CB2BC, v44);
}

uint64_t sub_1000C88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v74 = a5;
  v75 = a6;
  v72 = a4;
  v73 = a3;
  v70 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v67 = &v63 - v8;
  v9 = type metadata accessor for UUID();
  v71 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianshipInfoRecord(0);
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v66 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v63 - v16;
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v20);
  v22 = (&v63 - v21);
  sub_100012D04(a1, &v63 - v21, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76[0] = v29;
      *v27 = 138412546;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v76);
      _os_log_impl(&_mh_execute_header, v25, v26, "Storage Controller: When attepmting to replace record, failed to save new record to cloud, recordID: %@, type: %s", v27, 0x16u);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v29);
    }

    swift_errorRetain();
    v74(v23);
  }

  else
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    v33 = sub_100008D04(v32, qword_1003FAAE8);
    sub_1000CB554(v70, v19, type metadata accessor for CustodianshipInfoRecord);
    v70 = v33;
    v34 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v64))
    {
      v35 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v76[0] = v63;
      *v35 = 136315394;
      v36 = v11;
      v37 = v71;
      (*(v71 + 16))(v36, v19, v9);
      sub_1000CB5EC(v19, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = v37;
      v11 = v36;
      (*(v41 + 8))(v36, v9);
      v42 = sub_10021145C(v38, v40, v76);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v76);
      _os_log_impl(&_mh_execute_header, v34, v64, "Storage Controller: Saving new record with record succeeded, recordID: %s, type: %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v19, type metadata accessor for CustodianshipInfoRecord);
    }

    sub_1000CB554(v73, v17, type metadata accessor for CustodianshipInfoRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76[0] = v70;
      *v45 = 136315394;
      v46 = v11;
      v47 = v9;
      v48 = v71;
      (*(v71 + 16))(v46, v17, v47);
      sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v48 + 8))(v46, v47);
      v52 = sub_10021145C(v49, v51, v76);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v76);
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Deleting the old record with record ID: %s, type: %s...", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v54 = v67;
      v55 = v68;
      v56 = v69;
      (*(v68 + 16))(v67, Strong + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v69);
      Dependency.wrappedValue.getter();

      (*(v55 + 8))(v54, v56);
      v57 = v73;
      v58 = v66;
      sub_1000CB554(v73, v66, type metadata accessor for CustodianshipInfoRecord);
      v59 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v60 = swift_allocObject();
      sub_1000C5368(v58, v60 + v59);
      v61 = (v60 + ((v13 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
      v62 = v75;
      *v61 = v74;
      v61[1] = v62;

      sub_1001A35E0(v57, sub_1000CB4B0, v60);

      sub_10000839C(v76);
    }

    return sub_100008D3C(v22, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_1000C9254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v43 = a4;
  v44 = a3;
  v6 = type metadata accessor for UUID();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianshipInfoRecord(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v15);
  v17 = (&v40 - v16);
  sub_100012D04(a1, &v40 - v16, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    sub_1000CB554(a2, v14, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v22 = 136315650;
      v24 = v42;
      (*(v42 + 16))(v8, v14, v6);
      sub_1000CB5EC(v14, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v24 + 8))(v8, v6);
      v28 = sub_10021145C(v25, v27, &v45);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v22 + 14) = v29;
      *v23 = v29;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v45);
      _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Failed to delete old record from cloud store, recordID: %s - %@, type: %s", v22, 0x20u);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v14, type metadata accessor for CustodianshipInfoRecord);
    }

    swift_errorRetain();
    v44(v18);
  }

  else
  {
    sub_100008D3C(v17, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    sub_1000CB554(a2, v12, type metadata accessor for CustodianshipInfoRecord);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = v42;
      (*(v42 + 16))(v8, v12, v6);
      sub_1000CB5EC(v12, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v34 + 8))(v8, v6);
      v38 = sub_10021145C(v35, v37, &v45);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v45);
      _os_log_impl(&_mh_execute_header, v31, v32, "Storage Controller: Successfully deleted old record from cloud store, recordID: %s, type: %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v12, type metadata accessor for CustodianshipInfoRecord);
    }

    return (v44)(0);
  }
}

uint64_t sub_1000C9918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000C995C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C9994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C99BC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v13 - 8);
  v52 = v13;
  __chkstk_darwin(v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - v18;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  (*(v17 + 16))(v19, a1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__accountStore, v16);

  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  v21 = [*(*sub_1000080F8(aBlock v60) + 16)];
  if (v21)
  {

    sub_10000839C(aBlock);
    v22 = objc_allocWithZone(type metadata accessor for CustodianMigrationAnalyticsEvent(0));
    sub_100309C2C(_swiftEmptyArrayStorage);
    v23 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v23;
    v24[4] = sub_100083740;
    v24[5] = v20;
    v25 = qword_1003D7F68;

    v50 = v23;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAB18);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Starting custodian manatee migration.", v29, 2u);
    }

    v30 = *(a1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);
    dispatch_group_enter(v30);
    v31 = swift_allocObject();
    swift_weakInit();

    sub_1000C63CC(sub_1000CA338, v31);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Starting custodianshipInfo manatee migration.", v34, 2u);
    }

    dispatch_group_enter(v30);
    v35 = swift_allocObject();
    swift_weakInit();

    sub_1000C6F20(sub_1000CA340, v35);

    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v37 = v51;
    v36 = v52;
    (*(v51 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v52);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v37 + 8))(v15, v36);
    v39 = swift_allocObject();
    v39[2] = sub_1000CA32C;
    v39[3] = v24;
    v39[4] = a1;
    v61 = sub_1000CA388;
    v62 = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    v60 = &unk_1003A83E0;
    v40 = _Block_copy(aBlock);

    v41 = v53;
    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_1000CA394(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v42 = v55;
    v43 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v40);

    (*(v57 + 8))(v42, v43);
    (*(v54 + 8))(v41, v56);
  }

  else
  {
    sub_10000839C(aBlock);
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAB18);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Not logged in to AppleAccount, Aborting migration!", v47, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v63 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000CA394(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = aBlock[0];
    v49 = a2(aBlock[0]);
    a4(v49);
  }
}

uint64_t sub_1000CA2A4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000CA2E4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000CA348()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000CA394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CA3DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for KeyRepairContext(0);
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = *(v12 + 48);
  v47 = a1;
  v17 = *(a1 + v16);
  v18 = qword_1003D7F68;
  v19 = a3;
  if (v17 == 1)
  {
    v20 = v19;
    if (v18 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAB18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "CustodianRecord is already in Manatee.", v24, 2u);
    }

    dispatch_group_leave(v20);
  }

  else
  {
    v43 = a2;
    if (v18 != -1)
    {
      swift_once();
    }

    v44 = v15;
    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAB18);
    sub_1000CB554(v47, v14, type metadata accessor for CustodianRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v29 = 136315138;
      type metadata accessor for UUID();
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000CB5EC(v14, type metadata accessor for CustodianRecord);
      v33 = sub_10021145C(v30, v32, v48);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Migrating CustodianRecord with custodianID %s...", v29, 0xCu);
      sub_10000839C(v42);
    }

    else
    {

      sub_1000CB5EC(v14, type metadata accessor for CustodianRecord);
    }

    v34 = *(v12 + 20);
    v35 = type metadata accessor for UUID();
    (*(*(v35 - 8) + 16))(v11, v47 + v34, v35);
    v11[v9[5]] = 1;
    v11[v9[6]] = 1;
    v36 = &v11[v9[7]];
    *v36 = 0;
    *(v36 + 1) = 0;
    v38 = v45;
    v37 = v46;
    (*(v45 + 16))(v8, v43 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__keyRepair, v46);
    Dependency.wrappedValue.getter();
    (*(v38 + 8))(v8, v37);
    sub_1000080F8(v48, v48[3]);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = sub_10007CFEC;
    v40[4] = v44;

    sub_100085FA8(v11, sub_1000CB5E0, v40);

    sub_1000CB5EC(v11, type metadata accessor for KeyRepairContext);

    sub_10000839C(v48);
  }
}

uint64_t sub_1000CA9C4(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = a2;
  v5 = type metadata accessor for CustodianshipInfoRecord(0);
  v59 = *(v5 - 1);
  v6 = *(v59 + 64);
  v7 = __chkstk_darwin(v5);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v55 - v12;
  v14 = __chkstk_darwin(v11);
  v61 = &v55 - v15;
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a1 + v5[9]);
  v20 = qword_1003D7F68;
  v21 = a3;
  if (v19 == 1)
  {
    v22 = v21;
    if (v20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB18);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "CustodianshipInfoRecord is already in Manatee.", v26, 2u);
    }

    dispatch_group_leave(v22);
  }

  else
  {
    v57 = v18;
    if (v20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAB18);
    v56 = a1;
    sub_1000CB554(a1, v17, type metadata accessor for CustodianshipInfoRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62[0] = v55;
      *v31 = 136315138;
      type metadata accessor for UUID();
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
      v35 = sub_10021145C(v32, v34, v62);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Migrating CustodianshipInfoRecord for custodianID - %s", v31, 0xCu);
      sub_10000839C(v55);
    }

    else
    {

      sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
    }

    v36 = v56;
    sub_1000CB554(v56, v13, type metadata accessor for CustodianshipInfoRecord);
    v37 = type metadata accessor for UUID();
    v38 = *(*(v37 - 8) + 16);
    v38(v10, v13, v37);
    v38(&v10[v5[5]], &v13[v5[5]], v37);
    v39 = v5[8];
    if (v13[v5[9]] == 1)
    {
      v40 = *&v13[v39];
      v41 = *&v13[v39 + 8];
      v42 = &v10[v39];
      *v42 = v40;
      v42[1] = v41;
      sub_100015D6C(v40, v41);
    }

    else
    {
      *&v10[v39] = xmmword_10033F8D0;
    }

    v43 = v5[6];
    v45 = *&v13[v43];
    v44 = *&v13[v43 + 8];
    v46 = &v10[v43];
    *v46 = v45;
    *(v46 + 1) = v44;
    v47 = *&v13[v5[7]];

    sub_1000CB5EC(v13, type metadata accessor for CustodianshipInfoRecord);
    *&v10[v5[7]] = v47;
    v10[v5[9]] = 1;
    v48 = v61;
    sub_1000C5368(v10, v61);
    sub_100040738(v58 + 16, v62);
    sub_1000080F8(v62, v62[3]);
    v49 = v60;
    sub_1000CB554(v36, v60, type metadata accessor for CustodianshipInfoRecord);
    v50 = v36;
    v51 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v52 = swift_allocObject();
    sub_1000C5368(v49, v52 + v51);
    v53 = (v52 + ((v6 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
    v54 = v57;
    *v53 = sub_1000CB730;
    v53[1] = v54;

    sub_1000C830C(v50, v48, sub_1000CB070, v52);

    sub_1000CB5EC(v48, type metadata accessor for CustodianshipInfoRecord);
    sub_10000839C(v62);
  }
}

uint64_t sub_1000CB034()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000CB070(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000C7878(a1, v1 + v4, v5);
}

uint64_t sub_1000CB110()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = (((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);

  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  v9(v0 + v5, v8);
  v9(v0 + v5 + v1[7], v8);

  sub_100012324(*(v0 + v5 + v1[10]), *(v0 + v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1000CB2BC(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1000C88C0(a1, v1 + v5, v1 + v7, v9, v11, v12);
}

uint64_t sub_1000CB378()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000CB4B0(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000C9254(a1, v1 + v4, v6, v7);
}

uint64_t sub_1000CB554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CB5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000CB64C()
{
  result = qword_1003E8C00;
  if (!qword_1003E8C00)
  {
    sub_100016034(255, &qword_1003DB5F0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E8C00);
  }

  return result;
}

uint64_t sub_1000CB6B4()
{

  return _swift_deallocObject(v0, 40);
}

__n128 sub_1000CB734(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CB740(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000CB788(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000CB7D8()
{
  v1[13] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB90C, 0, 0);
}

uint64_t sub_1000CB90C()
{
  v30 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[20] = v0[10];
  v8 = kAAAnalyticsEventCustodianSetupFetchSuggestedContactsFromDeviceIntelligence;
  (*(v6 + 16))(v4, v7 + OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__accountStore, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v4, v5);
  v9 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v9 && (v10 = v9, v11 = [v9 aa_altDSID], v10, v11))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = v8;

    v15 = String._bridgeToObjectiveC()();
  }

  else
  {

    v16 = v8;

    v15 = 0;
    v13 = 0;
  }

  v0[21] = v13;
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 analyticsEventWithName:v8 altDSID:v15 flowID:v18];
  v0[22] = v19;

  if (v19)
  {
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v20 = v19;
    v21 = NSString.init(stringLiteral:)();
    [v20 setObject:0 forKeyedSubscript:v21];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v0[23] = sub_100008D04(v22, qword_1003FAA40);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10021145C(0xD000000000000016, 0x800000010032E140, &v29);
    _os_log_impl(&_mh_execute_header, v23, v24, "Performing: %s...", v25, 0xCu);
    sub_10000839C(v26);
  }

  sub_100257274(v8);
  v27 = swift_task_alloc();
  v0[24] = v27;
  *v27 = v0;
  v27[1] = sub_1000CBF74;

  return sub_1000CC4D0((v0 + 12));
}

uint64_t sub_1000CBF74()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1000CC088;
  }

  else
  {
    v2 = sub_1000CC310;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CC088()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_10021145C(0xD000000000000016, 0x800000010032E140, &v14);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v3, 0x16u);
    sub_100083380(v4);

    sub_10000839C(v5);
  }

  v7 = v0[22];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v7)
  {
    v8 = v0[22];
    v9 = v8;
    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];

    swift_getObjectType();
    sub_100246FA8(v8);
  }

  else
  {
    swift_errorRetain();
  }

  v11 = v0[22];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_10000839C(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CC310(uint64_t a1)
{
  v12 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000016, 0x800000010032E140, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v1 + 176);
  if (v6)
  {
    [*(v1 + 176) updateTaskResultWithError:0];
    swift_getObjectType();
    v7 = v6;
    sub_100246FA8(v6);
  }

  swift_unknownObjectRelease();

  v8 = *(v1 + 96);
  sub_10000839C((v1 + 16));

  v9 = *(v1 + 8);

  return v9(v8);
}

uint64_t sub_1000CC4D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for EntityIdentifier();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for PersonEntityTagType();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000CC5EC, 0, 0);
}

uint64_t sub_1000CC5EC()
{
  v1 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService());
  v0[9] = PersonEntityTaggingService.init(etConfig:)();
  (*(v0[7] + 104))(v0[8], enum case for PersonEntityTagType.familyAndFriends(_:), v0[6]);
  v5 = &async function pointer to dispatch thunk of PersonEntityTaggingService.personEntities(for:options:) + async function pointer to dispatch thunk of PersonEntityTaggingService.personEntities(for:options:);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000CC734;
  v3 = v0[8];

  return (v5)(v3, 0);
}

uint64_t sub_1000CC734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1000CCC44;
  }

  else
  {
    v4 = sub_1000CC848;
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t sub_1000CC848()
{
  v1 = *(v0 + 96);
  sub_1000CF2C4(*(v0 + 88), 1);
  if (!v1)
  {
    type metadata accessor for ViewService();
    v4 = static ViewService.clientService.getter();
    v7 = ViewService.visualIdentifierView()();

    result = PersonEntityTaggingService.ScoreRankedEntityTagPersons.scoredEntities.getter();
    v8 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v9 = result;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_9:
        if (v9 < 1)
        {
          __break(1u);
          return result;
        }

        v10 = 0;
        v11 = v8 & 0xC000000000000001;
        v40 = (*(v0 + 32) + 8);
        v12 = _swiftEmptyArrayStorage;
        v36 = v8;
        v37 = v7;
        v38 = v8 & 0xC000000000000001;
        v39 = v9;
        do
        {
          if (v11)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v13 = *(v8 + 8 * v10 + 32);
          }

          v14 = v13;
          PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
          if (v15 < 0.5)
          {
          }

          else
          {
            v16 = *(v0 + 40);
            v17 = *(v0 + 24);
            PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.id.getter();
            EntityIdentifier.stringValue.getter();
            (*v40)(v16, v17);
            v18 = String._bridgeToObjectiveC()();

            v19 = [v7 personForIdentifier:v18];

            if (v19)
            {
              v20 = [v19 names];
              v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v21 = [v19 phoneNumbers];
              v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v23 = [v19 emails];
              v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v25 = [v19 contactIdentifiers];
              v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_1003063DC(0, *(v12 + 2) + 1, 1, v12);
              }

              v28 = *(v12 + 2);
              v27 = *(v12 + 3);
              if (v28 >= v27 >> 1)
              {
                v12 = sub_1003063DC((v27 > 1), v28 + 1, 1, v12);
              }

              *(v12 + 2) = v28 + 1;
              v29 = &v12[32 * v28];
              *(v29 + 4) = v41;
              *(v29 + 5) = v22;
              *(v29 + 6) = v24;
              *(v29 + 7) = v26;
              v8 = v36;
              v7 = v37;
            }

            else
            {
            }

            v11 = v38;
            v9 = v39;
          }

          ++v10;
        }

        while (v9 != v10);
        goto LABEL_27;
      }
    }

    v12 = _swiftEmptyArrayStorage;
LABEL_27:
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v33 = *(v0 + 48);
    v34 = *(v0 + 56);
    v35 = *(v0 + 16);

    swift_unknownObjectRelease();

    (*(v34 + 8))(v31, v33);
    *v35 = v12;

    v5 = *(v0 + 8);
    goto LABEL_4;
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v5 = *(v0 + 8);
LABEL_4:

  return v5();
}

uint64_t sub_1000CCC44()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000CCCE0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = swift_task_alloc();
  v2[26] = v3;
  *v3 = v2;
  v3[1] = sub_1000CCD70;

  return sub_1000CB7D8();
}

uint64_t sub_1000CCD70(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000CD118;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_1000CCE9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CCE9C()
{
  v0[22] = _swiftEmptyArrayStorage;
  v1 = v0[27];
  v0[28] = v1;
  v2 = *(v1 + 16);
  v0[29] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v0[30] = v3;
      v0[31] = _swiftEmptyArrayStorage;
      v4 = (v0[28] + 32 * v3);
      v0[32] = v4[4];
      v5 = v4[5];
      v0[33] = v5;
      v0[34] = v4[6];
      v6 = v4[7];
      v0[35] = v6;
      v0[23] = _swiftEmptyArrayStorage;
      swift_bridgeObjectRetain_n();

      sub_10028BBC0(v5);

      sub_10028BBC0(v7);

      v9 = sub_1002E225C(v8);

      v10 = v0[23];
      v0[36] = v10;
      v11 = *(sub_1000CEAE0(v10, v9) + 16);

      if (!v11)
      {
        v12 = *(v0[25] + 16);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v14 = [v12 contactForIdentifiers:isa];
        v0[37] = v14;

        if (v14)
        {
          break;
        }
      }

      v3 = v0[30] + 1;
      if (v3 == v0[29])
      {
        goto LABEL_9;
      }
    }

    v15 = swift_task_alloc();
    v0[38] = v15;
    *v15 = v0;
    v15[1] = sub_1000CD394;

    return sub_1000D06DC(v6, v10);
  }

  else
  {
LABEL_9:

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000CD118()
{
  v1 = _swiftEmptyArrayStorage;
  v0[22] = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v0[28] = _swiftEmptyArrayStorage;
  v0[29] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v0[30] = v3;
      v0[31] = v1;
      v4 = (v0[28] + 32 * v3);
      v0[32] = v4[4];
      v5 = v4[5];
      v0[33] = v5;
      v0[34] = v4[6];
      v6 = v4[7];
      v0[35] = v6;
      v7 = v1;
      v0[23] = v1;
      swift_bridgeObjectRetain_n();

      sub_10028BBC0(v5);

      sub_10028BBC0(v8);

      v10 = sub_1002E225C(v9);

      v11 = v0[23];
      v0[36] = v11;
      v12 = *(sub_1000CEAE0(v11, v10) + 16);

      if (!v12)
      {
        v13 = *(v0[25] + 16);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v15 = [v13 contactForIdentifiers:isa];
        v0[37] = v15;

        if (v15)
        {
          break;
        }
      }

      v3 = v0[30] + 1;
      v1 = v7;
      if (v3 == v0[29])
      {
        goto LABEL_9;
      }
    }

    v16 = swift_task_alloc();
    v0[38] = v16;
    *v16 = v0;
    v16[1] = sub_1000CD394;

    return sub_1000D06DC(v6, v11);
  }

  else
  {
LABEL_9:

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000CD394(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_1000CD510, 0, 0);
}

uint64_t sub_1000CD510()
{
  v54 = v0;
  v1 = v0[39];
  if (!v1[2])
  {

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA40);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[37];
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10021145C(0xD000000000000023, 0x800000010032E080, &v53);
      _os_log_impl(&_mh_execute_header, v28, v29, " %s No recommendations supplied", v32, 0xCu);
      sub_10000839C(v33);
    }

    v1 = v0 + 31;
    goto LABEL_14;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[37];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10021145C(0xD000000000000023, 0x800000010032E080, &v53);
    *(v8 + 12) = 2080;
    v10 = Array.description.getter();
    v12 = sub_10021145C(v10, v11, &v53);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2112;
    *(v8 + 24) = v7;
    *v9 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, " %s Recommended handles: %s for %@", v8, 0x20u);
    sub_100083380(v9);

    swift_arrayDestroy();
  }

  if (!v1[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v1 = v0 + 22;
  v14 = v0[39];
  v15 = v0[37];
  v17 = *(v14 + 32);
  v16 = *(v14 + 40);

  v0[5] = &type metadata for String;

  v0[2] = v17;
  v0[3] = v16;
  sub_10000DB1C((v0 + 2), (v0 + 6));
  v0[10] = String.init<A>(describing:)();
  v0[11] = v18;
  v0[12] = 0x3A6F746C69616DLL;
  v0[13] = 0xE700000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v19 = sub_1000709A0();
  v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v22 = v21;

  v0[16] = v20;
  v0[17] = v22;
  v0[18] = 980182388;
  v0[19] = 0xE400000000000000;
  v0[20] = 0;
  v0[21] = 0xE000000000000000;
  v51 = v19;
  v52 = v19;
  v50 = v19;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  sub_10000839C(v0 + 2);
  v23 = objc_allocWithZone(AALocalContactInfo);
  v24 = v15;
  v25 = String._bridgeToObjectiveC()();

  [v23 initWithHandle:v25 contact:{v24, &type metadata for String, v50, v51, v52}];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[22] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[22] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_26:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v26 = v0[37];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_14:
  v34 = *v1;
  while (1)
  {
    v35 = v0[30] + 1;
    if (v35 == v0[29])
    {
      break;
    }

    v0[30] = v35;
    v0[31] = v34;
    v36 = (v0[28] + 32 * v35);
    v0[32] = v36[4];
    v37 = v36[5];
    v0[33] = v37;
    v0[34] = v36[6];
    v38 = v36[7];
    v0[35] = v38;
    v0[23] = _swiftEmptyArrayStorage;
    swift_bridgeObjectRetain_n();

    sub_10028BBC0(v37);

    sub_10028BBC0(v39);

    v41 = sub_1002E225C(v40);

    v42 = v0[23];
    v0[36] = v42;
    v43 = *(sub_1000CEAE0(v42, v41) + 16);

    if (!v43)
    {
      v44 = *(v0[25] + 16);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v46 = [v44 contactForIdentifiers:isa];
      v0[37] = v46;

      if (v46)
      {
        v47 = swift_task_alloc();
        v0[38] = v47;
        *v47 = v0;
        v47[1] = sub_1000CD394;

        return sub_1000D06DC(v38, v42);
      }
    }
  }

  v49 = v0[1];

  return v49(v34);
}

uint64_t sub_1000CDC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1000CDC60, 0, 0);
}

uint64_t sub_1000CDC60()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  *v2 = v0;
  v2[1] = sub_1000CDD68;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x800000010032E0B0, sub_1000D0F34, v1, v3);
}

uint64_t sub_1000CDD68()
{

  return _swift_task_switch(sub_1000CDE80, 0, 0);
}

void sub_1000CDEA0(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100256EF4(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  aBlock[4] = sub_1000D0FD0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CE64C;
  aBlock[3] = &unk_1003A86D8;
  v15 = _Block_copy(aBlock);

  [v17 refreshIDStatusForDestinations:isa service:v10 listenerID:v11 queue:v12 completionBlock:v15];
  _Block_release(v15);
}

uint64_t sub_1000CE10C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v37 = _swiftEmptyArrayStorage;
    p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
    v36 = v2;
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          *&v42[0] = v37;
          sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
          return CheckedContinuation.resume(returning:)();
        }

        v5 = *(v2 + 8 * v9);
        ++v7;
        if (v5)
        {
          v7 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    while (1)
    {
LABEL_12:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_1000D1064(v1[6] + 40 * (v10 | (v7 << 6)), v42);
      v40[0] = v42[0];
      v40[1] = v42[1];
      v41 = v43;
      if (!v1[2])
      {
        goto LABEL_23;
      }

      v11 = sub_10031B060(v40);
      if ((v12 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_10000DB1C(v1[7] + 32 * v11, v39);
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v13 = v38;
      if ([v38 integerValue] == 1)
      {
        v14 = AnyHashable.description.getter();
        v16 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_100305F30(0, *(v37 + 2) + 1, 1, v37);
        }

        v18 = *(v37 + 2);
        v17 = *(v37 + 3);
        if (v18 >= v17 >> 1)
        {
          v37 = sub_100305F30((v17 > 1), v18 + 1, 1, v37);
        }

        sub_1000526B0(v40);
        *(v37 + 2) = v18 + 1;
        v19 = &v37[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        p_ivars = (&AppleIDAvailabilityHealthCheck + 48);
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {

LABEL_23:
        if (p_ivars[484] != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100008D04(v20, qword_1003FAA40);
        sub_1000D1064(v40, v39);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v23 = 136315394;
          *(v23 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, &v38);
          *(v23 + 12) = 2080;
          v24 = AnyHashable.description.getter();
          v25 = v6;
          v26 = v1;
          v28 = v27;
          sub_1000526B0(v39);
          v29 = sub_10021145C(v24, v28, &v38);
          v1 = v26;
          v6 = v25;
          v2 = v36;

          *(v23 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v21, v22, "%s %s not valid", v23, 0x16u);
          swift_arrayDestroy();

          p_ivars = (&AppleIDAvailabilityHealthCheck + 48);
        }

        else
        {

          sub_1000526B0(v39);
        }

        sub_1000526B0(v40);
        if (!v5)
        {
          goto LABEL_8;
        }
      }
    }
  }

  if (qword_1003D7F20 != -1)
  {
LABEL_34:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAA40);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v42[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, v42);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s no results returned", v33, 0xCu);
    sub_10000839C(v34);
  }

  *&v42[0] = _swiftEmptyArrayStorage;
  sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000CE64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1000CE6DC()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianMegadomeSuggester(uint64_t a1)
{
  result = qword_1003DC158;
  if (!qword_1003DC158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CE834(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

Swift::Int sub_1000CE940(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000CEC80(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000D1134(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

Swift::Int sub_1000CEAE0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000CEEC0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000D10C0(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

Swift::Int sub_1000CEC80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4 + 56;

  v31 = 0;
  v32 = v5;
  v12 = 0;
  v34 = v10;
  v35 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) != 0)
    {
      v24 = v4;
      v25 = (*(v4 + 48) + 16 * v21);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v27;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
          {
            v4 = v24;
            v5 = v32;
            goto LABEL_23;
          }

          v28 = (*(v24 + 48) + 16 * v21);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v22];
      a1[v22] = v13 | v23;
      v4 = v24;
      v5 = v32;
      v10 = v34;
      v6 = v35;
      if ((v13 & v23) == 0 && __OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_1000CF0A0(a1, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v34;
      v6 = v35;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1000CEEC0(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v13 = Hasher._finalize()();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1000CF0A0(v25, a2, v24, a4);
}

Swift::Int sub_1000CF0A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100005814(&unk_1003DC2C0, &unk_10034A390);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000CF2C4(void *a1, int a2)
{
  v126 = a2;
  v132 = a1;
  v128 = type metadata accessor for EntityIdentifier();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersonEntityTagType();
  v133 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PHPersonIdentifierMapView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewService();
  v12 = static ViewService.clientService.getter();
  ViewService.phPersonIdentifierMapView()();

  if (!v2)
  {
    v129 = v7;
    v119 = v11;
    v120 = v9;
    v121 = v8;
    v118 = v4;
    v13 = static ViewService.clientService.getter();
    v14 = ViewService.visualIdentifierView()();
    v131 = 0;

    if (qword_1003D7F20 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v15 = type metadata accessor for Logger();
      v16 = sub_100008D04(v15, qword_1003FAA40);
      v17 = v132;
      v114 = v16;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      v20 = os_log_type_enabled(v18, v19);
      v116 = v14;
      v21 = v133;
      v22 = v129;
      if (v20)
      {
        v23 = v5;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v132 = v17;
        v26 = v25;
        v134 = v25;
        *v24 = 136315138;
        PersonEntityTaggingService.ScoreRankedEntityTagPersons.tag.getter();
        v27 = PersonEntityTagType.rawValue.getter();
        v28 = v22;
        v30 = v29;
        (*(v21 + 8))(v28, v23);
        v31 = sub_10021145C(v27, v30, &v134);

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v18, v19, "Entities for tag: %s", v24, 0xCu);
        sub_10000839C(v26);
      }

      v32 = v130;
      v33 = v118;
      v14 = v121;
      v34 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.scoredEntities.getter();
      v35 = v34;
      v36 = v120;
      if (v34 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (!v37)
        {
LABEL_41:
          swift_unknownObjectRelease();

          (*(v36 + 8))(v119, v14);
          return;
        }
      }

      else
      {
        v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v37)
        {
          goto LABEL_41;
        }
      }

      v5 = 0;
      v129 = v35 & 0xC000000000000001;
      v110 = v35 & 0xFFFFFFFFFFFFFF8;
      v112 = v32 + 8;
      *(&v38 + 1) = 2;
      v111 = xmmword_10033EB30;
      *&v38 = 136316162;
      v109 = v38;
      *&v38 = 136315906;
      v108 = v38;
      v113 = v35;
      v127 = v37;
      while (1)
      {
        if (v129)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v110 + 16))
          {
            goto LABEL_38;
          }

          v40 = *(v35 + 8 * v5 + 32);
        }

        v41 = v40;
        v42 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
        if (v43 >= 0.5)
        {
          v123 = v5;
          v124 = v5 + 1;
          PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.id.getter();
          v44 = EntityIdentifier.stringValue.getter();
          v45 = v41;
          v47 = v46;
          v48 = *(v32 + 8);
          v49 = v128;
          v48(v33, v128);
          v115 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.inferenceEventId.getter();
          sub_100005814(&qword_1003DC2D0, &qword_1003407E8);
          v50 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v51 = swift_allocObject();
          *(v51 + 16) = v111;
          v125 = v45;
          PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.id.getter();
          sub_1001323C8(v51);
          swift_setDeallocating();
          v48((v51 + v50), v49);
          swift_deallocClassInstance();
          v52 = v119;
          v53 = v131;
          v54 = PHPersonIdentifierMapView.phPersonIdentifiers(for:)();
          v131 = v53;
          if (v53)
          {
            (*(v120 + 8))(v52, v121);

            swift_unknownObjectRelease();

            return;
          }

          v55 = v54;

          v136[0] = v55;
          sub_100005814(&qword_1003DC2D8, qword_1003407F0);
          sub_1000D10EC(&unk_1003DC2E0, &qword_1003DC2D8, qword_1003407F0, &protocol conformance descriptor for [A : B].Values);
          sub_1000709A0();
          v117 = Sequence<>.joined(separator:)();
          v132 = v56;

          strcpy(v136, "UNKNOWN_NAME");
          BYTE5(v136[1]) = 0;
          HIWORD(v136[1]) = -5120;
          v122 = v47;
          v57 = String._bridgeToObjectiveC()();
          v58 = [v116 personForIdentifier:v57];

          v59 = v44;
          if (v58)
          {
            v60 = [v58 names];
            v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = *(v61 + 16);

            v63 = v125;
            if (v62)
            {
              v64 = [v58 names];
              v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v135 = v65;
              sub_100005814(&qword_1003DA1E0, &qword_100345E50);
              sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
              v66 = BidirectionalCollection<>.joined(separator:)();
              v68 = v67;

              swift_beginAccess();
              v136[0] = v66;
              v136[1] = v68;
              v133 = v68;
            }

            else
            {
              v133 = 0xEC000000454D414ELL;
              v66 = 0x5F4E574F4E4B4E55;
            }

            v5 = v123;
            v69 = [v58 phoneNumbers];
            v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = *(v70 + 16);

            if (v71)
            {
              v72 = [v58 phoneNumbers];
              v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v135 = v73;
              sub_100005814(&qword_1003DA1E0, &qword_100345E50);
              sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
              v66 = BidirectionalCollection<>.joined(separator:)();
              v75 = v74;

              swift_beginAccess();
              v136[0] = v66;
              v136[1] = v75;

              v133 = v75;
            }

            v76 = [v58 emails];
            v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v78 = *(v77 + 16);

            if (v78)
            {
              v79 = [v58 emails];
              v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v135 = v80;
              sub_100005814(&qword_1003DA1E0, &qword_100345E50);
              sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
              v66 = BidirectionalCollection<>.joined(separator:)();
              v82 = v81;

              swift_beginAccess();
              v136[0] = v66;
              v136[1] = v82;

              v133 = v82;
            }

            else
            {
            }

            v59 = v44;
          }

          else
          {
            v133 = 0xEC000000454D414ELL;
            v66 = 0x5F4E574F4E4B4E55;
            v63 = v125;
            v5 = v123;
          }

          v83 = v122;

          v84 = v63;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.info.getter();

          v87 = os_log_type_enabled(v85, v86);
          if (v126)
          {
            if (v87)
            {
              v88 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              v135 = v123;
              *v88 = v109;
              v89 = v133;

              v90 = sub_10021145C(v66, v89, &v135);
              v125 = v85;
              v91 = v90;

              *(v88 + 4) = v91;
              *(v88 + 12) = 2080;
              v92 = sub_10021145C(v117, v132, &v135);

              *(v88 + 14) = v92;
              *(v88 + 22) = 2080;
              v93 = sub_10021145C(v59, v83, &v135);

              *(v88 + 24) = v93;
              *(v88 + 32) = 2048;
              PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
              *(v88 + 34) = v94;
              *(v88 + 42) = 2048;
              *(v88 + 44) = v115;
              v95 = v86;
              v96 = v125;
              v97 = v125;
              v98 = "\t%s: \t%s : %s : %f : EventID %lld";
              v99 = v88;
              v100 = 52;
              goto LABEL_33;
            }

LABEL_34:
          }

          else
          {
            if (!v87)
            {
              goto LABEL_34;
            }

            v101 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v135 = v123;
            *v101 = v108;
            v102 = v133;

            v103 = sub_10021145C(v66, v102, &v135);
            v125 = v85;
            v104 = v103;

            *(v101 + 4) = v104;
            *(v101 + 12) = 2080;
            v105 = sub_10021145C(v117, v132, &v135);

            *(v101 + 14) = v105;
            *(v101 + 22) = 2080;
            v106 = sub_10021145C(v59, v83, &v135);

            *(v101 + 24) = v106;
            *(v101 + 32) = 2048;
            PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
            *(v101 + 34) = v107;
            v95 = v86;
            v96 = v125;
            v97 = v125;
            v98 = "\t%s: \t%s : %s : %f";
            v99 = v101;
            v100 = 42;
LABEL_33:
            _os_log_impl(&_mh_execute_header, v97, v95, v98, v99, v100);
            swift_arrayDestroy();
          }

          v32 = v130;
          v33 = v118;
          v14 = v121;
          v36 = v120;
          v35 = v113;
          v39 = v127;
          v42 = v124;
          goto LABEL_9;
        }

        v39 = v127;
LABEL_9:
        ++v5;
        if (v42 == v39)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }
}

uint64_t sub_1000D00CC()
{
  v16 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[3];
    v4 = swift_allocObject();
    v0[5] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = v2;

    v6 = swift_task_alloc();
    v0[6] = v6;
    v7 = sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    *v6 = v0;
    v6[1] = sub_1000D0360;

    return withTimeout<A>(after:_:)(v0 + 2, 0x8AC7230489E80000, 0, &unk_1003407C0, v4, v7);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s IDSIDQueryController doesn't exist", v11, 0xCu);
      sub_10000839C(v12);
    }

    v13 = v0[1];

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000D0360()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000D04E0;
  }

  else
  {

    v2 = sub_1000D047C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D047C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000D04E0()
{
  v12 = v0;

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, &v11);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s error: %@", v4, 0x16u);
    sub_100083380(v5);

    sub_10000839C(v6);
  }

  v8 = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_1000D06DC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_1000D0700, 0, 0);
}

uint64_t sub_1000D0700()
{
  v52 = v0;
  v0[8] = _swiftEmptyArrayStorage;
  v1 = (v0 + 8);
  v2 = *(v0[11] + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 contactForIdentifiers:isa];

  if (!v4)
  {

    sub_10028BBC0(v22);
    goto LABEL_30;
  }

  v50 = v4;
  v5 = [v4 phoneNumberStrings];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = -v7;
    v10 = v6 + 40;
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = v10 + 16 * v8++;
      while (1)
      {
        if ((v8 - 1) >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v13 = String._bridgeToObjectiveC()();
        v14 = _IDSCopyIDForPhoneNumberWithOptions();

        if (v14)
        {
          break;
        }

        ++v8;
        v12 += 16;
        if (v9 + v8 == 1)
        {
          goto LABEL_17;
        }
      }

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100305F30(0, *(v11 + 2) + 1, 1, v11);
      }

      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v20 >= v19 >> 1)
      {
        v11 = sub_100305F30((v19 > 1), v20 + 1, 1, v11);
      }

      *(v11 + 2) = v20 + 1;
      v21 = &v11[16 * v20];
      *(v21 + 4) = v15;
      *(v21 + 5) = v18;
      *v1 = v11;
      v10 = v6 + 40;
    }

    while (v9 + v8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

LABEL_17:

  v23 = [v50 emailAddressStrings];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_29:

LABEL_30:
    if (qword_1003D7F20 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v26 = 0;
  v27 = -v25;
LABEL_19:
  v28 = v24 + 40 + 16 * v26++;
  while ((v26 - 1) < *(v24 + 16))
  {

    v29 = String._bridgeToObjectiveC()();
    v30 = _IDSCopyIDForEmailAddress();

    if (v30)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100305F30(0, *(v11 + 2) + 1, 1, v11);
      }

      v34 = *(v11 + 2);
      v33 = *(v11 + 3);
      if (v34 >= v33 >> 1)
      {
        v11 = sub_100305F30((v33 > 1), v34 + 1, 1, v11);
      }

      *(v11 + 2) = v34 + 1;
      v35 = &v11[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v49;
      *v1 = v11;
      if (v27 + v26)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    ++v26;
    v28 += 16;
    if (v27 + v26 == 1)
    {
      goto LABEL_29;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_31:
  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAA40);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v39 = 136315138;
    swift_beginAccess();

    v41 = Array.description.getter();
    v43 = v42;

    v44 = sub_10021145C(v41, v43, &v51);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Checking IDStatus for handles: %s", v39, 0xCu);
    sub_10000839C(v40);
  }

  swift_beginAccess();
  v45 = v0[8];
  v0[12] = v45;
  if (*(v45 + 16))
  {

    v46 = swift_task_alloc();
    v0[13] = v46;
    *v46 = v0;
    v46[1] = sub_1000D0CC4;

    return sub_1000D00AC(v45);
  }

  else
  {

    v48 = v0[1];

    return v48(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000D0CC4(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000D0DE4, 0, 0);
}

uint64_t sub_1000D0DE4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000D0E48()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000D0E88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1000CDC3C(a1, v5, v4);
}

uint64_t sub_1000D0F3C()
{
  v1 = sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000D0FD0(uint64_t a1)
{
  sub_100005814(&qword_1003DC2A8, &unk_1003407D0);

  return sub_1000CE10C(a1);
}

uint64_t sub_1000D104C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D10EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008CBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D1160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1000D119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAA40);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "fetchSuggestedCustodians for now fetching megadome and family.", v16, 2u);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = v5;
  v18[7] = a3;
  v18[8] = a4;

  sub_1000BCD5C(0, 0, v12, &unk_1003408C8, v18);
}

uint64_t sub_1000D139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000D13C4, 0, 0);
}

uint64_t sub_1000D13C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v2[12];
  type metadata accessor for CustodianMegadomeSuggester(0);
  v5 = swift_allocObject();
  v0[7] = v5;
  swift_unknownObjectRetain();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v5[3] = v3;
  v5[4] = v1;
  v5[2] = v4;
  v6 = v2[5];
  v7 = v2[6];
  sub_1000080F8(v2 + 2, v6);
  v8 = *(v7 + 32);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1000D15B0;
  v11 = v0[2];
  v10 = v0[3];

  return v13(v11, v10, v6, v7);
}

uint64_t sub_1000D15B0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000D16B0, 0, 0);
}

uint64_t sub_1000D16B0()
{
  v1 = *(v0 + 32);
  v2 = v1[5];
  v3 = v1[6];
  sub_1000080F8(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000D17D8;

  return v6(v2, v3);
}

uint64_t sub_1000D17D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = a1;

  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_1000D192C;

  return sub_1000CCCE0(a1);
}

uint64_t sub_1000D192C(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000D1A4C, 0, 0);
}

uint64_t sub_1000D1A4C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v10 = v0[9];
  sub_10028BDB8(v0[13]);
  sub_1000D1BDC(v10, v3, v2);

  swift_setDeallocating();
  swift_unknownObjectRelease();

  v4 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__analyticsReporter;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__accountStore;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  swift_deallocClassInstance();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D1BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v11 = type metadata accessor for URL();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = sub_1000080F8((v4 + 56), *(v4 + 80));
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v19 = sub_1000080F8((*v17 + 16), *(*v17 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v25 + 8);
  v21 = v14;
  v22 = v26;
  v20(v21, v26);
  v23 = v27;
  (*(v8 + 16))(v10, *v19 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v27);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v23);
  sub_1000080F8(v28, v28[3]);
  sub_1000324D8(v16, sub_1000D22BC, v18);

  v20(v16, v22);
  return sub_10000839C(v28);
}

uint64_t sub_1000D1EB4(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), unint64_t a6)
{
  v11 = type metadata accessor for CustodianRecord(0);
  v12 = __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = v28 - v16;
  if (a2)
  {
    return a5(a1, 1);
  }

  v28[0] = a4;
  v28[1] = a6;
  v29 = a5;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = *(v15 + 72);
    v22 = a1 + v20;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      sub_100012050(v22, v17);
      if ((*&v17[*(v11 + 36)] - 1) > 2)
      {
        sub_1000120B4(v17);
      }

      else
      {
        sub_100012378(v17, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E0288(0, v23[2] + 1, 1);
          v23 = v30;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1002E0288((v25 > 1), v26 + 1, 1);
          v23 = v30;
        }

        v23[2] = v26 + 1;
        sub_100012378(v14, v23 + v20 + v26 * v21);
      }

      v22 += v21;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v27 = sub_1000D22CC(v28[0], v23);

  v29(v27, 0);
}

uint64_t sub_1000D20DC()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000D2148()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000D2198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000D139C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D2274()
{

  return _swift_deallocObject(v0, 48);
}

void *sub_1000D22CC(unint64_t a1, uint64_t a2)
{
  v33 = a2;
  v32 = type metadata accessor for CustodianRecord(0);
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 & 0xC000000000000001;
    v26 = a1 + 32;
    v27 = i;
    v28 = a1;
    while (1)
    {
LABEL_6:
      if (v30)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v26 + 8 * v7);
      }

      v9 = v8;
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
        break;
      }

      v31 = v11;
      v12 = 0;
      v13 = *(v33 + 16);
      while (v13 != v12)
      {
        sub_100012050(v33 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5);
        v14 = &v5[*(v32 + 24)];
        v15 = *v14;
        v16 = *(v14 + 1);
        v17 = [v9 handle];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v15 == v18 && v16 == v20)
        {

          sub_1000120B4(v5);
LABEL_5:

          a1 = v28;
          v7 = v31;
          if (v31 != v27)
          {
            goto LABEL_6;
          }

          return v34;
        }

        ++v12;
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1000120B4(v5);
        if (v22)
        {
          goto LABEL_5;
        }
      }

      v23 = [v9 isChild];
      v7 = v31;
      if (v23)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      a1 = v28;
      if (v7 == v27)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000D25A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v8 = sub_100005814(a2, a3);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  sub_100012D04(a1, v15 - v9, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v6 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v15[1], v15[2]);
    v12 = _convertErrorToNSError(_:)();

    [v6 populateUnderlyingErrorsStartingWithRootError:v12];
  }

  else
  {
    v14 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v6 setObject:v14 forKeyedSubscript:kAAFDidSucceed];

    return sub_100008D3C(v10, a2, a3);
  }
}

void sub_1000D2748(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v7, v8);
    v5 = _convertErrorToNSError(_:)();

    [v3 populateUnderlyingErrorsStartingWithRootError:v5];
  }

  else
  {
    v6 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:v6 forKeyedSubscript:kAAFDidSucceed];
  }
}

void sub_1000D2850(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v6, v7);
    v4 = _convertErrorToNSError(_:)();

    [v2 populateUnderlyingErrorsStartingWithRootError:v4];
  }

  else
  {
    v5 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:v5 forKeyedSubscript:kAAFDidSucceed];
  }
}

void sub_1000D2968(uint64_t *a1)
{
  if (a1[4])
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v1 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v5, v6);
    v3 = _convertErrorToNSError(_:)();

    [v1 populateUnderlyingErrorsStartingWithRootError:v3];
  }

  else
  {
    v4 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v1 setObject:v4 forKeyedSubscript:kAAFDidSucceed];
  }
}

uint64_t sub_1000D2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v60 = a8;
  v61 = a7;
  v59 = a6;
  v63 = a5;
  v66 = a1;
  v65 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53 - v13;
  v14 = type metadata accessor for UUID();
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v67 = a3;
  v58 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    v23 = v68;
    (*(v68 + 16))(v16, a2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v14);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = a4;
    v27 = v26;
    (*(v23 + 8))(v16, v14);
    v28 = sub_10021145C(v24, v27, aBlock);
    a4 = v25;

    *(v21 + 4) = v28;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v18, v19, "Custodian %s saving invitation status: %ld", v21, 0x16u);
    sub_10000839C(v22);
    a3 = v67;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = a10;
    v30 = v14;
    v53 = a9;
    v31 = *(v68 + 16);
    v32 = v58;
    v33 = result;
    v31(v16, v58 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v30);
    v55 = *(v32 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow);
    v54 = *(v32 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow + 8);
    v34 = swift_allocObject();
    *(v34 + 16) = a10;
    *(v34 + 24) = a3;
    v35 = type metadata accessor for CustodianshipInfoRecord(0);
    v36 = swift_allocBox();
    v38 = v37;
    v31(&v37[v35[5]], v16, v30);
    v57 = v16;
    v58 = v30;
    v31(v38, v16, v30);
    v39 = &v38[v35[6]];
    *v39 = a4;
    *(v39 + 1) = v63;
    *&v38[v35[7]] = v66;
    *&v38[v35[8]] = xmmword_10033F8D0;
    v38[v35[9]] = 1;
    sub_100040738(v33 + 96, v71);
    v40 = sub_1000080F8(v71, v71[3]);
    v41 = swift_allocObject();
    v66 = v33;
    swift_weakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v36;
    *(v42 + 24) = v41;
    v43 = v61;
    *(v42 + 32) = v59;
    *(v42 + 40) = v43;
    v44 = v53;
    *(v42 + 48) = v60;
    *(v42 + 56) = v44;
    *(v42 + 64) = v55;
    *(v42 + 72) = v54;
    *(v42 + 80) = sub_1000D8358;
    *(v42 + 88) = v34;
    v45 = v64;
    v46 = *v40 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage;
    v47 = v62;
    v48 = v65;
    (*(v64 + 16))(v62, v46, v65);

    v49 = v56;

    Dependency.wrappedValue.getter();
    (*(v45 + 8))(v47, v48);
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v50 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1000D83B8;
    *(v51 + 24) = v42;
    aBlock[4] = sub_100016014;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A8888;
    v52 = _Block_copy(aBlock);

    [v50 accountInfoWithCompletionHandler:v52];
    _Block_release(v52);

    sub_10000839C(v70);
    (*(v68 + 8))(v57, v58);

    sub_10000839C(v71);
  }

  return result;
}

uint64_t sub_1000D322C(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  if (a2)
  {
    if (a1)
    {
      swift_getErrorValue();
      sub_1002DEA80(v10[1], v10[2]);
      a1 = _convertErrorToNSError(_:)();
    }

    [a2 updateTaskResultWithError:a1];
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v6 + 16))(v8, result + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v5);
    Dependency.wrappedValue.getter();

    (*(v6 + 8))(v8, v5);
    swift_getObjectType();
    sub_100246FA8(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D33E0()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);
  v1 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsEventFactory;
  v2 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonInvitationHandler(uint64_t a1)
{
  result = qword_1003DC3E0;
  if (!qword_1003DC3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D3594(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000D36F0(uint64_t a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13)
{
  v58 = a5;
  v59 = a6;
  v18 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v53 - v20;
  if (a3)
  {
    sub_1000D2850(a1, a2 & 1);
  }

  if (a2)
  {
    v59 = a4;
    v60 = a13;
    v58 = a3;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v19;
      v27 = swift_slowAlloc();
      *v25 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Something went wrong while validating account: %@", v25, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
      v19 = v26;
    }

    v61[0] = a1;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for AACustodianError(0);
    if (swift_dynamicCast())
    {
      v29 = v19;
      v30 = v64;
      v61[0] = v64;
      sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.code.getter();
      v31 = a12;
      if (v64 == -7012)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "This account is ineligible to be a custodian, marking as ineligible.", v34, 2u);
          v31 = a12;
        }

        a3 = v58;
        if (v58)
        {
          [v58 updateTaskResultWithError:0];
        }

        v31(5);

        v19 = v29;
        goto LABEL_26;
      }

      v19 = v29;
      a12(1);
    }

    else
    {
      a12(1);
    }

    a3 = v58;
    goto LABEL_26;
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      v60 = a13;
      v55 = a10;
      v56 = a12;
      sub_100012004();
      v57 = v19;
      v37 = kAAAnalyticsEventCustodianSetupFamilyMemberCheck;

      v38 = v37;

      v39 = sub_100245D38(v38, a8, a9, v55, a11);
      sub_100040738(v36 + 56, v61);
      v54 = v62;
      v55 = v21;
      v40 = v63;
      v53 = sub_1000080F8(v61, v62);
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      v42[2] = v39;
      v42[3] = v41;
      v43 = v60;
      v42[4] = v56;
      v42[5] = v43;
      v56 = v18;
      v44 = a3;
      v45 = *(v40 + 8);
      v46 = v39;

      v47 = v40;
      v21 = v55;
      v45(v58, v59, sub_1000D8308, v42, v54, v47);
      a3 = v44;
      v18 = v56;
      v19 = v57;

      sub_10000839C(v61);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAA88);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Account is ineligible for custodian auto-acceptance as a result of no manatee availability", v51, 2u);
    }

    a12(1);
  }

LABEL_26:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v19 + 16))(v21, result + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v18);
    Dependency.wrappedValue.getter();

    (*(v19 + 8))(v21, v18);
    swift_getObjectType();
    sub_100246FA8(a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D3DA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  if (a3)
  {
    sub_1000D2850(a1, a2 & 1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v10 + 16))(v12, Strong + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v9);
    Dependency.wrappedValue.getter();

    (*(v10 + 8))(v12, v9);
    swift_getObjectType();
    sub_100246FA8(a3);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch family circle: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    v20 = 1;
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Family circle fetch successful.", v24, 2u);
    }

    if (a1)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }
  }

  return a5(v20);
}

uint64_t sub_1000D4114(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v90 = a7;
  v91 = a8;
  v92 = a6;
  v89 = a5;
  v95 = a4;
  v14 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v14 - 8);
  v97 = &v85 - v15;
  v16 = type metadata accessor for CustodianshipInfoRecord(0);
  v86 = *(v16 - 1);
  v17 = __chkstk_darwin(v16);
  v88 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v96 = &v85 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v85 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v85 - v25;
  v87 = v27;
  __chkstk_darwin(v24);
  v94 = &v85 - v28;
  v29 = swift_projectBox();
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v26;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v99[0] = v35;
      *v34 = 136315138;
      v98 = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v36 = String.init<A>(describing:)();
      v38 = sub_10021145C(v36, v37, v99);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Manatee status check failed: %s", v34, 0xCu);
      sub_10000839C(v35);

      v26 = v33;
    }

LABEL_18:
    v43 = 0;
    goto LABEL_19;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAA88);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Manatee is not available to save custodianship with E2E encryption", v47, 2u);
    }

    goto LABEL_18;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100008D04(v39, qword_1003FAA88);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Manatee is available to save custodianship with E2E encryption", v42, 2u);
  }

  v43 = 1;
LABEL_19:
  swift_beginAccess();
  sub_1000C522C(v29, v26);
  v48 = v16[7];
  v49 = (v29 + v16[6]);
  v51 = *v49;
  v50 = v49[1];
  v93 = v29;
  v52 = *(v29 + v48);
  v53 = type metadata accessor for UUID();
  v54 = *(*(v53 - 8) + 16);
  v54(v23, v26, v53);
  v54(&v23[v16[5]], &v26[v16[5]], v53);
  if (v43 == v26[v16[9]])
  {
    v57 = &v26[v16[8]];
    v55 = *v57;
    v56 = v57[1];

    sub_100015D6C(v55, v56);
    sub_1000D8450(v26);
  }

  else
  {

    sub_1000D8450(v26);
    v55 = 0;
    v56 = 0xC000000000000000;
  }

  v58 = &v23[v16[8]];
  *v58 = v55;
  v58[1] = v56;
  v59 = &v23[v16[6]];
  *v59 = v51;
  *(v59 + 1) = v50;
  *&v23[v16[7]] = v52;
  v23[v16[9]] = v43;
  v60 = v94;
  sub_1000C5368(v23, v94);
  v61 = v93;
  swift_beginAccess();
  sub_1000D84AC(v60, v61);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100008D04(v62, qword_1003FAA88);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    *(v65 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v63, v64, "Saving CustodianshipInfoRecord in manatee? %{BOOL}d", v65, 8u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v67 = result;
    v85 = a12;
    LODWORD(v95) = a10;
    v94 = a9;
    swift_beginAccess();
    v68 = v96;
    sub_1000C522C(v61, v96);
    v69 = swift_allocObject();
    *(v69 + 16) = a11;
    *(v69 + 24) = a12;
    v70 = type metadata accessor for TaskPriority();
    (*(*(v70 - 8) + 56))(v97, 1, 1, v70);
    v71 = v68;
    v72 = v88;
    sub_1000C522C(v71, v88);
    v73 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v74 = (v87 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 31) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    sub_1000C5368(v72, v77 + v73);
    *(v77 + v74) = v67;
    v78 = v77 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v78 = v94;
    *(v78 + 8) = v95 & 1;
    v79 = (v77 + v75);
    v80 = v90;
    v81 = v91;
    v82 = v92;
    *v79 = v89;
    v79[1] = v82;
    v83 = (v77 + v76);
    *v83 = v80;
    v83[1] = v81;
    v84 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v84 = sub_1000D8510;
    v84[1] = v69;

    sub_1000BCD5C(0, 0, v97, &unk_100340968, v77);

    return sub_1000D8450(v96);
  }

  return result;
}

uint64_t sub_1000D49A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 208) = v16;
  *(v8 + 176) = v14;
  *(v8 + 192) = v15;
  *(v8 + 432) = a7;
  *(v8 + 160) = a6;
  *(v8 + 168) = a8;
  *(v8 + 144) = a4;
  *(v8 + 152) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 216) = v9;
  v10 = *(v9 - 8);
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 + 64);
  *(v8 + 240) = swift_task_alloc();
  sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  *(v8 + 248) = swift_task_alloc();
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for CustodianshipInfoRecord(0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1000D4B70, 0, 0);
}

uint64_t sub_1000D4B70()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 144);
  v3 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v3, qword_1003FAA88);
  sub_1000C522C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    LODWORD(v8) = *(v7 + *(v8 + 36));
    sub_1000D8450(v7);
    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Manatee status is %{BOOL}d for record being saved.", v9, 8u);
  }

  else
  {
    sub_1000D8450(*(v0 + 304));
  }

  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 152);

  v18 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter;
  *(v0 + 320) = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter;
  v19 = *(v11 + 16);
  *(v0 + 328) = v19;
  *(v0 + 336) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v10, v17 + v18, v12);
  Dependency.wrappedValue.getter();
  v20 = *(v11 + 8);
  *(v0 + 344) = v20;
  *(v0 + 352) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v10, v12);
  *(v0 + 360) = *(v0 + 88);
  v21 = kAAAnalyticsEventCustodianSetupStoreInvitationToCloud;
  *(v0 + 368) = sub_100012004();

  v22 = v21;

  v23 = sub_100245D38(v22, v16, v15, v14, v13);
  *(v0 + 376) = v23;
  if (v23)
  {
    v24 = *(v0 + 432);
    v25 = *(v0 + 160);
    v26 = v23;
    sub_100245E08(v25, v24 & 1);
  }

  sub_100257274(v22);
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  *v27 = v0;
  v27[1] = sub_1000D52AC;
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);

  return sub_1000D645C(v27, v28, v29);
}

uint64_t sub_1000D52AC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1000D53C0;
  }

  else
  {
    v2 = sub_1000D585C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D53C0()
{
  v1 = v0[49];
  v0[50] = v1;
  swift_getErrorValue();
  v2 = sub_1002DEA80(v0[3], v0[4]);
  swift_getErrorValue();
  v3 = sub_1002DEC1C(v0[6], v0[7]);
  v4 = v0[47];
  if (!v3)
  {
    swift_errorRetain();
    if (!v4)
    {
      goto LABEL_9;
    }

    v4 = v0[47];
    if (v2)
    {
      v5 = v4;
      swift_errorRetain();
      v6 = _convertErrorToNSError(_:)();

      v4 = v0[47];
LABEL_8:
      [v5 updateTaskResultWithError:v6];

      swift_getObjectType();
      v7 = v5;
      sub_100246FA8(v4);
      goto LABEL_9;
    }

LABEL_7:
    v5 = v4;
    v6 = 0;
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = v0[47];
  swift_willThrow();
  swift_unknownObjectRelease();

  v0[14] = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v9 = v0[15];
    v0[51] = v9;
    if (sub_1002DECC8(v9))
    {
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Conflict occured when saving invitation, fetching from cloud. %@", v12, 0xCu);
        sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);
      }

      v15 = v0[19];

      sub_1000080F8((v15 + 96), *(v15 + 120));
      v16 = swift_task_alloc();
      v0[52] = v16;
      *v16 = v0;
      v16[1] = sub_1000D5D08;
      v17 = v0[36];
      v18 = v0[18];

      return sub_10022C868(v17, v18);
    }
  }

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = _convertErrorToNSError(_:)();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to persist invitation: %@", v22, 0xCu);
    sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
  }

  v25 = v0[25];

  swift_errorRetain();
  v25(v1);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000D585C()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    [*(v0 + 376) updateTaskResultWithError:0];
    swift_getObjectType();
    v2 = v1;
    sub_100246FA8(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1000C522C(*(v0 + 144), *(v0 + 296));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 296);
  if (v5)
  {
    v7 = *(v0 + 280);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(v6 + *(v7 + 28));
    sub_1000D8450(v6);
    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Saved invitation status: %ld.", v8, 0xCu);
  }

  else
  {
    sub_1000D8450(*(v0 + 296));
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 144);

  v12 = *(v11 + *(v10 + 28));
  switch(v12)
  {
    case 1:
      v29 = &kAAAnalyticsEventCustodianSetupInvitationProcessedForManualAccept;
LABEL_13:
      v31 = *(v0 + 184);
      v30 = *(v0 + 192);
      v33 = *(v0 + 168);
      v32 = *(v0 + 176);
      v34 = *v29;

      v35 = sub_100245D38(v34, v33, v32, v31, v30);
      v36 = v35;
      if (v35)
      {
        v37 = *(v0 + 432);
        v38 = *(v0 + 160);
        [v35 updateTaskResultWithError:0];
        sub_100245E08(v38, v37 & 1);
      }

      goto LABEL_16;
    case 5:
      v29 = &kAAAnalyticsEventCustodianSetupAccountNotEligible;
      goto LABEL_13;
    case 2:
      v13 = *(v0 + 280);
      v15 = *(v0 + 240);
      v14 = *(v0 + 248);
      v16 = *(v0 + 224);
      v45 = *(v0 + 232);
      v17 = *(v0 + 216);
      v54 = *(v0 + 208);
      v53 = *(v0 + 200);
      v18 = *(v0 + 176);
      v51 = *(v0 + 184);
      v52 = *(v0 + 192);
      v49 = *(v0 + 432);
      v50 = *(v0 + 168);
      v48 = *(v0 + 160);
      v20 = *(v0 + 144);
      v19 = *(v0 + 152);
      [objc_opt_self() postRecoveryContactChangedNotification];
      v21 = *(v13 + 20);
      v22 = (v20 + *(v13 + 24));
      v46 = v22[1];
      v47 = *v22;
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
      (*(v16 + 16))(v15, v20 + v21, v17);
      v24 = (*(v16 + 80) + 88) & ~*(v16 + 80);
      v25 = (v45 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v19;
      *(v26 + 40) = v48;
      *(v26 + 48) = v49 & 1;
      *(v26 + 56) = v50;
      *(v26 + 64) = v18;
      *(v26 + 72) = v51;
      *(v26 + 80) = v52;
      (*(v16 + 32))(v26 + v24, v15, v17);
      v27 = (v26 + v25);
      *v27 = v47;
      v27[1] = v46;
      v28 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v28 = v53;
      v28[1] = v54;

      sub_1000BCD5C(0, 0, v14, &unk_100340978, v26);

      goto LABEL_17;
  }

  v36 = 0;
LABEL_16:
  v39 = *(v0 + 344);
  v40 = *(v0 + 272);
  v41 = *(v0 + 256);
  v42 = *(v0 + 200);
  (*(v0 + 328))(v40, *(v0 + 152) + *(v0 + 320), v41);
  Dependency.wrappedValue.getter();
  v39(v40, v41);
  swift_getObjectType();
  sub_100246FA8(v36);
  swift_unknownObjectRelease();
  v42(0);

LABEL_17:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1000D5D08()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1000D6278;
  }

  else
  {
    sub_1000D8450(*(v2 + 288));
    v3 = sub_1000D5E24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D5E24()
{
  v1 = *(v0 + 408);

  sub_1000C522C(*(v0 + 144), *(v0 + 296));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 296);
  if (v4)
  {
    v6 = *(v0 + 280);
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v5 + *(v6 + 28));
    sub_1000D8450(v5);
    *(v7 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saved invitation status: %ld.", v7, 0xCu);
  }

  else
  {
    sub_1000D8450(*(v0 + 296));
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 144);

  v11 = *(v10 + *(v9 + 28));
  switch(v11)
  {
    case 1:
      v28 = &kAAAnalyticsEventCustodianSetupInvitationProcessedForManualAccept;
LABEL_10:
      v30 = *(v0 + 184);
      v29 = *(v0 + 192);
      v32 = *(v0 + 168);
      v31 = *(v0 + 176);
      v33 = *v28;

      v34 = sub_100245D38(v33, v32, v31, v30, v29);
      v35 = v34;
      if (v34)
      {
        v36 = *(v0 + 432);
        v37 = *(v0 + 160);
        [v34 updateTaskResultWithError:0];
        sub_100245E08(v37, v36 & 1);
      }

      goto LABEL_13;
    case 5:
      v28 = &kAAAnalyticsEventCustodianSetupAccountNotEligible;
      goto LABEL_10;
    case 2:
      v12 = *(v0 + 280);
      v14 = *(v0 + 240);
      v13 = *(v0 + 248);
      v15 = *(v0 + 224);
      v44 = *(v0 + 232);
      v16 = *(v0 + 216);
      v53 = *(v0 + 208);
      v52 = *(v0 + 200);
      v17 = *(v0 + 176);
      v50 = *(v0 + 184);
      v51 = *(v0 + 192);
      v48 = *(v0 + 432);
      v49 = *(v0 + 168);
      v47 = *(v0 + 160);
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);
      [objc_opt_self() postRecoveryContactChangedNotification];
      v20 = *(v12 + 20);
      v21 = (v19 + *(v12 + 24));
      v45 = v21[1];
      v46 = *v21;
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
      (*(v15 + 16))(v14, v19 + v20, v16);
      v23 = (*(v15 + 80) + 88) & ~*(v15 + 80);
      v24 = (v44 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = v18;
      *(v25 + 40) = v47;
      *(v25 + 48) = v48 & 1;
      *(v25 + 56) = v49;
      *(v25 + 64) = v17;
      *(v25 + 72) = v50;
      *(v25 + 80) = v51;
      (*(v15 + 32))(v25 + v23, v14, v16);
      v26 = (v25 + v24);
      *v26 = v46;
      v26[1] = v45;
      v27 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v27 = v52;
      v27[1] = v53;

      sub_1000BCD5C(0, 0, v13, &unk_100340978, v25);

      goto LABEL_14;
  }

  v35 = 0;
LABEL_13:
  v38 = *(v0 + 344);
  v39 = *(v0 + 272);
  v40 = *(v0 + 256);
  v41 = *(v0 + 200);
  (*(v0 + 328))(v39, *(v0 + 152) + *(v0 + 320), v40);
  Dependency.wrappedValue.getter();
  v38(v39, v40);
  swift_getObjectType();
  sub_100246FA8(v35);
  swift_unknownObjectRelease();
  v41(0);

LABEL_14:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1000D6278()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error fetching invitation after conflict: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
  }

  v6 = v0[51];
  v7 = v0[25];

  swift_getErrorValue();
  sub_100255F6C(-7099, v0[9], v0[10]);
  v7();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D645C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = type metadata accessor for CustodianshipInfoRecord(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D64F0, 0, 0);
}

uint64_t sub_1000D64F0()
{
  v1 = v0[4];
  v0[2] = *sub_1000080F8((v0[3] + 96), *(v0[3] + 120));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1000D65F4;
  v5 = v0[5];
  v4 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x293A5F2865766173, 0xE800000000000000, sub_1000D8AF8, v2, v5);
}

uint64_t sub_1000D65F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1000D683C;
  }

  else
  {
    sub_1000D8450(*(v2 + 48));

    v3 = sub_1000D6718;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D6718()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Invitation, CustodianshipInfoRecord, saved successfully", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000D683C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D68A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 216) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1000D699C, 0, 0);
}

uint64_t sub_1000D699C()
{
  v30 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 168) = *(v0 + 40);
  v8 = kAAAnalyticsEventCustodianSetupSendAutoAcceptInvitationMessage;
  sub_100012004();

  v9 = v8;

  v10 = sub_100245D38(v9, v7, v6, v5, v4);
  *(v0 + 176) = v10;
  if (v10)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 64);
    v13 = v10;
    sub_100245E08(v12, v11 & 1);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  *(v0 + 184) = sub_100008D04(v14, qword_1003FAA40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10021145C(0xD000000000000019, 0x800000010032E210, &v29);
    _os_log_impl(&_mh_execute_header, v15, v16, "Performing: %s...", v17, 0xCu);
    sub_10000839C(v18);
  }

  sub_100257274(v9);
  v19 = *(v0 + 216);
  v20 = *(v0 + 56);
  v21 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v23 = [v21 initWithCustodianID:isa didAccept:1];
  *(v0 + 192) = v23;

  sub_1000080F8((v20 + 16), *(v20 + 40));
  v24 = swift_task_alloc();
  *(v0 + 200) = v24;
  *v24 = v0;
  v24[1] = sub_1000D6EF0;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 64);

  return sub_1002627F8(v23, v25, v26, v27, v19 & 1);
}

uint64_t sub_1000D6EF0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000D71A8;
  }

  else
  {
    v2 = sub_1000D7004;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D7004()
{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10021145C(0xD000000000000019, 0x800000010032E210, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ %s - successfully completed!", v3, 0xCu);
    sub_10000839C(v4);
  }

  v5 = *(v0 + 176);
  if (v5)
  {
    [*(v0 + 176) updateTaskResultWithError:0];
    swift_getObjectType();
    v6 = v5;
    sub_100246FA8(v5);
  }

  (*(v0 + 128))(0);
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000D71A8()
{
  v16 = v0;

  v1 = *(v0 + 208);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_10021145C(0xD000000000000019, 0x800000010032E210, &v15);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "❌ %s - failed with error: %@", v4, 0x16u);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v6);
  }

  v8 = *(v0 + 176);
  swift_getErrorValue();
  sub_1002DEA80(*(v0 + 24), *(v0 + 32));
  if (v8)
  {
    v9 = *(v0 + 176);
    v10 = v9;
    swift_errorRetain();
    v11 = _convertErrorToNSError(_:)();
    [v10 updateTaskResultWithError:v11];

    swift_getObjectType();
    sub_100246FA8(v9);
  }

  else
  {
    swift_errorRetain();
    v10 = 0;
  }

  v12 = *(v0 + 128);
  swift_willThrow();

  v12(v1);
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D7428(uint64_t a1)
{
  v2 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100012D04(a1, v9 - v6, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000C5368(v7, v4);
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000D758C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_100230FD4(a3, sub_1000D8B94, v10);
}

uint64_t sub_1000D76E0(char *a1, uint64_t a2, unint64_t a3)
{
  v94 = a2;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v79 - v7;
  v97 = type metadata accessor for UUID();
  v93 = *(v97 - 8);
  v9 = __chkstk_darwin(v97);
  v96 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v10;
  __chkstk_darwin(v9);
  v92 = &v79 - v11;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA88);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v15 = os_log_type_enabled(v13, v14);
  v91 = a3;
  v87 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v98 = v6;
    v99[0] = v17;
    v18 = v97;
    v90 = v17;
    *v16 = 136315394;
    v19 = v92;
    v20 = v93;
    (*(v93 + 16))(v92, &a1[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID], v18);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = v18;
    v6 = v98;
    (*(v20 + 8))(v19, v24);
    v25 = sub_10021145C(v21, v23, v99);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_10021145C(v94, v91, v99);
    _os_log_impl(&_mh_execute_header, v13, v14, "Received invitation to Custodian %s from %s", v16, 0x16u);
    swift_arrayDestroy();

    a3 = v91;
  }

  (*(v6 + 2))(v8, v95 + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__accountStore, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 1))(v8, v5);
  v26 = [*(*sub_1000080F8(v99 v100) + 16)];
  v27 = v93;
  if (v26 && (v28 = v26, v29 = [v26 aa_altDSID], v28, v29))
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  sub_10000839C(v99);
  v33 = v92;
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  v85 = *(v27 + 8);
  v86 = v27 + 8;
  v85(v33, v97);
  v37 = kAAAnalyticsEventCustodianSetupProcessInvitation;
  v90 = v30;
  v38 = a3;
  if (v32)
  {
    swift_bridgeObjectRetain_n();
    v39 = v37;

    v40 = String._bridgeToObjectiveC()();
    v41 = v32;
  }

  else
  {
    v41 = 0;
    swift_bridgeObjectRetain_n();
    v42 = v37;
    v40 = 0;
  }

  v43 = objc_opt_self();
  v44 = String._bridgeToObjectiveC()();
  v45 = v36;

  v84 = v43;
  v46 = [v43 analyticsEventWithName:v37 altDSID:v40 flowID:v44];

  v47 = v87;
  v98 = v46;
  if (v46)
  {
    v48 = *&v87[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow];
    v49 = v87[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow + 8];
    v50 = v98;
    sub_100245E08(v48, v49);
  }

  v83 = *(v27 + 16);
  v83(v96, &v47[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID], v97);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 2) = v47;
  *(v52 + 3) = v51;
  v89 = v51;
  *(v52 + 4) = v94;
  *(v52 + 5) = v38;
  *(v52 + 6) = v90;
  *(v52 + 7) = v41;
  *(v52 + 8) = v34;
  *(v52 + 9) = v45;
  v53 = v45;
  v80 = v52;
  *(v52 + 10) = v98;
  v54 = kAAAnalyticsEventCustodianSetupAccountEligibilityCheck;
  v82 = v41;
  if (v41)
  {
    swift_bridgeObjectRetain_n();

    v55 = v98;

    v56 = v54;
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {

    v58 = v98;

    v59 = v54;
    v57 = 0;
  }

  v81 = v34;
  v60 = String._bridgeToObjectiveC()();

  v61 = [v84 analyticsEventWithName:v54 altDSID:v57 flowID:v60];

  sub_100040738(v95 + 136, v99);
  v87 = sub_1000080F8(v99, v100);
  v62 = swift_allocObject();
  v84 = v62;
  swift_weakInit();
  v63 = v92;
  v64 = v97;
  v83(v92, v96, v97);
  v65 = v93;
  v66 = (*(v93 + 80) + 48) & ~*(v93 + 80);
  v67 = (v88 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = v53;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 2) = v61;
  *(v69 + 3) = v62;
  v70 = v91;
  *(v69 + 4) = v94;
  *(v69 + 5) = v70;
  (*(v65 + 32))(&v69[v66], v63, v64);
  v71 = &v69[v67];
  v72 = v82;
  *v71 = v90;
  v71[1] = v72;
  v73 = &v69[v68];
  v74 = v95;
  *v73 = v81;
  v73[1] = v74;
  v75 = &v69[(v68 + 23) & 0xFFFFFFFFFFFFFFF8];
  v76 = v80;
  *v75 = sub_1000D8044;
  v75[1] = v76;

  v77 = v61;

  sub_10003A550(sub_1000D8198, v69);

  v85(v96, v64);

  sub_10000839C(v99);
}

uint64_t sub_1000D7FAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000D7FE4()
{

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000D807C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000D8198(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000D36F0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000D8278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D82C0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000D8318()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000D8360()
{

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1000D8400()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000D8438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D8450(uint64_t a1)
{
  v2 = type metadata accessor for CustodianshipInfoRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D84AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D8538()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v7 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v5(v3 + v1[7], v4);

  sub_100012324(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1000D86C8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v13 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v7;
  v8 = *(v7 + 8);
  v9 = *(v1 + v6);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EF88;

  return sub_1000D49A4(a1, v15, v14, v1 + v4, v13, v12, v8, v9);
}

uint64_t sub_1000D8860()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000D8970(uint64_t a1)
{
  type metadata accessor for UUID();
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000082A8;

  return sub_1000D68A8(a1, v11, v10, v9, v8, v7, v3, v4);
}

uint64_t sub_1000D8B00()
{
  v1 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000D8B94(uint64_t a1)
{
  sub_100005814(&unk_1003D9260, &unk_10033ECE0);

  return sub_1000D7428(a1);
}

uint64_t sub_1000D8C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v68 = a2;
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v6 - 8);
  v89 = &v68 - v7;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v68 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v72 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v82 = v19;
  __chkstk_darwin(v16);
  v21 = &v68 - v20;
  v75 = OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted;
  if (*(a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted))
  {
    v22 = &kAAAnalyticsEventCustodianSetupProcessInvitationAcceptanceResponse;
  }

  else
  {
    v22 = &kAAAnalyticsEventCustodianSetupProcessInvitationDeclineResponse;
  }

  v83 = *v22;
  v79 = *(a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow);
  v76 = (a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow);
  v78 = *(a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow + 8);
  UUID.init()();
  v77 = UUID.uuidString.getter();
  v80 = v23;
  v81 = v21;
  v24 = v12;
  v86 = *(v13 + 8);
  v87 = v13 + 8;
  v86(v21, v12);
  v25 = *(v9 + 16);
  v85 = v4;
  v25(v11, v4 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__accountStore, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v26 = [*(*sub_1000080F8(v90 v90[3]) + 16)];
  if (v26 && (v27 = v26, v28 = [v26 aa_altDSID], v27, v28))
  {
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v29;
  }

  else
  {
    v74 = 0;
    v73 = 0;
  }

  v30 = v12;
  v31 = v84;
  sub_10000839C(v90);
  v84 = v13;
  v32 = *(v13 + 16);
  v32(v18, a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v24);
  v33 = v72;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100008D04(v34, qword_1003FAA88);
  v88 = v18;
  v71 = v32;
  v32(v33, v18, v30);
  swift_retain_n();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  v37 = os_log_type_enabled(v35, v36);
  v70 = v30;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v38 = 136315650;
    sub_1000DAD7C();
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v30;
    v42 = v41;
    v86(v33, v40);
    v43 = sub_10021145C(v39, v42, v90);

    *(v38 + 4) = v43;
    *(v38 + 12) = 1024;
    v44 = v75;
    LODWORD(v43) = *(a1 + v75);

    *(v38 + 14) = v43;

    *(v38 + 18) = 2080;
    *(v38 + 20) = sub_10021145C(v68, v31, v90);
    _os_log_impl(&_mh_execute_header, v35, v36, "Custodian invitation %s was accepted %{BOOL}d by %s", v38, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v86(v33, v30);
    v44 = v75;
  }

  v69 = a1;
  if (*(a1 + v44))
  {
    v45 = 2;
  }

  else
  {
    v45 = 4;
  }

  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v75 = swift_allocBox();
  v48 = v47;
  v49 = v88;
  v50 = v70;
  v51 = v71;
  v71(v47, v88, v70);
  *&v48[updated[5]] = v45;
  v48[updated[6]] = 1;
  v48[updated[7]] = 0;
  v52 = &v48[updated[8]];
  *&v48[updated[9]] = 1;
  v53 = &v48[updated[10]];
  v54 = v76;
  v55 = v77;
  v56 = v80;
  *v52 = v77;
  v52[1] = v56;
  v57 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  *v53 = v57;
  v53[8] = v54;
  v58 = type metadata accessor for TaskPriority();
  (*(*(v58 - 8) + 56))(v89, 1, 1, v58);
  v59 = v81;
  v51(v81, v49, v50);
  v60 = v84;
  v61 = (*(v84 + 80) + 112) & ~*(v84 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v63 = v83;
  *(v62 + 32) = v85;
  *(v62 + 40) = v63;
  *(v62 + 48) = v79;
  *(v62 + 56) = v78;
  v64 = v73;
  *(v62 + 64) = v74;
  *(v62 + 72) = v64;
  *(v62 + 80) = v55;
  *(v62 + 88) = v56;
  v65 = v69;
  *(v62 + 96) = v75;
  *(v62 + 104) = v65;
  (*(v60 + 32))(v62 + v61, v59, v50);

  v66 = v63;

  sub_10001359C(0, 0, v89, &unk_100340A10, v62);

  v86(v88, v50);
}

uint64_t sub_1000D93C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 232) = a7;
  *(v8 + 72) = a6;
  *(v8 + 80) = a8;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  type metadata accessor for CustodianStatusUpdateRequest(0);
  *(v8 + 152) = swift_projectBox();

  return _swift_task_switch(sub_1000D94C8, 0, 0);
}

uint64_t sub_1000D94C8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 160) = *(v0 + 40);
  if (v4)
  {
    v5 = *(v0 + 64);

    v6 = String._bridgeToObjectiveC()();

    v7 = *(v0 + 64);
  }

  else
  {
    v7 = *(v0 + 64);

    v6 = 0;
  }

  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 analyticsEventWithName:v7 altDSID:v6 flowID:v9];
  *(v0 + 168) = v10;

  if (v10)
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 72);
    v13 = v10;
    sub_100245E08(v12, v11 & 1);
  }

  sub_100257274(*(v0 + 64));
  v14 = *(v0 + 152);
  v15 = *(v0 + 56);
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_1000D9838;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000010, 0x800000010032E290, sub_1000DADD4, v16, &type metadata for () + 8);
}

uint64_t sub_1000D9838()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000D9BC0;
  }

  else
  {

    v2 = sub_1000D9954;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D9954()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    [*(v0 + 168) updateTaskResultWithError:0];
    swift_getObjectType();
    v2 = v1;
    sub_100246FA8(v1);
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = *(v0 + 232);
  swift_unknownObjectRelease();
  if ((*(v3 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted) & 1) != 0 || (v5 & 1) != 0 || v4 != 13)
  {

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v6 = sub_1000C0C98(*(*(v0 + 112) + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason));
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 200) = sub_100008D04(v7, qword_1003FAA88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "Owner received tear-down from custodian, reason: %ld", v10, 0xCu);
    }

    v11 = *(v0 + 56);

    *(v0 + 208) = *(v11 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler_metadataController);

    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_1000D9D08;
    v13 = *(v0 + 120);

    return sub_100014544(v6, 0, v13);
  }
}

uint64_t sub_1000D9BC0()
{

  v1 = v0[21];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  if (v1)
  {
    v2 = v0[21];
    v3 = v2;
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    [v3 updateTaskResultWithError:v4];

    swift_getObjectType();
    v5 = v3;
    sub_100246FA8(v2);
  }

  else
  {
    swift_errorRetain();
  }

  v6 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D9D08()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D9E4C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000D9E4C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Problem handling tear-down from custodian: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000D9FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v35 = a1;
  v3 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v4;
  v5 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v34 = *(updated - 8);
  v10 = *(v34 + 64);
  v11 = __chkstk_darwin(updated - 8);
  v12 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  (*(v16 + 16))(&v31 - v17, v32 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__statusUpdater, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v18, v15);
  v19 = sub_1000080F8(v37, v37[3]);
  v20 = v33;
  swift_beginAccess();
  sub_1000DADDC(v20, v14);
  (*(v6 + 16))(v8, v35, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v8, v5);
  v23 = *v19;
  v24 = type metadata accessor for TaskPriority();
  v25 = v36;
  (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
  sub_1000DADDC(v14, v12);
  v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1000DB06C(v12, v28 + v26);
  *(v28 + v27) = v23;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_1000DAED4;
  v29[1] = v22;

  sub_1000BCD5C(0, 0, v25, &unk_10033F360, v28);

  sub_1000DB214(v14);
  return sub_10000839C(v37);
}