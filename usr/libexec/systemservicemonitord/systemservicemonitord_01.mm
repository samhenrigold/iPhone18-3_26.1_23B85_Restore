uint64_t sub_10001D33C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001EBE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001D370(uint64_t a1)
{
  v2 = sub_10001F154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D3AC(uint64_t a1)
{
  v2 = sub_10001F154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D3E8(uint64_t a1)
{
  v2 = sub_10001F2A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D424(uint64_t a1)
{
  v2 = sub_10001F2A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D460(uint64_t a1)
{
  v2 = sub_10001F3F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D49C(uint64_t a1)
{
  v2 = sub_10001F3F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D4E4(uint64_t a1)
{
  v2 = sub_10001F3A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D520(uint64_t a1)
{
  v2 = sub_10001F3A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D55C(uint64_t a1)
{
  v2 = sub_10001F34C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D598(uint64_t a1)
{
  v2 = sub_10001F34C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D5D4(uint64_t a1)
{
  v2 = sub_10001F1FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D610(uint64_t a1)
{
  v2 = sub_10001F1FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D64C(uint64_t a1)
{
  v2 = sub_10001F1A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D688(uint64_t a1)
{
  v2 = sub_10001F1A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D6C4(uint64_t a1)
{
  v2 = sub_10001F250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D700(uint64_t a1)
{
  v2 = sub_10001F250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D73C(uint64_t a1)
{
  v2 = sub_10001F49C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D778(uint64_t a1)
{
  v2 = sub_10001F49C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D7B4(uint64_t a1)
{
  v2 = sub_10001F448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D7F0(uint64_t a1)
{
  v2 = sub_10001F448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D82C(uint64_t a1)
{
  v2 = sub_10001F2F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D868(uint64_t a1)
{
  v2 = sub_10001F2F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001D8A8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001D918(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10001D95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_10001D9DC(uint64_t a1)
{
  v2 = sub_10001F4F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DA18(uint64_t a1)
{
  v2 = sub_10001F4F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SystemServiceMonitorError.encode(to:)(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v69 = a4;
  v67 = a3;
  v70 = a2;
  v52 = sub_100007CCC(&qword_100086B40, "by");
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v38 - v5;
  v49 = sub_100007CCC(&qword_100086B48, &qword_100061578);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v38 - v6;
  v7 = sub_100007CCC(&qword_100086B50, &qword_100061580);
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v62 = &v38 - v8;
  v46 = sub_100007CCC(&qword_100086B58, &qword_100061588);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - v9;
  v43 = sub_100007CCC(&qword_100086B60, &qword_100061590);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v38 - v10;
  v11 = sub_100007CCC(&qword_100086B68, &qword_100061598);
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v59 = &v38 - v12;
  v13 = sub_100007CCC(&qword_100086B70, &qword_1000615A0);
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v56 = &v38 - v14;
  v40 = sub_100007CCC(&qword_100086B78, &qword_1000615A8);
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v38 - v15;
  v66 = sub_100007CCC(&qword_100086B80, &qword_1000615B0);
  v54 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v38 - v16;
  v17 = sub_100007CCC(&qword_100086B88, &qword_1000615B8);
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = sub_100007CCC(&qword_100086B90, &qword_1000615C0);
  v53 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  v23 = sub_100007CCC(&qword_100086B98, &qword_1000615C8);
  v71 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v38 - v24;
  sub_100007AB4(a1, a1[3]);
  sub_10001F154();
  v68 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v69 <= 2u)
  {
    v30 = v65;
    v31 = v66;
    if (v69)
    {
      if (v69 == 1)
      {
        v73 = 1;
        sub_10001F49C();
        v26 = v68;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v55 + 8))(v19, v17);
      }

      else
      {
        v74 = 2;
        sub_10001F448();
        v26 = v68;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v54 + 8))(v30, v31);
      }
    }

    else
    {
      v72 = 0;
      sub_10001F4F0();
      v26 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v53 + 8))(v22, v20);
    }
  }

  else
  {
    if (v69 <= 4u)
    {
      v26 = v68;
      if (v69 == 3)
      {
        v76 = 4;
        sub_10001F3A0();
        v27 = v56;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v58;
        KeyedEncodingContainer.encode(_:forKey:)();
        v29 = v57;
      }

      else
      {
        v77 = 5;
        sub_10001F34C();
        v27 = v59;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v61;
        KeyedEncodingContainer.encode(_:forKey:)();
        v29 = v60;
      }

      goto LABEL_13;
    }

    v26 = v68;
    if (v69 == 5)
    {
      v80 = 8;
      sub_10001F250();
      v27 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v64;
      KeyedEncodingContainer.encode(_:forKey:)();
      v29 = v63;
LABEL_13:
      (*(v29 + 8))(v27, v28);
      return (*(v71 + 8))(v26, v23);
    }

    if (v70 <= 1)
    {
      if (v70 | v67)
      {
        v78 = 6;
        sub_10001F2F8();
        v37 = v41;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v42 + 8))(v37, v43);
      }

      else
      {
        v75 = 3;
        sub_10001F3F4();
        v34 = v38;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v39 + 8))(v34, v40);
      }
    }

    else if (v70 ^ 2 | v67)
    {
      if (v70 ^ 3 | v67)
      {
        v82 = 10;
        sub_10001F1A8();
        v36 = v50;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v51 + 8))(v36, v52);
      }

      else
      {
        v81 = 9;
        sub_10001F1FC();
        v33 = v47;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v33, v49);
      }
    }

    else
    {
      v79 = 7;
      sub_10001F2A4();
      v35 = v44;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v35, v46);
    }
  }

  return (*(v71 + 8))(v26, v23);
}

uint64_t SystemServiceMonitorError.init(from:)(void *a1)
{
  result = sub_10001F544(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10001E62C(uint64_t a1)
{
  v2 = sub_1000206E8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10001E668(uint64_t a1)
{
  v2 = sub_1000206E8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10001E6AC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10001F544(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t SystemServiceMonitorError.code.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    v4 = 1002;
    if (a3 != 1)
    {
      v4 = 1003;
    }

    if (a3)
    {
      return v4;
    }

    else
    {
      return 1001;
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5)
    {
      return 1009;
    }

    else
    {
      return qword_1000624C0[a1];
    }
  }

  else if (a3 == 3)
  {
    return 1005;
  }

  else
  {
    return 1006;
  }
}

unint64_t SystemServiceMonitorError.description.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
      v12 = 0x6F72724520435058;
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v12 = 0;
      _StringGuts.grow(_:)(32);
      v5._countAndFlagsBits = 0xD00000000000001DLL;
      v5._object = 0x800000010006AD20;
      String.append(_:)(v5);
      Double.write<A>(to:)();
      a1 = 115;
      a2 = 0xE100000000000000;
      goto LABEL_12;
    }

    v6 = a1;
    v7 = a2;
    _StringGuts.grow(_:)(20);

    v12 = 0xD000000000000012;
LABEL_11:
    a1 = v6;
    a2 = v7;
    goto LABEL_12;
  }

  if (a3 <= 4u)
  {
    v3 = a1;
    v4 = a2;
    _StringGuts.grow(_:)(32);

    v12 = 0xD00000000000001ELL;
    a1 = v3;
    a2 = v4;
LABEL_12:
    String.append(_:)(*&a1);
    return v12;
  }

  if (a3 == 5)
  {
    v6 = a1;
    v7 = a2;
    _StringGuts.grow(_:)(17);

    v12 = 0x206E6F6973736553;
    goto LABEL_11;
  }

  if (a1 <= 1)
  {
    v9 = a1 | a2;
    v10 = 0xD000000000000019;
    v11 = 0xD000000000000037;
  }

  else
  {
    v9 = a1 ^ 2 | a2;
    v10 = 0xD000000000000034;
    v11 = 0xD00000000000006ALL;
    if (!(a1 ^ 3 | a2))
    {
      v11 = 0xD000000000000031;
    }
  }

  if (v9)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_10001EA6C()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    v3 = 1002;
    if (v1 != 1)
    {
      v3 = 1003;
    }

    if (*(v0 + 16))
    {
      return v3;
    }

    else
    {
      return 1001;
    }
  }

  else if (*(v0 + 16) > 4u)
  {
    if (v1 == 5)
    {
      return 1009;
    }

    else
    {
      return qword_1000624C0[*v0];
    }
  }

  else if (v1 == 3)
  {
    return 1005;
  }

  else
  {
    return 1006;
  }
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemServiceMonitorError(uint64_t a1)
{
  v2 = sub_100020654();

  return sub_10001CEC0(a1, v2);
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance SystemServiceMonitorError(uint64_t a1)
{
  v2 = sub_100020654();

  return sub_10001CEEC(a1, v2);
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance SystemServiceMonitorError(uint64_t a1)
{
  v2 = sub_100020654();

  return sub_10001CF00(a1, v2);
}

unint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance SystemServiceMonitorError(uint64_t a1)
{
  v2 = sub_100020654();

  return sub_10001CF14(a1, v2);
}

uint64_t sub_10001EBE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010006AD40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010006AD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5164696C61766E69 && a2 == 0xEC00000079726575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D656C706D696E75 && a2 == 0xED00006465746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010006AD80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x456E6F6973736573 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010006ADA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010006ADC0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t _s21systemservicemonitord25SystemServiceMonitorErrorO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          return *&a1 == *&a4;
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 == 5)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a1 <= 1)
    {
      if (a1 | a2)
      {
        if (a6 == 6 && a4 == 1 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 6 && !(a5 | a4))
      {
        return 1;
      }
    }

    else if (a1 ^ 2 | a2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a6 == 6 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 6 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 6 && a4 == 2 && !a5)
    {
      return 1;
    }
  }

  else if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

unint64_t sub_10001F154()
{
  result = qword_100089480;
  if (!qword_100089480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089480);
  }

  return result;
}

unint64_t sub_10001F1A8()
{
  result = qword_100089488;
  if (!qword_100089488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089488);
  }

  return result;
}

unint64_t sub_10001F1FC()
{
  result = qword_100089490;
  if (!qword_100089490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089490);
  }

  return result;
}

unint64_t sub_10001F250()
{
  result = qword_100089498;
  if (!qword_100089498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089498);
  }

  return result;
}

unint64_t sub_10001F2A4()
{
  result = qword_1000894A0;
  if (!qword_1000894A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894A0);
  }

  return result;
}

unint64_t sub_10001F2F8()
{
  result = qword_1000894A8;
  if (!qword_1000894A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894A8);
  }

  return result;
}

unint64_t sub_10001F34C()
{
  result = qword_1000894B0;
  if (!qword_1000894B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894B0);
  }

  return result;
}

unint64_t sub_10001F3A0()
{
  result = qword_1000894B8;
  if (!qword_1000894B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894B8);
  }

  return result;
}

unint64_t sub_10001F3F4()
{
  result = qword_1000894C0;
  if (!qword_1000894C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894C0);
  }

  return result;
}

unint64_t sub_10001F448()
{
  result = qword_1000894C8;
  if (!qword_1000894C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894C8);
  }

  return result;
}

unint64_t sub_10001F49C()
{
  result = qword_1000894D0;
  if (!qword_1000894D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000894D0);
  }

  return result;
}

unint64_t sub_10001F4F0()
{
  result = qword_1000894D8[0];
  if (!qword_1000894D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000894D8);
  }

  return result;
}

