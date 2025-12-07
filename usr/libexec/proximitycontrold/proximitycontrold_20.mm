unint64_t sub_1001D50A4()
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

uint64_t sub_1001D5184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001D567C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D51AC(uint64_t a1)
{
  v2 = sub_1001D52F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D51E8(uint64_t a1)
{
  v2 = sub_1001D52F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D5270(uint64_t a1)
{
  *(a1 + 8) = sub_1001D551C(&qword_10034BAC0, type metadata accessor for ClassicCardViewServiceContext, &unk_10028A808);
  result = sub_1001D551C(&qword_10034BAC8, type metadata accessor for ClassicCardViewServiceContext, &unk_10028A7E0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001D52F4()
{
  result = qword_10034BAD8;
  if (!qword_10034BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BAD8);
  }

  return result;
}

unint64_t sub_1001D5348()
{
  result = qword_10034BAE8;
  if (!qword_10034BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BAE8);
  }

  return result;
}

uint64_t sub_1001D539C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D5404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicCardViewServiceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D5468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001D54C8()
{
  result = qword_10034BB08;
  if (!qword_10034BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB08);
  }

  return result;
}

uint64_t sub_1001D551C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001D5578()
{
  result = qword_10034BB18;
  if (!qword_10034BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB18);
  }

  return result;
}

unint64_t sub_1001D55D0()
{
  result = qword_10034BB20;
  if (!qword_10034BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB20);
  }

  return result;
}

unint64_t sub_1001D5628()
{
  result = qword_10034BB28;
  if (!qword_10034BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB28);
  }

  return result;
}

uint64_t sub_1001D567C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x80000001002A4850 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C616974696E69 && a2 == 0xEF65646F4D647261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002A4870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001002A4890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_1001D5894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001D58AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 56))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D5900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 7;
    }
  }

  return result;
}

double sub_1001D5968(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001D59A8()
{
  v1 = *(v0 + 16);
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return 0x636F6C6E55746F6ELL;
      }

      if (v1 == 7)
      {
        return 0x7373657270707573;
      }

      goto LABEL_18;
    }

    if (v1 == 4)
    {
      return 0x6C6F736552746F6ELL;
    }

    else
    {
      return 0x6F70707553746F6ELL;
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        return 0x6C69617641746F6ELL;
      }

      if (v1 == 1)
      {
        return 0x6C6F726E45746F6ELL;
      }

LABEL_18:
      v3._countAndFlagsBits = 0x28726F727265;
      v3._object = 0xE600000000000000;
      String.append(_:)(v3);
      _print_unlocked<A, B>(_:_:)();
      v4._countAndFlagsBits = 41;
      v4._object = 0xE100000000000000;
      String.append(_:)(v4);
      return 0;
    }

    if (v1 == 2)
    {
      return 0x6572696150746F6ELL;
    }

    else
    {
      return 0x676F636552746F6ELL;
    }
  }
}

uint64_t sub_1001D5BA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F727265;
    v6 = 0x6C6F726E45746F6ELL;
    if (a1 != 2)
    {
      v6 = 0x6572696150746F6ELL;
    }

    if (a1)
    {
      v5 = 0x6C69617641746F6ELL;
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
    v1 = 0x6F70707553746F6ELL;
    v2 = 0x636F6C6E55746F6ELL;
    if (a1 != 7)
    {
      v2 = 0x7373657270707573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676F636552746F6ELL;
    if (a1 != 4)
    {
      v3 = 0x6C6F736552746F6ELL;
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

uint64_t sub_1001D5CF0(void *a1)
{
  v2 = sub_100035D04(&qword_10034BBD0, &qword_10028AB08);
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v38 - v3;
  v4 = sub_100035D04(&qword_10034BBD8, &qword_10028AB10);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = &v38 - v5;
  v6 = sub_100035D04(&qword_10034BBE0, &qword_10028AB18);
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = &v38 - v7;
  v8 = sub_100035D04(&qword_10034BBE8, &qword_10028AB20);
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v38 - v9;
  v48 = sub_100035D04(&qword_10034BBF0, &qword_10028AB28);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v38 - v10;
  v45 = sub_100035D04(&qword_10034BBF8, &qword_10028AB30);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v38 - v11;
  v42 = sub_100035D04(&qword_10034BC00, &qword_10028AB38);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v38 - v12;
  v14 = sub_100035D04(&qword_10034BC08, &qword_10028AB40);
  v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_100035D04(&qword_10034BC10, &qword_10028AB48);
  v41 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = sub_100035D04(&qword_10034BC18, &qword_10028AB50);
  v21 = *(v20 - 8);
  v62 = v20;
  v63 = v21;
  __chkstk_darwin(v20);
  v23 = &v38 - v22;
  sub_10000EBC0(a1, a1[3]);
  sub_1001D7EEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v61;
  v25 = *(v61 + 16);
  if (v25 > 3)
  {
    if (v25 > 5)
    {
      if (v25 == 6)
      {
        LOBYTE(v64) = 7;
        sub_1001D7F94();
        v30 = v55;
        v26 = v62;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v56;
        v31 = v57;
      }

      else
      {
        if (v25 != 7)
        {
          goto LABEL_21;
        }

        LOBYTE(v64) = 8;
        sub_1001D7F40();
        v30 = v58;
        v26 = v62;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v59;
        v31 = v60;
      }
    }

    else if (v25 == 4)
    {
      LOBYTE(v64) = 5;
      sub_1001D803C();
      v30 = v49;
      v26 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v50;
      v31 = v51;
    }

    else
    {
      LOBYTE(v64) = 6;
      sub_1001D7FE8();
      v30 = v52;
      v26 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v53;
      v31 = v54;
    }

    v27 = *(v32 + 8);
    v28 = v30;
    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v64) = 3;
      sub_1001D80E4();
      v36 = v43;
      v26 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = *(v44 + 8);
      v28 = v36;
      v29 = &v69;
    }

    else
    {
      LOBYTE(v64) = 4;
      sub_1001D8090();
      v33 = v46;
      v26 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = *(v47 + 8);
      v28 = v33;
      v29 = &v70;
    }

    goto LABEL_17;
  }

  if (!v25)
  {
    LOBYTE(v64) = 1;
    sub_1001D818C();
    v34 = v62;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v39 + 8))(v16, v14);
    return (*(v63 + 8))(v23, v34);
  }

  if (v25 == 1)
  {
    LOBYTE(v64) = 2;
    sub_1001D8138();
    v26 = v62;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = *(v40 + 8);
    v28 = v13;
    v29 = &v68;
LABEL_17:
    v31 = *(v29 - 32);
LABEL_20:
    v27(v28, v31);
    return (*(v63 + 8))(v23, v26);
  }

LABEL_21:
  LOBYTE(v64) = 0;
  sub_1001D81E0();
  v37 = v62;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v64 = *v24;
  v65 = v25;
  v66 = *(v24 + 24);
  v67 = *(v24 + 40);
  sub_10010B950();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v41 + 8))(v19, v17);
  return (*(v63 + 8))(v23, v37);
}

uint64_t sub_1001D665C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001D6DC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D6684(uint64_t a1)
{
  v2 = sub_1001D7EEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D66C0(uint64_t a1)
{
  v2 = sub_1001D7EEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D66FC(uint64_t a1)
{
  v2 = sub_1001D81E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6738(uint64_t a1)
{
  v2 = sub_1001D81E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6774(uint64_t a1)
{
  v2 = sub_1001D818C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D67B0(uint64_t a1)
{
  v2 = sub_1001D818C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D67EC(uint64_t a1)
{
  v2 = sub_1001D8138();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6828(uint64_t a1)
{
  v2 = sub_1001D8138();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6864(uint64_t a1)
{
  v2 = sub_1001D80E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D68A0(uint64_t a1)
{
  v2 = sub_1001D80E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D68DC(uint64_t a1)
{
  v2 = sub_1001D8090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6918(uint64_t a1)
{
  v2 = sub_1001D8090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6954(uint64_t a1)
{
  v2 = sub_1001D803C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6990(uint64_t a1)
{
  v2 = sub_1001D803C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D69CC(uint64_t a1)
{
  v2 = sub_1001D7FE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6A08(uint64_t a1)
{
  v2 = sub_1001D7FE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6A44(uint64_t a1)
{
  v2 = sub_1001D7F94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6A80(uint64_t a1)
{
  v2 = sub_1001D7F94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6ABC(uint64_t a1)
{
  v2 = sub_1001D7F40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6AF8(uint64_t a1)
{
  v2 = sub_1001D7F40();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001D6B34@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001D70CC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

BOOL sub_1001D6BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1001D6BFC(v5, v7);
}

BOOL sub_1001D6BFC(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        if (a2[2] != 4)
        {
          return 0;
        }
      }

      else if (a2[2] != 5)
      {
        return 0;
      }

      return 1;
    }

    if (v6 == 6)
    {
      return a2[2] == 6;
    }

    if (v6 == 7)
    {
      return a2[2] == 7;
    }

LABEL_26:
    v12 = a2[2];
    if (v12 < 8 || v5 != *a2)
    {
      return 0;
    }

    v13 = a2[3];
    v14 = a2[4];
    v16 = a2[5];
    v15 = a2[6];
    if ((v4 != a2[1] || v6 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if ((v7 != v13 || v9 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v10)
    {
      return v15 && (v8 == v16 && v10 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v15;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (a2[2] != 2)
      {
        return 0;
      }
    }

    else if (a2[2] != 3)
    {
      return 0;
    }

    return 1;
  }

  if (!v6)
  {
    return !a2[2];
  }

  if (v6 != 1)
  {
    goto LABEL_26;
  }

  return a2[2] == 1;
}

uint64_t sub_1001D6DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69617641746F6ELL && a2 == 0xEC000000656C6261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F726E45746F6ELL && a2 == 0xEB0000000064656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572696150746F6ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F636552746F6ELL && a2 == 0xED000064657A696ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F736552746F6ELL && a2 == 0xEB00000000646576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636F6C6E55746F6ELL && a2 == 0xEB0000000064656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7373657270707573 && a2 == 0xEA00000000006465)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1001D70CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v73 = sub_100035D04(&qword_10034BB30, &qword_10028AAB0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = &v54 - v3;
  v71 = sub_100035D04(&qword_10034BB38, &qword_10028AAB8);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v77 = &v54 - v4;
  v69 = sub_100035D04(&qword_10034BB40, &qword_10028AAC0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v81 = &v54 - v5;
  v66 = sub_100035D04(&qword_10034BB48, &qword_10028AAC8);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v80 = &v54 - v6;
  v79 = sub_100035D04(&qword_10034BB50, &qword_10028AAD0);
  v65 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v54 - v7;
  v64 = sub_100035D04(&qword_10034BB58, &qword_10028AAD8);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v75 = &v54 - v8;
  v62 = sub_100035D04(&qword_10034BB60, &qword_10028AAE0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v74 = &v54 - v9;
  v60 = sub_100035D04(&qword_10034BB68, &qword_10028AAE8);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v11 = &v54 - v10;
  v12 = sub_100035D04(&qword_10034BB70, &qword_10028AAF0);
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100035D04(&qword_10034BB78, &unk_10028AAF8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - v17;
  v19 = a1[3];
  v83 = a1;
  sub_10000EBC0(a1, v19);
  sub_1001D7EEC();
  v20 = v95;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v21 = v20;
  if (v20)
  {
    return sub_10000903C(v83);
  }

  v56 = v14;
  v57 = v11;
  v55 = v12;
  v22 = v78;
  v23 = v79;
  v25 = v80;
  v24 = v81;
  v95 = v16;
  v26 = v82;
  v27 = KeyedDecodingContainer.allKeys.getter();
  v28 = (2 * *(v27 + 16)) | 1;
  v91 = v27;
  v92 = v27 + 32;
  v93 = 0;
  v94 = v28;
  v29 = sub_10021801C();
  if (v29 == 9 || v93 != v94 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v40 = &type metadata for HandoffNotPermittedReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v95 + 8))(v18, v15);
    swift_unknownObjectRelease();
    return sub_10000903C(v83);
  }

  if (v29 <= 3u)
  {
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        LOBYTE(v84) = 2;
        sub_1001D8138();
        v44 = v74;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v45 = v95;
        v58 = 0;
        (*(v61 + 8))(v44, v62);
        (*(v45 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 1;
      }

      else
      {
        LOBYTE(v84) = 3;
        sub_1001D80E4();
        v50 = v75;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v95;
        v58 = 0;
        (*(v63 + 8))(v50, v64);
        (*(v51 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 2;
      }
    }

    else if (v29)
    {
      LOBYTE(v84) = 1;
      sub_1001D818C();
      v49 = v57;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = 0;
      (*(v59 + 8))(v49, v60);
      (*(v95 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v37 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      LOBYTE(v84) = 0;
      sub_1001D81E0();
      v42 = v56;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10010B758();
      v43 = v55;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v58 + 8))(v42, v43);
      (*(v95 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v58 = 0;
      v32 = v84;
      v33 = v85;
      v37 = v86;
      v34 = v87;
      v21 = v88;
      v35 = v89;
      v36 = v90;
    }
  }

  else if (v29 <= 5u)
  {
    if (v29 == 4)
    {
      LOBYTE(v84) = 4;
      sub_1001D8090();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v46 = v95;
      v58 = 0;
      (*(v65 + 8))(v22, v23);
      (*(v46 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 3;
    }

    else
    {
      LOBYTE(v84) = 5;
      sub_1001D803C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v95;
      v58 = 0;
      (*(v67 + 8))(v25, v66);
      (*(v53 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 4;
    }
  }

  else if (v29 == 6)
  {
    LOBYTE(v84) = 6;
    sub_1001D7FE8();
    v47 = v24;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v95;
    v58 = 0;
    (*(v68 + 8))(v47, v69);
    (*(v48 + 8))(v18, v15);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 5;
  }

  else
  {
    v30 = v95;
    if (v29 == 7)
    {
      LOBYTE(v84) = 7;
      sub_1001D7F94();
      v31 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = 0;
      (*(v70 + 8))(v31, v71);
      (*(v30 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 6;
    }

    else
    {
      LOBYTE(v84) = 8;
      sub_1001D7F40();
      v52 = v76;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = 0;
      (*(v72 + 8))(v52, v73);
      (*(v30 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 7;
    }
  }

  result = sub_10000903C(v83);
  *v26 = v32;
  v26[1] = v33;
  v26[2] = v37;
  v26[3] = v34;
  v26[4] = v21;
  v26[5] = v35;
  v26[6] = v36;
  return result;
}

unint64_t sub_1001D7EEC()
{
  result = qword_10034BB80;
  if (!qword_10034BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB80);
  }

  return result;
}

unint64_t sub_1001D7F40()
{
  result = qword_10034BB88;
  if (!qword_10034BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB88);
  }

  return result;
}

unint64_t sub_1001D7F94()
{
  result = qword_10034BB90;
  if (!qword_10034BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB90);
  }

  return result;
}

unint64_t sub_1001D7FE8()
{
  result = qword_10034BB98;
  if (!qword_10034BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB98);
  }

  return result;
}

unint64_t sub_1001D803C()
{
  result = qword_10034BBA0;
  if (!qword_10034BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBA0);
  }

  return result;
}

unint64_t sub_1001D8090()
{
  result = qword_10034BBA8;
  if (!qword_10034BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBA8);
  }

  return result;
}

unint64_t sub_1001D80E4()
{
  result = qword_10034BBB0;
  if (!qword_10034BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBB0);
  }

  return result;
}

unint64_t sub_1001D8138()
{
  result = qword_10034BBB8;
  if (!qword_10034BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBB8);
  }

  return result;
}

unint64_t sub_1001D818C()
{
  result = qword_10034BBC0;
  if (!qword_10034BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBC0);
  }

  return result;
}

unint64_t sub_1001D81E0()
{
  result = qword_10034BBC8;
  if (!qword_10034BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBC8);
  }

  return result;
}

unint64_t sub_1001D82D8()
{
  result = qword_10034BC20;
  if (!qword_10034BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC20);
  }

  return result;
}

unint64_t sub_1001D8330()
{
  result = qword_10034BC28;
  if (!qword_10034BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC28);
  }

  return result;
}

unint64_t sub_1001D8388()
{
  result = qword_10034BC30;
  if (!qword_10034BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC30);
  }

  return result;
}

unint64_t sub_1001D83E0()
{
  result = qword_10034BC38;
  if (!qword_10034BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC38);
  }

  return result;
}

unint64_t sub_1001D8438()
{
  result = qword_10034BC40;
  if (!qword_10034BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC40);
  }

  return result;
}

unint64_t sub_1001D8490()
{
  result = qword_10034BC48;
  if (!qword_10034BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC48);
  }

  return result;
}

unint64_t sub_1001D84E8()
{
  result = qword_10034BC50;
  if (!qword_10034BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC50);
  }

  return result;
}

unint64_t sub_1001D8540()
{
  result = qword_10034BC58;
  if (!qword_10034BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC58);
  }

  return result;
}

unint64_t sub_1001D8598()
{
  result = qword_10034BC60;
  if (!qword_10034BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC60);
  }

  return result;
}

unint64_t sub_1001D85F0()
{
  result = qword_10034BC68;
  if (!qword_10034BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC68);
  }

  return result;
}

unint64_t sub_1001D8648()
{
  result = qword_10034BC70;
  if (!qword_10034BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC70);
  }

  return result;
}

unint64_t sub_1001D86A0()
{
  result = qword_10034BC78;
  if (!qword_10034BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC78);
  }

  return result;
}

unint64_t sub_1001D86F8()
{
  result = qword_10034BC80;
  if (!qword_10034BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC80);
  }

  return result;
}

unint64_t sub_1001D8750()
{
  result = qword_10034BC88;
  if (!qword_10034BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC88);
  }

  return result;
}

unint64_t sub_1001D87A8()
{
  result = qword_10034BC90;
  if (!qword_10034BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC90);
  }

  return result;
}

unint64_t sub_1001D8800()
{
  result = qword_10034BC98;
  if (!qword_10034BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC98);
  }

  return result;
}

unint64_t sub_1001D8858()
{
  result = qword_10034BCA0;
  if (!qword_10034BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCA0);
  }

  return result;
}

unint64_t sub_1001D88B0()
{
  result = qword_10034BCA8;
  if (!qword_10034BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCA8);
  }

  return result;
}

unint64_t sub_1001D8908()
{
  result = qword_10034BCB0;
  if (!qword_10034BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCB0);
  }

  return result;
}

unint64_t sub_1001D8960()
{
  result = qword_10034BCB8;
  if (!qword_10034BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCB8);
  }

  return result;
}

unint64_t sub_1001D89B8()
{
  result = qword_10034BCC0;
  if (!qword_10034BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCC0);
  }

  return result;
}

unint64_t sub_1001D8A10()
{
  result = qword_10034BCC8;
  if (!qword_10034BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCC8);
  }

  return result;
}

