unint64_t sub_10001841C()
{
  result = qword_100169CC0;
  if (!qword_100169CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CC0);
  }

  return result;
}

unint64_t sub_100018470()
{
  result = qword_100169CC8;
  if (!qword_100169CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CC8);
  }

  return result;
}

unint64_t sub_1000184C4()
{
  result = qword_100169CD0;
  if (!qword_100169CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CD0);
  }

  return result;
}

unint64_t sub_100018518()
{
  result = qword_100169CD8;
  if (!qword_100169CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CD8);
  }

  return result;
}

unint64_t sub_10001856C()
{
  result = qword_100169CE0;
  if (!qword_100169CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CE0);
  }

  return result;
}

uint64_t sub_1000185C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010011D260 == a2)
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

uint64_t sub_1000186E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v63 = sub_100002BE4(&qword_100169CE8, &qword_10010DA28);
  v59 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v54 - v3;
  v4 = sub_100002BE4(&qword_100169CF0, &qword_10010DA30);
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = sub_100002BE4(&qword_100169CF8, &qword_10010DA38);
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = sub_100002BE4(&qword_100169D00, &unk_10010DA40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - v13;
  v15 = a1[3];
  v65 = a1;
  sub_10000524C(a1, v15);
  sub_100018F50();
  v16 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_1000052E4(v65);
  }

  v17 = v7;
  v55 = 0;
  v56 = v14;
  v18 = v62;
  v19 = v63;
  v64 = v12;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = v20;
  v22 = *(v20 + 16);
  if (!v22 || ((LODWORD(v23) = *(v20 + 32), v22 == 1) ? (v24 = v23 == 3) : (v24 = 1), v24))
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    sub_100002BE4(&qword_100169D10, &qword_100119030);
    *v27 = &type metadata for RemoteNotification.Kind;
    v28 = v56;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!*(v20 + 32))
  {
    v69 = 0;
    sub_10001904C();
    v34 = v55;
    v28 = v56;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v34)
    {
      v68 = 0;
      v35 = v8;
      v36 = KeyedDecodingContainer.decode(_:forKey:)();
      v43 = v42;
      v54 = v36;
      v63 = v21;
      v67 = 1;
      v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v47 = v46;
      v62 = v44;
      v66 = 2;
      v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v55 = 0;
      v50 = v48;
      v52 = v51;
      (*(v60 + 8))(v10, v35);
      (*(v64 + 8))(v56, v11);
      swift_unknownObjectRelease();
      v33 = v61;
      v53 = v62;
      goto LABEL_21;
    }

LABEL_9:
    (*(v64 + 8))(v28, v11);
    swift_unknownObjectRelease();
    return sub_1000052E4(v65);
  }

  if (v23 != 1)
  {
    v73 = 2;
    sub_100018FA4();
    v37 = v55;
    v28 = v56;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = v64;
    v33 = v61;
    if (!v37)
    {
      v72 = 0;
      v41 = v18;
      v54 = KeyedDecodingContainer.decode(_:forKey:)();
      v71 = 1;
      v45 = KeyedDecodingContainer.decode(_:forKey:)();
      v55 = 0;
      v43 = v45;
      v53 = v49;
      (*(v59 + 8))(v41, v19);
      (*(v38 + 8))(v56, v11);
      swift_unknownObjectRelease();
      v47 = 0;
      v50 = 0;
      v52 = 0;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  LODWORD(v63) = 1;
  v70 = 1;
  sub_100018FF8();
  v30 = v17;
  v31 = v55;
  v23 = v56;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v32 = v64;
  v33 = v61;
  if (v31)
  {
    (*(v64 + 8))(v23, v11);
    swift_unknownObjectRelease();
    return sub_1000052E4(v65);
  }

  v39 = v57;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = 0;
  v54 = v40;
  (*(v58 + 8))(v30, v39);
  (*(v32 + 8))(v23, v11);
  swift_unknownObjectRelease();
  v43 = 0;
  v53 = 0;
  v47 = 0;
  v50 = 0;
  v52 = 0;
  LOBYTE(v23) = v63;
LABEL_21:
  result = sub_1000052E4(v65);
  *v33 = v54;
  *(v33 + 8) = v43;
  *(v33 + 16) = v53;
  *(v33 + 24) = v47;
  *(v33 + 32) = v50;
  *(v33 + 40) = v52;
  *(v33 + 48) = v23;
  return result;
}

unint64_t sub_100018F50()
{
  result = qword_100169D08;
  if (!qword_100169D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D08);
  }

  return result;
}

unint64_t sub_100018FA4()
{
  result = qword_100169D18;
  if (!qword_100169D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D18);
  }

  return result;
}

unint64_t sub_100018FF8()
{
  result = qword_100169D20;
  if (!qword_100169D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D20);
  }

  return result;
}

unint64_t sub_10001904C()
{
  result = qword_100169D28;
  if (!qword_100169D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D28);
  }

  return result;
}

unint64_t sub_1000190A0()
{
  result = qword_100169D58;
  if (!qword_100169D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D58);
  }

  return result;
}

unint64_t sub_1000190F4()
{
  result = qword_100169D60;
  if (!qword_100169D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D60);
  }

  return result;
}

uint64_t sub_1000191BC(uint64_t a1, int a2)
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

uint64_t sub_100019204(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000193E8()
{
  result = qword_100169D68;
  if (!qword_100169D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D68);
  }

  return result;
}

unint64_t sub_100019440()
{
  result = qword_100169D70;
  if (!qword_100169D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D70);
  }

  return result;
}

unint64_t sub_100019498()
{
  result = qword_100169D78;
  if (!qword_100169D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D78);
  }

  return result;
}

unint64_t sub_1000194F0()
{
  result = qword_100169D80;
  if (!qword_100169D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D80);
  }

  return result;
}

unint64_t sub_100019548()
{
  result = qword_100169D88;
  if (!qword_100169D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D88);
  }

  return result;
}

unint64_t sub_1000195A0()
{
  result = qword_100169D90;
  if (!qword_100169D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D90);
  }

  return result;
}

unint64_t sub_1000195F8()
{
  result = qword_100169D98;
  if (!qword_100169D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D98);
  }

  return result;
}

unint64_t sub_100019650()
{
  result = qword_100169DA0;
  if (!qword_100169DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DA0);
  }

  return result;
}

unint64_t sub_1000196A8()
{
  result = qword_100169DA8;
  if (!qword_100169DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DA8);
  }

  return result;
}

unint64_t sub_100019700()
{
  result = qword_100169DB0;
  if (!qword_100169DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DB0);
  }

  return result;
}

unint64_t sub_100019758()
{
  result = qword_100169DB8;
  if (!qword_100169DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DB8);
  }

  return result;
}

unint64_t sub_1000197B0()
{
  result = qword_100169DC0;
  if (!qword_100169DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DC0);
  }

  return result;
}

unint64_t sub_100019808()
{
  result = qword_100169DC8;
  if (!qword_100169DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DC8);
  }

  return result;
}

unint64_t sub_100019860()
{
  result = qword_100169DD0;
  if (!qword_100169DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DD0);
  }

  return result;
}

unint64_t sub_1000198B8()
{
  result = qword_100169DD8;
  if (!qword_100169DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DD8);
  }

  return result;
}

unint64_t sub_100019910()
{
  result = qword_100169DE0;
  if (!qword_100169DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DE0);
  }

  return result;
}

unint64_t sub_100019968()
{
  result = qword_100169DE8;
  if (!qword_100169DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DE8);
  }

  return result;
}

unint64_t sub_1000199C0()
{
  result = qword_100169DF0;
  if (!qword_100169DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DF0);
  }

  return result;
}

unint64_t sub_100019A18()
{
  result = qword_100169DF8;
  if (!qword_100169DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DF8);
  }

  return result;
}

unint64_t sub_100019A70()
{
  result = qword_100169E00;
  if (!qword_100169E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E00);
  }

  return result;
}

unint64_t sub_100019AC8()
{
  result = qword_100169E08;
  if (!qword_100169E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E08);
  }

  return result;
}

unint64_t sub_100019B20()
{
  result = qword_100169E10;
  if (!qword_100169E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E10);
  }

  return result;
}

unint64_t sub_100019B78()
{
  result = qword_100169E18;
  if (!qword_100169E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E18);
  }

  return result;
}

unint64_t sub_100019BD0()
{
  result = qword_100169E20;
  if (!qword_100169E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E20);
  }

  return result;
}

unint64_t sub_100019C28()
{
  result = qword_100169E28;
  if (!qword_100169E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E28);
  }

  return result;
}

uint64_t sub_100019C7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
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

uint64_t sub_100019D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100169E30, &qword_10010E590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000524C(a1, a1[3]);
  sub_100019FDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_1000052E4(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_100019FDC()
{
  result = qword_100169E38;
  if (!qword_100169E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E38);
  }

  return result;
}

uint64_t sub_10001A030(void *a1)
{
  v2 = sub_100002BE4(&qword_100169E40, &qword_10010E598);
  v12 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v11 - v3;
  v5 = sub_100002BE4(&qword_100169E48, &qword_10010E5A0);
  v13 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10000524C(a1, a1[3]);
  sub_10001A288();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8 = v12;
  sub_10001A2DC();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v4, v2);
  (*(v13 + 8))(v7, v5);
  sub_1000052E4(a1);
  return v9;
}

unint64_t sub_10001A288()
{
  result = qword_100169E50;
  if (!qword_100169E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E50);
  }

  return result;
}

unint64_t sub_10001A2DC()
{
  result = qword_100169E58;
  if (!qword_100169E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E58);
  }

  return result;
}

unint64_t sub_10001A330()
{
  result = qword_100169E68;
  if (!qword_100169E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelLoadingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ModelLoadingError(_WORD *result, int a2, int a3)
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

unint64_t sub_10001A494()
{
  result = qword_100169E78;
  if (!qword_100169E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E78);
  }

  return result;
}

unint64_t sub_10001A4EC()
{
  result = qword_100169E80;
  if (!qword_100169E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E80);
  }

  return result;
}

unint64_t sub_10001A544()
{
  result = qword_100169E88;
  if (!qword_100169E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E88);
  }

  return result;
}

unint64_t sub_10001A59C()
{
  result = qword_100169E90;
  if (!qword_100169E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E90);
  }

  return result;
}

unint64_t sub_10001A5F4()
{
  result = qword_100169E98;
  if (!qword_100169E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E98);
  }

  return result;
}

unint64_t sub_10001A64C()
{
  result = qword_100169EA0;
  if (!qword_100169EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EA0);
  }

  return result;
}

unint64_t sub_10001A6A4()
{
  result = qword_100169EA8;
  if (!qword_100169EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EA8);
  }

  return result;
}

unint64_t sub_10001A6FC()
{
  result = qword_100169EB0;
  if (!qword_100169EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EB0);
  }

  return result;
}

unint64_t sub_10001A754()
{
  result = qword_100169EB8;
  if (!qword_100169EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EB8);
  }

  return result;
}

unint64_t sub_10001A7AC()
{
  result = qword_100169EC0;
  if (!qword_100169EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EC0);
  }

  return result;
}

unint64_t sub_10001A804()
{
  result = qword_100169EC8;
  if (!qword_100169EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EC8);
  }

  return result;
}

unint64_t sub_10001A85C()
{
  result = qword_100169ED0;
  if (!qword_100169ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169ED0);
  }

  return result;
}

__n128 sub_10001A910(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001A91C(uint64_t *a1, int a2)
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

uint64_t sub_10001A964(uint64_t result, int a2, int a3)
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

void sub_10001A9D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x534555475F444E45;
  v1._object = 0xEE00524553555F54;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_100169ED8 = v4;
}

void sub_10001AA90()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D2F0;
  v2._countAndFlagsBits = 0xD000000000000021;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100169EE8 = v4;
}

void sub_10001AB48()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D2A0;
  v2._countAndFlagsBits = 0xD000000000000023;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100169EF8 = v4;
}

void sub_10001AC00()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D2D0;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100169F08 = v4;
}

uint64_t sub_10001ACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a4;
  v76 = a3;
  v75 = a2;
  v92 = sub_100002BE4(&qword_100169F20, &qword_10010EB20);
  __chkstk_darwin(v92);
  v8 = v69 - v7;
  v9 = sub_100002BE4(&qword_100169F28, &qword_10010EB28);
  __chkstk_darwin(v9);
  v81 = v69 - v10;
  v11 = type metadata accessor for CircularProgressViewStyle();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin(v11);
  v86 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100002BE4(&qword_100169F30, &qword_10010EB30);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v69 - v13;
  v91 = sub_100002BE4(&qword_100169F38, &qword_10010EB38);
  v79 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v69 - v14;
  v15 = sub_100002BE4(&qword_100169F40, &qword_10010EB40);
  v16 = __chkstk_darwin(v15 - 8);
  v80 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v82 = v69 - v18;
  v74 = sub_100002BE4(&qword_100169F48, &qword_10010EB48);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v20 = v69 - v19;
  v72 = sub_100002BE4(&qword_100169F50, &qword_10010EB50);
  v21 = __chkstk_darwin(v72);
  v78 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = v69 - v24;
  __chkstk_darwin(v23);
  v83 = v69 - v26;
  swift_getKeyPath();
  v93 = a1;
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 32) && (swift_getKeyPath(), v93 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), v27 = , *(a1 + 16) == 1))
  {
    v69[3] = v9;
    v70 = v8;
    v71 = a5;
    v69[2] = v69;
    __chkstk_darwin(v27);
    v69[1] = &v69[-6];
    v28 = v75;
    v69[-4] = a1;
    v69[-3] = v28;
    LOBYTE(v69[-2]) = v76 & 1;
    v69[-1] = v77;
    v77 = sub_100002BE4(&qword_100169F78, &qword_10010EBA8);
    v29 = sub_10000459C(&qword_100169F80, &qword_10010EBB0);
    v30 = sub_10000459C(&qword_100169F88, &qword_10010EBB8);
    v31 = sub_10001D248();
    v32 = sub_100012C48(&qword_100169FF8, &qword_100169F88, &qword_10010EBB8, &protocol conformance descriptor for TupleToolbarContent<A>);
    v93 = v29;
    v94 = v30;
    v95 = v31;
    v96 = v32;
    v33 = 1;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    swift_getKeyPath();
    v93 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + 17) == 1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    (*(v73 + 32))(v25, v20, v74);
    *&v25[*(v72 + 36)] = v34;
    sub_10001D504(v25, v83, &qword_100169F50, &qword_10010EB50);
    swift_getKeyPath();
    v93 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = *(a1 + 17);
    v36 = v91;
    if (v35 == 1)
    {
      v37 = v84;
      ProgressView<>.init<>()();
      static Color.gray.getter();
      v38 = v86;
      CircularProgressViewStyle.init(tint:)();
      sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30, &protocol conformance descriptor for ProgressView<A, B>);
      sub_10001D7F8(&qword_100169F60, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
      v40 = v89;
      v39 = v90;
      v41 = v87;
      View.progressViewStyle<A>(_:)();
      (*(v88 + 8))(v38, v40);
      (*(v85 + 8))(v37, v41);
      static UnitPoint.center.getter();
      v42 = v39 + *(v36 + 36);
      __asm { FMOV            V2.2D, #2.0 }

      *v42 = _Q2;
      *(v42 + 16) = v48;
      *(v42 + 24) = v49;
      sub_10001D504(v39, v82, &qword_100169F38, &qword_10010EB38);
      v33 = 0;
    }

    v50 = v82;
    (*(v79 + 56))(v82, v33, 1, v36);
    v51 = v83;
    v52 = v78;
    sub_10000C178(v83, v78, &qword_100169F50, &qword_10010EB50);
    v53 = v80;
    sub_10000C178(v50, v80, &qword_100169F40, &qword_10010EB40);
    v54 = v81;
    sub_10000C178(v52, v81, &qword_100169F50, &qword_10010EB50);
    v55 = sub_100002BE4(&qword_10016A000, &qword_10010EC18);
    sub_10000C178(v53, v54 + *(v55 + 48), &qword_100169F40, &qword_10010EB40);
    sub_100009908(v53, &qword_100169F40, &qword_10010EB40);
    sub_100009908(v52, &qword_100169F50, &qword_10010EB50);
    sub_10000C178(v54, v70, &qword_100169F28, &qword_10010EB28);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_100169F68, &qword_100169F28, &qword_10010EB28, &protocol conformance descriptor for TupleView<A>);
    sub_10001D0E4();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v54, &qword_100169F28, &qword_10010EB28);
    sub_100009908(v50, &qword_100169F40, &qword_10010EB40);
    v56 = v51;
    v57 = &qword_100169F50;
    v58 = &qword_10010EB50;
  }

  else
  {
    v59 = v84;
    ProgressView<>.init<>()();
    static Color.gray.getter();
    v60 = v86;
    CircularProgressViewStyle.init(tint:)();
    sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10001D7F8(&qword_100169F60, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v61 = v89;
    v62 = v90;
    v63 = v87;
    View.progressViewStyle<A>(_:)();
    (*(v88 + 8))(v60, v61);
    (*(v85 + 8))(v59, v63);
    static UnitPoint.center.getter();
    v64 = v62 + *(v91 + 36);
    __asm { FMOV            V2.2D, #2.0 }

    *v64 = _Q2;
    *(v64 + 16) = v66;
    *(v64 + 24) = v67;
    sub_10000C178(v62, v8, &qword_100169F38, &qword_10010EB38);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_100169F68, &qword_100169F28, &qword_10010EB28, &protocol conformance descriptor for TupleView<A>);
    sub_10001D0E4();
    _ConditionalContent<>.init(storage:)();
    v56 = v62;
    v57 = &qword_100169F38;
    v58 = &qword_10010EB38;
  }

  return sub_100009908(v56, v57, v58);
}