uint64_t sub_10001F544(void *a1)
{
  v2 = sub_100007CCC(&qword_100086BC8, &qword_100062460);
  v83 = *(v2 - 8);
  v84 = v2;
  __chkstk_darwin(v2);
  v89 = &v61 - v3;
  v4 = sub_100007CCC(&qword_100086BD0, &qword_100062468);
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v90 = &v61 - v5;
  v80 = sub_100007CCC(&qword_100086BD8, &qword_100062470);
  v68 = *(v80 - 8);
  __chkstk_darwin(v80);
  v93 = &v61 - v6;
  v7 = sub_100007CCC(&qword_100086BE0, &qword_100062478);
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v88 = &v61 - v8;
  v77 = sub_100007CCC(&qword_100086BE8, &qword_100062480);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v87 = &v61 - v9;
  v75 = sub_100007CCC(&qword_100086BF0, &qword_100062488);
  v67 = *(v75 - 8);
  __chkstk_darwin(v75);
  v92 = &v61 - v10;
  v74 = sub_100007CCC(&qword_100086BF8, &qword_100062490);
  v66 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v61 - v11;
  v71 = sub_100007CCC(&qword_100086C00, &qword_100062498);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v86 = &v61 - v12;
  v72 = sub_100007CCC(&qword_100086C08, &qword_1000624A0);
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v91 = &v61 - v13;
  v70 = sub_100007CCC(&qword_100086C10, &qword_1000624A8);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v15 = &v61 - v14;
  v16 = sub_100007CCC(&qword_100086C18, &qword_1000624B0);
  v64 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_100007CCC(&qword_100086C20, &qword_1000624B8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v61 - v21;
  v23 = a1[3];
  v95 = a1;
  sub_100007AB4(a1, v23);
  sub_10001F154();
  v24 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_12;
  }

  v62 = v18;
  v61 = v16;
  v26 = v91;
  v25 = v92;
  v27 = v93;
  v63 = 0;
  v94 = v20;
  v28 = v19;
  v29 = KeyedDecodingContainer.allKeys.getter();
  if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 11))
  {
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v36 = v35;
    v19 = *(sub_100007CCC(&qword_100086B20, &unk_100061510) + 48);
    *v36 = &type metadata for SystemServiceMonitorError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
    (*(v94 + 8))(v22, v28);
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (*(v29 + 32) > 4u)
  {
    v31 = v19;
    if (*(v29 + 32) > 7u)
    {
      v32 = v94;
      v19 = v63;
      if (v30 == 8)
      {
        v104 = 8;
        sub_10001F250();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v19)
        {
          v49 = v80;
          v19 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v68 + 8))(v27, v49);
          (*(v32 + 8))(v22, v31);
          swift_unknownObjectRelease();
          goto LABEL_45;
        }
      }

      else if (v30 == 9)
      {
        v105 = 9;
        sub_10001F1FC();
        v41 = v90;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v19)
        {
          (*(v81 + 8))(v41, v82);
          (*(v32 + 8))(v22, v31);
          swift_unknownObjectRelease();
          v19 = 3;
          goto LABEL_45;
        }
      }

      else
      {
        v106 = 10;
        sub_10001F1A8();
        v55 = v89;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v19)
        {
          (*(v83 + 8))(v55, v84);
          (*(v32 + 8))(v22, v31);
          swift_unknownObjectRelease();
          v19 = 4;
          goto LABEL_45;
        }
      }
    }

    else
    {
      v32 = v94;
      v33 = v63;
      if (v30 == 5)
      {
        v101 = 5;
        sub_10001F34C();
        v19 = v25;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v33)
        {
          v48 = v75;
          v19 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v67 + 8))(v25, v48);
          (*(v32 + 8))(v22, v31);
          swift_unknownObjectRelease();
          goto LABEL_45;
        }
      }

      else if (v30 == 6)
      {
        v102 = 6;
        sub_10001F2F8();
        v19 = v87;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v33)
        {
          (*(v76 + 8))(v19, v77);
          (*(v32 + 8))(v22, v31);
          swift_unknownObjectRelease();
          v19 = 1;
LABEL_45:
          v60 = v95;
          goto LABEL_46;
        }
      }

      else
      {
        v103 = 7;
        sub_10001F2A4();
        v19 = v88;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v33)
        {
          (*(v78 + 8))(v19, v79);
          (*(v32 + 8))(v22, v31);
          swift_unknownObjectRelease();
          v19 = 2;
          goto LABEL_45;
        }
      }
    }

    (*(v32 + 8))(v22, v31);
    goto LABEL_11;
  }

  if (*(v29 + 32) > 1u)
  {
    v93 = v29;
    if (v30 == 2)
    {
      v98 = 2;
      sub_10001F448();
      v45 = v19;
      v46 = v63;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v46)
      {
        v47 = v72;
        v19 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v65 + 8))(v26, v47);
        (*(v94 + 8))(v22, v45);
        swift_unknownObjectRelease();
        goto LABEL_45;
      }

      (*(v94 + 8))(v22, v19);
    }

    else
    {
      v38 = v19;
      if (v30 == 3)
      {
        v99 = 3;
        sub_10001F3F4();
        v19 = v86;
        v39 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v94;
        if (!v39)
        {
          (*(v73 + 8))(v19, v71);
          (*(v40 + 8))(v22, v38);
          swift_unknownObjectRelease();
          v19 = 0;
          goto LABEL_45;
        }
      }

      else
      {
        v100 = 4;
        sub_10001F3A0();
        v50 = v85;
        v51 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v94;
        if (!v51)
        {
          v52 = v74;
          v19 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v66 + 8))(v50, v52);
          (*(v40 + 8))(v22, v38);
          swift_unknownObjectRelease();
          goto LABEL_45;
        }
      }

      (*(v40 + 8))(v22, v38);
    }

    goto LABEL_11;
  }

  if (*(v29 + 32))
  {
    v97 = 1;
    sub_10001F49C();
    v53 = v63;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v94;
    if (!v53)
    {
      v57 = v70;
      KeyedDecodingContainer.decode(_:forKey:)();
      v59 = v58;
      (*(v69 + 8))(v15, v57);
      (*(v54 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v19 = v59;
      goto LABEL_45;
    }

    (*(v94 + 8))(v22, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0;
    sub_10001F4F0();
    v42 = v62;
    v43 = v63;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v43;
    v44 = v94;
    if (!v43)
    {
      v56 = v61;
      v19 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v64 + 8))(v42, v56);
      (*(v44 + 8))(v22, v28);
      swift_unknownObjectRelease();
      v60 = v95;
LABEL_46:
      sub_100007F1C(v60);
      return v19;
    }

    (*(v94 + 8))(v22, v28);
    swift_unknownObjectRelease();
  }

LABEL_12:
  sub_100007F1C(v95);
  return v19;
}

unint64_t sub_100020654()
{
  result = qword_100086BA0;
  if (!qword_100086BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BA0);
  }

  return result;
}

unint64_t sub_1000206A8(void *a1)
{
  a1[1] = sub_1000206E8();
  a1[2] = sub_10002073C();
  a1[3] = sub_100020790();
  result = sub_1000207E4();
  a1[4] = result;
  return result;
}

unint64_t sub_1000206E8()
{
  result = qword_100086BA8;
  if (!qword_100086BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BA8);
  }

  return result;
}

unint64_t sub_10002073C()
{
  result = qword_100086BB0;
  if (!qword_100086BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BB0);
  }

  return result;
}

unint64_t sub_100020790()
{
  result = qword_100086BB8;
  if (!qword_100086BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BB8);
  }

  return result;
}

unint64_t sub_1000207E4()
{
  result = qword_100086BC0;
  if (!qword_100086BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BC0);
  }

  return result;
}

uint64_t sub_10002083C(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_100020858(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10002086C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000208B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000208F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemServiceMonitorError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SystemServiceMonitorError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s21systemservicemonitord25SystemServiceMonitorErrorO18XpcErrorCodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s21systemservicemonitord25SystemServiceMonitorErrorO18XpcErrorCodingKeysOwst_0(_WORD *result, int a2, int a3)
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

unint64_t sub_100020BFC()
{
  result = qword_100089C60[0];
  if (!qword_100089C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100089C60);
  }

  return result;
}

unint64_t sub_100020C54()
{
  result = qword_10008A070[0];
  if (!qword_10008A070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008A070);
  }

  return result;
}

unint64_t sub_100020CAC()
{
  result = qword_10008A280[0];
  if (!qword_10008A280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008A280);
  }

  return result;
}

unint64_t sub_100020D04()
{
  result = qword_10008A590[0];
  if (!qword_10008A590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008A590);
  }

  return result;
}

unint64_t sub_100020D5C()
{
  result = qword_10008A7A0[0];
  if (!qword_10008A7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008A7A0);
  }

  return result;
}

unint64_t sub_100020DB4()
{
  result = qword_10008A9B0[0];
  if (!qword_10008A9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008A9B0);
  }

  return result;
}

unint64_t sub_100020E0C()
{
  result = qword_10008ABC0[0];
  if (!qword_10008ABC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008ABC0);
  }

  return result;
}

unint64_t sub_100020E64()
{
  result = qword_10008ACD0;
  if (!qword_10008ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008ACD0);
  }

  return result;
}

unint64_t sub_100020EBC()
{
  result = qword_10008ACD8[0];
  if (!qword_10008ACD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008ACD8);
  }

  return result;
}

unint64_t sub_100020F14()
{
  result = qword_10008AD60;
  if (!qword_10008AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AD60);
  }

  return result;
}

unint64_t sub_100020F6C()
{
  result = qword_10008AD68[0];
  if (!qword_10008AD68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008AD68);
  }

  return result;
}

unint64_t sub_100020FC4()
{
  result = qword_10008ADF0;
  if (!qword_10008ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008ADF0);
  }

  return result;
}

unint64_t sub_10002101C()
{
  result = qword_10008ADF8[0];
  if (!qword_10008ADF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008ADF8);
  }

  return result;
}

unint64_t sub_100021074()
{
  result = qword_10008AE80;
  if (!qword_10008AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AE80);
  }

  return result;
}

unint64_t sub_1000210CC()
{
  result = qword_10008AE88[0];
  if (!qword_10008AE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008AE88);
  }

  return result;
}

unint64_t sub_100021124()
{
  result = qword_10008AF10;
  if (!qword_10008AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AF10);
  }

  return result;
}

unint64_t sub_10002117C()
{
  result = qword_10008AF18[0];
  if (!qword_10008AF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008AF18);
  }

  return result;
}

unint64_t sub_1000211D4()
{
  result = qword_10008AFA0;
  if (!qword_10008AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFA0);
  }

  return result;
}

unint64_t sub_10002122C()
{
  result = qword_10008AFA8[0];
  if (!qword_10008AFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008AFA8);
  }

  return result;
}

unint64_t sub_100021284()
{
  result = qword_10008B030;
  if (!qword_10008B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B030);
  }

  return result;
}

unint64_t sub_1000212DC()
{
  result = qword_10008B038[0];
  if (!qword_10008B038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008B038);
  }

  return result;
}

unint64_t sub_100021334()
{
  result = qword_10008B0C0;
  if (!qword_10008B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0C0);
  }

  return result;
}

unint64_t sub_10002138C()
{
  result = qword_10008B0C8[0];
  if (!qword_10008B0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008B0C8);
  }

  return result;
}

unint64_t sub_1000213E4()
{
  result = qword_10008B150;
  if (!qword_10008B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B150);
  }

  return result;
}

unint64_t sub_10002143C()
{
  result = qword_10008B158[0];
  if (!qword_10008B158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008B158);
  }

  return result;
}

unint64_t sub_100021494()
{
  result = qword_10008B1E0;
  if (!qword_10008B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1E0);
  }

  return result;
}

unint64_t sub_1000214EC()
{
  result = qword_10008B1E8[0];
  if (!qword_10008B1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008B1E8);
  }

  return result;
}

unint64_t sub_100021544()
{
  result = qword_10008B270;
  if (!qword_10008B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B270);
  }

  return result;
}

unint64_t sub_10002159C()
{
  result = qword_10008B278;
  if (!qword_10008B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B278);
  }

  return result;
}

unint64_t sub_1000215F4()
{
  result = qword_10008B300;
  if (!qword_10008B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B300);
  }

  return result;
}

unint64_t sub_10002164C()
{
  result = qword_10008B308[0];
  if (!qword_10008B308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008B308);
  }

  return result;
}

xpc_object_t XPCConvertible.asXPC(replyTo:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (a1)
  {
    reply = xpc_dictionary_create_reply(a1);
  }

  else
  {
    reply = 0;
  }

  v9 = *(a3 + 16);
  v21 = a2;
  v22 = v9;
  v10 = sub_10001A798(v20);
  (*(*(a2 - 8) + 16))(v10, v5, a2);
  v11 = (*(a3 + 24))(a2, a3);
  v13 = v12;
  if (reply)
  {
    empty = reply;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  PropertyListEncoder.init()();
  sub_100007AB4(v20, v21);
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = v15;
    v18 = v16;
    swift_unknownObjectRetain();

    sub_100021BC8(v17, v18, empty, v11, v13);
    sub_100021E94(v17, v18);
    swift_unknownObjectRelease();
  }

  sub_100007F1C(v20);
  return empty;
}

xpc_object_t sub_100021868(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    empty = a4;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  PropertyListEncoder.init()();
  sub_100007AB4(a1, a1[3]);
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v9;
    v12 = v10;
    swift_unknownObjectRetain();

    sub_100021BC8(v11, v12, empty, a2, a3);
    sub_100021E94(v11, v12);
  }

  return empty;
}