uint64_t sub_1001D8A64()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034BCD0);
  sub_100003078(v0, qword_10034BCD0);
  return Logger.init(subsystem:category:)();
}

void sub_1001D8AE4()
{
  v1 = v0;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BCD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_published) & 1) == 0)
  {
    sub_1001DAFAC(v13);
    sub_10011727C();
    sub_1001DC378(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11, v12);
  }
}

double sub_1001D8D14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034BCD0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v7;
    v15 = v3;
    v16 = v1;
    v17 = v6;
    v18 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A49D0, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000903C(v18);
    v6 = v17;
    v1 = v16;
    v3 = v15;
    v7 = v21[0];
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1001DC430;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100311540;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21[1] = _swiftEmptyArrayStorage;
  sub_1001DC434(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

void sub_1001D90FC()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10034BCD0);

  v29 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v16))
  {
    v26 = v8;
    v27 = v6;
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v17 = 136315394;
    *(v17 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A49B0, &v30);
    *(v17 + 12) = 2080;
    v18 = v2;
    v19 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v1 + v19, v14, &qword_100342A10, &qword_100278A10);
    sub_100009848(v14, v12, &qword_100342A10, &qword_100278A10);
    if ((*(v3 + 48))(v12, 1, v18) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v23 = v26;
      sub_1001DC3CC(v12, v26);
      sub_10007E658(v23, v27);
      v21 = String.init<A>(describing:)();
      v20 = v24;
      sub_10007E6BC(v23);
    }

    sub_1000097E8(v14, &qword_100342A10, &qword_100278A10);
    v25 = sub_100017494(v21, v20, &v30);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v29, v16, "%s: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v29;
  }
}

uint64_t sub_1001D94C4()
{
  v1 = sub_100035D04(&qword_100345620, &unk_10027C940);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ExperienceEvent(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed);
  swift_beginAccess();
  v12 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) || !v11[1])
  {
    v13 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v0 + v13, v6, &qword_100342A10, &qword_100278A10);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000097E8(v6, &qword_100342A10, &qword_100278A10);
      v14 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded;
      swift_beginAccess();
      sub_100009848(v0 + v14, v3, &qword_100345620, &unk_10027C940);
      v15 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      v16 = (*(*(v15 - 8) + 48))(v3, 1, v15);
      sub_1000097E8(v3, &qword_100345620, &unk_10027C940);
      if (v16 == 1)
      {
        return 0;
      }

      else
      {
        return 0x206E6F6973736553;
      }
    }

    else
    {
      sub_1001DC3CC(v6, v10);
      v17 = sub_100243F84();
      sub_10007E6BC(v10);
    }
  }

  else
  {
    v17 = *v11;
  }

  return v17;
}

uint64_t sub_1001D9800()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
  swift_beginAccess();
  v2 = sub_100035D04(&unk_100345508, &qword_10027C860);
  if ((*(*(v2 - 8) + 48))(v0 + v1, 1, v2))
  {
    v3 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v4 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    if ((*(*(v4 - 8) + 48))(v0 + v3, 1, v4) || !*(v0 + v3))
    {
      return 0;
    }
  }

  swift_errorRetain();
  swift_getErrorValue();
  v6 = sub_100140158(v8, v9);
  [v6 code];

  v7 = dispatch thunk of CustomStringConvertible.description.getter();

  return v7;
}

uint64_t sub_1001D9988()
{
  v1 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v3 = &v36 - v2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v36 - v8;
  v9 = type metadata accessor for Date();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded;
  swift_beginAccess();
  if ((*(v16 + 48))(v0 + v19, 1, v15))
  {
    return 0;
  }

  v36 = v12;
  v21 = v7;
  sub_100009848(v0 + v19, v18, &qword_1003454F8, &unk_10028B580);
  v22 = v41;
  v23 = *(v40 + 32);
  v23(v14, v18, v41);
  v24 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested;
  swift_beginAccess();
  v25 = 1;
  v26 = (*(v38 + 48))(v0 + v24, 1, v39);
  v27 = v37;
  if (!v26)
  {
    sub_100009848(v0 + v24, v3, &qword_10034BD38, &qword_10028B418);
    v23(v27, v3, v22);
    v25 = 0;
  }

  v28 = v40;
  (*(v40 + 56))(v27, v25, 1, v22);
  sub_100009848(v27, v21, &qword_10033C280, &qword_100272A80);
  v29 = (*(v28 + 48))(v21, 1, v22);
  v30 = v28;
  if (v29 == 1)
  {
    sub_1000097E8(v27, &qword_10033C280, &qword_100272A80);
    (*(v28 + 8))(v14, v41);
    sub_1000097E8(v21, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v31 = v36;
    v32 = v41;
    v23(v36, v21, v41);
    Date.timeIntervalSince(_:)();
    v34 = v33;
    v35 = *(v30 + 8);
    v35(v31, v32);
    sub_1000097E8(v27, &qword_10033C280, &qword_100272A80);
    v35(v14, v32);
    return v34;
  }
}

uint64_t sub_1001D9E24()
{
  v1 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v3 = &v36 - v2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v36 - v8;
  v9 = type metadata accessor for Date();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
  swift_beginAccess();
  if ((*(v16 + 48))(v0 + v19, 1, v15))
  {
    return 0;
  }

  v36 = v12;
  v21 = v7;
  sub_100009848(v0 + v19, v18, &qword_10034BD38, &qword_10028B418);
  v22 = v41;
  v23 = *(v40 + 32);
  v23(v14, v18, v41);
  v24 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded;
  swift_beginAccess();
  v25 = 1;
  v26 = (*(v38 + 48))(v0 + v24, 1, v39);
  v27 = v37;
  if (!v26)
  {
    sub_100009848(v0 + v24, v3, &qword_1003454F8, &unk_10028B580);
    v23(v27, v3, v22);
    v25 = 0;
  }

  v28 = v40;
  (*(v40 + 56))(v27, v25, 1, v22);
  sub_100009848(v27, v21, &qword_10033C280, &qword_100272A80);
  v29 = (*(v28 + 48))(v21, 1, v22);
  v30 = v28;
  if (v29 == 1)
  {
    sub_1000097E8(v27, &qword_10033C280, &qword_100272A80);
    (*(v28 + 8))(v14, v41);
    sub_1000097E8(v21, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v31 = v36;
    v32 = v41;
    v23(v36, v21, v41);
    Date.timeIntervalSince(_:)();
    v34 = v33;
    v35 = *(v30 + 8);
    v35(v31, v32);
    sub_1000097E8(v27, &qword_10033C280, &qword_100272A80);
    v35(v14, v32);
    return v34;
  }
}

uint64_t sub_1001DA2C0()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = __chkstk_darwin(v1 - 8);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v43 = &v37 - v4;
  v44 = type metadata accessor for Date();
  v42 = *(v44 - 8);
  v5 = __chkstk_darwin(v44);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated;
  swift_beginAccess();
  v18 = *(v11 + 48);
  if (v18(v0 + v17, 1, v10))
  {
    return 0;
  }

  v37 = v14;
  v39 = v7;
  sub_100009848(v0 + v17, v16, &qword_1003454F8, &unk_10028B580);
  v20 = v42;
  v21 = *(v42 + 32);
  v40 = v9;
  v22 = v44;
  v38 = v21;
  v21(v9, v16, v44);
  v23 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested;
  swift_beginAccess();
  v24 = 1;
  v25 = v18(v0 + v23, 1, v10);
  v26 = v43;
  if (!v25)
  {
    v27 = v0 + v23;
    v28 = v37;
    sub_100009848(v27, v37, &qword_1003454F8, &unk_10028B580);
    v38(v26, v28, v22);
    v24 = 0;
  }

  (*(v20 + 56))(v26, v24, 1, v22);
  v29 = v41;
  sub_100009848(v26, v41, &qword_10033C280, &qword_100272A80);
  v30 = (*(v20 + 48))(v29, 1, v22);
  v31 = v39;
  if (v30 == 1)
  {
    sub_1000097E8(v26, &qword_10033C280, &qword_100272A80);
    (*(v20 + 8))(v40, v22);
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v38(v39, v29, v22);
    v32 = v22;
    v33 = v40;
    Date.timeIntervalSince(_:)();
    v35 = v34;
    v36 = *(v20 + 8);
    v36(v31, v32);
    sub_1000097E8(v26, &qword_10033C280, &qword_100272A80);
    v36(v33, v32);
    return v35;
  }
}

uint64_t sub_1001DA728()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v3 = __chkstk_darwin(v2 - 8);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v38 - v5;
  v43 = type metadata accessor for Date();
  v45 = *(v43 - 8);
  v6 = __chkstk_darwin(v43);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected;
  v19 = *(v12 + 48);
  v44 = v1;
  if (v19(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected, 1, v11))
  {
    return 0;
  }

  v39 = v8;
  v21 = v44;
  sub_100009848(v44 + v18, v17, &qword_1003454F8, &unk_10028B580);
  v22 = *(v45 + 32);
  v40 = v10;
  v23 = v10;
  v24 = v22;
  v25 = v43;
  v22(v23, v17, v43);
  v26 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested;
  v27 = 1;
  v28 = v19(v21 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested, 1, v11);
  v29 = v41;
  if (!v28)
  {
    sub_100009848(v44 + v26, v15, &qword_1003454F8, &unk_10028B580);
    v24(v29, v15, v25);
    v27 = 0;
  }

  v30 = v45;
  (*(v45 + 56))(v29, v27, 1, v25);
  v31 = v42;
  sub_100009848(v29, v42, &qword_10033C280, &qword_100272A80);
  v32 = (*(v30 + 48))(v31, 1, v25);
  v33 = v39;
  if (v32 == 1)
  {
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    (*(v30 + 8))(v40, v25);
    sub_1000097E8(v31, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v24(v39, v31, v25);
    v34 = v40;
    Date.timeIntervalSince(_:)();
    v36 = v35;
    v37 = *(v30 + 8);
    v37(v33, v25);
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    v37(v34, v25);
    return v36;
  }
}

uint64_t sub_1001DAB60()
{
  v1 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Date();
  v33 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v32 = v0;
  v16 = v0 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
  swift_beginAccess();
  v17 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    return 0;
  }

  v29 = v13;
  v19 = v33;
  (*(v33 + 16))(v15, v16 + *(v17 + 28), v10);
  v20 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
  v21 = v32;
  swift_beginAccess();
  v22 = 1;
  if (!(*(v30 + 48))(v21 + v20, 1, v31))
  {
    sub_100009848(v21 + v20, v3, &qword_10034BD38, &qword_10028B418);
    (*(v19 + 32))(v9, v3, v10);
    v22 = 0;
  }

  (*(v19 + 56))(v9, v22, 1, v10);
  sub_100009848(v9, v7, &qword_10033C280, &qword_100272A80);
  v23 = (*(v19 + 48))(v7, 1, v10);
  v24 = v29;
  if (v23 == 1)
  {
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    (*(v19 + 8))(v15, v10);
    sub_1000097E8(v7, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v29, v7, v10);
    Date.timeIntervalSince(_:)();
    v26 = v25;
    v27 = *(v19 + 8);
    v27(v24, v10);
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    v27(v15, v10);
    return v26;
  }
}

void sub_1001DAFAC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  __chkstk_darwin(v5 - 8);
  v108 = &v94 - v6;
  v7 = sub_100035D04(&qword_100345618, &qword_10027C938);
  __chkstk_darwin(v7 - 8);
  v119 = &v94 - v8;
  v9 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v94 - v11;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10034BCD0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v127 = v12;
    v142[0] = v126;
    *v16 = 136315394;
    *(v16 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v142);
    *(v16 + 12) = 2080;
    v128[3] = v4;
    v128[0] = v2;

    v17 = sub_100057F14(v128);
    v18 = v10;
    v19 = v9;
    v21 = v20;
    sub_10000903C(v128);
    v22 = sub_100017494(v17, v21, v142);
    v9 = v19;
    v10 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: self=%s", v16, 0x16u);
    swift_arrayDestroy();
    v12 = v127;
  }

  v23 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
  swift_beginAccess();
  v24 = (*(v10 + 48))(&v2[v23], 1, v9);
  v25 = 0.0;
  if (!v24)
  {
    sub_100009848(&v2[v23], v12, &qword_10034BD38, &qword_10028B418);
    sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
    Date.timeIntervalSince(_:)();
    v25 = v26;
    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 8))(v12, v27);
  }

  v28 = sub_1001D9988();
  v30 = v29;
  v31 = sub_1001D9E24();
  LODWORD(v127) = v32;
  v33 = sub_1001DA2C0();
  LODWORD(v126) = v34;
  v120 = v30;
  if (v30)
  {
    v35 = _swiftEmptyArrayStorage;
    if (v127)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = sub_1000AFCBC(0, 1, 1, _swiftEmptyArrayStorage);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1000AFCBC((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    *&v35[8 * v37 + 32] = v28;
    if (v127)
    {
LABEL_9:
      if (v126)
      {
        goto LABEL_10;
      }

LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1000AFCBC(0, *(v35 + 2) + 1, 1, v35);
      }

      v41 = *(v35 + 2);
      v40 = *(v35 + 3);
      if (v41 >= v40 >> 1)
      {
        v35 = sub_1000AFCBC((v40 > 1), v41 + 1, 1, v35);
      }

      *(v35 + 2) = v41 + 1;
      *&v35[8 * v41 + 32] = v33;
      if (v41 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_1000AFCBC(0, *(v35 + 2) + 1, 1, v35);
  }

  v39 = *(v35 + 2);
  v38 = *(v35 + 3);
  if (v39 >= v38 >> 1)
  {
    v35 = sub_1000AFCBC((v38 > 1), v39 + 1, 1, v35);
  }

  *(v35 + 2) = v39 + 1;
  *&v35[8 * v39 + 32] = v31;
  if ((v126 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v35 + 2) != 3)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (v24)
  {
LABEL_26:

    v118 = 1;
    v42 = 0.0;
    goto LABEL_27;
  }

  v93 = *(v35 + 4) + 0.0 + *(v35 + 5) + *(v35 + 6);

  v118 = 0;
  v42 = v25 - v93;
LABEL_27:
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B688();
  v43 = sub_10014C668(1);
  v116 = 0;
  v117 = v43;

  sub_10014B688();
  v44 = sub_10014C668(28);
  v112 = 0;
  v115 = v44;

  v113 = *(v2 + 4);
  sub_10014B688();
  v45 = sub_10014C668(7);
  v123 = v31;
  v124 = v28;
  v122 = v33;
  LODWORD(v121) = v24;
  v109 = 0;
  v114 = v45;

  v46 = sub_1001D94C4();
  v110 = v47;
  v111 = v46;
  v48 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
  swift_beginAccess();
  v49 = v119;
  sub_100009848(&v2[v48], v119, &qword_100345618, &qword_10027C938);
  v50 = sub_100035D04(&unk_100345508, &qword_10027C860);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v125 = 1;
  v53 = v52;
  v105 = v51 + 48;
  v54 = v52(v49, 1, v50);
  sub_1000097E8(v49, &qword_100345618, &qword_10027C938);
  if (v54 == 1)
  {
    v55 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v56 = &v2[v55];
    v57 = v108;
    sub_100009848(v56, v108, &qword_10034BE70, &unk_10028B4C0);
    v58 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    v125 = (*(*(v58 - 8) + 48))(v57, 1, v58) != 1;
    sub_1000097E8(v57, &qword_10034BE70, &unk_10028B4C0);
  }

  v119 = sub_1001D9800();
  v108 = v59;
  if (v53(&v2[v48], 1, v50) && ((v60 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed, swift_beginAccess(), v61 = sub_100035D04(&qword_10034BD48, &unk_10028B420), (*(*(v61 - 8) + 48))(&v2[v60], 1, v61)) || !*&v2[v60]))
  {
    v106 = 0;
    v107 = 0;
  }

  else
  {
    swift_errorRetain();
    swift_getErrorValue();
    v62 = sub_100140158(v128[5], v128[6]);

    v63 = [v62 domain];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v65;
    v107 = v64;
  }

  if (v53(&v2[v48], 1, v50))
  {
    v66 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v67 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    v68 = &OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand;
    if ((*(*(v67 - 8) + 48))(&v2[v66], 1, v67) || !*&v2[v66])
    {
      v104 = 0;
      v105 = 0;
      goto LABEL_44;
    }

    swift_errorRetain();
  }

  else
  {
    swift_errorRetain();
    v68 = &OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand;
  }

  swift_getErrorValue();
  v69 = Error.localizedDescription.getter();
  v104 = v70;
  v105 = v69;

LABEL_44:
  v101 = v2[56];
  v71 = *(v2 + 6);
  v100 = *(v2 + 5);

  v103 = sub_1001DA728();
  v96 = v72;
  v102 = sub_1001DAB60();
  v95 = v73;
  v74 = &v2[v68[158]];
  v75 = &v74[*(sub_100035D04(&qword_10034BE78, &unk_10028B4D0) + 32)];
  v99 = *v75;
  v76 = v75[4];
  v77 = sub_100243F84();
  v97 = v78;
  v98 = v77;
  if (qword_100338F10 != -1)
  {
    swift_once();
  }

  v79 = v109 != 0;
  v80 = v112 != 0;
  v81 = v116 != 0;
  v82 = v121 != 0;
  v83 = *(qword_10038B0B0 + 80);
  v121 = sub_10005FFC0();
  v85 = v84;

  v138 = v79;
  v136 = v118;
  v133 = v82;
  v130 = v76;
  *a1 = v117;
  *(a1 + 16) = v115;
  *(a1 + 32) = v113;
  v141 = v81;
  v140 = v80;
  v139 = 0;
  v137 = v120 & 1;
  v135 = v127 & 1;
  v134 = v126 & 1;
  v132 = v96 & 1;
  v131 = v95 & 1;
  v129 = v85 & 1;
  *(a1 + 8) = v81;
  *(a1 + 24) = v80;
  *(a1 + 40) = 0;
  *(a1 + 48) = v114;
  *(a1 + 56) = v138;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v86 = v110;
  *(a1 + 80) = v111;
  *(a1 + 88) = v86;
  *(a1 + 96) = v125;
  v88 = v107;
  v87 = v108;
  *(a1 + 104) = v119;
  *(a1 + 112) = v87;
  v90 = v105;
  v89 = v106;
  *(a1 + 120) = v88;
  *(a1 + 128) = v89;
  v91 = v104;
  *(a1 + 136) = v90;
  *(a1 + 144) = v91;
  *(a1 + 152) = v101;
  *(a1 + 160) = v100;
  *(a1 + 168) = v71;
  *(a1 + 176) = v124;
  *(a1 + 184) = v137;
  *(a1 + 192) = v42;
  *(a1 + 200) = v136;
  *(a1 + 208) = v123;
  *(a1 + 216) = v135;
  *(a1 + 224) = v122;
  *(a1 + 232) = v134;
  *(a1 + 240) = v25;
  *(a1 + 248) = v133;
  *(a1 + 256) = v103;
  *(a1 + 264) = v132;
  *(a1 + 272) = v102;
  *(a1 + 280) = v131;
  *(a1 + 284) = v99;
  *(a1 + 288) = v130;
  v92 = v97;
  *(a1 + 296) = v98;
  *(a1 + 304) = v92;
  *(a1 + 312) = v121;
  *(a1 + 320) = v129;
}

uint64_t *sub_1001DBC40()
{
  v1 = v0;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BCD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10002689C(*(v1 + 16), *(v1 + 24));

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_presentEffect, &qword_10034BE78, &unk_10028B4D0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed, &qword_100345618, &qword_10027C938);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed, &qword_10034BE70, &unk_10028B4C0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed, &qword_10034BE88, &unk_10028B620);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger, &qword_100342A10, &qword_100278A10);
  return v1;
}

