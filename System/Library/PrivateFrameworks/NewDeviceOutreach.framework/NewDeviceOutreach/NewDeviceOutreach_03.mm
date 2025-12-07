uint64_t NDOItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 112);
  v20[6] = *(v1 + 96);
  v20[7] = v2;
  v20[8] = *(v1 + 128);
  v21 = *(v1 + 144);
  v3 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v20[3] = v3;
  v4 = *(v1 + 80);
  v20[4] = *(v1 + 64);
  v20[5] = v4;
  v5 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v5;
  v6 = sub_100038CF0(v20);
  v7 = sub_10000574C(v20);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v11 = *(v7 + 80);
      v26 = *(v7 + 64);
      v27 = v11;
      LOBYTE(v28) = *(v7 + 96);
      v12 = *(v7 + 16);
      v22 = *v7;
      v23 = v12;
      v13 = *(v7 + 48);
      v24 = *(v7 + 32);
      v25 = v13;
      Hasher._combine(_:)(2uLL);
      sub_1000562C4();
    }

    else
    {
      v15 = *(v7 + 112);
      v28 = *(v7 + 96);
      v29 = v15;
      v30 = *(v7 + 128);
      v31 = *(v7 + 144);
      v16 = *(v7 + 48);
      v24 = *(v7 + 32);
      v25 = v16;
      v17 = *(v7 + 80);
      v26 = *(v7 + 64);
      v27 = v17;
      v18 = *(v7 + 16);
      v22 = *v7;
      v23 = v18;
      Hasher._combine(_:)(3uLL);
      sub_100056270();
    }
  }

  else if (v6)
  {
    v14 = *(v7 + 16);
    v22 = *v7;
    v23 = v14;
    v24 = *(v7 + 32);
    LOBYTE(v25) = *(v7 + 48);
    Hasher._combine(_:)(1uLL);
    sub_10002292C();
  }

  else
  {
    v8 = *(v7 + 80);
    v26 = *(v7 + 64);
    v27 = v8;
    v28 = *(v7 + 96);
    LOBYTE(v29) = *(v7 + 112);
    v9 = *(v7 + 16);
    v22 = *v7;
    v23 = v9;
    v10 = *(v7 + 48);
    v24 = *(v7 + 32);
    v25 = v10;
    Hasher._combine(_:)(0);
    sub_100056318();
  }

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int NDOItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  NDOItem.hash(into:)(v1);
  return Hasher._finalize()();
}

double NDOItem.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10005636C(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

Swift::Int sub_100055A28(uint64_t a1)
{
  Hasher.init(_seed:)();
  NDOItem.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100055A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s8ndoagent7NDOItemO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_100055B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726163616C70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D6F7270 && a2 == 0xE500000000000000)
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

uint64_t _s8ndoagent7NDOItemO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v62[6] = *(a1 + 96);
  v62[7] = v3;
  v62[8] = *(a1 + 128);
  v63 = *(a1 + 144);
  v4 = *(a1 + 48);
  v62[2] = *(a1 + 32);
  v62[3] = v4;
  v5 = *(a1 + 80);
  v62[4] = *(a1 + 64);
  v62[5] = v5;
  v6 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v6;
  v7 = sub_100038CF0(v62);
  v8 = sub_10000574C(v62);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v18 = *(v8 + 80);
      v56 = *(v8 + 64);
      v57 = v18;
      LOBYTE(v58) = *(v8 + 96);
      v19 = *(v8 + 16);
      v52 = *v8;
      v53 = v19;
      v20 = *(v8 + 48);
      v54 = *(v8 + 32);
      v55 = v20;
      v21 = a2[7];
      v70 = a2[6];
      v71 = v21;
      v72 = a2[8];
      v73 = *(a2 + 18);
      v22 = a2[3];
      v66 = a2[2];
      v67 = v22;
      v23 = a2[5];
      v68 = a2[4];
      v69 = v23;
      v24 = a2[1];
      v64 = *a2;
      v65 = v24;
      if (sub_100038CF0(&v64) == 2)
      {
        v25 = sub_10000574C(&v64);
        v45 = *(v25 + 48);
        v46 = *(v25 + 64);
        v47 = *(v25 + 80);
        LOBYTE(v48) = *(v25 + 96);
        v42 = *v25;
        v43 = *(v25 + 16);
        v44 = *(v25 + 32);
        v17 = static NDOPlacardModel.__derived_struct_equals(_:_:)();
        return v17 & 1;
      }
    }

    else
    {
      v70 = *(v8 + 96);
      v71 = *(v8 + 112);
      v72 = *(v8 + 128);
      v73 = *(v8 + 144);
      v66 = *(v8 + 32);
      v67 = *(v8 + 48);
      v68 = *(v8 + 64);
      v69 = *(v8 + 80);
      v64 = *v8;
      v65 = *(v8 + 16);
      v32 = a2[1];
      v42 = *a2;
      v43 = v32;
      v33 = a2[5];
      v46 = a2[4];
      v47 = v33;
      v34 = a2[3];
      v44 = a2[2];
      v45 = v34;
      v51 = *(a2 + 18);
      v35 = a2[8];
      v49 = a2[7];
      v50 = v35;
      v48 = a2[6];
      if (sub_100038CF0(&v42) == 3)
      {
        v36 = sub_10000574C(&v42);
        v37 = *(v36 + 112);
        v58 = *(v36 + 96);
        v59 = v37;
        v60 = *(v36 + 128);
        v61 = *(v36 + 144);
        v38 = *(v36 + 48);
        v54 = *(v36 + 32);
        v55 = v38;
        v39 = *(v36 + 80);
        v56 = *(v36 + 64);
        v57 = v39;
        v40 = *(v36 + 16);
        v52 = *v36;
        v53 = v40;
        v17 = static NDOPromoModel.__derived_struct_equals(_:_:)();
        return v17 & 1;
      }
    }

LABEL_12:
    v17 = 0;
    return v17 & 1;
  }

  if (v7)
  {
    v26 = *(v8 + 16);
    v52 = *v8;
    v53 = v26;
    v54 = *(v8 + 32);
    LOBYTE(v55) = *(v8 + 48);
    v27 = a2[7];
    v70 = a2[6];
    v71 = v27;
    v72 = a2[8];
    v73 = *(a2 + 18);
    v28 = a2[3];
    v66 = a2[2];
    v67 = v28;
    v29 = a2[5];
    v68 = a2[4];
    v69 = v29;
    v30 = a2[1];
    v64 = *a2;
    v65 = v30;
    if (sub_100038CF0(&v64) == 1)
    {
      v31 = sub_10000574C(&v64);
      v42 = *v31;
      v43 = *(v31 + 16);
      v44 = *(v31 + 32);
      LOBYTE(v45) = *(v31 + 48);
      v17 = static NDODWFooterModel.Link.__derived_struct_equals(_:_:)(&v52, &v42);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  v9 = *(v8 + 80);
  v56 = *(v8 + 64);
  v57 = v9;
  v58 = *(v8 + 96);
  LOBYTE(v59) = *(v8 + 112);
  v10 = *(v8 + 16);
  v52 = *v8;
  v53 = v10;
  v11 = *(v8 + 48);
  v54 = *(v8 + 32);
  v55 = v11;
  v12 = a2[7];
  v70 = a2[6];
  v71 = v12;
  v72 = a2[8];
  v73 = *(a2 + 18);
  v13 = a2[3];
  v66 = a2[2];
  v67 = v13;
  v14 = a2[5];
  v68 = a2[4];
  v69 = v14;
  v15 = a2[1];
  v64 = *a2;
  v65 = v15;
  if (sub_100038CF0(&v64))
  {
    goto LABEL_12;
  }

  v16 = sub_10000574C(&v64);
  v46 = *(v16 + 64);
  v47 = *(v16 + 80);
  v48 = *(v16 + 96);
  LOBYTE(v49) = *(v16 + 112);
  v42 = *v16;
  v43 = *(v16 + 16);
  v44 = *(v16 + 32);
  v45 = *(v16 + 48);
  v17 = static NDODeviceModel.__derived_struct_equals(_:_:)();
  return v17 & 1;
}

unint64_t sub_100055FD0()
{
  result = qword_1000AF510;
  if (!qword_1000AF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF510);
  }

  return result;
}

unint64_t sub_100056024()
{
  result = qword_1000AF518;
  if (!qword_1000AF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF518);
  }

  return result;
}

unint64_t sub_100056078()
{
  result = qword_1000A7CF8;
  if (!qword_1000A7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7CF8);
  }

  return result;
}

unint64_t sub_1000560CC()
{
  result = qword_1000AF520;
  if (!qword_1000AF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF520);
  }

  return result;
}

unint64_t sub_100056120()
{
  result = qword_1000A7D00;
  if (!qword_1000A7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D00);
  }

  return result;
}

unint64_t sub_100056174()
{
  result = qword_1000AF528;
  if (!qword_1000AF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF528);
  }

  return result;
}

unint64_t sub_1000561C8()
{
  result = qword_1000AF530[0];
  if (!qword_1000AF530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF530);
  }

  return result;
}

unint64_t sub_10005621C()
{
  result = qword_1000A7D08;
  if (!qword_1000A7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D08);
  }

  return result;
}

unint64_t sub_100056270()
{
  result = qword_1000A7D10;
  if (!qword_1000A7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D10);
  }

  return result;
}

unint64_t sub_1000562C4()
{
  result = qword_1000A7D18;
  if (!qword_1000A7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D18);
  }

  return result;
}

unint64_t sub_100056318()
{
  result = qword_1000A7D20;
  if (!qword_1000A7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D20);
  }

  return result;
}

double sub_10005636C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = sub_10001A078(&qword_1000A7D30, &qword_100080FB0);
  v54 = *(v50 - 8);
  __chkstk_darwin(v50);
  v57 = &v46 - v3;
  v4 = sub_10001A078(&qword_1000A7D38, &qword_100080FB8);
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v56 = &v46 - v5;
  v51 = sub_10001A078(&qword_1000A7D40, &qword_100080FC0);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v46 - v6;
  v8 = sub_10001A078(&qword_1000A7D48, &qword_100080FC8);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10001A078(&qword_1000A7D50, &qword_100080FD0);
  v58 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = a1[3];
  v90 = a1;
  sub_100001F3C(a1, v14);
  sub_100055FD0();
  v15 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_9;
  }

  v47 = v8;
  v16 = v7;
  v17 = v56;
  v18 = v57;
  v59 = v13;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = *(v19 + 16);
  if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
  {
    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    sub_10001A078(&qword_1000A7260, &unk_1000801D0);
    *v25 = &type metadata for NDOItem;
    v26 = v59;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
    swift_willThrow();
    (*(v58 + 8))(v26, v11);
    swift_unknownObjectRelease();
LABEL_9:
    sub_100001E74(v90);
    return result;
  }

  if (*(v19 + 32) > 1u)
  {
    v51 = v19;
    v29 = v55;
    if (v21 == 2)
    {
      LOBYTE(v70) = 2;
      sub_1000560CC();
      v30 = v59;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100057494();
      v37 = v53;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v38 = (v58 + 8);
      (*(v52 + 8))(v17, v37);
      (*v38)(v30, v11);
      swift_unknownObjectRelease();
      v74 = v64;
      v75 = v65;
      LOBYTE(v76) = v66;
      v70 = v60;
      v71 = v61;
      v72 = v62;
      v73 = v63;
      sub_1000321DC(&v70);
      v86 = v76;
      v87 = v77;
      v88 = v78;
      v89 = v79;
      v82 = v72;
      v83 = v73;
      v84 = v74;
      v85 = v75;
      v80 = v70;
      v81 = v71;
    }

    else
    {
      v33 = v55;
      LOBYTE(v70) = 3;
      sub_100056024();
      v34 = v18;
      v35 = v59;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100057440();
      v40 = v50;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = (v58 + 8);
      (*(v54 + 8))(v34, v40);
      (*v41)(v35, v11);
      swift_unknownObjectRelease();
      v66 = v76;
      v67 = v77;
      v68 = v78;
      v69 = v79;
      v62 = v72;
      v63 = v73;
      v64 = v74;
      v65 = v75;
      v60 = v70;
      v61 = v71;
      sub_100032178(&v60);
      v86 = v66;
      v87 = v67;
      v88 = v68;
      v89 = v69;
      v82 = v62;
      v83 = v63;
      v84 = v64;
      v85 = v65;
      v80 = v60;
      v81 = v61;
      v29 = v33;
    }
  }

  else
  {
    if (*(v19 + 32))
    {
      LOBYTE(v70) = 1;
      sub_100056174();
      v31 = v59;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v58;
      sub_100023FF8();
      v39 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v49 + 8))(v16, v39);
      (*(v32 + 8))(v31, v11);
      swift_unknownObjectRelease();
      v70 = v60;
      v71 = v61;
      v72 = v62;
      LOBYTE(v73) = v63;
      sub_100032168(&v70);
    }

    else
    {
      LOBYTE(v70) = 0;
      sub_1000561C8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v58;
      sub_1000574E8();
      v36 = v47;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v48 + 8))(v10, v36);
      (*(v28 + 8))(v59, v11);
      swift_unknownObjectRelease();
      v74 = v64;
      v75 = v65;
      v76 = v66;
      LOBYTE(v77) = v67;
      v70 = v60;
      v71 = v61;
      v72 = v62;
      v73 = v63;
      sub_100032188(&v70);
    }

    v86 = v76;
    v87 = v77;
    v88 = v78;
    v89 = v79;
    v82 = v72;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v80 = v70;
    v81 = v71;
    v29 = v55;
  }

  sub_100001E74(v90);
  v42 = v87;
  *(v29 + 96) = v86;
  *(v29 + 112) = v42;
  *(v29 + 128) = v88;
  *(v29 + 144) = v89;
  v43 = v83;
  *(v29 + 32) = v82;
  *(v29 + 48) = v43;
  v44 = v85;
  *(v29 + 64) = v84;
  *(v29 + 80) = v44;
  result = *&v80;
  v45 = v81;
  *v29 = v80;
  *(v29 + 16) = v45;
  return result;
}

unint64_t sub_100056D7C()
{
  result = qword_1000A7D28;
  if (!qword_1000A7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D28);
  }

  return result;
}

uint64_t sub_100056DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 137);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100056E28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
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
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 136) = -a2 << 8;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100056F1C()
{
  result = qword_1000AF840[0];
  if (!qword_1000AF840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF840);
  }

  return result;
}

unint64_t sub_100056F74()
{
  result = qword_1000AFA50[0];
  if (!qword_1000AFA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFA50);
  }

  return result;
}

unint64_t sub_100056FCC()
{
  result = qword_1000AFC60[0];
  if (!qword_1000AFC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFC60);
  }

  return result;
}

unint64_t sub_100057024()
{
  result = qword_1000AFE70[0];
  if (!qword_1000AFE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFE70);
  }

  return result;
}

unint64_t sub_10005707C()
{
  result = qword_1000B0080[0];
  if (!qword_1000B0080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0080);
  }

  return result;
}

unint64_t sub_1000570D4()
{
  result = qword_1000B0190;
  if (!qword_1000B0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0190);
  }

  return result;
}

unint64_t sub_10005712C()
{
  result = qword_1000B0198[0];
  if (!qword_1000B0198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0198);
  }

  return result;
}

unint64_t sub_100057184()
{
  result = qword_1000B0220;
  if (!qword_1000B0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0220);
  }

  return result;
}

unint64_t sub_1000571DC()
{
  result = qword_1000B0228[0];
  if (!qword_1000B0228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0228);
  }

  return result;
}

unint64_t sub_100057234()
{
  result = qword_1000B02B0;
  if (!qword_1000B02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B02B0);
  }

  return result;
}

unint64_t sub_10005728C()
{
  result = qword_1000B02B8[0];
  if (!qword_1000B02B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B02B8);
  }

  return result;
}

unint64_t sub_1000572E4()
{
  result = qword_1000B0340;
  if (!qword_1000B0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0340);
  }

  return result;
}

unint64_t sub_10005733C()
{
  result = qword_1000B0348[0];
  if (!qword_1000B0348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0348);
  }

  return result;
}

unint64_t sub_100057394()
{
  result = qword_1000B03D0;
  if (!qword_1000B03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B03D0);
  }

  return result;
}

unint64_t sub_1000573EC()
{
  result = qword_1000B03D8[0];
  if (!qword_1000B03D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B03D8);
  }

  return result;
}

unint64_t sub_100057440()
{
  result = qword_1000A7D58;
  if (!qword_1000A7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D58);
  }

  return result;
}

unint64_t sub_100057494()
{
  result = qword_1000A7D60;
  if (!qword_1000A7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D60);
  }

  return result;
}

unint64_t sub_1000574E8()
{
  result = qword_1000A7D68;
  if (!qword_1000A7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D68);
  }

  return result;
}

id static NDOAgentInternalDebugHelpers.runDaemonStartupLogicIfNeeded()()
{
  result = [objc_opt_self() isInternal];
  if (result)
  {
    type metadata accessor for FileBasedRequestsStubbing();
    dispatch thunk of static FileBasedRequestsStubbing.stubRequests()();
    sub_10005934C();

    return sub_10005A880();
  }

  return result;
}