uint64_t sub_10001B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v6 = a3;
  v32 = a3;
  v7 = a2;
  v31 = a2;
  v30 = a1;
  v34 = a5;
  v9 = sub_100002BE4(&qword_100169F80, &qword_10010EBB0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v29 = static Alignment.center.getter();
  v28 = v12;
  sub_10001BB8C(a1, v7, v6, a4, &v40);
  v26 = v40;
  v27 = v41;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v7) = static Edge.Set.all.getter();
  v13 = static SafeAreaRegions.all.getter();
  v14 = static Color.black.getter();
  v15 = static Edge.Set.all.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v11[*(v9 + 36)];
  v18 = *(sub_100002BE4(&qword_100169FF0, &qword_10010EBE8) + 28);
  v19 = enum case for ColorScheme.dark(_:);
  v20 = type metadata accessor for ColorScheme();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = KeyPath;
  *(v11 + 1) = v26;
  v21 = v42;
  *(v11 + 88) = v43;
  v22 = v45;
  *(v11 + 104) = v44;
  *(v11 + 120) = v22;
  *(v11 + 136) = v46;
  v23 = v41;
  *(v11 + 40) = v40;
  *(v11 + 56) = v23;
  v24 = v28;
  *v11 = v29;
  *(v11 + 1) = v24;
  *(v11 + 4) = v27;
  *(v11 + 72) = v21;
  *(v11 + 19) = v13;
  v11[160] = v7;
  *(v11 + 161) = *v39;
  *(v11 + 41) = *&v39[3];
  *(v11 + 21) = v14;
  v11[176] = v15;
  v35 = v30;
  v36 = v31;
  v37 = v32;
  v38 = v33;
  sub_100002BE4(&qword_100169F88, &qword_10010EBB8);
  sub_10001D248();
  sub_100012C48(&qword_100169FF8, &qword_100169F88, &qword_10010EBB8, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  return sub_100009908(v11, &qword_100169F80, &qword_10010EBB0);
}

uint64_t sub_10001BB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  swift_getKeyPath();
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 32))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3 & 1;
    *(v10 + 40) = a4;

    v11 = sub_10001DA4C;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(a1 + 24);
  v13 = v12;
  sub_10001D9F4(v11, v10);
  v14 = v13;
  sub_100014104(v11, v10);
  *a5 = v11;
  a5[1] = v10;
  a5[2] = v12;

  return sub_100014104(v11, v10);
}

uint64_t sub_10001BD38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  sub_10001DA5C(a3, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  GeometryProxy.size.getter();
  v6 = v5 * 0.5;
  GeometryProxy.size.getter();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7 * 0.5;
}

uint64_t sub_10001BE24(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10001BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v41 = sub_100002BE4(&qword_10016A008, &qword_10010EC50);
  __chkstk_darwin(v41);
  v36 = &v30 - v9;
  v37 = sub_100002BE4(&qword_10016A010, &qword_10010EC58);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v30 - v10;
  v34 = sub_100002BE4(&qword_10016A018, &qword_10010EC60);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v39 = &v30 - v11;
  v12 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v12 - 8);
  v31 = sub_100002BE4(&qword_10016A020, &qword_10010EC68);
  v40 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v30 - v13;
  static ToolbarItemPlacement.topBarLeading.getter();
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  sub_100002BE4(&qword_10016A028, &qword_10010EC70);
  sub_100012C48(&qword_10016A030, &qword_10016A028, &qword_10010EC70, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.bottomBar.getter();
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  sub_100002BE4(&qword_10016A038, &qword_10010EC78);
  sub_10001D5C4();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarLeading.getter();
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  sub_100002BE4(&qword_10016A078, &qword_10010EC98);
  v14 = sub_10000459C(&qword_10016A080, &unk_10010ECA0);
  v15 = sub_10000459C(&qword_10016A088, &unk_100116A60);
  v16 = sub_100012C48(&qword_10016A090, &qword_10016A080, &unk_10010ECA0, &protocol conformance descriptor for Button<A>);
  v17 = sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
  v54 = v14;
  v55 = v15;
  v56 = &type metadata for Text;
  v57 = v16;
  v58 = v17;
  v59 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v18 = v32;
  ToolbarItem<>.init(placement:content:)();
  v19 = *(v41 + 48);
  v20 = *(v41 + 64);
  v21 = v36;
  v22 = v30;
  v23 = v31;
  (*(v40 + 16))(v36, v30, v31);
  v24 = v33;
  v25 = v39;
  v26 = v34;
  (*(v33 + 16))(&v21[v19], v39, v34);
  v27 = v35;
  v28 = v37;
  (*(v35 + 16))(&v21[v20], v18, v37);
  TupleToolbarContent.init(_:)();
  (*(v27 + 8))(v18, v28);
  (*(v24 + 8))(v25, v26);
  return (*(v40 + 8))(v22, v23);
}

uint64_t sub_10001C4C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v8 - 8);
  static ButtonRole.close.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  return Button<>.init(role:action:)();
}

uint64_t sub_10001C5C0(uint64_t a1)
{
  swift_getKeyPath();
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A36D0(0xD00000000000001FLL, 0x800000010011D340);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001C690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a5;
  v8 = sub_100002BE4(&qword_10016A048, &unk_10010EC80);
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = sub_100002BE4(&qword_10016A0B0, &qword_10010ECC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23[-v13];
  swift_getKeyPath();
  v26 = a2;
  sub_10001D7F8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + 32) == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = v24 & 1;
    *(v15 + 40) = a4;

    sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    Button.init(action:label:)();
    static Color.red.getter();
    v16 = Color.opacity(_:)();

    KeyPath = swift_getKeyPath();
    v18 = &v10[*(v8 + 36)];
    *v18 = KeyPath;
    v18[1] = v16;
    sub_10001D684();
    View.bold(_:)();
    sub_100009908(v10, &qword_10016A048, &unk_10010EC80);
    v19 = v25;
    (*(v12 + 32))(v25, v14, v11);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v21 = v25;
  }

  return (*(v12 + 56))(v21, v20, 1, v11);
}

double sub_10001C98C@<D0>(uint64_t a1@<X8>)
{
  if (qword_100168EC0 != -1)
  {
    swift_once();
  }

  sub_100012928();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = 8.0;
  *(a1 + 40) = xmmword_10010EA70;
  *(a1 + 56) = xmmword_10010EA70;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10001CA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_100002BE4(&qword_10016A080, &unk_10010ECA0);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  v29 = v11;
  Button.init(action:label:)();
  if (qword_100168EC8 != -1)
  {
    swift_once();
  }

  v32 = xmmword_100169EE8;
  sub_100012928();

  v13 = Text.init<A>(_:)();
  v26 = v14;
  v27 = v13;
  v16 = v15;
  v18 = v17;
  v34 = a3 & 1;
  v35 = a4;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  v19 = State.projectedValue.getter();
  v25 = v24;
  v24[1] = v33;
  __chkstk_darwin(v19);
  sub_100002BE4(&qword_10016A088, &unk_100116A60);
  sub_100012C48(&qword_10016A090, &qword_10016A080, &unk_10010ECA0, &protocol conformance descriptor for Button<A>);
  sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
  v20 = v31;
  v21 = v27;
  v22 = v29;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_10001297C(v21, v16, v18 & 1);

  return (*(v30 + 8))(v22, v20);
}

uint64_t sub_10001CDE0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10001CE20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  if (qword_100168ED8 != -1)
  {
    swift_once();
  }

  v14 = xmmword_100169F08;

  static ButtonRole.destructive.getter();
  v11 = type metadata accessor for ButtonRole();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3 & 1;
  *(v12 + 40) = a4;
  sub_100012928();

  return Button<>.init<A>(_:role:action:)();
}

uint64_t sub_10001CFC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100168ED0 != -1)
  {
    swift_once();
  }

  sub_100012928();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001D068@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *a2 = static Alignment.center.getter();
  a2[1] = v8;
  v9 = sub_100002BE4(&qword_100169F18, &qword_10010EB18);
  return sub_10001ACB8(v4, v5, v6, v7, a2 + *(v9 + 44));
}

unint64_t sub_10001D0E4()
{
  result = qword_100169F70;
  if (!qword_100169F70)
  {
    sub_10000459C(&qword_100169F38, &qword_10010EB38);
    sub_10000459C(&qword_100169F30, &qword_10010EB30);
    type metadata accessor for CircularProgressViewStyle();
    sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10001D7F8(&qword_100169F60, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169F70);
  }

  return result;
}

unint64_t sub_10001D248()
{
  result = qword_100169F90;
  if (!qword_100169F90)
  {
    sub_10000459C(&qword_100169F80, &qword_10010EBB0);
    sub_10001D300();
    sub_100012C48(&qword_100169FE8, &qword_100169FF0, &qword_10010EBE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169F90);
  }

  return result;
}

unint64_t sub_10001D300()
{
  result = qword_100169F98;
  if (!qword_100169F98)
  {
    sub_10000459C(&qword_100169FA0, &qword_10010EBC0);
    sub_10001D3B8();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169F98);
  }

  return result;
}

unint64_t sub_10001D3B8()
{
  result = qword_100169FA8;
  if (!qword_100169FA8)
  {
    sub_10000459C(&qword_100169FB0, &qword_10010EBC8);
    sub_10001D444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169FA8);
  }

  return result;
}

unint64_t sub_10001D444()
{
  result = qword_100169FB8;
  if (!qword_100169FB8)
  {
    sub_10000459C(&qword_100169FC0, &qword_10010EBD0);
    sub_100012C48(&qword_100169FC8, &qword_100169FD0, &qword_10010EBD8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169FB8);
  }

  return result;
}

uint64_t sub_10001D504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002BE4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001D5C4()
{
  result = qword_10016A040;
  if (!qword_10016A040)
  {
    sub_10000459C(&qword_10016A038, &qword_10010EC78);
    sub_10000459C(&qword_10016A048, &unk_10010EC80);
    sub_10001D684();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A040);
  }

  return result;
}

unint64_t sub_10001D684()
{
  result = qword_10016A050;
  if (!qword_10016A050)
  {
    sub_10000459C(&qword_10016A048, &unk_10010EC80);
    sub_100012C48(&qword_10016A058, &qword_10016A060, &qword_100113B50, &protocol conformance descriptor for Button<A>);
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A050);
  }

  return result;
}

uint64_t sub_10001D7F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001D8A0()
{
  result = qword_10016A0C0;
  if (!qword_10016A0C0)
  {
    sub_10000459C(&qword_10016A0B8, &qword_10010ECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A0C0);
  }

  return result;
}

uint64_t sub_10001D924@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001D950@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001D9F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001DA04()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10001DA5C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a2 + 40);
  if (v3)
  {
    [v3 videoFrameSize];
    if (v4 > 0.0 && v5 > 0.0)
    {
      sub_10002FAC4(COERCE__INT64(v5 / v4), 0);
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + 56))
  {
    GeometryProxy.size.getter();
    v7 = v6;
  }

  else
  {
    v8 = *(a2 + 48);
    GeometryProxy.size.getter();
    v7 = v10;
    if (v8 > 1.0)
    {
      v7 = v9 / v8;
    }
  }

  GeometryProxy.size.getter();
  return v7;
}

id sub_10001DC30(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC17AppleVisionProApp21PrivacyViewController_buttonHandler];
  *v3 = a1;
  *(v3 + 1) = a2;
  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v13._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0x5F59434156495250;
  v6._object = 0xED0000454C544954;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v13);

  v9 = String._bridgeToObjectiveC()();

  v12.receiver = v2;
  v12.super_class = type metadata accessor for PrivacyViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

void sub_10001DD64(uint64_t a1)
{
  v49.receiver = v1;
  v49.super_class = type metadata accessor for PrivacyViewController();
  objc_msgSendSuper2(&v49, "viewDidLoad");
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v50._object = 0xE000000000000000;
  v4._object = 0x800000010011D460;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v50);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v2 mainBundle];
  v51._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x800000010011D480;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v51);

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  [v1 addBulletedListItemWithTitle:v7 description:v12 symbolName:v13];

  v14 = [v2 mainBundle];
  v52._object = 0xE000000000000000;
  v15._object = 0x800000010011D4A0;
  v15._countAndFlagsBits = 0xD000000000000018;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v52);

  v18 = String._bridgeToObjectiveC()();

  v19 = [v2 mainBundle];
  v53._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  v20._object = 0x800000010011D4C0;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v53);

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();
  [v1 addBulletedListItemWithTitle:v18 description:v23 symbolName:v24];

  v25 = [v2 mainBundle];
  v54._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD00000000000001ALL;
  v26._object = 0x800000010011D500;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v54);

  v29 = String._bridgeToObjectiveC()();

  v30 = [v2 mainBundle];
  v55._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000020;
  v31._object = 0x800000010011D520;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v55);

  v34 = String._bridgeToObjectiveC()();

  v35 = String._bridgeToObjectiveC()();
  [v1 addBulletedListItemWithTitle:v29 description:v34 symbolName:v35];

  v36 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v36];

  v37 = [objc_opt_self() boldButton];
  v38 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v38];

  [v37 addTarget:v1 action:"didTapContinueButton" forControlEvents:64];
  v39 = [v2 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000010;
  v56._object = 0xE000000000000000;
  v40._object = 0x800000010011D590;
  v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v41.value._object = 0xEB00000000656C62;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v56);

  v43 = String._bridgeToObjectiveC()();

  [v37 setTitle:v43 forState:0];

  v44 = [v1 buttonTray];
  [v44 addButton:v37];

  v45 = [v1 buttonTray];
  sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10010D3B0;
  *(v46 + 32) = static BundleIdentifierConstants.privacyBundleIdentifier.getter();
  *(v46 + 40) = v47;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 setPrivacyLinkForBundles:isa];
}

id sub_10001E4A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PrivacyViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001E510()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(type metadata accessor for PrivacyViewController());

  return sub_10001DC30(v1, v2);
}

uint64_t sub_10001E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001E708();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001E708();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001E66C(uint64_t a1)
{
  sub_10001E708();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001E6A8()
{
  result = qword_10016A108;
  if (!qword_10016A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A108);
  }

  return result;
}

unint64_t sub_10001E708()
{
  result = qword_10016A110;
  if (!qword_10016A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A110);
  }

  return result;
}