uint64_t static XPCConvertible.from(xpc:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  sub_100021A14(a1, v6, v7, a2, a2, *(a3 + 8));
}

_BYTE *sub_100021A14(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v9 = String.utf8CString.getter();
  v10 = xpc_dictionary_get_value(a1, (v9 + 32));

  if (v10)
  {
    result = xpc_data_get_bytes_ptr(v10);
    if (result)
    {
      v12 = result;
      length = xpc_data_get_length(v10);
      v14 = sub_100021FA0(v12, length);
      v16 = v15;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      sub_100021E94(v14, v16);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v17._countAndFlagsBits = a2;
    v17._object = a3;
    String.append(_:)(v17);
    sub_100007B4C();
    swift_allocError();
    *v18 = 0xD000000000000028;
    *(v18 + 8) = 0x800000010006ADE0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100021BC8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = BYTE6(a2);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(bytes, 0, 14);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v8 = 0;
      goto LABEL_23;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    a1 = __DataStorage._bytes.getter();
    v11 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, a1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v11 += v9 - a1;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    BYTE5(bytes[1]) = BYTE5(a2);
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v8 = v6;
LABEL_23:
    v21 = xpc_data_create(bytes, v8);
    v22 = String.utf8CString.getter();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(a3, (v22 + 32), v21);

    goto LABEL_24;
  }

  v14 = a1;
  v13 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_26;
  }

  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11 = __DataStorage._bytes.getter();
  if (v11)
  {
    v15 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v15))
    {
      v11 += v14 - v15;
      goto LABEL_15;
    }

LABEL_27:
    __break(1u);
  }

LABEL_15:
  v16 = __DataStorage._length.getter();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = xpc_data_create(v11, v18);
  v20 = String.utf8CString.getter();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(a3, (v20 + 32), v19);
  swift_bridgeObjectRelease_n();
LABEL_24:
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100021E94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100021EE8(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_100021FA0(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100021EE8(a1, &a1[a2]);
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

uint64_t sub_100022070()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6470556574617473;
  }
}

uint64_t sub_1000220B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6470556574617473 && a2 == 0xEB00000000657461;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010006AE30 == a2)
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

uint64_t sub_1000221AC(uint64_t a1)
{
  v2 = sub_100022634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000221E8(uint64_t a1)
{
  v2 = sub_100022634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100022224(uint64_t a1)
{
  v2 = sub_100022688();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022260(uint64_t a1)
{
  v2 = sub_100022688();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002229C(uint64_t a1)
{
  v2 = sub_100022730();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000222D8(uint64_t a1)
{
  v2 = sub_100022730();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Notification.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_100007CCC(&qword_100086C28, &qword_100062520);
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100007CCC(&qword_100086C30, &qword_100062528);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_100007CCC(&qword_100086C38, &qword_100062530);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  sub_100007AB4(a1, a1[3]);
  sub_100022634();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v2[2])
  {
    LOBYTE(v22) = 1;
    sub_100022688();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v2[1];
    v22 = *v2;
    v23 = v14;
    sub_1000226DC();
    v15 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v6, v15);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_100022730();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = *v2;
    *&v23 = *(v2 + 2);
    sub_100022784();
    v16 = v19;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v9, v16);
  }

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_100022634()
{
  result = qword_10008B390;
  if (!qword_10008B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B390);
  }

  return result;
}

unint64_t sub_100022688()
{
  result = qword_10008B398;
  if (!qword_10008B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B398);
  }

  return result;
}

unint64_t sub_1000226DC()
{
  result = qword_100086C40;
  if (!qword_100086C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C40);
  }

  return result;
}

unint64_t sub_100022730()
{
  result = qword_10008B3A0;
  if (!qword_10008B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B3A0);
  }

  return result;
}

unint64_t sub_100022784()
{
  result = qword_100086C48;
  if (!qword_100086C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C48);
  }

  return result;
}

double Notification.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002351C(a2, v6);
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

uint64_t Notification.StateUpdate.asCodableEnum.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  a4[3] = &type metadata for Notification;
  a4[4] = sub_1000159E0();
  a4[5] = sub_1000239F4();
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
}

uint64_t sub_100022940()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_10002297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010006A470 == a2)
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

uint64_t sub_100022A5C(uint64_t a1)
{
  v2 = sub_100023A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022A98(uint64_t a1)
{
  v2 = sub_100023A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Notification.StateUpdate.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100007CCC(&qword_100086C58, &qword_100062538);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100007AB4(a1, a1[3]);
  sub_100023A88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_100023ADC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100022CA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  a1[3] = &type metadata for Notification;
  a1[4] = sub_1000159E0();
  a1[5] = sub_1000239F4();
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
}

uint64_t sub_100022D24@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100023B30(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_100022D74(uint64_t a1)
{
  sub_100024CFC();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Notification.ServiceUnavailable.asCodableEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = &type metadata for Notification;
  a5[4] = sub_1000159E0();
  a5[5] = sub_1000239F4();
  v10 = swift_allocObject();
  *a5 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = 1;
}

uint64_t sub_100022EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000010006AE50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010006A470 == a2)
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
  return result;
}

uint64_t sub_100022FD0(uint64_t a1)
{
  v2 = sub_100023CF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002300C(uint64_t a1)
{
  v2 = sub_100023CF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Notification.ServiceUnavailable.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007CCC(&qword_100086C68, &qword_100062540);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100007AB4(a1, a1[3]);
  sub_100023CF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t Notification.ServiceUnavailable.init(from:)(void *a1)
{
  result = sub_100023D48(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100023208@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  a1[3] = &type metadata for Notification;
  a1[4] = sub_1000159E0();
  a1[5] = sub_1000239F4();
  v7 = swift_allocObject();
  *a1 = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = 1;
}

uint64_t sub_1000232A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100023D48(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_1000232F0(uint64_t a1)
{
  sub_100024CA8();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t sub_10002332C(uint64_t a1)
{
  v2 = sub_100023F2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100023368(uint64_t a1)
{
  v2 = sub_100023F2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationResponse.AcknowledgeResponse.encode(to:)(void *a1)
{
  v2 = sub_100007CCC(&qword_100086C70, &qword_100062548);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100007AB4(a1, a1[3]);
  sub_100023F2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000234E0(uint64_t a1)
{
  sub_100023FB0();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_10002351C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100007CCC(&qword_100086D20, &qword_100062EC8);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26[-v4];
  v6 = sub_100007CCC(&qword_100086D28, &qword_100062ED0);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26[-v7];
  v31 = sub_100007CCC(&qword_100086D30, &qword_100062ED8);
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v26[-v10];
  v12 = a1[3];
  v37 = a1;
  sub_100007AB4(a1, v12);
  sub_100022634();
  v13 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100007F1C(v37);
  }

  v32 = v9;
  v14 = v30;
  v15 = KeyedDecodingContainer.allKeys.getter();
  if (*(v15 + 16) != 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    sub_100007CCC(&qword_100086B20, &unk_100061510);
    *v23 = &type metadata for Notification;
    v24 = v31;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    (*(v32 + 8))(v11, v24);
    swift_unknownObjectRelease();
    return sub_100007F1C(v37);
  }

  v16 = v31;
  v27 = *(v15 + 32);
  if (v27)
  {
    LOBYTE(v33) = 1;
    sub_100022688();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1000241A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v5, v3);
    (*(v32 + 8))(v11, v16);
    swift_unknownObjectRelease();
    v17 = v33;
    v18 = v34;
    v20 = v35;
    v19 = v36;
    v14 = v30;
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_100022730();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1000240AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v8, v6);
    (*(v32 + 8))(v11, v16);
    swift_unknownObjectRelease();
    v19 = 0;
    v17 = v33;
    v18 = v34;
    v20 = v35;
  }

  result = sub_100007F1C(v37);
  *v14 = v17;
  *(v14 + 8) = v18;
  *(v14 + 16) = v20;
  *(v14 + 24) = v19;
  *(v14 + 32) = v27;
  return result;
}

unint64_t sub_1000239F4()
{
  result = qword_100086C50;
  if (!qword_100086C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C50);
  }

  return result;
}

uint64_t sub_100023A48()
{
  sub_1000156A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

unint64_t sub_100023A88()
{
  result = qword_10008B3A8;
  if (!qword_10008B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B3A8);
  }

  return result;
}

unint64_t sub_100023ADC()
{
  result = qword_100086C60;
  if (!qword_100086C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C60);
  }

  return result;
}

uint64_t sub_100023B30(void *a1)
{
  v3 = sub_100007CCC(&qword_100086D10, &qword_100062EC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100007AB4(a1, v7);
  sub_100023A88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_100024D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007F1C(a1);
  return v7;
}

unint64_t sub_100023CF4()
{
  result = qword_10008B3B0;
  if (!qword_10008B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B3B0);
  }

  return result;
}

uint64_t sub_100023D48(void *a1)
{
  v3 = sub_100007CCC(&qword_100086D08, &qword_100062EB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100023CF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007F1C(a1);
  return v7;
}

unint64_t sub_100023F2C()
{
  result = qword_10008B3B8[0];
  if (!qword_10008B3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008B3B8);
  }

  return result;
}

unint64_t sub_100023FB0()
{
  result = qword_100086C78;
  if (!qword_100086C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C78);
  }

  return result;
}

unint64_t sub_100024004(uint64_t a1)
{
  result = sub_10002402C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002402C()
{
  result = qword_100086CA8;
  if (!qword_100086CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CA8);
  }

  return result;
}

unint64_t sub_1000240AC()
{
  result = qword_100086CB0;
  if (!qword_100086CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CB0);
  }

  return result;
}

unint64_t sub_100024100(uint64_t a1)
{
  result = sub_100024128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100024128()
{
  result = qword_100086CE0;
  if (!qword_100086CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CE0);
  }

  return result;
}

unint64_t sub_1000241A8()
{
  result = qword_100086CE8;
  if (!qword_100086CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CE8);
  }

  return result;
}

unint64_t sub_1000241FC(uint64_t a1)
{
  result = sub_1000157C8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100024250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002428C()
{
  result = qword_100086CF0;
  if (!qword_100086CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CF0);
  }

  return result;
}

__n128 sub_1000242EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100024300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100024348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 sub_1000243AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000243C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100024458(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024464(uint64_t a1, int a2)
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

uint64_t sub_1000244AC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Query.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Query.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000246D4()
{
  result = qword_10008BC40[0];
  if (!qword_10008BC40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008BC40);
  }

  return result;
}

unint64_t sub_10002472C()
{
  result = qword_10008BE50[0];
  if (!qword_10008BE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008BE50);
  }

  return result;
}

unint64_t sub_100024784()
{
  result = qword_10008C060[0];
  if (!qword_10008C060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C060);
  }

  return result;
}

unint64_t sub_1000247DC()
{
  result = qword_10008C270[0];
  if (!qword_10008C270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C270);
  }

  return result;
}

unint64_t sub_100024834()
{
  result = qword_10008C480[0];
  if (!qword_10008C480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C480);
  }

  return result;
}

unint64_t sub_10002488C()
{
  result = qword_10008C690;
  if (!qword_10008C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C690);
  }

  return result;
}

unint64_t sub_1000248E4()
{
  result = qword_10008C698[0];
  if (!qword_10008C698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C698);
  }

  return result;
}

unint64_t sub_10002493C()
{
  result = qword_10008C720;
  if (!qword_10008C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C720);
  }

  return result;
}

unint64_t sub_100024994()
{
  result = qword_10008C728[0];
  if (!qword_10008C728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C728);
  }

  return result;
}

unint64_t sub_1000249EC()
{
  result = qword_10008C7B0;
  if (!qword_10008C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C7B0);
  }

  return result;
}

unint64_t sub_100024A44()
{
  result = qword_10008C7B8[0];
  if (!qword_10008C7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C7B8);
  }

  return result;
}

unint64_t sub_100024A9C()
{
  result = qword_10008C840;
  if (!qword_10008C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C840);
  }

  return result;
}

unint64_t sub_100024AF4()
{
  result = qword_10008C848[0];
  if (!qword_10008C848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C848);
  }

  return result;
}

unint64_t sub_100024B4C()
{
  result = qword_10008C8D0;
  if (!qword_10008C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C8D0);
  }

  return result;
}

unint64_t sub_100024BA4()
{
  result = qword_10008C8D8[0];
  if (!qword_10008C8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C8D8);
  }

  return result;
}

unint64_t sub_100024BFC()
{
  result = qword_10008C960;
  if (!qword_10008C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C960);
  }

  return result;
}