uint64_t static NDOAgentInternalDebugHelpers.debugAMSPayload()()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v97 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Logger();
  v100 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v99 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v96 = &v87 - v6;
  v7 = __chkstk_darwin(v5);
  v98 = &v87 - v8;
  __chkstk_darwin(v7);
  v10 = &v87 - v9;
  v11 = type metadata accessor for URL.DirectoryHint();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v87 - v21;
  __chkstk_darwin(v20);
  v24 = &v87 - v23;
  if (![objc_opt_self() isInternal])
  {
    return 0;
  }

  v95 = v2;
  static NDOConstants.ndoDirPath.getter();
  v104[0] = 0xD000000000000016;
  v104[1] = 0x800000010008C3E0;
  (*(v12 + 104))(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v11);
  sub_100032090();
  URL.appending<A>(component:directoryHint:)();
  (*(v12 + 8))(v14, v11);
  v25 = *(v16 + 8);
  v25(v22, v15);
  v26 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v26 fileExistsAtPath:v27];

  if (!v28)
  {
    v25(v24, v15);
    return 0;
  }

  v94 = v25;
  v29 = sub_100049C1C();
  v30 = v24;
  v31 = v100;
  v32 = *(v100 + 16);
  v89 = v29;
  v33 = v95;
  v91 = v100 + 16;
  v90 = v32;
  (v32)(v10);
  v34 = *(v16 + 16);
  v93 = v30;
  v34(v19, v30, v15);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v88 = v15;
  v87 = v16 + 8;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v104[0] = v39;
    *v38 = 136315138;
    sub_10005BC2C(&qword_1000A7D70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v94(v19, v15);
    v43 = sub_10001FEC8(v40, v42, v104);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Checking for debug ams payload override at %s", v38, 0xCu);
    sub_100001E74(v39);
    v33 = v95;

    v92 = *(v100 + 8);
  }

  else
  {

    v94(v19, v15);
    v92 = *(v31 + 8);
  }

  v92(v10, v33);
  v52 = Data.init(contentsOf:options:)();
  v54 = v53;
  static String.Encoding.utf8.getter();
  v55 = v33;
  v56 = String.init(data:encoding:)();
  v58 = v57;
  v59 = v98;
  v90(v98, v89, v55);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v60, v61);
  v63 = v88;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v104[0] = v65;
    *v64 = 136315138;
    if (v58)
    {
      v66 = v56;
    }

    else
    {
      v66 = 0;
    }

    if (!v58)
    {
      v58 = 0xE000000000000000;
    }

    v67 = sub_10001FEC8(v66, v58, v104);

    *(v64 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "Validating data: %s", v64, 0xCu);
    sub_100001E74(v65);

    v68 = v98;
  }

  else
  {

    v68 = v59;
  }

  v92(v68, v55);
  v69 = v55;
  v70 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v103[0] = 0;
  v72 = [v70 JSONObjectWithData:isa options:0 error:v103];

  v73 = v103[0];
  v74 = v93;
  if (!v72)
  {
    v86 = v73;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100003EBC(v52, v54);
    v90(v99, v89, v69);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v94;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Not overriding AMS payload. %@", v48, 0xCu);
      sub_1000035B8(v49, &qword_1000A6F40, &qword_10007E690);
    }

    v92(v99, v69);
    v47(v74, v63);
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v75 = v96;
  v90(v96, v89, v69);
  sub_100020798(v104, v103);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v102 = v79;
    *v78 = 136315138;
    sub_100020798(v103, v101);
    v80 = String.init<A>(describing:)();
    v82 = v81;
    sub_100001E74(v103);
    v83 = sub_10001FEC8(v80, v82, &v102);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v76, v77, "AMS payload override JSON: %s", v78, 0xCu);
    sub_100001E74(v79);

    v92(v96, v95);
    sub_100001E74(v104);
    v84 = v74;
    v85 = v88;
  }

  else
  {

    sub_100001E74(v103);
    v92(v75, v69);
    sub_100001E74(v104);
    v84 = v74;
    v85 = v63;
  }

  v94(v84, v85);
  return v52;
}

uint64_t sub_100058218(uint64_t a1, char a2, const char *a3, ...)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100049C1C();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a2 & 1;
  sub_1000456C4(a1, a2 & 1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_1000456D0(a1, v11);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v20[1] = a1;
    v21 = v11;
    sub_1000456C4(a1, v11);
    sub_10001A078(&qword_1000A7938, &qword_10007E658);
    v16 = String.init<A>(describing:)();
    v18 = sub_10001FEC8(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 0xCu);
    sub_100001E74(v15);
  }

  return (*(v7 + 8))(v9, v6);
}

id NDOAgentInternalDebugHelpers.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NDOAgentInternalDebugHelpers();
  return objc_msgSendSuper2(&v3, "init");
}

id NDOAgentInternalDebugHelpers.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NDOAgentInternalDebugHelpers();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_1000584CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

id _s8ndoagent28NDOAgentInternalDebugHelpersC06handleC7CommandySo7NSErrorCSgSo12NSDictionaryCFZ_0(void *a1)
{
  v2 = type metadata accessor for Date();
  v96 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v95 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v90 - v5;
  v7 = type metadata accessor for URL();
  v98 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v97 = &v90 - v16;
  __chkstk_darwin(v15);
  v18 = &v90 - v17;
  v19 = [objc_opt_self() isInternal];
  result = 0;
  if (v19)
  {
    v91 = v2;
    v92 = v6;
    v93 = v11;
    v94 = v10;
    *&v101 = 0x646E616D6D6F63;
    *(&v101 + 1) = 0xE700000000000000;
    v21 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
    }

    v103 = v101;
    v104 = v102;
    if (*(&v102 + 1))
    {
      if (swift_dynamicCast())
      {
        v23 = v99;
        v22 = v100;
        if (v99 == 0x6361437261656C63 && v100 == 0xEA00000000006568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v24 = sub_100049C1C();
          v25 = v93;
          v26 = v94;
          (*(v93 + 16))(v18, v24, v94);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v103 = v30;
            *v29 = 136315138;
            static NDOConstants.ndoDirPath.getter();
            v31 = URL.absoluteString.getter();
            v33 = v32;
            (v98[1])(v9, v7);
            v34 = sub_10001FEC8(v31, v33, &v103);

            *(v29 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v27, v28, "clearing cashes at path: %s", v29, 0xCu);
            sub_100001E74(v30);

            (*(v93 + 8))(v18, v94);
          }

          else
          {

            (*(v25 + 8))(v18, v26);
          }

          type metadata accessor for NDOPersistanceHelpers();
          +[_TtC8ndoagent21NDOPersistanceHelpers clearAllCaches]_0();
          return 0;
        }

        if (v23 == 0x656C756465686373 && v22 == 0xEF6E496B63656843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          *&v101 = 0x68636F7065;
          *(&v101 + 1) = 0xE500000000000000;
          v41 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v41)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v101 = 0u;
            v102 = 0u;
          }

          v103 = v101;
          v104 = v102;
          if (*(&v102 + 1))
          {
            if (swift_dynamicCast())
            {
              *&v103 = 0;
              v42 = sub_1000584CC(v99, v100, &v103);

              if (v42)
              {
                v43 = v103;
                v44 = v92;
                Date.init(timeIntervalSince1970:)();
                v45 = sub_100049C1C();
                v47 = v93;
                v46 = v94;
                v48 = v97;
                (*(v93 + 16))(v97, v45, v94);
                v49 = v95;
                v50 = v96;
                v51 = v91;
                (*(v96 + 16))(v95, v44, v91);
                v52 = Logger.logObject.getter();
                v53 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v52, v53))
                {
                  v54 = swift_slowAlloc();
                  v98 = swift_slowAlloc();
                  *&v103 = v98;
                  *v54 = 136315394;
                  sub_10005BC2C(&qword_1000A7008, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v55 = dispatch thunk of CustomStringConvertible.description.getter();
                  v56 = v49;
                  v58 = v57;
                  v59 = *(v50 + 8);
                  v59(v56, v51);
                  v60 = sub_10001FEC8(v55, v58, &v103);

                  *(v54 + 4) = v60;
                  *(v54 + 12) = 2048;
                  *(v54 + 14) = v43;
                  _os_log_impl(&_mh_execute_header, v52, v53, "Scheduling next check in on %s (epoch: %f)", v54, 0x16u);
                  sub_100001E74(v98);

                  (*(v47 + 8))(v97, v94);
                }

                else
                {

                  v85 = v49;
                  v59 = *(v50 + 8);
                  v59(v85, v51);
                  (*(v47 + 8))(v48, v46);
                }

                v86 = sub_10005EF54();
                swift_beginAccess();
                v87 = *((swift_isaMask & **v86) + 0x88);
                v88 = *v86;
                v89 = v92;
                v87(v92);

                v59(v89, v51);
                return 0;
              }
            }
          }

          else
          {
            sub_1000035B8(&v103, &qword_1000A6FD8, &unk_10007DAC0);
          }

          sub_10001A078(&unk_1000A7DB0, &unk_1000810C0);
          inited = swift_initStackObject();
          *(inited + 32) = 1868983913;
          v62 = inited + 32;
          *(inited + 16) = xmmword_10007AE00;
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = 0xD000000000000011;
          *(inited + 56) = 0x800000010008C4F0;
          sub_10002793C(inited);
          swift_setDeallocating();
          sub_1000035B8(v62, &qword_1000A73F8, &qword_10007C300);
          v63 = objc_allocWithZone(NSError);
          v64 = String._bridgeToObjectiveC()();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v40 = [v63 initWithDomain:v64 code:43 userInfo:isa];

          return v40;
        }

        if (v23 == 0x636568437478656ELL && v22 == 0xEF657461446E496BLL)
        {

          v66 = v94;
LABEL_38:
          v68 = sub_10005EF54();
          swift_beginAccess();
          v69 = *((swift_isaMask & **v68) + 0x80);
          v70 = *v68;
          v71 = v69();
          v73 = v72;

          v74 = sub_100049C1C();
          v75 = v93;
          (*(v93 + 16))(v14, v74, v66);
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 134217984;
            if (v73)
            {
              v79 = -1;
            }

            else
            {
              v79 = v71;
            }

            *(v78 + 4) = v79;
            _os_log_impl(&_mh_execute_header, v76, v77, "Next checkIn epoch: %lld", v78, 0xCu);
            v75 = v93;
          }

          (*(v75 + 8))(v14, v66);
          return 0;
        }

        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v66 = v94;
        if (v67)
        {

          goto LABEL_38;
        }

        sub_10001A078(&unk_1000A7DB0, &unk_1000810C0);
        v80 = swift_initStackObject();
        *(v80 + 32) = 1868983913;
        *(v80 + 16) = xmmword_10007AE00;
        *(v80 + 40) = 0xE400000000000000;
        *&v103 = 0;
        *(&v103 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        *&v103 = 0xD000000000000015;
        *(&v103 + 1) = 0x800000010008C4D0;
        v81._countAndFlagsBits = v23;
        v81._object = v22;
        String.append(_:)(v81);

        v82 = v103;
        *(v80 + 72) = &type metadata for String;
        *(v80 + 48) = v82;
        sub_10002793C(v80);
        swift_setDeallocating();
        sub_1000035B8(v80 + 32, &qword_1000A73F8, &qword_10007C300);
        v83 = objc_allocWithZone(NSError);
        v84 = String._bridgeToObjectiveC()();
        v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = [v83 initWithDomain:v84 code:43 userInfo:v39.super.isa];

LABEL_14:
        return v40;
      }
    }

    else
    {
      sub_1000035B8(&v103, &qword_1000A6FD8, &unk_10007DAC0);
    }

    sub_10001A078(&unk_1000A7DB0, &unk_1000810C0);
    v35 = swift_initStackObject();
    *(v35 + 32) = 1868983913;
    v36 = v35 + 32;
    *(v35 + 16) = xmmword_10007AE00;
    *(v35 + 72) = &type metadata for String;
    *(v35 + 40) = 0xE400000000000000;
    *(v35 + 48) = 0xD000000000000020;
    *(v35 + 56) = 0x800000010008C4A0;
    sub_10002793C(v35);
    swift_setDeallocating();
    sub_1000035B8(v36, &qword_1000A73F8, &qword_10007C300);
    v37 = objc_allocWithZone(NSError);
    v38 = String._bridgeToObjectiveC()();
    v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = [v37 initWithDomain:v38 code:42 userInfo:v39.super.isa];

    goto LABEL_14;
  }

  return result;
}

id sub_10005934C()
{
  v0 = sub_10001A078(&qword_1000A7388, &unk_1000810B0);
  __chkstk_darwin(v0 - 8);
  v163 = &v145 - v1;
  v159 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ActionType();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v145 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData();
  v4 = *(v173 - 8);
  v5 = __chkstk_darwin(v173);
  v155 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v156 = &v145 - v8;
  __chkstk_darwin(v7);
  v167 = &v145 - v9;
  v169 = type metadata accessor for JSONDecodingOptions();
  v168 = *(v169 - 8);
  v10 = __chkstk_darwin(v169);
  v166 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v172 = &v145 - v12;
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  v170 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v177 = v15;
  v178 = v16;
  v17 = __chkstk_darwin(v15);
  v176 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v164 = &v145 - v20;
  v21 = __chkstk_darwin(v19);
  v171 = &v145 - v22;
  v23 = __chkstk_darwin(v21);
  v165 = &v145 - v24;
  v25 = __chkstk_darwin(v23);
  v175 = &v145 - v26;
  v27 = __chkstk_darwin(v25);
  v174 = &v145 - v28;
  __chkstk_darwin(v27);
  v30 = &v145 - v29;
  v31 = type metadata accessor for URL.DirectoryHint();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v145 - v41;
  __chkstk_darwin(v40);
  v44 = &v145 - v43;
  result = [objc_opt_self() isInternal];
  if (result)
  {
    v148 = v4;
    static NDOConstants.ndoDirPath.getter();
    v182[0] = 0xD000000000000014;
    v182[1] = 0x800000010008C460;
    (*(v32 + 104))(v34, enum case for URL.DirectoryHint.inferFromPath(_:), v31);
    sub_100032090();
    URL.appending<A>(component:directoryHint:)();
    (*(v32 + 8))(v34, v31);
    v46 = *(v36 + 8);
    v46(v42, v35);
    v47 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v48 = String._bridgeToObjectiveC()();

    v49 = [v47 fileExistsAtPath:v48];

    v50 = v35;
    if (v49)
    {
      v150 = v46;
      v152 = v36 + 8;
      v51 = sub_100049C1C();
      v53 = v178 + 16;
      v52 = *(v178 + 16);
      v153 = v51;
      v54 = v177;
      v154 = v52;
      (v52)(v30);
      v55 = *(v36 + 16);
      v149 = v44;
      v55(v39, v44, v50);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v151 = v50;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v182[0] = v60;
        *v59 = 136315138;
        sub_10005BC2C(&qword_1000A7D70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v53;
        v64 = v63;
        v150(v39, v151);
        v65 = sub_10001FEC8(v61, v64, v182);
        v53 = v62;

        *(v59 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "Trying to post debug follow up with contents of %s", v59, 0xCu);
        sub_100001E74(v60);
      }

      else
      {

        v150(v39, v50);
      }

      v66 = *(v178 + 8);
      v66(v30, v54);
      v67 = v174;
      v154(v174, v153, v54);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v149;
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Reading follow up json file", v72, 2u);
      }

      v73 = v178 + 8;
      v66(v67, v54);
      v74 = Data.init(contentsOf:options:)();
      v75 = v175;
      v178 = v73;
      v77 = v76;
      v78 = v74;
      static String.Encoding.utf8.getter();
      v145 = v78;
      v174 = v77;
      v79 = v54;
      v80 = String.init(data:encoding:)();
      v82 = v81;
      v154(v75, v153, v54);

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      v85 = os_log_type_enabled(v83, v84);
      v147 = v53;
      v146 = v66;
      if (v85)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v182[0] = v87;
        *v86 = 136315138;
        if (v82)
        {
          v88 = v80;
        }

        else
        {
          v88 = 0;
        }

        if (!v82)
        {
          v82 = 0xE000000000000000;
        }

        v89 = sub_10001FEC8(v88, v82, v182);

        *(v86 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v83, v84, "Validating data string: %s", v86, 0xCu);
        sub_100001E74(v87);

        v71 = v149;
      }

      else
      {
      }

      v66(v75, v79);
      v90 = v79;
      v91 = objc_opt_self();
      v92 = v145;
      v93 = v174;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v181 = 0;
      v95 = [v91 JSONObjectWithData:isa options:0 error:&v181];

      v96 = v181;
      v97 = v171;
      v98 = v176;
      if (v95)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        v99 = v165;
        v154(v165, v153, v90);
        sub_100020798(v182, &v181);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v180 = v103;
          *v102 = 136315138;
          sub_100020798(&v181, v179);
          v104 = String.init<A>(describing:)();
          v106 = v105;
          sub_100001E74(&v181);
          v107 = sub_10001FEC8(v104, v106, &v180);

          *(v102 + 4) = v107;
          v90 = v177;
          _os_log_impl(&_mh_execute_header, v100, v101, "JSON object from follow up data: %s", v102, 0xCu);
          sub_100001E74(v103);
        }

        else
        {

          sub_100001E74(&v181);
        }

        v146(v99, v90);
        v109 = v168;
        v110 = v172;
        JSONDecodingOptions.init()();
        JSONDecodingOptions.ignoreUnknownFields.setter();
        v154(v97, v153, v90);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&_mh_execute_header, v111, v112, "Attempting to construct PostFollowUpActionData proto obj", v113, 2u);
          v110 = v172;
        }

        v146(v97, v90);
        (*(v109 + 16))(v166, v110, v169);
        sub_100034F60(v145, v174);
        sub_10005BC2C(&qword_1000A7DA8, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
        v114 = v167;
        Message.init(jsonUTF8Data:options:)();
        v121 = v164;
        v154(v164, v153, v90);
        v122 = v148;
        v123 = *(v148 + 16);
        v124 = v156;
        v123(v156, v114, v173);
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v175 = v123;
          v128 = v127;
          v171 = swift_slowAlloc();
          v181 = v171;
          *v128 = 136315138;
          (v175)(v155, v124, v173);
          v129 = String.init<A>(describing:)();
          v131 = v130;
          v132 = *(v122 + 8);
          v176 = ((v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v132(v124, v173);
          v133 = v132;
          v134 = sub_10001FEC8(v129, v131, &v181);
          v135 = v173;

          *(v128 + 4) = v134;
          _os_log_impl(&_mh_execute_header, v125, v126, "Handling PostFollowUpAction action: %s", v128, 0xCu);
          sub_100001E74(v171);

          v123 = v175;

          v136 = v164;
          v137 = v177;
          v138 = v167;
        }

        else
        {
          v138 = v114;

          v139 = *(v122 + 8);
          v176 = ((v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v135 = v173;
          v139(v124, v173);
          v133 = v139;
          v136 = v121;
          v137 = v90;
        }

        v146(v136, v137);
        v140 = v160;
        Com_Apple_Sse_Ocean_Ndo_Api_Action.init()();
        (*(v158 + 104))(v157, enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.postFollowUp(_:), v159);
        Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.setter();
        v141 = v163;
        v123(v163, v138, v135);
        v142 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.postFollowUpData(_:);
        v143 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
        v144 = *(v143 - 8);
        (*(v144 + 104))(v141, v142, v143);
        (*(v144 + 56))(v141, 0, 1, v143);
        Com_Apple_Sse_Ocean_Ndo_Api_Action.actionData.setter();
        type metadata accessor for NDOCompositionLayer();
        sub_1000254A0(v140, sub_100058200, 0);
        sub_100003EBC(v145, v174);
        (*(v161 + 8))(v140, v162);
        v133(v138, v135);
        (*(v168 + 8))(v172, v169);
        sub_100001E74(v182);
        return (v150)(v149, v151);
      }

      else
      {
        v108 = v96;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100003EBC(v92, v93);
        v115 = v146;
        v154(v98, v153, v90);
        swift_errorRetain();
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *v118 = 138412290;
          swift_errorRetain();
          v120 = _swift_stdlib_bridgeErrorToNSError();
          *(v118 + 4) = v120;
          *v119 = v120;
          _os_log_impl(&_mh_execute_header, v116, v117, "Failed to create post follow up from debug file. Error: %@", v118, 0xCu);
          sub_1000035B8(v119, &qword_1000A6F40, &qword_10007E690);
        }

        v115(v98, v90);
        return (v150)(v71, v151);
      }
    }

    else
    {
      return (v46)(v44, v35);
    }
  }

  return result;
}