uint64_t sub_10001E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001E840(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EpicShowcaseComponentModel(uint64_t a1)
{
  result = qword_10016A178;
  if (!qword_10016A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E93C(uint64_t a1)
{
  sub_10001EA88();
  if (v1 <= 0x3F)
  {
    sub_10001EB04(319);
    if (v2 <= 0x3F)
    {
      sub_10001EBF0(319, &qword_10016A1A8, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10001EBF0(319, &qword_10016A1B0, &type metadata for TVImagesModel);
        if (v4 <= 0x3F)
        {
          sub_10001EC3C(319, &qword_10016A1B8, &qword_10016A1C0, &qword_10010EF28);
          if (v5 <= 0x3F)
          {
            sub_10001EC3C(319, &qword_10016A1C8, &unk_10016A1D0, &qword_10010EF30);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10001EA88()
{
  if (!qword_10016A188)
  {
    v0 = type metadata accessor for CodeAnyHashable();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A188);
    }
  }
}

void sub_10001EB04(uint64_t a1)
{
  if (!qword_10016A190)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    sub_10001EB74();
    v1 = type metadata accessor for CodeByExpressibleByJSON();
    if (!v2)
    {
      atomic_store(v1, &qword_10016A190);
    }
  }
}

unint64_t sub_10001EB74()
{
  result = qword_10016A1A0;
  if (!qword_10016A1A0)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A1A0);
  }

  return result;
}

void sub_10001EBF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001EC3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000459C(a3, a4);
    v5 = type metadata accessor for DiscardOnError();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_10001EC90(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001ECA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10001ED00(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10001ED74(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65726E6567;
    v7 = 0x657A696C61636F6CLL;
    if (a1 != 10)
    {
      v7 = 0x6567646162;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x736567616D69;
    v9 = 0xD000000000000011;
    if (a1 != 7)
    {
      v9 = 0x6575676573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x656C746974;
    v3 = 1701869940;
    if (a1 != 4)
    {
      v3 = 7107189;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x65746F4E676E6F6CLL;
    if (a1 != 1)
    {
      v4 = 0x746F4E74726F6873;
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

uint64_t sub_10001EEDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002014C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001EF10(uint64_t a1)
{
  v2 = sub_10001FCD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001EF4C(uint64_t a1)
{
  v2 = sub_10001FCD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EF88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v85 = type metadata accessor for FlowAction(0);
  __chkstk_darwin(v85);
  v86 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002BE4(&qword_10016A198, &qword_10010EF20);
  __chkstk_darwin(v4 - 8);
  v94 = v79 - v5;
  v91 = sub_100002BE4(&qword_10016A240, &unk_10010F040);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v7 = v79 - v6;
  v8 = type metadata accessor for EpicShowcaseComponentModel(0);
  v9 = __chkstk_darwin(v8);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 20);
  v13 = type metadata accessor for ImpressionMetrics();
  v14 = *(*(v13 - 8) + 56);
  v95 = v12;
  v88 = v13;
  v14(&v11[v12], 1, 1);
  v15 = v8[11];
  sub_10001FC78(v106);
  v96 = v15;
  memcpy(&v11[v15], v106, 0x150uLL);
  v16 = &v11[v8[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v11[v8[13]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v8[14];
  *&v11[v18] = 0;
  v19 = v8[15];
  v97 = v11;
  v20 = &v11[v19];
  memset(v105, 0, 40);
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v92 = &v11[v19];
  sub_10001FD78(v105, &v11[v19], &qword_10016A248, &qword_100114390);
  v21 = a1[3];
  v93 = a1;
  sub_10000524C(a1, v21);
  sub_10001FCD0();
  v90 = v7;
  v22 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v107 = v22;
    v29 = v97;
    sub_1000052E4(v93);
    v94 = 0;
LABEL_4:
    v30 = v96;
    sub_100009908(v29 + v95, &qword_10016A118, &unk_10010EEF0);

    memcpy(v105, (v29 + v30), sizeof(v105));
    sub_100009908(v105, &qword_10016A258, &qword_10010F050);

    return sub_100009908(v92, &qword_10016A230, &unk_10010F030);
  }

  v23 = v89;
  v83 = v16;
  v84 = v18;
  v24 = v94;
  v82 = v17;
  LOBYTE(v105[0]) = 0;
  v25 = v90;
  v26 = v91;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = 0;
  v32 = 1701736302;
  if (v28)
  {
    v32 = v27;
  }

  v33 = 0xE400000000000000;
  if (v28)
  {
    v33 = v28;
  }

  v105[0] = v32;
  v105[1] = v33;
  v34 = v97;
  AnyHashable.init<A>(_:)();
  LOBYTE(v105[0]) = 1;
  v35 = v107;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v35)
  {
    v107 = v35;
    (*(v23 + 8))(v25, v26);
    v80 = 0;
    v38 = v34;
    sub_1000052E4(v93);
    v94 = 0;
    v81 = 0;
LABEL_12:
    v29 = v38;
    sub_100009908(v38, &qword_10016A238, &qword_100114380);
    goto LABEL_4;
  }

  v39 = (v34 + v8[6]);
  *v39 = v36;
  v39[1] = v37;
  v79[2] = v37;
  LOBYTE(v105[0]) = 2;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = (v34 + v8[7]);
  *v41 = v40;
  v41[1] = v42;
  v79[1] = v42;
  LOBYTE(v105[0]) = 3;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = (v34 + v8[8]);
  *v44 = v43;
  v44[1] = v45;
  v80 = v45;
  LOBYTE(v105[0]) = 4;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = (v34 + v8[9]);
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v105[0]) = 5;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = 0;
  v51 = (v34 + v8[10]);
  *v51 = v49;
  v51[1] = v50;
  v81 = v50;
  v104[343] = 6;
  v52 = v49;
  sub_10001FD24();
  v53 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v107 = v53;
  if (v53)
  {
    (*(v23 + 8))(v25, v26);
    sub_1000052E4(v93);
    v94 = 0;
    v38 = v34;
    goto LABEL_12;
  }

  v79[0] = v52;
  memcpy(v103, v105, sizeof(v103));
  v54 = v96;
  memcpy(v104, (v34 + v96), 0x150uLL);
  sub_100009908(v104, &qword_10016A258, &qword_10010F050);
  memcpy((v34 + v54), v103, 0x150uLL);
  LOBYTE(v98) = 7;
  sub_10001FFCC(&qword_10016A268, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
  v55 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v107 = v55;
  if (v55 || (sub_10001FD78(v24, &v97[v95], &qword_10016A198, &qword_10010EF20), sub_100002BE4(&qword_10016A270, &qword_10010F058), v102 = 9, sub_10001FDE0(), v56 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v56) != 0))
  {
    (*(v23 + 8))(v25, v26);
    sub_1000052E4(v93);
LABEL_18:
    v94 = 0;
    v38 = v97;
    goto LABEL_12;
  }

  *&v97[v84] = v98;
  LOBYTE(v98) = 10;
  v57 = v25;
  v58 = v107;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v60;
  v107 = v58;
  if (v58)
  {
    (*(v23 + 8))(v25, v91);
    sub_1000052E4(v93);
    goto LABEL_18;
  }

  v61 = v83;
  v62 = v94;
  *v83 = v59;
  v61[1] = v62;
  LOBYTE(v98) = 11;
  v63 = v107;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = v63;
  if (v63)
  {
    (*(v23 + 8))(v25, v91);
    sub_1000052E4(v93);
    v38 = v97;
    goto LABEL_12;
  }

  v66 = v81;
  v67 = v82;
  *v82 = v64;
  v67[1] = v65;
  if (v66)
  {
    v98 = v79[0];
    v99 = v81;

    v68._object = 0x800000010011D5B0;
    v68._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v68);
    v69 = v98;
    v70 = v99;
    v71 = v85;
    v72 = v86;
    static ActionMetrics.notInstrumented.getter();
    v73 = v72 + *(v71 + 24);
    *(v73 + 3) = &type metadata for TVPageIntent;
    *(v73 + 4) = sub_10001FF78();
    *v73 = v69;
    *(v73 + 1) = v70;
    v73[40] = 0;
    v74 = static FlowActionPresentation.sheetPresent.getter();
    *v72 = 0x656761507674;
    v72[1] = 0xE600000000000000;
    v75 = (v72 + *(v71 + 28));
    *v75 = v74;
    v75[1] = v76;
    v100 = v71;
    v101 = sub_10001FFCC(&qword_10016A290, type metadata accessor for FlowAction, &unk_1001183E4);
    v77 = sub_100020014(&v98);
    sub_100020078(v72, v77);
    (*(v23 + 8))(v57, v91);
    sub_10001FD78(&v98, v92, &qword_10016A248, &qword_100114390);
  }

  else
  {
    (*(v23 + 8))(v25, v91);
  }

  v78 = v97;
  sub_10001FEB8(v97, v87);
  sub_1000052E4(v93);
  return sub_10001FF1C(v78);
}

double sub_10001F974@<D0>(uint64_t a1@<X8>)
{
  sub_10000C178(v1, v5, &qword_10016A238, &qword_100114380);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_10001F9CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 60), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10001FA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_10000C178(v2 + *(a1 + 20), &v9 - v6, &qword_10016A118, &unk_10010EEF0);
  return sub_1000200DC(v7, a2);
}

uint64_t sub_10001FAF4()
{
  v1 = 25705;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_10001FB4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002050C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001FB74(uint64_t a1)
{
  v2 = sub_100020968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001FBB0(uint64_t a1)
{
  v2 = sub_100020968();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001FBEC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100020668(a2, v7);
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

_OWORD *sub_10001FC78(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  return result;
}

unint64_t sub_10001FCD0()
{
  result = qword_10016A250;
  if (!qword_10016A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A250);
  }

  return result;
}

unint64_t sub_10001FD24()
{
  result = qword_10016A260;
  if (!qword_10016A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A260);
  }

  return result;
}

uint64_t sub_10001FD78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002BE4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001FDE0()
{
  result = qword_10016A278;
  if (!qword_10016A278)
  {
    sub_10000459C(&qword_10016A270, &qword_10010F058);
    sub_10001FE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A278);
  }

  return result;
}

unint64_t sub_10001FE64()
{
  result = qword_10016A280;
  if (!qword_10016A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A280);
  }

  return result;
}

uint64_t sub_10001FEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FF1C(uint64_t a1)
{
  v2 = type metadata accessor for EpicShowcaseComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001FF78()
{
  result = qword_10016A288;
  if (!qword_10016A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A288);
  }

  return result;
}

uint64_t sub_10001FFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_100020014(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100020078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000200DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A198, &qword_10010EF20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002014C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F4E676E6F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F4E74726F6873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED00006570795464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10002050C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_100020668@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A298, &qword_10010F060);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000524C(a1, a1[3]);
  sub_100020968();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000052E4(a1);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    return sub_1000209BC(&v35);
  }

  else
  {
    LOBYTE(v35) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v6;
    v30 = v10;
    v28 = a2;
    LOBYTE(v35) = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    LOBYTE(v35) = 2;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v43 = 3;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = *(v29 + 8);
    v29 = v17;
    v19 = v8;
    v21 = v20;
    v18(v19, v5);
    v22 = v30;
    *&v31 = v9;
    *(&v31 + 1) = v30;
    *&v32 = v11;
    *(&v32 + 1) = v13;
    *&v33 = v14;
    *(&v33 + 1) = v16;
    *&v34 = v29;
    *(&v34 + 1) = v21;
    sub_1000209EC(&v31, &v35);
    sub_1000052E4(a1);
    v35 = v9;
    v36 = v22;
    v37 = v11;
    v38 = v13;
    v39 = v14;
    v40 = v16;
    v41 = v29;
    v42 = v21;
    result = sub_1000209BC(&v35);
    v24 = v32;
    v25 = v28;
    *v28 = v31;
    v25[1] = v24;
    v26 = v34;
    v25[2] = v33;
    v25[3] = v26;
  }

  return result;
}

unint64_t sub_100020968()
{
  result = qword_10016A2A0;
  if (!qword_10016A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EpicShowcaseComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EpicShowcaseComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100020B88()
{
  result = qword_10016A2A8;
  if (!qword_10016A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2A8);
  }

  return result;
}

unint64_t sub_100020BE0()
{
  result = qword_10016A2B0;
  if (!qword_10016A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2B0);
  }

  return result;
}

unint64_t sub_100020C38()
{
  result = qword_10016A2B8;
  if (!qword_10016A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2B8);
  }

  return result;
}

unint64_t sub_100020C90()
{
  result = qword_10016A2C0;
  if (!qword_10016A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2C0);
  }

  return result;
}

unint64_t sub_100020CE8()
{
  result = qword_10016A2C8;
  if (!qword_10016A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2C8);
  }

  return result;
}

unint64_t sub_100020D40()
{
  result = qword_10016A2D0;
  if (!qword_10016A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2D0);
  }

  return result;
}

uint64_t sub_100020DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tip(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tip(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TipLabelView(uint64_t a1)
{
  result = qword_10016A330;
  if (!qword_10016A330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100020EE4(uint64_t a1)
{
  result = type metadata accessor for Tip(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100020F6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v3 = sub_100002BE4(&qword_10016A370, &qword_10010F2F8);
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v67 = (&v67 - v4);
  v5 = sub_100002BE4(&qword_10016A378, &unk_10010F300);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v67 - v8;
  v79 = type metadata accessor for AutomationSemantics();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v74);
  v11 = &v67 - v10;
  v76 = sub_100002BE4(&qword_10016A380, &qword_10010F310);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v67 - v12;
  v13 = sub_100002BE4(&qword_10016A388, &qword_10010F318);
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = __chkstk_darwin(v13);
  v80 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v67 - v16;
  v83 = a1;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  *&v90 = v17;
  *(&v90 + 1) = v18;
  sub_100012928();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.headline.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10001297C(v19, v21, v23 & 1);

  static Font.Weight.bold.getter();
  v29 = Text.fontWeight(_:)();
  v31 = v30;
  LOBYTE(v21) = v32;
  v34 = v33;
  sub_10001297C(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v71 = v29;
  *&v90 = v29;
  *(&v90 + 1) = v31;
  v70 = v31;
  v36 = v21 & 1;
  LOBYTE(v91) = v21 & 1;
  *(&v91 + 1) = v34;
  v92 = KeyPath;
  v93 = 0;
  v37 = enum case for DynamicTypeSize.accessibility2(_:);
  v38 = type metadata accessor for DynamicTypeSize();
  (*(*(v38 - 8) + 104))(v11, v37, v38);
  sub_1000128D0();
  v39 = v11;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v69 = sub_100002BE4(&qword_10016A390, &qword_10010F350);
    v68 = sub_100021FAC();
    v41 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    v42 = v72;
    v43 = v74;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v39, &qword_100169A10, &qword_10010D450);
    sub_10001297C(v71, v70, v36);

    v90 = 0u;
    v91 = 0u;
    memset(v89, 0, sizeof(v89));
    v44 = v77;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(v89, &qword_100169A38, &qword_10010D460);
    sub_100009908(&v90, &qword_100169A38, &qword_10010D460);
    *&v90 = v69;
    *(&v90 + 1) = v43;
    *&v91 = v68;
    *(&v91 + 1) = v41;
    v45 = 1;
    swift_getOpaqueTypeConformance2();
    v46 = v73;
    v47 = v76;
    View.automationSemantics(_:)();
    (*(v78 + 8))(v44, v79);
    (*(v75 + 8))(v42, v47);
    v48 = *(v83 + 40);
    if (v48)
    {
      v49 = *(v83 + 32);
      v50 = static VerticalAlignment.center.getter();
      v51 = v67;
      *v67 = v50;
      *(v51 + 8) = 0x4018000000000000;
      *(v51 + 16) = 0;
      v52 = sub_100002BE4(&qword_10016A3B8, &qword_10010F370);
      sub_1000217CC(v49, v48, (v51 + *(v52 + 44)));
      v53 = static Font.subheadline.getter();
      v54 = swift_getKeyPath();
      v55 = (v51 + *(sub_100002BE4(&qword_10016A3C0, &qword_10010F3A8) + 36));
      *v55 = v54;
      v55[1] = v53;
      v56 = static HierarchicalShapeStyle.secondary.getter();
      v57 = v86;
      *(v51 + *(v86 + 36)) = v56;
      v58 = v84;
      sub_100022144(v51, v84);
      v45 = 0;
    }

    else
    {
      v57 = v86;
      v58 = v84;
    }

    (*(v85 + 56))(v58, v45, 1, v57);
    v60 = v81;
    v59 = v82;
    v61 = *(v81 + 16);
    v62 = v80;
    v61(v80, v46, v82);
    v63 = v87;
    sub_100022064(v58, v87);
    v64 = v88;
    v61(v88, v62, v59);
    v65 = sub_100002BE4(&qword_10016A3B0, &qword_10010F368);
    sub_100022064(v63, &v64[*(v65 + 48)]);
    sub_1000220D4(v58);
    v66 = *(v60 + 8);
    v66(v46, v59);
    sub_1000220D4(v63);
    return (v66)(v62, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000217CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v63 = a3;
  v5 = sub_100002BE4(&qword_10016A3C8, &qword_10010F3B0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v54 - v10;
  v11 = type metadata accessor for AutomationSemantics();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v65 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v57);
  v14 = &v54 - v13;
  v62 = sub_100002BE4(&qword_10016A380, &qword_10010F310);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v16 = &v54 - v15;
  v17 = sub_100002BE4(&qword_10016A388, &qword_10010F318);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = __chkstk_darwin(v17);
  v64 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v54 - v20;
  *&v76 = a1;
  *(&v76 + 1) = a2;
  sub_100012928();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(a2) = v24;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  *&v76 = v21;
  *(&v76 + 1) = v23;
  v60 = v23;
  v58 = a2 & 1;
  LOBYTE(v77) = a2 & 1;
  *(&v77 + 1) = v26;
  v78 = KeyPath;
  v59 = KeyPath;
  v79 = 0;
  v28 = enum case for DynamicTypeSize.accessibility2(_:);
  v29 = type metadata accessor for DynamicTypeSize();
  (*(*(v29 - 8) + 104))(v14, v28, v29);
  sub_1000128D0();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v31 = sub_100002BE4(&qword_10016A390, &qword_10010F350);
    v70 = v6;
    v54 = v31;
    v32 = sub_100021FAC();
    v56 = v5;
    v33 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    v55 = v9;
    v34 = v33;
    v35 = v57;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v14, &qword_100169A10, &qword_10010D450);
    sub_10001297C(v21, v60, v58);

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v36 = v65;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(&v74, &qword_100169A38, &qword_10010D460);
    sub_100009908(&v76, &qword_100169A38, &qword_10010D460);
    *&v76 = v54;
    *(&v76 + 1) = v35;
    *&v77 = v32;
    *(&v77 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    v37 = v71;
    v38 = v62;
    View.automationSemantics(_:)();
    v39 = v69;
    v40 = *(v68 + 8);
    v40(v36, v69);
    (*(v61 + 8))(v16, v38);
    v73 = Image.init(systemName:)();
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(&v74, &qword_100169A38, &qword_10010D460);
    sub_100009908(&v76, &qword_100169A38, &qword_10010D460);
    v41 = v72;
    View.automationSemantics(_:)();
    v40(v36, v39);

    v43 = v66;
    v42 = v67;
    v44 = *(v66 + 16);
    v45 = v64;
    v44(v64, v37, v67);
    v46 = *(v70 + 16);
    v47 = v55;
    v48 = v41;
    v49 = v56;
    v46(v55, v48, v56);
    v50 = v63;
    v44(v63, v45, v42);
    v51 = sub_100002BE4(&qword_10016A3D0, &qword_10010F3B8);
    v46(&v50[*(v51 + 48)], v47, v49);
    v52 = *(v70 + 8);
    v52(v72, v49);
    v53 = *(v43 + 8);
    v53(v71, v42);
    v52(v47, v49);
    return (v53)(v45, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021F50@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100002BE4(&qword_10016A368, &qword_10010F2F0);
  return sub_100020F6C(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_100021FAC()
{
  result = qword_10016A398;
  if (!qword_10016A398)
  {
    sub_10000459C(&qword_10016A390, &qword_10010F350);
    sub_100012C48(&qword_10016A3A0, &qword_10016A3A8, &unk_10010F358, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A398);
  }

  return result;
}

uint64_t sub_100022064(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A378, &unk_10010F300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000220D4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A378, &unk_10010F300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022144(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A370, &qword_10010F2F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002220C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScenePhase();
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

uint64_t sub_1000222DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScenePhase();
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

unint64_t sub_1000223CC()
{
  result = qword_10016A450;
  if (!qword_10016A450)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10016A450);
  }

  return result;
}

uint64_t sub_100022438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScenePhaseChangeViewModifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_100023850(a3, v11, type metadata accessor for ScenePhaseChangeViewModifier);
  (*(v5 + 16))(v7, v22, v4);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_1000239DC(v11, v19 + v17, type metadata accessor for ScenePhaseChangeViewModifier);
  (*(v5 + 32))(v19 + v18, v7, v4);
  sub_1000EE5F8(0, 0, v14, &unk_10010F528, v19);
}

uint64_t sub_1000226EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100022784, v7, v6);
}

uint64_t sub_100022784()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for ScenePhaseChangeViewModifier(0) + 20));
  v6 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100022888;
  v4 = v0[3];

  return v6(v4);
}

uint64_t sub_100022888()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100024390, v3, v2);
}

uint64_t sub_1000229CC(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_100022A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024110(&qword_10016A488, &qword_10010F480, &type metadata accessor for ScenePhase, v8);
  sub_100023850(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScenePhaseChangeViewModifier);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000239DC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ScenePhaseChangeViewModifier);
  sub_100002BE4(&qword_10016A550, &unk_10010F510);
  sub_100023AC4(&qword_10016A558, &qword_10016A550, &unk_10010F510);
  sub_100023B18(&qword_10016A560, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  View.onChange<A>(of:initial:_:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100022D08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100022DA0, v4, v3);
}

uint64_t sub_100022DA0()
{
  if (static ScenePhase.== infix(_:_:)())
  {
    v1 = v0[3];
    v2 = (v1 + *(type metadata accessor for ScenePhaseViewModifier(0) + 20));
    v6 = (*v2 + **v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100022EE0;

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100022EE0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100023000, v3, v2);
}

uint64_t sub_100023000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_100023850(v7, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScenePhaseViewModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1000239DC(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ScenePhaseViewModifier);
  v10 = (a3 + *(sub_100002BE4(&qword_10016A480, &qword_10010F448) + 36));
  *v10 = swift_getKeyPath();
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  swift_storeEnumTagMultiPayload();
  v11 = (v10 + *(type metadata accessor for ScenePhaseChangeViewModifier(0) + 20));
  *v11 = &unk_10010F440;
  v11[1] = v9;
  v12 = sub_100002BE4(&qword_10016A490, &qword_10010F488);
  return (*(*(v12 - 8) + 16))(a3, a1, v12);
}

uint64_t sub_100023244()
{
  v1 = *(type metadata accessor for ScenePhaseViewModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100023330(uint64_t a1)
{
  v4 = *(type metadata accessor for ScenePhaseViewModifier(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FA04;

  return sub_100022D08(a1, v1 + v5);
}

uint64_t sub_100023450(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
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

uint64_t sub_100023578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002BE4(&qword_10016A498, &unk_10010F490);
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

unint64_t sub_100023654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_1000223CC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000236DC(uint64_t a1)
{
  if (!qword_10016A508)
  {
    type metadata accessor for ScenePhase();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10016A508);
    }
  }
}

unint64_t sub_100023738()
{
  result = qword_10016A538;
  if (!qword_10016A538)
  {
    sub_10000459C(&qword_10016A480, &qword_10010F448);
    sub_100023AC4(&qword_10016A540, &qword_10016A490, &qword_10010F488);
    sub_100023B18(&qword_10016A548, type metadata accessor for ScenePhaseChangeViewModifier, &unk_10010F4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A538);
  }

  return result;
}

uint64_t sub_100023850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000238B8()
{
  v1 = *(type metadata accessor for ScenePhaseChangeViewModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ScenePhase();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000239DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023A44(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ScenePhaseChangeViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100022438(a1, a2, v6);
}

uint64_t sub_100023AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100023B60()
{
  v1 = *(type metadata accessor for ScenePhaseChangeViewModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v9 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v9, v5);

  return _swift_deallocObject(v0, v9 + v8, v2 | v7 | 7);
}

uint64_t sub_100023CFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ScenePhaseChangeViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ScenePhase() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100024388;

  return sub_1000226EC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100023E4C()
{
  sub_10000459C(&qword_10016A550, &unk_10010F510);
  type metadata accessor for ScenePhase();
  sub_100023AC4(&qword_10016A558, &qword_10016A550, &unk_10010F510);
  sub_100023B18(&qword_10016A560, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100023F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016A570, &unk_100113970);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10000C178(v2, &v13 - v9, &qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100024310(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100024110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002BE4(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10000C178(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100024310(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000243F4()
{
  result = qword_10016A588;
  if (!qword_10016A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A588);
  }

  return result;
}

uint64_t sub_100024448()
{
  static Color.white.getter();
  v0 = Color.opacity(_:)();

  qword_10016A580 = v0;
  return result;
}

uint64_t sub_10002448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppTextComponentModel(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = [objc_opt_self() mainBundle];
  v23._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = v4;
  v8._object = v5;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v23);

  v11 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  if (qword_100168EE0 != -1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    swift_once();
    v15 = v21;
    v14 = v20;
    v13 = v19;
    v12 = v18;
  }

  v16 = qword_10016A580;
  *a2 = v10;
  *(a2 + 16) = 3;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = 0;
  *(a2 + 72) = v16;
}

uint64_t sub_1000245F8(uint64_t a1)
{
  sub_1000243F4();

  return _ComponentBody.init(_:)();
}

unint64_t sub_100024640()
{
  result = qword_10016A590;
  if (!qword_10016A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A590);
  }

  return result;
}

uint64_t sub_100024740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002478C()
{
  result = qword_10016A5A8;
  if (!qword_10016A5A8)
  {
    sub_10000459C(&qword_10016A5B0, &qword_10010F620);
    sub_100024818();
    sub_1000248F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5A8);
  }

  return result;
}

unint64_t sub_100024818()
{
  result = qword_10016A5B8;
  if (!qword_10016A5B8)
  {
    sub_10000459C(&qword_10016A5C0, &qword_10010F628);
    sub_1000248A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5B8);
  }

  return result;
}

unint64_t sub_1000248A4()
{
  result = qword_10016A5C8;
  if (!qword_10016A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5C8);
  }

  return result;
}

unint64_t sub_1000248F8()
{
  result = qword_10016A5D0;
  if (!qword_10016A5D0)
  {
    sub_10000459C(&qword_10016A5D8, &unk_10010F630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5D0);
  }

  return result;
}

uint64_t sub_100024988()
{
  sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v0[2] = swift_task_alloc();
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100024A58, v2, v1);
}

uint64_t sub_100024A58()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = &protocol witness table for MainActor;
  sub_1000EE5F8(0, 0, v1, &unk_10010F700, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100024B58()
{
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100024C08;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_100024C08()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000253C4;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_100024D8C;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_100024D8C()
{

  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 1;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100024E34()
{
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100024EC8, v2, v1);
}

uint64_t sub_100024EC8()
{

  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 0;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100024F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_100002BE4(&qword_10016A5E0, &qword_10010F6D0) + 36);
  v5 = enum case for ScenePhase.active(_:);
  v6 = type metadata accessor for ScenePhase();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = type metadata accessor for ScenePhaseViewModifier(0);
  v9 = (v4 + *(v8 + 20));
  *v9 = &unk_10010F6C8;
  v9[1] = 0;
  v10 = sub_100002BE4(&qword_10016A5E8, &qword_10010F6D8);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = a2 + *(sub_100002BE4(&qword_10016A5F0, &qword_10010F6E8) + 36);
  result = (v7)(v11, enum case for ScenePhase.background(_:), v6);
  v13 = (v11 + *(v8 + 20));
  *v13 = &unk_10010F6E0;
  v13[1] = 0;
  return result;
}

unint64_t sub_1000250D8()
{
  result = qword_1001714E0;
  if (!qword_1001714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001714E0);
  }

  return result;
}

uint64_t sub_10002512C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025164()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_100024B58();
}

uint64_t sub_100025284(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    sub_10002536C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100025308()
{
  result = qword_10016A608;
  if (!qword_10016A608)
  {
    sub_10000459C(&qword_10016A5E8, &qword_10010F6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A608);
  }

  return result;
}

unint64_t sub_10002536C()
{
  result = qword_10016A610;
  if (!qword_10016A610)
  {
    type metadata accessor for ScenePhaseViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A610);
  }

  return result;
}

uint64_t sub_1000253DC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MetricsPipeline();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_100002BE4(&qword_10016A678, &unk_100113980);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_100025574(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MetricsPipeline();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_100002BE4(&qword_10016A678, &unk_100113980);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_100025718(uint64_t a1)
{
  sub_10002589C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsPipeline();
    if (v2 <= 0x3F)
    {
      sub_1000259EC(319, &qword_10016A6F0, &qword_10016A6F8, &unk_10010F740, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100025908();
        if (v4 <= 0x3F)
        {
          sub_100025958(319);
          if (v5 <= 0x3F)
          {
            sub_10002C300(319, &qword_10016A508, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_1000259EC(319, &qword_10016A718, &qword_10016A578, &qword_10010F540, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10002589C()
{
  result = qword_10016A6E8;
  if (!qword_10016A6E8)
  {
    type metadata accessor for TetsuoDiscoverFeedPage(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_10016A6E8);
  }

  return result;
}

void sub_100025908()
{
  if (!qword_10016A700)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A700);
    }
  }
}

void sub_100025958(uint64_t a1)
{
  if (!qword_10016A708)
  {
    type metadata accessor for AppDelegate(255);
    sub_10002C038(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10016A708);
    }
  }
}

void sub_1000259EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000459C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100025A6C()
{
  v0 = type metadata accessor for ShelfGridPadding();
  sub_100010158(v0, qword_10016A618);
  sub_100006B0C(v0, qword_10016A618);
  return ShelfGridPadding.init(floatLiteral:)();
}

uint64_t sub_100025ABC()
{
  v0 = type metadata accessor for ShelfGridPadding();
  sub_100010158(v0, qword_10016A630);
  sub_100006B0C(v0, qword_10016A630);
  return ShelfGridPadding.init(leading:trailing:)();
}

uint64_t sub_100025B30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ShelfGridSpacing();
  sub_100010158(v6, a2);
  sub_100006B0C(v6, a2);
  return ShelfGridSpacing.init(vertical:horizontal:)();
}

uint64_t sub_100025BC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v40 = a3;
  v43 = sub_100002BE4(&qword_10016A760, &qword_10010F7A0);
  v4 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v38 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = v33 - v7;
  v37 = type metadata accessor for IntentViewConfiguration();
  v42 = *(v37 - 8);
  v8 = __chkstk_darwin(v37);
  v35 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = type metadata accessor for GeometryProxy();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TetsuoDiscoverPageView(0);
  v17 = *(v16 - 8);
  v39 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002AE8C(a2, v19, type metadata accessor for TetsuoDiscoverPageView);
  (*(v13 + 16))(v15, v34, v12);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = (v18 + *(v13 + 80) + v20) & ~*(v13 + 80);
  v22 = swift_allocObject();
  v33[1] = v22;
  sub_100028BAC(v19, v22 + v20);
  (*(v13 + 32))(v22 + v21, v15, v12);
  v34 = static Transaction._loading.getter();
  v33[0] = v11;
  IntentViewConfiguration.init()();
  v36 = a2;
  v23 = sub_10000524C(a2, a2[3]);
  __chkstk_darwin(v23);
  (*(v25 + 16))(v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TetsuoDiscoverFeedPage(0);
  v26 = v41;
  AnyIntentModel.init<A>(_:)();
  (*(v4 + 16))(v38, v26, v43);
  v27 = v11;
  v28 = v37;
  (*(v42 + 16))(v35, v27, v37);
  sub_100002BE4(&qword_10016A768, &qword_10010F7A8);
  type metadata accessor for _TaskViewDefaultWorking();
  type metadata accessor for _TaskViewDefaultFailed();
  sub_100012C48(&qword_10016A770, &qword_10016A760, &qword_10010F7A0, &protocol conformance descriptor for AnyIntentModel<A>);
  sub_100028DDC();
  sub_10002C038(&qword_10016A7D0, &type metadata accessor for _TaskViewDefaultWorking, &protocol conformance descriptor for _TaskViewDefaultWorking);
  sub_10002C038(&qword_10016A7D8, &type metadata accessor for _TaskViewDefaultFailed, &protocol conformance descriptor for _TaskViewDefaultFailed);
  v29 = v43;
  v30 = v40;
  IntentView.init(what:transaction:configuration:working:failed:content:)();
  (*(v4 + 8))(v41, v29);
  (*(v42 + 8))(v33[0], v28);
  v31 = sub_100002BE4(&qword_10016A7E0, &qword_10010F7D8);
  return sub_100023F18(v30 + *(v31 + 36));
}

uint64_t sub_1000261CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v52 = a2;
  v61 = a4;
  v62 = a1;
  v5 = sub_100002BE4(&qword_10016A7E8, &qword_10010F7E0);
  __chkstk_darwin(v5 - 8);
  v60 = &v47 - v6;
  v7 = sub_100002BE4(&qword_10016A7F0, &qword_10010F7E8);
  __chkstk_darwin(v7 - 8);
  v59 = &v47 - v8;
  v56 = type metadata accessor for AutomationSemantics();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GeometryProxy();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = type metadata accessor for TetsuoDiscoverPageView(0);
  v14 = *(v13 - 8);
  v55 = v13 - 8;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100002BE4(&qword_10016A788, &qword_10010F7B8);
  __chkstk_darwin(v51);
  v18 = &v47 - v17;
  v19 = sub_100002BE4(&qword_10016A780, &qword_10010F7B0);
  v20 = *(v19 - 8);
  v57 = v19;
  v58 = v20;
  __chkstk_darwin(v19);
  v49 = &v47 - v21;
  v50 = type metadata accessor for TetsuoDiscoverFeedPage(0);
  v22 = *(v62 + *(v50 + 28));
  sub_10002AE8C(a2, v16, type metadata accessor for TetsuoDiscoverPageView);
  (*(v11 + 16))(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v10);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = (v15 + *(v11 + 80) + v23) & ~*(v11 + 80);
  v25 = swift_allocObject();
  sub_100028BAC(v16, v25 + v23);
  (*(v11 + 32))(v25 + v24, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  static ShelfPageConfiguration.standard.getter();
  *&v63 = v22;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = j___s18_JetEngine_SwiftUI35_IntentViewDefaultContinuousWorkingVACycfC;
  v26[4] = 0;
  v26[5] = sub_100029490;
  v26[6] = 0;
  v26[7] = sub_1000293A0;
  v26[8] = v25;
  sub_100002BE4(&qword_10016A7F8, &qword_10010F7F0);
  sub_100002BE4(&qword_10016A800, &unk_10010F7F8);
  sub_100012C48(&qword_10016A808, &qword_10016A800, &unk_10010F7F8, &protocol conformance descriptor for _ShelfPageContinuousContent<A, B, C, D>);
  ShelfPage.init(_:spacing:configuration:content:)();
  LOBYTE(v24) = static Edge.Set.top.getter();
  v27 = static SafeAreaRegions.all.getter();
  v28 = &v18[*(sub_100002BE4(&qword_10016A7A0, &qword_10010F7C0) + 36)];
  *v28 = v27;
  v28[8] = v24;
  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  type metadata accessor for PageID();
  v29 = v62;
  _print_unlocked<A, B>(_:_:)();
  v63 = 0u;
  v64 = 0u;
  v30 = v53;
  static AutomationSemantics.page(name:id:)();

  sub_100009908(&v63, &qword_100169A38, &qword_10010D460);
  v31 = sub_100028F14();
  v32 = v49;
  v33 = v51;
  View.automationSemantics(_:)();
  (*(v54 + 8))(v30, v56);
  v34 = sub_100002BE4(&qword_10016A7B0, &qword_10010F7C8);
  (*(*(v34 - 8) + 8))(v18, v34);
  v35 = *(v50 + 20);
  v36 = type metadata accessor for PageMetrics();
  v37 = *(v36 - 8);
  v38 = v59;
  (*(v37 + 16))(v59, v29 + v35, v36);
  (*(v37 + 56))(v38, 0, 1, v36);
  v39 = v52 + *(v55 + 32);
  v40 = *(v39 + 16);
  v63 = *v39;
  *&v64 = v40;
  sub_100002BE4(&qword_10016A810, &qword_10010F808);
  State.wrappedValue.getter();
  v41 = type metadata accessor for ClickLocationConfiguration();
  v42 = v60;
  (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
  *&v63 = v33;
  *(&v63 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v43 = v61;
  v44 = v57;
  View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)();
  swift_unknownObjectRelease();
  sub_100009908(v42, &qword_10016A7E8, &qword_10010F7E0);
  sub_100009908(v38, &qword_10016A7F0, &qword_10010F7E8);
  (*(v58 + 8))(v32, v44);
  result = sub_100002BE4(&qword_10016A768, &qword_10010F7A8);
  v46 = (v43 + *(result + 36));
  *v46 = 0x6C6C6F726373;
  v46[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_1000269D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v92 = a3;
  v97 = a4;
  v6 = type metadata accessor for TetsuoDiscoverPageView(0);
  v80 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v101 = v7;
  v91 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = type metadata accessor for TetsuoDiscoverPageShelf(0);
  __chkstk_darwin(v82);
  v81 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_100002BE4(&qword_10016A880, &qword_10010F838);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v72[-v9];
  v83 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  v10 = __chkstk_darwin(v83);
  v89 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v84 = &v72[-v13];
  __chkstk_darwin(v12);
  v88 = &v72[-v14];
  v15 = type metadata accessor for ShelfGridSpacing();
  v96 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v79 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v100 = &v72[-v18];
  v19 = type metadata accessor for ShelfGridPadding();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v78 = &v72[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v102 = &v72[-v23];
  v24 = type metadata accessor for ShelfGridLayout();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v77 = &v72[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v29 = &v72[-v28];
  sub_100002BE4(&qword_10016A890, &qword_10010F848);
  ShelfPageContext.shelfOffset.getter();
  v76 = v103;
  v30 = MCGestaltIsiPad();
  v93 = a1;
  if (v30)
  {
    v31 = a2;
    v32 = *(a1 + 8);
    v33 = *(a1 + 16);
    if (v32 == 0x656C746954 && v33 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v32 == 1954047316 && v33 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *v29 = 1;
      (*(v25 + 104))(v29, enum case for ShelfGridLayout.vertical(_:), v24);
    }

    else
    {
      sub_100028798(v93, v29);
    }
  }

  else
  {
    v31 = a2;
    sub_100028628(a1, v29);
  }

  v34 = MCGestaltIsiPad();
  v98 = v24;
  v99 = v29;
  if (v34)
  {
    if (qword_100168EF0 != -1)
    {
      swift_once();
    }

    v35 = qword_10016A630;
  }

  else
  {
    if (qword_100168EE8 != -1)
    {
      swift_once();
    }

    v35 = qword_10016A618;
  }

  v36 = sub_100006B0C(v19, v35);
  v90 = v20;
  v37 = *(v20 + 16);
  v94 = v19;
  v37(v102, v36, v19);
  v38 = MCGestaltIsiPad();
  v95 = v31;
  if (v38)
  {
    if (qword_100168F00 != -1)
    {
      swift_once();
    }

    v39 = qword_10016A660;
  }

  else
  {
    if (qword_100168EF8 != -1)
    {
      swift_once();
    }

    v39 = qword_10016A648;
  }

  v40 = sub_100006B0C(v15, v39);
  v41 = *(v96 + 16);
  v42 = v100;
  v74 = v15;
  v41(v100, v40, v15);
  GeometryProxy.size.getter();
  LODWORD(v92) = v43 <= 1724.0;
  v73 = v43 > 1724.0;
  v44 = static VerticalAlignment.center.getter();
  v45 = v97;
  *v97 = v44;
  v45[1] = 0;
  *(v45 + 16) = 1;
  sub_10002AE8C(v93, v81, type metadata accessor for TetsuoDiscoverPageShelf);
  v75 = v25;
  (*(v25 + 16))(v77, v99, v98);
  v37(v78, v102, v94);
  v41(v79, v42, v15);
  v93 = type metadata accessor for TetsuoDiscoverPageView;
  v46 = v91;
  sub_10002AE8C(v95, v91, type metadata accessor for TetsuoDiscoverPageView);
  v47 = *(v80 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v76;
  *(v48 + 24) = 0;
  sub_100028BAC(v46, v48 + ((v47 + 25) & ~v47));
  sub_100002BE4(&qword_10016A898, &qword_10010F850);
  sub_10002C038(&qword_1001693A0, type metadata accessor for TetsuoDiscoverPageShelf, &unk_1001173C4);
  v49 = sub_10000459C(&qword_10016A8A0, &qword_10010F858);
  v50 = sub_10002B1D4();
  *&v104 = v49;
  *(&v104 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v85;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v52 = v84;
  (*(v86 + 32))(v84, v51, v87);
  v53 = (v52 + *(v83 + 36));
  v54 = v109;
  v53[4] = v108;
  v53[5] = v54;
  v53[6] = v110;
  v55 = v105;
  *v53 = v104;
  v53[1] = v55;
  v56 = v107;
  v53[2] = v106;
  v53[3] = v56;
  v57 = v88;
  sub_10002B2B8(v52, v88);
  v58 = sub_100002BE4(&qword_10016A8D0, &qword_10010F870);
  v59 = v97;
  v60 = v97 + *(v58 + 44);
  v61 = v89;
  sub_10002B328(v57, v89);
  *v60 = 0;
  v62 = v73;
  v60[8] = v73;
  v63 = v92;
  v60[9] = v92;
  v64 = sub_100002BE4(&qword_10016A8D8, &qword_10010F878);
  sub_10002B328(v61, &v60[*(v64 + 48)]);
  v65 = &v60[*(v64 + 64)];
  *v65 = 0;
  v65[8] = v62;
  v65[9] = v63;
  sub_10002B398(v57);
  sub_10002B398(v61);
  sub_10002AE8C(v95, v46, v93);
  v66 = swift_allocObject();
  sub_100028BAC(v46, v66 + ((v47 + 16) & ~v47));
  v67 = v59 + *(sub_100002BE4(&qword_10016A820, &qword_10010F818) + 36);
  v68 = enum case for ScenePhase.background(_:);
  v69 = type metadata accessor for ScenePhase();
  (*(*(v69 - 8) + 104))(v67, v68, v69);
  v70 = &v67[*(type metadata accessor for ScenePhaseViewModifier(0) + 20)];
  *v70 = &unk_10010F888;
  *(v70 + 1) = v66;
  (*(v96 + 8))(v100, v74);
  (*(v90 + 8))(v102, v94);
  return (*(v75 + 8))(v99, v98);
}

uint64_t sub_1000275E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v30 = a2;
  v28 = sub_100002BE4(&qword_10016A9D0, &qword_10010F930);
  __chkstk_darwin(v28);
  v29 = &v22 - v2;
  v3 = type metadata accessor for ContentMarginPlacement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016A9D8, &qword_10010F938);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v25 = sub_100002BE4(&qword_10016A9E0, &qword_10010F940);
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v31 = &v22 - v12;
  MCGestaltIsiPad();
  static Edge.Set.top.getter();
  static ContentMarginPlacement.automatic.getter();
  v13 = sub_100002BE4(&qword_10016A9E8, &qword_10010F948);
  v14 = sub_100012C48(&qword_10016A9F0, &qword_10016A9E8, &qword_10010F948, &protocol conformance descriptor for _ViewModifier_Content<A>);
  ++v4;
  v15 = (v27 + 8);
  v27 = v11;
  v22 = v15;
  v23 = (v11 + 16);
  View.contentMargins(_:_:for:)();
  v16 = *v4;
  (*v4)(v6, v3);
  static Edge.Set.bottom.getter();
  static ContentMarginPlacement.automatic.getter();
  v32 = v13;
  v33 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v31;
  v19 = v26;
  View.contentMargins(_:_:for:)();
  v16(v6, v3);
  (*v22)(v10, v19);
  v20 = v25;
  (*v23)(v29, v18, v25);
  swift_storeEnumTagMultiPayload();
  v32 = v19;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v27 + 8))(v31, v20);
}

uint64_t sub_100027AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v6 = type metadata accessor for TetsuoDiscoverPageView(0);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ShelfGridItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&qword_10016A8A0, &qword_10010F858);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  ShelfGridItem.model.getter();
  sub_10002B724();
  ComponentView.init(_:content:)();
  v15 = &v14[*(v12 + 36)];
  ShelfGridItem.model.getter();
  *(v15 + 40) = xmmword_10010F710;
  *(v15 + 7) = sub_100027EC0;
  *(v15 + 8) = 0;
  (*(v9 + 16))(v11, a1, v8);
  sub_10002AE8C(v21, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TetsuoDiscoverPageView);
  v16 = (*(v9 + 80) + 25) & ~*(v9 + 80);
  v17 = (v10 + *(v20 + 80) + v16) & ~*(v20 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 24) = v23 & 1;
  (*(v9 + 32))(v18 + v16, v11, v8);
  sub_100028BAC(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_10002B1D4();
  View.onScrollVisibilityChange(threshold:_:)();

  return sub_100009908(v14, &qword_10016A8A0, &qword_10010F858);
}

uint64_t sub_100027DEC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DiscoveryFeedStateProvider(0);
  sub_10002C038(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider, &unk_10010D308);
  v2 = Environment.init<A>(_:)();
  v4 = sub_100029988(v2, v3 & 1, &_swiftEmptyDictionarySingleton);
  v5 = sub_10002981C(v4);

  v6 = sub_1000296B0(v5);

  v7 = sub_100029544(v6);

  *a1 = v7;
  return result;
}

uint64_t sub_100027EC0(uint64_t a1)
{
  v2 = type metadata accessor for AppTitleComponentModel(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10002BFD4(a1, v8);
  sub_100002BE4(&qword_10016A8F0, &qword_10010F8B0);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = result;
    sub_10002BEBC(v4);
    return v6;
  }

  return result;
}

uint64_t sub_100027F88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TetsuoDiscoverPageView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  result = __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    result = ShelfGridItem.offset.getter();
    v16 = __OFADD__(a2, result);
    v17 = a2 + result;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      sub_10002AE8C(a5, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TetsuoDiscoverPageView);
      type metadata accessor for MainActor();
      v19 = static MainActor.shared.getter();
      v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = &protocol witness table for MainActor;
      sub_100028BAC(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
      *(v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
      sub_1000EE5F8(0, 0, v15, &unk_10010F8A8, v21);
    }
  }

  return result;
}

uint64_t sub_10002819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100028234, v7, v6);
}

uint64_t sub_100028234()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for TetsuoDiscoverPageView(0) + 32));
  if (*v2)
  {
    v3 = *(*v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pageViewScrollAnalyticsCoordinator);
    *(v0 + 56) = v3;

    return _swift_task_switch(sub_100028344, v3, 0);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_10002C038(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100028344()
{
  sub_1000C9450(v0[3]);

  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_100023000, v1, v2);
}

uint64_t sub_1000283B4(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10002844C, v3, v2);
}

uint64_t sub_10002844C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for TetsuoDiscoverPageView(0) + 32));
  if (*v2)
  {
    v3 = *(*v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pageViewScrollAnalyticsCoordinator);
    *(v0 + 48) = v3;

    return _swift_task_switch(sub_10002855C, v3, 0);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_10002C038(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_10002855C()
{
  sub_1000C9624();

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1000285C8, v1, v2);
}

uint64_t sub_1000285C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028628@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for TetsuoDiscoverPageShelf(0) + 28)) == 1)
  {

LABEL_4:
    v4 = *(sub_100002BE4(&qword_10016A8E0, &unk_10010F890) + 48);
    *a2 = 1;
    *&a2[v4] = 0x3FF0000000000000;
    v5 = enum case for ShelfGridItemWidth.fraction(_:);
    v6 = type metadata accessor for ShelfGridItemWidth();
    (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
    v7 = &enum case for ShelfGridLayout.horizontal(_:);
    goto LABEL_6;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    goto LABEL_4;
  }

  *a2 = 1;
  v7 = &enum case for ShelfGridLayout.vertical(_:);
LABEL_6:
  v8 = *v7;
  v9 = type metadata accessor for ShelfGridLayout();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t sub_100028798@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for TetsuoDiscoverPageShelf(0) + 28)))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = *(sub_100002BE4(&qword_10016A8E0, &unk_10010F890) + 48);
      *a2 = 1;
      *&a2[v4] = 0x3FD8000000000000;
      v5 = enum case for ShelfGridItemWidth.fraction(_:);
      v6 = type metadata accessor for ShelfGridItemWidth();
      (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
      v7 = &enum case for ShelfGridLayout.horizontal(_:);
      goto LABEL_18;
    }
  }

  else
  {
  }

  GeometryProxy.size.getter();
  if (v8 >= 714.0)
  {
    GeometryProxy.size.getter();
    if (v12 >= 1034.0)
    {
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 connectedScenes];

      sub_100015140();
      sub_10002C038(&qword_100171520, sub_100015140, &protocol conformance descriptor for NSObject);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_1000F34B8(v15);

      if (v16)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 screen];
          [v18 bounds];
          Width = CGRectGetWidth(v28);
          [v18 bounds];
          if (CGRectGetHeight(v29) >= Width)
          {
            v24 = static Alignment.center.getter();
            v26 = v25;

            *a2 = 2;
            *(a2 + 1) = v24;
            *(a2 + 2) = v26;
            goto LABEL_17;
          }
        }

        else
        {
          v18 = v16;
        }
      }

      v9 = static Alignment.center.getter();
      v11 = 3;
    }

    else
    {
      v9 = static Alignment.center.getter();
      v11 = 2;
    }
  }

  else
  {
    v9 = static Alignment.center.getter();
    v11 = 1;
  }

  *a2 = v11;
  *(a2 + 1) = v9;
  *(a2 + 2) = v10;
