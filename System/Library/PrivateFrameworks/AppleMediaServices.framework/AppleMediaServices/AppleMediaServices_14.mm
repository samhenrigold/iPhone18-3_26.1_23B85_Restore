unint64_t sub_10015A968(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3E80, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10015A9B8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = sub_10015D618();
      break;
    case 2:
      result = 0x726564726FLL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = sub_10015D520();
      break;
    case 5:
      result = sub_10000B068();
      break;
    case 6:
      result = 6516580;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10015AA58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015A968(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015AA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015A9B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10015AABC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10015A9B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015AAF0(uint64_t a1)
{
  v2 = sub_10015C328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015AB2C(uint64_t a1)
{
  v2 = sub_10015C328();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroSchema.FieldSchema.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v67 = v23;
  v68 = v24;
  v27 = v26;
  v28 = sub_100099DF4(&qword_1002DEDB8, &qword_10023CCE8);
  sub_1000030B8(v28);
  sub_100003774();
  __chkstk_darwin(v29);
  v66 = &v62 - v30;
  v65 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_10000308C();
  v64 = v32 - v33;
  __chkstk_darwin(v34);
  v36 = &v62 - v35;
  v37 = sub_100099DF4(&qword_1002DEDF0, &qword_10023CD10);
  sub_100003724();
  v39 = v38;
  sub_100003774();
  __chkstk_darwin(v40);
  sub_100004880();
  sub_100008B3C(v27, v27[3]);
  sub_10015C328();
  v41 = v37;
  v42 = v67;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v71[0] = 0;
  v43 = v68;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v43)
  {
    (*(v39 + 8))(v25, v41);
  }

  else
  {
    memcpy(v72, (v42 + 16), 0x62uLL);
    memcpy(v71, (v42 + 16), sizeof(v71));
    sub_10014416C(v72, v70);
    sub_100157620();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v70, v71, 0x62uLL);
    sub_1001441C8(v70);
    sub_1000028BC(2);
    sub_1000028BC(4);
    v68 = v41;
    v45 = v27[3];
    v63 = v27[4];
    sub_100008B3C(v27, v45);
    v46 = *(dispatch thunk of Encoder.userInfo.getter() + 16);

    if (v46)
    {
      v69 = *(v42 + 152);
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      sub_10000ABC8(&qword_1002DEDE8, &protocol witness table for String);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v63 = 0;
      sub_100008B3C(v27, v27[3]);
      v47 = dispatch thunk of Encoder.userInfo.getter();
      v48 = v66;
      sub_100153CA8(v47, v66);

      if (sub_100004DFC(v48, 1, v65) == 1)
      {
        v49 = sub_10015D58C();
        v50(v49, v68);
        sub_10015D090(v48, &qword_1002DEDB8, &qword_10023CCE8);
      }

      else
      {
        sub_10015C1F4(v48, v36);
        v53 = v64;
        sub_10015C264(v36, v64);
        v54 = sub_10000AE5C();
        v55 = v68;
        if (v54)
        {
          v56 = v69;
          type metadata accessor for CodingUserInfoKey();
          sub_100006EF0();
          (*(v57 + 8))(v53);
          if (v56 == 2)
          {
            LOBYTE(v69) = 6;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          }

          sub_10015D090(v36, &qword_1002DEDC0, &qword_10023CCF0);
          v58 = sub_10015D58C();
          v44(v58, v55);
        }

        else
        {
          sub_10015D090(v36, &qword_1002DEDC0, &qword_10023CCF0);
          v59 = sub_10015D58C();
          v60(v59, v55);
          type metadata accessor for CodingUserInfoKey();
          sub_100006EF0();
          (*(v61 + 8))(v53);
        }
      }
    }

    else
    {
      v51 = sub_10015D58C();
      v52(v51, v68);
    }
  }

  sub_100005074();
}

void AvroSchema.FieldSchema.init(from:)()
{
  sub_100004868();
  v3 = v2;
  v76 = v4;
  v5 = sub_100099DF4(&qword_1002DEE00, &qword_10023CD18);
  sub_1000030B8(v5);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  v7 = sub_100099DF4(&qword_1002DEE08, &unk_10023CD20);
  sub_100003724();
  v105 = v8;
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  v12 = sub_10015D60C();
  sub_100008B3C(v12, v13);
  sub_10015C328();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {

    sub_100002728(v1, 1, 1, v7);
    sub_10015D090(v1, &qword_1002DEE00, &qword_10023CD18);
    v14 = sub_100157348();
    v15 = sub_100007F60(&type metadata for AvroSchemaDecodingError, v14);
    sub_10015D570(v15, v16);
    sub_100004118(v3);
    goto LABEL_4;
  }

  v17 = v3;
  sub_100002728(v1, 0, 1, v7);
  (*(v105 + 32))(v11, v1, v7);
  LOBYTE(v78) = 0;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v75 = v18;
  LOBYTE(v77[0]) = 1;
  sub_100157420();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v85 >> 8 != 0xFFFFFFFF || v88 > 1;
  if (v21 || (v90 & 0xFCFE) != 0)
  {
    v72 = v90;
    v62 = v87;
    v63 = v89;
    v70 = v84;
    v71 = v85;
    v68 = v83;
    v69 = v86;
    v67 = v82;
    v65 = v80;
    v66 = v81;
    v64 = v79;
    v73 = v88;
    v74 = v78;
  }

  else
  {
    sub_100099DF4(&qword_1002DED58, &unk_10023CCC8);
    LOBYTE(v77[0]) = 1;
    sub_10015739C();
    sub_100010E74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v78;
    if (!v78)
    {
      v38 = sub_100157348();
      v39 = sub_100007F60(&type metadata for AvroSchemaDecodingError, v38);
      sub_10015D570(v39, v40);
      v22 = sub_100002A98();
      v23(v22);
      sub_100004118(v3);
LABEL_44:

      goto LABEL_4;
    }

    sub_1000140AC();
    v25 = swift_allocObject();
    v71 = 0;
    v73 = 0;
    v74 = v25;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = v24;
    v72 = 28672;
  }

  v26 = 2;
  sub_10000677C();
  v27 = v11;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_10000677C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FEC();
    if (!v29)
    {
      v37 = v7;
      LODWORD(v76) = 0;
      LODWORD(v7) = 0;
      goto LABEL_39;
    }

    v58 = v28;
    v61 = v29;
    v27 = 2;
  }

  else
  {
    v58 = 0;
    v61 = 0xE000000000000000;
  }

  sub_10000677C();
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_10000677C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FEC();
    v49 = v31;
    if (v31)
    {
      v27 = 3;
      v50 = v30;
      sub_100099DF4(&qword_1002DD538, &unk_100238260);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10022E400;
      *(v32 + 32) = v50;
      *(v32 + 40) = v49;
    }

    else
    {
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      LOBYTE(v77[0]) = 3;
      sub_10015C37C(&qword_1002DEE10, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      sub_100010E74();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v27 = 3;
      v32 = v78;
      if (!v78)
      {
        v37 = v7;
        LODWORD(v7) = 0;
        LODWORD(v76) = 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  v60 = v32;
  sub_10000677C();
  if ((KeyedDecodingContainer.contains(_:)() & 1) != 0 && (sub_10000677C(), v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v34))
  {
    v35 = v33;
    v59 = v34;
  }

  else
  {
    v35 = 0;
    v59 = 0xE000000000000000;
  }

  sub_10000677C();
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_10000677C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FEC();
    v27 = 5;
    if (v36 == 2)
    {
      v37 = v7;
      sub_100013E20();
LABEL_38:
      v26 = v27;
LABEL_39:
      v44 = v73;
      goto LABEL_40;
    }
  }

  else
  {
    v36 = 0;
  }

  v57 = v36;
  v26 = 6;
  sub_10000677C();
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    v55 = 0;
    v56 = v35;
    v54 = 0xE000000000000000;
    v43 = v105;
    v26 = v27;
    v44 = v73;
LABEL_33:
    (*(v43 + 8))(v26, v7);
    v77[0] = v75;
    v77[1] = v20;
    v77[2] = v74;
    v77[3] = v64;
    v77[4] = v65;
    v77[5] = v66;
    v77[6] = v67;
    v77[7] = v68;
    v45 = v71;
    v77[8] = v70;
    v77[9] = v71;
    v46 = v62;
    v47 = v63;
    v77[10] = v69;
    v77[11] = v62;
    v77[12] = v44;
    v77[13] = v63;
    v48 = v72;
    LOWORD(v77[14]) = v72;
    *(&v77[14] + 2) = v103;
    HIWORD(v77[14]) = v104;
    v77[15] = v55;
    v77[16] = v54;
    v77[17] = v58;
    v77[18] = v61;
    v77[19] = v60;
    v77[20] = v56;
    v77[21] = v59;
    LOWORD(v77[22]) = v57;
    sub_10014421C(v77, &v78);
    sub_100004118(v17);
    v78 = v75;
    v79 = v20;
    v80 = v74;
    v81 = v64;
    v82 = v65;
    v83 = v66;
    v84 = v67;
    v85 = v68;
    v86 = v70;
    v87 = v45;
    v88 = v69;
    v89 = v46;
    v90 = v44;
    v91 = v47;
    v92 = v48;
    v93 = v103;
    v94 = v104;
    v95 = v55;
    v96 = v54;
    v97 = v58;
    v98 = v61;
    v99 = v60;
    v100 = v56;
    v101 = v59;
    v102 = v57;
    sub_100144278(&v78);
    memcpy(v76, v77, 0xB2uLL);
    goto LABEL_4;
  }

  sub_10000677C();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100004FEC();
  v44 = v73;
  if (v42)
  {
    v43 = v105;
    v55 = v41;
    v56 = v35;
    v54 = v42;
    goto LABEL_33;
  }

  v37 = v7;
  sub_100013E20();
LABEL_40:
  v51 = sub_100157348();
  v52 = sub_100007F60(&type metadata for AvroSchemaDecodingError, v51);
  sub_10015D570(v52, v53);
  (*(v105 + 8))(v26, v37);
  sub_100004118(v3);

  v78 = v74;
  v79 = v64;
  v80 = v65;
  v81 = v66;
  v82 = v67;
  v83 = v68;
  v84 = v70;
  v85 = v71;
  v86 = v69;
  v87 = v62;
  v88 = v44;
  v89 = v63;
  LOWORD(v90) = v72;
  sub_1001441C8(&v78);
  if (v76)
  {
  }

  if (v7)
  {

    goto LABEL_44;
  }

LABEL_4:
  sub_100005074();
}

uint64_t sub_10015B8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v4 || (sub_100004EE8(0x736C6F626D7973, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6516580 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    sub_100004EE8(6516580, 0xE300000000000000);
    sub_10015D600();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10015B954(char a1)
{
  if (a1)
  {
    return 6516580;
  }

  else
  {
    return 0x736C6F626D7973;
  }
}

uint64_t sub_10015B984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10015D624();
  v7 = a1 == v5 && a2 == v6;
  if (v7 || (sub_100004EE8(v5, v6) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    sub_100004EE8(1701869940, 0xE400000000000000);
    sub_10015D600();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10015BA1C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x546C616369676F6CLL;
  }
}

uint64_t sub_10015BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015B8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015BA9C(uint64_t a1)
{
  v2 = sub_10015C2D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015BAD8(uint64_t a1)
{
  v2 = sub_10015C2D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10015BB14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10015BB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_10015B984(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_10015BB90(uint64_t a1)
{
  v2 = sub_10015CA5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015BBCC(uint64_t a1)
{
  v2 = sub_10015CA5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015BC08(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = a2;
  v6 = sub_100099DF4(&qword_1002DEE78, &qword_10023D228);
  sub_100003724();
  v8 = v7;
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = &v14[-1] - v10;
  if (v5 == 1)
  {
    sub_100008B3C(a1, a1[3]);
    sub_10015CA5C();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    sub_100161910(1);
    LOBYTE(v14[0]) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      (*(v8 + 8))(v11, v6);
    }

    else
    {

      LOBYTE(v14[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v8 + 8))(v11, v6);
    }
  }

  else
  {
    sub_10000C4FC(a1, a1[3]);
    sub_100002A98();
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100161910(v3);
    sub_100008494(v14, v14[3]);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    return sub_100004118(v14);
  }
}

unint64_t sub_10015BEC8()
{
  result = qword_1002DED80;
  if (!qword_1002DED80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchemaEncodingError, &type metadata for AvroSchemaEncodingError, v0, v1);
    atomic_store(result, &qword_1002DED80);
  }

  return result;
}

unint64_t sub_10015BF1C()
{
  result = qword_1002DED90;
  if (!qword_1002DED90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DED88, &qword_10023CCE0);
    v4[0] = sub_10015BFA0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DED90);
  }

  return result;
}

unint64_t sub_10015BFA0()
{
  result = qword_1002DED98;
  if (!qword_1002DED98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.FieldSchema, &type metadata for AvroSchema.FieldSchema, v0, v1);
    atomic_store(result, &qword_1002DED98);
  }

  return result;
}

unint64_t sub_10015BFF4()
{
  result = qword_1002DEDA0;
  if (!qword_1002DEDA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.UnionSchema, &type metadata for AvroSchema.UnionSchema, v0, v1);
    atomic_store(result, &qword_1002DEDA0);
  }

  return result;
}

unint64_t sub_10015C0F8()
{
  result = qword_1002DEDA8;
  if (!qword_1002DEDA8)
  {
    result = swift_getWitnessTable(byte_10023ED08, &unk_1002BAE70, v0, v1);
    atomic_store(result, &qword_1002DEDA8);
  }

  return result;
}

unint64_t sub_10015C14C()
{
  result = qword_1002DEDB0;
  if (!qword_1002DEDB0)
  {
    result = swift_getWitnessTable(byte_10023ECE0, &unk_1002BAF90, v0, v1);
    atomic_store(result, &qword_1002DEDB0);
  }

  return result;
}

unint64_t sub_10015C1A0()
{
  result = qword_1002DEDD0;
  if (!qword_1002DEDD0)
  {
    result = swift_getWitnessTable(byte_10023D184, &unk_1002B9FF8, v0, v1);
    atomic_store(result, &qword_1002DEDD0);
  }

  return result;
}

uint64_t sub_10015C1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015C264(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015C2D4()
{
  result = qword_1002DEDE0;
  if (!qword_1002DEDE0)
  {
    result = swift_getWitnessTable(byte_10023D134, &unk_1002B9F68, v0, v1);
    atomic_store(result, &qword_1002DEDE0);
  }

  return result;
}

unint64_t sub_10015C328()
{
  result = qword_1002DEDF8;
  if (!qword_1002DEDF8)
  {
    result = swift_getWitnessTable("=!\a", &unk_1002B9ED8, v0, v1);
    atomic_store(result, &qword_1002DEDF8);
  }

  return result;
}

uint64_t sub_10015C37C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10009A468(&qword_1002DA600, &qword_10022E490);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_10015C3E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10015C640()
{
  result = qword_1002DEE18;
  if (!qword_1002DEE18)
  {
    result = swift_getWitnessTable(byte_10023CE5C, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002DEE18);
  }

  return result;
}

unint64_t sub_10015C698()
{
  result = qword_1002DEE20;
  if (!qword_1002DEE20)
  {
    result = swift_getWitnessTable(byte_10023CF14, &unk_1002B9FF8, v0, v1);
    atomic_store(result, &qword_1002DEE20);
  }

  return result;
}

unint64_t sub_10015C6F0()
{
  result = qword_1002DEE28;
  if (!qword_1002DEE28)
  {
    result = swift_getWitnessTable("5!\a", &unk_1002B9F68, v0, v1);
    atomic_store(result, &qword_1002DEE28);
  }

  return result;
}

unint64_t sub_10015C748()
{
  result = qword_1002DEE30;
  if (!qword_1002DEE30)
  {
    result = swift_getWitnessTable("E \a", &unk_1002B9ED8, v0, v1);
    atomic_store(result, &qword_1002DEE30);
  }

  return result;
}

unint64_t sub_10015C7A0()
{
  result = qword_1002DEE38;
  if (!qword_1002DEE38)
  {
    result = swift_getWitnessTable(byte_10023CFF4, &unk_1002B9ED8, v0, v1);
    atomic_store(result, &qword_1002DEE38);
  }

  return result;
}

unint64_t sub_10015C7F8()
{
  result = qword_1002DEE40;
  if (!qword_1002DEE40)
  {
    result = swift_getWitnessTable(byte_10023D01C, &unk_1002B9ED8, v0, v1);
    atomic_store(result, &qword_1002DEE40);
  }

  return result;
}

unint64_t sub_10015C850()
{
  result = qword_1002DEE48;
  if (!qword_1002DEE48)
  {
    result = swift_getWitnessTable(byte_10023CF3C, &unk_1002B9F68, v0, v1);
    atomic_store(result, &qword_1002DEE48);
  }

  return result;
}

unint64_t sub_10015C8A8()
{
  result = qword_1002DEE50;
  if (!qword_1002DEE50)
  {
    result = swift_getWitnessTable("}\a", &unk_1002B9F68, v0, v1);
    atomic_store(result, &qword_1002DEE50);
  }

  return result;
}

unint64_t sub_10015C900()
{
  result = qword_1002DEE58;
  if (!qword_1002DEE58)
  {
    result = swift_getWitnessTable("M#\a", &unk_1002B9FF8, v0, v1);
    atomic_store(result, &qword_1002DEE58);
  }

  return result;
}

unint64_t sub_10015C958()
{
  result = qword_1002DEE60;
  if (!qword_1002DEE60)
  {
    result = swift_getWitnessTable("5#\a", &unk_1002B9FF8, v0, v1);
    atomic_store(result, &qword_1002DEE60);
  }

  return result;
}

unint64_t sub_10015C9B0()
{
  result = qword_1002DEE68;
  if (!qword_1002DEE68)
  {
    result = swift_getWitnessTable("=$\a", &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002DEE68);
  }

  return result;
}

unint64_t sub_10015CA08()
{
  result = qword_1002DEE70;
  if (!qword_1002DEE70)
  {
    result = swift_getWitnessTable("%$\a", &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002DEE70);
  }

  return result;
}

unint64_t sub_10015CA5C()
{
  result = qword_1002DEE80;
  if (!qword_1002DEE80)
  {
    result = swift_getWitnessTable(byte_10023D43C, &unk_1002BA248, v0, v1);
    atomic_store(result, &qword_1002DEE80);
  }

  return result;
}

unint64_t sub_10015CAB0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v6 = v2;
    v7 = v1;
    v5[6] = 46;
    v5[7] = 0xE100000000000000;
    sub_1000BBBB0();
    v3 = StringProtocol.contains<A>(_:)();
    if (v3)
    {
      v6 = 46;
      v7 = 0xE100000000000000;
      __chkstk_darwin(v3);
      v5[2] = &v6;
      sub_10015CE04(sub_10011D0A8, v5, v2, v1);
      String.subscript.getter();
      v1 = static String._fromSubstring(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

unint64_t sub_10015CBF8(uint64_t (*a1)(void *))
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v1 + 16);
    v8 = v4;
    v9 = v2;
    v7[6] = 46;
    v7[7] = 0xE100000000000000;
    sub_1000BBBB0();
    v5 = StringProtocol.contains<A>(_:)();
    if (v5)
    {
      v8 = 46;
      v9 = 0xE100000000000000;
      __chkstk_darwin(v5);
      v7[2] = &v8;
      sub_10015CE04(a1, v7, v4, v2);
      String.subscript.getter();
      v2 = static String._fromSubstring(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unint64_t sub_10015CD34()
{
  result = qword_1002DEE90;
  if (!qword_1002DEE90)
  {
    result = swift_getWitnessTable(a5_1, &unk_1002BA1B8, v0, v1);
    atomic_store(result, &qword_1002DEE90);
  }

  return result;
}

unint64_t sub_10015CD88()
{
  result = qword_1002DEEA0;
  if (!qword_1002DEEA0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10009A468(&qword_1002DEE98, &qword_10023D238);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Set<A>, v3, v4);
    atomic_store(result, &qword_1002DEEA0);
  }

  return result;
}

unint64_t sub_10015CE04(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_10015CF08(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = type metadata accessor for CodingUserInfoKey();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56) + 32 * a3;

  return sub_100009F20(v12, a2);
}

unint64_t sub_10015CFE8()
{
  result = qword_1002DEEA8;
  if (!qword_1002DEEA8)
  {
    result = swift_getWitnessTable(byte_10023E810, &unk_1002BAE70, v0, v1);
    atomic_store(result, &qword_1002DEEA8);
  }

  return result;
}

unint64_t sub_10015D03C()
{
  result = qword_1002DEEB0;
  if (!qword_1002DEEB0)
  {
    result = swift_getWitnessTable(asc_10023ED80, &unk_1002BAF90, v0, v1);
    atomic_store(result, &qword_1002DEEB0);
  }

  return result;
}

uint64_t sub_10015D090(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100099DF4(a2, a3);
  sub_100006EF0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10015D0E4()
{

  sub_10014E7B4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return _swift_deallocObject(v0, 131, 7);
}

_BYTE *sub_10015D150(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10015D228(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10015D304()
{
  result = qword_1002DEEB8;
  if (!qword_1002DEEB8)
  {
    result = swift_getWitnessTable(byte_10023D30C, &unk_1002BA248, v0, v1);
    atomic_store(result, &qword_1002DEEB8);
  }

  return result;
}

unint64_t sub_10015D35C()
{
  result = qword_1002DEEC0;
  if (!qword_1002DEEC0)
  {
    result = swift_getWitnessTable(asc_10023D3C4, &unk_1002BA1B8, v0, v1);
    atomic_store(result, &qword_1002DEEC0);
  }

  return result;
}

unint64_t sub_10015D3B4()
{
  result = qword_1002DEEC8;
  if (!qword_1002DEEC8)
  {
    result = swift_getWitnessTable(byte_10023D334, &unk_1002BA1B8, v0, v1);
    atomic_store(result, &qword_1002DEEC8);
  }

  return result;
}

unint64_t sub_10015D40C()
{
  result = qword_1002DEED0;
  if (!qword_1002DEED0)
  {
    result = swift_getWitnessTable(byte_10023D35C, &unk_1002BA1B8, v0, v1);
    atomic_store(result, &qword_1002DEED0);
  }

  return result;
}

unint64_t sub_10015D464()
{
  result = qword_1002DEED8;
  if (!qword_1002DEED8)
  {
    result = swift_getWitnessTable(aU_0, &unk_1002BA248, v0, v1);
    atomic_store(result, &qword_1002DEED8);
  }

  return result;
}

unint64_t sub_10015D4BC()
{
  result = qword_1002DEEE0;
  if (!qword_1002DEEE0)
  {
    result = swift_getWitnessTable(asc_10023D2A4, &unk_1002BA248, v0, v1);
    atomic_store(result, &qword_1002DEEE0);
  }

  return result;
}

void *sub_10015D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return memcpy(&STACK[0x288], (a10 + 16), 0x62uLL);
}

uint64_t sub_10015D570(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_10015D598(uint64_t a1, uint64_t a2)
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t sub_10015D5B4(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_10015D5E8(void *a1)
{

  return memcpy(a1, v1, 0x62uLL);
}

void *sub_10015D644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (a2 + 16), 0x51uLL);
}

uint64_t sub_10015D684()
{
}

uint64_t sub_10015D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10015D6C4(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_10015D6E4(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x62uLL);
}

BOOL sub_10015D6FC()
{
  sub_10000C0A4();
  do
  {
    if (!--v2)
    {
      break;
    }

    v4 = *v3;
    v8[0] = *(v3 - 1);
    v8[1] = v4;

    v5 = v1(v8);
    if (v0)
    {

      return v2 != 0;
    }

    v6 = v5;
    v3 += 2;
  }

  while ((v6 & 1) == 0);
  return v2 != 0;
}

BOOL sub_10015D798(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    memcpy(__dst, v5, 0xB2uLL);
    memcpy(__src, v5, 0xB2uLL);
    sub_10014421C(__dst, v10);
    v7 = a1(__src);
    if (v3)
    {
      memcpy(v10, __src, 0xB2uLL);
      sub_100144278(v10);
      return v6 != 0;
    }

    v8 = v7;
    v5 += 184;
    memcpy(v10, __src, 0xB2uLL);
    sub_100144278(v10);
  }

  while ((v8 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_10015D89C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015D93C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015D9E8()
{
  sub_10000A634();
  String.hash(into:)();
}

uint64_t sub_10015DA48(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DAD0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DB30(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DB9C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DCA8()
{
  sub_10000A634();
  String.hash(into:)();
}

uint64_t sub_10015DD08(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DD70(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DDE4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DEA4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DF40(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015DFB4(uint64_t a1)
{
  String.hash(into:)();
}

uint64_t sub_10015E040()
{
  sub_10000A634();
  String.hash(into:)();
}

uint64_t sub_10015E170(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015E258(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015E2E8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_10016140C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_10015E400(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

uint64_t sub_10015E458(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10015E538(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Bool __swiftcall AvroSchema.isNull()()
{
  if (sub_10000B458(v0[2], v0[3], *v0, v0[1], v0[5], v0[4]))
  {
    return 0;
  }

  else
  {
    return v1 == -12288;
  }
}

Swift::Bool __swiftcall AvroSchema.isBoolean()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 1;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

Swift::Bool __swiftcall AvroSchema.isFloat()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 2;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

Swift::Bool __swiftcall AvroSchema.isDouble()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 3;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

Swift::Bool __swiftcall AvroSchema.isString()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 4;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

void *sub_10015E780()
{
  switch(v1[48] >> 12)
  {
    case 3:
      v2 = *(*v1 + 64);
      v3 = *(v2 + 16);
      if (!v3)
      {
        return _swiftEmptyArrayStorage;
      }

      v0 = _swiftEmptyArrayStorage;
      v4 = v3 - 1;
      for (i = 32; ; i += 184)
      {
        memcpy(__dst, (v2 + i), 0xB2uLL);
        v6 = swift_allocObject();
        v7 = memmove((v6 + 16), (v2 + i), 0xB2uLL);
        v15 = sub_10000465C(v7, v8, v9, v10, v11, v12, v13, v14, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, __dst[0]);
        v17 = sub_10014421C(v15, v16);
        v25 = sub_10000465C(v17, v18, v19, v20, v21, v22, v23, v24, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, __dst[0]);
        sub_10014421C(v25, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100013CD0(0, v0[2] + 1);
          v0 = v30;
        }

        v28 = v0[2];
        v27 = v0[3];
        if (v28 >= v27 >> 1)
        {
          sub_100013CD0(v27 > 1, v28 + 1);
          v0 = v31;
        }

        sub_100144278(__dst);
        v0[2] = v28 + 1;
        v29 = &v0[13 * v28];
        v29[4] = v6;
        v29[11] = 0;
        v29[14] = 0;
        *(v29 + 64) = -20480;
        if (!v4)
        {
          break;
        }

        --v4;
      }

      return v0;
    case 5:
      sub_10000ABEC();
      v53 = memcpy(v51, v52, 0x73uLL);
      v61 = sub_10000465C(v53, v54, v55, v56, v57, v58, v59, v60, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, __dst[0]);
      v63 = sub_100150F70(v61, v62);
      sub_1001613F4(v63, v64);
      sub_1000073C0();
      sub_100006B00();
      if (v50)
      {
        sub_100008108(v65);
        sub_10013C2FC();
        v0 = v90;
      }

      sub_100150FCC(__dst);
      goto LABEL_25;
    case 6:
      sub_10000ABEC();
      v37 = memcpy(v35, v36, 0x73uLL);
      v45 = sub_10000465C(v37, v38, v39, v40, v41, v42, v43, v44, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, __dst[0]);
      v47 = sub_10014EA68(v45, v46);
      sub_1001613F4(v47, v48);
      sub_1000073C0();
      sub_100006B00();
      if (v50)
      {
        sub_100008108(v49);
        sub_10013C2FC();
        v0 = v89;
      }

      sub_10014EAC4(__dst);
      goto LABEL_25;
    case 7:
      sub_1000073C0();
      v0 = v66;
      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        sub_100013CD0(v67 > 1, v68 + 1);
        v0 = v91;
      }

      v0[2] = v68 + 1;
      memcpy(&v0[13 * v68 + 4], v1, 0x62uLL);

      return v0;
    case 0xB:
      sub_10000ABEC();
      v71 = memcpy(v69, v70, 0xB2uLL);
      v79 = sub_10000465C(v71, v72, v73, v74, v75, v76, v77, v78, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, __dst[0]);
      v81 = sub_10014421C(v79, v80);
      sub_1001613F4(v81, v82);
      sub_1000073C0();
      sub_100006B00();
      if (v50)
      {
        sub_100008108(v83);
        sub_10013C2FC();
        v0 = v92;
      }

      sub_100144278(__dst);
LABEL_25:
      v0[2] = v1;
      sub_10000C6AC();
      memcpy(v84, v85, v86);
      break;
    default:
      sub_1000073C0();
      v0 = v32;
      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        sub_100013CD0(v33 > 1, v34 + 1);
        v0 = v88;
      }

      v0[2] = v34 + 1;
      memcpy(&v0[13 * v34 + 4], v1, 0x62uLL);
      sub_10014416C(v1, __dst);
      break;
  }

  return v0;
}

uint64_t sub_10015EAF8()
{
  v1 = v0;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    sub_1000BBBB0();

    if ((StringProtocol.contains<A>(_:)() & 1) == 0)
    {
      v4 = v0[3];
      if (v4)
      {
        v5 = v1[2];
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1002329F0;
        *(v6 + 32) = v5;
        *(v6 + 40) = v4;
        *(v6 + 48) = v3;
        *(v6 + 56) = v2;

        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        v3 = BidirectionalCollection<>.joined(separator:)();
      }
    }
  }

  else
  {
    v3 = v0[4];
  }

  return v3;
}

void AvroSchema.resolving(from:)(int8x16_t *a1)
{
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x62uLL);
  if ((static AvroSchema.== infix(_:_:)(__dst, a1) & 1) == 0)
  {
    sub_10015F370(a1);
    return;
  }

  sub_10000776C(&v62);
  v6 = v72;
  v7 = v62;
  switch(v72 >> 12)
  {
    case 3:
      memcpy(v58, v62 + 2, 0x51uLL);
      memcpy(__src, v62 + 2, 0x51uLL);
      sub_10000A2B4();
      if (v8 != 12288)
      {
        goto LABEL_46;
      }

      sub_1000053BC();
      memcpy(v9, v10, v11);
      sub_10014416C(&v62, v60);
      sub_10015BE18(v58, v60);
      sub_10015BE18(v73, v60);
      sub_100160230(v73);
      if (v2)
      {
        memcpy(v60, __src, 0x51uLL);
        sub_10015BE74(v60);
        sub_10015BE74(v73);
        goto LABEL_33;
      }

      memcpy(v55, __src, 0x51uLL);
      sub_10015BE74(v55);
      sub_10000776C(v60);
      sub_1001441C8(v60);
      sub_100004650();
      v42 = swift_allocObject();
      memcpy((v42 + 16), v73, 0x51uLL);
      sub_1001441C8(&v62);
      sub_10000678C();
      v27 = 12288;
      goto LABEL_38;
    case 4:
      sub_10000776C(v60);

      sub_1001441C8(v60);
      memcpy(v58, v7 + 2, 0x51uLL);
      sub_100004650();
      v26 = swift_allocObject();
      memmove((v26 + 16), v7 + 2, 0x50uLL);
      *(v26 + 96) = 1;
      sub_10015C048(v58, __src);
      sub_1001441C8(&v62);
      *v4 = v26;
      *(v4 + 7) = 0;
      *(v4 + 10) = 0;
      v27 = 0x4000;
      goto LABEL_38;
    case 5:
      sub_100008CAC(v60);
      sub_100008CAC(v57);
      sub_10000A2B4();
      if (v17 != 20480)
      {
        goto LABEL_45;
      }

      sub_1000083CC();
      memcpy(v18, v19, v20);
      sub_10014416C(&v62, v58);
      sub_100150F70(v60, v58);
      sub_10014416C(v74, v58);
      AvroSchema.resolving(from:)(v74);
      if (v2)
      {
        memcpy(v58, v57, 0x73uLL);
        sub_100150FCC(v58);
        v21 = v74;
        goto LABEL_15;
      }

      sub_1001441C8(v74);
      sub_10000776C(v58);
      sub_1001441C8(v58);
      v40 = swift_allocObject();
      memcpy((v40 + 16), v57, 0x73uLL);
      sub_1001441C8(&v62);
      sub_10000678C();
      v27 = 20480;
      goto LABEL_38;
    case 6:
      sub_100008CAC(v60);
      sub_100008CAC(v59);
      sub_10000A2B4();
      if (v22 != 24576)
      {
        goto LABEL_47;
      }

      sub_1000083CC();
      memcpy(v23, v24, v25);
      sub_10014416C(&v62, v58);
      sub_10014EA68(v60, v58);
      sub_10014416C(v75, v58);
      AvroSchema.resolving(from:)(v75);
      if (!v2)
      {
        sub_1001441C8(v75);
        sub_10000776C(v58);
        sub_1001441C8(v58);
        v41 = swift_allocObject();
        memcpy((v41 + 16), v59, 0x73uLL);
        sub_1001441C8(&v62);
        sub_10000678C();
        v27 = 24576;
        goto LABEL_38;
      }

      memcpy(v58, v59, 0x73uLL);
      sub_10014EAC4(v58);
      v21 = v75;
LABEL_15:
      sub_1001441C8(v21);
      goto LABEL_33;
    case 7:
      v12 = v62[3];
      v13 = v62[5];
      v46 = v62[4];
      v47 = v62[2];
      v14 = v62[6];
      sub_10000A2B4();
      if (v15 == 28672)
      {
        v16 = *(a1->i64[0] + 48);
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      v32 = *(v14 + 16);
      sub_10014416C(&v62, v60);
      v33 = v14 + 32;
      v50 = v12;

      v52 = v13;

      v34 = 0;
      v80 = v14;
      v48 = v14 + 32;
      break;
    case 8:
      v80 = v71;
      v28 = v70;
      v53 = v68;
      v54 = v69;
      v29 = v67;
      v30 = v66;
      v31 = v65;
      sub_10000776C(v58);
      sub_10000776C(v60);
      v61 &= 0xFFFu;
      v49 = v64;
      v51 = v63;
      sub_10014EA0C(v60, __src);
      sub_1001441C8(v58);
      *v4 = v7;
      *(v4 + 24) = v49;
      *(v4 + 8) = v51;
      *(v4 + 5) = v31;
      *(v4 + 6) = v30;
      *(v4 + 7) = v29;
      *(v4 + 8) = v53;
      *(v4 + 9) = v54;
      *(v4 + 10) = v28 & 1;
      *(v4 + 11) = v80;
      *(v4 + 48) = v6 & 1 | 0x8100;
      return;
    default:
      return;
  }

LABEL_20:
  if (v34 == v32)
  {

    sub_10016057C();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    goto LABEL_32;
  }

  if (v34 >= *(v14 + 16))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  memcpy(v78, (v33 + 104 * v34), 0x62uLL);
  v35 = v16[2];
  sub_10014416C(v78, v60);
  v36 = 0;
  for (i = 4; ; i += 13)
  {
    if (v35 == v36)
    {
      sub_1001441C8(v78);
      ++v34;
      v14 = v80;
      v33 = v48;
      goto LABEL_20;
    }

    memcpy(v77, &v16[i], 0x62uLL);
    sub_10014416C(v77, v60);
    v38 = static AvroSchema.== infix(_:_:)(v77, v78);
    sub_1001441C8(v77);
    if (v38)
    {
      break;
    }

    ++v36;
  }

  sub_1001441C8(v78);
  if (v36 >= v16[2])
  {
    goto LABEL_42;
  }

  memcpy(v76, &v16[i], 0x62uLL);
  sub_10014416C(v76, v60);

  v39 = v80;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_43:
    sub_1001612CC();
    v39 = v45;
  }

  if (v34 >= *(v39 + 16))
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  AvroSchema.resolving(from:)(v76);
  if (!v3)
  {
    sub_1001441C8(v76);
    sub_10000776C(v60);
    sub_1001441C8(v60);
    v43 = swift_allocObject();
    v43[2] = v47;
    v43[3] = v50;
    v43[4] = v46;
    v43[5] = v52;
    v43[6] = v39;
    sub_1001441C8(&v62);
    sub_10000678C();
    v27 = 28672;
LABEL_38:
    *(v4 + 48) = v27;
    return;
  }

  sub_1001441C8(v76);

LABEL_32:

LABEL_33:
  sub_1001441C8(&v62);
}

void sub_10015F370(int8x16_t *a1)
{
  v2 = v1;
  v4 = a1->i64[0];
  v87 = a1[1].i64[0];
  v85 = a1->i64[1];
  v86 = a1[1].i64[1];
  v5 = a1[2].i64[0];
  v7 = a1[3].i64[0];
  v6 = a1[3].i64[1];
  v8 = a1[4].i64[1];
  v82 = a1[4].i64[0];
  v83 = a1[2].i64[1];
  v9 = a1[5].i64[0];
  v84 = a1[5].i64[1];
  v10 = a1[6].u16[0];
  sub_10000776C(v109);
  if ((v110 & 0xF000) != 0x7000)
  {
    switch(v10 >> 12)
    {
      case 0u:
        v20 = v2[6].u16[0] >> 12;
        if (v20 == 1)
        {
          return;
        }

        v21 = v20 == 13;
LABEL_39:
        if (!v21)
        {
          goto LABEL_4;
        }

        v42 = sub_100007D40(v2[4], v2[5], v2[2], v2[3]);
        v46 = *&v42 | v43 | v44 | v45;
        v47 = v40 == 53248 && *&v41 == 2;
        if (!v47 || v46)
        {
          v48 = v40 == 53248 && *&v41 == 3;
          if (!v48 || v46)
          {
            goto LABEL_4;
          }
        }

        return;
      case 1u:
        v21 = (v2[6].i16[0] & 0xF000) == 53248;
        goto LABEL_39;
      case 2u:
        v106 = v5;
        v105 = v7;
        sub_10000776C(__src);
        v25 = __src[7];
        v26 = __src[9];
        LOBYTE(v89) = __src[10];
        v27 = __src[11];
        v28 = BYTE1(__src[12]) >> 4;
        if (v28 != 8)
        {
          if (v28 == 13 && (LOBYTE(__src[12]) | (BYTE1(__src[12]) << 8)) == 0xD000 && __src[0] == 4)
          {
            v30 = __src[2] | __src[1] | __src[3] | __src[4] | __src[5] | __src[6] | __src[8] | LOBYTE(__src[10]) | ((*(&__src[10] + 1) | ((*(&__src[10] + 5) | (HIBYTE(__src[10]) << 16)) << 32)) << 8);
            v31 = __src[7] | __src[9] | __src[11];
            goto LABEL_36;
          }

          goto LABEL_4;
        }

        LOBYTE(v88) = __src[12];
        if (v87 == 7)
        {
          if (LOBYTE(__src[7]) != 7)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (LOBYTE(__src[7]) == 7)
          {
            goto LABEL_4;
          }

          v63 = sub_100161910(v87);
          v65 = v64;
          if (v63 == sub_100161910(v25) && v65 == v66)
          {
            memcpy(__dst, __src, 0x62uLL);
            sub_10000D098(__dst[12] & 0xFFF, v74, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12]);

            sub_1001441C8(__src);
          }

          else
          {
            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
            memcpy(__dst, __src, 0x62uLL);
            sub_10000D098(__dst[12] & 0xFFF, v74, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12]);

            sub_1001441C8(__src);
            if ((v68 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        if (v106)
        {
          if ((v89 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v89 & 1) != 0 || v86 != v26)
        {
          goto LABEL_4;
        }

        if (v105)
        {
          if ((v88 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v88 & 1) != 0 || v83 != v27)
        {
          goto LABEL_4;
        }

        v71 = sub_100007B1C();
        sub_10015078C(v71, v72);

        return;
      case 7u:
        v49 = *(v4 + 48);
        sub_10000776C(v108);

        v50 = sub_1001604D8(v108, v49);
        if (v51)
        {

          goto LABEL_4;
        }

        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (v50 >= *(v49 + 16))
        {
          goto LABEL_117;
        }

        sub_1000083CC();
        memcpy(v57, v58, v59);
        sub_10014416C(v107, __src);

        AvroSchema.resolving(from:)(v107);
        v23 = v107;
        goto LABEL_13;
      case 8u:
        sub_10000776C(__src);
        if ((__src[12] & 0xF000) != 0x2000)
        {
          goto LABEL_4;
        }

        v52 = __src[3];
        v53 = __src[4];
        v54 = __src[5];
        v55 = __src[6];
        if (v6 == 7)
        {
          if (LOBYTE(__src[2]) != 7)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (LOBYTE(__src[2]) == 7)
          {
            goto LABEL_4;
          }

          HIDWORD(v77) = LOBYTE(__src[4]);
          v78 = __src[3];
          HIDWORD(v79) = LOBYTE(__src[6]);
          v80 = __src[5];
          v76 = __src[2];
          v74 = sub_100161910(v6);
          v81 = v60;
          v62 = v74 == sub_100161910(v76) && v81 == v61;
          v75 = v61;
          if (v62)
          {

            sub_1001441C8(__src);
            sub_1000140B8();
          }

          else
          {
            LODWORD(v74) = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_1001441C8(__src);
            sub_1000140B8();
            if ((v74 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        if (v9)
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v53 & 1) != 0 || v8 != v52)
        {
          goto LABEL_4;
        }

        if (v10)
        {
          if ((v55 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v55 & 1) != 0 || v84 != v54)
        {
          goto LABEL_4;
        }

        v69 = sub_100007B1C();
        sub_10015078C(v69, v70);
        sub_10000D098(v10 & 0xFFF, v74, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v4, v85, v87, v86, v5, v83, v7, v6, v82, v8, v9, v84, __dst[12]);
        return;
      case 0xDu:
        v32 = v87 | v85 | v86 | v5 | v83 | v7 | v6 | v82 | v8 | v9 | v84;
        v33 = v10 == 53248 && v4 == 2;
        if (!v33 || v32)
        {
          v56 = v10 == 53248 && v4 == 4;
          if (!v56 || v32 || (v2[6].i16[0] & 0xF000) != 0x2000)
          {
            goto LABEL_4;
          }

          return;
        }

        v34 = v2[6].u16[0];
        if ((v34 & 0xF000) == 0xD000 && v34 == 53248 && v2->i64[0] == 3)
        {
          v36 = sub_100007D40(v2[4], v2[5], v2[2], v2[3]);
          v30 = *&v36 | v37;
          v31 = v38 | v39;
LABEL_36:
          if (!(v30 | v31))
          {
            return;
          }
        }

        goto LABEL_4;
      default:
        goto LABEL_4;
    }
  }

  v11 = *(v109[0] + 16);
  v12 = *(v109[0] + 24);
  v14 = *(v109[0] + 32);
  v13 = *(v109[0] + 40);
  v15 = *(v109[0] + 48);
  swift_bridgeObjectRetain_n();
  sub_10014416C(v109, __src);

  v16 = sub_1001604D8(a1, v15);
  v18 = v17;

  if (v18)
  {

    sub_1001441C8(v109);
LABEL_4:
    sub_10016057C();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  sub_1001612CC();
  v15 = v73;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_114;
  }

LABEL_10:
  if (v16 >= *(v15 + 16))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return;
  }

  v22 = v111;
  AvroSchema.resolving(from:)(a1);
  if (v22)
  {

    v23 = v109;
LABEL_13:
    sub_1001441C8(v23);
  }

  else
  {
    sub_10000776C(__src);
    sub_1001441C8(__src);
    v24 = swift_allocObject();
    v24[2] = v11;
    v24[3] = v12;
    v24[4] = v14;
    v24[5] = v13;
    v24[6] = v15;
    sub_1001441C8(v109);
    sub_10000678C();
    v2[6].i16[0] = 28672;
  }
}

uint64_t static AvroSchema.== infix(_:_:)(uint64_t *a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v11 = a1[6];
  v10 = a1[7];
  v12 = a1[8];
  switch(v2 >> 12)
  {
    case 0u:
      if (a2[6].u16[0] <= 0xFFFu)
      {
        goto LABEL_30;
      }

      goto LABEL_161;
    case 1u:
      sub_10000F0E8();
      if (v49 != 4096)
      {
        goto LABEL_161;
      }

LABEL_30:
      v50 = a2[1].i8[0];
      v51 = v5 == a2->i64[0] && v4 == a2->i64[1];
      if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_161;
      }

      LOBYTE(a2) = v50 == 7 && v6 == 7;
      if (v6 == 7 || v50 == 7)
      {
        return a2 & 1;
      }

      v53 = sub_100161910(v6);
      v55 = v54;
      v56 = sub_100161910(v50);
      if (v53 == v56 && v55 == v57)
      {
        goto LABEL_107;
      }

      v59 = sub_100008ADC(v53, v57, v56);
      goto LABEL_145;
    case 2u:
      sub_10000F0E8();
      if (v26 != 0x2000)
      {
        goto LABEL_161;
      }

      v27 = a2[1].i64[0];
      v145 = a2[1].i64[1];
      v28 = a2[2].i64[1];
      v29 = a2[3].i32[0];
      v30 = a2[2].i32[0];
      v31 = v25 == a2->i64[0] && v24 == a2->i64[1];
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_161;
      }

      if (v6 == 7)
      {
        if (v27 != 7)
        {
          goto LABEL_161;
        }
      }

      else
      {
        if (v27 == 7)
        {
          goto LABEL_161;
        }

        v143 = v28;
        v115 = sub_100161910(v6);
        v117 = v116;
        v118 = sub_100161910(v27);
        if (v115 == v118 && v117 == v119)
        {

          v28 = v143;
        }

        else
        {
          v121 = sub_100008ADC(v115, v119, v118);

          v28 = v143;
          if ((v121 & 1) == 0)
          {
            goto LABEL_161;
          }
        }
      }

      if (v9)
      {
        if (v11 & 1 | ((v30 & 1) == 0))
        {
          LOBYTE(a2) = v30 & v29;
          return a2 & 1;
        }
      }

      else if (v30 & 1 | (v7 != v145) | v11 & 1)
      {
        LOBYTE(a2) = ((v30 | (v7 != v145)) ^ 1) & v29;
        return a2 & 1;
      }

      LOBYTE(a2) = (v8 == v28) & ~v29;
      return a2 & 1;
    case 3u:
      sub_1000053BC();
      memcpy(v82, v83, v84);
      sub_10000B080();
      if (v85 != 12288)
      {
        goto LABEL_161;
      }

      sub_1000053BC();
      memcpy(v86, v87, v88);
      sub_10015BE18(__dst, v171);
      static AvroSchema.RecordSchema.== infix(_:_:)(&v146, __dst);
      sub_1001613E8();
      sub_10015BE74(v89);
      return a2 & 1;
    case 4u:
      sub_1000053BC();
      memcpy(v90, v91, v92);
      sub_10000B080();
      if (v93 != 0x4000)
      {
        goto LABEL_161;
      }

      sub_1000053BC();
      memcpy(v94, v95, v96);
      sub_10015C048(__dst, v171);
      static AvroSchema.EnumSchema.== infix(_:_:)(&v146, __dst);
      sub_1001613E8();
      sub_10015C0A4(v97);
      return a2 & 1;
    case 5u:
      sub_1000083CC();
      memcpy(v32, v33, v34);
      sub_10000B080();
      if (v43 != 20480)
      {
        goto LABEL_161;
      }

      sub_10016142C(v35, v36, v37, v38, v39, v40, v41, v42, v141, v142, v144, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
      memcpy(v171, &a2[2], 0x62uLL);
      sub_100150F70(__dst, &v146);
      static AvroSchema.== infix(_:_:)(v170, v171);
      sub_1001613E8();
      sub_100150FCC(v44);
      return a2 & 1;
    case 6u:
      sub_1000083CC();
      memcpy(v60, v61, v62);
      sub_10000B080();
      if (v71 != 24576)
      {
        goto LABEL_161;
      }

      sub_10016142C(v63, v64, v65, v66, v67, v68, v69, v70, v141, v142, v144, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
      memcpy(v171, &a2[2], 0x62uLL);
      sub_10014EA68(__dst, &v146);
      static AvroSchema.== infix(_:_:)(v170, v171);
      sub_1001613E8();
      sub_10014EAC4(v72);
      return a2 & 1;
    case 7u:
      sub_10000F0E8();
      if (v74 != 28672)
      {
        goto LABEL_161;
      }

      v75 = v73[3];
      v76 = v73[4];
      v77 = v73[5];
      v78 = a2->i64[0];
      a2 = *(a2->i64[0] + 24);
      v79 = v78[4];
      v80 = v78[5];
      if (v75)
      {
        if (!a2)
        {
          return a2 & 1;
        }

        v81 = v73[2] == v78[2] && v75 == a2;
        if (!v81 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if (a2)
      {
        goto LABEL_161;
      }

      if (v77)
      {
        if (!v80)
        {
          goto LABEL_161;
        }

        v122 = v76 == v79 && v77 == v80;
        if (!v122 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if (v80)
      {
        goto LABEL_161;
      }

      v59 = sub_100143B9C();

LABEL_145:

      return v59 & 1;
    case 8u:
      sub_10000F0E8();
      if (v104 != 0x8000 || v103 != a2[4].i64[0])
      {
        goto LABEL_161;
      }

      v105 = a2->i64[1];
      v106 = a2[3].i64[1];
      if (v101)
      {
        if (!v105)
        {
          goto LABEL_161;
        }

        v107 = v102 == a2->i64[0] && v101 == v105;
        if (!v107 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if (v105)
      {
        goto LABEL_161;
      }

      LOBYTE(a2) = v106 == 7 && v10 == 7;
      if (v10 == 7 || v106 == 7)
      {
        return a2 & 1;
      }

      v127 = sub_100161910(v10);
      v129 = v128;
      if (v127 == sub_100161910(v106) && v129 == v130)
      {
LABEL_107:

        goto LABEL_160;
      }

      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v132 & 1;
    case 0xAu:
      sub_10000F0E8();
      if (v98 != 40960)
      {
        goto LABEL_161;
      }

      v99 = sub_1000050CC();
      LOBYTE(a2) = sub_100143C78(v99, v100);

      return a2 & 1;
    case 0xBu:
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      sub_1000083CC();
      memcpy(v15, v16, v17);
      sub_10000B080();
      if (v18 != 45056)
      {
        goto LABEL_161;
      }

      memcpy(__dst, (a2->i64[0] + 16), 0xB2uLL);
      v19 = v13 == __dst[0] && v14 == __dst[1];
      if (v19 || (LOBYTE(a2) = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        sub_10000C6AC();
        memcpy(v20, v21, v22);
        sub_10014421C(__dst, &v146);
        static AvroSchema.== infix(_:_:)(v170, v171);
        sub_1001613E8();
        sub_100144278(v23);
      }

      return a2 & 1;
    case 0xDu:
      v46 = a1[10];
      v45 = a1[11];
      v47 = a1[9];
      if (v2 == 53248 && !(v4 | v5 | v6 | v7 | v9 | v8 | v11 | v10 | v12 | v45 | v46 | v47))
      {
        sub_100006F04();
        if (!v19 || v48 != 53248 || *&sub_10000B458(a2[4], a2[5], a2[2], a2[3], a2[1], *a2))
        {
          goto LABEL_161;
        }

LABEL_160:
        LOBYTE(a2) = 1;
        return a2 & 1;
      }

      v108 = v6 | v4 | v7 | v9 | v8 | v11 | v10 | v12 | v45 | v46 | v47;
      v109 = v2 == 53248 && v5 == 1;
      if (!v109 || v108)
      {
        v112 = v2 == 53248 && v5 == 2;
        if (!v112 || v108)
        {
          v123 = v2 == 53248 && v5 == 3;
          if (!v123 || v108)
          {
            if (v2 != 53248 || v5 != 4)
            {
              goto LABEL_161;
            }

            if (v108)
            {
              goto LABEL_161;
            }

            sub_100006F04();
            if (!v19)
            {
              goto LABEL_161;
            }

            sub_100161420();
            if (!v19 || v135 != 4)
            {
              goto LABEL_161;
            }
          }

          else
          {
            sub_100006F04();
            if (!v19)
            {
              goto LABEL_161;
            }

            sub_100161420();
            if (!v19 || v124 != 3)
            {
              goto LABEL_161;
            }
          }
        }

        else
        {
          sub_100006F04();
          if (!v19)
          {
            goto LABEL_161;
          }

          sub_100161420();
          if (!v19 || v113 != 2)
          {
            goto LABEL_161;
          }
        }
      }

      else
      {
        sub_100006F04();
        if (!v19)
        {
          goto LABEL_161;
        }

        sub_100161420();
        if (!v19 || v110 != 1)
        {
          goto LABEL_161;
        }
      }

      v137 = sub_100007D40(a2[4], a2[5], a2[2], a2[3]);
      if (!(*&v137 | v138 | v139 | v140))
      {
        goto LABEL_160;
      }

LABEL_161:
      LOBYTE(a2) = 0;
      return a2 & 1;
    default:
      goto LABEL_161;
  }
}

void sub_100160230(uint64_t result)
{
  v2 = *(result + 48);
  v29 = *(v2 + 16);
  if (v29)
  {
    v3 = 0;
    v22 = v2 + 32;
    v4 = *(v1 + 48);
    while (1)
    {
      memcpy(__dst, (v22 + 184 * v3), 0xB2uLL);
      v5 = *(v4 + 16);
      if (!v5)
      {
        sub_10014421C(__dst, v25);
LABEL_15:
        memcpy(__src, __dst, sizeof(__src));
        memcpy(v25, __dst, 0xB1uLL);
        BYTE1(v25[22]) = 2;
        sub_10014421C(__dst, v23);
        sub_10014421C(v25, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013C3D0();
          v4 = v17;
        }

        v16 = *(v4 + 16);
        v15 = *(v4 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_100008108(v15);
          sub_10013C3D0();
          v4 = v18;
        }

        sub_100144278(__dst);
        memcpy(v23, __src, 0xB1uLL);
        v23[177] = 2;
        sub_100144278(v23);
        *(v4 + 16) = v16 + 1;
        memcpy((v4 + 184 * v16 + 32), v25, 0xB2uLL);
        goto LABEL_24;
      }

      memcpy(v27, (v22 + 184 * v3 + 16), 0x62uLL);
      v6 = __dst[0];
      v7 = __dst[1];
      sub_10014421C(__dst, v25);
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        memcpy(v25, (v4 + v8 + 32), 0xB2uLL);
        v10 = v25[0] == v6 && v25[1] == v7;
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_10000C6AC();
          memcpy(v11, v12, v13);
          sub_10014421C(v25, v23);
          v14 = static AvroSchema.== infix(_:_:)(v28, v27);
          sub_100144278(v25);
          if (v14)
          {
            break;
          }
        }

        ++v9;
        v8 += 184;
        if (v5 == v9)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001612B8();
        v4 = v19;
      }

      if (v9 >= *(v4 + 16))
      {
        goto LABEL_28;
      }

      *(v4 + v8 + 209) = 1;
      AvroSchema.resolving(from:)(v27);
      sub_100144278(__dst);
      if (v21)
      {
        goto LABEL_25;
      }

LABEL_24:
      if (++v3 == v29)
      {
LABEL_25:
        *(v20 + 48) = v4;
        return;
      }
    }
  }
}

uint64_t sub_1001604D8(int8x16_t *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  for (i = (a2 + 32); ; i += 104)
  {
    if (v4 == v3)
    {
      return 0;
    }

    memcpy(__dst, i, 0x62uLL);
    sub_10014416C(__dst, &v8);
    v6 = static AvroSchema.== infix(_:_:)(__dst, a1);
    sub_1001441C8(__dst);
    if (v6)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

unint64_t sub_10016057C()
{
  result = qword_1002DEEE8;
  if (!qword_1002DEEE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchemaResolutionError, &type metadata for AvroSchemaResolutionError, v0, v1);
    atomic_store(result, &qword_1002DEEE8);
  }

  return result;
}

uint64_t static AvroSchema.RecordSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015EAF8();
  v6 = v5;
  if (v4 == sub_10015EAF8() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 16);
  v12 = *(a2 + 48);
  if (v11 < *(v12 + 16))
  {
    return 0;
  }

  if (v11)
  {
    v14 = (v10 + 32);
    do
    {
      memcpy(v18, v14, 0xB2uLL);
      v15 = memcpy(v17, v18, sizeof(v17));
      __chkstk_darwin(v15);
      sub_10000D56C();
      sub_10014421C(v18, &v16);
      if (sub_10015D798(sub_1001613B8, v6, v12))
      {
        sub_100144278(v18);
      }

      else
      {
        v6 = v18[21];

        sub_100144278(v18);
        if (!v6)
        {
          return 0;
        }
      }

      v14 += 184;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t static AvroSchema.FieldSchema.== infix(_:_:)(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1 == a2->i64[0] && a1[1] == a2->i64[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static AvroSchema.== infix(_:_:)(a1 + 2, a2 + 1);
}

BOOL static AvroSchema.EnumSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015EAF8();
  v6 = v5;
  if (v4 == sub_10015EAF8() && v6 == v7)
  {
  }

  else
  {
    sub_100007B1C();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a2 + 72);
  v12 = *(v11 + 16);
  if (*(*(a1 + 72) + 16) < v12)
  {
    return 0;
  }

  v14 = v11 + 40;
  v15 = v12 + 1;
  do
  {
    v13 = --v15 == 0;
    if (!v15)
    {
      break;
    }

    v16 = v14 + 16;
    __chkstk_darwin(v10);
    sub_10000D56C();

    v17 = sub_10015D6FC();

    v14 = v16;
  }

  while (v17);
  return v13;
}

uint64_t static AvroSchema.FixedSchema.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if (a1[8] != *(a2 + 64))
  {
    goto LABEL_22;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_22:
    v9 = 0;
    return v9 & 1;
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = *a1 == *a2 && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  v9 = v8 == 7 && v7 == 7;
  if (v7 != 7 && v8 != 7)
  {
    v11 = sub_100161910(v7);
    v13 = v12;
    if (v11 == sub_100161910(v8) && v13 == v14)
    {
      v9 = 1;
    }

    else
    {
      sub_1000050CC();
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v9 & 1;
}

uint64_t static AvroSchema.IntSchema.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a3;
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v9 = v6 == 7 && v7 == 7;
    if (v7 != 7 && v6 != 7)
    {
      v11 = sub_100161910(v7);
      v13 = v12;
      v14 = sub_100161910(v6);
      if (v11 == v14 && v13 == v15)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_100008ADC(v11, v15, v14);
      }
    }
  }

  return v9 & 1;
}

uint64_t static AvroSchema.BytesSchema.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 7)
  {
    if (v6 != 7)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 7)
    {
      return 0;
    }

    v7 = sub_100161910(v5);
    v9 = v8;
    if (v7 == sub_100161910(v6) && v9 == v10)
    {
    }

    else
    {
      sub_100007B1C();
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = *(a2 + 32);
  if (a1[4])
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (a1[3] != *(a2 + 24))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  result = *(a2 + 48);
  if ((a1[6] & 1) == 0)
  {
    return (a1[5] == *(a2 + 40)) & ~result;
  }

  return result;
}

void AvroSchema.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 96);
  switch(v4 >> 12)
  {
    case 3u:
    case 4u:
    case 9u:
      v6 = v2[3];
      if (v2[5])
      {
        sub_100005C20();

        String.hash(into:)();

        if (!v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);

        if (!v6)
        {
          goto LABEL_29;
        }
      }

      sub_100005C20();
      String.hash(into:)();

      return;
    case 5u:
      sub_10016144C();
      v17 = sub_100003D20();
      sub_100150F70(v17, v18);

      sub_1000050CC();
      String.hash(into:)();

      sub_10000C6AC();
      v22 = memcpy(v19, v20, v21);
      sub_1001613F4(v22, v23);
      AvroSchema.hash(into:)(a1);
      sub_100150FCC(__dst);
      goto LABEL_19;
    case 6u:
      sub_10016144C();
      v10 = sub_100003D20();
      sub_10014EA68(v10, v11);

      sub_1000050CC();
      String.hash(into:)();

      sub_10000C6AC();
      v15 = memcpy(v12, v13, v14);
      sub_1001613F4(v15, v16);
      AvroSchema.hash(into:)(a1);
      sub_10014EAC4(__dst);
LABEL_19:
      sub_1001441C8(v3 + 16);
      return;
    case 7u:
      v28 = v2[6];
      v29 = *(v28 + 16);
      if (!v29)
      {
        return;
      }

      v30 = 32;
      do
      {
        memcpy(__dst, (v28 + v30), 0x62uLL);
        sub_10014416C(__dst, v31);
        AvroSchema.hash(into:)(a1);
        sub_1001441C8(__dst);
        v30 += 104;
        --v29;
      }

      while (v29);
      goto LABEL_27;
    case 8u:
      if (*(v1 + 24))
      {
        sub_100005C20();
        String.hash(into:)();
        if (v3)
        {
          goto LABEL_16;
        }

LABEL_29:
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(0);
      if (!v3)
      {
        goto LABEL_29;
      }

LABEL_16:
      sub_100005C20();
LABEL_2:

      String.hash(into:)();
      return;
    case 0xAu:
      v24 = v2[2];
      v25 = *(v24 + 16);
      if (!v25)
      {
        return;
      }

      v26 = v25 - 1;
      for (i = 32; ; i += 184)
      {
        memcpy(__dst, (v24 + i), 0xB2uLL);
        sub_10014421C(__dst, v31);

        String.hash(into:)();
        sub_100144278(__dst);

        if (!v26)
        {
          break;
        }

        --v26;
      }

LABEL_27:

      return;
    case 0xBu:
      memcpy(__dst, v2 + 2, 0xB2uLL);
      v7 = sub_100003D20();
      sub_10014421C(v7, v8);

      sub_1000050CC();
      String.hash(into:)();
      sub_100144278(__dst);
      goto LABEL_27;
    case 0xCu:
      Hasher.init(_seed:)();
      AvroSchema.hash(into:)(__dst);
      v9 = Hasher._finalize()();
      Hasher._combine(_:)(v9);
      return;
    default:
      goto LABEL_2;
  }
}

Swift::Bool __swiftcall AvroSchema.isDecimal()()
{
  v1 = *(v0 + 96) >> 12;
  if (v1 == 8)
  {
    switch(*(v0 + 56))
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 6:
        goto LABEL_7;
      case 3:
LABEL_6:
        sub_10016140C();
LABEL_7:
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_8;
        }

        return 0;
      case 7:
        return 0;
      default:
LABEL_5:

LABEL_8:
        result = 1;
        break;
    }
  }

  else
  {
    if (v1 == 2)
    {
      switch(*(v0 + 16))
      {
        case 1:
        case 2:
        case 4:
        case 5:
        case 6:
          goto LABEL_7;
        case 3:
          goto LABEL_6;
        case 7:
          return 0;
        default:
          goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001612E0()
{

  sub_10000BB3C();

  return _swift_deallocObject(v0, 131, 7);
}

uint64_t sub_100161350(void *__src, const void *a2)
{
  memcpy(v4, __src, 0xB2uLL);
  memcpy(__dst, a2, 0xB2uLL);
  return sub_10011C380(v4, __dst) & 1;
}

uint64_t sub_1001613F4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10014416C(v2 + 16, va);
}

void *sub_10016142C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  v36 = (*v34 + 16);

  return memcpy(va, v36, 0x73uLL);
}

void *sub_10016144C()
{

  return memcpy((v1 - 248), (v0 + 16), 0x73uLL);
}

Swift::String_optional __swiftcall AvroSchema.getName()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 96);
  v5 = 0xE500000000000000;
  v6 = 0x6E6F696E75;
  switch(v4 >> 12)
  {
    case 1u:
      sub_10000811C();
      switch(v9)
      {
        case 1:
          goto LABEL_11;
        case 2:
          goto LABEL_24;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_23;
        case 5:
          goto LABEL_26;
        case 6:
          goto LABEL_28;
        case 7:
          v5 = 0xE400000000000000;
          v6 = 1735290732;
          break;
        default:
          goto LABEL_3;
      }

      break;
    case 2u:
      sub_10000811C();
      switch(v10)
      {
        case 1:
          goto LABEL_11;
        case 2:
          goto LABEL_24;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_23;
        case 5:
          goto LABEL_26;
        case 6:
          goto LABEL_28;
        case 7:
          sub_10016931C();
          break;
        default:
          goto LABEL_3;
      }

      break;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 9u:
    case 0xBu:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);

      break;
    case 7u:
      break;
    case 8u:
      v6 = *v0;

      break;
    case 0xAu:
      sub_100169330();
      break;
    case 0xCu:
      v6 = 0;
      v5 = 0;
      break;
    case 0xDu:
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v16 = *(v0 + 48);
      v17 = *(v0 + 56);
      v19 = *(v0 + 32);
      v18 = *(v0 + 40);
      v20 = *(v0 + 24);
      if (v4 != 53248 || v1 | v2 | v3 | v12 | v13 | v14 | v15 | v17 | v16 | v18 | v19 | v20)
      {
        v21 = v3 | v1 | v12 | v13 | v14 | v15 | v17 | v16 | v18 | v19 | v20;
        v22 = v4 == 53248 && v2 == 1;
        if (!v22 || v21)
        {
          v24 = v4 == 53248 && v2 == 2;
          if (!v24 || v21)
          {
            if (v21)
            {
              v25 = 0;
            }

            else
            {
              v25 = v2 == 3;
            }

            if (v25 && v4 == 53248)
            {
              v6 = 0x656C62756F64;
            }

            else
            {
              v6 = 0x676E69727473;
            }

            v5 = 0xE600000000000000;
          }

          else
          {
            v6 = 0x74616F6C66;
          }
        }

        else
        {
          sub_10000F3EC();
        }
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1819047278;
      }

      break;
    default:
      sub_10000811C();
      switch(v11)
      {
        case 1:
LABEL_11:
          v5 = 0xE400000000000000;
          v6 = 1702125924;
          break;
        case 2:
LABEL_24:
          v5 = 0xEB0000000073696CLL;
          sub_100169214();
          v6 = 0x6C69006E6F696E75;
          break;
        case 3:
LABEL_25:
          sub_100169214();
          sub_100169264();
          break;
        case 4:
LABEL_23:
          sub_10000AE78();
          v23 = "timestamp-millis";
          goto LABEL_27;
        case 5:
LABEL_26:
          sub_10000AE78();
          v23 = "timestamp-micros";
LABEL_27:
          v5 = (v23 - 32) | 0x8000000000000000;
          break;
        case 6:
LABEL_28:
          sub_10016924C();
          break;
        case 7:
          v5 = 0xE300000000000000;
          v6 = 7630441;
          break;
        default:
          goto LABEL_3;
      }

      break;
  }

LABEL_3:
  v7 = v6;
  v8 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void AvroSchema.init()(uint64_t a1@<X8>)
{
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_10016923C();
  v41[0] = 0;
  v41[1] = v2;
  v42 = v3;
  sub_10000B8B0(v4, v5, v6, v7, v8, v9, v10, v11, v24, v26, v28, v30, v32, v34, v36, v38);
  v12 = sub_100161A78(v41);
  sub_10000D0B4(v12, v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, v33, v35, v37, v39, v40, xmmword_10023D520, v21);
  *(a1 + 48) = v22;
  *(a1 + 56) = v23;
  *(a1 + 80) = 0;
  *(a1 + 96) = -16384;
}

unint64_t sub_10016176C(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = 0x6E61656C6F6F62;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 1735290732;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    case 5:
      result = 0x656C62756F64;
      break;
    case 6:
      result = 0x7365747962;
      break;
    case 7:
      result = 0x676E69727473;
      break;
    case 8:
      result = 0x64726F636572;
      break;
    case 9:
      result = 1836412517;
      break;
    case 10:
      result = 0x7961727261;
      break;
    case 11:
      result = 7364973;
      break;
    case 12:
      result = 0x6E6F696E75;
      break;
    case 13:
      v3 = 1702390118;
      goto LABEL_16;
    case 14:
      result = 0x6C6F636F746F7270;
      break;
    case 15:
      result = 0x6567617373656DLL;
      break;
    case 16:
      result = 0x73726F727265;
      break;
    case 17:
      v3 = 1818585446;
LABEL_16:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
      break;
    case 18:
      result = 0x726F727265;
      break;
    case 19:
      result = 0x64696C61766E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100161910(char a1)
{
  result = 0x6C616D69636564;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x6C696D2D656D6974;
      break;
    case 3:
      result = 0x63696D2D656D6974;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_1001619E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_10016923C();
  v43[0] = 0;
  v43[1] = v4;
  v43[2] = v5;
  v43[3] = v6;
  sub_10000B8B0(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26, v28, v30, v32, v34, v36, v38);
  v13 = sub_100161A78(v43);
  sub_10000D0B4(v13, v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31, v33, v35, v37, v39, v40, v41, v22);
  result = v42;
  *(a3 + 41) = v42;
  return result;
}

void AvroSchema.RecordSchema.init(from:)()
{
  sub_100004868();
  sub_1000AC3AC();
  v4 = sub_100099DF4(&qword_1002DEEF0, &qword_10023D530);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  sub_100008B3C(v0, v0[3]);
  sub_100161E10();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C0C0();
    sub_100004118(v0);

    if (v1)
    {
    }
  }

  else
  {
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000073DC();
    KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v12[0]) = 2;
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_1001692FC(v6);
    sub_100007D58(&qword_1002DEF00, &protocol witness table for String);
    sub_10000679C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = sub_100099DF4(&qword_1002DED88, &qword_10023CCE0);
    sub_1001692FC(4);
    sub_100162F54(&qword_1002DEF08, &qword_1002DED88, &qword_10023CCE0, sub_100161E64);
    sub_10000679C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000B08C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v8 = sub_100004258();
    v9(v8, v4);
    sub_10000EE9C();
    v10 = sub_100002AA4();
    sub_10015BE18(v10, v11);
    sub_100004118(v0);
    sub_10000D580();
    v12[6] = v12[0];
    v12[7] = v12[0];
    v12[8] = v7;
    v12[9] = v3;
    v13 = 0;
    sub_10015BE74(v12);
    sub_100169344();
  }

  sub_1000109FC();
  sub_100005074();
}

unint64_t sub_100161E10()
{
  result = qword_1002DEEF8;
  if (!qword_1002DEEF8)
  {
    result = swift_getWitnessTable(a9, &type metadata for AvroSchema.RecordSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEEF8);
  }

  return result;
}

unint64_t sub_100161E64()
{
  result = qword_1002DEF10;
  if (!qword_1002DEF10)
  {
    result = swift_getWitnessTable("%\x1B\a", &type metadata for AvroSchema.FieldSchema, v0, v1);
    atomic_store(result, &qword_1002DEF10);
  }

  return result;
}

void AvroSchema.EnumSchema.init(from:)()
{
  sub_100004868();
  sub_1000AC3AC();
  v3 = sub_100099DF4(&qword_1002DEF18, &unk_10023D538);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  sub_100008B3C(v0, v0[3]);
  sub_1001621FC();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C0C0();
    sub_100004118(v0);

    if (v1)
    {
    }
  }

  else
  {
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000073DC();
    KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v13[0]) = 2;
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_1001692FC(v5);
    sub_100007D58(&qword_1002DEF00, &protocol witness table for String);
    sub_10000679C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v6 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
    sub_1001692FC(4);
    sub_100162250();
    sub_10000679C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000B08C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v7 = sub_100004258();
    v12 = v8;
    v9(v7, v3);
    sub_10000EE9C();
    v10 = sub_100002AA4();
    sub_10015C048(v10, v11);
    sub_100004118(v0);
    sub_10000D580();
    v13[6] = v13[0];
    v13[7] = v6;
    v13[8] = v12;
    v13[9] = v13[0];
    v14 = 0;
    sub_10015C0A4(v13);
    sub_100169344();
  }

  sub_1000109FC();
  sub_100005074();
}

unint64_t sub_1001621FC()
{
  result = qword_1002DEF20;
  if (!qword_1002DEF20)
  {
    result = swift_getWitnessTable(byte_10023EE98, &type metadata for AvroSchema.EnumSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEF20);
  }

  return result;
}

unint64_t sub_100162250()
{
  result = qword_1002DEE10;
  if (!qword_1002DEE10)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10009A468(&qword_1002DA600, &qword_10022E490);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DEE10);
  }

  return result;
}

void AvroSchema.ArraySchema.init(from:)()
{
  sub_100004868();
  v2 = v1;
  v11 = v3;
  sub_100099DF4(&qword_1002DEF28, &qword_10023D548);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100005244();
  sub_100008B3C(v2, v2[3]);
  v5 = sub_100162460();
  sub_1001692C4(&type metadata for AvroSchema.ArraySchema.CodingKeys, v6, v5);
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_10000DF5C();
    sub_100169364();
    sub_10000DBF4(&type metadata for AvroSchema);
    v7 = sub_100003780();
    v8(v7);
    memcpy(v15, v14, sizeof(v15));
    sub_1001692A0();
    v9 = sub_1000028E0();
    sub_100150F70(v9, v10);
    sub_100004118(v2);
    sub_100008BC0();
    v13[114] = 0;
    sub_100150FCC(v13);
    memcpy(v11, v12, 0x73uLL);
  }

  sub_10000A7AC();
  sub_100005074();
}

unint64_t sub_100162460()
{
  result = qword_1002DEF30;
  if (!qword_1002DEF30)
  {
    result = swift_getWitnessTable(byte_10023EE48, &type metadata for AvroSchema.ArraySchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEF30);
  }

  return result;
}

void AvroSchema.MapSchema.init(from:)()
{
  sub_100004868();
  v2 = v1;
  v11 = v3;
  sub_100099DF4(&qword_1002DEF38, &qword_10023D550);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100005244();
  sub_100008B3C(v2, v2[3]);
  v5 = sub_100162648();
  sub_1001692C4(&type metadata for AvroSchema.MapSchema.CodingKeys, v6, v5);
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_10000DF5C();
    sub_100169364();
    sub_10000DBF4(&type metadata for AvroSchema);
    v7 = sub_100003780();
    v8(v7);
    memcpy(v15, v14, sizeof(v15));
    sub_1001692A0();
    v9 = sub_1000028E0();
    sub_10014EA68(v9, v10);
    sub_100004118(v2);
    sub_100008BC0();
    v13[114] = 0;
    sub_10014EAC4(v13);
    memcpy(v11, v12, 0x73uLL);
  }

  sub_10000A7AC();
  sub_100005074();
}

unint64_t sub_100162648()
{
  result = qword_1002DEF40;
  if (!qword_1002DEF40)
  {
    result = swift_getWitnessTable(asc_10023EDF8, &type metadata for AvroSchema.MapSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEF40);
  }

  return result;
}

void AvroSchema.FixedSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004868();
  sub_1000AC3AC();
  v15 = v14;
  v16 = sub_100099DF4(&qword_1002DEF48, &qword_10023D558);
  sub_100003724();
  v18 = v17;
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100005244();
  v62 = 1;
  v60 = 1;
  v20 = v10[3];
  v40 = v10;
  sub_100008B3C(v10, v20);
  sub_100162C54();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_100169224();
    sub_10000BB74();
    sub_100004118(v10);
    v45 = 0;
    v46 = 0;
    v47 = v20;
    v48 = v15;
    v49 = 0x6465786966;
    v50 = 0xE500000000000000;
    v51 = v12;
    v52 = 7;
    *v53 = *v63;
    *&v53[3] = *&v63[3];
    v54 = v41;
    v55 = a10;
    v56 = v62;
    *v57 = *v61;
    *&v57[3] = *&v61[3];
    v58 = 0;
    v59 = v60;
    sub_100162CA8(&v45);
  }

  else
  {
    LOBYTE(v45) = 0;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v21;
    sub_10000A644(1);
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v23;
    v37 = v22;
    sub_10000A644(2);
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_100007D58(&qword_1002DEF00, &protocol witness table for String);
    sub_100008C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v15;
    sub_10000A644(4);
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v43[0] = 5;
    sub_10015D03C();
    sub_100008C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A644(6);
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v45;
    v62 = v29 & 1;
    v44 = 7;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100169224();
    v31 = v30;
    v32 = v13;
    v34 = v33;
    (*(v18 + 8))(v32, v16);
    v60 = v34 & 1;
    *v43 = v39;
    *&v43[8] = v38;
    *&v43[16] = v24;
    *&v43[24] = v26;
    *&v43[32] = v37;
    *&v43[40] = v36;
    *&v43[48] = v45;
    v43[56] = 0;
    *&v43[64] = v42;
    *&v43[72] = v64;
    v35 = v62;
    v43[80] = v62;
    *&v43[88] = v31;
    *&v43[96] = v34 & 1;
    sub_10014EA0C(v43, &v45);
    sub_100004118(v40);
    v45 = v39;
    v46 = v38;
    v47 = v24;
    v48 = v26;
    v49 = v37;
    v50 = v36;
    v51 = v28;
    v52 = 0;
    v54 = v42;
    v55 = v64;
    v56 = v35;
    v58 = v31;
    v59 = v34 & 1;
    sub_100162CA8(&v45);
    memcpy(v27, v43, 0x62uLL);
  }

  sub_100005074();
}

unint64_t sub_100162C54()
{
  result = qword_1002DEF50;
  if (!qword_1002DEF50)
  {
    result = swift_getWitnessTable(aY_3, &type metadata for AvroSchema.FixedSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEF50);
  }

  return result;
}

void AvroSchema.UnionSchema.init(from:)()
{
  sub_100004868();
  sub_1000AC3AC();
  v3 = v2;
  sub_100099DF4(&qword_1002DEF58, &unk_10023D560);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100005244();
  sub_100008B3C(v0, v0[3]);
  sub_100162F00();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_100008C30();
    v5 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v7 = v6;
    v14 = v5;
    sub_100008C30();
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = v9;
    v13 = v8;
    sub_100099DF4(&qword_1002DED58, &unk_10023CCC8);
    sub_100162F54(&qword_1002DED60, &qword_1002DED58, &unk_10023CCC8, sub_100157420);
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = sub_100010D1C();
    v12(v11);
    sub_100004118(v0);
    *v3 = v14;
    v3[1] = v7;
    v3[2] = v13;
    v3[3] = v10;
    v3[4] = v15;
  }

  sub_1000109FC();
  sub_100005074();
}

unint64_t sub_100162F00()
{
  result = qword_1002DEF60;
  if (!qword_1002DEF60)
  {
    result = swift_getWitnessTable(byte_10023ED30, &type metadata for AvroSchema.UnionSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEF60);
  }

  return result;
}

uint64_t sub_100162F54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10009A468(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100162FD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v41 = a1;
  *(&v41 + 1) = a2;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  sub_10016923C();
  v44[0] = v6;
  v44[1] = v7;
  v44[2] = v8;
  v44[3] = v9;
  sub_10000B8B0(v6, v7, v8, v9, v10, v11, v12, v13, v25, v27, v29, v31, v33, v35, v37, v39);
  v14 = sub_100161A78(v44);
  sub_10000D0B4(v14, v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32, v34, v36, v38, v40, v41, v42, v23);
  result = v43;
  *(a5 + 41) = v43;
  return result;
}

uint64_t AvroSchema.BytesSchema.encode(to:)()
{
  sub_100099DF4(&qword_1002DEF68, &qword_10023D570);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_10000AF24();
  sub_100002810();
  v2 = sub_100163184();
  sub_10000A484(&type metadata for AvroSchema.BytesSchema.CodingKeys, v3, v2);
  sub_1000040DC();
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100008AD0();
    sub_10015C14C();
    sub_10016927C();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = sub_10000EF58();
  return v5(v4);
}

unint64_t sub_100163184()
{
  result = qword_1002DEF70;
  if (!qword_1002DEF70)
  {
    result = swift_getWitnessTable(byte_10023EC90, &type metadata for AvroSchema.BytesSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEF70);
  }

  return result;
}

void sub_100163260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v26 = v25;
  v27 = v23;
  v29 = v28;
  v32 = sub_100099DF4(v30, v31);
  sub_100003724();
  v40 = v33;
  sub_100003774();
  __chkstk_darwin(v34);
  v36 = &v39 - v35;
  v37 = sub_100008B3C(v29, v29[3]);
  v26(v37);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v42[0] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v24)
  {
    (*(v40 + 8))(v36, v32);
  }

  else
  {
    memcpy(v43, (v27 + 16), 0x62uLL);
    memcpy(v42, (v27 + 16), sizeof(v42));
    sub_10014416C(v43, v41);
    sub_100157620();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = (v40 + 8);
    memcpy(v41, v42, 0x62uLL);
    sub_1001441C8(v41);
    (*v38)(v36, v32);
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t AvroSchema.FixedSchema.encode(to:)()
{
  sub_100099DF4(&qword_1002DEF88, &unk_10023D588);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_10000AF24();
  sub_100002810();
  v2 = sub_100162C54();
  sub_10000A484(&type metadata for AvroSchema.FixedSchema.CodingKeys, v3, v2);
  sub_1000083D8();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_100003158(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003158(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000B478(&qword_1002DEEA0, &protocol witness table for String);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10015C14C();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003158(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003158(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = sub_10000EF58();
  return v5(v4);
}

uint64_t sub_100163640(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10009A468(&qword_1002DEE98, &qword_10023D238);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001636AC()
{
  v1 = 1;
  switch(*(v0 + 56))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_4;
    case 7:
      return v1;
    default:

LABEL_4:
      v1 = 0;
      if (*(v0 + 80))
      {
        return v1;
      }

      v4 = *(v0 + 72);
      if (v4 < 1)
      {
        return v1;
      }

      if ((*(v0 + 96) & 1) == 0 && *(v0 + 88) > v4)
      {
        return 0;
      }

      v5 = *(v0 + 64);
      if (v5 >= v4)
      {
        return 0;
      }

      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (!v6)
      {
        v8 = 8 * v7;
        v9 = 3 * (v8 / 10);
        if (v9 >= v4)
        {
          return 1;
        }

        v10 = v8 % 10;
        if (v10 >= 1)
        {
          v11 = ~(-1 << (v10 & 0x3E));
          v1 = 1;
          while (v11 >= 0xB)
          {
            ++v9;
            v11 /= 0xAuLL;
            if (v9 >= v4)
            {
              return v1;
            }
          }
        }

        return v9 >= v4;
      }

      __break(1u);
      return result;
  }
}

Swift::String __swiftcall AvroSchema.getTypeName()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 96);
  v6 = 0xE500000000000000;
  v7 = 0x6E6F696E75;
  switch(v5 >> 12)
  {
    case 1u:
      sub_10000811C();
      switch(v10)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_27;
        case 3:
          goto LABEL_28;
        case 4:
          goto LABEL_26;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_31;
        case 7:
          v6 = 0xE400000000000000;
          v7 = 1735290732;
          break;
        default:
          goto LABEL_5;
      }

      break;
    case 2u:
      sub_10000811C();
      switch(v11)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_27;
        case 3:
          goto LABEL_28;
        case 4:
          goto LABEL_26;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_31;
        case 7:
          sub_10016931C();
          break;
        default:
          goto LABEL_5;
      }

      break;
    case 3u:
    case 4u:
    case 9u:
      v7 = *(v1 + 48);
      v6 = *(v1 + 56);
      goto LABEL_4;
    case 5u:
    case 6u:
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
LABEL_4:

      break;
    case 7u:
      break;
    case 8u:
      v7 = *(v0 + 32);

      break;
    case 0xAu:
      sub_100169330();
      break;
    case 0xBu:
      v7 = 0x646C656966;
      break;
    case 0xCu:
      v6 = 0xE700000000000000;
      v7 = 0x64696C61766E69;
      break;
    case 0xDu:
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);
      v18 = *(v0 + 48);
      v17 = *(v0 + 56);
      v19 = *(v0 + 24);
      v20 = *(v0 + 8);
      if (v5 != 53248 || v2 | v1 | v4 | v3 | v14 | v13 | v15 | v16 | v17 | v18 | v19 | v20)
      {
        v21 = v4 | v2 | v3 | v14 | v13 | v15 | v16 | v17 | v18 | v19 | v20;
        v22 = v5 == 53248 && v1 == 1;
        if (!v22 || v21)
        {
          v24 = v5 == 53248 && v1 == 2;
          if (!v24 || v21)
          {
            if (v21)
            {
              v25 = 0;
            }

            else
            {
              v25 = v1 == 3;
            }

            if (v25 && v5 == 53248)
            {
              v7 = 0x656C62756F64;
            }

            else
            {
              v7 = 0x676E69727473;
            }

            v6 = 0xE600000000000000;
          }

          else
          {
            v7 = 0x74616F6C66;
          }
        }

        else
        {
          sub_10000F3EC();
        }
      }

      else
      {
        v6 = 0xE400000000000000;
        v7 = 1819047278;
      }

      break;
    default:
      sub_10000811C();
      switch(v12)
      {
        case 1:
LABEL_14:
          v6 = 0xE400000000000000;
          v7 = 1702125924;
          break;
        case 2:
LABEL_27:
          sub_100169214();
          v7 = 0x6C69006E6F696E75;
          v6 = 0xEB0000000073696CLL;
          break;
        case 3:
LABEL_28:
          sub_100169214();
          sub_100169264();
          break;
        case 4:
LABEL_26:
          sub_10000AE78();
          v23 = "timestamp-millis";
          goto LABEL_30;
        case 5:
LABEL_29:
          sub_10000AE78();
          v23 = "timestamp-micros";
LABEL_30:
          v6 = (v23 - 32) | 0x8000000000000000;
          break;
        case 6:
LABEL_31:
          sub_10016924C();
          break;
        case 7:
          v6 = 0xE300000000000000;
          v7 = 7630441;
          break;
        default:
          goto LABEL_5;
      }

      break;
  }

LABEL_5:
  v8 = v7;
  v9 = v6;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static AvroSchema.UnionSchema.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (v8)
    {
      v9 = a1[2] == a2[2] && v7 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_17:

  return sub_100143B9C();
}

Swift::Int AvroSchema.hashValue.getter()
{
  Hasher.init(_seed:)();
  AvroSchema.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100163C34()
{
  sub_100002DDC();
  v1._object = v0;
  v2 = _findStringSwitchCase(cases:string:)(&off_1002B4160, v1);

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100163C7C()
{
  sub_100002DDC();
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100163CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100163C34();
  *a1 = result;
  return result;
}

unint64_t sub_100163D20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100161910(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100163DEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100163C7C();
  *a1 = result;
  return result;
}

unint64_t sub_100163E1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10016176C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall AvroSchema.getFullname()()
{
  v2 = *v1;
  switch(*(v1 + 96) >> 12)
  {
    case 3:
    case 9:
      memcpy(__dst, v2 + 2, 0x51uLL);
      v0 = __dst[1];
      if (!__dst[1])
      {
        v2 = __dst[4];
        v0 = __dst[5];
        goto LABEL_23;
      }

      v2 = __dst[0];
      v22[0] = __dst[0];
      v22[1] = __dst[1];
      __dst[15] = 46;
      __dst[16] = 0xE100000000000000;
      sub_10015BE18(__dst, &v19);
      sub_1000BBBB0();

      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        v3 = __dst[3];
        if (__dst[3])
        {
          v4 = __dst[2];
          sub_100099DF4(&qword_1002DD538, &unk_100238260);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_1002329F0;
          *(v5 + 32) = v4;
          *(v5 + 40) = v3;
          *(v5 + 48) = v2;
          *(v5 + 56) = v0;
          v19 = v5;

          v0 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          BidirectionalCollection<>.joined(separator:)();
          sub_100013E30();
        }
      }

      sub_10015BE74(__dst);
      break;
    case 4:
      v6 = v2[3];
      v0 = v2[7];
      if (v6)
      {
        v7 = v2[2];
        v9 = v2[4];
        v8 = v2[5];
        __dst[0] = v7;
        __dst[1] = v6;
        v19 = 46;
        v20 = 0xE100000000000000;
        sub_1000BBBB0();
        swift_bridgeObjectRetain_n();

        if ((StringProtocol.contains<A>(_:)() & 1) != 0 || !v8)
        {

          v0 = v6;
        }

        else
        {
          sub_100099DF4(&qword_1002DD538, &unk_100238260);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_1002329F0;
          *(v10 + 32) = v9;
          *(v10 + 40) = v8;
          *(v10 + 48) = v7;
          *(v10 + 56) = v6;
          __dst[0] = v10;

          sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_100169308();
          v7 = BidirectionalCollection<>.joined(separator:)();
          v12 = v11;

          v0 = v12;
        }
      }

      else
      {
        v7 = v2[6];
      }

      v2 = v7;
      break;
    case 5:
      memcpy(__dst, v2 + 2, 0x73uLL);
      memcpy(v22, v2 + 4, 0x62uLL);
      sub_100150F70(__dst, &v19);
      AvroSchema.getFullname()();
      sub_100013E30();
      sub_100150FCC(__dst);
      break;
    case 6:
      memcpy(__dst, v2 + 2, 0x73uLL);
      memcpy(v22, v2 + 4, 0x62uLL);
      sub_10014EA68(__dst, &v19);
      AvroSchema.getFullname()();
      sub_100013E30();
      sub_10014EAC4(__dst);
      break;
    case 8:
      v0 = *(v1 + 8);
      if (v0)
      {
        v14 = *(v1 + 16);
        v13 = *(v1 + 24);
        __dst[0] = *v1;
        __dst[1] = v0;
        v19 = 46;
        v20 = 0xE100000000000000;
        sub_1000BBBB0();

        if ((StringProtocol.contains<A>(_:)() & 1) == 0 && v13)
        {
          sub_100099DF4(&qword_1002DD538, &unk_100238260);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1002329F0;
          *(v15 + 32) = v14;
          *(v15 + 40) = v13;
          *(v15 + 48) = v2;
          *(v15 + 56) = v0;
          __dst[0] = v15;

          v0 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_100169308();
          BidirectionalCollection<>.joined(separator:)();
          sub_100013E30();
        }
      }

      else
      {
        v2 = *(v1 + 32);
        v0 = *(v1 + 40);
LABEL_23:
      }

      break;
    default:
      AvroSchema.getName()();
      sub_100013E30();
      break;
  }

  v16 = v2;
  v17 = v0;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_10016438C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 6516580 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100164580(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = 0x73646C656966;
      break;
    case 5:
      result = 6516580;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100164638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016438C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100164660(uint64_t a1)
{
  v2 = sub_100161E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016469C(uint64_t a1)
{
  v2 = sub_100161E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroSchema.RecordSchema.addField(_:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = AvroSchema.getName()();
  result = v5.value._countAndFlagsBits;
  if (v5.value._object)
  {
    sub_10014416C(__src, &v9);
    sub_1001671A0(sub_10013C3D0);
    v6 = *(*(v2 + 48) + 16);
    sub_100167214(v6, sub_10013C3D0);
    v7 = *(v2 + 48);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 184 * v6;
    *(v8 + 32) = v5;
    result = memcpy((v8 + 48), __dst, 0x62uLL);
    *(v8 + 152) = 0u;
    *(v8 + 168) = 0u;
    *(v8 + 184) = 0u;
    *(v8 + 200) = 0;
    *(v8 + 208) = 2;
    *(v2 + 48) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001647CC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x51uLL);
  memcpy(__dst, a2, 0x51uLL);
  return static AvroSchema.RecordSchema.== infix(_:_:)(v4, __dst) & 1;
}

void sub_100164824(void *a1@<X8>)
{
  AvroSchema.RecordSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x51uLL);
  }
}

uint64_t sub_1001648C4()
{
  sub_100002DDC();
  memcpy(v3, v1, 0xB2uLL);
  memcpy(__dst, v0, 0xB2uLL);
  return static AvroSchema.FieldSchema.== infix(_:_:)(v3, __dst) & 1;
}

void sub_100164918(void *a1@<X8>)
{
  AvroSchema.FieldSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0xB2uLL);
  }
}

uint64_t sub_1001649B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 6516580 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100164BB0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      v3 = 0x657361696C61;
      goto LABEL_6;
    case 4:
      v3 = 0x6C6F626D7973;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 5:
      result = 6516580;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100164C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001649B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100164C78(uint64_t a1)
{
  v2 = sub_1001621FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100164CB4(uint64_t a1)
{
  v2 = sub_1001621FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100164CF0(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x51uLL);
  memcpy(__dst, a2, 0x51uLL);
  return static AvroSchema.EnumSchema.== infix(_:_:)(v4, __dst);
}

void sub_100164D48(void *a1@<X8>)
{
  AvroSchema.EnumSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x51uLL);
  }
}

uint64_t sub_100164DE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100164EAC(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100164EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100164DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100164F20(uint64_t a1)
{
  v2 = sub_100162460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100164F5C(uint64_t a1)
{
  v2 = sub_100162460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100164F98(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x73uLL);
  memcpy(__dst, a2, 0x73uLL);
  return static AvroSchema.ArraySchema.== infix(_:_:)(v4, __dst) & 1;
}

uint64_t sub_100165034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001650F8(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10016512C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165154(uint64_t a1)
{
  v2 = sub_100162648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100165190(uint64_t a1)
{
  v2 = sub_100162648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001651CC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x73uLL);
  memcpy(__dst, a2, 0x73uLL);
  return static AvroSchema.MapSchema.== infix(_:_:)(v4, __dst) & 1;
}

void *sub_100165250@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(__src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x73uLL);
  }

  return result;
}

uint64_t sub_1001652B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1702521203 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10016553C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x546C616369676F6CLL;
      break;
    case 6:
      result = 0x6F69736963657270;
      break;
    case 7:
      result = 0x656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001652B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165640(uint64_t a1)
{
  v2 = sub_100162C54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016567C(uint64_t a1)
{
  v2 = sub_100162C54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001656B8(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x62uLL);
  memcpy(__dst, a2, 0x62uLL);
  return static AvroSchema.FixedSchema.== infix(_:_:)(v4, __dst) & 1;
}

void sub_100165710(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  AvroSchema.FixedSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x62uLL);
  }
}

uint64_t sub_100165774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1001658D4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x546C616369676F6CLL;
      break;
    case 2:
      result = 0x6F69736963657270;
      break;
    case 3:
      result = 0x656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165988(uint64_t a1)
{
  v2 = sub_100163184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001659C4(uint64_t a1)
{
  v2 = sub_100163184();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroSchema.BytesSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12)
{
  sub_100004868();
  v14 = v13;
  v16 = v15;
  v17 = sub_100099DF4(&qword_1002DEF90, &qword_10023D598);
  sub_100003724();
  v19 = v18;
  sub_100003774();
  __chkstk_darwin(v20);
  v22 = &v32 - v21;
  sub_100008B3C(v14, v14[3]);
  sub_100163184();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_100004118(v14);
  }

  else
  {
    sub_100005D54();
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v24;
    sub_100008AD0();
    sub_10015D03C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = a12;
    sub_100005D54();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v27;
    v34 = v26;
    sub_100005D54();
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v22;
    v31 = v30;
    (*(v19 + 8))(v29, v17);
    sub_100004118(v14);
    *v16 = v23;
    *(v16 + 8) = v25;
    *(v16 + 16) = v35;
    *(v16 + 24) = v34;
    *(v16 + 32) = v33 & 1;
    *(v16 + 40) = v28;
    *(v16 + 48) = v31 & 1;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_100165C10(uint64_t a1, uint64_t a2)
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
  return static AvroSchema.BytesSchema.== infix(_:_:)(v5, v7) & 1;
}

double sub_100165C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  AvroSchema.BytesSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), BYTE6(v13));
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *&v15;
    *(a9 + 32) = v15;
    *(a9 + 48) = v16;
  }

  return result;
}

uint64_t sub_100165CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736568636E617262 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100165DEC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6C616E6F6974706FLL;
  }

  return 0x736568636E617262;
}

uint64_t sub_100165E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165E6C(uint64_t a1)
{
  v2 = sub_100162F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100165EA8(uint64_t a1)
{
  v2 = sub_100162F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroSchema.UnionSchema.encode(to:)()
{
  sub_100099DF4(&qword_1002DEF98, &qword_10023D5A0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_10000AF24();
  sub_100002810();
  v2 = sub_100162F00();
  sub_10000A484(&type metadata for AvroSchema.UnionSchema.CodingKeys, v3, v2);
  sub_1000040DC();
  sub_100003B48();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DED58, &unk_10023CCC8);
    sub_10016725C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10000EF58();
  return v5(v4);
}

double sub_10016604C@<D0>(uint64_t a1@<X8>)
{
  AvroSchema.UnionSchema.init(from:)();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1001660AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100166178(char a1)
{
  if (a1)
  {
    return 0x546C616369676F6CLL;
  }

  else
  {
    return 1701869940;
  }
}

Swift::Int sub_1001661B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_100166204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001660AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016622C(uint64_t a1)
{
  v2 = sub_1001672E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100166268(uint64_t a1)
{
  v2 = sub_1001672E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroSchema.IntSchema.encode(to:)()
{
  sub_100004868();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DEFA8, &qword_10023D5A8);
  sub_100003724();
  v6 = v5;
  sub_100003774();
  __chkstk_darwin(v7);
  sub_10000AF24();
  sub_100008B3C(v3, v3[3]);
  sub_1001672E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000040DC();
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100008AD0();
    sub_10015C14C();
    sub_10016927C();
  }

  (*(v6 + 8))(v1, v4);
  sub_10000A7AC();
  sub_100005074();
}

uint64_t AvroSchema.IntSchema.init(from:)()
{
  sub_1000AC3AC();
  sub_100099DF4(&qword_1002DEFB8, &qword_10023D5B0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v2);
  sub_100004880();
  v3 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1001672E0();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10000B08C();
    v3 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100008AD0();
    sub_10015D03C();
    sub_10000B08C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v5 = sub_10000BD0C();
    v6(v5);
  }

  sub_100004118(v0);
  return v3;
}

uint64_t sub_1001665A0@<X0>(uint64_t a1@<X8>)
{
  result = AvroSchema.IntSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_1001665F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1001667A8(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = 0x6974756C6F736572;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100166838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10016688C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001665F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001668B4(uint64_t a1)
{
  v2 = sub_100167334();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001668F0(uint64_t a1)
{
  v2 = sub_100167334();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroSchema.UnknownSchema.encode(to:)()
{
  sub_100099DF4(&qword_1002DEFC0, &qword_10023D5B8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_10000AF24();
  sub_100002810();
  v2 = sub_100167334();
  sub_10000A484(&type metadata for AvroSchema.UnknownSchema.CodingKeys, v3, v2);
  sub_1000040DC();
  sub_1000083D8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000083D8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000083D8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000B478(&qword_1002DEEA0, &protocol witness table for String);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100167388();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10000EF58();
  return v5(v4);
}

void AvroSchema.UnknownSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_100004868();
  sub_1000AC3AC();
  v16 = v15;
  sub_100099DF4(&qword_1002DEFD8, &qword_10023D5C0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v17);
  sub_100005244();
  sub_100008B3C(v13, v13[3]);
  sub_100167334();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    sub_100004118(v13);
  }

  else
  {
    sub_100008C30();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v19;
    sub_100008C30();
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v21;
    LOBYTE(v35[0]) = 2;
    sub_100008C30();
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v22;
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_100007D58(&qword_1002DEF00, &protocol witness table for String);
    sub_100008C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v20;
    v23 = v35[0];
    sub_1001673DC();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = sub_100003780();
    v25(v24);
    *&v32 = v18;
    *(&v32 + 1) = v31;
    *&v33 = v27;
    *(&v33 + 1) = v30;
    *v34 = v28;
    *&v34[8] = v29;
    *&v34[16] = v35[0];
    v34[24] = a13;
    sub_100161A40(&v32, v35);
    sub_100004118(v13);
    v35[0] = v18;
    v35[1] = v31;
    v35[2] = v27;
    v35[3] = v30;
    v35[4] = v28;
    v35[5] = v29;
    v35[6] = v23;
    v36 = a13;
    sub_100161A78(v35);
    v26 = v33;
    *v16 = v32;
    v16[1] = v26;
    v16[2] = *v34;
    *(v16 + 41) = *&v34[9];
  }

  sub_1000109FC();
  sub_100005074();
}

double sub_100166E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  AvroSchema.UnknownSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    a9[2] = *v16;
    result = *&v16[9];
    *(a9 + 41) = *&v16[9];
  }

  return result;
}

amsaccountsd::AvroSchemaEncodingOption_optional __swiftcall AvroSchemaEncodingOption.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

amsaccountsd::AvroSchemaEncodingOption_optional sub_100166EB4@<W0>(Swift::Int *a1@<X0>, amsaccountsd::AvroSchemaEncodingOption_optional *a2@<X8>)
{
  result.value = AvroSchemaEncodingOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100166EE0@<X0>(uint64_t *a1@<X8>)
{
  result = AvroSchemaEncodingOption.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void sub_100166FBC(void *a1@<X8>)
{
  AvroSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x62uLL);
  }
}

Swift::Int sub_1001670DC(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  Hasher.init(_seed:)();
  AvroSchema.hash(into:)(&v3);
  return Hasher._finalize()();
}

uint64_t sub_100167134()
{
  sub_100002DDC();
  memcpy(v3, v1, 0x62uLL);
  memcpy(__dst, v0, 0x62uLL);
  return static AvroSchema.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1001671A0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100167214(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_10016725C()
{
  result = qword_1002DEFA0;
  if (!qword_1002DEFA0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DED58, &unk_10023CCC8);
    v4[0] = sub_100157620();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DEFA0);
  }

  return result;
}

unint64_t sub_1001672E0()
{
  result = qword_1002DEFB0;
  if (!qword_1002DEFB0)
  {
    result = swift_getWitnessTable(byte_10023EC40, &type metadata for AvroSchema.IntSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEFB0);
  }

  return result;
}

unint64_t sub_100167334()
{
  result = qword_1002DEFC8;
  if (!qword_1002DEFC8)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for AvroSchema.UnknownSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DEFC8);
  }

  return result;
}

unint64_t sub_100167388()
{
  result = qword_1002DEFD0;
  if (!qword_1002DEFD0)
  {
    result = swift_getWitnessTable(byte_10023EBC8, &unk_1002BAC30, v0, v1);
    atomic_store(result, &qword_1002DEFD0);
  }

  return result;
}

unint64_t sub_1001673DC()
{
  result = qword_1002DEFE0;
  if (!qword_1002DEFE0)
  {
    result = swift_getWitnessTable(asc_10023EBA0, &unk_1002BAC30, v0, v1);
    atomic_store(result, &qword_1002DEFE0);
  }

  return result;
}

unint64_t sub_10016745C()
{
  result = qword_1002DEFE8;
  if (!qword_1002DEFE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.RecordSchema, &type metadata for AvroSchema.RecordSchema, v0, v1);
    atomic_store(result, &qword_1002DEFE8);
  }

  return result;
}

unint64_t sub_1001674B0()
{
  result = qword_1002DEFF0;
  if (!qword_1002DEFF0)
  {
    result = swift_getWitnessTable("e\x1B\a", &type metadata for AvroSchema.RecordSchema, v0, v1);
    atomic_store(result, &qword_1002DEFF0);
  }

  return result;
}

unint64_t sub_100167530()
{
  result = qword_1002DEFF8;
  if (!qword_1002DEFF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.EnumSchema, &type metadata for AvroSchema.EnumSchema, v0, v1);
    atomic_store(result, &qword_1002DEFF8);
  }

  return result;
}

unint64_t sub_100167584()
{
  result = qword_1002DF000;
  if (!qword_1002DF000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.EnumSchema, &type metadata for AvroSchema.EnumSchema, v0, v1);
    atomic_store(result, &qword_1002DF000);
  }

  return result;
}

unint64_t sub_100167604()
{
  result = qword_1002DF008;
  if (!qword_1002DF008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.FixedSchema, &type metadata for AvroSchema.FixedSchema, v0, v1);
    atomic_store(result, &qword_1002DF008);
  }

  return result;
}

unint64_t sub_100167658()
{
  result = qword_1002DF010;
  if (!qword_1002DF010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.FixedSchema, &type metadata for AvroSchema.FixedSchema, v0, v1);
    atomic_store(result, &qword_1002DF010);
  }

  return result;
}

uint64_t sub_1001676D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100167714()
{
  result = qword_1002DF018;
  if (!qword_1002DF018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.UnknownSchema, &type metadata for AvroSchema.UnknownSchema, v0, v1);
    atomic_store(result, &qword_1002DF018);
  }

  return result;
}

unint64_t sub_100167768()
{
  result = qword_1002DF020;
  if (!qword_1002DF020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema.UnknownSchema, &type metadata for AvroSchema.UnknownSchema, v0, v1);
    atomic_store(result, &qword_1002DF020);
  }

  return result;
}

unint64_t sub_1001677C0()
{
  result = qword_1002DF028;
  if (!qword_1002DF028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema, &type metadata for AvroSchema, v0, v1);
    atomic_store(result, &qword_1002DF028);
  }

  return result;
}

uint64_t sub_10016781C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 57);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100167860(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 98) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 8;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001678E4(uint64_t result, unsigned int a2)
{
  if (a2 < 0xD)
  {
    v3 = *(result + 80) & 1;
    v2 = *(result + 96) & 0x301 | (a2 << 12);
    *(result + 56) = *(result + 56);
    *(result + 80) = v3;
  }

  else
  {
    *result = a2 - 13;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    v2 = -12288;
    *(result + 88) = 0;
  }

  *(result + 96) = v2;
  return result;
}

uint64_t sub_100167968(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 178))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1001679A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167A24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_100167A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167ADC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 115))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100167B1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167B8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_100167BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100167C34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100167C50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100167C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167CEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_100167D2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100167D80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100167D94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100167DD4(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AvroSchema.UnknownSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchema.BytesSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100168000(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100168088(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100168160(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
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
      return sub_100004918((*a1 | (v4 << 8)) - 3);
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

      return sub_100004918((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 3);
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

  return sub_100004918(v8);
}

_BYTE *sub_1001681E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100006284(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001682B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchema.FixedSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100168474(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
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
      return sub_100004918((*a1 | (v4 << 8)) - 2);
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

      return sub_100004918((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 2);
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

  return sub_100004918(v8);
}

_BYTE *sub_1001684F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100006284(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001685D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100006284(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001686A4()
{
  result = qword_1002DF030;
  if (!qword_1002DF030)
  {
    result = swift_getWitnessTable("Q\r\a", &type metadata for AvroSchema.RecordSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF030);
  }

  return result;
}

unint64_t sub_1001686FC()
{
  result = qword_1002DF038;
  if (!qword_1002DF038)
  {
    result = swift_getWitnessTable(byte_10023E468, &type metadata for AvroSchema.EnumSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF038);
  }

  return result;
}

unint64_t sub_100168754()
{
  result = qword_1002DF040;
  if (!qword_1002DF040)
  {
    result = swift_getWitnessTable(byte_10023E520, &type metadata for AvroSchema.ArraySchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF040);
  }

  return result;
}

unint64_t sub_1001687AC()
{
  result = qword_1002DF048;
  if (!qword_1002DF048)
  {
    result = swift_getWitnessTable(")\v\a", &type metadata for AvroSchema.MapSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF048);
  }

  return result;
}

unint64_t sub_100168804()
{
  result = qword_1002DF050;
  if (!qword_1002DF050)
  {
    result = swift_getWitnessTable("q\n\a", &type metadata for AvroSchema.FixedSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF050);
  }

  return result;
}

unint64_t sub_10016885C()
{
  result = qword_1002DF058;
  if (!qword_1002DF058)
  {
    result = swift_getWitnessTable(byte_10023E730, &unk_1002BAF90, v0, v1);
    atomic_store(result, &qword_1002DF058);
  }

  return result;
}

unint64_t sub_1001688B4()
{
  result = qword_1002DF060;
  if (!qword_1002DF060)
  {
    result = swift_getWitnessTable(byte_10023E7E8, &type metadata for AvroSchema.UnionSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF060);
  }

  return result;
}

unint64_t sub_10016890C()
{
  result = qword_1002DF068;
  if (!qword_1002DF068)
  {
    result = swift_getWitnessTable("Q\b\a", &unk_1002BAE70, v0, v1);
    atomic_store(result, &qword_1002DF068);
  }

  return result;
}

unint64_t sub_100168964()
{
  result = qword_1002DF070;
  if (!qword_1002DF070)
  {
    result = swift_getWitnessTable(byte_10023E968, &type metadata for AvroSchema.BytesSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF070);
  }

  return result;
}

unint64_t sub_1001689BC()
{
  result = qword_1002DF078;
  if (!qword_1002DF078)
  {
    result = swift_getWitnessTable(byte_10023EA20, &type metadata for AvroSchema.IntSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF078);
  }

  return result;
}

unint64_t sub_100168A14()
{
  result = qword_1002DF080;
  if (!qword_1002DF080)
  {
    result = swift_getWitnessTable(asc_10023EAD8, &type metadata for AvroSchema.UnknownSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF080);
  }

  return result;
}

unint64_t sub_100168A6C()
{
  result = qword_1002DF088;
  if (!qword_1002DF088)
  {
    result = swift_getWitnessTable(byte_10023EB78, &unk_1002BAC30, v0, v1);
    atomic_store(result, &qword_1002DF088);
  }

  return result;
}

unint64_t sub_100168AC4()
{
  result = qword_1002DF090;
  if (!qword_1002DF090)
  {
    result = swift_getWitnessTable(byte_10023EA48, &type metadata for AvroSchema.UnknownSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF090);
  }

  return result;
}

unint64_t sub_100168B1C()
{
  result = qword_1002DF098;
  if (!qword_1002DF098)
  {
    result = swift_getWitnessTable("q\a\a", &type metadata for AvroSchema.UnknownSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF098);
  }

  return result;
}

unint64_t sub_100168B74()
{
  result = qword_1002DF0A0;
  if (!qword_1002DF0A0)
  {
    result = swift_getWitnessTable("A\b\a", &type metadata for AvroSchema.IntSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0A0);
  }

  return result;
}

unint64_t sub_100168BCC()
{
  result = qword_1002DF0A8;
  if (!qword_1002DF0A8)
  {
    result = swift_getWitnessTable(")\b\a", &type metadata for AvroSchema.IntSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0A8);
  }

  return result;
}

unint64_t sub_100168C24()
{
  result = qword_1002DF0B0;
  if (!qword_1002DF0B0)
  {
    result = swift_getWitnessTable(byte_10023E8D8, &type metadata for AvroSchema.BytesSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0B0);
  }

  return result;
}

unint64_t sub_100168C7C()
{
  result = qword_1002DF0B8;
  if (!qword_1002DF0B8)
  {
    result = swift_getWitnessTable(byte_10023E900, &type metadata for AvroSchema.BytesSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0B8);
  }

  return result;
}

unint64_t sub_100168CD4()
{
  result = qword_1002DF0C0;
  if (!qword_1002DF0C0)
  {
    result = swift_getWitnessTable("y\n\a", &type metadata for AvroSchema.UnionSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0C0);
  }

  return result;
}

unint64_t sub_100168D2C()
{
  result = qword_1002DF0C8;
  if (!qword_1002DF0C8)
  {
    result = swift_getWitnessTable("a\n\a", &type metadata for AvroSchema.UnionSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0C8);
  }

  return result;
}

unint64_t sub_100168D84()
{
  result = qword_1002DF0D0;
  if (!qword_1002DF0D0)
  {
    result = swift_getWitnessTable(byte_10023E600, &type metadata for AvroSchema.FixedSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0D0);
  }

  return result;
}

unint64_t sub_100168DDC()
{
  result = qword_1002DF0D8;
  if (!qword_1002DF0D8)
  {
    result = swift_getWitnessTable(byte_10023E628, &type metadata for AvroSchema.FixedSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0D8);
  }

  return result;
}

unint64_t sub_100168E34()
{
  result = qword_1002DF0E0;
  if (!qword_1002DF0E0)
  {
    result = swift_getWitnessTable(byte_10023E548, &type metadata for AvroSchema.MapSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0E0);
  }

  return result;
}

unint64_t sub_100168E8C()
{
  result = qword_1002DF0E8;
  if (!qword_1002DF0E8)
  {
    result = swift_getWitnessTable(aQ_6, &type metadata for AvroSchema.MapSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0E8);
  }

  return result;
}

unint64_t sub_100168EE4()
{
  result = qword_1002DF0F0;
  if (!qword_1002DF0F0)
  {
    result = swift_getWitnessTable("A\r\a", &type metadata for AvroSchema.ArraySchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0F0);
  }

  return result;
}

unint64_t sub_100168F3C()
{
  result = qword_1002DF0F8;
  if (!qword_1002DF0F8)
  {
    result = swift_getWitnessTable(")\r\a", &type metadata for AvroSchema.ArraySchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF0F8);
  }

  return result;
}

unint64_t sub_100168F94()
{
  result = qword_1002DF100;
  if (!qword_1002DF100)
  {
    result = swift_getWitnessTable(byte_10023E3D8, &type metadata for AvroSchema.EnumSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF100);
  }

  return result;
}

unint64_t sub_100168FEC()
{
  result = qword_1002DF108;
  if (!qword_1002DF108)
  {
    result = swift_getWitnessTable(byte_10023E400, &type metadata for AvroSchema.EnumSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF108);
  }

  return result;
}

unint64_t sub_100169044()
{
  result = qword_1002DF110;
  if (!qword_1002DF110)
  {
    result = swift_getWitnessTable(byte_10023E320, &type metadata for AvroSchema.RecordSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF110);
  }

  return result;
}

unint64_t sub_10016909C()
{
  result = qword_1002DF118;
  if (!qword_1002DF118)
  {
    result = swift_getWitnessTable(byte_10023E348, &type metadata for AvroSchema.RecordSchema.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DF118);
  }

  return result;
}

unint64_t sub_1001690F0()
{
  result = qword_1002DF120;
  if (!qword_1002DF120)
  {
    result = swift_getWitnessTable(byte_10023E6B8, &unk_1002BAF90, v0, v1);
    atomic_store(result, &qword_1002DF120);
  }

  return result;
}

unint64_t sub_100169144()
{
  result = qword_1002DF128;
  if (!qword_1002DF128)
  {
    result = swift_getWitnessTable(byte_10023E838, &unk_1002BAE70, v0, v1);
    atomic_store(result, &qword_1002DF128);
  }

  return result;
}

unint64_t sub_100169198()
{
  result = qword_1002DF130;
  if (!qword_1002DF130)
  {
    result = swift_getWitnessTable(byte_10023EB00, &unk_1002BAC30, v0, v1);
    atomic_store(result, &qword_1002DF130);
  }

  return result;
}

uint64_t sub_10016927C()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void *sub_1001692A0()
{
  v0[1] = v1;
  v0[2] = v2;

  return memcpy(v0 + 3, v0 + 31, 0x62uLL);
}

uint64_t sub_1001692C4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void *sub_100169344()
{
  v2 = *(v0 - 304);

  return memcpy(v2, (v0 - 264), 0x51uLL);
}

unint64_t sub_100169364()
{
  *(v0 - 65) = 1;

  return sub_100157420();
}

uint64_t sub_100169384()
{
  sub_100004194();
  v1[213] = v0;
  v1[212] = v2;
  v3 = type metadata accessor for BagValueType();
  v1[214] = v3;
  v1[215] = *(v3 - 8);
  v1[216] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100169440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000AF64();
  sub_100002E38();
  v15 = *(v14 + 1696);
  v16 = Dictionary.init(dictionaryLiteral:)();
  v17 = *(v15 + 16);
  *(v14 + 1736) = v17;
  v18 = enum case for BagValueType.array(_:);
  *(v14 + 2024) = enum case for BagValueType.array(_:);
  *(v14 + 2028) = enum case for BagValueType.BOOL(_:);
  *(v14 + 2032) = enum case for BagValueType.double(_:);
  *(v14 + 2036) = enum case for BagValueType.integer(_:);
  *(v14 + 2040) = enum case for BagValueType.string(_:);
  *(v14 + 2044) = enum case for BagValueType.url(_:);
  *(v14 + 2048) = enum case for BagValueType.dictionary(_:);
  *(v14 + 1792) = v16;
  *(v14 + 1784) = v16;
  *(v14 + 1776) = v16;
  *(v14 + 1768) = v16;
  *(v14 + 1760) = v16;
  *(v14 + 1752) = 0;
  *(v14 + 1744) = v16;
  v19 = *(v14 + 1728);
  if (v17)
  {
    v20 = *(v14 + 1720);
    v21 = *(v14 + 1712);
    (*(v20 + 16))(*(v14 + 1728), *(v14 + 1696) + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v21);
    if ((*(v20 + 88))(v19, v21) == v18)
    {
      sub_10000D5A0();
      v22 = sub_100013E3C();
      v23(v22);
      v24 = sub_10000DC1C();
      v25 = sub_100170534(v24, "arrayForKey:");

      sub_1001705E8([v25 valuePromise]);
      sub_100170468();
      *(v14 + 272) = v26;
      *(v14 + 312) = v14 + 1640;
      *(v14 + 280) = sub_100169C20;
      sub_100006320();
      v27 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v27);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v14 + 680) = &unk_1002BB360;
LABEL_25:
      sub_100170600(v28, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
    }

    sub_100002ED4();
    if (v44)
    {
      sub_10000D5A0();
      v38 = sub_100013E3C();
      v39(v38);
      v40 = sub_10000BD1C();
      v41 = sub_100170534(v40, "BOOLForKey:");

      sub_1001705A0([v41 valuePromise]);
      sub_100170468();
      *(v14 + 208) = v42;
      *(v14 + 248) = v14 + 1592;
      *(v14 + 216) = sub_10016A498;
      sub_100006320();
      v43 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v43);
      *(v14 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_25;
    }

    sub_1001704C8();
    if (v44)
    {
      sub_10000D5A0();
      v45 = sub_100013E3C();
      v46(v45);
      v47 = sub_1001703E4();
      v48 = sub_100170534(v47, "doubleForKey:");

      sub_1001705B8([v48 valuePromise]);
      sub_100170468();
      *(v14 + 400) = v49;
      *(v14 + 440) = v14 + 1608;
      *(v14 + 408) = sub_10016ACC8;
      sub_100006320();
      v50 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v50);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v14 + 808) = &unk_1002BB310;
      goto LABEL_25;
    }

    sub_1000040E8();
    if (v51)
    {
      sub_10000D5A0();
      v52 = sub_100013E3C();
      v53(v52);
      v54 = sub_100170424();
      v55 = sub_100170534(v54, "integerForKey:");

      sub_100170588([v55 valuePromise]);
      sub_100170468();
      *(v14 + 336) = v56;
      *(v14 + 376) = v14 + 1624;
      *(v14 + 344) = sub_10016B504;
      sub_100006320();
      v57 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v57);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v14 + 872) = &unk_1002BB2E8;
      goto LABEL_25;
    }

    sub_1001704BC();
    if (v58)
    {
      sub_10000D5A0();
      v59 = sub_100013E3C();
      v60(v59);
      v61 = sub_100170404();
      v62 = sub_100170534(v61, "stringForKey:");

      sub_100003ED0([v62 valuePromise]);
      sub_100170468();
      *(v14 + 144) = v63;
      *(v14 + 184) = v14 + 1656;
      *(v14 + 152) = sub_10016BD3C;
      sub_100006320();
      v64 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v64);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v14 + 744) = &unk_1002BB2C0;
      goto LABEL_25;
    }

    sub_100002AB8();
    if (v65)
    {
      sub_10000D5A0();
      v66 = sub_100013E3C();
      v67(v66);
      v68 = sub_100005D64();
      v69 = sub_100170534(v68, "URLForKey:");

      sub_1001705D0([v69 valuePromise]);
      sub_100170468();
      *(v14 + 80) = v70;
      *(v14 + 120) = v14 + 1672;
      *(v14 + 88) = sub_10016C560;
      sub_100006320();
      v71 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v71);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v14 + 616) = &unk_1002BB298;
      goto LABEL_25;
    }

    sub_100004944();
    if (v72)
    {
      sub_10000D5A0();
      v73 = sub_100013E3C();
      v74(v73);
      v75 = sub_100010E90();
      v76 = sub_100170534(v75, "dictionaryForKey:");

      sub_100170570([v76 valuePromise]);
      sub_100170468();
      *(v14 + 16) = v77;
      *(v14 + 56) = v14 + 1584;
      *(v14 + 24) = sub_10016CD84;
      sub_100006320();
      v78 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v78);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v14 + 552) = &unk_1002BB270;
      goto LABEL_25;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10);
  }

  else
  {
    Dictionary._bridgeToObjectiveC()();

    sub_10000F404();
    sub_1000041E0();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_100169C20()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1824) = *(v3 + 304);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100169D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000AF64();
  sub_100002E38();
  v16 = *(v15 + 1640);

  v17 = *(v15 + 1808);
  v18 = *(v15 + 1800);
  if (v16)
  {
    v19 = *(v15 + 1744);
    *(v15 + 1096) = sub_100003AE0(0, &qword_1002DF188, NSArray_ptr);
    *(v15 + 1072) = v16;
    sub_1001514B8((v15 + 1072), (v15 + 1040));
    v20 = v16;
    sub_1001706B8();
    *(v15 + 1688) = v19;
    sub_10014EB30(v18, v17);
    sub_1001703D0();
    if (v29)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        sub_10014EB30(*(v15 + 1800), *(v15 + 1808));
        sub_100170474();
        if (!v66)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        LODWORD(v17) = v30;
      }

      v37 = *(v15 + 1688);
      if (v18)
      {
        sub_1001704E0();
        sub_1000035E4((v15 + 1040));
LABEL_17:

        v33 = v37;
        goto LABEL_18;
      }

      sub_10000A2C0(*(v15 + 1800));
      v21 = sub_100170518((v15 + 1040), v38);
      if (!v29)
      {
        *(v37 + 16) = v39;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  v33 = sub_10014EB30(*(v15 + 1800), *(v15 + 1808));
  v35 = v34;

  if (v35)
  {
    LODWORD(v17) = sub_100170638();
    a9 = v35;
    v36 = *(v35 + 24);
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v36);

    sub_1001514B8((*(v35 + 56) + 32 * v33), (v15 + 944));
    _NativeDictionary._delete(at:)();
    v33 = v35;
  }

  else
  {
    sub_100170700();
  }

  sub_100009DF4(v15 + 944);