id sub_10005A880()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v1 = *(v0 - 8);
  v165 = v0;
  v166 = v1;
  v2 = __chkstk_darwin(v0);
  v160 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v167 = &v136 - v5;
  __chkstk_darwin(v4);
  v162 = &v136 - v6;
  *&v144 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse();
  v145 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for JSONDecodingOptions();
  v152 = *(v153 - 8);
  v9 = __chkstk_darwin(v153);
  v148 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v136 - v11;
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v151 = (&v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v163 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v161 = &v136 - v19;
  v20 = __chkstk_darwin(v18);
  v147 = &v136 - v21;
  v22 = __chkstk_darwin(v20);
  v146 = &v136 - v23;
  v24 = __chkstk_darwin(v22);
  v158 = &v136 - v25;
  __chkstk_darwin(v24);
  v164 = &v136 - v26;
  v27 = type metadata accessor for URL.DirectoryHint();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v136 - v37;
  __chkstk_darwin(v36);
  v40 = &v136 - v39;
  result = [objc_opt_self() isInternal];
  if (!result)
  {
    return result;
  }

  v159 = v15;
  static NDOConstants.ndoDirPath.getter();
  v171[0] = 0xD000000000000013;
  v171[1] = 0x800000010008C440;
  (*(v28 + 104))(v30, enum case for URL.DirectoryHint.inferFromPath(_:), v27);
  sub_100032090();
  URL.appending<A>(component:directoryHint:)();
  (*(v28 + 8))(v30, v27);
  v42 = *(v32 + 8);
  v42(v38, v31);
  v43 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v44 = String._bridgeToObjectiveC()();

  v45 = [v43 fileExistsAtPath:v44];

  if (!v45)
  {
    return (v42)(v40, v31);
  }

  v139 = v42;
  v140 = v32 + 8;
  v46 = sub_100049C1C();
  v47 = v159;
  v48 = *(v159 + 2);
  v49 = v164;
  v155 = v46;
  v156 = v159 + 16;
  v154 = v48;
  (v48)(v164);
  (*(v32 + 16))(v35, v40, v31);
  v50 = Logger.logObject.getter();
  v51 = v14;
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v50, v52);
  v138 = v31;
  v141 = v40;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v171[0] = v55;
    *v54 = 136315138;
    sub_10005BC2C(&qword_1000A7D70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v51;
    v59 = v58;
    v60 = v139;
    v139(v35, v31);
    v61 = sub_10001FEC8(v56, v59, v171);

    *(v54 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v50, v52, "Trying to run checkIn actions from %s", v54, 0xCu);
    sub_100001E74(v55);

    v62 = v60;
    v63 = *(v159 + 1);
    v63(v164, v57);
    v64 = v57;
  }

  else
  {

    v62 = v139;
    v139(v35, v31);
    v63 = *(v47 + 1);
    v63(v49, v51);
    v64 = v51;
  }

  v65 = Data.init(contentsOf:options:)();
  v66 = v163;
  v164 = 0;
  v72 = v65;
  v74 = v73;
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();

  v154(v158, v155, v64);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "Validating file contents", v78, 2u);
  }

  v79 = v158;
  v158 = v159 + 8;
  v63(v79, v64);
  v80 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v170[0] = 0;
  v82 = [v80 JSONObjectWithData:isa options:0 error:v170];

  v83 = v170[0];
  if (!v82)
  {
    v95 = v83;
    v96 = _convertNSErrorToError(_:)();

    v164 = v96;
    swift_willThrow();
    sub_100003EBC(v72, v74);
LABEL_8:
    v154(v66, v155, v64);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      swift_errorRetain();
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v71;
      *v70 = v71;
      _os_log_impl(&_mh_execute_header, v67, v68, "Failed to handle debug checkIn actions. Error:%@", v69, 0xCu);
      sub_1000035B8(v70, &qword_1000A6F40, &qword_10007E690);
    }

    v63(v66, v64);
    return v62(v141, v138);
  }

  v137 = v74;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v84 = v146;
  v154(v146, v155, v64);
  sub_100020798(v171, v170);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  v87 = os_log_type_enabled(v85, v86);
  v151 = v63;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v169 = v89;
    *v88 = 136315138;
    sub_100020798(v170, v168);
    v90 = String.init<A>(describing:)();
    v91 = v72;
    v93 = v92;
    sub_100001E74(v170);
    v94 = sub_10001FEC8(v90, v93, &v169);
    v72 = v91;
    v63 = v151;

    *(v88 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v85, v86, "JSON object from file data: %s", v88, 0xCu);
    sub_100001E74(v89);
  }

  else
  {

    sub_100001E74(v170);
  }

  v63(v84, v64);
  v97 = v166;
  v98 = v162;
  v99 = v152;
  v100 = v147;
  JSONDecodingOptions.init()();
  JSONDecodingOptions.ignoreUnknownFields.setter();
  v154(v100, v155, v64);
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&_mh_execute_header, v101, v102, "Attempting to construct checkIn response proto obj", v103, 2u);
    v99 = v152;
  }

  v63(v100, v64);
  (*(v99 + 16))(v148, v157, v153);
  v104 = v72;
  v105 = v72;
  v106 = v137;
  sub_100034F60(v104, v137);
  sub_10005BC2C(&qword_1000A7DA0, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);
  v107 = v149;
  v108 = v150;
  v109 = v99;
  v110 = v164;
  Message.init(jsonUTF8Data:options:)();
  v164 = v110;
  if (v110)
  {
    sub_100003EBC(v105, v106);
    (*(v109 + 8))(v157, v153);
    sub_100001E74(v171);
    v62 = v139;
    v66 = v163;
    v63 = v151;
    goto LABEL_8;
  }

  v136 = v105;
  v111 = v142;
  Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.data.getter();
  v112 = Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.actions.getter();
  (*(v143 + 8))(v111, v144);
  v113 = *(v112 + 16);
  if (v113)
  {
    v163 = type metadata accessor for NDOCompositionLayer();
    v116 = *(v97 + 16);
    v114 = v97 + 16;
    v115 = v116;
    v117 = (*(v114 + 64) + 32) & ~*(v114 + 64);
    v143 = v112;
    v118 = v112 + v117;
    v148 = *(v114 + 56);
    *&v119 = 136315138;
    v144 = v119;
    v147 = (v114 - 8);
    v146 = ((v114 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v120 = v165;
    v166 = v114;
    v121 = v167;
    v122 = v161;
    v159 = v116;
    do
    {
      v164 = v113;
      v115(v98, v118, v120);
      v154(v122, v155, v64);
      v115(v121, v98, v120);
      v124 = Logger.logObject.getter();
      v125 = v115;
      v126 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v124, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v170[0] = v128;
        *v127 = v144;
        v125(v160, v167, v120);
        v129 = v64;
        v130 = String.init<A>(describing:)();
        v132 = v131;
        v123 = *v147;
        (*v147)(v167, v165);
        v133 = sub_10001FEC8(v130, v132, v170);
        v120 = v165;

        *(v127 + 4) = v133;
        v64 = v129;
        v122 = v161;
        _os_log_impl(&_mh_execute_header, v124, v126, "Handling debug checkIn action: %s", v127, 0xCu);
        sub_100001E74(v128);
        v98 = v162;

        v121 = v167;
      }

      else
      {

        v123 = *v147;
        (*v147)(v121, v120);
      }

      v151(v122, v64);
      sub_1000254A0(v98, sub_10005820C, 0);
      v123(v98, v120);
      v118 += v148;
      v113 = v164 - 1;
      v115 = v159;
    }

    while (v164 != 1);

    v134 = v138;
    v108 = v150;
    v135 = v141;
    v107 = v149;
  }

  else
  {

    v135 = v141;
    v134 = v138;
  }

  sub_100003EBC(v136, v137);
  (*(v145 + 8))(v107, v108);
  (*(v152 + 8))(v157, v153);
  sub_100001E74(v171);
  return (v139)(v135, v134);
}

uint64_t sub_10005BC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_10005BC74@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10005BCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A73F8, &qword_10007C300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005BD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v8 = sub_100027B34(v4, qword_1000B1F40);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  swift_getOpaqueTypeConformance2();
  dispatch thunk of NDOLoader.load(with:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10005BF18()
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);

  return sub_100027B34(v0, qword_1000B1F40);
}

uint64_t sub_10005BF88(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, void *a2), uint64_t))
{
  v4 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_100063380(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000035B8(v6, &unk_1000A7EA0, &qword_10007F110);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v13, v6, v7);
    v16(v11, v13, v7);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v16((v15 + v17), v11, v7);
    v14 = sub_10004F4FC;
  }

  a2(v14, v15);
  return sub_100003430(v14, v15);
}

uint64_t sub_10005C1A4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  result = sub_100027E88(0, &qword_1000A7E98, NSUserDefaults_ptr);
  qword_1000B1E88 = result;
  unk_1000B1E90 = &protocol witness table for NSUserDefaults;
  qword_1000B1E98 = &protocol witness table for NSUserDefaults;
  qword_1000B1E70[0] = v0;
  return result;
}

uint64_t *sub_10005C220()
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  return qword_1000B1E70;
}

uint64_t sub_10005C270@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_10001EC4C(qword_1000B1E70, a1);
}

uint64_t sub_10005C2F0(uint64_t *a1)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10005D210(qword_1000B1E70, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_10005C380(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_10005C408(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100049C1C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CompositionLayer. Creating URL session client", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() defaultSessionConfiguration];
  [v10 setURLCache:0];
  [v10 setURLCredentialStorage:0];
  [v10 setHTTPCookieStorage:0];
  [v10 setRequestCachePolicy:1];
  [v10 set_alternativeServicesStorage:0];
  v11 = [objc_opt_self() sessionWithConfiguration:v10];
  v12 = type metadata accessor for NDOURLSessionClient();
  swift_allocObject();
  v13 = v11;
  v14 = NDOURLSessionClient.init(session:)();
  a1[3] = v12;
  a1[4] = &protocol witness table for NDOURLSessionClient;

  *a1 = v14;
}

uint64_t *sub_10005C67C()
{
  if (qword_1000B0468 != -1)
  {
    swift_once();
  }

  return qword_1000B1EA0;
}

uint64_t (*sub_10005C714(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005C79C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100049C1C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CompositionLayer. Creating URL client", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_1000B0468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EA0, v12);
  v10 = type metadata accessor for NDOAppleAccountSignedInUrlClient();
  swift_allocObject();
  result = NDOAppleAccountSignedInUrlClient.init(_:isSignedIn:)();
  a1[3] = v10;
  a1[4] = &protocol witness table for NDOAppleAccountSignedInUrlClient;
  *a1 = result;
  return result;
}

uint64_t *sub_10005C9F4()
{
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  return qword_1000B1EC8;
}

uint64_t sub_10005CA68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(a2, a4);
}

uint64_t sub_10005CAF0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000492B8(a3, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_10005CB68(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005CBF0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v8);
  static NDOConstants.localPlistURL.getter();
  sub_100001E10(qword_1000B1EC8, v6);
  v4 = sub_10006207C(v3, v6);
  sub_100001E74(v6);
  (*(v1 + 8))(v3, v0);
  v7[3] = type metadata accessor for NDOPostProcessingURLClient();
  v7[4] = &protocol witness table for NDOPostProcessingURLClient;
  v7[0] = v4;
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v6);
  sub_1000207F8(v8, v7, v6, qword_1000B1EF0);
  sub_100001E74(v6);
  sub_100001E74(v8);
  return sub_100001E74(v7);
}

uint64_t *sub_10005CDD0()
{
  if (qword_1000B0478 != -1)
  {
    swift_once();
  }

  return qword_1000B1EF0;
}

uint64_t (*sub_10005CE68(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0478 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005CEF0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NDOConstants.localPlistURL.getter();
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v7);
  v4 = sub_10006207C(v3, v7);
  sub_100001E74(v7);
  (*(v1 + 8))(v3, v0);
  v8[3] = type metadata accessor for NDOPostProcessingURLClient();
  v8[4] = &protocol witness table for NDOPostProcessingURLClient;
  v8[0] = v4;
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v7);
  sub_100020BC4(v8, v7, qword_1000B1F18);
  sub_100001E74(v7);
  return sub_100001E74(v8);
}

uint64_t *sub_10005D0B8()
{
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  return qword_1000B1F18;
}

uint64_t (*sub_10005D150(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_10005D210(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      result[5] = a2[5];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10005D434@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16[-1] - v7;
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v18);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = *&qword_1000B1E88;
  v9 = qword_1000B1E88;
  v10 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v17 = v15;
  v11 = sub_100027B84(v16);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_100065A20(v16);
  sub_100001E74(v16);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  (*(v3 + 16))(v6, v8, v2);
  v12 = type metadata accessor for NDORequestPayloadProvider();
  swift_allocObject();
  v13 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  a1[3] = v12;
  a1[4] = &protocol witness table for NDORequestPayloadProvider;
  *a1 = v13;
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10005D718@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v3 = sub_100027B34(v2, qword_1000B1F40);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10005D7E4(uint64_t a1)
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v3 = sub_100027B34(v2, qword_1000B1F40);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_10005D8E4(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v1 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  sub_100027B34(v1, qword_1000B1F40);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005D9B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void *, void *, void *, uint64_t *))
{
  v29 = a5;
  v28 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v8 = *(v28 - 8);
  v9 = __chkstk_darwin(v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001A078(a2, a3);
  sub_100027DE0(v18, a4);
  sub_100027B34(v18, a4);
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1F18, v35);
  static NDOConstants.localConfigURL.getter();
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v33);
  v19 = sub_10006207C(v17, v33);
  sub_100001E74(v33);
  (*(v15 + 8))(v17, v14);
  v34[3] = type metadata accessor for NDOPostProcessingURLClient();
  v34[4] = &protocol witness table for NDOPostProcessingURLClient;
  v34[0] = v19;
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v33);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v32);
  v27 = *&qword_1000B1E88;
  v20 = qword_1000B1E88;
  v21 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v31 = v27;
  v22 = sub_100027B84(v30);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  sub_100065A20(v30);
  sub_100001E74(v30);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  v23 = v28;
  (*(v8 + 16))(v11, v13, v28);
  v24 = type metadata accessor for NDORequestPayloadProvider();
  swift_allocObject();
  v25 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  v32[3] = v24;
  v32[4] = &protocol witness table for NDORequestPayloadProvider;
  v32[0] = v25;
  (*(v8 + 8))(v13, v23);
  v29(v35, v34, v33, v32);
  sub_100001E74(v33);
  sub_100001E74(v35);
  sub_100001E74(v32);
  return sub_100001E74(v34);
}

uint64_t sub_10005DEA0()
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v0 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);

  return sub_100027B34(v0, qword_1000B1F58);
}

uint64_t sub_10005DF10@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);
  v3 = sub_100027B34(v2, qword_1000B1F58);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10005DFDC(uint64_t a1)
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);
  v3 = sub_100027B34(v2, qword_1000B1F58);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_10005E0DC(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v1 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);
  sub_100027B34(v1, qword_1000B1F58);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005E17C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100049C1C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v7;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Making device list loader", v15, 2u);
    v7 = v23;
  }

  (*(v9 + 8))(v11, v8);
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v16 = sub_100027B34(v4, qword_1000B1F40);
  swift_beginAccess();
  v17 = *(v5 + 16);
  v17(v7, v16, v4);
  *(swift_allocObject() + 16) = v2;
  v24[3] = v4;
  v24[4] = swift_getOpaqueTypeConformance2();
  v18 = sub_100027B84(v24);
  v17(v18, v7, v4);
  v19 = type metadata accessor for DeviceListLoader();
  swift_allocObject();

  v20 = DeviceListLoader.init(configLoader:deviceListLoaderProvider:)();
  a1[3] = v19;
  a1[4] = &protocol witness table for DeviceListLoader;

  *a1 = v20;
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10005E4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v33 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v3 = *(v33 - 8);
  v4 = __chkstk_darwin(v33);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NDODeviceListRequestGenerator(0);
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(&v37);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = *&qword_1000B1E88;
  v19 = qword_1000B1E88;
  v20 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v36 = v31;
  v21 = sub_100027B84(v35);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_100065A20(v35);
  sub_100001E74(v35);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  v22 = v33;
  (*(v3 + 16))(v6, v8, v33);
  v23 = type metadata accessor for NDORequestPayloadProvider();
  swift_allocObject();
  v24 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  v38 = v23;
  v39 = &protocol witness table for NDORequestPayloadProvider;
  *&v37 = v24;
  (*(v3 + 8))(v8, v22);
  NDODeviceListRequestGenerator.init(deviceListURL:payloadProvider:)(v12, &v37, v18);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, &v37);
  sub_100063194(v18, v16);
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = swift_allocObject();
  sub_1000631F8(v16, v26 + v25);
  v27 = sub_10001A078(&qword_1000A7E78, &unk_100081180);
  swift_allocObject();
  v28 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v29 = v34;
  v34[3] = v27;
  v29[4] = sub_1000632C0();
  *v29 = v28;
  return sub_100063324(v18);
}

uint64_t *sub_10005EA4C()
{
  if (qword_1000B0498 != -1)
  {
    swift_once();
  }

  return qword_1000B1F70;
}