LABEL_17:
  v7 = &enum case for ShelfGridLayout.verticalWithAlignment(_:);
LABEL_18:
  v20 = *v7;
  v21 = type metadata accessor for ShelfGridLayout();
  v22 = *(*(v21 - 8) + 104);

  return v22(a2, v20, v21);
}

uint64_t sub_100028AA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10002AE8C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TetsuoDiscoverPageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100028BAC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100028C10;
  a2[1] = v7;
  return result;
}

uint64_t sub_100028BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100025BC0(a1, v6, a2);
}

uint64_t sub_100028C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000261CC(a1, v2 + v6, v9, a2);
}

uint64_t sub_100028D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _TaskViewDefaultFailed.init(error:retry:)(a1, a2, a3);
}

unint64_t sub_100028DDC()
{
  result = qword_10016A778;
  if (!qword_10016A778)
  {
    sub_10000459C(&qword_10016A768, &qword_10010F7A8);
    sub_10000459C(&qword_10016A780, &qword_10010F7B0);
    sub_10000459C(&qword_10016A788, &qword_10010F7B8);
    sub_100028F14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016A7C0, &qword_10016A7C8, &qword_10010F7D0, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A778);
  }

  return result;
}

unint64_t sub_100028F14()
{
  result = qword_10016A790;
  if (!qword_10016A790)
  {
    sub_10000459C(&qword_10016A788, &qword_10010F7B8);
    sub_100028FA0();
    sub_100029058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A790);
  }

  return result;
}