unint64_t sub_100024C54()
{
  result = qword_10008C968[0];
  if (!qword_10008C968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008C968);
  }

  return result;
}

unint64_t sub_100024CA8()
{
  result = qword_100086CF8;
  if (!qword_100086CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CF8);
  }

  return result;
}

unint64_t sub_100024CFC()
{
  result = qword_100086D00;
  if (!qword_100086D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D00);
  }

  return result;
}

unint64_t sub_100024D50()
{
  result = qword_100086D18;
  if (!qword_100086D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D18);
  }

  return result;
}

uint64_t sub_100024E00()
{
  v1 = *v0;
  v2 = 0x4C65636976726573;
  v3 = 0x506E6F6973736573;
  v4 = 0x6573616261746164;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x5765636976726573;
  if (v1 != 1)
  {
    v5 = 0x7465466574617473;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_100024EE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002A154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100024F14(uint64_t a1)
{
  v2 = sub_1000259A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024F50(uint64_t a1)
{
  v2 = sub_1000259A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100024F8C(uint64_t a1)
{
  v2 = sub_100025AA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024FC8(uint64_t a1)
{
  v2 = sub_100025AA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100025004(uint64_t a1)
{
  v2 = sub_1000259F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025040(uint64_t a1)
{
  v2 = sub_1000259F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002507C(uint64_t a1)
{
  v2 = sub_100025D40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000250B8(uint64_t a1)
{
  v2 = sub_100025D40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000250F4(uint64_t a1)
{
  v2 = sub_100025C98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025130(uint64_t a1)
{
  v2 = sub_100025C98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002516C(uint64_t a1)
{
  v2 = sub_100025B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000251A8(uint64_t a1)
{
  v2 = sub_100025B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000251E4(uint64_t a1)
{
  v2 = sub_100025BF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025220(uint64_t a1)
{
  v2 = sub_100025BF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Request.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v46 = a5;
  v45 = a4;
  v47 = a3;
  v48 = a2;
  v6 = sub_100007CCC(&qword_100086D38, &qword_100062F60);
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v31 - v7;
  v8 = sub_100007CCC(&qword_100086D40, &qword_100062F68);
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v34 = &v31 - v9;
  v33 = sub_100007CCC(&qword_100086D48, &qword_100062F70);
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v31 - v10;
  v11 = sub_100007CCC(&qword_100086D50, &qword_100062F78);
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100007CCC(&qword_100086D58, &qword_100062F80);
  v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = sub_100007CCC(&qword_100086D60, &qword_100062F88);
  v37 = *(v17 - 8);
  v38 = v17;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = sub_100007CCC(&qword_100086D68, &qword_100062F90);
  v21 = *(v20 - 8);
  v49 = v20;
  v50 = v21;
  __chkstk_darwin(v20);
  v23 = &v31 - v22;
  sub_100007AB4(a1, a1[3]);
  sub_1000259A4();
  v24 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v46 <= 1u)
  {
    if (!v46)
    {
      LOBYTE(v51) = 1;
      sub_100025C98();
      v25 = v49;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v48;
      v52 = v47;
      v53 = v45;
      sub_100025CEC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v39 + 8))(v16, v14);
      return (*(v50 + 8))(v23, v25);
    }

    LOBYTE(v51) = 2;
    sub_100025BF0();
    v27 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v51 = v48;
    v52 = v47;
    LOBYTE(v53) = v45 & 1;
    sub_100025C44();
    v28 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v40;
    goto LABEL_13;
  }

  if (v46 == 2)
  {
    LOBYTE(v51) = 5;
    sub_1000259F8();
    v13 = v42;
    v27 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v51 = v48;
    v52 = v47;
    sub_100025A4C();
    v28 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v43;
LABEL_13:
    (*(v29 + 8))(v13, v28);
    return (*(v50 + 8))(v24, v27);
  }

  v27 = v49;
  if (v45 | v47 | v48)
  {
    if (v48 != 1 || v45 | v47)
    {
      LOBYTE(v51) = 4;
      sub_100025AA0();
      v13 = v34;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100025AF4();
      v28 = v36;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = v35;
    }

    else
    {
      LOBYTE(v51) = 3;
      sub_100025B48();
      v13 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100025B9C();
      v28 = v33;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = v32;
    }

    goto LABEL_13;
  }

  LOBYTE(v51) = 0;
  sub_100025D40();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  sub_100025D94();
  v30 = v38;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v37 + 8))(v19, v30);
  return (*(v50 + 8))(v24, v27);
}

unint64_t sub_1000259A4()
{
  result = qword_10008C9F0;
  if (!qword_10008C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C9F0);
  }

  return result;
}

unint64_t sub_1000259F8()
{
  result = qword_10008C9F8;
  if (!qword_10008C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008C9F8);
  }

  return result;
}

unint64_t sub_100025A4C()
{
  result = qword_100086D70;
  if (!qword_100086D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D70);
  }

  return result;
}

unint64_t sub_100025AA0()
{
  result = qword_10008CA00;
  if (!qword_10008CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA00);
  }

  return result;
}

unint64_t sub_100025AF4()
{
  result = qword_100086D78;
  if (!qword_100086D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D78);
  }

  return result;
}

unint64_t sub_100025B48()
{
  result = qword_10008CA08;
  if (!qword_10008CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA08);
  }

  return result;
}

unint64_t sub_100025B9C()
{
  result = qword_100086D80;
  if (!qword_100086D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D80);
  }

  return result;
}

unint64_t sub_100025BF0()
{
  result = qword_10008CA10;
  if (!qword_10008CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA10);
  }

  return result;
}

unint64_t sub_100025C44()
{
  result = qword_100086D88;
  if (!qword_100086D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D88);
  }

  return result;
}

unint64_t sub_100025C98()
{
  result = qword_10008CA18;
  if (!qword_10008CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA18);
  }

  return result;
}

unint64_t sub_100025CEC()
{
  result = qword_100086D90;
  if (!qword_100086D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D90);
  }

  return result;
}

unint64_t sub_100025D40()
{
  result = qword_10008CA20;
  if (!qword_10008CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA20);
  }

  return result;
}

unint64_t sub_100025D94()
{
  result = qword_100086D98;
  if (!qword_100086D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D98);
  }

  return result;
}

uint64_t Request.init(from:)(void *a1)
{
  result = sub_10002A37C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100025E10@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10002A37C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t static Request.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (a8 == 2)
      {
        return 1;
      }
    }

    else if (a3 | a2 | a1)
    {
      if (a1 != 1 || a3 | a2)
      {
        if (a8 == 3 && a5 == 2 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a8 == 3 && a5 == 1 && !(a7 | a6))
      {
        return 1;
      }
    }

    else if (a8 == 3 && !(a7 | a6 | a5))
    {
      return 1;
    }
  }

  else if (a4)
  {
    if (a8 == 1)
    {
      return 1;
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

BOOL sub_100025F40(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) <= 1u)
  {
    if (!*(a1 + 24))
    {
      return !*(a2 + 24);
    }

    return v2 == 1;
  }

  if (*(a1 + 24) == 2)
  {
    return v2 == 2;
  }

  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if (!(*(a1 + 8) | *(a1 + 16) | *a1))
  {
    return v2 == 3 && (v5 | v3 | v4) == 0;
  }

  if (*a1 == 1 && *(a1 + 8) == 0)
  {
    if (v2 != 3 || v4 != 1)
    {
      return 0;
    }
  }

  else if (v2 != 3 || v4 != 2)
  {
    return 0;
  }

  return !(v5 | v3);
}