uint64_t (*sub_10005EAE4(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B0498 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_10005EB6C()
{
  v0 = objc_allocWithZone(FLFollowUpController);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithClientIdentifier:v1];

  qword_1000B1F98 = v2;
}

uint64_t *sub_10005EBDC()
{
  if (qword_1000B04A0 != -1)
  {
    swift_once();
  }

  return &qword_1000B1F98;
}

uint64_t sub_10005EC2C()
{
  if (qword_1000B04A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B1F98;
  v1 = qword_1000B1F98;
  return v0;
}

uint64_t sub_10005EC88()
{
  v0 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_10001A078(&unk_1000A7DD0, &unk_1000810F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v7 = sub_100027B34(v0, qword_1000B1F40);
  swift_beginAccess();
  (*(v1 + 16))(v3, v7, v0);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of NDOConfigMemCache.getLastLoadedConfig()();
  (*(v1 + 8))(v3, v0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1000035B8(v6, &unk_1000A7DD0, &unk_1000810F0);
    return 0;
  }

  else
  {
    v11 = Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.getter();
    (*(v9 + 8))(v6, v8);
    return v11;
  }
}

uint64_t *sub_10005EF54()
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  return &qword_1000B1FD0;
}

double sub_10005EFA4(void *a1, char a2)
{
  v3 = [objc_opt_self() makePropertiesProvider];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  [a1 addValue:v4 forHTTPHeaderField:v5];

  v6 = [v3 basicHeadersWithBundleID:0];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005F3B0(v7);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addAllHeadersFrom:isa];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v3 OASHeadersWithOfferID:v9 serialNumber:0 primarySerialNumber:0 currentStoreLocaleHeader:0];

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10005F3B0(v11);

  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addAllHeadersFrom:v12];

  v13 = [v3 accountHeadersFor:a1 forceReprovisioning:a2 & 1 avoidUI:1];
  if (v13)
  {
    v14 = v13;
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = sub_100001F80(_swiftEmptyArrayStorage);
  }

  sub_10005F3B0(v15);

  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addAllHeadersFrom:v16];

  v17 = [a1 HTTPBody];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = Data._bridgeToObjectiveC()().super.isa;
    v23 = [v3 signatureHeadersForBody:v22];

    if (v23)
    {
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10005F3B0(v24);

      v23 = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    [a1 addAllHeadersFrom:v23];

    swift_unknownObjectRelease();

    sub_100003EBC(v19, v21);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005F3B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001A078(&qword_1000A7E90, &qword_100081190);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100027ED0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100027ED0(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100027ED0(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10005F678(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100063404;

  return sub_1000626A0(a1, a2);
}

uint64_t sub_10005F72C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100049C1C();
  (*(v5 + 16))(v7, v8, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "CompositionLayer. Composing checkIn handler with plist killswitch check", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *(swift_allocObject() + 16) = v2;
  sub_10005F9B8(v15);
  v12 = type metadata accessor for NDOConditionalCheckInHandler();
  swift_allocObject();
  result = NDOConditionalCheckInHandler.init(isDisabled:handler:)();
  a1[3] = v12;
  a1[4] = &protocol witness table for NDOConditionalCheckInHandler;
  *a1 = result;
  return result;
}

uint64_t sub_10005F904(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000485F4;

  return sub_1000626A0(a1, a2);
}

uint64_t sub_10005F9B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28[-2] - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100049C1C();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v27 = v8;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "CompositionLayer. Creating config loading check in handler", v16, 2u);
    v8 = v27;
  }

  (*(v10 + 8))(v12, v9);
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v17 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v18 = sub_100027B34(v17, qword_1000B1F40);
  swift_beginAccess();
  v32[3] = v17;
  v32[4] = swift_getOpaqueTypeConformance2();
  v19 = sub_100027B84(v32);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v31);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v30);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = *&qword_1000B1E88;
  v20 = qword_1000B1E88;
  v21 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v29 = v27;
  v22 = sub_100027B84(v28);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  sub_100065A20(v28);
  sub_100001E74(v28);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  (*(v3 + 16))(v6, v8, v2);
  v23 = type metadata accessor for NDORequestPayloadProvider();
  swift_allocObject();
  v24 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  v30[3] = v23;
  v30[4] = &protocol witness table for NDORequestPayloadProvider;
  v30[0] = v24;
  (*(v3 + 8))(v8, v2);
  v25 = type metadata accessor for NDOConfigLoadingCheckInHandler();
  swift_allocObject();
  result = NDOConfigLoadingCheckInHandler.init(configLoader:client:payloadProvider:)();
  a1[3] = v25;
  a1[4] = &protocol witness table for NDOConfigLoadingCheckInHandler;
  *a1 = result;
  return result;
}

uint64_t sub_10005FF58()
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(&qword_1000B1FA8, v2);
  v0 = sub_100062DA0(v2);
  result = sub_100001E74(v2);
  qword_1000B1FA0 = v0;
  return result;
}

uint64_t sub_10005FFF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(&qword_1000B1FA8, a1);
}

uint64_t *sub_100060074()
{
  if (qword_1000B04A8 != -1)
  {
    swift_once();
  }

  return &qword_1000B1FA0;
}

uint64_t (*sub_100060208(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B04A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_100060290()
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  return &qword_1000B1FA8;
}

uint64_t sub_1000602E0()
{
  v0 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v19[-2] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19[-2] - v5;
  v7 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-2] - v9;
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v11 = sub_100027B34(v7, qword_1000B1F40);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v23);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v22);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v21);
  v18 = *&qword_1000B1E88;
  v12 = qword_1000B1E88;
  v13 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v20 = v18;
  v14 = sub_100027B84(v19);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  sub_100065A20(v19);
  sub_100001E74(v19);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for NDORequestPayloadProvider();
  swift_allocObject();
  v15 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  (*(v1 + 8))(v6, v0);
  v16 = sub_100061D44(v10, v23, v22, v15);
  sub_100001E74(v22);
  sub_100001E74(v23);

  (*(v8 + 8))(v10, v7);
  result = type metadata accessor for NDOAckHandler();
  qword_1000B1FC0 = result;
  unk_1000B1FC8 = &protocol witness table for NDOAckHandler;
  qword_1000B1FA8 = v16;
  return result;
}

uint64_t sub_100060784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_100001F3C(a1, v8);

  return sub_1000616D0(v10, a2, a3, a4, v4, v8, v9);
}

uint64_t (*sub_100060838(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1000608C0()
{
  type metadata accessor for NDOCompositionLayer();
  result = sub_10006CBF4();
  qword_1000B1FD0 = result;
  return result;
}

id sub_100060914(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_1000609A0(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*sub_100060A08(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_100060AC0()
{
  if (qword_1000B04C0 != -1)
  {
    swift_once();
  }

  return qword_1000B1FD8;
}

uint64_t (*sub_100060B58(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B04C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100060BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100060C6C;

  return sub_1000624BC();
}

uint64_t sub_100060C6C(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_1000633F8, 0, 0);
}

uint64_t static NDOCompositionLayer.registerBackgroundCheckInTasks(with:)(uint64_t a1)
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1000B1FD0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = *((swift_isaMask & *v3) + 0x78);
  swift_unknownObjectRetain_n();
  v7 = v3;
  v6(sub_100062F20, v4, sub_100062F28, v5);
}

uint64_t sub_100060EC0(uint64_t a1, void *a2)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v4);
  sub_10006CD0C(a2, v4, j___s10Foundation4DateVACycfC, 0, sub_1000633F4, 0);
  return sub_100001E74(v4);
}

void *static NDOCompositionLayer.makePushHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100049C1C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CompositionLayer. Creating push handler", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for NDOAppleCareNotificationsHandler();
  if (qword_1000B04C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1FD8, v19);
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(&qword_1000B1FA8, v18);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = sub_10003FE98();
  v14 = v13;
  v15 = sub_10001EFF8();
  return sub_10003FF24(v19, v18, sub_100062F50, v10, v12, v14, v15, v16, sub_100061FB4, 0, &unk_100081138, v11);
}

uint64_t sub_1000613CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100061458;

  return sub_1000624BC();
}

uint64_t sub_100061458(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100061558, 0, 0);
}

uint64_t sub_100061558()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    NSDictionary.checkInRetryDelay.getter();
    v3 = v2;

    v4.n128_u64[0] = v3;
  }

  else
  {
    sub_100027E88(0, &qword_1000A7950, NSDictionary_ptr);
    static NSDictionary.defaultCheckInRetryDelay.getter();
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

id NDOCompositionLayer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOCompositionLayer();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOCompositionLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOCompositionLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000616D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28[3] = a6;
  v28[4] = a7;
  v17 = sub_100027B84(v28);
  (*(*(a6 - 8) + 16))(v17, a1, a6);
  v18 = sub_100049C1C();
  (*(v14 + 16))(v16, v18, v13);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Creating ack handler", v21, 2u);
  }

  (*(v14 + 8))(v16, v13);
  type metadata accessor for NDOAckHandler();
  sub_100001E10(v28, v27);
  sub_100001E10(a2, v26);
  sub_10001EC4C(a3, v25);
  sub_100001E10(a4, v24);
  v22 = NDOAckHandler.__allocating_init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)();
  sub_100001E74(v28);
  return v22;
}

uint64_t sub_1000618E8()
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *((swift_isaMask & *qword_1000B1FD0) + 0x80);
  v1 = qword_1000B1FD0;
  v2 = v0();

  return v2;
}

uint64_t sub_1000619B4(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1F18, v9);
  sub_100001F3C(v9, v9[3]);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v9);
}

uint64_t sub_100061B7C(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  if (qword_1000B0478 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EF0, v9);
  sub_100001F3C(v9, v9[3]);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v9);
}

uint64_t sub_100061D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v26[3] = type metadata accessor for NDORequestPayloadProvider();
  v26[4] = &protocol witness table for NDORequestPayloadProvider;
  v26[0] = a4;
  v12 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v25[3] = v12;
  v25[4] = swift_getOpaqueTypeConformance2();
  v13 = sub_100027B84(v25);
  (*(*(v12 - 8) + 16))(v13, a1, v12);

  v14 = sub_100049C1C();
  (*(v9 + 16))(v11, v14, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating ack handler", v17, 2u);
  }

  (*(v9 + 8))(v11, v8);
  type metadata accessor for NDOAckHandler();
  sub_100001E10(v25, v24);
  sub_100001E10(a2, v23);
  sub_10001EC4C(a3, v22);
  sub_100001E10(v26, v21);
  v18 = NDOAckHandler.__allocating_init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)();
  sub_100001E74(v25);
  sub_100001E74(v26);
  return v18;
}

void sub_100061FB8(uint64_t a1)
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *((swift_isaMask & *qword_1000B1FD0) + 0x88);
  v3 = qword_1000B1FD0;
  v2(a1);
}

uint64_t sub_10006207C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_100049C1C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CompositionLayer. Creating caching post URL client", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_100001E10(a2, v13);
  static NDOClientPostProcessor.saveDataToUrl(_:)();
  type metadata accessor for NDOPostProcessingURLClient();
  swift_allocObject();
  return NDOPostProcessingURLClient.init(internalClient:postProcessor:)();
}

uint64_t sub_10006222C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = sub_10001A078(&qword_1000A7A88, &unk_10007F050);
  *v1 = v0;
  v1[1] = sub_100062314;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000010, 0x800000010008C590, sub_1000619B4, 0, v2);
}

uint64_t sub_100062314()
{

  return _swift_task_switch(sub_100062410, 0, 0);
}

uint64_t sub_100062410()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    *(v0 + 32) = v1;
    v2 = v1;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    sub_1000496C8(v2, 1);
    v1 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1000624BC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = sub_10001A078(&qword_1000A7A88, &unk_10007F050);
  *v1 = v0;
  v1[1] = sub_1000625A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x7473696C50746567, 0xEA00000000002928, sub_100061B7C, 0, v2);
}

uint64_t sub_1000625A4()
{

  return _swift_task_switch(sub_1000633F0, 0, 0);
}

uint64_t sub_1000626A0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[15] = v5;
  *v5 = v2;
  v5[1] = sub_100062800;

  return sub_10006222C();
}

uint64_t sub_100062800(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100062900, 0, 0);
}

uint64_t sub_100062900()
{
  v40 = v0;
  v1 = *(v0 + 128);
  if (!v1 || (v2 = v1, v3 = NSDictionary.checkInDisabled.getter(), v2, (v3 & 1) != 0))
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = sub_100049C1C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Check in disabled, scheduling a future attempt", v10, 2u);
    }

    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    (*(v12 + 8))(v11, v13);
    if (qword_1000B04B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_1000B1FD0;
    Date.init()();
    if (v1)
    {
      v15 = *(v0 + 128);
      NSDictionary.checkInRetryDelay.getter();
    }

    else
    {
      sub_100027E88(0, &qword_1000A7950, NSDictionary_ptr);
      static NSDictionary.defaultCheckInRetryDelay.getter();
      v15 = 0;
    }

    v30 = *(v0 + 72);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);
    v33 = *(v0 + 64);
    Date.addingTimeInterval(_:)();
    v34 = *(v33 + 8);
    v34(v30, v32);
    (*((swift_isaMask & *v14) + 0x88))(v31);

    v34(v31, v32);
    goto LABEL_14;
  }

  if (NSDictionary.checkInTriggerDisabled(_:)(*(v0 + 40)))
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = sub_100049C1C();
    (*(v18 + 16))(v16, v19, v17);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    if (v22)
    {
      v38 = *(v0 + 112);
      v27 = *(v0 + 40);
      v26 = *(v0 + 48);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10001FEC8(v27, v26, &v39);
      _os_log_impl(&_mh_execute_header, v20, v21, "Check in disabled for trigger %s", v28, 0xCu);
      sub_100001E74(v29);

      (*(v24 + 8))(v38, v25);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

LABEL_14:
    v35 = 1;
    goto LABEL_15;
  }

  v35 = 0;
LABEL_15:

  v36 = *(v0 + 8);

  return v36(v35);
}

uint64_t sub_100062D04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000485F4;

  return sub_10005F904(a1, a2);
}

void *sub_100062DA0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100049C1C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating UI action handler", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for NDOUIActionHandler();
  sub_100001E10(a1, v12);
  return sub_100067018(v12);
}

uint64_t sub_100062F74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100063000;

  return sub_1000613CC();
}