unint64_t sub_100028FA0()
{
  result = qword_10016A798;
  if (!qword_10016A798)
  {
    sub_10000459C(&qword_10016A7A0, &qword_10010F7C0);
    sub_100012C48(&qword_10016A7A8, &qword_10016A7B0, &qword_10010F7C8, &protocol conformance descriptor for ShelfPage<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A798);
  }

  return result;
}

unint64_t sub_100029058()
{
  result = qword_10016A7B8;
  if (!qword_10016A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A7B8);
  }

  return result;
}

uint64_t sub_1000290AC()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v8 = v1[5];
  v9 = type metadata accessor for MetricsPipeline();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  swift_unknownObjectRelease();

  v10 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  v15 = (v3 + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return _swift_deallocObject(v0, v15 + v17, v2 | v6 | 7);
}

uint64_t sub_1000293A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000269D4(a1, v2 + v6, v9, a2);
}

uint64_t sub_100029490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _IntentViewDefaultContinuousFailed.init(error:retry:)(a1, a2, a3);
}

uint64_t sub_1000294F0(uint64_t a1)
{
  sub_10002BFD4(a1, v2);
  sub_100002BE4(&qword_10016A878, &qword_10010F830);
  return AnyIntentModel.init(_:)();
}

uint64_t sub_100029544(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueMetatype();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpicShowcaseComponentModel(0);

  OpaqueMetatype.init(_:)();
  v12 = &type metadata for EpicShowcaseComponent;
  v13 = sub_10002BF18();
  sub_10002BF6C(v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_10002BF84(v10, v10[3]);
  sub_100029B80(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for EpicShowcaseComponent, sub_10002BF18, sub_10002BF18);
  (*(v3 + 8))(v5, v2);
  sub_1000052E4(v10);
  return v9;
}

uint64_t sub_1000296B0(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueMetatype();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppTextComponentModel(0);

  OpaqueMetatype.init(_:)();
  v12 = &type metadata for AppTextComponent;
  v13 = sub_1000243F4();
  sub_10002BF6C(v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_10002BF84(v10, v10[3]);
  sub_100029B80(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AppTextComponent, sub_1000243F4, sub_1000243F4);
  (*(v3 + 8))(v5, v2);
  sub_1000052E4(v10);
  return v9;
}

uint64_t sub_10002981C(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueMetatype();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppTitleComponentModel(0);

  OpaqueMetatype.init(_:)();
  v12 = &type metadata for AppTitleHeaderComponent;
  v13 = sub_10002C080();
  sub_10002BF6C(v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_10002BF84(v10, v10[3]);
  sub_100029B80(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AppTitleHeaderComponent, sub_10002C080, sub_10002C080);
  (*(v3 + 8))(v5, v2);
  sub_1000052E4(v10);
  return v9;
}

uint64_t sub_100029988(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueMetatype();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppHeroModel(0);

  OpaqueMetatype.init(_:)();
  v20 = &type metadata for AppHeroComponent;
  v21 = sub_10002C0D4();
  *&v19 = a1;
  BYTE8(v19) = a2 & 1;
  sub_10002BF6C(&v19, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a3;
  v11 = sub_10002BF84(v18, v18[3]);
  __chkstk_darwin(v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_100029D68(*v13, v13[8], v9, isUniquelyReferenced_nonNull_native, &v17);
  (*(v7 + 8))(v9, v6);
  sub_1000052E4(v18);
  return v17;
}

uint64_t sub_100029B80(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v29 = a6;
  v11 = type metadata accessor for OpaqueMetatype();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v32 = a5(v13);
  v16 = *a3;
  v18 = sub_100029FF0(a1);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a2 & 1) != 0)
  {
LABEL_7:
    v24 = *a3;
    if (v22)
    {
LABEL_8:
      v25 = (v24[7] + 40 * v18);
      sub_1000052E4(v25);
      return sub_10002BF6C(v30, v25);
    }

    goto LABEL_11;
  }

  if (v23 >= v21 && (a2 & 1) == 0)
  {
    sub_10002A408();
    goto LABEL_7;
  }

  sub_10002A690(v21, a2 & 1);
  v27 = sub_100029FF0(a1);
  if ((v22 & 1) != (v28 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v27;
  v24 = *a3;
  if (v22)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v12 + 16))(v15, a1, v11);
  sub_10002BF84(v30, v31);
  sub_10002A088(v18, v15, v24, a4, v29);
  return sub_1000052E4(v30);
}

uint64_t sub_100029D68(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = type metadata accessor for OpaqueMetatype();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for AppHeroComponent;
  v34 = sub_10002C0D4();
  *&v32 = a1;
  BYTE8(v32) = a2 & 1;
  v14 = *a5;
  v16 = sub_100029FF0(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      sub_1000052E4(v23);
      return sub_10002BF6C(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_10002A408();
    goto LABEL_7;
  }

  sub_10002A690(v19, a4 & 1);
  v25 = sub_100029FF0(a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a3, v10);
  v27 = sub_10002BF84(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_10002A158(v16, v13, *v29, v29[8], v22);
  return sub_1000052E4(&v32);
}

unint64_t sub_100029FF0(uint64_t a1)
{
  type metadata accessor for OpaqueMetatype();
  sub_10002C038(&qword_10016A908, &type metadata accessor for OpaqueMetatype, &protocol conformance descriptor for OpaqueMetatype);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10002A248(a1, v2);
}

uint64_t sub_10002A088(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v15 = a4;
  v16 = a5();
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for OpaqueMetatype();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_10002BF6C(v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_10002A158(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v17 = &type metadata for AppHeroComponent;
  v18 = sub_10002C0D4();
  *&v16 = a3;
  BYTE8(v16) = a4 & 1;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for OpaqueMetatype();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_10002BF6C(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_10002A248(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for OpaqueMetatype();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10002C038(&qword_10016A910, &type metadata accessor for OpaqueMetatype, &protocol conformance descriptor for OpaqueMetatype);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_10002A408()
{
  v1 = v0;
  v29 = type metadata accessor for OpaqueMetatype();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BE4(&qword_10016A900, &qword_10010F8B8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_10002BFD4(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_10002BF6C(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10002A690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for OpaqueMetatype();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002BE4(&qword_10016A900, &qword_10010F8B8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_10002BF6C((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_10002BFD4(*(v9 + 56) + 40 * v23, v43);
      }

      sub_10002C038(&qword_10016A908, &type metadata accessor for OpaqueMetatype, &protocol conformance descriptor for OpaqueMetatype);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_10002BF6C(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10002AA74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_100002BE4(&qword_10016A818, &qword_10010F810);
  sub_100002BE4(&qword_10016A820, &qword_10010F818);
  type metadata accessor for _IntentViewDefaultContinuousWorking();
  type metadata accessor for _IntentViewDefaultContinuousFailed();
  sub_10002ACF4();
  sub_10002ADA4();
  sub_10002C038(&qword_10016A850, &type metadata accessor for _IntentViewDefaultContinuousWorking, &protocol conformance descriptor for _IntentViewDefaultContinuousWorking);
  sub_10002C038(&qword_10016A858, &type metadata accessor for _IntentViewDefaultContinuousFailed, &protocol conformance descriptor for _IntentViewDefaultContinuousFailed);
  sub_100012C48(&qword_10016A860, &qword_10016A868, &qword_10010F828, &protocol conformance descriptor for AnyIntentModel<A>);
  sub_100012C48(&qword_10016A870, &qword_10016A878, &qword_10010F830, &protocol conformance descriptor for Continuous<A>);
  return _ShelfPageContinuousContent.init(_:transaction:working:failed:content:)();
}

uint64_t sub_10002AC90()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10002ACF4()
{
  result = qword_10016A828;
  if (!qword_10016A828)
  {
    sub_10000459C(&qword_10016A818, &qword_10010F810);
    sub_100012C48(&qword_10016A830, &qword_10016A7F8, &qword_10010F7F0, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A828);
  }

  return result;
}

unint64_t sub_10002ADA4()
{
  result = qword_10016A838;
  if (!qword_10016A838)
  {
    sub_10000459C(&qword_10016A820, &qword_10010F818);
    sub_100012C48(&qword_10016A840, &qword_10016A848, &qword_10010F820, &protocol conformance descriptor for HStack<A>);
    sub_10002C038(&qword_10016A610, type metadata accessor for ScenePhaseViewModifier, &unk_10010F3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A838);
  }

  return result;
}

uint64_t sub_10002AE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AEF4()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  swift_unknownObjectRelease();

  v8 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ScenePhase();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_100027AE4(a1, v6, v7, v8, a2);
}

unint64_t sub_10002B1D4()
{
  result = qword_10016A8A8;
  if (!qword_10016A8A8)
  {
    sub_10000459C(&qword_10016A8A0, &qword_10010F858);
    sub_100012C48(&qword_10016A8B0, &qword_10016A8B8, &qword_10010F860, &protocol conformance descriptor for ComponentView<A>);
    sub_100012C48(&qword_10016A8C0, &qword_10016A8C8, &qword_10010F868, &unk_100116CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8A8);
  }

  return result;
}

uint64_t sub_10002B2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B398(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B400()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  swift_unknownObjectRelease();

  v8 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ScenePhase();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B658()
{
  v2 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100024388;

  return sub_1000283B4(v0 + v3);
}

unint64_t sub_10002B724()
{
  result = qword_10016A8E8;
  if (!qword_10016A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8E8);
  }

  return result;
}

uint64_t sub_10002B778()
{
  v1 = type metadata accessor for ShelfGridItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TetsuoDiscoverPageView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  sub_1000052E4((v0 + v8));
  v11 = v6[5];
  v12 = type metadata accessor for MetricsPipeline();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  swift_unknownObjectRelease();

  v13 = v6[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ScenePhase();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for UserInterfaceSizeClass();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v10 + v15, 1, v16))
    {
      (*(v17 + 8))(v10 + v15, v16);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_10002BA54(char a1)
{
  v3 = *(type metadata accessor for ShelfGridItem() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100027F88(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_10002BB30()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  swift_unknownObjectRelease();

  v8 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ScenePhase();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10002BD9C(uint64_t a1)
{
  v4 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000FA04;

  return sub_10002819C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10002BEBC(uint64_t a1)
{
  v2 = type metadata accessor for AppTitleComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002BF18()
{
  result = qword_10016A8F8;
  if (!qword_10016A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8F8);
  }

  return result;
}

uint64_t sub_10002BF6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002BF84(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10002BFD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002C038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002C080()
{
  result = qword_10016A918;
  if (!qword_10016A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A918);
  }

  return result;
}

unint64_t sub_10002C0D4()
{
  result = qword_10016A920;
  if (!qword_10016A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A920);
  }

  return result;
}

uint64_t sub_10002C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002C1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10002C264(uint64_t a1)
{
  sub_10002C300(319, &unk_10016A990, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10002C300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10002C3C8()
{
  result = qword_10016A9F8;
  if (!qword_10016A9F8)
  {
    sub_10000459C(qword_10016AA00, &unk_10010F950);
    sub_10000459C(&qword_10016A9D8, &qword_10010F938);
    sub_10000459C(&qword_10016A9E8, &qword_10010F948);
    sub_100012C48(&qword_10016A9F0, &qword_10016A9E8, &qword_10010F948, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A9F8);
  }

  return result;
}

void sub_10002C528(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0xE000000000000000;
  v4._object = 0x800000010011D6C0;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v13);

  v8 = [v2 mainBundle];
  v14._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x800000010011D6E0;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v14);

  a1->_countAndFlagsBits = 0x702E6E6F69736976;
  a1->_object = 0xEA00000000006F72;
  a1[1] = v7;
  a1[2] = v12;
}

uint64_t sub_10002C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10002C76C(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static HorizontalAlignment.center.getter();
  v36 = 0;
  sub_10002C9F4(v3, &v19);
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v53[12] = v31;
  v53[13] = v32;
  v53[14] = v33;
  v53[8] = v27;
  v53[9] = v28;
  v53[10] = v29;
  v53[11] = v30;
  v53[4] = v23;
  v53[5] = v24;
  v53[6] = v25;
  v53[7] = v26;
  v53[0] = v19;
  v53[1] = v20;
  v52 = v34;
  v54 = v34;
  v53[2] = v21;
  v53[3] = v22;
  sub_10000C178(&v37, v18, &qword_10016AA98, &qword_10010FA88);
  sub_100009908(v53, &qword_10016AA98, &qword_10010FA88);
  *&v35[199] = v49;
  *&v35[215] = v50;
  *&v35[231] = v51;
  *&v35[135] = v45;
  *&v35[151] = v46;
  *&v35[167] = v47;
  *&v35[183] = v48;
  *&v35[71] = v41;
  *&v35[87] = v42;
  *&v35[103] = v43;
  *&v35[119] = v44;
  *&v35[7] = v37;
  *&v35[23] = v38;
  *&v35[39] = v39;
  v35[247] = v52;
  *&v35[55] = v40;
  v6 = v36;
  LOBYTE(v3) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = *&v35[208];
  *(a2 + 209) = *&v35[192];
  *(a2 + 225) = v7;
  *(a2 + 241) = *&v35[224];
  v8 = *&v35[144];
  *(a2 + 145) = *&v35[128];
  *(a2 + 161) = v8;
  v9 = *&v35[176];
  *(a2 + 177) = *&v35[160];
  *(a2 + 193) = v9;
  v10 = *&v35[80];
  *(a2 + 81) = *&v35[64];
  *(a2 + 97) = v10;
  v11 = *&v35[112];
  *(a2 + 113) = *&v35[96];
  *(a2 + 129) = v11;
  v12 = *&v35[16];
  *(a2 + 17) = *v35;
  *(a2 + 33) = v12;
  v13 = *&v35[48];
  *(a2 + 49) = *&v35[32];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 257) = *&v35[240];
  *(a2 + 65) = v13;
  *(a2 + 272) = v3;
  *(a2 + 280) = v14;
  *(a2 + 288) = v15;
  *(a2 + 296) = v16;
  *(a2 + 304) = v17;
  *(a2 + 312) = 0;
}

uint64_t sub_10002C9F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for Image.Interpolation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];

  Image.init(_internalSystemName:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for Image.Interpolation.high(_:), v3);
  v79 = Image.interpolation(_:)();

  (*(v4 + 8))(v6, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v116) = 1;
  *&v91[6] = v93;
  *&v91[22] = v94;
  *&v91[38] = v95;
  v78 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v74 = a1;
  v19 = a1[3];
  v116 = a1[2];
  v117 = v19;
  v73 = sub_100012928();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  LODWORD(v116) = static HierarchicalShapeStyle.primary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  LOBYTE(v3) = v28;
  sub_10001297C(v20, v22, v24 & 1);

  static Font.title3.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;

  sub_10001297C(v25, v27, v3 & 1);

  static Font.Weight.bold.getter();
  v76 = Text.fontWeight(_:)();
  v77 = v34;
  v72 = v35;
  LOBYTE(v3) = v36;
  sub_10001297C(v29, v31, v33 & 1);

  v37 = static Edge.Set.bottom.getter();
  LOBYTE(v20) = v37;
  v71 = v37;
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  LOBYTE(v8) = v3 & 1;
  LOBYTE(v116) = v3 & 1;
  LOBYTE(v96[0]) = 0;
  v46 = v74[5];
  v116 = v74[4];
  v117 = v46;

  v47 = Text.init<A>(_:)();
  v49 = v48;
  LOBYTE(v29) = v50;
  LODWORD(v116) = static HierarchicalShapeStyle.secondary.getter();
  v51 = Text.foregroundStyle<A>(_:)();
  v53 = v52;
  LODWORD(v73) = v54;
  v74 = v55;
  sub_10001297C(v47, v49, v29 & 1);

  KeyPath = swift_getKeyPath();
  v96[0] = v79;
  v96[1] = 0;
  LOWORD(v97[0]) = 1;
  *&v97[3] = *&v91[46];
  *(&v97[1] + 2) = *&v91[16];
  *(&v97[2] + 2) = *&v91[32];
  *(v97 + 2) = *v91;
  BYTE8(v97[3]) = v78;
  *(&v97[3] + 9) = *v92;
  HIDWORD(v97[3]) = *&v92[3];
  *&v98 = v12;
  *(&v98 + 1) = v14;
  *&v99 = v16;
  *(&v99 + 1) = v18;
  v100 = 0;
  LOBYTE(v88[0]) = 0;
  v81 = v79;
  v82 = v97[0];
  v83 = v97[1];
  v84 = v97[2];
  v85 = v97[3];
  v86 = v98;
  v87 = v99;
  *&v101 = v76;
  v57 = v72;
  *(&v101 + 1) = v72;
  LOBYTE(v102) = v8;
  DWORD1(v102) = *&v90[3];
  *(&v102 + 1) = *v90;
  *(&v102 + 1) = v77;
  LOBYTE(v103) = v20;
  DWORD1(v103) = *&v89[3];
  *(&v103 + 1) = *v89;
  *(&v103 + 1) = v39;
  *&v104[0] = v41;
  *(&v104[0] + 1) = v43;
  *&v104[1] = v45;
  BYTE8(v104[1]) = 0;
  *(v88 + 8) = v101;
  *(&v88[4] + 1) = *(v104 + 9);
  *(&v88[3] + 8) = v104[0];
  *(&v88[2] + 8) = v103;
  *(&v88[1] + 8) = v102;
  LOBYTE(v29) = v73 & 1;
  v80 = v73 & 1;
  v58 = v79;
  v59 = v97[0];
  v60 = v97[2];
  v61 = v75;
  *(v75 + 32) = v97[1];
  *(v61 + 48) = v60;
  *v61 = v58;
  *(v61 + 16) = v59;
  v62 = v85;
  v63 = v86;
  v64 = v88[0];
  *(v61 + 96) = v87;
  *(v61 + 112) = v64;
  *(v61 + 64) = v62;
  *(v61 + 80) = v63;
  v65 = v88[1];
  v66 = v88[2];
  v67 = v88[4];
  v68 = *&v88[5];
  *(v61 + 160) = v88[3];
  *(v61 + 176) = v67;
  *(v61 + 128) = v65;
  *(v61 + 144) = v66;
  *(v61 + 192) = v68;
  *(v61 + 200) = v51;
  *(v61 + 208) = v53;
  *(v61 + 216) = v29;
  *(v61 + 224) = v74;
  *(v61 + 232) = KeyPath;
  *(v61 + 240) = 1;
  sub_10000C178(v96, &v116, &qword_10016AAA0, &unk_10010FAC0);
  sub_10000C178(&v101, &v116, &qword_10016A0B8, &qword_10010ECF0);
  sub_100003AE4(v51, v53, v29);

  sub_10001297C(v51, v53, v29);

  v105[0] = v76;
  v105[1] = v57;
  v106 = v8;
  *v107 = *v90;
  *&v107[3] = *&v90[3];
  v108 = v77;
  v109 = v71;
  *v110 = *v89;
  *&v110[3] = *&v89[3];
  v111 = v39;
  v112 = v41;
  v113 = v43;
  v114 = v45;
  v115 = 0;
  sub_100009908(v105, &qword_10016A0B8, &qword_10010ECF0);
  v119 = *v91;
  v116 = v79;
  v117 = 0;
  v118 = 1;
  v120 = *&v91[16];
  *v121 = *&v91[32];
  *&v121[14] = *&v91[46];
  v122 = v78;
  *v123 = *v92;
  *&v123[3] = *&v92[3];
  v124 = v12;
  v125 = v14;
  v126 = v16;
  v127 = v18;
  v128 = 0;
  return sub_100009908(&v116, &qword_10016AAA0, &unk_10010FAC0);
}

unint64_t sub_10002D1F8()
{
  result = qword_10016AAA8;
  if (!qword_10016AAA8)
  {
    sub_10000459C(&qword_10016AAB0, &qword_10010FAD0);
    sub_100012C48(&qword_10016AAB8, &qword_10016AAC0, &qword_10010FAD8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AAA8);
  }

  return result;
}

uint64_t sub_10002D2BC()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v1 = static UserDefaultUtilities.isUsingStagingForCloudChannels()();
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100182108);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v9);
      *(v5 + 12) = 1024;
      *(v5 + 14) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Push notification environment is staging: %{BOOL}d", v5, 0x12u);
      sub_1000052E4(v6);
    }

    v7 = v1 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_10002D454(char a1)
{
  *(v1 + 80) = a1;
  v2 = type metadata accessor for PushNotificationService();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_10002D514, 0, 0);
}

uint64_t sub_10002D514()
{
  PushNotificationService.init()();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10002D5B0;

  return PushNotificationService.activate()();
}

uint64_t sub_10002D5B0()
{

  return _swift_task_switch(sub_10002D6AC, 0, 0);
}

uint64_t sub_10002D6AC()
{
  v16 = v0;
  v1 = sub_10002D2BC();
  v2 = *(v0 + 80);
  v3 = "/2sbWvYVEe8AAKpp3X8o0g==";
  v4 = "RemoteNotificationsUtilities";
  if (v2 != 2)
  {
    v4 = "STORE_NOT_AVAILABLE_MESSAGE";
  }

  if (*(v0 + 80))
  {
    v3 = "0n7oiTKlEfAAAOYe7g8NMw==";
  }

  if (*(v0 + 80) > 1u)
  {
    v3 = v4;
  }

  v5 = "vnsFHvYWEe8AALaqsIHZDA==";
  v6 = "TGdm/z2ZEfAAAMJ1L5v+8Q==";
  if (v2 != 2)
  {
    v6 = "nKvCfPYWEe8AAKpp3X8o0g==";
  }

  if (*(v0 + 80))
  {
    v5 = "+ubhGDKlEfAAAHLUCeQW0A==";
  }

  if (*(v0 + 80) <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(v0 + 48) = v8;
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  *(v0 + 56) = sub_100006B0C(v9, qword_100182108);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100006B44(0xD000000000000018, v8 | 0x8000000000000000, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Registering push notification channel %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_10002D95C;

  return PushNotificationService.registerChannel(channelID:)(0xD000000000000018, v8 | 0x8000000000000000);
}

uint64_t sub_10002D95C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10002DB08;
  }

  else
  {

    v2 = sub_10002DA7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002DA7C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  PushNotificationService.invalidate()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002DB08()
{
  v15 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v14);
    *(v5 + 12) = 2080;
    v7 = sub_100006B44(0xD000000000000018, v4 | 0x8000000000000000, &v14);

    *(v5 + 14) = v7;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Error registering push notification channel:  %s / %@", v5, 0x20u);
    sub_1000077E0(v6);

    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  PushNotificationService.invalidate()();
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002DD48(char a1)
{
  *(v1 + 80) = a1;
  v2 = type metadata accessor for PushNotificationService();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_10002DE08, 0, 0);
}

uint64_t sub_10002DE08()
{
  PushNotificationService.init()();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10002DEA4;

  return PushNotificationService.activate()();
}

uint64_t sub_10002DEA4()
{

  return _swift_task_switch(sub_10002DFA0, 0, 0);
}

uint64_t sub_10002DFA0()
{
  v16 = v0;
  v1 = sub_10002D2BC();
  v2 = *(v0 + 80);
  v3 = "/2sbWvYVEe8AAKpp3X8o0g==";
  v4 = "RemoteNotificationsUtilities";
  if (v2 != 2)
  {
    v4 = "STORE_NOT_AVAILABLE_MESSAGE";
  }

  if (*(v0 + 80))
  {
    v3 = "0n7oiTKlEfAAAOYe7g8NMw==";
  }

  if (*(v0 + 80) > 1u)
  {
    v3 = v4;
  }

  v5 = "vnsFHvYWEe8AALaqsIHZDA==";
  v6 = "TGdm/z2ZEfAAAMJ1L5v+8Q==";
  if (v2 != 2)
  {
    v6 = "nKvCfPYWEe8AAKpp3X8o0g==";
  }

  if (*(v0 + 80))
  {
    v5 = "+ubhGDKlEfAAAHLUCeQW0A==";
  }

  if (*(v0 + 80) <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(v0 + 48) = v8;
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  *(v0 + 56) = sub_100006B0C(v9, qword_100182108);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100006B44(0xD000000000000018, v8 | 0x8000000000000000, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Unregistering push notification channel  %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_10002E250;

  return PushNotificationService.unregisterChannel(channelID:)(0xD000000000000018, v8 | 0x8000000000000000);
}

uint64_t sub_10002E250()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10002E370;
  }

  else
  {

    v2 = sub_10002EA64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002E370()
{
  v15 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v14);
    *(v5 + 12) = 2080;
    v7 = sub_100006B44(0xD000000000000018, v4 | 0x8000000000000000, &v14);

    *(v5 + 14) = v7;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Error unregistering push notification channel: %s / %@", v5, 0x20u);
    sub_1000077E0(v6);

    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  PushNotificationService.invalidate()();
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002E5D0()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[3] = v2;
  v0[4] = 0;
  v3 = (v1 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (!v4)
    {
      v5 = swift_task_alloc();
      v0[5] = v5;
      *v5 = v0;
      v5[1] = sub_10002E6F4;

      return sub_10002D454(0);
    }
  }

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_10002E968;

  return sub_10002DD48(0);
}

uint64_t sub_10002E6F4()
{

  return _swift_task_switch(sub_10002E7F0, 0, 0);
}

uint64_t sub_10002E7F0()
{
  v1 = v0[4] + 1;
  if (v0[4] == 3)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = *(&off_100159888 + v1 + 32);
    v5 = 32;
    while (v5 - v0[3] != 32)
    {
      v6 = *(v0[2] + v5++);
      if (v6 == v4)
      {
        v7 = swift_task_alloc();
        v0[5] = v7;
        *v7 = v0;
        v7[1] = sub_10002E6F4;

        return sub_10002D454(v4);
      }
    }

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_10002E968;

    return sub_10002DD48(v4);
  }
}

uint64_t sub_10002E968()
{

  return _swift_task_switch(sub_10002EA68, 0, 0);
}

uint64_t sub_10002EA6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000010011C670;
  if (v2 == 1)
  {
    v5 = 0x800000010011C670;
  }

  else
  {
    v3 = 0x69736E6172546E69;
    v5 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x69736E6172546E69;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657263536C6C7566;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E65;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10002EB78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002EC2C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10002ECCC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002ED7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000315E0(*a1);
  *a2 = result;
  return result;
}

void sub_10002EDAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E65;
  v4 = 0x800000010011C670;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x69736E6172546E69;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657263536C6C7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10002EE1C()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10002EE8C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10002EF74()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10002EFE4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0xEA00000000006E65;
  v5 = 0x657263536C6C7566;
  v6 = 0xD000000000000010;
  v7 = 0x800000010011C670;
  if (*(v2 + 17) != 1)
  {
    v6 = 0x69736E6172546E69;
    v7 = 0xEC0000006E6F6974;
  }

  if (*(v2 + 17))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x657263536C6C7566;
  }

  if (*(v2 + 17))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA00000000006E65;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x69736E6172546E69;
    }

    if (v3 == 1)
    {
      v4 = 0x800000010011C670;
    }

    else
    {
      v4 = 0xEC0000006E6F6974;
    }
  }

  if (v8 == v5 && v9 == v4)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100031634();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A3CA8(v3);
    result = swift_unknownObjectRelease();
  }

  *(v2 + 17) = v3;
  return result;
}

uint64_t sub_10002F208(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A3CA8(v2);
    result = swift_unknownObjectRelease();
  }

  *(a1 + 17) = v2;
  return result;
}

void *sub_10002F2A4()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_10002F31C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_10002F3A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002F3D4(v1);
}

void sub_10002F3D4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE98, CALayer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void *sub_10002F534()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_10002F5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_10002F634(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002F664(v1);
}

void sub_10002F664(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE98, CALayer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void *sub_10002F7C4()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_10002F83C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016F2D0, APRKStreamRenderer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_10002F99C()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_10002FA10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10002FAC4(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = *&result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100031634();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_10002FBCC()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10002FC64()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10002FCD8@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_10002FD54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002FD84(v1);
}

void sub_10002FD84(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100031904(0, &unk_10016F330, UIWindowScene_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void *sub_10002FEFC()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_10002FF74(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE90, UIView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 88);
LABEL_8:
  *(v2 + 88) = a1;
}

void sub_1000300D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = a2;
  v3 = a2;
}

void *sub_100030108()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void sub_100030180(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE90, UIView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void sub_1000302E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = a2;
  v3 = a2;
}

void *sub_100030314()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void sub_10003038C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 104);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for MirroringPIPCoordinator();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 104);
LABEL_8:
  *(v2 + 104) = a1;
}

void sub_1000304DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = a2;
  v3 = a2;
}

void sub_100030510(void *a1)
{
  v2 = v1;
  v4 = a1;
  sub_10002F83C(a1);
  v5 = [v4 mirroringLayer];
  v6 = v5;
  if (v5)
  {
    [v5 setContentsGravity:kCAGravityCenter];
    [v6 setNeedsDisplayOnBoundsChange:0];
  }

  v17 = v6;
  sub_10002F664(v6);
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v2 + 40);
  if (v7)
  {
    [v7 videoFrameSize];
    if (v8 > 0.0 && v9 > 0.0)
    {
      sub_10002FAC4(COERCE__INT64(v9 / v8), 0);
    }
  }

  if (a1)
  {
    v10 = [v4 HUDLayer];
    v11 = v10;
    if (v10)
    {
      [v10 setContentsGravity:kCAGravityCenter];
      [v11 setNeedsDisplayOnBoundsChange:0];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  sub_10002F3D4(v11);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 40))
  {
    goto LABEL_12;
  }

  if (*(v2 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 16) = 0;
  }

  sub_10002EFE4(0);
  if (*(v2 + 104))
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v2 + 88))
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!*(v2 + 96))
  {
LABEL_12:
  }

  else
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_100030910()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void sub_100030988(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  sub_100031904(0, &qword_10016F2D0, APRKStreamRenderer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_100030510(a1);
  v8 = *(v2 + 112);
  *(v2 + 112) = a1;
}

void sub_100030AEC(uint64_t a1, void *a2)
{
  sub_100030510(a2);
  v4 = *(a1 + 112);
  *(a1 + 112) = a2;
  v5 = a2;
}

void sub_100030B38(void *a1, char a2)
{
  v3 = v2;
  if (!a2)
  {

    goto LABEL_7;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_7:
    v8 = a1;
    sub_100030180(a1);
    swift_getKeyPath();
    sub_100031634();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v3 + 104))
    {
      v9 = objc_allocWithZone(type metadata accessor for MirroringPIPViewController(0));

      v11 = sub_10001535C(v10);

      objc_allocWithZone(type metadata accessor for MirroringPIPCoordinator());
      v12 = v8;

      v13 = sub_1000135E4(v12, v11, v3);
      sub_10003038C(v13);
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v3 + 104);
    if (v14)
    {
      v15 = *&v14[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView];
      *&v14[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView] = v8;
      v16 = v8;
      v17 = v14;

      [*&v17[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy] viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
    }

    return;
  }

  if (a2 == 2)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v18 = a1;

  sub_10002FF74(a1);
}