uint64_t sub_100026024(uint64_t a1)
{
  v2 = sub_10002AF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026060(uint64_t a1)
{
  v2 = sub_10002AF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10002612C()
{
  sub_10000F6F8();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Request.ServiceList.asCodableEnum.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Request;
  a1[4] = sub_10002AE40();
  a1[5] = sub_10002AE94();
  result = swift_allocObject();
  *a1 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 3;
  return result;
}

uint64_t sub_1000261CC(uint64_t a1)
{
  v2 = sub_10002AF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026208(uint64_t a1)
{
  v2 = sub_10002AF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000262CC()
{
  sub_10002E910();

  return static MessageProtocol.xpcKey.getter();
}

systemservicemonitord::Request::ServiceWait __swiftcall Request.ServiceWait.init()()
{
  v0 = INFINITY;
  v1 = 0;
  v2 = 0xE000000000000000;
  result.timeout = v0;
  result.service._object = v2;
  result.service._countAndFlagsBits = v1;
  return result;
}

uint64_t Request.ServiceWait.asCodableEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  a3[3] = &type metadata for Request;
  a3[4] = sub_10002AE40();
  a3[5] = sub_10002AE94();
  v8 = swift_allocObject();
  *a3 = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 40) = 0;
}

uint64_t sub_1000263AC()
{
  if (*v0)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_1000263E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
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

uint64_t sub_1000264BC(uint64_t a1)
{
  v2 = sub_10002AFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000264F8(uint64_t a1)
{
  v2 = sub_10002AFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Request.ServiceWait.encode(to:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_100007CCC(&qword_100086DB8, &qword_100062FA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_100007AB4(a1, a1[3]);
  sub_10002AFD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000266F8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  a1[3] = &type metadata for Request;
  a1[4] = sub_10002AE40();
  a1[5] = sub_10002AE94();
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
}

void sub_10002677C(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_10002B024(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
  }
}

unint64_t sub_1000267CC()
{
  sub_10002E8BC();

  return static MessageProtocol.xpcKey.getter();
}

systemservicemonitord::Request::StateFetch __swiftcall Request.StateFetch.init(serviceIdentifier:poll:)(systemservicemonitord::Request::StateFetch serviceIdentifier, Swift::Bool poll)
{
  v2 = poll;
  serviceIdentifier.poll = v2;
  return serviceIdentifier;
}

uint64_t Request.StateFetch.asCodableEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a3 & 1;
  a4[3] = &type metadata for Request;
  a4[4] = sub_10002AE40();
  a4[5] = sub_10002AE94();
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  *(v8 + 40) = 1;
}

uint64_t sub_1000268A4()
{
  if (*v0)
  {
    return 1819045744;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1000268DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000010006A470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1819045744 && a2 == 0xE400000000000000)
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
  return result;
}

uint64_t sub_1000269C4(uint64_t a1)
{
  v2 = sub_10002B200();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026A00(uint64_t a1)
{
  v2 = sub_10002B200();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Request.StateFetch.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100007CCC(&qword_100086DC0, &qword_100062FB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100007AB4(a1, a1[3]);
  sub_10002B200();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Request.StateFetch.init(from:)(void *a1)
{
  result = sub_10002B254(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100026BF8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  a1[3] = &type metadata for Request;
  a1[4] = sub_10002AE40();
  a1[5] = sub_10002AE94();
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  *(v6 + 40) = 1;
}

uint64_t sub_100026C80@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10002B254(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_100026CD4()
{
  sub_100007AF8();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t sub_100026D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for Request;
  a2[4] = sub_10002AE40();
  a2[5] = sub_10002AE94();
  result = swift_allocObject();
  *a2 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 40) = 3;
  return result;
}

uint64_t sub_100026D80(uint64_t a1)
{
  v2 = sub_10002B42C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026DBC(uint64_t a1)
{
  v2 = sub_10002B42C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100026E44@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for Request;
  a2[4] = sub_10002AE40();
  a2[5] = sub_10002AE94();
  result = swift_allocObject();
  *a2 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 40) = 3;
  return result;
}

unint64_t sub_100026EF0()
{
  sub_10002E868();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Request.InterruptConnection.asCodableEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for Request;
  a3[4] = sub_10002AE40();
  a3[5] = sub_10002AE94();
  v6 = swift_allocObject();
  *a3 = v6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = 2;
}

uint64_t sub_100026FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4965636976726573 && a2 == 0xE900000000000044)
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

uint64_t sub_100027060(uint64_t a1)
{
  v2 = sub_10002B480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002709C(uint64_t a1)
{
  v2 = sub_10002B480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100027160@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for Request;
  a1[4] = sub_10002AE40();
  a1[5] = sub_10002AE94();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0;
  *(v5 + 40) = 2;
}

unint64_t sub_10002726C()
{
  sub_10002E814();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t sub_1000272A8(uint64_t a1)
{
  v2 = sub_10002B4D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000272E4(uint64_t a1)
{
  v2 = sub_10002B4D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100027364(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100007CCC(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000274C8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100007CCC(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000275E8()
{
  sub_10002C114();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_100027644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
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

uint64_t sub_1000276D0(uint64_t a1)
{
  v2 = sub_10002B528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002770C(uint64_t a1)
{
  v2 = sub_10002B528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002778C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v14[1] = a3;
  v9 = sub_100007CCC(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100027918(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_100007CCC(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = sub_100007AB4(a1, a1[3]);
  a4();
  v12 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v15 + 8))(v10, v8);
  }

  sub_100007F1C(a1);
  return v12;
}

uint64_t sub_100027AC8@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = sub_100007CCC(a2, a3);
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_100007F1C(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = sub_100007F1C(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_100027C94(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = sub_100007CCC(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  v14 = *v7;
  sub_100007AB4(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100027DDC()
{
  sub_10002E7C0();

  return static ResponseMessageProtocol.xpcKey.getter();
}

BOOL sub_100027E1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E5E0, v2);

  return v3 != 0;
}

BOOL sub_100027E64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E618, v2);

  return v3 != 0;
}

Swift::Int sub_100027EC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100027F30(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100027F80@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E650, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100027FF0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10007E688, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100028048(uint64_t a1)
{
  v2 = sub_10002BB94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100028084(uint64_t a1)
{
  v2 = sub_10002BB94();

  return CodingKey.debugDescription.getter(a1, v2);
}

xpc_object_t RequestResponse.ServiceList.asXPC(replyTo:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100007B4C();
    swift_allocError();
    *v38 = 0xD000000000000038;
    *(v38 + 8) = 0x800000010006AED0;
    *(v38 + 16) = 2;
    swift_willThrow();
    return empty;
  }

  v11 = swift_unknownObjectRetain();
  reply = xpc_dictionary_create_reply(v11);
  if (!reply)
  {
    sub_100007B4C();
    swift_allocError();
    *v39 = 0xD00000000000003ELL;
    *(v39 + 8) = 0x800000010006AF10;
    *(v39 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    return empty;
  }

  empty = reply;
  v13 = *(a2 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (!v13)
  {
LABEL_35:
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
LABEL_44:
      swift_unknownObjectRetain_n();
      sub_100029B64(v14, empty);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_unknownObjectRetain();
      v41 = xpc_array_create(((v14 & 0xFFFFFFFFFFFFFF8) + 32), v40);
      xpc_dictionary_set_value(empty, "services", v41);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return empty;
  }

  v42[0] = reply;
  v42[1] = a1;
  v47 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v15 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v16 = *(v8 + 72);
  v44 = v10;
  v45 = v16;
  while (1)
  {
    sub_10002B5C8(v15, v10);
    empty = xpc_dictionary_create_empty();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    LOBYTE(bytes[0]) = v10[16];
    sub_100023ADC();
    v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v4)
    {
      swift_unknownObjectRelease();

      sub_10002B62C(v10);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return empty;
    }

    v21 = v19;
    v22 = v20;

    v14 = String.utf8CString.getter();
    xpc_dictionary_set_string(empty, "identifier", (v14 + 32));

    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      break;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 16);
      v43 = *(v21 + 24);
      v14 = v22 & 0x3FFFFFFFFFFFFFFFLL;
      v25 = __DataStorage._bytes.getter();
      if (v25)
      {
        v14 = v22 & 0x3FFFFFFFFFFFFFFFLL;
        v26 = __DataStorage._offset.getter();
        if (__OFSUB__(v24, v26))
        {
          goto LABEL_43;
        }

        v25 += v24 - v26;
      }

      v27 = __OFSUB__(v43, v24);
      v28 = v43 - v24;
      if (v27)
      {
        goto LABEL_41;
      }

      result = __DataStorage._length.getter();
      if (!v25)
      {
        goto LABEL_47;
      }

      if (result >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = result;
      }

      v31 = xpc_data_create(v25, v30);
      xpc_dictionary_set_value(empty, "state", v31);
      swift_unknownObjectRelease();
      sub_100021E94(v21, v22);
LABEL_30:
      v10 = v44;
      goto LABEL_7;
    }

    memset(bytes, 0, 14);
    v17 = 0;
LABEL_6:
    v18 = xpc_data_create(bytes, v17);
    xpc_dictionary_set_value(empty, "state", v18);
    swift_unknownObjectRelease();
    sub_100021E94(v21, v22);
LABEL_7:
    sub_10002B62C(v10);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v15 += v45;
    if (!--v13)
    {
      v14 = v47;
      empty = v42[0];
      goto LABEL_35;
    }
  }

  if (!v23)
  {
    bytes[0] = v21;
    LOWORD(bytes[1]) = v22;
    BYTE2(bytes[1]) = BYTE2(v22);
    BYTE3(bytes[1]) = BYTE3(v22);
    BYTE4(bytes[1]) = BYTE4(v22);
    v17 = BYTE6(v22);
    BYTE5(bytes[1]) = BYTE5(v22);
    goto LABEL_6;
  }

  v43 = 0;
  if (v21 >> 32 < v21)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = __DataStorage._bytes.getter();
  if (v32)
  {
    v33 = v32;
    v14 = v22 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = __DataStorage._offset.getter();
    if (__OFSUB__(v21, v34))
    {
      goto LABEL_42;
    }

    v35 = (v21 - v34 + v33);
    result = __DataStorage._length.getter();
    if (!v35)
    {
      goto LABEL_46;
    }

    if (result >= (v21 >> 32) - v21)
    {
      v36 = (v21 >> 32) - v21;
    }

    else
    {
      v36 = result;
    }

    v37 = xpc_data_create(v35, v36);
    xpc_dictionary_set_value(empty, "state", v37);
    swift_unknownObjectRelease();
    sub_100021E94(v21, v22);
    v4 = v43;
    goto LABEL_30;
  }

  result = __DataStorage._length.getter();
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

xpc_object_t RequestResponse.ServiceList.ServiceInfo.asXPC(replyTo:)(uint64_t a1)
{
  if (a1)
  {
    empty = 0x800000010006AF50;
    sub_100007B4C();
    swift_allocError();
    *v3 = 0xD00000000000003FLL;
    *(v3 + 8) = 0x800000010006AF50;
    *(v3 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100023ADC();
    v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = v4;
      v7 = v5;

      v8 = String.utf8CString.getter();
      xpc_dictionary_set_string(empty, "identifier", (v8 + 32));

      swift_unknownObjectRetain();
      sub_100029C94(v6, v7, empty);
      sub_100021E94(v6, v7);
    }
  }

  return empty;
}

_BYTE *static RequestResponse.ServiceList.ServiceInfo.from(xpc:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = xpc_dictionary_get_value(a1, "state");
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (!xpc_dictionary_get_string(a1, "identifier"))
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_100007B4C();
    swift_allocError();
    *v13 = xmmword_100062F50;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }

  result = xpc_data_get_bytes_ptr(v6);
  if (result)
  {
    v8 = result;
    length = xpc_data_get_length(v6);
    v10 = sub_100021FA0(v8, length);
    v12 = v11;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100024D50();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {
      swift_unknownObjectRelease();
      sub_100021E94(v10, v12);
    }

    else
    {

      v14 = String.init(cString:)();
      v16 = v15;
      swift_unknownObjectRelease();
      sub_100021E94(v10, v12);
      v17 = *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0) + 24);
      v18 = type metadata accessor for XPCEndpoint();
      result = (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
      *a2 = v14;
      *(a2 + 8) = v16;
      *(a2 + 16) = v19;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RequestResponse.ServiceList.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_100086DF8, &qword_100062FE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100007AB4(a1, a1[3]);
  sub_10002BB94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100007CCC(&qword_100086E08, &qword_100062FF0);
  sub_10002E964(&qword_100086E10, &qword_100086E18, &protocol conformance descriptor for RequestResponse.ServiceList.ServiceInfo, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100028B6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002BC30(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100028BB4()
{
  sub_10002C2A4();

  return static ResponseMessageProtocol.xpcKey.getter();
}

void *sub_100028C0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002B688(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100028C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_100028CD0(uint64_t a1)
{
  v2 = sub_10002BDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100028D0C(uint64_t a1)
{
  v2 = sub_10002BDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RequestResponse.StateFetchResponse.encode(to:)(void *a1, char a2)
{
  v4 = sub_100007CCC(&qword_100086E20, &unk_100062FF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100007AB4(a1, a1[3]);
  sub_10002BDEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_100023ADC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100028EA8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002BE40(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100028EF0()
{
  sub_10002C4F4();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_100028F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0) + 24);

  return sub_10002BFB0(v3, a1);
}

uint64_t RequestResponse.ServiceList.ServiceInfo.init(identifier:state:xpcEndpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v6 = a5 + *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0) + 24);

  return sub_10002C020(a4, v6);
}

unint64_t sub_100028FE4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E6C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100029038(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6574617473;
  }

  return 0x6F70646E45637078;
}

uint64_t sub_100029098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  if (v2 != 1)
  {
    v4 = 0x6F70646E45637078;
    v3 = 0xEB00000000746E69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6574617473;
  if (*a2 != 1)
  {
    v8 = 0x6F70646E45637078;
    v7 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000291A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100029250(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000292E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100029390@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028FE4(*a1);
  *a2 = result;
  return result;
}

void sub_1000293C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE500000000000000;
  v5 = 0x6574617473;
  if (v2 != 1)
  {
    v5 = 0x6F70646E45637078;
    v4 = 0xEB00000000746E69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100029428()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0x6F70646E45637078;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_10002948C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100028FE4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000294C0(uint64_t a1)
{
  v2 = sub_10002C090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000294FC(uint64_t a1)
{
  v2 = sub_10002C090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RequestResponse.ServiceList.ServiceInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100007CCC(&qword_100086E28, &qword_100063008);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100007AB4(a1, a1[3]);
  sub_10002C090();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_100023ADC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
    v10[12] = 2;
    type metadata accessor for XPCEndpoint();
    sub_10002CF68(&qword_100086E38, &type metadata accessor for XPCEndpoint, &protocol conformance descriptor for XPCEndpoint);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RequestResponse.ServiceList.ServiceInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_100007CCC(&qword_100086E40, &qword_100063010);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007AB4(a1, a1[3]);
  sub_10002C090();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007F1C(a1);
  }

  v19 = v10;
  v20 = v6;
  v13 = v22;
  v27 = 0;
  v14 = v12;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 1) = v15;
  v25 = 1;
  sub_100024D50();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[16] = v26;
  type metadata accessor for XPCEndpoint();
  v24 = 2;
  sub_10002CF68(&qword_100086E48, &type metadata accessor for XPCEndpoint, &protocol conformance descriptor for XPCEndpoint);
  v16 = v20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v23);
  sub_10002C020(v16, v14 + *(v19 + 24));
  sub_10002B5C8(v14, v21);
  sub_100007F1C(a1);
  return sub_10002B62C(v14);
}

void *sub_100029AC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_10002A0CC(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v2;
}

uint64_t sub_100029B64(uint64_t a1, void *a2)
{
  v3 = sub_100029BD8(a1);
  v4 = *(v3 + 2);

  v5 = xpc_array_create(v3 + 4, v4);
  xpc_dictionary_set_value(a2, "services", v5);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void *sub_100029BD8(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_100029AC8(a1);

      objc_setAssociatedObject(v2, &_swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_100029C94(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(bytes, 0, 14);
      swift_unknownObjectRetain_n();
      v7 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
LABEL_7:
    swift_unknownObjectRetain();
    sub_100029E40(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    return swift_unknownObjectRelease();
  }

  if (v5)
  {
    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v6 = BYTE6(a2);
  BYTE5(bytes[1]) = BYTE5(a2);
  swift_unknownObjectRetain_n();
  v7 = v6;
LABEL_9:
  v11 = xpc_data_create(bytes, v7);
  xpc_dictionary_set_value(a3, "state", v11);
  swift_unknownObjectRelease_n();
  return swift_unknownObjectRelease();
}

char *sub_100029E40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = __DataStorage._length.getter();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  v12 = xpc_data_create(v8, v11);
  xpc_dictionary_set_value(a4, "state", v12);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void *sub_100029EF4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007CCC(&unk_100088330, &qword_100064AB0);
  v10 = *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10002A0CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100007CCC(&qword_1000870F8, &qword_100064AB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10002A154(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4C65636976726573 && a2 == 0xEB00000000747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5765636976726573 && a2 == 0xEB00000000746961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465466574617473 && a2 == 0xEA00000000006863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x506E6F6973736573 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xED00007465736552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010006AF90 == a2)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10002A37C(void *a1)
{
  v64 = sub_100007CCC(&qword_100087110, &qword_100064AD0);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v52 - v2;
  v63 = sub_100007CCC(&qword_100087118, &qword_100064AD8);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v70 = &v52 - v3;
  v59 = sub_100007CCC(&qword_100087120, &qword_100064AE0);
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v69 = &v52 - v4;
  v5 = sub_100007CCC(&qword_100087128, &qword_100064AE8);
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v68 = &v52 - v6;
  v7 = sub_100007CCC(&qword_100087130, &qword_100064AF0);
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_100007CCC(&qword_100087138, &qword_100064AF8);
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v13 = sub_100007CCC(&qword_100087140, &unk_100064B00);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = a1[3];
  v73 = a1;
  v18 = sub_100007AB4(a1, v17);
  sub_1000259A4();
  v19 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v53 = v10;
    v54 = 0;
    v55 = v13;
    v20 = v9;
    v22 = v68;
    v21 = v69;
    v23 = v70;
    v71 = v14;
    v24 = KeyedDecodingContainer.allKeys.getter();
    if (*(v24 + 16) != 1 || (v25 = *(v24 + 32), v25 == 6))
    {
      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v32 = v31;
      sub_100007CCC(&qword_100086B20, &unk_100061510);
      *v32 = &type metadata for Request;
      v18 = v16;
      v33 = v55;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
      swift_willThrow();
      (*(v71 + 8))(v18, v33);
    }

    else
    {
      if (*(v24 + 32) > 2u)
      {
        if (v25 != 3)
        {
          v35 = v71;
          v37 = v54;
          v36 = v55;
          if (v25 == 4)
          {
            LOBYTE(v72) = 4;
            sub_100025AA0();
            v38 = v23;
            v39 = v36;
            v18 = v16;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v37)
            {
              sub_10002C6EC();
              v40 = v63;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v65 + 8))(v38, v40);
              (*(v35 + 8))(v16, v39);
              swift_unknownObjectRelease();
              v18 = 2;
              goto LABEL_11;
            }
          }

          else
          {
            LOBYTE(v72) = 5;
            sub_1000259F8();
            v49 = v67;
            v39 = v36;
            v18 = v16;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v37)
            {
              sub_10002C7E8();
              v50 = v64;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v66 + 8))(v49, v50);
              (*(v35 + 8))(v16, v39);
              swift_unknownObjectRelease();
              v18 = v72;
              goto LABEL_11;
            }
          }

          (*(v35 + 8))(v16, v39);
          goto LABEL_10;
        }

        LOBYTE(v72) = 3;
        sub_100025B48();
        v43 = v21;
        v44 = v54;
        v26 = v55;
        v18 = v16;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v71;
        if (!v44)
        {
          sub_10002C24C();
          v45 = v59;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v62 + 8))(v43, v45);
          (*(v28 + 8))(v16, v26);
          swift_unknownObjectRelease();
          v18 = 1;
          goto LABEL_11;
        }
      }

      else
      {
        if (!*(v24 + 32))
        {
          LOBYTE(v72) = 0;
          sub_100025D40();
          v41 = v54;
          v42 = v55;
          v18 = v16;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v41)
          {
            sub_10002C3A0();
            v51 = v53;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v56 + 8))(v12, v51);
            (*(v71 + 8))(v16, v42);
            swift_unknownObjectRelease();
            v18 = 0;
            goto LABEL_11;
          }

          (*(v71 + 8))(v16, v42);
          goto LABEL_10;
        }

        if (v25 == 1)
        {
          LOBYTE(v72) = 1;
          sub_100025C98();
          v27 = v54;
          v26 = v55;
          v18 = v16;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v71;
          if (!v27)
          {
            sub_10002C49C();
            v29 = v58;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v57 + 8))(v20, v29);
            (*(v28 + 8))(v16, v26);
            swift_unknownObjectRelease();
            v18 = v72;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v72) = 2;
          sub_100025BF0();
          v46 = v22;
          v47 = v54;
          v26 = v55;
          v18 = v16;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v71;
          if (!v47)
          {
            sub_10002C5F0();
            v48 = v61;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v60 + 8))(v46, v48);
            (*(v28 + 8))(v16, v26);
            swift_unknownObjectRelease();
            v18 = v72;
            goto LABEL_11;
          }
        }
      }

      (*(v28 + 8))(v16, v26);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_11:
  sub_100007F1C(v73);
  return v18;
}

unint64_t sub_10002AE40()
{
  result = qword_100088350;
  if (!qword_100088350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088350);
  }

  return result;
}

unint64_t sub_10002AE94()
{
  result = qword_100086DA0;
  if (!qword_100086DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DA0);
  }

  return result;
}

uint64_t sub_10002AEE8()
{
  sub_100013814(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_10002AF28()
{
  result = qword_10008CA28;
  if (!qword_10008CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA28);
  }

  return result;
}

unint64_t sub_10002AF7C()
{
  result = qword_10008CA30;
  if (!qword_10008CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA30);
  }

  return result;
}

unint64_t sub_10002AFD0()
{
  result = qword_10008CA38;
  if (!qword_10008CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA38);
  }

  return result;
}

double sub_10002B024(void *a1)
{
  v4 = sub_100007CCC(&qword_100087108, &qword_100064AC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_100007AB4(a1, a1[3]);
  sub_10002AFD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  sub_100007F1C(a1);
  return v2;
}

unint64_t sub_10002B200()
{
  result = qword_10008CA40;
  if (!qword_10008CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA40);
  }

  return result;
}

uint64_t sub_10002B254(void *a1)
{
  v3 = sub_100007CCC(&qword_100087100, &qword_100064AC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_10002B200();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007F1C(a1);
  return v7;
}

unint64_t sub_10002B42C()
{
  result = qword_10008CA48;
  if (!qword_10008CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA48);
  }

  return result;
}

unint64_t sub_10002B480()
{
  result = qword_10008CA50;
  if (!qword_10008CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA50);
  }

  return result;
}

unint64_t sub_10002B4D4()
{
  result = qword_10008CA58;
  if (!qword_10008CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA58);
  }

  return result;
}

unint64_t sub_10002B528()
{
  result = qword_10008CA60;
  if (!qword_10008CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008CA60);
  }

  return result;
}

uint64_t type metadata accessor for RequestResponse.ServiceList.ServiceInfo(uint64_t a1)
{
  result = qword_10008E7F0;
  if (!qword_10008E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002B5C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B62C(uint64_t a1)
{
  v2 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10002B688(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = xpc_dictionary_get_value(a1, "services");
  if (v11)
  {
    v12 = v11;
    count = xpc_array_get_count(v11);
    if ((count & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
    }

    if (count)
    {
      v14 = 0;
      v2 = &_swiftEmptyArrayStorage;
      v42 = v8;
      v43 = v12;
      v40 = count;
      v41 = v10;
      while (1)
      {
        v15 = xpc_array_get_value(v12, v14);
        v16 = xpc_dictionary_get_value(v15, "state");
        if (!v16)
        {
          goto LABEL_26;
        }

        v17 = v16;
        if (!xpc_dictionary_get_string(v15, "identifier"))
        {
          swift_unknownObjectRelease();
LABEL_26:
          sub_100007B4C();
          swift_allocError();
          *v36 = xmmword_100062F50;
          *(v36 + 16) = 0;
          swift_willThrow();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return v2;
        }

        bytes_ptr = xpc_data_get_bytes_ptr(v17);
        if (!bytes_ptr)
        {
          goto LABEL_30;
        }

        v19 = bytes_ptr;
        length = xpc_data_get_length(v17);
        v46 = v2;
        if (length)
        {
          v21 = length;
          if (length <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v48 = length;
            memcpy(__dst, v19, length);
            v2 = *__dst;
            v24 = v39 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v48 << 16)) << 32);
            v39 = v24;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v22 = __DataStorage.init(bytes:length:)();
            v23 = v22;
            if (v21 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v2 = swift_allocObject();
              v2[2] = 0;
              v2[3] = v21;
              v24 = v23 | 0x8000000000000000;
            }

            else
            {
              v2 = (v21 << 32);
              v24 = v22 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v2 = 0;
          v24 = 0xC000000000000000;
        }

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100024D50();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v3)
        {
          break;
        }

        v25 = __dst[0];
        v26 = String.init(cString:)();
        v28 = v27;
        swift_unknownObjectRelease();
        sub_100021E94(v2, v24);
        v29 = *(v45 + 24);
        v30 = type metadata accessor for XPCEndpoint();
        v31 = v41;
        (*(*(v30 - 8) + 56))(&v41[v29], 1, 1, v30);
        *v31 = v26;
        *(v31 + 8) = v28;
        *(v31 + 16) = v25;
        v32 = v42;
        sub_10002B5C8(v31, v42);
        v2 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_100029EF4(0, v2[2] + 1, 1, v2);
        }

        v34 = v2[2];
        v33 = v2[3];
        v3 = 0;
        if (v34 >= v33 >> 1)
        {
          v2 = sub_100029EF4((v33 > 1), v34 + 1, 1, v2);
        }

        v12 = v43;
        ++v14;
        swift_unknownObjectRelease();
        sub_10002B62C(v31);
        v2[2] = v34 + 1;
        sub_10002EA00(v32, v2 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v34);
        if (v40 == v14)
        {
          goto LABEL_24;
        }
      }

      swift_unknownObjectRelease();
      sub_100021E94(v2, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
LABEL_24:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100007B4C();
    swift_allocError();
    *v35 = xmmword_100062F50;
    *(v35 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10002BB94()
{
  result = qword_100086E00;
  if (!qword_100086E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E00);
  }

  return result;
}

uint64_t sub_10002BBE8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10002BC30(void *a1)
{
  v3 = sub_100007CCC(&qword_1000870E8, &qword_100064AA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100007AB4(a1, a1[3]);
  sub_10002BB94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007F1C(a1);
  }

  else
  {
    sub_100007CCC(&qword_100086E08, &qword_100062FF0);
    sub_10002E964(&qword_1000870F0, &qword_100087028, &protocol conformance descriptor for RequestResponse.ServiceList.ServiceInfo, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007F1C(a1);
  }

  return v7;
}

unint64_t sub_10002BDEC()
{
  result = qword_10008CA68[0];
  if (!qword_10008CA68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008CA68);
  }

  return result;
}

void *sub_10002BE40(void *a1)
{
  v3 = sub_100007CCC(&qword_1000870E0, &qword_100064AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100007AB4(a1, a1[3]);
  sub_10002BDEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007F1C(a1);
  }

  else
  {
    sub_100024D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100007F1C(a1);
  }

  return v7;
}

uint64_t sub_10002BFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C020(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002C090()
{
  result = qword_100086E30;
  if (!qword_100086E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E30);
  }

  return result;
}

unint64_t sub_10002C114()
{
  result = qword_100088310;
  if (!qword_100088310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088310);
  }

  return result;
}

unint64_t sub_10002C168(uint64_t a1)
{
  result = sub_10002C190();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C190()
{
  result = qword_100086E78;
  if (!qword_100086E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E78);
  }

  return result;
}

uint64_t sub_10002C210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002C24C()
{
  result = qword_100086E80;
  if (!qword_100086E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E80);
  }

  return result;
}

unint64_t sub_10002C2A4()
{
  result = qword_100088320;
  if (!qword_100088320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088320);
  }

  return result;
}

unint64_t sub_10002C2F8(uint64_t a1)
{
  result = sub_10002C320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C320()
{
  result = qword_100086EB0;
  if (!qword_100086EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EB0);
  }

  return result;
}

unint64_t sub_10002C3A0()
{
  result = qword_100086EB8;
  if (!qword_100086EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EB8);
  }

  return result;
}

unint64_t sub_10002C3F4(uint64_t a1)
{
  result = sub_10002C41C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C41C()
{
  result = qword_100086EE8;
  if (!qword_100086EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EE8);
  }

  return result;
}

unint64_t sub_10002C49C()
{
  result = qword_100086EF0;
  if (!qword_100086EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EF0);
  }

  return result;
}

unint64_t sub_10002C4F4()
{
  result = qword_100086EF8;
  if (!qword_100086EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EF8);
  }

  return result;
}

unint64_t sub_10002C548(uint64_t a1)
{
  result = sub_10002C570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C570()
{
  result = qword_100086F28;
  if (!qword_100086F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F28);
  }

  return result;
}

unint64_t sub_10002C5F0()
{
  result = qword_100086F30;
  if (!qword_100086F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F30);
  }

  return result;
}

unint64_t sub_10002C644(uint64_t a1)
{
  result = sub_10002C66C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C66C()
{
  result = qword_100086F60;
  if (!qword_100086F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F60);
  }

  return result;
}

unint64_t sub_10002C6EC()
{
  result = qword_100086F68;
  if (!qword_100086F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F68);
  }

  return result;
}

unint64_t sub_10002C740(uint64_t a1)
{
  result = sub_10002C768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C768()
{
  result = qword_100086F98;
  if (!qword_100086F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F98);
  }

  return result;
}

unint64_t sub_10002C7E8()
{
  result = qword_100086FA0;
  if (!qword_100086FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FA0);
  }

  return result;
}

unint64_t sub_10002C83C(uint64_t a1)
{
  result = sub_10002C864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C864()
{
  result = qword_100086FA8;
  if (!qword_100086FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FA8);
  }

  return result;
}

unint64_t sub_10002C8E4()
{
  result = qword_100086FB0;
  if (!qword_100086FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FB0);
  }

  return result;
}

unint64_t sub_10002C938()
{
  result = qword_100086FB8;
  if (!qword_100086FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FB8);
  }

  return result;
}

unint64_t sub_10002C98C(uint64_t a1)
{
  result = sub_10001382C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002C9E0()
{
  result = qword_100086FC0;
  if (!qword_100086FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FC0);
  }

  return result;
}

unint64_t sub_10002CA38()
{
  result = qword_100086FC8;
  if (!qword_100086FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FC8);
  }

  return result;
}

unint64_t sub_10002CA90()
{
  result = qword_100086FD0;
  if (!qword_100086FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FD0);
  }

  return result;
}

unint64_t sub_10002CAE8()
{
  result = qword_100086FD8;
  if (!qword_100086FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FD8);
  }

  return result;
}