uint64_t sub_100063000(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_1000630FC()
{
  v1 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100063194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDODeviceListRequestGenerator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000631F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDODeviceListRequestGenerator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000632C0()
{
  result = qword_1000A7E80;
  if (!qword_1000A7E80)
  {
    sub_10001EFA0(&qword_1000A7E78, &unk_100081180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7E80);
  }

  return result;
}

uint64_t sub_100063324(uint64_t a1)
{
  v2 = type metadata accessor for NDODeviceListRequestGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063380(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 NDODWPromoModel.init(title:subtitle:buttonTitle:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  *(a8 + 80) = *(a7 + 32);
  return result;
}

uint64_t sub_100063438()
{
  v1 = 0x656C746974;
  v2 = 0x69546E6F74747562;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_1000634B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100063B48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000634DC(uint64_t a1)
{
  v2 = sub_100063D74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063518(uint64_t a1)
{
  v2 = sub_100063D74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWPromoModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7EB0, &qword_100081198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_100063D74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v14 = *(v3 + 80);
    v11[15] = 3;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NDODWPromoModel.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int NDODWPromoModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double NDODWPromoModel.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100063DC8(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

Swift::Int sub_1000638B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100063970(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100063A10(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100063ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8ndoagent15NDODWPromoModelV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_100063B48(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t _s8ndoagent15NDODWPromoModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v6 = *(a1 + 4);
    v12[0] = *(a1 + 3);
    v12[1] = v6;
    v13 = *(a1 + 80);
    v7 = *(a2 + 64);
    v10[0] = *(a2 + 48);
    v10[1] = v7;
    v11 = *(a2 + 80);
    v8 = static NDOAction.__derived_enum_equals(_:_:)(v12, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_100063D74()
{
  result = qword_1000B04D0[0];
  if (!qword_1000B04D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B04D0);
  }

  return result;
}

uint64_t sub_100063DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7EC0, &qword_100081500);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_100063D74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v38[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v10;
  LOBYTE(v38[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v12;
  v28 = v11;
  LOBYTE(v38[0]) = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v13;
  v44 = 3;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v25 = *(&v40 + 1);
  v26 = v40;
  v23 = *(&v41 + 1);
  v24 = v41;
  v43 = v42;
  *&v32 = v9;
  v14 = v31;
  *(&v32 + 1) = v31;
  v15 = v28;
  *&v33 = v28;
  v16 = v30;
  *(&v33 + 1) = v30;
  v17 = v27;
  *&v34 = v27;
  v18 = v29;
  *(&v34 + 1) = v29;
  v35 = v40;
  v36 = v41;
  v37 = v42;
  sub_1000643F0(&v32, v38);
  sub_100001E74(a1);
  v38[0] = v9;
  v38[1] = v14;
  v38[2] = v15;
  v38[3] = v16;
  v38[4] = v17;
  v38[5] = v18;
  v38[6] = v26;
  v38[7] = v25;
  v38[8] = v24;
  v38[9] = v23;
  v39 = v43;
  result = sub_100064428(v38);
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  return result;
}

unint64_t sub_1000641B0()
{
  result = qword_1000A7EB8;
  if (!qword_1000A7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7EB8);
  }

  return result;
}

__n128 sub_100064204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100064228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100064270(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000642EC()
{
  result = qword_1000B07E0[0];
  if (!qword_1000B07E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B07E0);
  }

  return result;
}

unint64_t sub_100064344()
{
  result = qword_1000B08F0;
  if (!qword_1000B08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B08F0);
  }

  return result;
}

unint64_t sub_10006439C()
{
  result = qword_1000B08F8[0];
  if (!qword_1000B08F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B08F8);
  }

  return result;
}

uint64_t sub_100064464@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for TimeZone();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v54 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001A078(&qword_1000A7EC8, &qword_100081508);
  __chkstk_darwin(v3 - 8);
  v51 = v44 - v4;
  v5 = type metadata accessor for Locale.Language();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Locale();
  v8 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v44 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v49 = v23;
  v50 = v22;
  (*(v19 + 8))(v21, v18);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v25 = v24;
  v26 = v24;
  v27 = *(v15 + 8);
  v52 = v15 + 8;
  v53 = v14;
  result = v27(v17, v14);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v45 = v27;
  v29 = objc_opt_self();
  v30 = [v29 preferredLanguages];
  v44[2] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [v29 currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.language.getter();
  v32 = *(v8 + 8);
  v33 = v13;
  v34 = v48;
  v32(v33, v48);
  v35 = Locale.Language.maximalIdentifier.getter();
  v44[0] = v36;
  v44[1] = v35;
  (*(v46 + 8))(v7, v47);
  v37 = [v29 currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v51;
  Locale.region.getter();
  v32(v11, v34);
  v39 = type metadata accessor for Locale.Region();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_1000035B8(v38, &qword_1000A7EC8, &qword_100081508);
  }

  else
  {
    Locale.Region.identifier.getter();
    (*(v40 + 8))(v38, v39);
  }

  v41 = [objc_opt_self() localTimeZone];
  v42 = v54;
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  v43 = TimeZone.secondsFromGMT(for:)();
  v45(v17, v53);
  (*(v55 + 8))(v42, v56);
  v58 = v43 / 3600;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000662A4();
  return RequestMetaData.init(requestID:requestEpoch:preferredLanguages:deviceLanguage:deviceRegion:deviceTimezone:closestCity:storefrontCountry:)();
}

void sub_100064AB8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 appleID];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v8 = [v12 aida_dsid];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v10 = [v12 aida_alternateDSID];
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UserInfo.init(iTunesAppleId:iTunesDSID:iTunesAltDSID:)();

    v7 = v12;
  }

  else
  {
    v6 = type metadata accessor for UserInfo();
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
    v7 = v2;
  }
}

void *sub_100064C6C()
{
  v0 = type metadata accessor for Logger();
  v124 = *(v0 - 8);
  v125 = v0;
  __chkstk_darwin(v0);
  v2 = &v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WarrantyHashInfo();
  v4 = *(v3 - 8);
  v122 = v3;
  v123 = v4;
  __chkstk_darwin(v3);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONDecodingOptions();
  __chkstk_darwin(v6 - 8);
  v100 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A078(&qword_1000A71A0, qword_10007B370);
  __chkstk_darwin(v8 - 8);
  v10 = &v94 - v9;
  v120 = type metadata accessor for URL.DirectoryHint();
  v127 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001A078(&qword_1000A7ED0, &unk_100081510);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v94 - v15;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v126 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v121 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v117 = &v94 - v20;
  v21 = __chkstk_darwin(v19);
  v96 = &v94 - v22;
  __chkstk_darwin(v21);
  v103 = &v94 - v23;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v98 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v94 - v29;
  __chkstk_darwin(v28);
  v32 = &v94 - v31;
  v33 = [objc_opt_self() defaultManager];
  static NDOConstants.deviceCoverageCacheDirPath.getter();
  URL.path.getter();
  v34 = *(v25 + 8);
  v115 = v32;
  v116 = v24;
  v113 = v34;
  v114 = v25 + 8;
  v34(v32, v24);
  v35 = String._bridgeToObjectiveC()();

  v129[0] = 0;
  v36 = [v33 contentsOfDirectoryAtPath:v35 error:v129];

  v37 = v129[0];
  if (!v36)
  {
    v86 = v129[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v87 = sub_100049C1C();
    v89 = v124;
    v88 = v125;
    (*(v124 + 16))(v2, v87, v125);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unable to read contents of device coverage cached directory path", v92, 2u);
    }

    (*(v89 + 8))(v2, v88);
    return _swiftEmptyArrayStorage;
  }

  v112 = v30;
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v37;

  v40 = v38;
  v41 = *(v38 + 16);
  v42 = _swiftEmptyArrayStorage;
  v128 = v16;
  v111 = v41;
  if (v41)
  {
    v102 = v10;
    v43 = 0;
    v109 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v108 = (v127 + 13);
    v107 = (v127 + 1);
    v101 = (v25 + 48);
    v124 = v126 + 32;
    v125 = (v126 + 56);
    v94 = (v126 + 8);
    v106 = (v126 + 48);
    v44 = (v38 + 40);
    v110 = v38;
    do
    {
      if (v43 >= *(v40 + 16))
      {
        __break(1u);
      }

      v127 = v42;
      v46 = *(v44 - 1);
      v45 = *v44;

      v47 = v115;
      static NDOConstants.deviceCoverageCacheDirPath.getter();
      v129[0] = v46;
      v129[1] = v45;
      v49 = v119;
      v48 = v120;
      (*v108)(v119, v109, v120);
      sub_100032090();
      v50 = v112;
      URL.appending<A>(path:directoryHint:)();
      v51 = v116;
      (*v107)(v49, v48);
      v52 = v113;
      v113(v47, v51);
      v104 = Data.init(contentsOf:options:)();
      v105 = v53;
      v52(v50, v51);
      v54 = v102;
      URL.init(string:)();
      if ((*v101)(v54, 1, v51) == 1)
      {
        sub_100003EBC(v104, v105);
        sub_1000035B8(v54, &qword_1000A71A0, qword_10007B370);
        v42 = v127;
        v55 = v128;
      }

      else
      {
        v61 = v98;
        URL.deletingPathExtension()();
        v52(v54, v51);
        v97 = URL.lastPathComponent.getter();
        v63 = v62;
        v52(v61, v51);
        sub_100034F60(v104, v105);
        JSONDecodingOptions.init()();
        sub_1000024F8();
        v64 = v99;
        v65 = v128;
        Message.init(jsonUTF8Data:options:)();
        v66 = *v125;
        (*v125)(v64, 0, 1, v65);
        v67 = v65;
        v68 = *v124;
        (*v124)(v96, v64, v67);
        v69 = Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter();
        v71 = v63;
        v42 = v127;
        if (v69 == v97 && v70 == v71)
        {
          sub_100003EBC(v104, v105);

LABEL_20:
          v73 = v66;
          v56 = v118;
          v74 = v128;
          v68(v118, v96, v128);
          v55 = v74;
          v73(v56, 0, 1, v74);
          goto LABEL_10;
        }

        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100003EBC(v104, v105);

        if (v72)
        {
          goto LABEL_20;
        }

        v55 = v128;
        (*v94)(v96, v128);
      }

      v56 = v118;
      (*v125)(v118, 1, 1, v55);
LABEL_10:

      if ((*v106)(v56, 1, v55) == 1)
      {
        sub_1000035B8(v56, &qword_1000A7ED0, &unk_100081510);
      }

      else
      {
        v57 = *v124;
        v58 = v103;
        (*v124)(v103, v56, v55);
        v57(v117, v58, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_100065CEC(0, v42[2] + 1, 1, v42);
        }

        v60 = v42[2];
        v59 = v42[3];
        if (v60 >= v59 >> 1)
        {
          v42 = sub_100065CEC((v59 > 1), v60 + 1, 1, v42);
        }

        v42[2] = v60 + 1;
        v57(v42 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v60, v117, v55);
      }

      ++v43;
      v44 += 2;
      v40 = v110;
    }

    while (v111 != v43);
  }

  v75 = v42[2];
  if (!v75)
  {

    return _swiftEmptyArrayStorage;
  }

  v129[0] = _swiftEmptyArrayStorage;
  sub_100065EC4(0, v75, 0);
  v77 = v128;
  v76 = v129[0];
  v78 = *(v126 + 16);
  v79 = *(v126 + 80);
  v126 += 16;
  v127 = v42;
  v80 = v42 + ((v79 + 32) & ~v79);
  v124 = *(v126 + 56);
  v125 = v78;
  v81 = (v126 - 8);
  v82 = v95;
  do
  {
    v83 = v121;
    (v125)(v121, v80, v77);
    Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter();
    Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageHash.getter();
    WarrantyHashInfo.init(serial:warrantyHash:)();
    (*v81)(v83, v77);
    v129[0] = v76;
    v85 = v76[2];
    v84 = v76[3];
    if (v85 >= v84 >> 1)
    {
      sub_100065EC4((v84 > 1), v85 + 1, 1);
      v82 = v95;
      v76 = v129[0];
    }

    v76[2] = v85 + 1;
    (*(v123 + 32))(v76 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v85, v82, v122);
    v80 += v124;
    --v75;
  }

  while (v75);

  return v76;
}

uint64_t (*sub_100065A20(uint64_t a1))()
{
  sub_100001E10(a1, v3);
  v1 = swift_allocObject();
  sub_100005734(v3, v1 + 16);
  return sub_100066564;
}

void *sub_100065A88(void *a1)
{
  v2 = type metadata accessor for NDOKeyValueStoreKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F3C(a1, a1[3]);
  (*(v3 + 104))(v5, enum case for NDOKeyValueStoreKey.displayedAlertsAndNotifications(_:), v2);
  v6 = dispatch thunk of NDOKeyValueStoreReader.array(for:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_100065BD8(v6);

    if (v7)
    {
      return v7;
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100065BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100033930(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100020798(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100033930((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_100065CEC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&qword_1000A7EE0, &unk_100081538);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData() - 8);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData() - 8);
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

void *sub_100065EC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100065EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100065EE4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&qword_1000A7ED8, &qword_100081530);
  v10 = *(type metadata accessor for WarrantyHashInfo() - 8);
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
  v15 = *(type metadata accessor for WarrantyHashInfo() - 8);
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

uint64_t sub_1000660BC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000035B8(v7, &qword_1000A6FD8, &unk_10007DAC0);
    return 0;
  }
}

uint64_t sub_1000661E0()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ams_storefront];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000662A4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = sub_1000660BC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_100049C1C();
    (*(v1 + 16))(v6, v11, v0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001FEC8(v9, v10, &v24);
      _os_log_impl(&_mh_execute_header, v12, v13, "Using storefront locale override:%s", v14, 0xCu);
      sub_100001E74(v15);
    }

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    v16 = sub_1000661E0();
    if (v17)
    {
      return v16;
    }

    else
    {
      v18 = sub_100049C1C();
      (*(v1 + 16))(v4, v18, v0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get itunes account storefront locale", v21, 2u);
      }

      (*(v1 + 8))(v4, v0);
      return 0;
    }
  }

  return v9;
}

uint64_t NDOLocalCoverageCentralResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOLocalCoverageCentralResponse(0) + 20);

  return sub_100024300(v3, a1);
}

uint64_t type metadata accessor for NDOLocalCoverageCentralResponse(uint64_t a1)
{
  result = qword_1000B0A90;
  if (!qword_1000B0A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(sections:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for NDOLocalCoverageCentralResponse(0) + 20);

  return sub_1000243BC(a2, v4);
}

uint64_t sub_100066658(uint64_t a1)
{
  v2 = sub_1000668D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066694(uint64_t a1)
{
  v2 = sub_1000668D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOLocalCoverageCentralResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7EE8, &qword_100081548);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_1000668D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_10001A078(&qword_1000A7B78, &qword_100081550);
  sub_100066C48(&qword_1000A7B80, sub_10004F4A8, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for NDOLocalCoverageCentralResponse(0);
    v10[6] = 1;
    type metadata accessor for Date();
    sub_100024C70(&qword_1000A72C8, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000668D0()
{
  result = qword_1000B0980[0];
  if (!qword_1000B0980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0980);
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_10001A078(&qword_1000A7EF0, &qword_100081558);
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F3C(a1, a1[3]);
  sub_1000668D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v18 = v10;
  v13 = v12;
  v14 = v20;
  sub_10001A078(&qword_1000A7B78, &qword_100081550);
  v23 = 0;
  sub_100066C48(&qword_1000A7EF8, sub_100066CC0, &protocol conformance descriptor for <A> [A]);
  v15 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v24;
  *v13 = v24;
  type metadata accessor for Date();
  v22 = 1;
  sub_100024C70(&qword_1000A72E8, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v9, v15);
  sub_1000243BC(v6, v13 + *(v18 + 20));
  sub_100066D14(v13, v19);
  sub_100001E74(a1);
  return sub_100066D78(v13);
}

uint64_t sub_100066C48(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7B78, &qword_100081550);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100066CC0()
{
  result = qword_1000A7F00;
  if (!qword_1000A7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7F00);
  }

  return result;
}

uint64_t sub_100066D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066D78(uint64_t a1)
{
  v2 = type metadata accessor for NDOLocalCoverageCentralResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100066E2C(uint64_t a1)
{
  sub_100066EB0();
  if (v1 <= 0x3F)
  {
    sub_100024EA0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100066EB0()
{
  if (!qword_1000A7F60)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A7F60);
    }
  }
}

unint64_t sub_100066F14()
{
  result = qword_1000B0BA0[0];
  if (!qword_1000B0BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0BA0);
  }

  return result;
}

unint64_t sub_100066F6C()
{
  result = qword_1000B0CB0;
  if (!qword_1000B0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0CB0);
  }

  return result;
}

unint64_t sub_100066FC4()
{
  result = qword_1000B0CB8[0];
  if (!qword_1000B0CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0CB8);
  }

  return result;
}

void *sub_100067018(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_100001E10(a1, v3 + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100001E74(a1);
  return v4;
}

void *sub_10006708C(void *a1)
{
  sub_100001E10(a1, v1 + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NDOUIActionHandler();
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_100001E74(a1);
  return v3;
}

uint64_t sub_100067110()
{
  v1 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_100041174(0, 0, v3, &unk_100081700, v5);
}

uint64_t sub_100067234()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v2 = v1[3];
  v3 = v1[4];
  sub_100001F3C(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100067300;

  return dispatch thunk of AckHandler.ack(data:)(_swiftEmptyArrayStorage, v2, v3);
}

uint64_t sub_100067300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000673F4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001D068;

  return sub_100067214(v3, v4, v5, v2);
}

uint64_t sub_100067590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A078(&qword_1000A7B58, &qword_10007F0F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  static NDOResponseMapper.DeviceList.loadLocalData()();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000035B8(v8, &qword_1000A7B58, &qword_10007F0F8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_100067D58(a1, v15, v13);
    static NDOResponseMapper.DeviceList.save(_:)();
    v16 = *(v10 + 8);
    v16(v13, v9);
    v16(v15, v9);
  }

  return sub_10006777C(a2, a3);
}

uint64_t sub_10006777C(uint64_t a1, uint64_t a2)
{
  *&v32 = a2;
  v2 = type metadata accessor for Logger();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v3 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  __chkstk_darwin(v3 - 8);
  v28 = &v26 - v4;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v27);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100054C74();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v32 = v33;
  v15 = v35;
  v31 = v34;
  (*(v6 + 104))(v8, enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.dismissCcPromo(_:), v5);

  Com_Apple_Sse_Ocean_Ndo_Api_AckData.init(userAction:additionalPayload:)();
  v16 = type metadata accessor for TaskPriority();
  v17 = v28;
  (*(*(v16 - 8) + 56))(v28, 1, 1, v16);
  v18 = v27;
  (*(v9 + 16))(v12, v14, v27);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v29;
  *(v21 + 4) = v29;
  (*(v9 + 32))(&v21[v19], v12, v18);
  v23 = &v21[v20];
  *v23 = v32;
  *(v23 + 2) = v31;
  *(v23 + 3) = v15;
  v24 = v22;
  sub_100041174(0, 0, v17, &unk_100081760, v21);

  return (*(v9 + 8))(v14, v18);
}

id sub_100067D14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOUIActionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100067D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v88 = type metadata accessor for Logger();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem();
  v6 = *(v113 - 8);
  v7 = __chkstk_darwin(v113);
  v105 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v98 = &v84 - v10;
  __chkstk_darwin(v9);
  v12 = &v84 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v111 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - v21;
  __chkstk_darwin(v20);
  v24 = &v84 - v23;
  v25 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  __chkstk_darwin(v25);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v28;
  v29 = *(v28 + 16);
  v93 = v30;
  v29(v27, a2);
  v31 = v27;
  v32 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
  v33 = *(v32 + 16);
  v97 = v27;
  v91 = v33;
  if (v33)
  {
    v34 = 0;
    v35 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v36 = v32 + v35;
    v109 = v14 + 16;
    v110 = v13;
    v114 = v6 + 16;
    v112 = (v6 + 8);
    v100 = (v14 + 8);
    v101 = a1;
    v102 = v19;
    v103 = v35;
    v107 = v6;
    v90 = v14;
    v85 = v22;
    v104 = v24;
    v99 = v32;
    v84 = v32 + v35;
    while (2)
    {
      if (v34 >= *(v32 + 16))
      {
        goto LABEL_48;
      }

      v106 = *(v14 + 72);
      v96 = v34;
      v37 = *(v14 + 16);
      v95 = v106 * v34;
      v108 = v37;
      v37(v24, v36 + v106 * v34, v13);
      v31 = v24;
      v38 = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter();
      v19 = *(v38 + 16);
      if (v19)
      {
        v115 = _swiftEmptyArrayStorage;
        sub_100068D30(0, v19, 0);
        v39 = v115;
        v40 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v89 = v38;
        v41 = v38 + v40;
        v42 = *(v6 + 72);
        v43 = *(v6 + 16);
        do
        {
          v44 = v113;
          v43(v12, v41, v113);
          v31 = v12;
          v45 = Com_Apple_Sse_Ocean_Ndo_Api_CCItem.hashValue.getter();
          (*v112)(v12, v44);
          v115 = v39;
          v47 = v39[2];
          v46 = v39[3];
          if (v47 >= v46 >> 1)
          {
            v31 = &v115;
            sub_100068D30((v46 > 1), v47 + 1, 1);
            v39 = v115;
          }

          v39[2] = v47 + 1;
          v39[v47 + 4] = v45;
          v41 += v42;
          --v19;
        }

        while (v19);

        v27 = v97;
        v13 = v110;
        a1 = v101;
        v6 = v107;
        v22 = v85;
      }

      else
      {

        v39 = _swiftEmptyArrayStorage;
      }

      v48 = v39[2];
      v49 = 4;
      while (v48)
      {
        v50 = v39[v49++];
        --v48;
        if (v50 == a1)
        {

          v19 = v100;
          v59 = *v100;
          (*v100)(v104, v13);

          v31 = v27;
          v60 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
          if (v96 >= *(v60 + 16))
          {
            goto LABEL_49;
          }

          v108(v22, v60 + v103 + v95, v13);

          v61 = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter();
          v99 = v59;
          v59(v22, v13);
          v104 = *(v61 + 16);
          if (v104)
          {
            v62 = v6;
            v63 = 0;
            v27 = (v62 + 32);
            v64 = _swiftEmptyArrayStorage;
            v19 = v113;
            v31 = v98;
            do
            {
              if (v63 >= *(v61 + 16))
              {
                __break(1u);
                goto LABEL_47;
              }

              v22 = ((*(v107 + 80) + 32) & ~*(v107 + 80));
              v65 = *(v107 + 72);
              (*(v107 + 16))(v31, &v22[v61 + v65 * v63], v19);
              if (Com_Apple_Sse_Ocean_Ndo_Api_CCItem.hashValue.getter() == a1)
              {
                (*v112)(v31, v19);
              }

              else
              {
                v66 = *v27;
                (*v27)(v105, v31, v19);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v115 = v64;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100068CEC(0, v64[2] + 1, 1);
                  v31 = v98;
                  v64 = v115;
                }

                v69 = v64[2];
                v68 = v64[3];
                if (v69 >= v68 >> 1)
                {
                  sub_100068CEC((v68 > 1), v69 + 1, 1);
                  v31 = v98;
                  v64 = v115;
                }

                v64[2] = v69 + 1;
                v19 = v113;
                v66(&v22[v64 + v69 * v65], v105, v113);
                v13 = v110;
                a1 = v101;
              }

              ++v63;
            }

            while (v104 != v63);
          }

          v27 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.modify();
          v19 = v70;
          v31 = *v70;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v19 = v31;
          v22 = v102;
          if ((result & 1) == 0)
          {
            goto LABEL_50;
          }

          while (1)
          {
            v72 = v103;
            if (v96 >= *(v31 + 16))
            {
              break;
            }

            Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.setter();
            (v27)(&v115, 0);
            v31 = v97;
            v73 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
            v27 = v73;
            v74 = *(v73 + 16);
            if (!v74)
            {
LABEL_44:

              v58 = v97;
              Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.setter();
              return (*(v92 + 32))(v94, v58, v93);
            }

            v75 = 0;
            v19 = (v73 + v72);
            v76 = (v90 + 32);
            v77 = _swiftEmptyArrayStorage;
            while (v75 < *(v27 + 2))
            {
              v108(v22, v19, v13);
              v78 = *(Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter() + 16);

              if (v78)
              {
                v79 = *v76;
                (*v76)(v111, v22, v13);
                v80 = swift_isUniquelyReferenced_nonNull_native();
                v115 = v77;
                if ((v80 & 1) == 0)
                {
                  sub_100068CA8(0, v77[2] + 1, 1);
                  v77 = v115;
                }

                v82 = v77[2];
                v81 = v77[3];
                v31 = v106;
                if (v82 >= v81 >> 1)
                {
                  sub_100068CA8((v81 > 1), v82 + 1, 1);
                  v31 = v106;
                  v77 = v115;
                }

                v77[2] = v82 + 1;
                v83 = v77 + v103 + v82 * v31;
                v13 = v110;
                v79(v83, v111, v110);
                v22 = v102;
              }

              else
              {
                v99(v22, v13);
                v31 = v106;
              }

              ++v75;
              v19 += v31;
              if (v74 == v75)
              {
                goto LABEL_44;
              }
            }

LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            result = sub_100068C94(v31);
            v31 = result;
            *v19 = result;
          }

          __break(1u);
          return result;
        }
      }

      v24 = v104;
      (*v100)(v104, v13);
      v34 = v96 + 1;
      v14 = v90;
      v32 = v99;
      v36 = v84;
      if (v96 + 1 != v91)
      {
        continue;
      }

      break;
    }
  }

  v51 = sub_100049C1C();
  v52 = v87;
  v53 = v86;
  v54 = v88;
  (*(v87 + 16))(v86, v51, v88);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Unable to find the item to dismiss", v57, 2u);
  }

  (*(v52 + 8))(v53, v54);
  v58 = v97;
  return (*(v92 + 32))(v94, v58, v93);
}