void sub_100030DB8(char a1)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1[4];
  if (v3)
  {
    v4 = v3;
    sub_10002EFE4(2);
    if (a1)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v6 = v1[11];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v1[12];
    if (!v6)
    {
LABEL_9:

      return;
    }

LABEL_8:
    v7 = objc_opt_self();
    v8 = v6;
    [v7 begin];
    [v7 setDisableActions:1];
    v9 = [v8 layer];
    [v9 addSublayer:v4];

    [v8 bounds];
    [v4 setFrame:?];
    [v7 commit];

    v4 = v8;
    goto LABEL_9;
  }
}

uint64_t sub_100030FFC(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v7 = 1;
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    if (v7)
    {
      v15 = 1886352499;
    }

    else
    {
      v15 = 0x7472617473;
    }

    if (v7)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_100006B44(v15, v16, &v21);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_100006B44(a2, a3, &v21);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Manually triggering PiP %s for reason: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  if (v7)
  {
    v21 = v4;
    sub_100031634();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v4 + 104);
    if (v18)
    {
      [*(v18 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy) stopPictureInPictureAndRestoreUserInterface:1];
    }
  }

  else
  {
    v21 = v4;
    sub_100031634();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v4 + 104);
    if (v19)
    {
      [*(v19 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy) startPictureInPicture];
    }
  }

  return sub_10002EFE4(2);
}