uint64_t sub_1001DBEB8()
{
  sub_1001DBC40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardPresentationRecord(uint64_t a1)
{
  result = qword_10034BD18;
  if (!qword_10034BD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001DBF64(uint64_t a1)
{
  sub_1001DC23C(319, &qword_10034BD28, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
    if (v2 <= 0x3F)
    {
      sub_10011CC54(319, &qword_100345500, &unk_100345508, &qword_10027C860);
      if (v3 <= 0x3F)
      {
        sub_10011CC54(319, &qword_10034BD30, &qword_10034BD38, &qword_10028B418);
        if (v4 <= 0x3F)
        {
          sub_10011CC54(319, &qword_10034BD40, &qword_10034BD48, &unk_10028B420);
          if (v5 <= 0x3F)
          {
            sub_10011CC54(319, &qword_10034BD50, &qword_10034BD58, &unk_1002960A0);
            if (v6 <= 0x3F)
            {
              sub_1001DC23C(319, &unk_10034BD60, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001DC23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ExperienceEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1001DC29C@<X0>(uint64_t *a3@<X8>)
{
  result = Identifiable<>.id.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1001DC2C8(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057F14(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_1001DC320(uint64_t a1)
{
  result = sub_1001DC434(&qword_10034BE68, type metadata accessor for CardPresentationRecord, &unk_10028B430);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001DC3CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExperienceEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DC434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DC47C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034BE90);
  sub_100003078(v0, qword_10034BE90);
  return Logger.init(subsystem:category:)();
}

void sub_1001DC4FC()
{
  v1 = v0;
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BE90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_published) & 1) == 0)
  {
    sub_1001DD9B8(v13);
    sub_1001176EC();
    sub_1001DE8F4(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11, v12);
  }
}

void sub_1001DC72C()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10034BE90);

  v29 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v16))
  {
    v26 = v8;
    v27 = v6;
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v17 = 136315394;
    *(v17 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A49B0, &v30);
    *(v17 + 12) = 2080;
    v18 = v2;
    v19 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v1 + v19, v14, &qword_100342A10, &qword_100278A10);
    sub_100009848(v14, v12, &qword_100342A10, &qword_100278A10);
    if ((*(v3 + 48))(v12, 1, v18) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v23 = v26;
      sub_1001DC3CC(v12, v26);
      sub_10007E658(v23, v27);
      v21 = String.init<A>(describing:)();
      v20 = v24;
      sub_10007E6BC(v23);
    }

    sub_1000097E8(v14, &qword_100342A10, &qword_100278A10);
    v25 = sub_100017494(v21, v20, &v30);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v29, v16, "%s: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v29;
  }
}

uint64_t sub_1001DCAF4()
{
  v1 = sub_100035D04(&qword_100345620, &unk_10027C940);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-v2];
  v4 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for ExperienceEvent(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed);
  swift_beginAccess();
  v12 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) || !v11[1])
  {
    v13 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v0 + v13, v6, &qword_100342A10, &qword_100278A10);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000097E8(v6, &qword_100342A10, &qword_100278A10);
      sub_100009848(v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_sessionEnded, v3, &qword_100345620, &unk_10027C940);
      v14 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      v15 = (*(*(v14 - 8) + 48))(v3, 1, v14);
      sub_1000097E8(v3, &qword_100345620, &unk_10027C940);
      if (v15 == 1)
      {
        return 0;
      }

      else
      {
        return 0x206E6F6973736553;
      }
    }

    else
    {
      sub_1001DC3CC(v6, v10);
      v16 = sub_100243F84();
      sub_10007E6BC(v10);
    }
  }

  else
  {
    v16 = *v11;
  }

  return v16;
}

uint64_t sub_1001DCE1C()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = __chkstk_darwin(v1 - 8);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v60 = &v53 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - v7;
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v62 = type metadata accessor for Date();
  v11 = *(v62 - 8);
  v12 = __chkstk_darwin(v62);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v59 = &v53 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v53 - v17;
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v21 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v58 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v53 - v25;
  v27 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
  swift_beginAccess();
  v63 = *(v22 + 48);
  if (!v63(v0 + v27, 1, v21))
  {
    v54 = v18;
    v56 = v8;
    sub_100009848(v0 + v27, v26, &qword_1003454F8, &unk_10028B580);
    v28 = v62;
    v55 = *(v11 + 32);
    v55(v20, v26, v62);
    v29 = v11;
    v30 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
    swift_beginAccess();
    v31 = 1;
    if (!v63(v0 + v30, 1, v21))
    {
      v32 = v58;
      sub_100009848(v0 + v30, v58, &qword_1003454F8, &unk_10028B580);
      v55(v10, v32, v28);
      v31 = 0;
    }

    (*(v29 + 56))(v10, v31, 1, v28);
    v33 = v56;
    sub_100009848(v10, v56, &qword_10033C280, &qword_100272A80);
    v11 = v29;
    if ((*(v29 + 48))(v33, 1, v28) != 1)
    {
      v46 = v54;
      v55(v54, v33, v28);
      Date.timeIntervalSince(_:)();
      v48 = v47;
      v49 = *(v11 + 8);
      v49(v46, v28);
      sub_1000097E8(v10, &qword_10033C280, &qword_100272A80);
      v50 = v20;
      goto LABEL_14;
    }

    sub_1000097E8(v10, &qword_10033C280, &qword_100272A80);
    (*(v29 + 8))(v20, v28);
    sub_1000097E8(v33, &qword_10033C280, &qword_100272A80);
  }

  v34 = v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
  swift_beginAccess();
  v35 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    return 0;
  }

  v37 = v34 + *(v35 + 28);
  v38 = v59;
  v28 = v62;
  (*(v11 + 16))(v59, v37, v62);
  v39 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
  swift_beginAccess();
  v40 = 1;
  v41 = v63(v0 + v39, 1, v21);
  v42 = v60;
  if (!v41)
  {
    v43 = v0 + v39;
    v44 = v58;
    sub_100009848(v43, v58, &qword_1003454F8, &unk_10028B580);
    (*(v11 + 32))(v42, v44, v28);
    v40 = 0;
  }

  (*(v11 + 56))(v42, v40, 1, v28);
  v45 = v61;
  sub_100009848(v42, v61, &qword_10033C280, &qword_100272A80);
  if ((*(v11 + 48))(v45, 1, v28) == 1)
  {
    sub_1000097E8(v42, &qword_10033C280, &qword_100272A80);
    (*(v11 + 8))(v38, v28);
    sub_1000097E8(v45, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  v51 = v57;
  (*(v11 + 32))(v57, v45, v28);
  Date.timeIntervalSince(_:)();
  v48 = v52;
  v49 = *(v11 + 8);
  v49(v51, v28);
  sub_1000097E8(v42, &qword_10033C280, &qword_100272A80);
  v50 = v38;
LABEL_14:
  v49(v50, v28);
  return v48;
}

uint64_t sub_1001DD56C()
{
  v1 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Date();
  v33 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v32 = v0;
  v16 = v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
  swift_beginAccess();
  v17 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    return 0;
  }

  v29 = v13;
  v19 = v33;
  (*(v33 + 16))(v15, v16 + *(v17 + 28), v10);
  v20 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
  v21 = v32;
  swift_beginAccess();
  v22 = 1;
  if (!(*(v30 + 48))(v21 + v20, 1, v31))
  {
    sub_100009848(v21 + v20, v3, &qword_1003454F8, &unk_10028B580);
    (*(v19 + 32))(v9, v3, v10);
    v22 = 0;
  }

  (*(v19 + 56))(v9, v22, 1, v10);
  sub_100009848(v9, v7, &qword_10033C280, &qword_100272A80);
  v23 = (*(v19 + 48))(v7, 1, v10);
  v24 = v29;
  if (v23 == 1)
  {
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    (*(v19 + 8))(v15, v10);
    sub_1000097E8(v7, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v29, v7, v10);
    Date.timeIntervalSince(_:)();
    v26 = v25;
    v27 = *(v19 + 8);
    v27(v24, v10);
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    v27(v15, v10);
    return v26;
  }
}

uint64_t sub_1001DD9B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v82[-v6];
  v8 = sub_100035D04(&qword_100345618, &qword_10027C938);
  __chkstk_darwin(v8 - 8);
  v10 = &v82[-v9];
  v11 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v12 = __chkstk_darwin(v11 - 8);
  v103 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v102 = &v82[-v15];
  __chkstk_darwin(v14);
  v17 = &v82[-v16];
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_10034BE90);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v100 = v20;
    v22 = v21;
    v101 = swift_slowAlloc();
    v107[0] = v101;
    *v22 = 136315394;
    *(v22 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v107);
    *(v22 + 12) = 2080;
    v104[3] = v4;
    v104[0] = v2;

    v23 = sub_100057F8C(v104);
    v24 = v17;
    v25 = v10;
    v26 = v7;
    v28 = v27;
    sub_10000903C(v104);
    v29 = sub_100017494(v23, v28, v107);
    v7 = v26;
    v10 = v25;
    v17 = v24;

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v100, "%s: self=%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v101 = sub_1001DD56C();
  v100 = v30;
  v31 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
  swift_beginAccess();
  sub_100009848(&v2[v31], v17, &qword_100345620, &unk_10027C940);
  v32 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 1;
  v97 = v32;
  v94 = v33 + 48;
  v95 = v34;
  v93 = (v34)(v17, 1);
  sub_1000097E8(v17, &qword_100345620, &unk_10027C940);
  v36 = sub_1001DCAF4();
  v98 = v37;
  v99 = v36;
  v38 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed;
  swift_beginAccess();
  sub_100009848(&v2[v38], v10, &qword_100345618, &qword_10027C938);
  v39 = sub_100035D04(&unk_100345508, &qword_10027C860);
  LODWORD(v38) = (*(*(v39 - 8) + 48))(v10, 1, v39);
  sub_1000097E8(v10, &qword_100345618, &qword_10027C938);
  if (v38 == 1)
  {
    v40 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
    swift_beginAccess();
    sub_100009848(&v2[v40], v7, &qword_10034BE70, &unk_10028B4C0);
    v41 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    v35 = (*(*(v41 - 8) + 48))(v7, 1, v41) != 1;
    sub_1000097E8(v7, &qword_10034BE70, &unk_10028B4C0);
  }

  v96 = v35;
  v42 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
  swift_beginAccess();
  v43 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  v44 = *(*(v43 - 8) + 48);
  if (v44(&v2[v42], 1, v43) || !*&v2[v42])
  {
    v91 = 0;
    v92 = 0;
  }

  else
  {
    swift_getErrorValue();
    v45 = v104[5];
    v92 = v104[4];
    v46 = v104[6];
    swift_errorRetain();
    v47 = sub_100140158(v45, v46);
    v48 = [v47 code];

    v106[0] = v48;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v50;
    v92 = v49;
  }

  if (v44(&v2[v42], 1, v43) || !*&v2[v42])
  {
    v89 = 0;
    v90 = 0;
  }

  else
  {
    swift_getErrorValue();
    v51 = v104[9];
    v90 = v104[8];
    v52 = v104[10];
    swift_errorRetain();
    v53 = sub_100140158(v51, v52);

    v54 = [v53 domain];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v56;
    v90 = v55;
  }

  if (v44(&v2[v42], 1, v43) || !*&v2[v42])
  {
    v87 = 0;
    v88 = 0;
  }

  else
  {
    swift_getErrorValue();
    swift_errorRetain();
    v57 = Error.localizedDescription.getter();
    v87 = v58;
    v88 = v57;
  }

  v85 = v93 != 1;
  v93 = v2[56];
  v86 = sub_1001DCE1C();
  v84 = v59;
  v60 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
  swift_beginAccess();
  v61 = &v2[v60];
  v62 = v102;
  sub_100009848(v61, v102, &qword_100345620, &unk_10027C940);
  v63 = v97;
  v64 = v95;
  v83 = (v95)(v62, 1, v97) != 1;
  sub_1000097E8(v62, &qword_100345620, &unk_10027C940);
  v65 = *(v2 + 6);
  v102 = *(v2 + 5);
  v66 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack;
  swift_beginAccess();
  v67 = v103;
  sub_100009848(&v2[v66], v103, &qword_100345620, &unk_10027C940);
  v68 = v64(v67, 1, v63) != 1;
  v69 = v65;

  sub_1000097E8(v67, &qword_100345620, &unk_10027C940);
  v70 = &v2[OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect];
  v71 = &v70[*(sub_100035D04(&qword_10034BE78, &unk_10028B4D0) + 32)];
  v72 = *v71;
  v73 = v71[4];
  result = sub_100243F84();
  v75 = v100 & 1;
  v76 = v84 & 1;
  v105 = v73;
  *a1 = v101;
  *(a1 + 8) = v75;
  *(a1 + 9) = v85;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v77 = v98;
  *(a1 + 32) = v99;
  *(a1 + 40) = v77;
  *(a1 + 48) = v96;
  v78 = v91;
  *(a1 + 56) = v92;
  *(a1 + 64) = v78;
  v79 = v89;
  *(a1 + 72) = v90;
  *(a1 + 80) = v79;
  v80 = v87;
  *(a1 + 88) = v88;
  *(a1 + 96) = v80;
  *(a1 + 104) = v93;
  *(a1 + 112) = v86;
  *(a1 + 120) = v76;
  *(a1 + 121) = v83;
  *(a1 + 128) = v102;
  *(a1 + 136) = v69;
  *(a1 + 144) = v68;
  *(a1 + 148) = v72;
  *(a1 + 152) = v105;
  *(a1 + 160) = result;
  *(a1 + 168) = v81;
  return result;
}

uint64_t *sub_1001DE2F0()
{
  v1 = v0;
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BE90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10002689C(*(v1 + 16), *(v1 + 24));

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect, &qword_10034BE78, &unk_10028B4D0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed, &qword_100345618, &qword_10027C938);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed, &qword_10034BE70, &unk_10028B4C0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed, &qword_10034BE88, &unk_10028B620);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_sessionEnded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger, &qword_100342A10, &qword_100278A10);
  return v1;
}