unint64_t sub_10002CB3C(uint64_t a1)
{
  result = sub_10002CB64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002CB64()
{
  result = qword_100086FE0;
  if (!qword_100086FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FE0);
  }

  return result;
}

unint64_t sub_10002CBE4()
{
  result = qword_100086FE8;
  if (!qword_100086FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FE8);
  }

  return result;
}

unint64_t sub_10002CC38()
{
  result = qword_100086FF0;
  if (!qword_100086FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FF0);
  }

  return result;
}

unint64_t sub_10002CC8C(uint64_t a1)
{
  result = sub_10002CCB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002CCB4()
{
  result = qword_100086FF8;
  if (!qword_100086FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FF8);
  }

  return result;
}

unint64_t sub_10002CD34()
{
  result = qword_100087000;
  if (!qword_100087000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087000);
  }

  return result;
}

unint64_t sub_10002CD88()
{
  result = qword_100087008;
  if (!qword_100087008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087008);
  }

  return result;
}

unint64_t sub_10002CDE0()
{
  result = qword_100087010;
  if (!qword_100087010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087010);
  }

  return result;
}

unint64_t sub_10002CE38()
{
  result = qword_100087018;
  if (!qword_100087018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087018);
  }

  return result;
}

unint64_t sub_10002CE90()
{
  result = qword_100087020;
  if (!qword_100087020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087020);
  }

  return result;
}