id *sub_10003134C()
{
  sub_1000319E0((v0 + 8));
  swift_unknownObjectWeakDestroy();

  v1 = OBJC_IVAR____TtC17AppleVisionProApp18MirroringViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000313F4()
{
  sub_10003134C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MirroringViewModel(uint64_t a1)
{
  result = qword_10016AAF8;
  if (!qword_10016AAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000314A0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10003158C()
{
  result = qword_10016AE88;
  if (!qword_10016AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AE88);
  }

  return result;
}

unint64_t sub_1000315E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001598B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100031634()
{
  result = qword_100169C08;
  if (!qword_100169C08)
  {
    type metadata accessor for MirroringViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169C08);
  }

  return result;
}

void sub_100031694()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

void sub_1000316D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

void sub_100031714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  v4 = v2;
}

void sub_100031768(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002F664(v1);
}

void sub_1000317A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100030510(v2);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;
}

void sub_1000317F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002FD84(v1);
}

void sub_100031880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void sub_100031894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_1000318CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_100031904(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100031950(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002F3D4(v1);
}

void sub_100031980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_100031A7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100031B4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100031C1C(uint64_t a1)
{
  type metadata accessor for DeviceProvider(319);
  if (v1 <= 0x3F)
  {
    sub_100035E1C(319, &qword_10016AF30, &type metadata accessor for DismissAction);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100031CD8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x495645445F4C4C41;
  v1._object = 0xEB00000000534543;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016AEA0 = v4;
}

uint64_t sub_100031D94@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v70 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for AutomationSemantics();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v69 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for InsetGroupedListStyle();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016AF60, &qword_10010FF78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = sub_100002BE4(&qword_10016AF68, &qword_10010FF80);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v52 = sub_100002BE4(&qword_10016AF70, &qword_10010FF88);
  __chkstk_darwin(v52);
  v17 = &v51 - v16;
  v59 = sub_100002BE4(&qword_10016AF78, &qword_10010FF90);
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v51 - v18;
  v61 = sub_100002BE4(&qword_10016AF80, &qword_10010FF98);
  v58 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v51 - v19;
  v20 = sub_100002BE4(&qword_10016AF88, &qword_10010FFA0);
  v65 = *(v20 - 8);
  v66 = v20;
  __chkstk_darwin(v20);
  v63 = &v51 - v21;
  v73 = v1;
  v75 = v1;
  sub_100002BE4(&qword_10016AF90, &qword_10010FFA8);
  sub_1000343E4();
  List<>.init(content:)();
  v22 = sub_100012C48(&qword_10016AFB0, &qword_10016AF60, &qword_10010FF78, &protocol conformance descriptor for List<A, B>);
  View.listHasLazyStackBehavior()();
  (*(v9 + 8))(v11, v8);
  InsetGroupedListStyle.init()();
  *&v76 = v8;
  *(&v76 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v53;
  View.listStyle<A>(_:)();
  (*(v54 + 8))(v7, v23);
  v24 = v15;
  v25 = v52;
  (*(v13 + 8))(v24, v12);
  v26 = [objc_opt_self() systemBackgroundColor];
  v27 = Color.init(_:)();
  v28 = static Edge.Set.all.getter();
  v29 = &v17[*(v25 + 36)];
  *v29 = v27;
  v29[8] = v28;
  if (qword_100168F08 != -1)
  {
    swift_once();
  }

  v76 = xmmword_10016AEA0;
  v30 = sub_1000344D8();
  v31 = sub_100012928();
  v32 = v55;
  View.navigationTitle<A>(_:)();
  sub_100009908(v17, &qword_10016AF70, &qword_10010FF88);
  v33 = v62;
  v34 = v60;
  v35 = v64;
  (*(v62 + 104))(v60, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v64);
  *&v76 = v25;
  *(&v76 + 1) = &type metadata for String;
  v77 = v30;
  v78 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v57;
  v38 = v59;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v33 + 8))(v34, v35);
  (*(v56 + 8))(v32, v38);
  v39 = v68;
  *v68 = 515;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v40 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10010D3B0;
  sub_10003466C(v39, v41 + v40, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v42 = v69;
  sub_1000FCC48(137, v41, v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000129F4(v39);
  *&v76 = v38;
  *(&v76 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v63;
  v45 = v61;
  View.automationSemantics(_:)();
  (*(v71 + 8))(v42, v72);
  v46 = (*(v58 + 8))(v37, v45);
  __chkstk_darwin(v46);
  *(&v51 - 2) = v73;
  sub_100002BE4(&qword_10016AFC0, &qword_10010FFC8);
  *&v76 = v45;
  *(&v76 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v47 = sub_10000459C(&qword_10016AFC8, &qword_10010FFD0);
  v48 = sub_100012C48(&qword_10016AFD0, &qword_10016AFC8, &qword_10010FFD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  *&v76 = v47;
  *(&v76 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v66;
  View.toolbar<A>(content:)();
  return (*(v65 + 8))(v44, v49);
}

uint64_t sub_100032818(uint64_t *a1)
{
  v2 = type metadata accessor for DeviceSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v12 = v5;
  sub_100035708(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v5 + 16);
  sub_10003466C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceSelectionView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1000346D8(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_100002BE4(&qword_10016AFE8, &qword_100110008);
  sub_100002BE4(&qword_10016AFF0, &qword_100110010);
  sub_100012C48(&qword_10016AFF8, &qword_10016AFE8, &qword_100110008, &protocol conformance descriptor for [A]);
  v8 = sub_10000459C(&qword_10016AFA0, &unk_10010FFB0);
  v9 = sub_100012C48(&qword_10016AFA8, &qword_10016AFA0, &unk_10010FFB0, &protocol conformance descriptor for Button<A>);
  v12 = v8;
  v13 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100035708(&qword_10016B000, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100032AE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v66 = sub_100002BE4(&qword_10016B008, &qword_100110018) - 8;
  __chkstk_darwin(v66);
  v63 = &v56 - v5;
  v6 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v56 - v9;
  v10 = type metadata accessor for AutomationSemantics();
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v70 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DeviceSelectionView(0);
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  __chkstk_darwin(v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002BE4(&qword_10016AFA0, &unk_10010FFB0);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  sub_10003466C(a2, v18, type metadata accessor for DeviceSelectionView);
  v61 = *(v13 + 16);
  v62 = v13 + 16;
  v22 = a1;
  v23 = a1;
  v24 = v12;
  v61(v15, v23, v12);
  v25 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v26 = (v17 + *(v13 + 80) + v25) & ~*(v13 + 80);
  v27 = swift_allocObject();
  sub_1000346D8(v18, v27 + v25);
  v28 = v13;
  v29 = *(v13 + 32);
  v58 = v15;
  v30 = v24;
  v57 = v29;
  v29((v27 + v26), v15, v24);
  v76 = v22;
  v77 = a2;
  v31 = v22;
  v32 = v63;
  type metadata accessor for DeviceSelectionCellView(0);
  sub_100035708(&qword_10016B018, type metadata accessor for DeviceSelectionCellView, &unk_1001100A8);
  v67 = v21;
  Button.init(action:label:)();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v60 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v33 = *(*(v60 - 8) + 72);
  v64 = (*(*(v60 - 8) + 80) + 32) & ~*(*(v60 - 8) + 80);
  v65 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10010FEE0;
  v35 = *a2;
  swift_getKeyPath();
  v78 = v35;
  sub_100035708(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  v37 = v75;
  v38 = v31;
  v71 = v31;
  v39 = v30;
  v61(v75, v38, v30);
  v40 = v37;
  (*(v28 + 56))(v37, 0, 1, v39);
  v41 = *(v66 + 56);
  v42 = v35 + v36;
  v43 = v40;
  sub_10000C178(v42, v32, &qword_10016B010, &qword_100110020);
  sub_10000C178(v40, v32 + v41, &qword_10016B010, &qword_100110020);
  v44 = *(v28 + 48);
  if (v44(v32, 1, v39) != 1)
  {
    v46 = v59;
    sub_10000C178(v32, v59, &qword_10016B010, &qword_100110020);
    if (v44(v32 + v41, 1, v39) != 1)
    {
      v47 = v58;
      v57(v58, v32 + v41, v39);
      sub_100035708(&qword_10016B020, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v28 + 8);
      v48(v47, v39);
      sub_100009908(v75, &qword_10016B010, &qword_100110020);
      v48(v46, v39);
      sub_100009908(v32, &qword_10016B010, &qword_100110020);
      goto LABEL_8;
    }

    sub_100009908(v75, &qword_10016B010, &qword_100110020);
    (*(v28 + 8))(v46, v39);
    goto LABEL_6;
  }

  sub_100009908(v43, &qword_10016B010, &qword_100110020);
  if (v44(v32 + v41, 1, v39) != 1)
  {
LABEL_6:
    sub_100009908(v32, &qword_10016B008, &qword_100110018);
    v45 = 0;
    goto LABEL_8;
  }

  sub_100009908(v32, &qword_10016B010, &qword_100110020);
  v45 = 1;
LABEL_8:
  v49 = v34 + v64;
  *(v34 + v64) = v45 & 1;
  swift_storeEnumTagMultiPayload();
  v50 = (v49 + v65);
  *v50 = Device.name.getter();
  v50[1] = v51;
  swift_storeEnumTagMultiPayload();
  v52 = v70;
  sub_1000FCC48(192, v34, v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100012C48(&qword_10016AFA8, &qword_10016AFA0, &unk_10010FFB0, &protocol conformance descriptor for Button<A>);
  v53 = v69;
  v54 = v67;
  View.automationSemantics(_:)();
  (*(v72 + 8))(v52, v73);
  return (*(v68 + 8))(v54, v53);
}

uint64_t sub_1000333FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Device();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_100085880(v9);
  type metadata accessor for DeviceSelectionView(0);
  sub_1000240E8(v6);
  DismissAction.callAsFunction()();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000335C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_100002BE4(&qword_10016B008, &qword_100110018);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v36 = &v34 - v7;
  v8 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v9 = __chkstk_darwin(v8 - 8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Device();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v34 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = *(v14 + 16);
  v37 = &v34 - v18;
  v17();
  v19 = *a2;
  swift_getKeyPath();
  v39 = v19;
  sub_100035708(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  v21 = a1;
  v22 = v36;
  (v17)(v12, v21, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v23 = *(v6 + 56);
  sub_10000C178(v19 + v20, v22, &qword_10016B010, &qword_100110020);
  sub_10000C178(v12, v22 + v23, &qword_10016B010, &qword_100110020);
  v24 = *(v14 + 48);
  if (v24(v22, 1, v13) != 1)
  {
    v26 = v35;
    sub_10000C178(v22, v35, &qword_10016B010, &qword_100110020);
    if (v24(v22 + v23, 1, v13) != 1)
    {
      v27 = v22 + v23;
      v28 = v34;
      (*(v14 + 32))(v34, v27, v13);
      sub_100035708(&qword_10016B020, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v14 + 8);
      v29(v28, v13);
      sub_100009908(v12, &qword_10016B010, &qword_100110020);
      v29(v26, v13);
      sub_100009908(v22, &qword_10016B010, &qword_100110020);
      goto LABEL_8;
    }

    sub_100009908(v12, &qword_10016B010, &qword_100110020);
    (*(v14 + 8))(v26, v13);
    goto LABEL_6;
  }

  sub_100009908(v12, &qword_10016B010, &qword_100110020);
  if (v24(v22 + v23, 1, v13) != 1)
  {
LABEL_6:
    sub_100009908(v22, &qword_10016B008, &qword_100110018);
    v25 = 0;
    goto LABEL_8;
  }

  sub_100009908(v22, &qword_10016B010, &qword_100110020);
  v25 = 1;
LABEL_8:
  KeyPath = swift_getKeyPath();
  v31 = type metadata accessor for DeviceSelectionCellView(0);
  v32 = v38;
  *(v38 + *(v31 + 24)) = KeyPath;
  sub_100002BE4(&qword_10016B028, &qword_100110080);
  swift_storeEnumTagMultiPayload();
  result = (*(v14 + 32))(v32, v37, v13);
  *(v32 + *(v31 + 20)) = v25 & 1;
  return result;
}

uint64_t sub_100033AF8(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002BE4(&qword_10016AFC8, &qword_10010FFD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v11 = a1;
  sub_100002BE4(&qword_10016AFD8, &qword_10010FFD8);
  v7 = sub_10000459C(&qword_10016A028, &qword_10010EC70);
  v8 = sub_100012C48(&qword_10016A030, &qword_10016A028, &qword_10010EC70, &protocol conformance descriptor for Button<A>);
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  sub_100012C48(&qword_10016AFD0, &qword_10016AFC8, &qword_10010FFD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100033D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  v27 = v4;
  __chkstk_darwin(v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AutomationSemantics();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceSelectionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v13 - 8);
  v24 = sub_100002BE4(&qword_10016A028, &qword_10010EC70);
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v23 - v15;
  static ButtonRole.confirm.getter();
  sub_10003466C(a1, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceSelectionView);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_1000346D8(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  Button<>.init(role:action:)();
  *v6 = 771;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v19 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10010D3B0;
  sub_10003466C(v6, v20 + v19, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_1000FCC48(193, v20, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000129F4(v6);
  sub_100012C48(&qword_10016A030, &qword_10016A028, &qword_10010EC70, &protocol conformance descriptor for Button<A>);
  v21 = v24;
  View.automationSemantics(_:)();
  (*(v28 + 8))(v9, v29);
  return (*(v14 + 8))(v16, v21);
}