uint64_t sub_1001DE4F0()
{
  sub_1001DE2F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EducationPresentationRecord(uint64_t a1)
{
  result = qword_10034BED8;
  if (!qword_10034BED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001DE59C(uint64_t a1)
{
  sub_1001DC23C(319, &qword_10034BD28, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    sub_10011CC54(319, &qword_100345500, &unk_100345508, &qword_10027C860);
    if (v2 <= 0x3F)
    {
      sub_10011CC54(319, &qword_10034BD40, &qword_10034BD48, &unk_10028B420);
      if (v3 <= 0x3F)
      {
        sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
        if (v4 <= 0x3F)
        {
          sub_10011CC54(319, &qword_10034BD50, &qword_10034BD58, &unk_1002960A0);
          if (v5 <= 0x3F)
          {
            sub_1001DC23C(319, &unk_10034BD60, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001DE81C(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057F8C(v5);
  sub_10000903C(v5);
  return v3;
}

unint64_t sub_1001DE874(uint64_t a1)
{
  result = sub_1001DE89C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001DE89C()
{
  result = qword_10034BFC8;
  if (!qword_10034BFC8)
  {
    type metadata accessor for EducationPresentationRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BFC8);
  }

  return result;
}

uint64_t sub_1001DE948()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034BFD0);
  sub_100003078(v0, qword_10034BFD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001DE9C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4872616C75676572;
  }

  else
  {
    v3 = 0x6F69746163756465;
  }

  if (v2)
  {
    v4 = 0xED0000746E69486ELL;
  }

  else
  {
    v4 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v5 = 0x4872616C75676572;
  }

  else
  {
    v5 = 0x6F69746163756465;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746E69;
  }

  else
  {
    v6 = 0xED0000746E69486ELL;
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

Swift::Int sub_1001DEA80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DEB18(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001DEB9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DEC30@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100300020, *a1);

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

void sub_1001DEC90(uint64_t *a1@<X8>)
{
  v2 = 0x6F69746163756465;
  if (*v1)
  {
    v2 = 0x4872616C75676572;
  }

  v3 = 0xED0000746E69486ELL;
  if (*v1)
  {
    v3 = 0xEB00000000746E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001DEDA4()
{
  if (*v0)
  {
    return 0x4872616C75676572;
  }

  else
  {
    return 0x6F69746163756465;
  }
}

uint64_t sub_1001DEDF4()
{
  if (qword_100339198 != -1)
  {
LABEL_26:
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034BFD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v32 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000027, 0x80000001002A4AD0, &v32);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  v5 = [objc_opt_self() sharedLocalEndpoint];
  v6 = [v5 outputDevices];

  if (v6)
  {
    sub_1001E03E0();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
LABEL_9:
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v13 = [v10 deviceType];
        v14 = [v11 deviceSubtype] & 0xFFFFFFFE;
        if (v13 == 1 || v14 == 12)
        {
          break;
        }

        ++v9;
        if (v12 == v8)
        {
          goto LABEL_28;
        }
      }

      v16 = v11;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "Output device ineligible for Education Flow: %@", v19, 0xCu);
        sub_1000097E8(v20, &qword_100339940, &unk_100272C50);

        v17 = v21;
      }

      else
      {
      }

      goto LABEL_37;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_9;
    }
  }

LABEL_28:

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
    v24 = v23;

    if (v23)
    {
      v25 = [v24 selectedDeviceState];

      if (v25)
      {
        v26 = [v25 playerPath];

        if (v26)
        {
          v27 = [v26 origin];

          if (v27)
          {
            v28 = [v27 isLocal];

            if (v28)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  v17 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v17, v30, "Player path is not local", v31, 2u);
  }

LABEL_37:

  return 0;
}

uint64_t sub_1001DF2A4()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 408);
  v1 = sub_10005EB78();

  if (v1 == 2)
  {
    if (qword_100338E18 != -1)
    {
      swift_once();
    }

    v2 = *(*(qword_10038AE70 + 16) + 32);

    v3 = String._bridgeToObjectiveC()();
    LOBYTE(v2) = [v2 BOOLForKey:v3];

    if (v2)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_1001DF6B0() ^ 1;
    }
  }

  else
  {
    if (qword_100339198 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10034BFD0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      if (v1)
      {
        v9 = 0x4872616C75676572;
      }

      else
      {
        v9 = 0x6F69746163756465;
      }

      if (v1)
      {
        v10 = 0xEB00000000746E69;
      }

      else
      {
        v10 = 0xED0000746E69486ELL;
      }

      v11 = sub_100017494(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Forcing HintPolicyType: %s", v7, 0xCu);
      sub_10000903C(v8);
    }
  }

  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10034BFD0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0x696C6F50746E6968, 0xEA00000000007963, &v20);
    *(v15 + 12) = 2080;
    if (v1)
    {
      v16 = 0x4872616C75676572;
    }

    else
    {
      v16 = 0x6F69746163756465;
    }

    if (v1)
    {
      v17 = 0xEB00000000746E69;
    }

    else
    {
      v17 = 0xED0000746E69486ELL;
    }

    v18 = sub_100017494(v16, v17, &v20);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  return v1 & 1;
}

uint64_t sub_1001DF6B0()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 448);
  v1 = sub_1000031CC();

  if (v1)
  {
    if (qword_100339198 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034BFD0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Forcing EducationCompletedView", v5, 2u);
    }

    v6 = 1;
  }

  else
  {
    if (qword_100338E18 != -1)
    {
      swift_once();
    }

    v7 = *(*(qword_10038AE70 + 24) + 32);

    v8 = String._bridgeToObjectiveC()();
    LOBYTE(v7) = [v7 BOOLForKey:v8];

    if ((v7 & 1) == 0 && (sub_1001DFDD8() & 1) == 0 && (sub_1001E0034() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = sub_10009F1DC(Strong, &off_100300190);
        if (v13 == 1 || (v14 = v11, v15 = sub_10009FF24(v11, v12 & 1, v13, v10), v14, , !v15))
        {
        }

        else
        {
          v16 = sub_1001DEDF4();

          if (v16)
          {
            v6 = 1;
            goto LABEL_26;
          }
        }
      }

      else
      {
        if (qword_100339198 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100003078(v17, qword_10034BFD0);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "### No delegate?", v20, 2u);
        }
      }
    }

    v6 = 0;
  }

LABEL_26:
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003078(v21, qword_10034BFD0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_100017494(0xD00000000000001FLL, 0x80000001002A4AB0, &v27);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: %{BOOL}d", v24, 0x12u);
    sub_10000903C(v25);
  }

  return v6;
}

uint64_t sub_1001DFAD8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1001DFB44(uint64_t a1)
{
  result = sub_1001DFB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001DFB6C()
{
  result = qword_10034C0D8;
  if (!qword_10034C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0D8);
  }

  return result;
}

unint64_t sub_1001DFBC4()
{
  result = qword_10034C0E0;
  if (!qword_10034C0E0)
  {
    sub_100035D4C(&qword_10034C0E8, qword_10028B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0E0);
  }

  return result;
}

unint64_t sub_1001DFC2C()
{
  result = qword_10034C0F0;
  if (!qword_10034C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0F0);
  }

  return result;
}

unint64_t sub_1001DFC80()
{
  result = qword_10034C0F8;
  if (!qword_10034C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0F8);
  }

  return result;
}

uint64_t sub_1001DFCD4(uint64_t a1)
{
  v2 = v1;
  swift_weakInit();
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034BFD0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Init", v6, 2u);
  }

  swift_weakAssign();
  return v2;
}

uint64_t sub_1001DFDD8()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 424);
  v1 = sub_1000177F8();

  if (v1 == 2)
  {
    if (qword_100339180 != -1)
    {
      swift_once();
    }

    v2 = qword_10038B4E8;

    CurrentValueSubject.value.getter();
    v3 = v9;
    if (v9 == 1)
    {
      CurrentValueSubject.value.getter();

      v3 = v10;
      if (v10)
      {
LABEL_8:

LABEL_17:
        v1 = 1;
        return v1 & 1;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_8;
      }
    }

    CurrentValueSubject.value.getter();
    if (v9 == 1)
    {
      CurrentValueSubject.value.getter();

      v3 = v10;
      if (v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v1 = 0;
    return v1 & 1;
  }

  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034BFD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Forced forcedIsLocalCallActive: %{BOOL}d", v7, 8u);
  }

  return v1 & 1;
}

uint64_t sub_1001E0034()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 416);
  v1 = sub_1000177F8();

  if (v1 == 2)
  {
    v3 = 0xD00000000000001CLL;
    v2 = "com.apple.MediaRemoteUI";
    v4 = qword_100338F70;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E9168(0xD00000000000001CLL, "com.apple.MediaRemoteUI");

    if (v5)
    {
      goto LABEL_10;
    }

    v3 = 0xD000000000000018;
    v2 = "com.apple.sidecar";
    v6 = qword_100338F70;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E9168(0xD000000000000018, "com.apple.sidecar");

    if (v7)
    {
LABEL_10:
      swift_arrayDestroy();
      if (qword_100339198 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003078(v8, qword_10034BFD0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v19 = v12;
        *v11 = 136315138;
        v13 = sub_100017494(v3, v2, &v19);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Blocking education - Found active app: %s", v11, 0xCu);
        sub_10000903C(v12);
      }

      else
      {
      }

      v1 = 1;
    }

    else
    {

      swift_arrayDestroy();
      v1 = 0;
    }
  }

  else
  {
    if (qword_100339198 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_10034BFD0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Forced forcedIsEducationBlockingAppActive: %{BOOL}d", v17, 8u);
    }
  }

  return v1 & 1;
}

unint64_t sub_1001E03E0()
{
  result = qword_10034C100;
  if (!qword_10034C100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10034C100);
  }

  return result;
}

void sub_1001E042C()
{
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034BFD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000019, 0x80000001002A4B40, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  if (qword_100338E18 != -1)
  {
    swift_once();
  }

  v5 = *(*(qword_10038AE70 + 16) + 32);

  v6 = String._bridgeToObjectiveC()();
  [v5 setBool:1 forKey:v6];
}

uint64_t sub_1001E05F4()
{
  v0 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034BFD0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A4B20, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000903C(v10);
  }

  if (qword_100338E18 != -1)
  {
    swift_once();
  }

  v11 = *(*(qword_10038AE70 + 24) + 32);

  v12 = String._bridgeToObjectiveC()();
  [v11 setBool:1 forKey:v12];

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v13 = qword_10038B0B8;
  Date.init()();
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = *(v13 + 600);
  sub_10006C4AC(v5, v3);
  v16 = v15;
  sub_100259E18(v3);

  return sub_1000097E8(v5, &qword_10033C280, &qword_100272A80);
}

void sub_1001E08E0()
{
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034BFD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A4B00, &v21);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  if (qword_100338E18 != -1)
  {
    swift_once();
  }

  v5 = qword_10038AE70;
  v6 = *(*(qword_10038AE70 + 16) + 32);

  v7 = String._bridgeToObjectiveC()();
  [v6 setBool:0 forKey:v7];

  v8 = *(*(v5 + 24) + 32);

  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:0 forKey:v9];

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v10 = qword_10038B0B8;
  v11 = *(qword_10038B0B8 + 600);
  v12 = swift_isaMask;
  v13 = *(v11 + *((swift_isaMask & *v11) + 0x70));
  if (v13)
  {
    v14 = v11;
    v15 = String._bridgeToObjectiveC()();
    [v13 removeObjectForKey:v15];

    v12 = swift_isaMask;
  }

  v16 = *(v10 + 608);
  v17 = *(v16 + *((v12 & *v16) + 0x70));
  if (v17)
  {
    v20 = v16;
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 setInteger:0 forKey:v19];
  }
}

uint64_t sub_1001E0C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  dispatch thunk of Identifiable.id.getter();
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, AssociatedTypeWitness);
  v12(v10, AssociatedTypeWitness);
  return v11 & 1;
}

void sub_1001E0E70(uint64_t a1)
{
  sub_10012C2F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShareableContentType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001E0F1C(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1001E0F74(void *a1)
{
  v2 = sub_100035D04(&qword_10034C2A8, &qword_10028BA58);
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - v3;
  v4 = sub_100035D04(&qword_10034C2B0, &qword_10028BA60);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v20 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareableContentType(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100035D04(&qword_10034C2B8, &qword_10028BA68);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  sub_10000EBC0(a1, a1[3]);
  sub_1001E2ABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001E29F4(v27, v11, type metadata accessor for ShareableContentType);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    v30 = 1;
    sub_1001E2B10();
    v16 = v21;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v16, v23);
  }

  else
  {
    (*(v7 + 32))(v28, v11, v6);
    v29 = 0;
    sub_1001E2B64();
    v18 = v24;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1001E25B4(&qword_100348538, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v18, v19);
    (*(v7 + 8))(v28, v6);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1001E13EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_100035D04(&qword_10034C278, &qword_10028BA38);
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v41 = &v36 - v4;
  v37 = sub_100035D04(&qword_10034C280, &qword_10028BA40);
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v36 - v5;
  v7 = sub_100035D04(&qword_10034C288, &unk_10028BA48);
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ShareableContentType(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = a1[3];
  v45 = a1;
  sub_10000EBC0(a1, v16);
  sub_1001E2ABC();
  v17 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v36 = v13;
    v44 = v15;
    v18 = v41;
    v19 = v42;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v46 = v20;
    v47 = v20 + 32;
    v48 = 0;
    v49 = v21;
    v22 = sub_10021800C();
    v23 = v7;
    if (v22 == 2 || v48 != v49 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v30 = v10;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
      swift_willThrow();
      (*(v43 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        v50 = 1;
        sub_1001E2B10();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v43;
        v25 = v19;
        (*(v38 + 8))(v18, v39);
        (*(v24 + 8))(v9, v23);
        swift_unknownObjectRelease();
        v26 = type metadata accessor for URL();
        v27 = v44;
        (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
      }

      else
      {
        v50 = 0;
        sub_1001E2B64();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v43;
        v25 = v19;
        v33 = type metadata accessor for URL();
        sub_1001E25B4(&qword_100348498, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v35 = v36;
        v34 = v37;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v40 + 8))(v6, v34);
        (*(v32 + 8))(v9, v23);
        swift_unknownObjectRelease();
        (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
        v27 = v44;
        sub_1001E2990(v35, v44);
      }

      sub_1001E2990(v27, v25);
    }
  }

  return sub_10000903C(v45);
}

uint64_t sub_1001E19DC()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1001E1A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001E1AE4(uint64_t a1)
{
  v2 = sub_1001E2ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E1B20(uint64_t a1)
{
  v2 = sub_1001E2ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E1B5C(uint64_t a1)
{
  v2 = sub_1001E2B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E1B98(uint64_t a1)
{
  v2 = sub_1001E2B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E1BD4(uint64_t a1)
{
  v2 = sub_1001E2B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E1C10(uint64_t a1)
{
  v2 = sub_1001E2B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E1C7C(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E29F4(v1, v3, type metadata accessor for ShareableContentType);
  v4 = type metadata accessor for URL();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    return 1701736302;
  }

  sub_1001E2A5C(v3, type metadata accessor for ShareableContentType);
  return 0x6C72753C286C7275;
}

uint64_t sub_1001E1D84(void *a1)
{
  v3 = sub_100035D04(&qword_10034C268, &qword_10028BA30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000EBC0(a1, a1[3]);
  sub_1001E293C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ShareableContent(0);
    v8[14] = 1;
    type metadata accessor for ShareableContentType(0);
    sub_1001E25B4(&qword_10034C270, type metadata accessor for ShareableContentType, &unk_10028B8F8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001E1F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for ShareableContentType(0);
  __chkstk_darwin(v24);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100035D04(&qword_10034C250, &qword_10028BA28);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ShareableContent(0);
  __chkstk_darwin(v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000EBC0(a1, a1[3]);
  sub_1001E293C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v21 = v8;
  v11 = v23;
  v27 = 0;
  v12 = v25;
  *v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v10[1] = v13;
  v19 = v10;
  v20 = v13;
  v26 = 1;
  sub_1001E25B4(&qword_10034C260, type metadata accessor for ShareableContentType, &unk_10028B920);
  v14 = v12;
  v15 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 8))(v7, v14);
  v16 = v19;
  sub_1001E2990(v15, v19 + *(v21 + 20));
  sub_1001E29F4(v16, v22, type metadata accessor for ShareableContent);
  sub_10000903C(a1);
  return sub_1001E2A5C(v16, type metadata accessor for ShareableContent);
}

uint64_t sub_1001E2230()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1001E226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001E2348(uint64_t a1)
{
  v2 = sub_1001E293C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E2384(uint64_t a1)
{
  v2 = sub_1001E293C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E23F0(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a1;
      v8 = a2;
      v9 = a3;
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      a2 = v8;
      v11 = v10;
      a1 = v7;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v12 = *(a3 + 20);
  v13 = a1 + v12;
  v14 = a2 + v12;

  return sub_1001E25FC(v13, v14);
}

uint64_t sub_1001E2494(uint64_t a1)
{
  v5[3] = a1;
  v2 = sub_10000F798(v5);
  sub_1001E29F4(v1, v2, type metadata accessor for ShareableContent);
  v3 = sub_1000CF374(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_1001E2504(uint64_t a1)
{
  result = sub_1001E25B4(&qword_10034C238, type metadata accessor for ShareableContent, &unk_10028B948);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E255C(uint64_t a1)
{
  result = sub_1001E25B4(&qword_10034C240, type metadata accessor for ShareableContent, &unk_10028B970);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E25B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001E25FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShareableContentType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_10034C248, &qword_10028BA20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1001E29F4(a1, &v20 - v13, type metadata accessor for ShareableContentType);
  sub_1001E29F4(a2, &v14[v15], type metadata accessor for ShareableContentType);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1001E29F4(v14, v10, type metadata accessor for ShareableContentType);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = static URL.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1001E2A5C(v14, type metadata accessor for ShareableContentType);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1001E28D4(v14);
    v17 = 0;
    return v17 & 1;
  }

  sub_1001E2A5C(v14, type metadata accessor for ShareableContentType);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1001E28D4(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10034C248, &qword_10028BA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001E293C()
{
  result = qword_10034C258;
  if (!qword_10034C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C258);
  }

  return result;
}

uint64_t sub_1001E2990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareableContentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E29F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E2A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E2ABC()
{
  result = qword_10034C290;
  if (!qword_10034C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C290);
  }

  return result;
}

unint64_t sub_1001E2B10()
{
  result = qword_10034C298;
  if (!qword_10034C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C298);
  }

  return result;
}

unint64_t sub_1001E2B64()
{
  result = qword_10034C2A0;
  if (!qword_10034C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2A0);
  }

  return result;
}

unint64_t sub_1001E2BFC()
{
  result = qword_10034C2C0;
  if (!qword_10034C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2C0);
  }

  return result;
}

unint64_t sub_1001E2C54()
{
  result = qword_10034C2C8;
  if (!qword_10034C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2C8);
  }

  return result;
}

unint64_t sub_1001E2CAC()
{
  result = qword_10034C2D0;
  if (!qword_10034C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2D0);
  }

  return result;
}

unint64_t sub_1001E2D04()
{
  result = qword_10034C2D8;
  if (!qword_10034C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2D8);
  }

  return result;
}

unint64_t sub_1001E2D5C()
{
  result = qword_10034C2E0;
  if (!qword_10034C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2E0);
  }

  return result;
}

unint64_t sub_1001E2DB4()
{
  result = qword_10034C2E8;
  if (!qword_10034C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2E8);
  }

  return result;
}

unint64_t sub_1001E2E0C()
{
  result = qword_10034C2F0;
  if (!qword_10034C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2F0);
  }

  return result;
}

unint64_t sub_1001E2E64()
{
  result = qword_10034C2F8;
  if (!qword_10034C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2F8);
  }

  return result;
}

unint64_t sub_1001E2EBC()
{
  result = qword_10034C300;
  if (!qword_10034C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C300);
  }

  return result;
}

unint64_t sub_1001E2F14()
{
  result = qword_10034C308;
  if (!qword_10034C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C308);
  }

  return result;
}

unint64_t sub_1001E2F6C()
{
  result = qword_10034C310;
  if (!qword_10034C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C310);
  }

  return result;
}

__n128 sub_1001E2FC0(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1001E2FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1001E3050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1001E30E0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034C320);
  sub_100003078(v0, qword_10034C320);
  return Logger.init(subsystem:category:)();
}