uint64_t sub_10002CEE4(uint64_t a1)
{
  *(a1 + 8) = sub_10002CF68(&qword_100087028, type metadata accessor for RequestResponse.ServiceList.ServiceInfo, &protocol conformance descriptor for RequestResponse.ServiceList.ServiceInfo);
  result = sub_10002CF68(&qword_100086E18, type metadata accessor for RequestResponse.ServiceList.ServiceInfo, &protocol conformance descriptor for RequestResponse.ServiceList.ServiceInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002CF68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002CFB0(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10002CFCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10002CFE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10002D028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10002D070(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_10002D0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10002D104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D154(uint64_t a1, int a2)
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

uint64_t sub_10002D19C(uint64_t result, int a2, int a3)
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

uint64_t sub_10002D230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10002D27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002D3DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002D48C(uint64_t a1)
{
  sub_100015398(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for RequestResponse.ServiceList.ServiceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequestResponse.ServiceList.ServiceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002D8A4()
{
  result = qword_10008E900[0];
  if (!qword_10008E900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008E900);
  }

  return result;
}

unint64_t sub_10002D8FC()
{
  result = qword_10008EB10[0];
  if (!qword_10008EB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008EB10);
  }

  return result;
}

unint64_t sub_10002D954()
{
  result = qword_10008ED20[0];
  if (!qword_10008ED20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008ED20);
  }

  return result;
}

unint64_t sub_10002D9AC()
{
  result = qword_10008EF30[0];
  if (!qword_10008EF30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008EF30);
  }

  return result;
}

unint64_t sub_10002DA04()
{
  result = qword_10008F140[0];
  if (!qword_10008F140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008F140);
  }

  return result;
}

unint64_t sub_10002DA5C()
{
  result = qword_10008F350[0];
  if (!qword_10008F350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008F350);
  }

  return result;
}

unint64_t sub_10002DAB4()
{
  result = qword_10008F560[0];
  if (!qword_10008F560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008F560);
  }

  return result;
}

unint64_t sub_10002DB0C()
{
  result = qword_10008F970[0];
  if (!qword_10008F970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008F970);
  }

  return result;
}

unint64_t sub_10002DB64()
{
  result = qword_10008FB80[0];
  if (!qword_10008FB80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008FB80);
  }

  return result;
}

unint64_t sub_10002DBBC()
{
  result = qword_10008FE90[0];
  if (!qword_10008FE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008FE90);
  }

  return result;
}

unint64_t sub_10002DC14()
{
  result = qword_1000901A0[0];
  if (!qword_1000901A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000901A0);
  }

  return result;
}

unint64_t sub_10002DC6C()
{
  result = qword_1000903B0[0];
  if (!qword_1000903B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000903B0);
  }

  return result;
}

unint64_t sub_10002DCC4()
{
  result = qword_1000904C0;
  if (!qword_1000904C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000904C0);
  }

  return result;
}

unint64_t sub_10002DD1C()
{
  result = qword_1000904C8[0];
  if (!qword_1000904C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000904C8);
  }

  return result;
}

unint64_t sub_10002DD74()
{
  result = qword_100090550;
  if (!qword_100090550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090550);
  }

  return result;
}

unint64_t sub_10002DDCC()
{
  result = qword_100090558[0];
  if (!qword_100090558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090558);
  }

  return result;
}

unint64_t sub_10002DE24()
{
  result = qword_1000905E0;
  if (!qword_1000905E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000905E0);
  }

  return result;
}

unint64_t sub_10002DE7C()
{
  result = qword_1000905E8[0];
  if (!qword_1000905E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000905E8);
  }

  return result;
}

unint64_t sub_10002DED4()
{
  result = qword_100090670;
  if (!qword_100090670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090670);
  }

  return result;
}

unint64_t sub_10002DF2C()
{
  result = qword_100090678;
  if (!qword_100090678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090678);
  }

  return result;
}

unint64_t sub_10002DF84()
{
  result = qword_100090700;
  if (!qword_100090700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090700);
  }

  return result;
}

unint64_t sub_10002DFDC()
{
  result = qword_100090708[0];
  if (!qword_100090708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090708);
  }

  return result;
}

unint64_t sub_10002E034()
{
  result = qword_100090790;
  if (!qword_100090790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090790);
  }

  return result;
}

unint64_t sub_10002E08C()
{
  result = qword_100090798[0];
  if (!qword_100090798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090798);
  }

  return result;
}

unint64_t sub_10002E0E4()
{
  result = qword_100090820;
  if (!qword_100090820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090820);
  }

  return result;
}

unint64_t sub_10002E13C()
{
  result = qword_100090828[0];
  if (!qword_100090828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090828);
  }

  return result;
}

unint64_t sub_10002E194()
{
  result = qword_1000908B0;
  if (!qword_1000908B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000908B0);
  }

  return result;
}

unint64_t sub_10002E1EC()
{
  result = qword_1000908B8[0];
  if (!qword_1000908B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000908B8);
  }

  return result;
}

unint64_t sub_10002E244()
{
  result = qword_100090940;
  if (!qword_100090940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090940);
  }

  return result;
}

unint64_t sub_10002E29C()
{
  result = qword_100090948[0];
  if (!qword_100090948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090948);
  }

  return result;
}

unint64_t sub_10002E2F4()
{
  result = qword_1000909D0;
  if (!qword_1000909D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000909D0);
  }

  return result;
}

unint64_t sub_10002E34C()
{
  result = qword_1000909D8[0];
  if (!qword_1000909D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000909D8);
  }

  return result;
}

unint64_t sub_10002E3A4()
{
  result = qword_100090A60;
  if (!qword_100090A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090A60);
  }

  return result;
}

unint64_t sub_10002E3FC()
{
  result = qword_100090A68[0];
  if (!qword_100090A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090A68);
  }

  return result;
}

unint64_t sub_10002E454()
{
  result = qword_100090AF0;
  if (!qword_100090AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090AF0);
  }

  return result;
}

unint64_t sub_10002E4AC()
{
  result = qword_100090AF8[0];
  if (!qword_100090AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090AF8);
  }

  return result;
}

unint64_t sub_10002E504()
{
  result = qword_100090B80;
  if (!qword_100090B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090B80);
  }

  return result;
}

unint64_t sub_10002E55C()
{
  result = qword_100090B88[0];
  if (!qword_100090B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090B88);
  }

  return result;
}

unint64_t sub_10002E5B4()
{
  result = qword_100090C10;
  if (!qword_100090C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090C10);
  }

  return result;
}

unint64_t sub_10002E60C()
{
  result = qword_100090C18[0];
  if (!qword_100090C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090C18);
  }

  return result;
}

unint64_t sub_10002E664()
{
  result = qword_100090CA0;
  if (!qword_100090CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090CA0);
  }

  return result;
}

unint64_t sub_10002E6BC()
{
  result = qword_100090CA8[0];
  if (!qword_100090CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090CA8);
  }

  return result;
}

unint64_t sub_10002E714()
{
  result = qword_100090D30;
  if (!qword_100090D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090D30);
  }

  return result;
}

unint64_t sub_10002E76C()
{
  result = qword_100090D38[0];
  if (!qword_100090D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090D38);
  }

  return result;
}

unint64_t sub_10002E7C0()
{
  result = qword_1000870B8;
  if (!qword_1000870B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870B8);
  }

  return result;
}

unint64_t sub_10002E814()
{
  result = qword_1000870C0;
  if (!qword_1000870C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870C0);
  }

  return result;
}

unint64_t sub_10002E868()
{
  result = qword_1000870C8;
  if (!qword_1000870C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870C8);
  }

  return result;
}

unint64_t sub_10002E8BC()
{
  result = qword_1000870D0;
  if (!qword_1000870D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870D0);
  }

  return result;
}

unint64_t sub_10002E910()
{
  result = qword_1000870D8;
  if (!qword_1000870D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870D8);
  }

  return result;
}