uint64_t sub_1000687F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100068820, 0, 0);
}

uint64_t sub_100068820()
{
  v1 = v0[3];
  v2 = (v0[2] + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v3 = v2[3];
  v4 = v2[4];
  sub_100001F3C(v2, v3);
  sub_10001A078(&unk_1000A7940, &qword_10007E660);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[6] = v8;
  *(v8 + 16) = xmmword_10007AE00;
  (*(v6 + 16))(v8 + v7, v1, v5);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1000689AC;
  v10 = v0[4];
  v11 = v0[5];

  return dispatch thunk of AckHandler.ack(data:urlString:)(v8, v10, v11, v3, v4);
}

uint64_t sub_1000689AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100068ABC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&qword_1000A7FC0, &qword_100081740);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection() - 8);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection() - 8);
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

void *sub_100068CA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100068E24(a1, a2, a3, *v3, &qword_1000A7FC0, &qword_100081740, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
  *v3 = result;
  return result;
}

void *sub_100068CEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100068E24(a1, a2, a3, *v3, &qword_1000A7FC8, &qword_100081748, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
  *v3 = result;
  return result;
}

char *sub_100068D30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100069000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100068D50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068D90()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C2DC;

  return sub_100067214(v3, v4, v5, v2);
}

void *sub_100068E24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100069000(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7FD0, &qword_100081750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100069104()
{
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001D068;

  return sub_1000687F8(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_100069220(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C2DC;

  return sub_1000441F4(a1, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.singularFooter.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 20));

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.pluralFooter.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 24));

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 28);

  return sub_100024300(v3, a1);
}

uint64_t sub_1000693D0()
{
  v1 = 1802398060;
  v2 = 0x6F466C6172756C70;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_10006945C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006AB58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100069484(uint64_t a1)
{
  v2 = sub_10006B1A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000694C0(uint64_t a1)
{
  v2 = sub_10006B1A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.encode(to:)(void *a1)
{
  v3 = sub_10001A078(&qword_1000A7FD8, &qword_100081788);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100001F3C(a1, a1[3]);
  sub_10006B1A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  sub_10006B1FC(&qword_1000A7FE0, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties.Link);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    type metadata accessor for Date();
    sub_10006B1FC(&qword_1000A72C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  __chkstk_darwin(v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10001A078(&qword_1000A7FE8, &qword_100081790);
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F3C(a1, a1[3]);
  sub_10006B1A8();
  v28 = v9;
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100001E74(a1);
  }

  v31 = v5;
  v14 = v12;
  v15 = v26;
  v16 = v27;
  v35 = 0;
  sub_10006B1FC(&qword_1000A7FF0, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties.Link);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10006B244(v29, v14);
  v34 = 1;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = (v14 + v10[5]);
  *v18 = v17;
  v18[1] = v19;
  v33 = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = a1;
  v22 = (v14 + v10[6]);
  *v22 = v20;
  v22[1] = v23;
  type metadata accessor for Date();
  v32 = 3;
  sub_10006B1FC(&qword_1000A72E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v28, v30);
  sub_1000243BC(v24, v14 + v10[7]);
  sub_10006B2A8(v14, v16, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_100001E74(v21);
  return sub_10006B310(v14, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
}

uint64_t sub_100069BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_10006B244(a1, a7);
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = (a7 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a7 + v13[6]);
  *v15 = a4;
  v15[1] = a5;
  v16 = a7 + v13[7];

  return sub_1000243BC(a6, v16);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.additionalHeaders.getter()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.bodyPayload.getter()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
}

unint64_t sub_100069D90()
{
  v1 = 0x6C6562616CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6C79615079646F62;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_100069E0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006B82C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100069E34(uint64_t a1)
{
  v2 = sub_10006B370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100069E70(uint64_t a1)
{
  v2 = sub_10006B370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7FF8, &unk_100081798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10006B370();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
    LOBYTE(v13) = 1;
    type metadata accessor for URL();
    sub_10006B1FC(&qword_1000A8000, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_10001A078(&unk_1000A7960, &qword_10007F360);
    sub_100054C08(&qword_1000A7C60, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for URL();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001A078(&qword_1000A8008, &qword_1000817A8);
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  __chkstk_darwin(v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100001F3C(a1, a1[3]);
  sub_10006B370();
  v21 = v7;
  v11 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_100001E74(a1);
  }

  v23 = a1;
  v13 = v19;
  v12 = v20;
  LOBYTE(v25) = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v14;
  v17[2] = v14;
  LOBYTE(v25) = 1;
  sub_10006B1FC(&qword_1000A8010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v10 + v8[5], v5, v3);
  sub_10001A078(&unk_1000A7960, &qword_10007F360);
  v24 = 2;
  v17[0] = sub_100054C08(&qword_1000A7C78, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  v17[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v23;
  *(v10 + v8[6]) = v25;
  v24 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v21, v22);
  *(v10 + v8[7]) = v25;
  sub_10006B2A8(v10, v18, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_100001E74(v15);
  return sub_10006B310(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
}

uint64_t sub_10006A59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = v10[5];
  v12 = type metadata accessor for URL();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  *&a6[v10[6]] = a4;
  *&a6[v10[7]] = a5;
  return result;
}

BOOL NDOSettingsCoverageSectionOfferProperties.isValid.getter()
{
  v1 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_100024300(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000035B8(v3, &qword_1000A72A0, &qword_10007C010);
    return 1;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    Date.timeIntervalSinceNow.getter();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    return v11 > 0.0;
  }
}

void NDOSettingsCoverageSectionOfferProperties.footer.getter()
{
  v1 = v0;
  v2 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_100024300(v1 + *(v9 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000035B8(v4, &qword_1000A72A0, &qword_10007C010);
LABEL_12:

    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  Date.timeIntervalSinceNow.getter();
  v11 = ceil(v10 / 86400.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v11 < 0)
  {
    goto LABEL_10;
  }

  if (v12 <= 1 || (v13 = (v1 + *(v9 + 24)), (v14 = v13[1]) == 0))
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_12;
  }

  v21 = *v13;
  v22 = v14;
  v20[0] = 16421;
  v20[1] = 0xE200000000000000;
  sub_100032090();
  v15 = *(StringProtocol.components<A>(separatedBy:)() + 16);

  if (v15 > 2)
  {
LABEL_10:
    (*(v6 + 8))(v8, v5);
    return;
  }

  sub_10001A078(&qword_1000A8018, &qword_1000817B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10007AE00;
  v21 = v12;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10006B3C4();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  String.init(format:_:)();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006AB58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802398060 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xEE007265746F6F46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6172756C70 && a2 == 0xEC0000007265746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
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

uint64_t _s8ndoagent41NDOSettingsCoverageSectionOfferPropertiesV4LinkV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_100051C10(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100051C10(v7, v8);
}

BOOL _s8ndoagent41NDOSettingsCoverageSectionOfferPropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_10001A078(&qword_1000A8148, &unk_100081B10);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_100051C10(*(a1 + *(v14 + 24)), *(a2 + *(v14 + 24))) & 1) == 0 || (sub_100051C10(*(a1 + *(v14 + 28)), *(a2 + *(v14 + 28))) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v16 = v15[5];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v21 = v15;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = v15[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v15;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = v15[7];
  v31 = *(v11 + 48);
  sub_100024300(a1 + v30, v13);
  sub_100024300(a2 + v30, &v13[v31]);
  v32 = *(v5 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_100024300(v13, v10);
    if (v32(&v13[v31], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v7, &v13[v31], v4);
    sub_10006B1FC(&qword_1000A8150, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v5 + 8);
    v35(v7, v4);
    v35(v10, v4);
    sub_1000035B8(v13, &qword_1000A72A0, &qword_10007C010);
    return (v34 & 1) != 0;
  }

  if (v32(&v13[v31], 1, v4) != 1)
  {
LABEL_25:
    sub_1000035B8(v13, &qword_1000A8148, &unk_100081B10);
    return 0;
  }

  sub_1000035B8(v13, &qword_1000A72A0, &qword_10007C010);
  return 1;
}

unint64_t sub_10006B1A8()
{
  result = qword_1000B0D40;
  if (!qword_1000B0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0D40);
  }

  return result;
}

uint64_t sub_10006B1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006B244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006B370()
{
  result = qword_1000B0D48[0];
  if (!qword_1000B0D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0D48);
  }

  return result;
}

unint64_t sub_10006B3C4()
{
  result = qword_1000A8020;
  if (!qword_1000A8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A8020);
  }

  return result;
}

void sub_10006B418(uint64_t a1)
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(319);
  if (v1 <= 0x3F)
  {
    sub_10006B4B4();
    if (v2 <= 0x3F)
    {
      sub_100024EA0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006B4B4()
{
  if (!qword_1000A8080)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A8080);
    }
  }
}

void sub_10006B504(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10006B598();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006B598()
{
  if (!qword_1000A8110)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A8110);
    }
  }
}

unint64_t sub_10006B620()
{
  result = qword_1000B1170[0];
  if (!qword_1000B1170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1170);
  }

  return result;
}

unint64_t sub_10006B678()
{
  result = qword_1000B1380[0];
  if (!qword_1000B1380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1380);
  }

  return result;
}

unint64_t sub_10006B6D0()
{
  result = qword_1000B1490;
  if (!qword_1000B1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1490);
  }

  return result;
}

unint64_t sub_10006B728()
{
  result = qword_1000B1498[0];
  if (!qword_1000B1498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1498);
  }

  return result;
}

unint64_t sub_10006B780()
{
  result = qword_1000B1520;
  if (!qword_1000B1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1520);
  }

  return result;
}

unint64_t sub_10006B7D8()
{
  result = qword_1000B1528[0];
  if (!qword_1000B1528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1528);
  }

  return result;
}

uint64_t sub_10006B82C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008C3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79615079646F62 && a2 == 0xEB0000000064616FLL)
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

uint64_t NDOWarrantyProperties.settingsCoverageSectionOfferProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyProperties(0) + 32);

  return sub_10006B9F0(v3, a1);
}

uint64_t sub_10006B9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006BA60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006BF78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006BA88(uint64_t a1)
{
  v2 = sub_100003D54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006BAC4(uint64_t a1)
{
  v2 = sub_100003D54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOWarrantyProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_10001A078(&qword_1000A8170, &qword_100081B30);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for NDOWarrantyProperties(0);
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F3C(a1, a1[3]);
  sub_100003D54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v21 = a1;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v29 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 1) = v16;
  v20[1] = v16;
  v28 = 1;
  v12[16] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v27 = 2;
  *(v12 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + 4) = v17;
  v26 = 3;
  *(v12 + 5) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 6) = v18;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v25 = 4;
  sub_100003E78(&qword_1000A8178, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v9, v14);
  sub_10006C4C0(v13, &v12[*(v10 + 32)]);
  sub_10001CE3C(v12, v22);
  sub_100001E74(v21);
  return sub_10006C744(v12, type metadata accessor for NDOWarrantyProperties);
}

uint64_t sub_10006BF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v10 = a9 + *(type metadata accessor for NDOWarrantyProperties(0) + 32);

  return sub_10006C4C0(a8, v10);
}

uint64_t sub_10006BF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466656854736168 && a2 == 0xEF73736F4C646E41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010008BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x800000010008C690 == a2)
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

BOOL _s8ndoagent21NDOWarrantyPropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10001A078(&qword_1000A8218, &unk_100081CF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16 || (*(a1 + 40) != *(a2 + 40) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(type metadata accessor for NDOWarrantyProperties(0) + 32);
  v18 = *(v11 + 48);
  sub_10006B9F0(a1 + v17, v13);
  sub_10006B9F0(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_10006B9F0(v13, v10);
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_10006C744(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      goto LABEL_20;
    }

    sub_10006C7A4(&v13[v18], v7);
    sub_100003E78(&qword_1000A8220, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10006C744(v7, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
    sub_10006C744(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
    sub_1000035B8(v13, &qword_1000A8158, &qword_100081B20);
    return (v20 & 1) != 0;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
LABEL_20:
    sub_1000035B8(v13, &qword_1000A8218, &unk_100081CF0);
    return 0;
  }

  sub_1000035B8(v13, &qword_1000A8158, &qword_100081B20);
  return 1;
}

uint64_t sub_10006C4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10006C530(uint64_t a1)
{
  sub_10006B4B4();
  if (v1 <= 0x3F)
  {
    sub_10006C5D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006C5D4(uint64_t a1)
{
  if (!qword_1000A81D8)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A81D8);
    }
  }
}

unint64_t sub_10006C640()
{
  result = qword_1000B1850[0];
  if (!qword_1000B1850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1850);
  }

  return result;
}

unint64_t sub_10006C698()
{
  result = qword_1000B1960;
  if (!qword_1000B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1960);
  }

  return result;
}

unint64_t sub_10006C6F0()
{
  result = qword_1000B1968[0];
  if (!qword_1000B1968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1968);
  }

  return result;
}

uint64_t sub_10006C744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006C7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10006C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = String._bridgeToObjectiveC()();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10006C8EC;
  v14[3] = &unk_10009DE20;
  v11 = _Block_copy(v14);

  v12 = [v9 registerForTaskWithIdentifier:v10 usingQueue:a3 launchHandler:v11];

  _Block_release(v11);

  return v12;
}

void sub_10006C8EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10006C954()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  return v3;
}

id sub_10006C9C8()
{
  v1 = String._bridgeToObjectiveC()();
  v5 = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10006CAA8(uint64_t a1)
{
  v4 = 0;
  if ([v1 submitTaskRequest:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10006CB54()
{
  type metadata accessor for NDOBGTaskHelper();
  v0 = [objc_opt_self() sharedScheduler];
  v5 = sub_100027E88(0, &qword_1000A8228, BGSystemTaskScheduler_ptr);
  v6 = &off_10009DDF8;
  *&v4 = v0;
  v1 = sub_10001EFF8();
  return sub_10001F018(&v4, v1, v2);
}

id sub_10006CBF4()
{
  type metadata accessor for NDOCheckInScheduler();
  type metadata accessor for NDOBGTaskHelper();
  v0 = [objc_opt_self() sharedScheduler];
  v8 = sub_100027E88(0, &qword_1000A8228, BGSystemTaskScheduler_ptr);
  v9 = &off_10009DDF8;
  *&v7 = v0;
  v1 = sub_10001EFF8();
  v3 = sub_10001F018(&v7, v1, v2);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_100027E88(0, &qword_1000A7E98, NSUserDefaults_ptr);
  v9 = &protocol witness table for NSUserDefaults;
  v10 = &protocol witness table for NSUserDefaults;
  v8 = v5;
  *&v7 = v4;
  return sub_10004F7DC(v3, &v7);
}

void sub_10006CD0C(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v54 = a6;
  v55 = a5;
  v57 = a4;
  v58 = a3;
  v61 = a1;
  v7 = type metadata accessor for Logger();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = __chkstk_darwin(v7);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v52 - v10;
  v11 = type metadata accessor for NDOKeyValueStoreKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v53 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v52 - v23;
  __chkstk_darwin(v22);
  v59 = &v52 - v25;
  sub_100001F3C(a2, a2[3]);
  (*(v12 + 104))(v14, enum case for NDOKeyValueStoreKey.nextCheckInEpoch(_:), v11);
  dispatch thunk of NDOKeyValueStoreReader.object(for:)();
  (*(v12 + 8))(v14, v11);
  if (!v64[3])
  {
    sub_1000035B8(v64, &qword_1000A6FD8, &unk_10007DAC0);
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_7;
  }

  v26 = swift_dynamicCast();
  (*(v19 + 56))(v17, v26 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_7:
    sub_1000035B8(v17, &qword_1000A72A0, &qword_10007C010);
    v32 = v62;
    v31 = v63;
    goto LABEL_8;
  }

  v27 = v59;
  v28 = (*(v19 + 32))(v59, v17, v18);
  v58(v28);
  v29 = static Date.> infix(_:_:)();
  v30 = *(v19 + 8);
  v30(v24, v18);
  v32 = v62;
  v31 = v63;
  if (v29)
  {
    v33 = sub_100049C1C();
    v34 = v56;
    (*(v32 + 16))(v56, v33, v31);
    v35 = v53;
    (*(v19 + 16))(v53, v27, v18);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v35;
      v40 = swift_slowAlloc();
      v64[0] = v40;
      *v38 = 136315138;
      sub_1000456DC();
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v30(v39, v18);
      v44 = sub_10001FEC8(v41, v43, v64);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Not running boot checkIn task, scheduling next checkIn for: %s", v38, 0xCu);
      sub_100001E74(v40);

      (*(v62 + 8))(v56, v63);
    }

    else
    {

      v30(v35, v18);
      (*(v32 + 8))(v34, v31);
    }

    v51 = v59;
    v55(v59);
    v30(v51, v18);
    return;
  }

  v30(v27, v18);
LABEL_8:
  v45 = sub_100049C1C();
  v46 = v60;
  (*(v32 + 16))(v60, v45, v31);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Running boot checkIn task due to no future scheduled check in", v49, 2u);
  }

  (*(v32 + 8))(v46, v31);
  v50 = String._bridgeToObjectiveC()();
  [v61 performCheckIn:v50 withCompletion:0];
}

void sub_10006D3C0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100049C1C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Running scheduled checkIn task", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = String._bridgeToObjectiveC()();
  [a1 performCheckIn:v10 withCompletion:0];
}

uint64_t sub_10006D558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NDODWSection.footerModels.getter()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = v2 - 88;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = (v4 + 120 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v6 + 232);
    ++v1;
    v6 += 15;
    if (v8 == 1)
    {
      v10 = *v6;
      v9 = v6[1];
      v11 = v6[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10006DEE8(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_10006DEE8((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[24 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v9;
      *(v14 + 6) = v11;
      v1 = v7;
      goto LABEL_2;
    }
  }
}

void NDODWSection.nonFooterItems.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = (v4 + 120 * v3);
      for (i = v3; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v8 = *v6;
        v9 = v6[1];
        v10 = v6[3];
        v27 = v6[2];
        v28 = v10;
        v26 = v9;
        v25 = v8;
        v11 = v6[4];
        v12 = v6[5];
        v13 = v6[6];
        v32 = *(v6 + 112);
        v30 = v12;
        v31 = v13;
        v29 = v11;
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        if (v32 != 1)
        {
          break;
        }

        v6 = (v6 + 120);
        if (v3 == v2)
        {
          return;
        }
      }

      sub_10006E008(&v25, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10006E064(0, v5[2] + 1, 1);
        v5 = v33;
      }

      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        sub_10006E064((v15 > 1), v16 + 1, 1);
        v5 = v33;
      }

      v5[2] = v16 + 1;
      v17 = &v5[15 * v16];
      v18 = v25;
      v19 = v26;
      v20 = v28;
      *(v17 + 4) = v27;
      *(v17 + 5) = v20;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      *(v17 + 144) = v32;
      *(v17 + 7) = v22;
      *(v17 + 8) = v23;
      *(v17 + 6) = v21;
    }

    while (v3 != v2);
  }
}