double sub_1001E3164(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001E34BC(a1);
  }

  return result;
}

char *sub_1001E31C4()
{
  v1 = v0;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034C320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel__isModulating;
  v7 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_1001E3348()
{
  sub_1001E31C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HintViewModel(uint64_t a1)
{
  result = qword_10034C3B0;
  if (!qword_10034C3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E33F4(uint64_t a1)
{
  sub_10010E478();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001E34BC(uint64_t a1)
{
  v2 = v1;
  v65 = *v1;
  v4 = sub_100035D04(&qword_10034C7B8, &qword_10028C088);
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = v54 - v5;
  v6 = sub_100035D04(&unk_10034C7C0, &unk_10028C090);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v64 = sub_100035D04(&qword_100346630, &qword_10027D3D0);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v54 - v9;
  v10 = sub_100035D04(&qword_10034C7D0, &qword_10028C0A0);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v63 = v54 - v11;
  v12 = sub_100035D04(&qword_10034C7D8, &qword_10028C0A8);
  v69 = *(v12 - 8);
  __chkstk_darwin(v12);
  v68 = v54 - v13;
  v14 = type metadata accessor for ActivityDisplayContext(0);
  v58 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v59 = v16;
  v60 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v54 - v17;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_10034C320);
  sub_1001E9020(a1, v18, type metadata accessor for ActivityDisplayContext);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v55 = v8;
    v23 = v22;
    v54[0] = swift_slowAlloc();
    v70[0] = v54[0];
    *v23 = 136315394;
    *(v23 + 4) = sub_100017494(0xD000000000000023, 0x80000001002A4E60, v70);
    *(v23 + 12) = 2080;
    v24 = sub_10012C5E0();
    v54[1] = v14;
    v25 = v4;
    v26 = a1;
    v27 = v2;
    v28 = v12;
    v30 = v29;
    sub_1001E9088(v18, type metadata accessor for ActivityDisplayContext);
    v31 = sub_100017494(v24, v30, v70);
    v12 = v28;
    v2 = v27;
    a1 = v26;
    v4 = v25;

    *(v23 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: activityDisplayContext=%s", v23, 0x16u);
    swift_arrayDestroy();

    v8 = v55;
  }

  else
  {

    sub_1001E9088(v18, type metadata accessor for ActivityDisplayContext);
  }

  v2[3] = 0;

  if (*(a1 + 8))
  {
    goto LABEL_7;
  }

  if (*a1 < 2uLL)
  {
    v70[0] = sub_10012CA5C();
    sub_100035D04(&qword_10034C7E0, &unk_10028C0B0);
    sub_10000E244(&qword_10034C7E8, &qword_10034C7E0, &unk_10028C0B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v51 = v56;
    Publisher.map<A>(_:)();

    sub_10000E244(&unk_10034C7F0, &qword_10034C7B8, &qword_10028C088, &protocol conformance descriptor for Publishers.Map<A, B>);
    v52 = Publisher.eraseToAnyPublisher()();
    (*(v57 + 8))(v51, v4);
    v70[0] = v52;
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_100345068, &unk_10027C110);
    sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110, &protocol conformance descriptor for AnyPublisher<A, B>);
    v53 = Publisher<>.sink(receiveValue:)();

    v2[3] = v53;
    goto LABEL_16;
  }

  if ((*a1 - 3) > 1)
  {
LABEL_7:
    if (qword_1003391B0 != -1)
    {
      swift_once();
    }

    v32 = *algn_10034C358;
    v33 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle);
    *(v33 + 24) = qword_10034C350;
    *(v33 + 32) = v32;

    sub_10005EAD4();
    v34 = *(v33 + 32);
    v70[0] = *(v33 + 24);
    v70[1] = v34;

    CurrentValueSubject.send(_:)();
  }

  else
  {
    v35 = swift_allocObject();
    *(v35 + 16) = 1;
    sub_100003118(0, &qword_100346640, NSTimer_ptr);
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v36 = *(qword_10038B0B8 + 1264);
    sub_10005F4E4();

    v37 = [objc_opt_self() mainRunLoop];
    v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
    v39 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000097E8(v8, &unk_10034C7C0, &unk_10028C090);
    v70[0] = v39;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1001E90E8();
    v40 = ConnectablePublisher.autoconnect()();

    v70[0] = v40;
    sub_100035D04(&qword_1003425A0, &qword_100278410);
    type metadata accessor for Date();
    *(swift_allocObject() + 16) = xmmword_10026F050;
    Date.init()();
    sub_100035D04(&unk_10034C810, &qword_10028C0C0);
    sub_10000E244(&qword_100346648, &unk_10034C810, &qword_10028C0C0, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    v41 = v61;
    Publisher.prepend(_:)();

    v42 = v60;
    sub_1001E9020(a1, v60, type metadata accessor for ActivityDisplayContext);
    v43 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v44 = (v59 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = v35;
    sub_1001E9140(v42, v45 + v43);
    *(v45 + v44) = v65;

    sub_100035D04(&qword_100345068, &unk_10027C110);
    sub_10000E244(&qword_10034C820, &qword_100346630, &qword_10027D3D0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
    v47 = v63;
    v46 = v64;
    Publisher.map<A>(_:)();

    (*(v62 + 8))(v41, v46);
    sub_10000E244(&qword_10034C828, &qword_10034C7D0, &qword_10028C0A0, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110, &protocol conformance descriptor for AnyPublisher<A, B>);
    v48 = v67;
    v49 = v68;
    Publisher<>.switchToLatest()();
    (*(v66 + 8))(v47, v48);
    swift_allocObject();
    swift_weakInit();
    sub_10000E244(&qword_10034C830, &qword_10034C7D8, &qword_10028C0A8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
    v50 = Publisher<>.sink(receiveValue:)();

    (*(v69 + 8))(v49, v12);
    v2[3] = v50;
  }

LABEL_16:
}

uint64_t sub_1001E4174@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v28 = a2;
  v5 = sub_100035D04(&qword_10034C838, &qword_10028C0C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_10034C7B8, &qword_10028C088);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10034C320);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = v8;
    v18 = v9;
    v19 = v5;
    v20 = v10;
    v21 = v6;
    v22 = a3;
    v23 = v16;
    *v16 = 67109120;
    swift_beginAccess();
    *(v23 + 1) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v14, v15, "Timer fired: currentSubtitleIsInstructionText=%{BOOL}d", v23, 8u);
    a3 = v22;
    v6 = v21;
    v10 = v20;
    v5 = v19;
    v9 = v18;
    v8 = v17;
    v12 = v27;
  }

  else
  {
  }

  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
    type metadata accessor for ActivityDisplayContext(0);
    v29 = sub_10012CA5C();
    sub_100035D04(&qword_10034C7E0, &unk_10028C0B0);
    sub_10000E244(&qword_10034C7E8, &qword_10034C7E0, &unk_10028C0B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&unk_10034C7F0, &qword_10034C7B8, &qword_10028C088, &protocol conformance descriptor for Publishers.Map<A, B>);
    v24 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_1003391B0 != -1)
    {
      swift_once();
    }

    v29 = qword_10034C350;
    v30 = *algn_10034C358;

    Just.init(_:)();
    sub_10000E244(&unk_10034C840, &qword_10034C838, &qword_10028C0C8, &protocol conformance descriptor for Just<A>);
    v24 = Publisher.eraseToAnyPublisher()();
    result = (*(v6 + 8))(v8, v5);
  }

  *a3 = v24;
  return result;
}

double sub_1001E4604(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle);
    *(v6 + 24) = v3;
    *(v6 + 32) = v2;

    sub_10005EAD4();

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1001E46CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1001E4740()
{
  v1 = sub_100035D04(&qword_100344FE0, &qword_10027C080);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher);
  }

  else
  {
    swift_beginAccess();
    sub_100035D04(&qword_100345038, &qword_10027C0E8);
    v7 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_10034C7B0, &qword_100344FE0, &qword_10027C080, &protocol conformance descriptor for Published<A>.Publisher);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1001E48DC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher);
  }

  else
  {

    sub_10005EAD4();
    sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
    sub_10000E244(&unk_10034C790, &qword_10033C2F0, &qword_100272AF0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_100345068, &unk_10027C110);
    sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110, &protocol conformance descriptor for AnyPublisher<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001E4A78()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034C338);
  sub_100003078(v0, qword_10034C338);
  return Logger.init(subsystem:category:)();
}

void sub_1001E4AF8(uint64_t a1)
{
  v2 = v1;
  v60 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v48 - v4;
  v62 = sub_100035D04(&qword_10034C668, &qword_10028BF88);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = v48 - v5;
  v65 = sub_100035D04(&qword_10034C670, &qword_10028BF90);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = v48 - v6;
  v7 = sub_100035D04(&qword_10034C678, &unk_10028BF98);
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = v48 - v8;
  v9 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v9 - 8);
  v56 = v48 - v10;
  v55 = sub_100035D04(&qword_10034C688, &qword_10028BFA8);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v12 = v48 - v11;
  v13 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureBannerUserInfo;
  sub_100035D04(&unk_10034C690, &qword_10028BFB0);
  inited = swift_initStackObject();
  v53 = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  sub_100003118(0, &qword_10034B560, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v16 = sub_10024D3B8(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &unk_10034C6A0, &unk_10028BFB8);
  *&v2[v13] = v16;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v17 = *(qword_10038B0B8 + 704);
  v18 = sub_1000031CC();

  if (v18)
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = v53;
    *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 40) = v20;
    *(v19 + 48) = NSNumber.init(BOOLeanLiteral:)(1);
    v21 = sub_10024D3B8(v19);
    swift_setDeallocating();
    sub_1000097E8(v19 + 32, &unk_10034C6A0, &unk_10028BFB8);
  }

  else
  {
    v21 = sub_10024D3B8(_swiftEmptyArrayStorage);
  }

  *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerUserInfo] = v21;
  static String._fromUTF8Repairing(_:)();
  v22 = String._bridgeToObjectiveC()();

  v23 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v22];

  if (v23)
  {
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource] = v23;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel] = 0;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom] = 0;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController] = 0;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_tasks] = &_swiftEmptySetSingleton;
    if (qword_1003391A8 != -1)
    {
      swift_once();
    }

    *&v53 = v7;
    v24 = type metadata accessor for Logger();
    sub_100003078(v24, qword_10034C338);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Init", v27, 2u);
    }

    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment] = a1;
    v28 = type metadata accessor for ClassicBannerPresenter();
    v70.receiver = v2;
    v70.super_class = v28;

    v29 = objc_msgSendSuper2(&v70, "init");
    v30 = *&v29[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource];
    v31 = v29;
    [v30 setDelegate:v31];
    v32 = sub_100140E18();
    v48[3] = a1;
    v68 = v32;
    v48[1] = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v33 = static OS_dispatch_queue.main.getter();
    v69 = v33;
    v51 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v34 = *(v51 - 8);
    v50 = *(v34 + 56);
    v52 = v34 + 56;
    v35 = v56;
    v50(v56, 1, 1, v51);
    sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
    sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v48[2] = sub_1000513CC();
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v35, &qword_10034C680, &qword_100270390);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000E244(&qword_10034C6B8, &qword_10034C688, &qword_10028BFA8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v36 = v55;
    Publisher<>.sink(receiveValue:)();

    (*(v54 + 8))(v12, v36);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v68 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
    type metadata accessor for HandoffSession(0);

    v37 = v57;
    Publisher.compactMap<A>(_:)();

    sub_100035D04(&qword_10034C6C0, &qword_10028BFC8);
    v38 = v59;
    v39 = v60;
    Publishers.CompactMap.map<A>(_:)();
    (*(v58 + 8))(v37, v39);
    sub_10000E244(&qword_10034C6C8, &qword_10034C668, &qword_10028BF88, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    sub_10000E244(&qword_10034C6D0, &qword_10034C6C0, &qword_10028BFC8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v40 = v63;
    v41 = v62;
    Publisher<>.switchToLatest()();
    (*(v61 + 8))(v38, v41);
    v42 = static OS_dispatch_queue.main.getter();
    v68 = v42;
    v50(v35, 1, 1, v51);
    sub_10000E244(&qword_10034C6D8, &qword_10034C670, &qword_10028BF90, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
    v43 = v66;
    v44 = v65;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v35, &qword_10034C680, &qword_100270390);

    (*(v64 + 8))(v40, v44);
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v46 = swift_allocObject();
    *(v46 + 16) = sub_1001E870C;
    *(v46 + 24) = v45;
    sub_10000E244(&qword_10034C6E0, &qword_10034C678, &unk_10028BF98, v49);
    v47 = v53;
    Publisher<>.sink(receiveValue:)();

    (*(v67 + 8))(v43, v47);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001E5764(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001E592C(v2);
  }
}

double sub_1001E57C0(uint64_t *a1)
{
  sub_100093240();

  sub_100035D04(&qword_10034C6E8, &qword_10028BFD0);
  sub_100035D04(&qword_10034C6F0, &qword_10028BFD8);
  sub_10000E244(&qword_10034C6F8, &qword_10034C6E8, &qword_10028BFD0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

void sub_1001E58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1001E62B8(v4, a2);
  }
}

void sub_1001E592C(uint64_t a1)
{
  v2 = v1;
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034C338);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A21B0, &v26);
    *(v7 + 12) = 2080;
    if (a1)
    {
      v8 = UUID.uuidString.getter();
      sub_10000B584(8, v8, v9);

      v10 = static String._fromSubstring(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v2 = v1;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v17._countAndFlagsBits = sub_1000092A0(v15, v16);
      String.append(_:)(v17);

      v18._countAndFlagsBits = 62;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = 60;
      v20 = 0xE100000000000000;
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_100017494(v19, v20, &v26);

    *(v7 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: session=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v22 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  if (!v22)
  {
    v23 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v22 = 0;
  }

  v25 = v22;
  swift_unknownObjectRelease();

  sub_1001E5C54(0x206E6F6973736553, 0xEF6465676E616863, 0);
}

void sub_1001E5C54(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v44 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100003078(v11, qword_10034C338);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43[1] = v12;
    v16 = v15;
    v45 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A4DC0, &v45);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100017494(v44, a2, &v45);
    *(v16 + 22) = 1024;
    *(v16 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: reason=%s, force=%{BOOL}d", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v17 & 1) == 0)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom;
  v19 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  if (v19)
  {
    v20 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  }

  else
  {
    v21 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
    if (!v21)
    {
      goto LABEL_13;
    }

    v20 = v21;
    v19 = 0;
  }

  v22 = v19;
  v23 = [v20 requestIdentifier];
  swift_unknownObjectRelease();
  if (!v23)
  {
LABEL_13:
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "### No presentable to dismiss", v27, 2u);
    }

    goto LABEL_21;
  }

  v24 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel;
  if (*(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v45) = 0;

    static Published.subscript.setter();
  }

  *(v4 + v24) = 0;

  v28 = *(v4 + v18);
  *(v4 + v18) = 0;

  v29 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
  *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController) = 0;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Revoking presentable...", v32, 2u);
  }

  v33 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource);
  v34 = String._bridgeToObjectiveC()();
  sub_10024D3B8(_swiftEmptyArrayStorage);
  sub_100035D04(&qword_10033B118, qword_100271BF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = 0;
  v36 = [v33 revokePresentableWithRequestIdentifier:v23 reason:v34 animated:1 userInfo:isa error:&v45];

  if (v36)
  {
    v37 = v45;

    return;
  }

  v38 = v45;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 4) = v42;
    *v41 = v42;
    _os_log_impl(&_mh_execute_header, v25, v39, "### Error revoking presentable: %@", v40, 0xCu);
    sub_1000097E8(v41, &qword_100339940, &unk_100272C50);

LABEL_21:

    return;
  }
}

void sub_1001E62B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034C338);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v28);
    *(v9 + 12) = 2080;
    v27 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = 0x7373696D736964;
      }

      else
      {
        v10 = 7368560;
      }

      if (a1 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      v10 = 0x746E6573657270;
    }

    v14 = sub_100017494(v10, v11, &v28);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = UUID.uuidString.getter();
    sub_10000B584(8, v15, v16);

    v17 = static String._fromSubstring(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v24._countAndFlagsBits = sub_1000092A0(v22, v23);
    String.append(_:)(v24);

    v25._countAndFlagsBits = 62;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = sub_100017494(60, 0xE100000000000000, &v28);

    *(v9 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: effect=%s, session=%s", v9, 0x20u);
    swift_arrayDestroy();

    v12 = v27;
    if (!v27)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v12 = a1;
    if (!a1)
    {
LABEL_22:

      sub_1001E66BC(a2);
      return;
    }
  }

  if (v12 == 1)
  {

    sub_1001E5C54(0xD000000000000014, 0x80000001002A4D30, 0);
  }

  else
  {
    v13 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel;
    if (*(v3 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel))
    {

      PassthroughSubject.send(_:)();

      if (*(v3 + v13))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
      }
    }
  }
}