LABEL_18:
  sub_100008AF8();
  *(v15 + 1792) = v33;
  *(v15 + 1784) = v33;
  *(v15 + 1776) = v33;
  *(v15 + 1768) = v33;
  *(v15 + 1760) = v33;
  sub_100170398(v40);
  if (!v66)
  {
    v49 = sub_100004C74();
    v50(v49);
    v51 = sub_1001703C0();
    if (v52(v51) == v17)
    {
      v53 = sub_10000F0F4();
      v54(v53);
      v55 = sub_10000DC1C();
      v56 = sub_100170534(v55, "arrayForKey:");

      sub_1001705E8([v56 valuePromise]);
      sub_100170468();
      *(v15 + 272) = v57;
      sub_100170364();
      v58 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v58);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v15 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v59, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14);
    }

    sub_100002ED4();
    if (v66)
    {
      v60 = sub_10000B098();
      v61(v60);
      v62 = sub_10000BD1C();
      v63 = sub_100170534(v62, "BOOLForKey:");

      sub_1001705A0([v63 valuePromise]);
      sub_100170468();
      *(v15 + 208) = v64;
      sub_100170330();
      v65 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v65);
      *(v15 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v66)
    {
      v67 = sub_100004668();
      v68(v67);
      v69 = sub_1001703E4();
      v70 = sub_100170534(v69, "doubleForKey:");

      sub_1001705B8([v70 valuePromise]);
      sub_100170468();
      *(v15 + 400) = v71;
      sub_10000B49C();
      v72 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v72);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v15 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v73)
    {
      v74 = sub_100170300();
      v75(v74);
      v76 = sub_100170424();
      v77 = sub_100170534(v76, "integerForKey:");

      sub_100170588([v77 valuePromise]);
      sub_100170468();
      *(v15 + 336) = v78;
      sub_10000B8D4();
      v79 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v79);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v15 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v80)
    {
      v81 = sub_1000053C8();
      v82(v81);
      v83 = sub_100170404();
      v84 = sub_100170534(v83, "stringForKey:");

      sub_100003ED0([v84 valuePromise]);
      sub_100170468();
      *(v15 + 144) = v85;
      sub_10000D0C8();
      v86 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v86);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v15 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v87)
    {
      v88 = sub_10000ABFC();
      v89(v88);
      v90 = sub_100005D64();
      v91 = sub_100170534(v90, "URLForKey:");

      sub_1001705D0([v91 valuePromise]);
      sub_100170468();
      *(v15 + 80) = v92;
      sub_100008E74();
      v93 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v93);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v15 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v94)
    {
      v95 = sub_10000EECC();
      v96(v95);
      v97 = sub_100010E90();
      v98 = sub_100170534(v97, "dictionaryForKey:");

      sub_100170570([v98 valuePromise]);
      sub_100170468();
      *(v15 + 16) = v99;
      sub_100013CE8();
      v100 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v100);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v15 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_1001706E8();

  sub_10000F404();
  sub_1000041E0();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_10016A498()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1856) = *(v3 + 240);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10016A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000AF64();
  sub_100002E38();
  v16 = *(v15 + 1592);

  v17 = *(v15 + 1840);
  v18 = *(v15 + 1832);
  if (v16)
  {
    v19 = *(v15 + 1744);
    *(v15 + 1384) = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    *(v15 + 1360) = v16;
    sub_1001514B8((v15 + 1360), (v15 + 1168));
    v20 = v16;
    sub_1001706B8();
    *(v15 + 1632) = v19;
    v21 = sub_100003EC4();
    sub_10014EB30(v21, v22);
    sub_1001703D0();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        sub_10014EB30(*(v15 + 1832), *(v15 + 1840));
        sub_100170474();
        if (!v69)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v18 = v32;
      }

      v40 = *(v15 + 1632);
      if (v17)
      {
        sub_1001704E0();
        sub_1000035E4((v15 + 1168));
LABEL_17:

        sub_1000028F4();
        goto LABEL_18;
      }

      sub_10000A2C0(*(v15 + 1832));
      v23 = sub_100170518((v15 + 1168), v41);
      if (!v31)
      {
        *(v40 + 16) = v42;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }

  v35 = *(v15 + 1784);
  v36 = sub_100003EC4();
  sub_10014EB30(v36, v37);
  sub_100170484();
  if (v35)
  {
    sub_100170638();
    sub_100170650();
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170618();
    sub_100004FF8();
    v38 = sub_1001704A0();
    sub_100008BE0(v38, v39, &type metadata for String);
    sub_1000028F4();
  }

  else
  {
    sub_1001704D4();
    v17 = *(v15 + 1792);
    v18 = *(v15 + 1784);
  }

  sub_100009DF4(v15 + 1328);