uint64_t sub_10002E964(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002BBE8(&qword_100086E08, &qword_100062FF0);
    sub_10002CF68(a2, type metadata accessor for RequestResponse.ServiceList.ServiceInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002EA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EAC8()
{
  if (*v0)
  {
    return 0x6575516574617473;
  }

  else
  {
    return 1735289200;
  }
}

uint64_t sub_10002EB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6575516574617473 && a2 == 0xEA00000000007972)
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

uint64_t sub_10002EBE4(uint64_t a1)
{
  v2 = sub_10002F224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002EC20(uint64_t a1)
{
  v2 = sub_10002F224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002EC5C(uint64_t a1)
{
  v2 = sub_10002F320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002EC98(uint64_t a1)
{
  v2 = sub_10002F320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002ECD4(uint64_t a1)
{
  v2 = sub_10002F278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002ED10(uint64_t a1)
{
  v2 = sub_10002F278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Query.encode(to:)(void *a1)
{
  v27 = sub_100007CCC(&qword_100087148, &qword_100064B10);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v21 - v2;
  v26 = sub_100007CCC(&qword_100087150, &qword_100064B18);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v21 - v3;
  v4 = type metadata accessor for Query.Ping(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Query(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100007CCC(&qword_100087158, &qword_100064B20);
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v21 - v12;
  sub_100007AB4(a1, a1[3]);
  sub_10002F224();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10002FC8C(v28, v10, type metadata accessor for Query);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v31 = 1;
    sub_10002F278();
    v14 = v23;
    v15 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10002F2CC();
    v16 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v14, v16);
    return (*(v11 + 8))(v13, v15);
  }

  else
  {
    sub_10002FA7C(v10, v7, type metadata accessor for Query.Ping);
    v30 = 0;
    sub_10002F320();
    v18 = v22;
    v19 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10002FAE4(&qword_100087168, type metadata accessor for Query.Ping, &protocol conformance descriptor for Query.Ping);
    v20 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v18, v20);
    sub_10002F374(v7);
    return (*(v11 + 8))(v13, v19);
  }
}

unint64_t sub_10002F224()
{
  result = qword_100090DC0;
  if (!qword_100090DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DC0);
  }

  return result;
}

unint64_t sub_10002F278()
{
  result = qword_100090DC8;
  if (!qword_100090DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DC8);
  }

  return result;
}

unint64_t sub_10002F2CC()
{
  result = qword_100087160;
  if (!qword_100087160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087160);
  }

  return result;
}

unint64_t sub_10002F320()
{
  result = qword_100090DD0;
  if (!qword_100090DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DD0);
  }

  return result;
}

uint64_t sub_10002F374(uint64_t a1)
{
  v2 = type metadata accessor for Query.Ping(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Query.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100007CCC(&qword_100087170, &qword_100064B28);
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v49 = &v41 - v4;
  v48 = sub_100007CCC(&qword_100087178, &qword_100064B30);
  v43 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v41 - v5;
  v6 = sub_100007CCC(&qword_100087180, &unk_100064B38);
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for Query(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  v18 = a1[3];
  v52 = a1;
  sub_100007AB4(a1, v18);
  sub_10002F224();
  v19 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v41 = v12;
    v42 = v15;
    v20 = v47;
    v21 = v48;
    v22 = v49;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = *(v23 + 16);
    v25 = v6;
    v51 = v23;
    if (v24 == 1)
    {
      v26 = v8;
      if (*(v23 + 32))
      {
        v54 = 1;
        sub_10002F278();
        v27 = v22;
        v28 = v26;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v29 = v46;
        v30 = v50;
        sub_10002FA28();
        v36 = v45;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v44 + 8))(v27, v36);
        (*(v30 + 8))(v28, v6);
        swift_unknownObjectRelease();
        v49 = v17;
        v37 = type metadata accessor for Query.Ping(0);
        v38 = v41;
        (*(*(v37 - 8) + 56))(v41, 1, 1, v37);
      }

      else
      {
        v53 = 0;
        sub_10002F320();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v50;
        v49 = v17;
        v39 = type metadata accessor for Query.Ping(0);
        sub_10002FAE4(&qword_100087190, type metadata accessor for Query.Ping, &protocol conformance descriptor for Query.Ping);
        v38 = v42;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v43 + 8))(v20, v21);
        (*(v34 + 8))(v26, v6);
        swift_unknownObjectRelease();
        (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
        v29 = v46;
      }

      v40 = v49;
      sub_10002FA7C(v38, v49, type metadata accessor for Query);
      sub_10002FA7C(v40, v29, type metadata accessor for Query);
    }

    else
    {
      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      sub_100007CCC(&qword_100086B20, &unk_100061510);
      *v33 = v9;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
      swift_willThrow();
      (*(v50 + 8))(v8, v25);
      swift_unknownObjectRelease();
    }
  }

  return sub_100007F1C(v52);
}

unint64_t sub_10002FA28()
{
  result = qword_100087188;
  if (!qword_100087188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087188);
  }

  return result;
}

uint64_t sub_10002FA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002FAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Query.Ping.asCodableEnum.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Query(0);
  a1[4] = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query, &protocol conformance descriptor for Query);
  a1[5] = sub_10002FAE4(&qword_100087198, type metadata accessor for Query, &protocol conformance descriptor for Query);
  v3 = sub_10001A798(a1);
  sub_10002FC8C(v1, v3, type metadata accessor for Query.Ping);
  v4 = type metadata accessor for Query.Ping(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_10002FC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002FD14(uint64_t a1)
{
  v2 = sub_10002FDD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002FD50(uint64_t a1)
{
  v2 = sub_10002FDD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10002FDD0()
{
  result = qword_100090DD8;
  if (!qword_100090DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DD8);
  }

  return result;
}

uint64_t Query.Ping.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007CCC(&qword_1000871B0, &qword_100064B50);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Query.Ping(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007AB4(a1, a1[3]);
  sub_10002FDD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10002FAE4(&qword_1000871B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10002FA7C(v11, v13, type metadata accessor for Query.Ping);
  }

  return sub_100007F1C(a1);
}

uint64_t sub_1000300C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Query(0);
  a2[4] = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query, &protocol conformance descriptor for Query);
  a2[5] = sub_10002FAE4(&qword_100087198, type metadata accessor for Query, &protocol conformance descriptor for Query);
  v5 = sub_10001A798(a2);
  sub_10002FC8C(v2, v5, type metadata accessor for Query.Ping);
  v6 = *(*(a1 - 8) + 56);

  return v6(v5, 0, 1, a1);
}

unint64_t sub_100030228()
{
  sub_10002FAE4(&qword_100087460, type metadata accessor for Query.Ping, &protocol conformance descriptor for Query.Ping);

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Query.StateQuery.asCodableEnum.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Query(0);
  a1[4] = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query, &protocol conformance descriptor for Query);
  a1[5] = sub_10002FAE4(&qword_100087198, type metadata accessor for Query, &protocol conformance descriptor for Query);
  v2 = sub_10001A798(a1);
  v3 = type metadata accessor for Query.Ping(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t sub_10003037C(uint64_t a1)
{
  v2 = sub_100030438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000303B8(uint64_t a1)
{
  v2 = sub_100030438();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100030438()
{
  result = qword_100090DE0;
  if (!qword_100090DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DE0);
  }

  return result;
}

unint64_t sub_1000304D0()
{
  sub_10003311C();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t sub_10003050C(uint64_t a1)
{
  v2 = sub_1000306C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030548(uint64_t a1)
{
  v2 = sub_1000306C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t QueryResponse.Error.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100007CCC(&qword_1000871C8, &qword_100064B60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1000306C4()
{
  result = qword_100090DE8;
  if (!qword_100090DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DE8);
  }

  return result;
}

void *QueryResponse.Error.init(from:)(void *a1)
{
  v3 = sub_100007CCC(&qword_1000871D0, &qword_100064B68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007F1C(a1);
  return v7;
}

uint64_t sub_100030874@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007CCC(&qword_1000871D0, &qword_100064B68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007F1C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100007F1C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1000309F0(void *a1)
{
  v2 = sub_100007CCC(&qword_1000871C8, &qword_100064B60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100030B2C()
{
  sub_10001AC38();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t Report.PingReport.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100030BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955)
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

uint64_t sub_100030C64(uint64_t a1)
{
  v2 = sub_100030EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030CA0(uint64_t a1)
{
  v2 = sub_100030EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100030D20(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100007CCC(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10002FAE4(&qword_1000871A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100030EA0()
{
  result = qword_100090DF0;
  if (!qword_100090DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DF0);
  }

  return result;
}

uint64_t QueryResponse.PingResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007CCC(&qword_1000871E0, &qword_100064B78);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for QueryResponse.PingResponse(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007AB4(a1, a1[3]);
  sub_100030EA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10002FAE4(&qword_1000871B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10002FA7C(v11, v13, type metadata accessor for QueryResponse.PingResponse);
  }

  return sub_100007F1C(a1);
}

uint64_t sub_1000311B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Report.PingReport.init(sessionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1000312B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100007CCC(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10002FAE4(&qword_1000871A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100031434()
{
  sub_10002FAE4(&qword_100086A88, type metadata accessor for QueryResponse.PingResponse, &protocol conformance descriptor for QueryResponse.PingResponse);

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_1000314A0(uint64_t a1)
{
  v2 = sub_10003167C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000314DC(uint64_t a1)
{
  v2 = sub_10003167C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003155C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100007CCC(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10003167C()
{
  result = qword_100090DF8;
  if (!qword_100090DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DF8);
  }

  return result;
}

uint64_t sub_100031714(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100007CCC(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100031834()
{
  sub_1000330C8();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_100031870(uint64_t a1)
{
  v2 = sub_100031A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000318AC(uint64_t a1)
{
  v2 = sub_100031A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t QueryResponse.ServiceState.encode(to:)(void *a1, char a2)
{
  v4 = sub_100007CCC(&qword_1000871F0, &qword_100064B88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100007AB4(a1, a1[3]);
  sub_100031A30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_100023ADC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_100031A30()
{
  result = qword_100090E00[0];
  if (!qword_100090E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090E00);
  }

  return result;
}

void *sub_100031A9C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100031B20(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100031AE4()
{
  sub_100031E3C();

  return static ResponseMessageProtocol.xpcKey.getter();
}

void *sub_100031B20(void *a1)
{
  v3 = sub_100007CCC(&qword_100087468, &unk_100065890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100007AB4(a1, a1[3]);
  sub_100031A30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007F1C(a1);
  }

  else
  {
    sub_100024D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100007F1C(a1);
  }

  return v7;
}

uint64_t sub_100031C90(uint64_t a1)
{
  *(a1 + 8) = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query, &protocol conformance descriptor for Query);
  result = sub_10002FAE4(&qword_100087198, type metadata accessor for Query, &protocol conformance descriptor for Query);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100031D5C(uint64_t a1)
{
  result = sub_10002FAE4(&qword_100087220, type metadata accessor for Query.Ping, &protocol conformance descriptor for Query.Ping);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100031DB4(uint64_t a1)
{
  *(a1 + 8) = sub_10002FAE4(&qword_100087190, type metadata accessor for Query.Ping, &protocol conformance descriptor for Query.Ping);
  result = sub_10002FAE4(&qword_100087168, type metadata accessor for Query.Ping, &protocol conformance descriptor for Query.Ping);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100031E3C()
{
  result = qword_100087228;
  if (!qword_100087228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087228);
  }

  return result;
}

unint64_t sub_100031E90(uint64_t a1)
{
  result = sub_100031EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100031EB8()
{
  result = qword_100087258;
  if (!qword_100087258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087258);
  }

  return result;
}

unint64_t sub_100031F38(uint64_t a1)
{
  result = sub_100031F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100031F60()
{
  result = qword_100087260;
  if (!qword_100087260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087260);
  }

  return result;
}

unint64_t sub_100031FE0()
{
  result = qword_100087268;
  if (!qword_100087268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087268);
  }

  return result;
}

unint64_t sub_100032034()
{
  result = qword_100087270;
  if (!qword_100087270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087270);
  }

  return result;
}

uint64_t sub_100032088(uint64_t a1)
{
  result = sub_10002FAE4(&qword_100087278, type metadata accessor for QueryResponse.PingResponse, &protocol conformance descriptor for QueryResponse.PingResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000320E0(uint64_t a1)
{
  *(a1 + 8) = sub_10002FAE4(&qword_100087280, type metadata accessor for QueryResponse.PingResponse, &protocol conformance descriptor for QueryResponse.PingResponse);
  result = sub_10002FAE4(&qword_100087288, type metadata accessor for QueryResponse.PingResponse, &protocol conformance descriptor for QueryResponse.PingResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100032164(uint64_t a1)
{
  result = sub_10003218C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003218C()
{
  result = qword_100087290;
  if (!qword_100087290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087290);
  }

  return result;
}

unint64_t sub_10003220C()
{
  result = qword_100087298;
  if (!qword_100087298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087298);
  }

  return result;
}

unint64_t sub_100032260()
{
  result = qword_1000872A0;
  if (!qword_1000872A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872A0);
  }

  return result;
}

unint64_t sub_1000322B4(uint64_t a1)
{
  result = sub_1000322DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000322DC()
{
  result = qword_1000872A8;
  if (!qword_1000872A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872A8);
  }

  return result;
}

uint64_t sub_10003235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100032398()
{
  result = qword_1000872B0;
  if (!qword_1000872B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872B0);
  }

  return result;
}

unint64_t sub_1000323EC()
{
  result = qword_1000872B8;
  if (!qword_1000872B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872B8);
  }

  return result;
}

uint64_t sub_100032454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Query.Ping(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000324D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Query.Ping(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100032554(uint64_t a1)
{
  v1 = type metadata accessor for Query.Ping(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100032620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000326A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100032714(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100032834()
{
  result = qword_100091CC0[0];
  if (!qword_100091CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100091CC0);
  }

  return result;
}

unint64_t sub_10003288C()
{
  result = qword_100091ED0[0];
  if (!qword_100091ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100091ED0);
  }

  return result;
}