double sub_1001E66BC(uint64_t a1)
{
  v2 = v1;
  v115 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v115);
  v5 = &v105 - v4;
  v114 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v114);
  v7 = (&v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v8 - 8);
  v108 = &v105 - v9;
  v10 = sub_100035D04(&qword_10034C710, &qword_10028C028);
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = &v105 - v11;
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003078(v12, qword_10034C338);

  v118 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v119 = a1;
  v116 = v7;
  v117 = v5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100017494(0xD000000000000011, 0x80000001002A4D70, &v122);
    *(v17 + 12) = 2080;
    v120 = 60;
    v121 = 0xE100000000000000;
    v18 = UUID.uuidString.getter();
    sub_10000B584(8, v18, v19);

    v20 = static String._fromSubstring(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v27._countAndFlagsBits = sub_1000092A0(v25, v26);
    String.append(_:)(v27);

    v28._countAndFlagsBits = 62;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = sub_100017494(v120, v121, &v122);

    *(v17 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: session=%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v109 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v106 = UUID.uuidString.getter();
  v107 = v30;
  type metadata accessor for HintViewModel(0);
  swift_allocObject();

  v32 = sub_1001E875C(v31);

  *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel) = v32;

  if (qword_100338E90 != -1)
  {
    swift_once();
  }

  v113 = v32;
  if (byte_10038AFB0 != 1)
  {
    goto LABEL_11;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v33 = *(qword_10038B0B8 + 888);
  v34 = sub_10005F4D0();

  if ((v34 & 1) == 0)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Posting HintViewControllerDynamicIsland...", v57, 2u);
    }

    v58 = objc_allocWithZone(type metadata accessor for HintViewControllerDynamicIsland());

    v60 = sub_100202F68(v59);
    *&v60[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_delegate + 8] = &off_100311990;
    swift_unknownObjectWeakAssign();
    v120 = sub_100202E8C();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v61 = qword_10038B5B8;
    v122 = qword_10038B5B8;
    v62 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v63 = v108;
    (*(*(v62 - 8) + 56))(v108, 1, 1, v62);
    v64 = v61;
    sub_100035D04(&qword_10034C718, &unk_10028C030);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10034C720, &qword_10034C718, &unk_10028C030, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000513CC();
    v65 = v110;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v63, &qword_10034C680, &qword_100270390);

    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = swift_allocObject();
    v69 = v106;
    v68 = v107;
    v67[2] = v66;
    v67[3] = v69;
    v67[4] = v68;
    sub_10000E244(&qword_10034C728, &qword_10034C710, &qword_10028C028, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v70 = v112;
    Publisher<>.sink(receiveValue:)();

    (*(v111 + 8))(v65, v70);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v71 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
    *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom) = v60;
    v72 = v60;

    v53 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureBannerUserInfo);

    v54 = v72;
  }

  else
  {
LABEL_11:
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Posting HintViewControllerBanner...", v37, 2u);
    }

    v38 = objc_allocWithZone(type metadata accessor for HintViewControllerBanner(0));

    v40 = sub_10010E74C(v39);

    *&v40[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_delegate + 8] = &off_100311990;
    swift_unknownObjectWeakAssign();
    v120 = sub_10010C9B8();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v41 = qword_10038B5B8;
    v122 = qword_10038B5B8;
    v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v43 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
    v44 = v41;
    sub_100035D04(&qword_10034C718, &unk_10028C030);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10034C720, &qword_10034C718, &unk_10028C030, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000513CC();
    v45 = v110;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v43, &qword_10034C680, &qword_100270390);

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v49 = v106;
    v48 = v107;
    v47[2] = v46;
    v47[3] = v49;
    v47[4] = v48;
    sub_10000E244(&qword_10034C728, &qword_10034C710, &qword_10028C028, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v50 = v112;
    Publisher<>.sink(receiveValue:)();

    (*(v111 + 8))(v45, v50);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v51 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
    *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController) = v40;
    v52 = v40;

    v53 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerUserInfo);
    v54 = v52;
  }

  v73 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource);
  if (v53)
  {
    sub_100035D04(&qword_10033B118, qword_100271BF0);
    v74.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v74.super.isa = 0;
  }

  v120 = 0;
  v75 = [v73 postPresentable:v54 options:1 userInfo:v74.super.isa error:&v120];
  swift_unknownObjectRelease();

  if (v75)
  {
    v76 = v120;

    v77 = UUID.uuidString.getter();
    v119 = v78;
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v79._countAndFlagsBits = 0x20646574736F50;
    v79._object = 0xE700000000000000;
    String.append(_:)(v79);
    v122 = v54;
    sub_100035D04(&unk_10034C730, &unk_10028C040);
    _print_unlocked<A, B>(_:_:)();
    v80._object = 0x80000001002A4D50;
    v80._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v80);
    v81 = v120;
    v82 = v121;
    v83 = v116;
    *v116 = 0;
    *(v83 + 8) = 0;
    *(v83 + 16) = 4;
    swift_storeEnumTagMultiPayload();
    v84 = v117;
    v85 = &v117[*(v115 + 48)];
    v86 = &v117[*(v115 + 64)];
    sub_1001E9020(v83, v117, type metadata accessor for ExperienceEvent);
    *v85 = v77;
    v87 = v84;
    v85[1] = v119;
    *v86 = v81;
    v86[1] = v82;
    PassthroughSubject.send(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v88 = v120;
    v89 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "### Error posting presentable: %@", v92, 0xCu);
      sub_1000097E8(v93, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();

    v95 = UUID.uuidString.getter();
    v118 = v96;
    v119 = v95;
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v97._countAndFlagsBits = 0x742064656C696146;
    v97._object = 0xEF2074736F70206FLL;
    String.append(_:)(v97);
    v122 = v54;
    sub_100035D04(&unk_10034C730, &unk_10028C040);
    _print_unlocked<A, B>(_:_:)();
    v98._object = 0x80000001002A4D50;
    v98._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v98);
    v99 = v120;
    v100 = v121;
    v83 = v116;
    *v116 = v89;
    *(v83 + 8) = 0;
    *(v83 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    v87 = v117;
    v101 = &v117[*(v115 + 48)];
    v102 = &v117[*(v115 + 64)];
    sub_1001E9020(v83, v117, type metadata accessor for ExperienceEvent);
    v103 = v118;
    *v101 = v119;
    v101[1] = v103;
    *v102 = v99;
    v102[1] = v100;
    swift_errorRetain();
    PassthroughSubject.send(_:)();
    swift_unknownObjectRelease();
  }

  sub_1000097E8(v87, &unk_10034C700, &qword_100273D30);
  sub_1001E9088(v83, type metadata accessor for ExperienceEvent);

  return result;
}

void sub_1001E7714()
{
  swift_unknownObjectRelease();
}

id sub_1001E7770(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClassicBannerPresenter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1001E7874(uint64_t a1, unint64_t a2)
{
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v4);
  v6 = &v21[-v5];
  v7 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034C338);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a1;
    v14 = v13;
    v23 = swift_slowAlloc();
    v25 = v23;
    *v14 = 136315650;
    *(v14 + 4) = sub_100017494(0xD00000000000002BLL, 0x80000001002A4D90, &v25);
    *(v14 + 12) = 2080;
    v15 = String.init<A>(describing:)();
    v22 = v12;
    v17 = sub_100017494(v15, v16, &v25);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_100017494(v24, a2, &v25);
    _os_log_impl(&_mh_execute_header, v11, v22, "%s: event=%s, sessionID=%s", v14, 0x20u);
    swift_arrayDestroy();

    a1 = v24;
  }

  *v9 = xmmword_100278920;
  v9[16] = 4;
  swift_storeEnumTagMultiPayload();
  v18 = &v6[*(v4 + 48)];
  v19 = &v6[*(v4 + 64)];
  sub_1001E9020(v9, v6, type metadata accessor for ExperienceEvent);
  *v18 = a1;
  v18[1] = a2;
  *v19 = 0x707061546C6C6970;
  v19[1] = 0xEA00000000006465;

  PassthroughSubject.send(_:)();
  sub_1000097E8(v6, &unk_10034C700, &qword_100273D30);
  sub_1001E9088(v9, type metadata accessor for ExperienceEvent);

  return result;
}

void sub_1001E7BDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1001E7874(a3, a4);
  }
}

void sub_1001E7C4C(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v10 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v10);
  v77 = &v73 - v11;
  v12 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v12);
  v78 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100003078(v14, qword_10034C338);
  v16 = a1;
  sub_1001E8744(a2, a3, v6);
  v76 = v15;
  v17 = Logger.logObject.getter();
  v18 = v6;
  v19 = static os_log_type_t.default.getter();

  sub_1000D6794(a2, a3, v18);
  v20 = os_log_type_enabled(v17, v19);
  LODWORD(v79) = v18;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v75 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v74 = v12;
    v24 = v23;
    v73 = swift_slowAlloc();
    v80 = v73;
    *v22 = 136315650;
    *(v22 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A4D00, &v80);
    *(v22 + 12) = 2112;
    *(v22 + 14) = v16;
    *v24 = v16;
    *(v22 + 22) = 2080;
    v25 = v16;
    v26 = sub_10007EBCC(a2, a3, v18);
    v28 = sub_100017494(v26, v27, &v80);

    *(v22 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v17, v19, "%s: viewController=%@, event=%s", v22, 0x20u);
    sub_1000097E8(v24, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();

    v10 = v75;
  }

  v82 = &OBJC_PROTOCOL___BNPresentable;
  v29 = swift_dynamicCastObjCProtocolConditional();
  if (!v29)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "### viewController not a BNPresentable?", v45, 2u);
    }

    goto LABEL_12;
  }

  v30 = v29;
  v31 = v16;
  v32 = [v30 requestIdentifier];
  if (!v32)
  {
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = v79;
  if (v79 > 1u)
  {
    if (v79 == 2)
    {
      v76 = *(v5 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);

      v46._countAndFlagsBits = sub_10007EBCC(a2, a3, 2u);
      v79 = v31;
      v80 = 0xD000000000000014;
      v81 = 0x80000001002A4CE0;
      String.append(_:)(v46);

      v74 = v81;
      v75 = v80;
      v47 = v78;
      *v78 = a2;
      *(v47 + 8) = a3;
      *(v47 + 16) = 3;
      swift_storeEnumTagMultiPayload();
      v48 = v77;
      v49 = (v77 + *(v10 + 48));
      v50 = (v77 + *(v10 + 64));
      sub_1001E9020(v47, v77, type metadata accessor for ExperienceEvent);
      *v49 = v34;
      v49[1] = v36;
      v51 = v74;
      *v50 = v75;
      v50[1] = v51;

      PassthroughSubject.send(_:)();

      sub_1000097E8(v48, &unk_10034C700, &qword_100273D30);
      sub_1001E9088(v47, type metadata accessor for ExperienceEvent);

      return;
    }

    if (a2 <= 2)
    {
      if (a2 | a3 && a2 ^ 1 | a3)
      {
        v75 = v36;

        v57._countAndFlagsBits = sub_10007EBCC(a2, a3, 3u);
        v80 = 0xD000000000000014;
        v81 = 0x80000001002A4CE0;
        String.append(_:)(v57);

        v58 = v81;
        v79 = v80;
        v59 = v78;
        *v78 = xmmword_100271890;
        *(v59 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        v60 = v77;
        v61 = (v77 + *(v10 + 48));
        v62 = (v77 + *(v10 + 64));
        sub_1001E9020(v59, v77, type metadata accessor for ExperienceEvent);
        v63 = v75;
        *v61 = v34;
        v61[1] = v63;
        *v62 = v79;
        v62[1] = v58;
        PassthroughSubject.send(_:)();

        sub_1000097E8(v60, &unk_10034C700, &qword_100273D30);
        sub_1001E9088(v59, type metadata accessor for ExperienceEvent);

        return;
      }

      goto LABEL_22;
    }

    if (a2 ^ 3 | a3)
    {
LABEL_22:

      return;
    }

    v75 = v36;

    v64._countAndFlagsBits = sub_10007EBCC(a2, a3, 3u);
    v80 = 0xD000000000000014;
    v81 = 0x80000001002A4CE0;
    String.append(_:)(v64);

    v65 = v81;
    v79 = v80;
    v66 = v78;
    *v78 = xmmword_10026F060;
    *(v66 + 16) = 4;
    swift_storeEnumTagMultiPayload();
    v67 = v77;
    v68 = (v77 + *(v10 + 48));
    v69 = (v77 + *(v10 + 64));
    sub_1001E9020(v66, v77, type metadata accessor for ExperienceEvent);
    v70 = v75;
    *v68 = v34;
    v68[1] = v70;
    *v69 = v79;
    v69[1] = v65;
    PassthroughSubject.send(_:)();
    sub_1000097E8(v67, &unk_10034C700, &qword_100273D30);
    sub_1001E9088(v66, type metadata accessor for ExperienceEvent);

    v43 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v43, v71, "@KPI NearbyInteraction.hint-ui-did-appear", v72, 2u);
    }

LABEL_12:
    return;
  }

  v75 = v36;
  v76 = v34;
  v79 = v31;
  if (v37)
  {

    v52._countAndFlagsBits = sub_10007EBCC(a2, a3, 1u);
    v80 = 0xD000000000000014;
    v81 = 0x80000001002A4CE0;
    String.append(_:)(v52);

    v39 = v80;
    v40 = v81;
    v41 = v78;
    *v78 = a2;
    *(v41 + 8) = a3;
    v42 = 2;
  }

  else
  {

    v38._countAndFlagsBits = sub_10007EBCC(a2, a3, 0);
    v80 = 0xD000000000000014;
    v81 = 0x80000001002A4CE0;
    String.append(_:)(v38);

    v39 = v80;
    v40 = v81;
    v41 = v78;
    *v78 = a2;
    *(v41 + 8) = a3;
    v42 = 1;
  }

  *(v41 + 16) = v42;
  swift_storeEnumTagMultiPayload();
  v53 = v77;
  v54 = (v77 + *(v10 + 48));
  v55 = (v77 + *(v10 + 64));
  sub_1001E9020(v41, v77, type metadata accessor for ExperienceEvent);
  v56 = v75;
  *v54 = v76;
  v54[1] = v56;
  *v55 = v39;
  v55[1] = v40;

  PassthroughSubject.send(_:)();

  sub_1000097E8(v53, &unk_10034C700, &qword_100273D30);
  sub_1001E9088(v41, type metadata accessor for ExperienceEvent);
}

void sub_1001E85A8()
{
  v0 = [objc_opt_self() localizedStringForKey:16];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_10034C350 = v1;
  *algn_10034C358 = v3;
}

void sub_1001E8610(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1001E8690(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001E8744(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void *sub_1001E875C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_10034C740, &qword_10028C050);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41[-v6];
  v8 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-v10];
  v2[3] = 0;
  v2[4] = &_swiftEmptySetSingleton;
  v46 = v2 + 4;
  v12 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel__isModulating;
  LOBYTE(v48) = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher) = 0;
  v13 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel_popSubject;
  sub_100035D04(&qword_10034C750, &unk_100287670);
  swift_allocObject();
  *(v2 + v13) = PassthroughSubject.init()();
  v14 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle;
  sub_100035D04(&qword_10034C758, &qword_10028C058);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = 0xE000000000000000;
  *(v2 + v14) = v15;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher) = 0;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10034C320);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v5;
    v20 = v19;
    v43 = v19;
    v21 = swift_slowAlloc();
    v44 = v21;
    *v20 = 136315138;
    v47 = v21;
    v48 = 60;
    v49 = 0xE100000000000000;
    v42 = v18;
    v22 = UUID.uuidString.getter();
    sub_10000B584(8, v22, v23);

    v24 = static String._fromSubstring(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v31._countAndFlagsBits = sub_1000092A0(v29, v30);
    String.append(_:)(v31);

    v32._countAndFlagsBits = 62;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = sub_100017494(v48, v49, &v47);

    v34 = v43;
    *(v43 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v17, v42, "Init: session=%s", v34, 0xCu);
    sub_10000903C(v44);

    v5 = v45;
  }

  v2[2] = a1;

  v48 = sub_10008CECC();
  sub_100035D04(&unk_10034C760, qword_10028C060);
  v35 = *(type metadata accessor for ActivityDisplayContext(0) - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10026F050;
  v38 = *(a1 + 24);
  v39 = sub_1001F00B0();
  sub_100249BE4(v38, v39, (v37 + v36));
  swift_unknownObjectRelease();
  sub_100035D04(&qword_10033B5C0, &qword_100272060);
  sub_10000E244(&qword_10034C770, &qword_10033B5C0, &qword_100272060, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10034C778, &unk_10034C740, &qword_10028C050, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_1001E8DC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1001E8E10(uint64_t a1)
{
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034C338);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A4E40, &v10);
    *(v5 + 12) = 2080;
    if (a1)
    {
      swift_unknownObjectRetain();
      sub_100035D04(&unk_10034C780, &unk_10028C078);
      v6 = String.init<A>(describing:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v9 = sub_100017494(v6, v8, &v10);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: bannerSource=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001E9020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E9088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E90E8()
{
  result = qword_10034C800;
  if (!qword_10034C800)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C800);
  }

  return result;
}

uint64_t sub_1001E9140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDisplayContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E91A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDisplayContext(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1001E4174(v4, v5, a1);
}

BOOL sub_1001E9278(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(*(*(a1 + 16) - 8) + 48))(v4, 1);
  if (v5 != 1)
  {
    (*(v2 + 8))(v4, a1);
  }

  return v5 == 1;
}

uint64_t sub_1001E93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  result = (*(v4 + 48))(v9, 1, v3);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v12 = *(v4 + 32);
    v12(v7, v9, v3);
    *(a2 + 24) = v3;
    v13 = sub_10000F798(a2);
    return (v12)(v13, v7, v3);
  }

  return result;
}