BOOL NDODWSection.isCoverageSection.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 144);
  return v2 == 1 && v3 == 0;
}

void __swiftcall NDODWSection.init(header:items:footer:)(ndoagent::NDODWSection *__return_ptr retstr, Swift::String_optional header, Swift::OpaquePointer items, Swift::String_optional footer)
{
  object = footer.value._object;
  countAndFlagsBits = footer.value._countAndFlagsBits;
  v7 = header.value._object;
  v8 = header.value._countAndFlagsBits;
  v10 = type metadata accessor for UUID();
  v11 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {

    v15 = v8;
    v16 = v7;
  }

  else
  {
    v36 = v8;
    v37 = 0;
    v17 = *(items._rawValue + 2);
    if (v17)
    {
      v33 = retstr;
      v34 = countAndFlagsBits;
      v35 = object;
      v40 = _swiftEmptyArrayStorage;

      sub_100033930(0, v17, 0);
      v18 = 32;
      v19 = v40;
      rawValue = items._rawValue;
      do
      {
        v20 = *(items._rawValue + v18 + 80);
        v41[4] = *(items._rawValue + v18 + 64);
        v41[5] = v20;
        v41[6] = *(items._rawValue + v18 + 96);
        v42 = *(items._rawValue + v18 + 112);
        v21 = *(items._rawValue + v18 + 16);
        v41[0] = *(items._rawValue + v18);
        v41[1] = v21;
        v22 = *(items._rawValue + v18 + 48);
        v41[2] = *(items._rawValue + v18 + 32);
        v41[3] = v22;
        sub_10006E008(v41, v39);
        v39[0] = NDODWItem.hashValue.getter();
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        sub_10006E084(v41);
        v40 = v19;
        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          sub_100033930((v26 > 1), v27 + 1, 1);
          v19 = v40;
        }

        v19[2] = v27 + 1;
        v28 = &v19[2 * v27];
        v28[4] = v23;
        v28[5] = v25;
        v18 += 120;
        --v17;
        items._rawValue = rawValue;
      }

      while (v17);

      v39[0] = v19;

      sub_100039964(v39);
      v7 = v37;

      sub_10001A078(&qword_1000A7550, &qword_10007D428);
      sub_100032104();
      v15 = BidirectionalCollection<>.joined(separator:)();
      v16 = v29;

      countAndFlagsBits = v34;
      object = v35;
      retstr = v33;
    }

    else
    {
      v35 = v11;
      v30 = v12;
      UUID.init()();
      v15 = UUID.uuidString.getter();
      v16 = v31;
      (*(v30 + 8))(v14, v35);
      v7 = v37;
    }

    v8 = v36;
  }

  retstr->id._countAndFlagsBits = v15;
  retstr->id._object = v16;
  retstr->header.value._countAndFlagsBits = v8;
  retstr->header.value._object = v7;
  retstr->footer.value._countAndFlagsBits = countAndFlagsBits;
  retstr->footer.value._object = object;
  retstr->items = items;
}

uint64_t sub_10006DB2C()
{
  v1 = 25705;
  v2 = 0x7265746F6F66;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_10006DB90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006E2A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006DBB8(uint64_t a1)
{
  v2 = sub_10006E1F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006DBF4(uint64_t a1)
{
  v2 = sub_10006E1F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A8230, &qword_100081D28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_10006E1F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_10001A078(&qword_1000A8238, &qword_100081D30);
    sub_10006E864(&qword_1000A8240, sub_10006E24C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double NDODWSection.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10006E3F0(a2, v6);
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

uint64_t sub_10006DEC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_10006DEE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A8268, qword_100081F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006E064(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006E0D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10006E0D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75B0, &unk_10007D968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10006E1F8()
{
  result = qword_1000B19F0[0];
  if (!qword_1000B19F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B19F0);
  }

  return result;
}

unint64_t sub_10006E24C()
{
  result = qword_1000A8248;
  if (!qword_1000A8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A8248);
  }

  return result;
}

uint64_t sub_10006E2A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

uint64_t sub_10006E3F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A8250, &qword_100081F30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10006E1F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v29 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v23 = v9;
  v28 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v13;
  v21 = v12;
  v27 = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v14;
  sub_10001A078(&qword_1000A8238, &qword_100081D30);
  v26 = 3;
  sub_10006E864(&qword_1000A8258, sub_10006E8DC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v25;
  v16 = v22;

  v17 = v24;

  sub_100001E74(a1);

  *a2 = v23;
  a2[1] = v11;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v16;
  a2[6] = v15;
  return result;
}

unint64_t sub_10006E760()
{
  result = qword_1000B1C80[0];
  if (!qword_1000B1C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1C80);
  }

  return result;
}

unint64_t sub_10006E7B8()
{
  result = qword_1000B1D90;
  if (!qword_1000B1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1D90);
  }

  return result;
}

unint64_t sub_10006E810()
{
  result = qword_1000B1D98[0];
  if (!qword_1000B1D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1D98);
  }

  return result;
}

uint64_t sub_10006E864(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A8238, &qword_100081D30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006E8DC()
{
  result = qword_1000A8260;
  if (!qword_1000A8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A8260);
  }

  return result;
}

id NDOPersistanceHelpers.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NDOPersistanceHelpers();
  return objc_msgSendSuper2(&v3, "init");
}

id NDOPersistanceHelpers.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NDOPersistanceHelpers();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006EF40()
{
  type metadata accessor for NDOCompositionLayer();
  v0 = sub_10005BF18();
  swift_beginAccess();
  v1 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v4[3] = v1;
  v4[4] = swift_getOpaqueTypeConformance2();
  v2 = sub_100027B84(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  sub_10006F01C(v4, qword_1000B2000);
  return sub_100001E74(v4);
}

uint64_t sub_10006F01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_100049C1C();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "making NDOWarrantyLoader", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  *(swift_allocObject() + 16) = v3;
  sub_100001E10(a1, v18);
  v14 = type metadata accessor for NDOWarrantyLoader();
  swift_allocObject();

  v15 = NDOWarrantyLoader.init(configLoader:warrantyLoaderProvider:)();
  a2[3] = v14;
  a2[4] = &protocol witness table for NDOWarrantyLoader;

  *a2 = v15;
  return result;
}

void *sub_10006F214()
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  return qword_1000B2000;
}

uint64_t sub_10006F264@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(qword_1000B2000, a1);
}

uint64_t sub_10006F2E4(uint64_t *a1)
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000492B8(qword_1000B2000, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_10006F374(uint64_t a1))(uint64_t a1)
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_10006F3FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_14;
      }

      v16 = type metadata accessor for NDOCompositionLayer();
      *(swift_allocObject() + 16) = v16;
      v17 = type metadata accessor for NDOLocalWarrantyDownloader();
      swift_allocObject();

      v18 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
      v59 = v17;
      v60 = &protocol witness table for NDOLocalWarrantyDownloader;

      v58[0] = v18;
      type metadata accessor for NDOWarrantyPropertiesLoader();
      sub_100001E10(v58, v55);
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      v19 = sub_10006FCE0;
    }

    else
    {
      v34 = type metadata accessor for NDOCompositionLayer();
      *(swift_allocObject() + 16) = v34;
      v35 = type metadata accessor for NDOLocalWarrantyDownloader();
      swift_allocObject();

      v36 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
      v59 = v35;
      v60 = &protocol witness table for NDOLocalWarrantyDownloader;

      v58[0] = v36;
      type metadata accessor for NDOWarrantyPropertiesLoader();
      sub_100001E10(v58, v55);
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      v19 = sub_100027264;
    }

    v33 = v19;
    v32 = 0;
LABEL_13:
    v27 = sub_100019EC0(v55, &v52, v33, v32);
    v28 = v58;
    goto LABEL_18;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        v9 = type metadata accessor for NDOCompositionLayer();
        v10 = sub_10005BF18();
        swift_beginAccess();
        v11 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
        v56 = v11;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v12 = sub_100027B84(v55);
        (*(*(v11 - 8) + 16))(v12, v10, v11);
        sub_10006F01C(v55, v58);
        sub_100001E74(v55);
        *(swift_allocObject() + 16) = v9;
        v13 = type metadata accessor for NDOLocalWarrantyDownloader();
        swift_allocObject();

        v14 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
        v56 = v13;
        OpaqueTypeConformance2 = &protocol witness table for NDOLocalWarrantyDownloader;

        v55[0] = v14;
        type metadata accessor for NDOWarrantyPropertiesLoader();
        sub_100001E10(v58, &v52);
        sub_100001E10(v55, v51);
        v15 = swift_allocObject();
        *(v15 + 16) = v2;
LABEL_17:
        v27 = sub_100019EC0(&v52, v51, sub_1000704AC, v15);
        sub_100001E74(v58);
        v28 = v55;
        goto LABEL_18;
      }

LABEL_14:
      v37 = v6;
      v38 = sub_100049C1C();
      v39 = v37;
      (*(v5 + 16))(v8, v38, v37);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unhandled case for coverage info policy, defaulting to local with remote fallback", v42, 2u);
      }

      (*(v5 + 8))(v8, v39);
      v43 = type metadata accessor for NDOCompositionLayer();
      v44 = sub_10005BF18();
      swift_beginAccess();
      v45 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
      v56 = v45;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v46 = sub_100027B84(v55);
      (*(*(v45 - 8) + 16))(v46, v44, v45);
      sub_10006F01C(v55, v58);
      sub_100001E74(v55);
      *(swift_allocObject() + 16) = v43;
      v47 = type metadata accessor for NDOLocalWarrantyDownloader();
      swift_allocObject();

      v48 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
      v56 = v47;
      OpaqueTypeConformance2 = &protocol witness table for NDOLocalWarrantyDownloader;

      v55[0] = v48;
      type metadata accessor for NDOWarrantyPropertiesLoader();
      sub_100001E10(v58, &v52);
      sub_100001E10(v55, v51);
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      goto LABEL_17;
    }

    type metadata accessor for NDOCompositionLayer();
    v29 = sub_10005BF18();
    swift_beginAccess();
    v30 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
    v56 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_100027B84(v55);
    (*(*(v30 - 8) + 16))(v31, v29, v30);
    sub_10006F01C(v55, v58);
    sub_100001E74(v55);
    type metadata accessor for NDOWarrantyPropertiesLoader();
    sub_100001E10(v58, v55);
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    v33 = sub_1000703A0;
    goto LABEL_13;
  }

  v20 = type metadata accessor for NDOCompositionLayer();
  *(swift_allocObject() + 16) = v20;
  v21 = type metadata accessor for NDOLocalWarrantyDownloader();
  swift_allocObject();

  v22 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
  v59 = v21;
  v60 = &protocol witness table for NDOLocalWarrantyDownloader;

  v58[0] = v22;
  v23 = sub_10005BF18();
  swift_beginAccess();
  v24 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  *(&v53 + 1) = v24;
  v54 = swift_getOpaqueTypeConformance2();
  v25 = sub_100027B84(&v52);
  (*(*(v24 - 8) + 16))(v25, v23, v24);
  sub_10006F01C(&v52, v55);
  sub_100001E74(&v52);
  type metadata accessor for NDOWarrantyPropertiesLoader();
  sub_100001E10(v58, &v52);
  sub_100001E10(v55, v51);
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = sub_100019EC0(&v52, v51, sub_1000704AC, v26);
  sub_100001E74(v55);
  v28 = v58;
LABEL_18:
  sub_100001E74(v28);
  return v27;
}

uint64_t sub_10006FD54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10005C9F4();
  swift_beginAccess();
  sub_100001E10(v4, &v8);
  *(swift_allocObject() + 16) = a1;
  v5 = sub_10001A078(&qword_1000A8298, &qword_100081F68);
  swift_allocObject();

  v6 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  a2[3] = v5;
  result = sub_100002094(&qword_1000A82A0, &qword_1000A8298, &qword_100081F68);
  a2[4] = result;
  *a2 = v6;
  return result;
}

id sub_10006FE78(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[2])
  {
    return 0;
  }

  static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();

  v6 = objc_allocWithZone(NSURLRequest);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8];

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_10006FFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v41 = a4;
  v37 = a1;
  v45 = a5;
  v7 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  v44 = *(v7 - 8);
  v43 = *(v44 + 64);
  v8 = __chkstk_darwin(v7 - 8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v36 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  v40 = v12;
  v24 = *(v12 + 16);
  v24(&v36 - v22, v37, v11);
  *&v23[*(v18 + 56)] = a2;
  *&v23[*(v18 + 72)] = a3;
  sub_1000703D4(v23, v21);
  v37 = *&v21[*(v18 + 56)];

  v25 = *(v12 + 32);
  v39 = v16;
  v25(v16, v21, v11);
  v26 = v36;
  v24(v36, v16, v11);
  sub_10005D434(v46);
  v27 = v38;
  NDOWarrantyRequestGenerator.init(serialNumbers:warrantyURL:payloadProvider:)(v37, v26, v46, v38);
  v28 = sub_10005C9F4();
  swift_beginAccess();
  sub_100001E10(v28, v46);
  v29 = v42;
  sub_100027BF4(v27, v42);
  v30 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v31 = swift_allocObject();
  sub_100027C58(v29, v31 + v30);
  v32 = sub_10001A078(&qword_1000A73A0, &qword_10007C2D8);
  swift_allocObject();
  v33 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v34 = v45;
  v45[3] = v32;
  v34[4] = sub_100002094(&qword_1000A73A8, &qword_1000A73A0, &qword_10007C2D8);
  *v34 = v33;
  sub_100027D84(v27);
  (*(v40 + 8))(v39, v11);
  return sub_100070444(v23);
}

uint64_t sub_1000703D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100070444(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static NDOFollowUpHelpers.clearFollowUp(with:client:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDOFollowUpClient();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    (*(v10 + 104))(v12, enum case for NDOFollowUpClient.mercury(_:), v9);
    static NDOFollowUpClient.== infix(_:_:)();
    (*(v10 + 8))(v12, v9);
    v14 = objc_allocWithZone(FLFollowUpController);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithClientIdentifier:v15];

    if (v16)
    {

      sub_10001A078(&qword_1000A82A8, qword_100081F70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10007AE00;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;

      isa = Array._bridgeToObjectiveC()().super.isa;

      v27 = 0;
      v19 = [v16 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v27];

      if (v19)
      {
        v20 = v27;
      }

      else
      {
        v25 = v27;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_100049C1C();
    (*(v6 + 16))(v8, v21, v5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Empty follow up identifier. Not dismissing", v24, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void *sub_100070898(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100070BC8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100070BC8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100027ED0(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Class sub_1000709C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id NDOFollowUpHelpers.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NDOFollowUpHelpers();
  return objc_msgSendSuper2(&v3, "init");
}

id NDOFollowUpHelpers.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NDOFollowUpHelpers();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100070ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A6FA0, &qword_10007D9D0);
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

char *sub_100070BC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100070BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100070BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A82A8, qword_100081F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *_s8ndoagent18NDOFollowUpHelpersC014postedACFollowC5ItemsSaySSGyFZ_0()
{
  v0 = type metadata accessor for NDOFollowUpClient();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v32 - v5;
  v7 = *(v1 + 104);
  v7(v32 - v5, enum case for NDOFollowUpClient.ndoagent(_:), v0);
  v7(v4, enum case for NDOFollowUpClient.mercury(_:), v0);
  static NDOFollowUpClient.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v9 = objc_allocWithZone(FLFollowUpController);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithClientIdentifier:v10];

  if (!v11)
  {
    __break(1u);
  }

  v8(v6, v0);

  v33 = 0;
  v12 = [v11 pendingFollowUpItems:&v33];

  v13 = v33;
  if (v12)
  {
    sub_100072518();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;

    if (v14 >> 62)
    {
LABEL_24:
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16)
      {
LABEL_5:
        v17 = 0;
        v18 = _swiftEmptyArrayStorage;
        do
        {
          v19 = v17;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v20 = *(v14 + 8 * v19 + 32);
            }

            v21 = v20;
            v17 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v22 = [v20 uniqueIdentifier];
            if (v22)
            {
              break;
            }

            ++v19;
            if (v17 == v16)
            {
              goto LABEL_26;
            }
          }

          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32[0] = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100070ABC(0, *(v18 + 2) + 1, 1, v18);
          }

          v27 = *(v18 + 2);
          v26 = *(v18 + 3);
          if (v27 >= v26 >> 1)
          {
            v18 = sub_100070ABC((v26 > 1), v27 + 1, 1, v18);
          }

          *(v18 + 2) = v27 + 1;
          v28 = &v18[16 * v27];
          v29 = v32[0];
          *(v28 + 4) = v24;
          *(v28 + 5) = v29;
        }

        while (v17 != v16);
        goto LABEL_26;
      }
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_26:

    return v18;
  }

  v30 = v33;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  return _swiftEmptyArrayStorage;
}