LABEL_18:
  sub_100008AF8();
  *(v15 + 1792) = v17;
  *(v15 + 1784) = v18;
  *(v15 + 1776) = v18;
  *(v15 + 1768) = v18;
  *(v15 + 1760) = v18;
  sub_100170398(v43);
  if (!v69)
  {
    v52 = sub_100004C74();
    v53(v52);
    v54 = sub_1001703C0();
    if (v55(v54) == v18)
    {
      v56 = sub_10000F0F4();
      v57(v56);
      v58 = sub_10000DC1C();
      v59 = sub_100170534(v58, "arrayForKey:");

      sub_1001705E8([v59 valuePromise]);
      sub_100170468();
      *(v15 + 272) = v60;
      sub_100170364();
      v61 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v61);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v15 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v62, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
    }

    sub_100002ED4();
    if (v69)
    {
      v63 = sub_10000B098();
      v64(v63);
      v65 = sub_10000BD1C();
      v66 = sub_100170534(v65, "BOOLForKey:");

      sub_1001705A0([v66 valuePromise]);
      sub_100170468();
      *(v15 + 208) = v67;
      sub_100170330();
      v68 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v68);
      *(v15 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v69)
    {
      v70 = sub_100004668();
      v71(v70);
      v72 = sub_1001703E4();
      v73 = sub_100170534(v72, "doubleForKey:");

      sub_1001705B8([v73 valuePromise]);
      sub_100170468();
      *(v15 + 400) = v74;
      sub_10000B49C();
      v75 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v75);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v15 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v76)
    {
      v77 = sub_100170300();
      v78(v77);
      v79 = sub_100170424();
      v80 = sub_100170534(v79, "integerForKey:");

      sub_100170588([v80 valuePromise]);
      sub_100170468();
      *(v15 + 336) = v81;
      sub_10000B8D4();
      v82 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v82);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v15 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v83)
    {
      v84 = sub_1000053C8();
      v85(v84);
      v86 = sub_100170404();
      v87 = sub_100170534(v86, "stringForKey:");

      sub_100003ED0([v87 valuePromise]);
      sub_100170468();
      *(v15 + 144) = v88;
      sub_10000D0C8();
      v89 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v89);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v15 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v90)
    {
      v91 = sub_10000ABFC();
      v92(v91);
      v93 = sub_100005D64();
      v94 = sub_100170534(v93, "URLForKey:");

      sub_1001705D0([v94 valuePromise]);
      sub_100170468();
      *(v15 + 80) = v95;
      sub_100008E74();
      v96 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v96);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v15 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v97)
    {
      v98 = sub_10000EECC();
      v99(v98);
      v100 = sub_100010E90();
      v101 = sub_100170534(v100, "dictionaryForKey:");

      sub_100170570([v101 valuePromise]);
      sub_100170468();
      *(v15 + 16) = v102;
      sub_100013CE8();
      v103 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v103);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v15 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }

  sub_1001706D0();
  sub_100010FA8();

  sub_10000DF84();
  sub_1000041E0();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}