uint64_t sub_1001E9554(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v16 = sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v16);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(v3 + 16);
  v18 = a1;
  v9(&v16 - v7, a1);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v11 = *(v3 + 32);
  v12 = v8;
  v13 = v16;
  v11(v17 + v10, v12, v16);
  (v9)(v6, a1, v13);
  v14 = swift_allocObject();
  v11(v14 + v10, v6, v13);
  sub_100035D04(&qword_10034C878, &qword_10028C158);
  sub_10000E244(&qword_10034CA20, &qword_10034C878, &qword_10028C158, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.sink(receiveCompletion:receiveValue:)();

  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_1001E97BC(uint64_t a1)
{
  if ((a1 & 1) == 0 && !_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

uint64_t sub_1001E9848()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034C850);
  sub_100003078(v0, qword_10034C850);
  return Logger.init(subsystem:category:)();
}

void *sub_1001E98C8()
{
  type metadata accessor for ProximityHandoffService();
  swift_allocObject();
  result = sub_1001E9904();
  qword_10038B5A0 = result;
  return result;
}

void *sub_1001E9904()
{
  v1 = v0;
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100035CB8();
  v29[0] = "previous current ";
  v29[1] = v7;
  static DispatchQoS.default.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1001ED750(&qword_100339328, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100035D04(&qword_100339330, &unk_10026F070);
  sub_10000E244(&qword_100339338, &qword_100339330, &unk_10026F070, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v30);
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for HandoffInteractionsManager();
  swift_allocObject();
  v0[4] = sub_100129670();
  type metadata accessor for HandoffSuppressionManagerState();
  v8 = swift_allocObject();
  sub_100035D04(&qword_100339340, &qword_10028C4E0);
  swift_allocObject();
  *(v8 + 16) = sub_10002B83C(&_swiftEmptySetSingleton, 0, 0, 0, 0, 0);
  type metadata accessor for HandoffSuppressionManager();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v0[5] = v9;
  v0[6] = &_swiftEmptySetSingleton;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034C850);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Init", v13, 2u);
  }

  v14 = SFProximityHandoffMachServiceName.getter();
  v16 = v15;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100017494(v14, v16, &v31);
    _os_log_impl(&_mh_execute_header, v17, v18, "Registering mach service %s", v19, 0xCu);
    sub_10000903C(v20);
  }

  sub_100035D04(&qword_10034C9D8, &qword_10028C4E8);
  v21 = v1[3];
  v22 = SFXPCListener.__allocating_init(machServiceName:queue:)();
  v1[2] = v22;
  v23 = v22;

  SFXPCListener.contextProvider.setter();

  v24 = v1[2];
  SFXPCListener.didAddConnectionHandler.setter();

  v25 = v1[2];

  v26 = v25;
  SFXPCListener.didRemoveConnectionHandler.setter();

  v27 = v1[2];
  SFXPCListener.resume()();

  return v1;
}

void sub_1001E9E68(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034C850);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_1001ED750(&qword_10034C9E0, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100017494(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client added: %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1001EA0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFClientIdentity();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003078(v16, qword_10034C850);
  v18 = *(v13 + 16);
  v44 = a1;
  v18(v15, a1, v12);
  v42 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v9;
    v39 = v23;
    v47 = v23;
    *v22 = 136315138;
    sub_1001ED750(&qword_10034C9E0, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v7;
    v26 = v10;
    v28 = v27;
    (*(v13 + 8))(v15, v12);
    v29 = sub_100017494(v24, v28, &v47);
    v10 = v26;
    v7 = v25;

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Client removed: %s", v22, 0xCu);
    sub_10000903C(v39);
    v9 = v41;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v30 = v43;
  SFClientIdentity.connectionID.getter();
  if ((*(v10 + 48))(v30, 1, v9) == 1)
  {
    sub_100057640(v30);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "### No connectionID?", v33, 2u);
    }
  }

  else
  {
    v34 = v10;
    (*(v10 + 32))(v45, v30, v9);

    CurrentValueSubject.value.getter();
    v35 = v46;
    if (v46)
    {
    }

    else
    {
      CurrentValueSubject.value.getter();

      v35 = v47;
    }

    v47 = v35;
    v36 = v45;
    sub_100067BF4(v45, v7);
    sub_100057640(v7);
    v37 = v47;

    sub_1001C0474(v37);

    sub_100057010();
    (*(v34 + 8))(v36, v9);
  }
}

uint64_t ProximityHandoffService.deinit()
{

  return v0;
}

uint64_t ProximityHandoffService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PCProximityHandoffServiceInvocations.SuppressHandoffAction.invoke(with:context:client:)@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v34 = a1;
  v31 = a3;
  v3 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v3 - 8);
  v32 = v29 - v4;
  v5 = type metadata accessor for UUID();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFClientAccessLevel();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v29 - v12;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v29[1] = sub_100003078(v14, qword_10034C850);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[0] = v5;
    *v17 = 67109120;
    *(v17 + 4) = v34 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "SuppressHandoffAction invoked: %{BOOL}d", v17, 8u);
    v5 = v29[0];
  }

  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  v18 = v35;
  SFClientAccessLevel.verifyHasAccess(to:)();
  if (v18)
  {
    v19 = *(v8 + 8);
    v19(v11, v7);
    return (v19)(v13, v7);
  }

  else
  {
    v21 = *(v8 + 8);
    v21(v11, v7);
    v21(v13, v7);
    v22 = v32;
    SFClientIdentity.connectionID.getter();
    v23 = v33;
    if ((*(v33 + 48))(v22, 1, v5) == 1)
    {
      sub_100057640(v22);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "### No connectionID?", v26, 2u);
      }

      sub_10001618C();
      swift_allocError();
      *v27 = 0xD000000000000026;
      *(v27 + 8) = 0x80000001002A4E90;
      *(v27 + 16) = 9;
      return swift_willThrow();
    }

    else
    {
      v28 = v30;
      (*(v23 + 32))(v30, v22, v5);
      sub_1000572EC(v28, v34 & 1);
      VoidResponse.init()();
      return (*(v23 + 8))(v28, v5);
    }
  }
}

uint64_t PCProximityHandoffServiceInvocations.SetDaemonKeepAliveEnabled.invoke(with:context:client:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v30 = type metadata accessor for SFClientAccessLevel();
  v3 = *(v30 - 8);
  v4 = __chkstk_darwin(v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10034C850);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = a2;
    v14 = v13;
    v33 = v13;
    *v12 = 136315138;
    if (v32)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    v28 = v3;
    if (v32)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = v6;
    v18 = v8;
    v19 = sub_100017494(v15, v16, &v33);
    v3 = v28;

    *(v12 + 4) = v19;
    v8 = v18;
    v6 = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "UserAlertAction invoked: %s", v12, 0xCu);
    sub_10000903C(v14);
  }

  if (IsAppleInternalBuild())
  {
    SFClientIdentity.accessLevel.getter();
    static SFClientAccessLevel.proximityHandoffInteractions.getter();
    v20 = v31;
    SFClientAccessLevel.verifyHasAccess(to:)();
    if (v20)
    {
      v21 = *(v3 + 8);
      v22 = v30;
      v21(v6, v30);
      return (v21)(v8, v22);
    }

    else
    {
      v25 = *(v3 + 8);
      v26 = v30;
      v25(v6, v30);
      v25(v8, v26);
      sub_100129354(v32 & 1);
      return VoidResponse.init()();
    }
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v24 = 0xD000000000000015;
    *(v24 + 8) = 0x80000001002A4EC0;
    *(v24 + 16) = 12;
    return swift_willThrow();
  }
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = type metadata accessor for SFClientAccessLevel();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001EB148, 0, 0);
}

uint64_t sub_1001EB148()
{
  v29 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[9];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v28);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "UserAlertAction invoked: %s", v14, 0xCu);
    sub_10000903C(v27);
  }

  else
  {
    v19 = v0[9];
    v20 = v0[10];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[7];
  v21 = v0[8];
  v23 = v0[5];
  v24 = v0[6];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v0[13] = 0;
  v25 = *(v24 + 8);
  v25(v22, v23);
  v25(v21, v23);
  if (qword_1003392E8 != -1)
  {
    swift_once();
  }

  v0[14] = qword_10038B6D0;

  return (_swift_task_switch)(sub_1001EB470);
}

uint64_t sub_1001EB470()
{
  v1 = v0[13];
  sub_1002518B8(v0[3]);
  if (v1)
  {

    v2 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001EB550, 0, 0);
}

uint64_t sub_1001EB550(uint64_t a1)
{
  VoidResponse.init()();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001EB5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_1001ED750(&qword_10034CA00, &type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction, &protocol conformance descriptor for PCProximityHandoffServiceInvocations.UserAlertAction);
  *v15 = v14;
  v15[1] = sub_1001EB718;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_1001EB718(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1001EB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10009D6D4;

  return PCProximityHandoffServiceInvocations.UserAlertAction.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFNearbySharingInteractionViewState();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for SFClientAccessLevel();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001EBAC8, 0, 0);
}

uint64_t sub_1001EBAC8()
{
  v36 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v35);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "NearbySharingInteractionViewUpdate invoked: %s", v14, 0xCu);
    sub_10000903C(v34);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[17];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[12];
  v24 = v0[13];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v25 = *(v24 + 8);
  v25(v22, v23);
  v25(v21, v23);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v0[10];
    v26 = v0[11];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.interactionID.getter();
    SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.viewState.getter();
    sub_10012008C(v26, v29);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v29, v30);
    (*(v27 + 8))(v26, v28);
  }

  VoidResponse.init()();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1001EBE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_1001ED750(&qword_10034C9F8, &type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate, &protocol conformance descriptor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate);
  *v15 = v14;
  v15[1] = sub_1001ED928;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_1001EBF90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E6584;

  return SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFProximityHandoff.Content.Action();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for SFProximityHandoff.Content();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for SFClientAccessLevel();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001EC238, 0, 0);
}

uint64_t sub_1001EC238()
{
  v36 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v35);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "PerformHandoffContentAction invoked: %s", v14, 0xCu);
    sub_10000903C(v34);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[17];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[12];
  v24 = v0[13];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v25 = *(v24 + 8);
  v25(v22, v23);
  v25(v21, v23);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v0[10];
    v26 = v0[11];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.content.getter();
    SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.action.getter();
    sub_100121010(v26, v29);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v29, v30);
    (*(v27 + 8))(v26, v28);
  }

  VoidResponse.init()();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1001EC5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_1001ED750(&qword_10034C9F0, &type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction, &protocol conformance descriptor for SFProximityHandoffInvocations.PerformHandoffContentAction);
  *v15 = v14;
  v15[1] = sub_1001ED928;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_1001EC700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E6584;

  return SFProximityHandoffInvocations.PerformHandoffContentAction.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFProximityHandoffInvocations.ProximityHandoffInteractions.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_100035D04(&qword_10034C868, &qword_10028C148);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_100035D04(&qword_10034C870, &qword_10028C150);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_100035D04(&qword_10034C878, &qword_10028C158);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_100035D04(&qword_10034C880, &qword_10028C160);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = type metadata accessor for SFClientAccessLevel();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for VoidParameters();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001ECA90, 0, 0);
}

uint64_t sub_1001ECA90()
{
  v43 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  if (v9)
  {
    v11 = v0[25];
    v12 = v0[26];
    v13 = v0[24];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v42);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "ProximityHandoffInteractions invoked: %s", v14, 0xCu);
    sub_10000903C(v41);
  }

  else
  {
    v19 = v0[24];
    v20 = v0[25];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[20];
  v24 = v0[21];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v25 = *(v24 + 8);
  v25(v22, v23);
  v25(v21, v23);
  v39 = v0[17];
  v40 = v0[18];
  v32 = v0[16];
  v36 = v0[19];
  v37 = v0[15];
  v26 = v0[12];
  v27 = v0[13];
  v28 = v0[11];
  v33 = v0[9];
  v34 = v0[10];
  v35 = v0[8];
  v38 = v0[14];
  v0[2] = *(*(v0[6] + 32) + 16);

  sub_100035D04(&qword_100346240, qword_10027D0D0);
  sub_100035D04(&qword_100339B30, &unk_1002704F0);
  sub_10000E244(&qword_100346248, &qword_100346240, qword_10027D0D0, &unk_10027C688);
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10034C888, &qword_10034C870, &qword_10028C150, &protocol conformance descriptor for Publishers.Map<A, B>);
  v29 = Publisher.eraseToAnyPublisher()();

  (*(v26 + 8))(v27, v28);
  v0[3] = v29;
  sub_100035D04(&qword_10034C890, &qword_10028C168);
  sub_100035D04(&qword_10034C898, qword_10028C170);
  sub_10000E244(&qword_10034C8A0, &qword_10034C890, &qword_10028C168, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  *(swift_task_alloc() + 16) = v32;
  (*(v33 + 104))(v34, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v35);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v37 + 8))(v32, v38);
  sub_10000E244(&qword_10034C8A8, &qword_10034C880, &qword_10028C160, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  sub_1001ED4B8(&qword_10034C8B0, &qword_10034C8B8, &protocol conformance descriptor for SFProximityHandoff.Interaction, &protocol conformance descriptor for <A> [A]);
  sub_1001ED4B8(&qword_10034C8C0, &qword_10034C8C8, &protocol conformance descriptor for SFProximityHandoff.Interaction, &protocol conformance descriptor for <A> [A]);
  AsyncSequence<>.xpc.getter();
  (*(v40 + 8))(v36, v39);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1001ED11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = sub_1001ED750(&qword_10034C9E8, &type metadata accessor for SFProximityHandoffInvocations.ProximityHandoffInteractions, &protocol conformance descriptor for SFProximityHandoffInvocations.ProximityHandoffInteractions);
  *v15 = v14;
  v15[1] = sub_1001ED928;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t sub_1001ED250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E6584;

  return SFProximityHandoffInvocations.ProximityHandoffInteractions.invoke(with:context:client:)(a1, a2, v8, a4);
}