void _s8ndoagent18NDOFollowUpHelpersC018dismissWatchFollowC5ItemsyyFZ_0()
{
  v0 = type metadata accessor for NDOFollowUpClient();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v88 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v89 = &v88 - v12;
  v13 = __chkstk_darwin(v11);
  v90 = &v88 - v14;
  __chkstk_darwin(v13);
  v16 = &v88 - v15;
  v17 = sub_100049C1C();
  v18 = *(v8 + 16);
  v94 = v17;
  v95 = v18;
  v96 = v8 + 16;
  (v18)(v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Dismiss pending watch follow up items", v21, 2u);
  }

  v92 = *(v8 + 8);
  v93 = v7;
  v97 = v8 + 8;
  v92(v16, v7);
  v22 = *(v1 + 104);
  v22(v6, enum case for NDOFollowUpClient.ndoagent(_:), v0);
  v22(v4, enum case for NDOFollowUpClient.mercury(_:), v0);
  static NDOFollowUpClient.== infix(_:_:)();
  v23 = *(v1 + 8);
  v23(v4, v0);
  v24 = objc_allocWithZone(FLFollowUpController);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithClientIdentifier:v25];

  if (!v26)
  {
    __break(1u);
  }

  v23(v6, v0);

  v101 = 0;
  v27 = [v26 pendingFollowUpItems:&v101];
  v28 = v101;
  v98 = v26;
  if (!v27)
  {
    v48 = v92;
    v47 = v93;
LABEL_58:
    v74 = v91;
    v75 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v95(v74, v94, v47);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v80;
      *v79 = v80;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed clearing watch follow up items. Error:%@", v78, 0xCu);
      sub_100020470(v79);
    }

    else
    {
    }

    v48(v74, v47);
    return;
  }

  v29 = v27;
  sub_100072518();
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v28;

  v101 = _swiftEmptyArrayStorage;
  if (v30 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v33 = 0;
    v34 = v30 & 0xFFFFFFFFFFFFFF8;
    v35 = 0x800000010008C790;
    v99 = 0x800000010008C790;
    v100 = v30 & 0xC000000000000001;
    while (1)
    {
      if (v100)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v34 + 16))
        {
          goto LABEL_27;
        }

        v36 = *(v30 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v39 = [v36 targetBundleIdentifier];
      if (v39)
      {
        v40 = v39;
        v26 = v30;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        if (v41 == 0xD000000000000010 && v35 == v43)
        {

          v30 = v26;
LABEL_22:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v35 = v99;
          goto LABEL_9;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = v26;
        if (v45)
        {
          goto LABEL_22;
        }

        v35 = v99;
      }

      else
      {
      }

LABEL_9:
      ++v33;
      if (v38 == i)
      {
        v46 = v101;
        v26 = v98;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v46 = _swiftEmptyArrayStorage;
LABEL_30:

  if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
  {
    v49 = *(v46 + 16);
    if (v49)
    {
      goto LABEL_33;
    }

LABEL_52:
    v51 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

LABEL_51:
  v49 = _CocoaArrayWrapper.endIndex.getter();
  if (!v49)
  {
    goto LABEL_52;
  }

LABEL_33:
  v50 = 0;
  v51 = _swiftEmptyArrayStorage;
  do
  {
    v52 = v50;
    while (1)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= *(v46 + 16))
        {
          goto LABEL_50;
        }

        v53 = *(v46 + 8 * v52 + 32);
      }

      v54 = v53;
      v50 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v55 = [v53 uniqueIdentifier];
      if (v55)
      {
        break;
      }

      ++v52;
      if (v50 == v49)
      {
        goto LABEL_53;
      }
    }

    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_100070ABC(0, *(v51 + 2) + 1, 1, v51);
    }

    v61 = *(v51 + 2);
    v60 = *(v51 + 3);
    if (v61 >= v60 >> 1)
    {
      v51 = sub_100070ABC((v60 > 1), v61 + 1, 1, v51);
    }

    *(v51 + 2) = v61 + 1;
    v62 = &v51[16 * v61];
    *(v62 + 4) = v57;
    *(v62 + 5) = v59;
    v26 = v98;
  }

  while (v50 != v49);
LABEL_53:

  if (*(v51 + 2))
  {
    v63 = v90;
    v47 = v93;
    v95(v90, v94, v93);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v101 = v67;
      *v66 = 136315138;
      v68 = Array.description.getter();
      v70 = sub_10001FEC8(v68, v69, &v101);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "Dismissing pending watch follow ups with identifiers:%s", v66, 0xCu);
      sub_100001E74(v67);

      v26 = v98;
    }

    v48 = v92;
    v92(v63, v47);
    sub_100070898(v51);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v101 = 0;
    v72 = [v26 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v101];

    v28 = v101;
    if (v72)
    {
      v73 = v101;

      return;
    }

    goto LABEL_58;
  }

  v81 = v89;
  v82 = v93;
  v95(v89, v94, v93);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v92;
  if (v85)
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "No pending watch follow ups.", v87, 2u);
  }

  v86(v81, v82);
}

id _s8ndoagent18NDOFollowUpHelpersC016dismissAllFollowC5ItemsyyFZ_0()
{
  v0 = type metadata accessor for NDOFollowUpClient();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v16 - v5;
  v7 = *(v1 + 104);
  v7(v16 - v5, enum case for NDOFollowUpClient.ndoagent(_:), v0);
  v7(v4, enum case for NDOFollowUpClient.mercury(_:), v0);
  static NDOFollowUpClient.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v9 = objc_allocWithZone(FLFollowUpController);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithClientIdentifier:v10];

  if (!v11)
  {
    __break(1u);
  }

  v8(v6, v0);

  v17 = 0;
  v12 = [v11 clearPendingFollowUpItems:&v17];

  v13 = v17;
  if (v12)
  {

    return v13;
  }

  else
  {
    v16[0] = v17;
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void _s8ndoagent18NDOFollowUpHelpersC019postedMercuryFollowC5ItemsSaySSGyFZ_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NDOFollowUpClient();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v11 = [objc_opt_self() ams_sharedAccountStore];
  v12 = [v11 ams_activeiTunesAccount];
  if (!v12)
  {
    v12 = [v11 ams_localiTunesAccount];
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v13 = v12;
  v14 = [v12 aida_dsid];
  if (!v14)
  {

LABEL_25:
    v46 = sub_100049C1C();
    (*(v1 + 16))(v3, v46, v0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Error fetching mc follow ups.", v49, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return;
  }

  v65 = v13;
  v66 = v11;
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v68 = 0xD00000000000002FLL;
  v69 = 0x800000010008C760;
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v21 = v68;
  v20 = v69;
  v22 = enum case for NDOFollowUpClient.mercury(_:);
  v23 = *(v5 + 104);
  v23(v10, enum case for NDOFollowUpClient.mercury(_:), v4);
  v23(v8, v22, v4);
  static NDOFollowUpClient.== infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v25 = objc_allocWithZone(FLFollowUpController);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 initWithClientIdentifier:v26];

  if (!v27)
  {
    __break(1u);
    return;
  }

  v24(v10, v4);

  v68 = 0;
  v28 = [v27 pendingFollowUpItems:&v68];

  v29 = v68;
  if (!v28)
  {
    v50 = v68;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  sub_100072518();
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v29;

  if (v30 >> 62)
  {
LABEL_31:
    v67 = v30 & 0xFFFFFFFFFFFFFF8;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
LABEL_8:
      v33 = 0;
      v34 = _swiftEmptyArrayStorage;
      do
      {
        v35 = v33;
        while (1)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v35 >= *(v67 + 16))
            {
              goto LABEL_30;
            }

            v36 = *(v30 + 8 * v35 + 32);
          }

          v37 = v36;
          v33 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v38 = [v36 uniqueIdentifier];
          if (v38)
          {
            break;
          }

          ++v35;
          if (v33 == v32)
          {
            goto LABEL_33;
          }
        }

        v39 = v38;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v41;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100070ABC(0, *(v34 + 2) + 1, 1, v34);
        }

        v43 = *(v34 + 2);
        v42 = *(v34 + 3);
        if (v43 >= v42 >> 1)
        {
          v34 = sub_100070ABC((v42 > 1), v43 + 1, 1, v34);
        }

        *(v34 + 2) = v43 + 1;
        v44 = &v34[16 * v43];
        v45 = v64;
        *(v44 + 4) = v40;
        *(v44 + 5) = v45;
      }

      while (v33 != v32);
      goto LABEL_33;
    }
  }

  else
  {
    v67 = v30 & 0xFFFFFFFFFFFFFF8;
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_8;
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_33:

  v51 = 0;
  v52 = v34 + 40;
  v53 = -*(v34 + 2);
  v54 = _swiftEmptyArrayStorage;
  v67 = (v34 + 40);
LABEL_34:
  v55 = v51 + 1;
  v56 = &v52[16 * v51];
  while (v53 + v55 != 1)
  {
    v51 = v55;
    if ((v55 - 1) >= *(v34 + 2))
    {
      __break(1u);
    }

    v58 = *(v56 - 1);
    v57 = *v56;
    if (v58 == v21 && v57 == v20)
    {
      v58 = v21;
LABEL_44:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100033930(0, v54[2] + 1, 1);
        v54 = v68;
      }

      v62 = v54[2];
      v61 = v54[3];
      if (v62 >= v61 >> 1)
      {
        sub_100033930((v61 > 1), v62 + 1, 1);
        v54 = v68;
      }

      v54[2] = v62 + 1;
      v63 = &v54[2 * v62];
      v63[4] = v58;
      v63[5] = v57;
      v52 = v67;
      goto LABEL_34;
    }

    ++v55;
    v56 += 16;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_44;
    }
  }
}

unint64_t sub_100072518()
{
  result = qword_1000A82D8;
  if (!qword_1000A82D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A82D8);
  }

  return result;
}

void sub_100072564(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NDOAirPodsDataCollectionHandler reportAirPodsDataWithCompletion:]";
  sub_10000610C(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100072620(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"request ignored or failed";
  if (a1)
  {
    v8 = @"request sent successfully";
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  sub_10000610C(&_mh_execute_header, a2, a3, "[bluetooth_accessory] Airpods pairing notification %@", a5, a6, a7, a8, v9, HIDWORD(v8));
}

void sub_1000726A4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"request ignored or failed";
  if (a1)
  {
    v8 = @"request sent successfully";
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  sub_10000610C(&_mh_execute_header, a2, a3, "[bluetooth_accessory] Airpods firmware update notification %@", a5, a6, a7, a8, v9, HIDWORD(v8));
}

void sub_100072728(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.private.ndoagent";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Rejecting connection to ndoagent: missing entitlement '%@'", &v1, 0xCu);
}

void sub_1000727AC(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithUnsignedInt:a1];
  v4 = 136446466;
  v5 = "void NDOHandleAppleAccountChange(__strong id<NDONotificationHandler>, ACXPCAccountChangeType)";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unsupported account change type:%@", &v4, 0x16u);
}

void sub_1000728D4()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%{public}s: callingProcess=%@", v1, 0x16u);
}

void sub_100072954(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: country is excluded ...", &v1, 0xCu);
}

void sub_1000729D8(void *a1, NSObject *a2, double a3)
{
  v5 = [a1 scheduledActivityDate];
  v6 = 136446722;
  v7 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2048;
  v11 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s: Didn't schedule interval call for normal use case with already scheduled activity: %@ and last interval value: %ld", &v6, 0x20u);
}

void sub_100072AA0(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: Not scheduling interval call", &v1, 0xCu);
}

void sub_100072B68()
{
  v3[0] = 136446722;
  sub_100009D90();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: Error serializing plist file from URL '%@': %@", v3, 0x20u);
}

void sub_100072BF4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "URL '%@' contains no plist data", &v2, 0xCu);
}

void sub_100072C80()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072CBC()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072D84()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072DC0()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072E88(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446722;
  v4 = "[NDOPushListener initWithConnection:notificationHandler:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s cannot create push listener. Invalid parameters. Connection:%@. notificationHandler:%@", &v3, 0x20u);
}

void sub_100072F20(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NDOIntervalCallActivity performActivityForScheduler:withCompletionHandler:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Warranty failed to download", &v1, 0xCu);
}

void sub_100072FE8()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Failed to sign the data using BAA certificate. Error = %@", v1, 0x16u);
}

void sub_100073068(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "[NDODeviceServicesInterface generatePEMDataWithCertificateChain:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Attestation data is null.", buf, 0xCu);
}

void sub_1000730FC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "[NDODeviceServicesInterface signPayload:completionHandler:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Failed to generate the certificate: %@", buf, 0x16u);
}

void sub_100073168(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000FAA0(&_mh_execute_header, a2, a3, "[bluetooth_accessory] Device authentication failed while generating certificate with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000731D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDODeviceServicesInterface signPayload:completionHandler:]_block_invoke_2";
  sub_10000FAA0(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %{public}s: Failed to create encoded certificate signature", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007324C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDODeviceServicesInterface signPayload:completionHandler:]_block_invoke_2";
  sub_10000FAA0(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %{public}s: Failed to sign the request", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000732C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NDODeviceServicesInterface sendDictionaryData:toServer:forNotification:completionHandler:]";
  sub_10000FAA0(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %s: error: Request URL or Request Data is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007333C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4[0] = 136315394;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %s: Device Services request failed with error: %@", v4, 0x16u);
}

void sub_1000733DC()
{
  v6 = 136315394;
  sub_100009D90();
  sub_100011514(&_mh_execute_header, v0, v1, "%s -> pairedBTDevicesSerialNumbers overrideDict: %@", v2, v3, v4, v5, v6);
}

void sub_100073450()
{
  v6 = 136315394;
  sub_100009D90();
  sub_100011514(&_mh_execute_header, v0, v1, "%s -> internal overriden pairedBTDevices: %@", v2, v3, v4, v5, v6);
}

void sub_1000734C4()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: CBDiscovery failed with error: %@\n", v1, 0x16u);
}

void sub_100073544(void *a1)
{
  [a1 count];
  v7 = 136446466;
  sub_100011530();
  sub_100011544(&_mh_execute_header, v1, v2, "%{public}s: Printing devices: %lu", v3, v4, v5, v6, v7);
}

void sub_1000735C8()
{
  v6 = 136315394;
  sub_100009D90();
  sub_100011514(&_mh_execute_header, v0, v1, "%s -> pairedBTPioneerDevicesSerialNumbers overrideDict: %@", v2, v3, v4, v5, v6);
}

void sub_10007363C()
{
  v6 = 136315394;
  sub_100009D90();
  sub_100011514(&_mh_execute_header, v0, v1, "%s -> internal overriden pairedBTPioneerDevices: %@", v2, v3, v4, v5, v6);
}

void sub_1000736B0()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: CBDiscovery failed with error: %@\n", v1, 0x16u);
}

void sub_100073730(void *a1)
{
  [a1 count];
  v7 = 136446466;
  sub_100011530();
  sub_100011544(&_mh_execute_header, v1, v2, "%{public}s: Printing devices: %lu", v3, v4, v5, v6, v7);
}

void sub_1000737B4(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = 136446466;
  v4 = "+[NDOFollowUpPost nextFollowUpPostDateWithDevicesInfo:]_block_invoke";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s: mid result: %@", &v3, 0x16u);
}

void sub_10007384C(void *a1, NSObject *a2)
{
  v3 = [a1 device];
  v4 = [v3 serialNumber];
  v5 = [v4 sha256Hash];
  v6 = 136446466;
  v7 = "+[NDOFollowUpPost nextFollowUpPostDateWithDevicesInfo:]_block_invoke";
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s: Already posted followup for: %@", &v6, 0x16u);
}

void sub_100073920(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  v4[0] = 136446466;
  sub_100009D90();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[bluetooth_accessory] %{public}s: Bluetooth notification received. Notification Name: %@", v4, 0x16u);
}

void sub_1000739C0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NDOBluetoothDeviceManager getConnectedAudioDevicesWithCompletionHandler:]";
  sub_10000610C(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100073A38(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NDOBluetoothDeviceManager populateAirPodsData:withAccessoryInfo:]";
  sub_10000610C(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100073AB0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NDOBluetoothDeviceManager getBluetoothAudioDevicesWithCompletionHandler:]";
  sub_10000610C(&_mh_execute_header, a1, a3, "[bluetooth_accessory] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100073B28()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: CBDiscovery failed with error: %@\n", v1, 0x16u);
}

void sub_100073BA8(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "[NDOBluetoothDeviceManager getBluetoothAudioDevicesWithCompletionHandler:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Fake or unreliable AirPods, Not sending the data to service.\n", buf, 0xCu);
}

void sub_100073C3C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 136446466;
  v4 = "[NDOAgentDefaultWarrantyProvider initWithCallingProcessBundleID:]";
  v5 = 2112;
  v6 = a1;
  sub_100018A4C(&_mh_execute_header, a2, a3, "%{public}s: callingProcess=%@", &v3);
}

void sub_100073CC0()
{
  sub_100018A38();
  v3 = v0;
  sub_100018A4C(&_mh_execute_header, v1, v1, "serialNumberOverride for Serial Number: %@ with serial: %@", v2);
}

void sub_100073D34()
{
  sub_100018A38();
  v4 = v0;
  sub_100018A4C(&_mh_execute_header, v1, v2, "Override Serial Number: %@ found for SN: %@", v3);
}

void sub_100073DA4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 serialNumber];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  sub_100018A4C(&_mh_execute_header, a3, v6, "Override Serial Number: %@ found for SN: %@", &v7);
}

void sub_100073E50()
{
  sub_100018A38();
  v3 = v0;
  sub_100018A4C(&_mh_execute_header, v1, v1, "Override Serial Number: %@ found for SN: %@", v2);
}

void sub_100073EC4(uint64_t a1, NSObject *a2)
{
  v2 = 136380931;
  v3 = "[NDOAgent getCoverageInfoForSerialNumber:usingPolicy:withReply:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{private}s Cannot create objc device coverage loader wrapper, policy: %lu", &v2, 0x16u);
}

Swift::String_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(Swift::String a1)
{
  v1 = Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(a1._countAndFlagsBits, a1._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}