void *sub_1001ED308(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001ED37C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001ED3AC(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_10034CA28, &qword_10028C4F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = *a1;

  sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001ED4B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_10034C898, qword_10028C170);
    sub_1001ED750(a2, &type metadata accessor for SFProximityHandoff.Interaction, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001ED750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001ED798(unsigned __int8 *a1)
{
  sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  v2 = *a1;

  return sub_1001E97BC(v2);
}

uint64_t sub_1001ED814()
{
  v1 = sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001ED8A8(uint64_t *a1)
{
  sub_100035D04(&qword_10034CA18, &qword_10028C4F0);

  return sub_1001ED3AC(a1);
}

void sub_1001EDFCC(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1001EE04C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001EE0C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v5)
  {
    return UUID.uuidString.getter();
  }

  v2 = [v5 effectiveIdentifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_1001EE1E4(uint64_t a1)
{
  v2 = v1;
  v3 = UUID.uuidString.getter();
  sub_10000B584(8, v3, v4);

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  v8 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100009088((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = v5;
  *(v11 + 5) = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = sub_10000A474();
  v14 = v13;

  v16 = *(v8 + 2);
  v15 = *(v8 + 3);
  if (v16 >= v15 >> 1)
  {
    v8 = sub_100009088((v15 > 1), v16 + 1, 1, v8);
  }

  *(v8 + 2) = v16 + 1;
  v17 = &v8[16 * v16];
  *(v17 + 4) = v12;
  *(v17 + 5) = v14;
  _StringGuts.grow(_:)(21);

  v76 = 0xD000000000000013;
  v77 = 0x80000001002A4FD0;
  v20 = sub_100010FF4(v18, v19);
  v21._countAndFlagsBits = sub_100116194(v20);
  String.append(_:)(v21);

  v23 = *(v8 + 2);
  v22 = *(v8 + 3);
  if (v23 >= v22 >> 1)
  {
    v8 = sub_100009088((v22 > 1), v23 + 1, 1, v8);
  }

  v24 = 7104878;
  *(v8 + 2) = v23 + 1;
  v25 = &v8[16 * v23];
  *(v25 + 4) = 0xD000000000000013;
  *(v25 + 5) = 0x80000001002A4FD0;
  v76 = 0x65636E6174736964;
  v77 = 0xE90000000000003DLL;

  CurrentValueSubject.value.getter();
  if (v74)
  {
    CurrentValueSubject.value.getter();

    if ((v75[0] & 0x100000000) == 0)
    {
      v26 = v75[0];
LABEL_11:
      LOBYTE(v72) = v26;
      v27 = String.init<A>(describing:)();
      v29 = v28;
      goto LABEL_13;
    }
  }

  else
  {
    v26 = v72;

    if (((v72 | (v73 << 32)) & 0x100000000) == 0)
    {
      goto LABEL_11;
    }
  }

  v29 = 0xE300000000000000;
  v27 = 7104878;
LABEL_13:
  v30 = v29;
  String.append(_:)(*&v27);

  v31 = v76;
  v32 = v77;
  v34 = *(v8 + 2);
  v33 = *(v8 + 3);
  if (v34 >= v33 >> 1)
  {
    v8 = sub_100009088((v33 > 1), v34 + 1, 1, v8);
  }

  *(v8 + 2) = v34 + 1;
  v35 = &v8[16 * v34];
  *(v35 + 4) = v31;
  *(v35 + 5) = v32;
  v76 = 0x3D6E6F69676572;
  v77 = 0xE700000000000000;

  CurrentValueSubject.value.getter();
  if (LOBYTE(v75[0]) == 6)
  {
    CurrentValueSubject.value.getter();

    if (v72 != 5)
    {
LABEL_17:
      v24 = String.init<A>(describing:)();
      v37 = v36;
      goto LABEL_20;
    }
  }

  else
  {

    if (LOBYTE(v75[0]) != 5)
    {
      goto LABEL_17;
    }
  }

  v37 = 0xE300000000000000;
LABEL_20:
  v38._countAndFlagsBits = v24;
  v38._object = v37;
  String.append(_:)(v38);

  v41 = v76;
  v42 = v77;
  v44 = *(v8 + 2);
  v43 = *(v8 + 3);
  if (v44 >= v43 >> 1)
  {
    v39 = sub_100009088((v43 > 1), v44 + 1, 1, v8);
    v8 = v39;
  }

  *(v8 + 2) = v44 + 1;
  v45 = &v8[16 * v44];
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  v76 = 1031172978;
  v77 = 0xE400000000000000;
  sub_100017E14(v39, v40);
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v48 = *(v8 + 2);
  v47 = *(v8 + 3);
  if (v48 >= v47 >> 1)
  {
    v8 = sub_100009088((v47 > 1), v48 + 1, 1, v8);
  }

  *(v8 + 2) = v48 + 1;
  v49 = &v8[16 * v48];
  *(v49 + 4) = 1031172978;
  *(v49 + 5) = 0xE400000000000000;
  _StringGuts.grow(_:)(17);

  v76 = 0x6341656369766564;
  v77 = 0xEF3D797469766974;
  v50._countAndFlagsBits = sub_1001F129C();
  String.append(_:)(v50);

  v52 = *(v8 + 2);
  v51 = *(v8 + 3);
  if (v52 >= v51 >> 1)
  {
    v8 = sub_100009088((v51 > 1), v52 + 1, 1, v8);
  }

  *(v8 + 2) = v52 + 1;
  v53 = &v8[16 * v52];
  *(v53 + 4) = 0x6341656369766564;
  *(v53 + 5) = 0xEF3D797469766974;
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (LOBYTE(v75[0]) > 2u)
  {
    if (LOBYTE(v75[0]) == 3)
    {
      v54 = 0xE600000000000000;
      v55 = 0x64656C696166;
    }

    else if (LOBYTE(v75[0]) == 4)
    {
      v54 = 0xE400000000000000;
      v55 = 1953391987;
    }

    else
    {
      v54 = 0xE700000000000000;
      v55 = 0x746E6573657270;
    }
  }

  else if (LOBYTE(v75[0]))
  {
    if (LOBYTE(v75[0]) == 1)
    {
      v54 = 0xE400000000000000;
      v55 = 1701602409;
    }

    else
    {
      v54 = 0xE800000000000000;
      v55 = 0x6465727265666564;
    }
  }

  else
  {
    v54 = 0xE700000000000000;
    v55 = 0x64657269736564;
  }

  v56 = v54;
  String.append(_:)(*&v55);

  v58 = *(v8 + 2);
  v57 = *(v8 + 3);
  if (v58 >= v57 >> 1)
  {
    v8 = sub_100009088((v57 > 1), v58 + 1, 1, v8);
  }

  *(v8 + 2) = v58 + 1;
  v59 = &v8[16 * v58];
  *(v59 + 4) = 1030646644;
  *(v59 + 5) = 0xE400000000000000;
  v75[0] = 0x3D736B736174;
  v75[1] = 0xE600000000000000;
  v60 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_tasks;
  swift_beginAccess();
  if ((*(v2 + v60) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v61);

  v62 = v75[0];
  v63 = v75[1];
  v65 = *(v8 + 2);
  v64 = *(v8 + 3);
  if (v65 >= v64 >> 1)
  {
    v8 = sub_100009088((v64 > 1), v65 + 1, 1, v8);
  }

  *(v8 + 2) = v65 + 1;
  v66 = &v8[16 * v65];
  *(v66 + 4) = v62;
  *(v66 + 5) = v63;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v67 = BidirectionalCollection<>.joined(separator:)();
  v69 = v68;

  strcpy(v75, "HandoffDevice ");
  v70._countAndFlagsBits = v67;
  v70._object = v69;
  String.append(_:)(v70);

  return v75[0];
}

Swift::Int sub_1001EEA5C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001EEC94(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EEB00(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1001EEC94(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001EEB8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001EEC94(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EEC94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001EECDC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000CDF40(0, v2, 0);
    v33 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v34 = *(v1 + 36);
    v29 = v1 + 72;
    v30 = v2;
    v31 = v1 + 64;
    v32 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v34 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v9 = (*(v1 + 48) + 16 * v5);
      v10 = *(*(v1 + 56) + 8 * v5);
      v35 = *v9;
      v36 = v9[1];
      v11 = v10;
      swift_bridgeObjectRetain_n();
      v12._countAndFlagsBits = 61;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      if (v10)
      {
        sub_100003118(0, &qword_10034CC90, NSUserActivity_ptr);
        v13 = v11;
        v14 = String.init<A>(describing:)();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = v16;
      String.append(_:)(*&v14);

      v18 = v33;
      v20 = v33[2];
      v19 = v33[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1000CDF40((v19 > 1), v20 + 1, 1);
        v18 = v33;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v35;
      v21[5] = v36;
      v1 = v32;
      v7 = 1 << *(v32 + 32);
      if (v5 >= v7)
      {
        goto LABEL_28;
      }

      v4 = v31;
      v22 = *(v31 + 8 * v8);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      v33 = v18;
      if (v34 != *(v32 + 36))
      {
        goto LABEL_30;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v7 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v8 << 6;
        v25 = v8 + 1;
        v26 = (v29 + 8 * v8);
        while (v25 < (v7 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100059628(v5, v34, 0);
            v7 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_100059628(v5, v34, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v30)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001EEFB8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034CA38);
  sub_100003078(v0, qword_10034CA38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001EF03C()
{
  v1 = sub_100035D04(&qword_10034CCA8, &qword_10028C7A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_100035D04(&qword_10034CCB0, &qword_10028C7A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_100035D04(&qword_10034CCC8, qword_10028C7C8);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  if (*(v0 + 64))
  {
    v18 = *(v0 + 64);
  }

  else
  {
    v36 = v14;
    v37 = v15;
    v35 = v17;
    sub_100035D04(&qword_10034A390, &qword_100287650);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002725A0;
    v30 = v1;
    v38 = *(v0 + 40);

    v34 = v10;
    v31 = v2;
    sub_100035D04(&qword_10034CC68, &qword_10028C770);
    v32 = v12;
    v33 = v9;
    sub_10000E244(&qword_10034CCF0, &qword_10034CC68, &qword_10028C770, &unk_10027C688);
    v19 = v0;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CCF8, &qword_10034CCB0, &qword_10028C7A8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v20 = Publisher.eraseToAnyPublisher()();

    (*(v6 + 8))(v8, v5);
    v21 = v29;
    *(v29 + 32) = v20;
    v38 = *(v19 + 48);

    sub_100035D04(&qword_10034CC70, &qword_10028C778);
    sub_10000E244(&qword_10034CD00, &qword_10034CC70, &qword_10028C778, &unk_10027C688);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CD08, &qword_10034CCA8, &qword_10028C7A0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v22 = v30;
    v23 = Publisher.eraseToAnyPublisher()();

    (*(v31 + 8))(v4, v22);
    *(v21 + 40) = v23;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
    v24 = v32;
    Publishers.MergeMany.init(_:)();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for DeviceActivity();
    sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v25 = v35;
    v26 = v33;
    Publisher.compactMap<A>(_:)();

    (*(v34 + 8))(v24, v26);
    sub_10000E244(qword_10034CD20, &qword_10034CCC8, qword_10028C7C8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v27 = v36;
    v18 = Publisher.eraseToAnyPublisher()();
    (*(v37 + 8))(v25, v27);
    *(v19 + 64) = v18;
  }

  return v18;
}

uint64_t sub_1001EF664()
{
  v1 = sub_100035D04(&qword_10034CCA0, &qword_10028C798);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v44 - v3;
  v5 = sub_100035D04(&qword_10034CCA8, &qword_10028C7A0);
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v57 = &v44 - v6;
  v7 = sub_100035D04(&qword_10034CCB0, &qword_10028C7A8);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v44 - v8;
  v9 = sub_100035D04(&qword_10034CCB8, &qword_10028C7B0);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = sub_100035D04(&qword_10034CCC0, &qword_10028C7B8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  v16 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v61 = *(v16 - 8);
  __chkstk_darwin(v16);
  v60 = &v44 - v17;
  v18 = sub_100035D04(&qword_10034CCC8, qword_10028C7C8);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  if (v0[9])
  {
    v23 = v0[9];
  }

  else
  {
    v51 = v19;
    v52 = v20;
    v50 = v22;
    sub_100035D04(&qword_10034A390, &qword_100287650);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100274B30;
    v46 = v4;
    v62 = v0[3];

    v48 = v2;
    v49 = v16;
    sub_100035D04(&qword_10034CC58, &qword_10028C760);
    v47 = v1;
    sub_10000E244(&qword_10034CCD0, &qword_10034CC58, &qword_10028C760, &unk_10027C688);
    Publisher.map<A>(_:)();
    v44 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000E244(&qword_10034CCD8, &qword_10034CCC0, &qword_10028C7B8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v24 = Publisher.eraseToAnyPublisher()();

    (*(v13 + 8))(v15, v12);
    v25 = v45;
    *(v45 + 32) = v24;
    v62 = v0[4];

    sub_100035D04(&qword_10034CC60, &qword_10028C768);
    sub_10000E244(&qword_10034CCE0, &qword_10034CC60, &qword_10028C768, &unk_10027C688);
    Publisher.map<A>(_:)();
    v26 = v44;
    sub_10000E244(&qword_10034CCE8, &qword_10034CCB8, &qword_10028C7B0, v44);
    v27 = Publisher.eraseToAnyPublisher()();

    (*(v53 + 8))(v11, v9);
    v25[5] = v27;
    v28 = v25;
    v62 = v0[5];

    sub_100035D04(&qword_10034CC68, &qword_10028C770);
    sub_10000E244(&qword_10034CCF0, &qword_10034CC68, &qword_10028C770, &unk_10027C688);
    v29 = v54;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CCF8, &qword_10034CCB0, &qword_10028C7A8, v26);
    v30 = v56;
    v31 = Publisher.eraseToAnyPublisher()();

    (*(v55 + 8))(v29, v30);
    v28[6] = v31;
    v62 = v0[6];

    sub_100035D04(&qword_10034CC70, &qword_10028C778);
    sub_10000E244(&qword_10034CD00, &qword_10034CC70, &qword_10028C778, &unk_10027C688);
    v32 = v57;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CD08, &qword_10034CCA8, &qword_10028C7A0, v26);
    v33 = v59;
    v34 = Publisher.eraseToAnyPublisher()();

    (*(v58 + 8))(v32, v33);
    v28[7] = v34;
    v62 = v0[7];

    sub_100035D04(&qword_10034CC78, &qword_10028C780);
    sub_10000E244(&qword_10034CD10, &qword_10034CC78, &qword_10028C780, &unk_10027C688);
    v35 = v46;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CD18, &qword_10034CCA0, &qword_10028C798, v26);
    v36 = v47;
    v37 = v35;
    v38 = Publisher.eraseToAnyPublisher()();

    (*(v48 + 8))(v37, v36);
    v28[8] = v38;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
    v39 = v60;
    Publishers.MergeMany.init(_:)();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for DeviceActivity();
    sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v40 = v49;
    v41 = v50;
    Publisher.compactMap<A>(_:)();

    (*(v61 + 8))(v39, v40);
    sub_10000E244(qword_10034CD20, &qword_10034CCC8, qword_10028C7C8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v42 = v51;
    v23 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v41, v42);
    v0[9] = v23;
  }

  return v23;
}

void *sub_1001F00B0()
{

  CurrentValueSubject.value.getter();
  v0 = v17;
  if (v17 == 1)
  {
    CurrentValueSubject.value.getter();

    v0 = v18;
  }

  else
  {
  }

  v19[4] = v0;

  CurrentValueSubject.value.getter();
  v1 = v17;
  if (v17 == 1)
  {
    CurrentValueSubject.value.getter();

    v1 = v18;
  }

  else
  {
  }

  v19[5] = v1;

  CurrentValueSubject.value.getter();
  v2 = v17;
  if (v17 != 1)
  {

    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_11:
    v3 = [v2 isVideo];

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  CurrentValueSubject.value.getter();

  v2 = v18;
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_12:

  CurrentValueSubject.value.getter();
  v4 = v17;
  if (v17 == 1)
  {
    CurrentValueSubject.value.getter();

    v4 = v18;
    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v17)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v4 = 0;
LABEL_17:
  v19[6] = v4;

  CurrentValueSubject.value.getter();
  v5 = v17;
  if (v17 == 1)
  {
    CurrentValueSubject.value.getter();

    v5 = v18;
  }

  else
  {
  }

  v19[7] = v5;

  CurrentValueSubject.value.getter();
  v6 = v17;
  if (v17 == 1)
  {
    CurrentValueSubject.value.getter();

    v6 = v18;
  }

  else
  {
  }

  v7 = 0;
  v19[8] = v6;
LABEL_24:
  if (v7 <= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  while (1)
  {
    if (v7 == 5)
    {
      sub_100035D04(&qword_10034B4F0, &unk_10027C100);
      result = swift_arrayDestroy();
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_56;
      }

      v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_35;
      }

LABEL_57:

      return 0;
    }

    if (v8 == v7)
    {
      break;
    }

    if (v19[v7++ + 4])
    {
      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = result;
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_35:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v11 != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = _swiftEmptyArrayStorage[4];
    swift_unknownObjectRetain();
    if (v11 != 1)
    {
LABEL_38:
      v13 = 1;
      do
      {
        v14 = v12;
        v15 = v13;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v15 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v12 = _swiftEmptyArrayStorage[v15 + 4];
            swift_unknownObjectRetain();
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_53;
            }
          }

          v16 = [v12 pcactivityType];
          if (v16 < [v14 pcactivityType])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v15;
          if (v13 == v11)
          {
            v12 = v14;
            goto LABEL_51;
          }
        }

        swift_unknownObjectRelease();
      }

      while (v13 != v11);
    }

LABEL_51:

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1001F0504(void *a1)
{
  v2 = v1;
  v77 = type metadata accessor for Date();
  v4 = *(v77 - 8);
  v5 = __chkstk_darwin(v77);
  v74 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v73 = &v71 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v71 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v71 - v13;
  __chkstk_darwin(v12);
  v16 = (&v71 - v15);
  if (qword_1003391C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003078(v17, qword_10034CA38);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v71 = v18;
    v72 = v4;
    v75 = v2;
    v76 = v16;
    v22 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100017494(0x6C41656C646E6168, 0xEF293A5F286D7261, aBlock);
    *(v22 + 12) = 2080;
    v23 = a1;
    v24 = v14;
    if (a1)
    {
      v78 = v19;
      sub_100003118(0, &qword_10034CC98, PCAlarmActivity_ptr);
      v25 = v19;
      v26 = String.init<A>(describing:)();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_100017494(v26, v28, aBlock);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: alarm=%s", v22, 0x16u);
    swift_arrayDestroy();

    v14 = v24;
    v2 = v75;
    v16 = v76;
    a1 = v23;
    v4 = v72;
  }

  else
  {
  }

  [v2[10] invalidate];
  v30 = v2[10];
  v2[10] = 0;

  if (!a1)
  {
    goto LABEL_15;
  }

  v31 = v19;
  v32 = [v31 fireDate];
  if (!v32)
  {

LABEL_15:

    sub_1001C0E34(0);

    return;
  }

  v75 = a1;
  v33 = v32;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.advanced(by:)();
  Date.init()();
  LOBYTE(v33) = static Date.< infix(_:_:)();
  v34 = v11;
  v35 = v77;
  v72 = *(v4 + 1);
  v72(v34, v77);
  v36 = *(v4 + 2);
  if (v33)
  {
    v37 = v73;
    v36(v73, v14, v35);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v71 = v40;
      v41 = swift_slowAlloc();
      v76 = v16;
      v74 = v41;
      aBlock[0] = v41;
      *v40 = 136315138;
      sub_1001F1888(&qword_100345628, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v14;
      v45 = v44;
      v72(v37, v35);
      v46 = sub_100017494(v42, v45, aBlock);
      v14 = v43;

      v47 = v71;
      *(v71 + 1) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "alarmExposureDate is past - exposing alarm now(%s)", v47, 0xCu);
      sub_10000903C(v74);
      v16 = v76;

      v48 = v72;
    }

    else
    {

      v48 = v72;
      v72(v37, v35);
    }

    v60 = v31;

    sub_1001C0E34(v75);

    v48(v14, v35);
    v48(v16, v35);
  }

  else
  {
    v49 = v74;
    v36(v74, v14, v35);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v73 = v52;
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v52 = 136315138;
      sub_1001F1888(&qword_100345628, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v2;
      v54 = v14;
      v55 = v16;
      v57 = v56;
      v72(v49, v35);
      v58 = sub_100017494(v53, v57, aBlock);
      v16 = v55;
      v14 = v54;
      v2 = v75;

      v59 = v73;
      *(v73 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "alarmExposureDate is future - scheduling exposure(%s)", v59, 0xCu);
      sub_10000903C(v76);
    }

    else
    {

      v72(v49, v35);
    }

    sub_1001C0E34(0);

    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v31;
    v62 = objc_allocWithZone(NSTimer);
    v63 = v31;

    v64 = v14;
    isa = Date._bridgeToObjectiveC()().super.isa;
    aBlock[4] = sub_1001F1874;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002B88;
    aBlock[3] = &unk_100311B70;
    v66 = _Block_copy(aBlock);
    v67 = [v62 initWithFireDate:isa interval:0 repeats:v66 block:0.0];
    _Block_release(v66);

    v68 = [objc_opt_self() mainRunLoop];
    [v68 addTimer:v67 forMode:NSRunLoopCommonModes];

    v69 = v72;
    v72(v64, v35);
    v69(v16, v35);
    v70 = v2[10];
    v2[10] = v67;
  }
}

double sub_1001F0DD8(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v17 = qword_10038B5B8;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a3;
  aBlock[4] = sub_1001F187C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100311BE8;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  v15 = a3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001F1888(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);

  return result;
}

double sub_1001F1124(void *a1, uint64_t a2, void *a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 80);
    *(Strong + 80) = 0;
  }

  if (qword_1003391C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034CA38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Alarm is now within 24hrs - exposing now", v9, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v11 = a3;
    sub_1001C0E34(a3);
  }

  return result;
}