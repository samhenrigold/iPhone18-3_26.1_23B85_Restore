uint64_t storeEnumTagSinglePayload for CustodianRecoveryInfoRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F5930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000F5A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000F5BAC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DD7C0, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      sub_1000F2A94(319);
      if (v3 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1000F5CA4()
{
  result = qword_1003DD948;
  if (!qword_1003DD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD948);
  }

  return result;
}

unint64_t sub_1000F5CFC()
{
  result = qword_1003DD950;
  if (!qword_1003DD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD950);
  }

  return result;
}

unint64_t sub_1000F5D54()
{
  result = qword_1003DD958;
  if (!qword_1003DD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD958);
  }

  return result;
}

uint64_t sub_1000F5DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010032E8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E8B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEB0000000079654BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E870 == a2)
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

uint64_t sub_1000F60A4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v62 - v10;
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v76 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v78 = &v62 - v19;
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  v22 = type metadata accessor for CustodianRecoveryData(0);
  v23 = *(v22 + 28);
  v79 = a2;
  sub_1000F2504(a2 + v23, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) != 1)
  {
    v75 = a3;
    v74 = *(v15 + 32);
    v74(v21, v13, v14);
    v25 = v79;
    if (v79[3])
    {
      v73 = v21;
      UUID.init(uuidString:)();
      if (v24(v11, 1, v14) == 1)
      {
        sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
        (*(v15 + 8))(v73, v14);
        sub_1000F77E0(v25, type metadata accessor for CustodianRecoveryData);
        sub_1000F76CC(v11);
LABEL_13:
        a3 = v75;
        goto LABEL_14;
      }

      v26 = v78;
      v74(v78, v11, v14);
      v27 = v25[1];
      v28 = a1;
      if (v27)
      {
        v29 = (v25 + *(v22 + 32));
        v30 = v29[1];
        v31 = v73;
        if (v30)
        {
          v32 = *v79;
          v71 = *v29;
          v72 = v32;

          v33 = v76;
          UUID.init()();
          v34 = v28[2];
          v65 = v28[3];
          v66 = v34;
          v35 = *v28;
          v67 = v28[1];
          v68 = v35;
          v36 = v28[4];
          v69 = v28[5];
          v70 = v36;
          v37 = type metadata accessor for CustodianRecoveryKeys(0);
          v38 = v77;
          sub_1000F7840(v28 + *(v37 + 28), v77);
          v39 = (v28 + *(v37 + 32));
          v40 = *v39;
          v63 = v39[1];
          v64 = v40;
          v41 = v26;
          v42 = v75;
          v43 = v33;
          v44 = v74;
          v74(v75, v43, v14);
          v45 = type metadata accessor for CustodianRecoverySessionRecord(0);
          v44(&v42[v45[5]], v31, v14);
          v44(&v42[v45[6]], v41, v14);
          v46 = &v42[v45[7]];
          v47 = v71;
          *v46 = v72;
          *(v46 + 1) = v27;
          v48 = &v42[v45[8]];
          *v48 = v47;
          *(v48 + 1) = v30;
          v49 = &v42[v45[9]];
          v50 = v65;
          *v49 = v66;
          *(v49 + 1) = v50;
          v51 = &v42[v45[10]];
          v52 = v67;
          *v51 = v68;
          *(v51 + 1) = v52;
          v53 = &v42[v45[11]];
          v54 = v69;
          *v53 = v70;
          *(v53 + 1) = v54;
          sub_1000F7840(v38, &v42[v45[12]]);
          v55 = &v42[v45[13]];
          v56 = v63;
          *v55 = v64;
          *(v55 + 1) = v56;
          sub_1000F77E0(v79, type metadata accessor for CustodianRecoveryData);
          return (*(*(v45 - 1) + 56))(v42, 0, 1, v45);
        }

        sub_1000F77E0(v28, type metadata accessor for CustodianRecoveryKeys);
        v61 = *(v15 + 8);
        v61(v26, v14);
        v61(v31, v14);
        v59 = v79;
        goto LABEL_12;
      }

      sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
      v58 = *(v15 + 8);
      v58(v26, v14);
      v58(v73, v14);
    }

    else
    {
      sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
      (*(v15 + 8))(v21, v14);
    }

    v59 = v25;
LABEL_12:
    sub_1000F77E0(v59, type metadata accessor for CustodianRecoveryData);
    goto LABEL_13;
  }

  sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
  sub_1000F77E0(v79, type metadata accessor for CustodianRecoveryData);
  sub_1000F76CC(v13);
LABEL_14:
  v60 = type metadata accessor for CustodianRecoverySessionRecord(0);
  return (*(*(v60 - 8) + 56))(a3, 1, 1, v60);
}

uint64_t sub_1000F66AC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x444964726F636572;
    v7 = 0x646F74737543746FLL;
    v8 = 0x4449656B617073;
    if (a1 != 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6169646F74737563;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5064657070617277;
    if (a1 == 9)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E614872656E776FLL;
    v4 = 0x737574617473;
    if (a1 != 6)
    {
      v4 = 0x5264657070617277;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000F683C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F7D48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F6870(uint64_t a1)
{
  v2 = sub_1000F7678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F68AC(uint64_t a1)
{
  v2 = sub_1000F7678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F68E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v53 = &v48 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v56 = &v48 - v10;
  __chkstk_darwin(v9);
  v60 = &v48 - v11;
  v12 = sub_100005814(&qword_1003DD968, &qword_100342108);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v18 = *(__chkstk_darwin(v16) + 48);
  v57 = v6;
  v21 = *(v6 + 56);
  v19 = v6 + 56;
  v20 = v21;
  v62 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v18;
  v21(&v62[v18], 1, 1, v5);
  sub_1000080F8(a1, a1[3]);
  sub_1000F7678();
  v22 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_10000839C(a1);
    return sub_1000F76CC(&v62[v63]);
  }

  else
  {
    v50 = v20;
    v51 = v19;
    v52 = v16;
    v61 = a1;
    LOBYTE(v64) = 0;
    v23 = sub_1000F7798(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v62;
    v49 = *(v57 + 32);
    v49(v62, v60, v5);
    LOBYTE(v64) = 1;
    v26 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = v5;
    v49(&v25[v52[5]], v26, v5);
    LOBYTE(v64) = 3;
    v27 = v55;
    v48 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v25;
    v56 = v23;
    v49(&v25[v52[6]], v27, v5);
    LOBYTE(v64) = 4;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v61;
    v31 = (v28 + v52[7]);
    *v31 = v29;
    v31[1] = v32;
    LOBYTE(v64) = 5;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v59;
    v35 = (v28 + v52[8]);
    *v35 = v33;
    v35[1] = v36;
    v65 = 8;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v28 + v52[10]) = v64;
    v65 = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v28 + v52[9]) = v64;
    LOBYTE(v64) = 9;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v53;
    v39 = (v28 + v52[11]);
    *v39 = v37;
    v39[1] = v40;
    LOBYTE(v64) = 2;
    v41 = v24;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v54;
    sub_1000F244C(v38, v28 + v63);
    LOBYTE(v64) = 10;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v44;
    v46 = (v28 + v52[13]);
    (*(v34 + 8))(v41, v58);
    *v46 = v43;
    v46[1] = v45;
    sub_1000F7734(v28, v42);
    sub_10000839C(v30);
    return sub_1000F77E0(v28, type metadata accessor for CustodianRecoverySessionRecord);
  }
}

uint64_t sub_1000F71CC(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DD978, &qword_100342110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1000F7678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for UUID();
  sub_1000F7798(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CustodianRecoverySessionRecord(0);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 40));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v18 = 8;
    sub_100015D6C(v16, v11);
    v15[1] = sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v16, v17);
    v12 = (v3 + *(v9 + 36));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 7;
    sub_100052704(v16, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v16, v17);
    LOBYTE(v16) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F75A8(uint64_t a1)
{
  *(a1 + 8) = sub_1000F7798(&unk_1003D9230, type metadata accessor for CustodianRecoverySessionRecord, &unk_1003420A8);
  result = sub_1000F7798(&qword_1003DD960, type metadata accessor for CustodianRecoverySessionRecord, &unk_100342080);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianRecoverySessionRecord(uint64_t a1)
{
  result = qword_1003DD9D8;
  if (!qword_1003DD9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000F7678()
{
  result = qword_1003DD970;
  if (!qword_1003DD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD970);
  }

  return result;
}

uint64_t sub_1000F76CC(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F7734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoverySessionRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F7798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F77E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F7840(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F78D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000F7A1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000F7B50(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DD7C0, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000F2A94(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1000F7C44()
{
  result = qword_1003DDA30;
  if (!qword_1003DDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA30);
  }

  return result;
}

unint64_t sub_1000F7C9C()
{
  result = qword_1003DDA38;
  if (!qword_1003DDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA38);
  }

  return result;
}

unint64_t sub_1000F7CF4()
{
  result = qword_1003DDA40;
  if (!qword_1003DDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA40);
  }

  return result;
}

uint64_t sub_1000F7D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656B617073 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E8F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5264657070617277 && a2 == 0xEA0000000000434BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5064657070617277 && a2 == 0xEB00000000434B52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010032E910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
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

void sub_1000F80E0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v74[-v9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v74[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v81 = &v74[-v16];
  v82 = a1;
  if (CKRecord.recordType.getter() == 0xD000000000000017 && 0x80000001003422F0 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      type metadata accessor for AACustodianError(0);
      v85 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v75 = a2;
  v79 = v15;
  v19 = v82;
  v20 = [v82 recordID];
  v21 = [v20 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for AACustodianError(0);
    v85 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return;
  }

  v76 = v12;
  v23 = *(v12 + 32);
  v78 = v11;
  v23(v81, v10);
  v24 = [v19 encryptedValuesByKey];
  v25 = String._bridgeToObjectiveC()();
  v77 = v24;
  v26 = [v24 objectForKeyedSubscript:v25];

  if (!v26)
  {
    goto LABEL_11;
  }

  v85 = v26;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  UUID.init(uuidString:)();

  v27 = v78;
  if (v22(v8, 1, v78) != 1)
  {
    (v23)(v79, v8, v27);
    v37 = String._bridgeToObjectiveC()();
    v38 = v77;
    v39 = [v77 objectForKeyedSubscript:v37];

    if (v39 && (v85 = v39, (swift_dynamicCast() & 1) != 0))
    {
      v40 = v83;
      v41 = v84;
      v42 = String._bridgeToObjectiveC()();
      v43 = [v38 objectForKeyedSubscript:v42];

      if (v43)
      {
        v83 = v43;
        type metadata accessor for Status(0);
        v44 = swift_dynamicCast();
        v45 = v76;
        if (v44)
        {
          v46 = v85;
          v47 = *(v76 + 16);
          v48 = v80;
          v49 = v78;
          v47(v80, v81, v78);
          v50 = type metadata accessor for CustodianshipInfoRecord(0);
          v47(v48 + v50[5], v79, v49);
          v51 = (v48 + v50[6]);
          *v51 = v40;
          v51[1] = v41;
          *(v48 + v50[7]) = v46;
          v52 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
          v53 = v82;
          [v82 encodeSystemFieldsWithCoder:v52];
          [v52 finishEncoding];
          v54 = [v52 encodedData];
          v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          swift_unknownObjectRelease();
          v58 = *(v45 + 8);
          v58(v79, v49);
          v58(v81, v49);
          v59 = (v48 + v50[8]);
          *v59 = v55;
          v59[1] = v57;
          *(v48 + v50[9]) = v75 & 1;
          return;
        }
      }

      v65 = v78;
      v70 = v82;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100008D04(v71, qword_1003FAA88);
      v61 = v70;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v62, v63))
      {
        goto LABEL_31;
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v61;
      *v67 = v61;
      v72 = v61;
      v69 = "Missing Status - %@";
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100008D04(v60, qword_1003FAA88);
      v61 = v82;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = v78;
      if (!v64)
      {
        goto LABEL_31;
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v61;
      *v67 = v61;
      v68 = v61;
      v69 = "Missing Owner Handle - %@";
    }

    _os_log_impl(&_mh_execute_header, v62, v63, v69, v66, 0xCu);
    sub_100008D3C(v67, &unk_1003D9140, &qword_10033E640);

LABEL_31:

    type metadata accessor for AACustodianError(0);
    v85 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v73 = *(v76 + 8);
    v73(v79, v65);
    v73(v81, v65);
    return;
  }

  sub_100008D3C(v8, &qword_1003D8B60, &unk_10033F210);
LABEL_11:
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100008D04(v28, qword_1003FAA88);
  v29 = v82;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v78;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v29;
    *v35 = v29;
    v36 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "Missing CustodianID - %@", v34, 0xCu);
    sub_100008D3C(v35, &unk_1003D9140, &qword_10033E640);
  }

  type metadata accessor for AACustodianError(0);
  v85 = -7005;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v76 + 8))(v81, v33);
}

uint64_t sub_1000F8C14(id *a1)
{
  v2 = v1;
  [*a1 encryptedValuesByKey];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for CustodianshipInfoRecord(0);
  v4 = UUID.uuidString.getter();
  if (v16)
  {
    if (v15 == v4 && v16 == v5)
    {

      goto LABEL_11;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = UUID.uuidString.getter();
  v16 = v8;
  CKRecordKeyValueSetting.subscript.setter();
LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v9 = (v1 + *(v3 + 24));
  v11 = *v9;
  v10 = v9[1];
  if (!v16)
  {
    goto LABEL_17;
  }

  if (v15 == v11 && v16 == v10)
  {

    goto LABEL_19;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
LABEL_17:
    v15 = v11;
    LOBYTE(v16) = v10;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_19:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v16 & 1) != 0 || v15 != *(v2 + *(v3 + 28)))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F8EDC()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x737574617473;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6169646F74737563;
  if (v1 != 1)
  {
    v5 = 0x6E614872656E776FLL;
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

uint64_t sub_1000F8FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F9EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F8FDC(uint64_t a1)
{
  v2 = sub_1000F9980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9018(uint64_t a1)
{
  v2 = sub_1000F9980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F9054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for UUID();
  v25 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v26 = &v23 - v7;
  v29 = sub_100005814(&qword_1003DDA58, &qword_1003422F8);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1000F9980();
  v28 = v9;
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000839C(a1);
  }

  v30 = v12;
  LOBYTE(v31) = 0;
  sub_1000F99D4(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = *(v25 + 32);
  (v26)(v30, v14, v3);
  LOBYTE(v31) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v3;
  v15 = v30;
  (v26)(&v30[v10[5]], v6, v3);
  LOBYTE(v31) = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = (v15 + v10[6]);
  *v17 = v16;
  v17[1] = v18;
  LOBYTE(v31) = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v27;
  *(v15 + v10[7]) = v19;
  v32 = 4;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + v10[8]) = v31;
  LOBYTE(v31) = 5;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v28, v29);
  *(v15 + v10[9]) = v21 & 1;
  sub_1000C522C(v15, v24);
  sub_10000839C(a1);
  return sub_1000D8450(v15);
}

uint64_t sub_1000F957C(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DDA78, &unk_100342300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1000F9980();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_1000F99D4(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CustodianshipInfoRecord(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 4;
    sub_100015D6C(v13, v11);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v13, v14);
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F9858(uint64_t a1)
{
  *(a1 + 8) = sub_1000F99D4(&qword_1003D9160, type metadata accessor for CustodianshipInfoRecord, &unk_100342298);
  result = sub_1000F99D4(&qword_1003DDA48, type metadata accessor for CustodianshipInfoRecord, &unk_100342270);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianshipInfoRecord(uint64_t a1)
{
  result = qword_1003DDAE8;
  if (!qword_1003DDAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F9928(uint64_t a1)
{
  result = sub_1000F99D4(&qword_1003DDA50, type metadata accessor for CustodianshipInfoRecord, &unk_1003422C0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F9980()
{
  result = qword_1003DDA60;
  if (!qword_1003DDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA60);
  }

  return result;
}

uint64_t sub_1000F99D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CustodianshipInfoRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CustodianshipInfoRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000F9B80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F9C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000F9D10(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000F9DC0()
{
  result = qword_1003DDB30;
  if (!qword_1003DDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB30);
  }

  return result;
}

unint64_t sub_1000F9E18()
{
  result = qword_1003DDB38;
  if (!qword_1003DDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB38);
  }

  return result;
}

unint64_t sub_1000F9E70()
{
  result = qword_1003DDB40;
  if (!qword_1003DDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB40);
  }

  return result;
}

uint64_t sub_1000F9EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
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

uint64_t sub_1000FA0D0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v9 = sub_100005814(&qword_1003DDB68, &qword_100342578);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000080F8(a1, a1[3]);
  sub_1000FA970();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_100015D6C(a2, a3);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000FA26C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6873614879656BLL;
  }
}

uint64_t sub_1000FA2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873614879656BLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_1000FA390(uint64_t a1)
{
  v2 = sub_1000FA970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FA3CC(uint64_t a1)
{
  v2 = sub_1000FA970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FA408@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000FA748(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000FA458(uint64_t a1, unint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000FA618();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100012324(a1, a2);

  sub_100015D6C(v5, v6);

  sub_100012324(v5, v6);

  return v5;
}

unint64_t sub_1000FA618()
{
  result = qword_1003DDB50;
  if (!qword_1003DDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB50);
  }

  return result;
}

uint64_t sub_1000FA66C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000FA688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1000FA6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000FA748(void *a1)
{
  v3 = sub_100005814(&qword_1003DDB58, &qword_100342570);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000080F8(a1, v7);
  sub_1000FA970();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000839C(a1);
  }

  else
  {
    v11 = 0;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10[0];
    v9 = v10[1];
    LOBYTE(v10[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100015D6C(v7, v9);

    sub_10000839C(a1);
    sub_100012324(v7, v9);
  }

  return v7;
}

unint64_t sub_1000FA970()
{
  result = qword_1003DDB60;
  if (!qword_1003DDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB60);
  }

  return result;
}

unint64_t sub_1000FA9D8()
{
  result = qword_1003DDB70;
  if (!qword_1003DDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB70);
  }

  return result;
}

unint64_t sub_1000FAA30()
{
  result = qword_1003DDB78;
  if (!qword_1003DDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB78);
  }

  return result;
}

unint64_t sub_1000FAA88()
{
  result = qword_1003DDB80;
  if (!qword_1003DDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB80);
  }

  return result;
}

__n128 sub_1000FAADC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000FAB10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FAB58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000FABC8(uint64_t a1)
{
  if (a1)
  {

    [v1 sendEvent:a1];
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Analytics event found nil", v4, 2u);
    }
  }
}

uint64_t sub_1000FACE4(__int128 *a1)
{
  *(v1 + 16) = 0;
  sub_100005814(&unk_1003DDBF0, &qword_1003427F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v3 = (v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  *v4 = 0;
  v4[1] = 0;
  sub_10003E950(a1, v1 + 24);
  sub_10003E950(a1 + 5, v1 + 64);
  sub_10003E950((a1 + 40), v1 + 104);
  *(v1 + 144) = *(a1 + 120);
  return v1;
}

uint64_t sub_1000FAE30(char a1, uint64_t a2)
{
  *(v3 + 184) = a2;
  *(v3 + 192) = v2;
  *(v3 + 288) = a1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v3 + 200) = v4;
  *(v3 + 208) = *(v4 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = type metadata accessor for CustodianRecoveryData(0);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_1000FAF60, 0, 0);
}

uint64_t sub_1000FAF60()
{
  v117 = v0;
  v1 = *(v0 + 288);
  v2 = v0[24];
  v3 = **(&off_1003A9D28 + v1);
  sub_100012004();
  v4 = *(v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v5 = *(v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  v6 = v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID;
  v7 = *(v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v8 = *(v6 + 8);

  v9 = sub_100245D38(v3, v4, v5, v7, v8);
  v0[34] = v9;
  if (v1 <= 3)
  {
    if ((v1 - 1) >= 3)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v59 = v0[33];
      v60 = v0[23];
      v61 = type metadata accessor for Logger();
      sub_100008D04(v61, qword_1003FAA88);
      sub_10010BD38(v60, v59, type metadata accessor for CustodianRecoveryData);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v0[33];
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v116[0] = v67;
        *v66 = 136315138;
        v68 = sub_10011038C();
        v70 = v69;
        sub_10010C048(v65, type metadata accessor for CustodianRecoveryData);
        v71 = sub_10021145C(v68, v70, v116);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v62, v63, "Received spakeBegin push with data: %s", v66, 0xCu);
        sub_10000839C(v67);
      }

      else
      {

        sub_10010C048(v65, type metadata accessor for CustodianRecoveryData);
      }

      sub_1000FC804(v0[23], v9);

      goto LABEL_63;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v10 = v0[32];
    v11 = v0[23];
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);
    sub_10010BD38(v11, v10, type metadata accessor for CustodianRecoveryData);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 288);
      v16 = swift_slowAlloc();
      v116[0] = swift_slowAlloc();
      *v16 = 136315394;
      v17 = 0xEA00000000006C61;
      v18 = 0xD000000000000011;
      if (v15 == 2)
      {
        v17 = 0x800000010032C1C0;
      }

      else
      {
        v18 = 0x6E6946656B617073;
      }

      if (v15 == 1)
      {
        v19 = 0xD000000000000015;
      }

      else
      {
        v19 = v18;
      }

      if (v15 == 1)
      {
        v20 = 0x800000010032C1A0;
      }

      else
      {
        v20 = v17;
      }

      v21 = v0[32];
      v22 = sub_10021145C(v19, v20, v116);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      v23 = sub_10011038C();
      v25 = v24;
      sub_10010C048(v21, type metadata accessor for CustodianRecoveryData);
      v26 = sub_10021145C(v23, v25, v116);

      *(v16 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received %s push with data: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = v0[32];

      sub_10010C048(v40, type metadata accessor for CustodianRecoveryData);
    }

    v41 = sub_100109C50(v0[23]);
    if (v41)
    {
      v43 = v41;
      v44 = v42;
      sub_10010C2DC(v41, v42, *(v0 + 288));
      v72 = *(v0 + 288);
      if (v72 == 1 || v72 == 2)
      {
        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v81 & 1) == 0)
        {
          v82 = sub_10010CC84(v43, v44, *(v0 + 288));
          v84 = v83;
          v85 = v0[28];
          v86 = *(v0 + 288);
          ObjectType = swift_getObjectType();
          v88 = (*(v44 + 48))(v0 + 8, ObjectType, v44);
          v90 = (v89 + *(v85 + 44));
          v91 = *v90;
          v92 = v90[1];
          *v90 = v82;
          v90[1] = v84;
          sub_100015D58(v91, v92);
          v88(v0 + 8, 0);
          if (v86 < 4)
          {
            v93 = v86 + 1;
          }

          else
          {
            v93 = 5;
          }

          v94 = v0[31];
          v95 = v0[24];
          v96 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianKeyExchangeSendMessage altDSID:0 flowID:0];
          v97 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
          swift_beginAccess();
          sub_10010BD38(v43 + v97, v94, type metadata accessor for CustodianRecoveryData);
          v98 = sub_10010ABFC(v94, v93);
          sub_10010C048(v94, type metadata accessor for CustodianRecoveryData);
          v99 = sub_1000080F8((v95 + 24), *(v95 + 48));
          v100 = swift_allocObject();
          v100[3] = 0;
          v100[4] = 0;
          v100[2] = v96;
          v101 = *v99;
          v102 = swift_allocObject();
          *(v102 + 16) = sub_10010E5C4;
          *(v102 + 24) = v100;
          v0[6] = sub_10010E58C;
          v0[7] = v102;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_10013BB5C;
          v0[5] = &unk_1003A9C60;
          v103 = _Block_copy(v0 + 2);

          v104 = v96;

          [v101 startCustodianRecoveryTransactionWithContext:v98 completion:v103];
          _Block_release(v103);

          if (v9)
          {
            [v9 updateTaskResultWithError:0];
          }

          v106 = v0[26];
          v105 = v0[27];
          v107 = v0[25];
          (*(v106 + 16))(v105, v0[24] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v107);
          Dependency.wrappedValue.getter();
          (*(v106 + 8))(v105, v107);
          swift_getObjectType();
          sub_100246FA8(v9);
          swift_unknownObjectRelease();
          goto LABEL_60;
        }
      }

      else
      {
      }

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "Message verified Code entered on Owner device is correct!!!, Getting RKC + PRKC + otCustodianID", v110, 2u);
      }

      sub_1000FE450(v43, v44, v9);
      goto LABEL_60;
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v0[19] = -9009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = v0[18];
    if (v9)
    {
LABEL_48:
      v78 = v45;
      v79 = _convertErrorToNSError(_:)();
      [v9 updateTaskResultWithError:v79];

      v80 = v9;
LABEL_62:
      v113 = v0[26];
      v112 = v0[27];
      v114 = v0[25];
      (*(v113 + 16))(v112, v0[24] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v114);
      Dependency.wrappedValue.getter();
      (*(v113 + 8))(v112, v114);
      swift_getObjectType();
      sub_100246FA8(v9);
      swift_unknownObjectRelease();

      goto LABEL_63;
    }

LABEL_61:
    v111 = v45;
    v80 = 0;
    goto LABEL_62;
  }

  if (v1 == 4)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = v0[30];
    v28 = v0[23];
    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    sub_10010BD38(v28, v27, type metadata accessor for CustodianRecoveryData);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[30];
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v116[0] = v35;
      *v34 = 136315138;
      v36 = sub_10011038C();
      v38 = v37;
      sub_10010C048(v33, type metadata accessor for CustodianRecoveryData);
      v39 = sub_10021145C(v36, v38, v116);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received spakeComplete push with data: %s", v34, 0xCu);
      sub_10000839C(v35);
    }

    else
    {

      sub_10010C048(v33, type metadata accessor for CustodianRecoveryData);
    }

    v73 = sub_100109C50(v0[23]);
    if (v73)
    {
      sub_1001005EC(v73, v74, v9);
LABEL_60:
      swift_unknownObjectRelease();

LABEL_63:

      v115 = v0[1];

      return v115();
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v0[16] = -9009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = v0[15];
    if (v9)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v46 = v0[29];
  v47 = v0[23];
  v48 = type metadata accessor for Logger();
  sub_100008D04(v48, qword_1003FAA88);
  sub_10010BD38(v47, v46, type metadata accessor for CustodianRecoveryData);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[29];
  if (v51)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v116[0] = v54;
    *v53 = 136315138;
    v55 = sub_10011038C();
    v57 = v56;
    sub_10010C048(v52, type metadata accessor for CustodianRecoveryData);
    v58 = sub_10021145C(v55, v57, v116);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "Received spakeError push with data: %s", v53, 0xCu);
    sub_10000839C(v54);
  }

  else
  {

    sub_10010C048(v52, type metadata accessor for CustodianRecoveryData);
  }

  v75 = swift_task_alloc();
  v0[35] = v75;
  *v75 = v0;
  v75[1] = sub_1000FC000;
  v76 = v0[23];

  return sub_100102BDC(v76, v9);
}

uint64_t sub_1000FC000()
{

  return _swift_task_switch(sub_1000FC0FC, 0, 0);
}

uint64_t sub_1000FC0FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000FC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v24 = a2;
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      log = v15;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, log, v16, "Failed to get configuration with error: %@, starting session with default values", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }

    a2 = v24;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = (a2 + 32);
    do
    {
      v22 = *v21++;
      v25 = v22;
      swift_unknownObjectRetain();
      sub_1000FC3A0(&v25, a3, a4, a5, a6, a7, a8);
      swift_unknownObjectRelease();
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1000FC3A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v38 = a5;
  v39 = a6;
  v37 = type metadata accessor for UUID();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA88);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Generating new session with completion and code", v18, 2u);
  }

  v19 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(v14 + v19, v13, type metadata accessor for CustodianRecoveryData);

  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + 16);
      v22 = v21;
    }

    else
    {
      v21 = 0;
    }

    type metadata accessor for CustodianSessionManager(0);
    v26 = sub_10011747C(v21, v13, v38, v39);
    v28 = v27;
    swift_unknownObjectRelease();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();

      v29 = v35;
      v30 = v14 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      v31 = v34;
      v32 = v37;
      (*(v35 + 16))(v34, v30, v37);
      sub_100116210(v31, v36, 0);
      swift_unknownObjectRelease();
      (*(v29 + 8))(v31, v32);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000FCE70(v26, v28, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpectedly found nil while unwrapping self...", v25, 2u);
    }
  }

  return sub_10010C048(v13, type metadata accessor for CustodianRecoveryData);
}

uint64_t sub_1000FC804(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = a1[1];
  if (v10)
  {
    v34 = v7;
    v35 = a2;
    v11 = v2;
    v12 = *a1;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Looking for existing sessions to start code verification", v16, 2u);
    }

    v17 = sub_100116ADC(v12, v10);
    if (v17[2])
    {
      v18 = __chkstk_darwin(v17);
      *(&v33 - 4) = a1;
      *(&v33 - 3) = v11;
      *(&v33 - 2) = v35;
      sub_10003A4CC(sub_10010E45C, (&v33 - 6), v18);
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v35;
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Found no active sessions for recovery. Starting a session and waiting for user to enter a code...", v31, 2u);
    }

    sub_1000FDF50(a1);
    v32 = v34;
    if (v30)
    {
      [v30 updateTaskResultWithError:0];
    }

    (*(v32 + 16))(v9, v11 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v6);
    Dependency.wrappedValue.getter();
    (*(v32 + 8))(v9, v6);
    swift_getObjectType();
    sub_100246FA8(v30);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No recovery session id in the incoming RecoveryData, unable to proceed...", v23, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v36 = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = v37;
    v25 = v37;
    if (a2)
    {
      v26 = _convertErrorToNSError(_:)();
      [a2 updateTaskResultWithError:v26];
    }

    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v9, v6);
    swift_getObjectType();
    sub_100246FA8(a2);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000FCCF8(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating session with incoming data from IdMS", v11, 2u);
  }

  ObjectType = swift_getObjectType();
  v13 = (*(v7 + 48))(v15, ObjectType, v7);
  sub_10010E8E8(a2);
  v13(v15, 0);
  return sub_1000FCE70(v6, v7, a4);
}

uint64_t sub_1000FCE70(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v126 = *(v6 - 8);
  __chkstk_darwin(v6);
  v125 = &v108 - v7;
  v8 = sub_100005814(&qword_1003DDEA8, &qword_100342828);
  v121 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v108 - v9;
  v120 = type metadata accessor for CustodianRecoveryData(0);
  v11 = __chkstk_darwin(v120);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v108 - v14);
  ObjectType = swift_getObjectType();
  v17 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v17, v15, type metadata accessor for CustodianRecoveryData);
  v128 = v15;
  v18 = v15[5];
  if (!v18)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAA88);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Stored session did not contain a recovery code", v50, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v133 = -9010;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = aBlock[0];
    v52 = aBlock[0];
    if (a3)
    {
      v53 = _convertErrorToNSError(_:)();
      [a3 updateTaskResultWithError:v53];
    }

    v72 = v126;
    v73 = v125;
    (*(v126 + 16))(v125, v127 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v6);
    Dependency.wrappedValue.getter();
    (*(v72 + 8))(v73, v6);
    goto LABEL_29;
  }

  v122 = v6;
  v19 = v128[1];
  v124 = a2;
  v123 = a1;
  if (!v19)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100008D04(v54, qword_1003FAA88);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v122;
    v59 = v127;
    if (v57)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing recovery session ID", v60, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v133 = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v61 = aBlock[0];
    v62 = v123;
    swift_unknownObjectRetain();
    v51 = v61;
    sub_100108BC8(v62, v124, v51, 0);
    swift_unknownObjectRelease();
    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_20:
    v63 = _convertErrorToNSError(_:)();
    [a3 updateTaskResultWithError:v63];

LABEL_21:
    v64 = v126;
    v65 = v125;
    (*(v126 + 16))(v125, v59 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v58);
    Dependency.wrappedValue.getter();
    (*(v64 + 8))(v65, v58);
LABEL_29:
    swift_getObjectType();
    sub_100246FA8(a3);

    swift_unknownObjectRelease();
    return sub_10010C048(v128, type metadata accessor for CustodianRecoveryData);
  }

  v109 = v17;
  v110 = v13;
  v20 = v128[4];
  v117 = *v128;
  v21 = sub_10010B538(v128);
  v119 = v24;
  if (!v24)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100008D04(v66, qword_1003FAA88);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = os_log_type_enabled(v67, v68);
    v58 = v122;
    v59 = v127;
    if (v69)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "AAData malformed in session", v70, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v133 = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = aBlock[0];
    v71 = swift_unknownObjectRetain();
    sub_100108BC8(v71, v124, v51, 0);
    swift_unknownObjectRelease();
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v112 = v18;
  v113 = v20;
  v116 = a3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100008D04(v28, qword_1003FAA88);

  v30 = v25;
  v31 = v25;
  v32 = v119;
  sub_10010B994(v30, v119, v26, v27);
  v33 = v27;
  v111 = v29;
  v34 = v31;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v115 = v26;
  v118 = v33;
  sub_10010B9E0(v34, v32, v26, v33);
  v37 = os_log_type_enabled(v35, v36);
  v108 = ObjectType;
  if (v37)
  {
    v38 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10021145C(v117, v19, aBlock);
    *(v38 + 12) = 2080;

    v39 = sub_10021145C(v34, v32, aBlock);

    *(v38 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "Verifying custodian message session with RecoveryID: %s, SpakeID: %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  v40 = v115;
  v41 = v118;
  sub_100015D6C(v115, v118);
  sub_100012324(v40, v41);
  v42 = sub_100170228(v34, v32);
  v43 = v34;
  v45 = v44;
  v46 = v121;
  (*(v121 + 16))(v10, v127 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory, v8);
  Dependency.wrappedValue.getter();
  (*(v46 + 8))(v10, v8);
  sub_1000080F8(aBlock, v130);
  sub_100118250(&v133);
  v114 = v43;
  v117 = v42;
  v121 = v45;
  sub_10000839C(aBlock);
  v74 = v119;

  sub_100015D6C(v40, v41);
  sub_100012324(v40, v41);
  v75 = v124;
  v76 = *(v124 + 48);
  v77 = v123;
  v78 = v108;
  v79 = v76(aBlock, v108, v124);
  *(v80 + 16) = v43;
  *(v80 + 24) = v74;

  v79(aBlock, 0);
  sub_100040738(&v133, aBlock);
  v81 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
  swift_beginAccess();
  sub_10010BA98(aBlock, v77 + v81);
  swift_endAccess();
  sub_10010C2DC(v77, v75, 0);
  v82 = v40;
  v84 = v78;
  v85 = sub_10010CC84(v77, v75, 0);
  v86 = v127;
  v87 = v85;
  v89 = v88;
  v90 = v76(aBlock, v84, v75);
  v92 = (v91 + *(v120 + 44));
  v93 = *v92;
  v94 = v92[1];
  *v92 = v87;
  v92[1] = v89;
  sub_100015D58(v93, v94);
  v90(aBlock, 0);
  v95 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianKeyExchangeSendMessage altDSID:0 flowID:0];
  v96 = v110;
  sub_10010BD38(v77 + v109, v110, type metadata accessor for CustodianRecoveryData);
  v97 = sub_10010ABFC(v96, 1);
  sub_10010C048(v96, type metadata accessor for CustodianRecoveryData);
  v98 = sub_1000080F8((v86 + 24), *(v86 + 48));
  v99 = swift_allocObject();
  v99[3] = 0;
  v99[4] = 0;
  v99[2] = v95;
  v100 = *v98;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_10010E5C4;
  *(v101 + 24) = v99;
  v131 = sub_10010E58C;
  v132 = v101;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013BB5C;
  v130 = &unk_1003A9BE8;
  v102 = _Block_copy(aBlock);

  v103 = v95;

  [v100 startCustodianRecoveryTransactionWithContext:v97 completion:v102];
  _Block_release(v102);

  v104 = v116;
  if (v116)
  {
    [v116 updateTaskResultWithError:0];
  }

  v105 = v126;
  v106 = v125;
  v107 = v122;
  (*(v126 + 16))(v125, v127 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v122);
  Dependency.wrappedValue.getter();
  (*(v105 + 8))(v106, v107);
  swift_getObjectType();
  sub_100246FA8(v104);
  sub_100012324(v117, v121);
  swift_unknownObjectRelease();
  sub_10010B9E0(v114, v119, v82, v118);
  sub_10000839C(&v133);
  return sub_10010C048(v128, type metadata accessor for CustodianRecoveryData);
}

uint64_t sub_1000FDF50(uint64_t a1)
{
  v3 = type metadata accessor for CustodianRecoveryData(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10010BD38(a1, v9, type metadata accessor for CustodianRecoveryData);
  sub_10010BD38(v9, v7, type metadata accessor for CustodianRecoveryData);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_10010C274(v9, v12 + v11, type metadata accessor for CustodianRecoveryData);
  if (v1[2])
  {

    sub_1000FE214(0, v10, v7);
  }

  else
  {
    v20[1] = sub_1000080F8(v1 + 3, v1[6]);
    v14 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
    v13 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
    v16 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
    v15 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_10010E304;
    v18[4] = v12;

    sub_10011A4E8(v14, v13, v16, v15, sub_10010E37C, v18);
  }

  sub_10010C048(v7, type metadata accessor for CustodianRecoveryData);
}

void sub_1000FE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get configuration with error: %@, starting session with default values", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + 16);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }

    type metadata accessor for CustodianSessionManager(0);
    sub_100117570(v11, a3);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1000FE450(uint64_t a1, uint64_t a2, void *a3)
{
  v84 = a3;
  v81 = a2;
  v80 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v72 - v4;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v82 = type metadata accessor for UUID();
  v8 = *(v82 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v82);
  v11 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v72 - v12;
  v14 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(v18, v16, type metadata accessor for CustodianRecoveryData);
  v74 = sub_10010B538(v16);
  v20 = v19;
  v76 = v21;
  v77 = v22;
  sub_10010C048(v16, type metadata accessor for CustodianRecoveryData);
  v75 = v20;
  if (v20)
  {
    sub_100012D04(v18 + *(v14 + 28), v7, &qword_1003D8B60, &unk_10033F210);
    if ((*(v8 + 48))(v7, 1, v82) == 1)
    {
      sub_100008D3C(v7, &qword_1003D8B60, &unk_10033F210);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAA88);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Missing custodian UUID", v26, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      *&v85 = -9011;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      v27 = v87[0];
      swift_unknownObjectRetain();
      v28 = v27;
      sub_100108BC8(v17, v81, v28, 3);
      swift_unknownObjectRelease();
      if (v84)
      {
        v29 = _convertErrorToNSError(_:)();
        [v84 updateTaskResultWithError:v29];
      }

      v30 = v79;
      v31 = v78;
      v32 = v80;
      (*(v79 + 16))(v78, v83 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v80);
      Dependency.wrappedValue.getter();
      (*(v30 + 8))(v31, v32);
      swift_getObjectType();
      sub_100246FA8(v84);

      swift_unknownObjectRelease();
      sub_10010B9E0(v74, v75, v76, v77);
    }

    else
    {
      v43 = v8;
      v44 = *(v8 + 32);
      v44(v13, v7, v82);
      v45 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
      swift_beginAccess();
      sub_100012D04(v17 + v45, &v85, &qword_1003DE300, &qword_100342838);
      if (v86)
      {
        sub_10003E950(&v85, v87);
        v46 = v83;
        v80 = sub_1000080F8((v83 + 64), *(v83 + 88));
        swift_unownedRetainStrong();
        swift_unownedRetain();
        swift_unownedRetain();

        v47 = *(v8 + 16);
        v73 = v44;
        v48 = v82;
        v47(v11, v13, v82);
        sub_100040738(v87, &v85);
        v49 = (*(v8 + 80) + 48) & ~*(v8 + 80);
        v50 = (v9 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
        v78 = v13;
        v51 = v84;
        v52 = v48;
        v79 = v43;
        v53 = swift_allocObject();
        *(v53 + 2) = v46;
        *(v53 + 3) = v51;
        v54 = v81;
        *(v53 + 4) = v17;
        *(v53 + 5) = v54;
        v73(&v53[v49], v11, v52);
        sub_10003E950(&v85, &v53[v50]);
        v55 = &v53[(v50 + 47) & 0xFFFFFFFFFFFFFFF8];
        v56 = v74;
        v57 = v75;
        *v55 = v74;
        *(v55 + 1) = v57;
        v58 = v76;
        v59 = v77;
        *(v55 + 2) = v76;
        *(v55 + 3) = v59;
        v60 = v51;
        swift_unknownObjectRetain();
        sub_10010B994(v56, v57, v58, v59);
        v61 = v78;
        sub_100020600(v78, sub_10010C1B4, v53);
        swift_unownedRelease();

        sub_10010B9E0(v56, v57, v58, v59);
        sub_10000839C(v87);
        (*(v79 + 8))(v61, v52);
      }

      else
      {
        sub_100008D3C(&v85, &qword_1003DE300, &qword_100342838);
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100008D04(v62, qword_1003FAA88);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "Missing spake verifier", v65, 2u);
        }

        type metadata accessor for AACustodianRecoveryError(0);
        *&v85 = -9014;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
        _BridgedStoredNSError.init(_:userInfo:)();
        v66 = v87[0];
        swift_unknownObjectRetain();
        v67 = v66;
        sub_100108BC8(v17, v81, v67, 3);
        swift_unknownObjectRelease();
        if (v84)
        {
          v68 = _convertErrorToNSError(_:)();
          [v84 updateTaskResultWithError:v68];
        }

        v69 = v79;
        v70 = v78;
        v71 = v80;
        (*(v79 + 16))(v78, v83 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v80);
        Dependency.wrappedValue.getter();
        (*(v69 + 8))(v70, v71);
        swift_getObjectType();
        sub_100246FA8(v84);

        swift_unknownObjectRelease();
        sub_10010B9E0(v74, v75, v76, v77);

        (*(v8 + 8))(v13, v82);
      }
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Malformed recovery data", v36, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    *&v85 = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v87[0];
    swift_unknownObjectRetain();
    v38 = v37;
    sub_100108BC8(v17, v81, v38, 3);
    swift_unknownObjectRelease();
    if (v84)
    {
      v39 = _convertErrorToNSError(_:)();
      [v84 updateTaskResultWithError:v39];
    }

    v40 = v79;
    v41 = v78;
    v42 = v80;
    (*(v79 + 16))(v78, v83 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v80);
    Dependency.wrappedValue.getter();
    (*(v40 + 8))(v41, v42);
    swift_getObjectType();
    sub_100246FA8(v84);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000FF02C(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v153 = a8;
  v158 = a7;
  *&v162 = a6;
  v165 = a5;
  v170 = a4;
  v169 = a3;
  v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v11 - 8);
  v155 = &v149 - v12;
  v156 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v156);
  v154 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecoveryKeys(0);
  __chkstk_darwin(v14);
  v163 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for UUID();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v17 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  __chkstk_darwin(v18);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v149 - v21;
  v22 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v22);
  v24 = &v149 - v23;
  sub_100012D04(a1, &v149 - v23, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v169;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = _convertErrorToNSError(_:)();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to fetch recovery records with error: %@", v30, 0xCu);
      sub_100008D3C(v31, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v33 = sub_100256804(-9015, v171, v172);
    swift_unownedRetainStrong();
    swift_errorRetain();
    v34 = swift_unknownObjectRetain();
    sub_100108BC8(v34, v165, v33, 3);
    swift_unknownObjectRelease();
    if (v29)
    {
      v35 = _convertErrorToNSError(_:)();
      [v29 updateTaskResultWithError:v35];
    }

    v36 = v167;
    v37 = v166;
    v38 = v168;
    (*(v167 + 16))(v166, &a2[OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter], v168);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v37, v38);
    swift_getObjectType();
    sub_100246FA8(v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v164 = a2;
    sub_10010C274(v24, v20, type metadata accessor for CustodianRecoveryInfoRecord);
    v40 = &v20[v18[8]];
    v41 = *(v40 + 1) >> 60 == 15;
    v42 = v20;
    v157 = v20;
    if (v41)
    {
      *&v161 = v40;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100008D04(v43, qword_1003FAA88);
      v44 = v159;
      v45 = v160;
      (*(v159 + 16))(v17, v162, v160);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *&v162 = swift_slowAlloc();
        aBlock[0] = v162;
        *v48 = 136315138;
        sub_10010BB40(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v44 + 8))(v17, v45);
        v52 = sub_10021145C(v49, v51, aBlock);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "Records do not contain recoveryKey for this UUID: %s, likely non-CDP account", v48, 0xCu);
        sub_10000839C(v162);

        v42 = v157;
      }

      else
      {

        (*(v44 + 8))(v17, v45);
      }

      v40 = v161;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    v54 = sub_100008D04(v53, qword_1003FAA88);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v163;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Creating Message with RKC + PRKC + otCustodianID for owner device", v59, 2u);
    }

    v60 = (v42 + v18[7]);
    v161 = *v60;
    v162 = *v40;
    sub_100012D04(v42 + v18[11], v58 + *(v14 + 28), &qword_1003D8B60, &unk_10033F210);
    v61 = (v42 + v18[12]);
    v63 = *v61;
    v62 = v61[1];
    v64 = v162;
    *v58 = v161;
    *(v58 + 16) = v64;
    *(v58 + 32) = 0;
    *(v58 + 40) = 0;
    v65 = (v58 + *(v14 + 32));
    *v65 = v63;
    v65[1] = v62;
    swift_unownedRetainStrong();
    sub_100015D6C(v161, *(&v161 + 1));
    sub_100052704(v162, *(&v162 + 1));

    v66 = sub_1002B4174(v58);
    if (v67 >> 60 == 15)
    {
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Failed encoding message with keys", v70, 2u);
      }

      v71 = v164;
      swift_unownedRetainStrong();
      type metadata accessor for AACustodianRecoveryError(0);
      aBlock[6] = -9018;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      v72 = aBlock[0];
      v73 = v170;
      swift_unknownObjectRetain();
      v74 = v72;
      sub_100108BC8(v73, v165, v74, 3);
      swift_unknownObjectRelease();
      v75 = v169;
      if (v169)
      {
        v76 = _convertErrorToNSError(_:)();
        [v75 updateTaskResultWithError:v76];
      }

      v77 = v167;
      v78 = v166;
      v79 = v168;
      (*(v167 + 16))(v166, &v71[OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter], v168);
      Dependency.wrappedValue.getter();
      (*(v77 + 8))(v78, v79);
      swift_getObjectType();
      sub_100246FA8(v75);

      swift_unknownObjectRelease();
      v85 = v58;
    }

    else
    {
      v80 = v67;
      *&v161 = v54;
      v81 = v158[3];
      v82 = v158[4];
      v83 = v66;
      sub_1000080F8(v158, v81);
      v84 = *(v82 + 56);
      *&v162 = v83;
      v86 = v84(v83, v80, v81, v82);
      v88 = v87;
      v158 = v80;
      ObjectType = swift_getObjectType();
      swift_unownedRetainStrong();

      v152 = v86;
      v151 = v88;
      v90 = Data.base64EncodedString(options:)(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      inited = swift_initStackObject();
      v150 = v63;
      v92 = inited;
      *(inited + 16) = xmmword_10033E5C0;
      strcpy((inited + 32), "spakeMessage");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v90;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 80), "spakeSessionId");
      *(inited + 120) = &type metadata for String;
      v93 = v153;
      *(inited + 95) = -18;
      *(inited + 96) = v93;
      *(inited + 104) = a9;

      v94 = sub_100308978(v92);
      swift_setDeallocating();
      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002D2194(v94);

      v95 = sub_100255878();
      v97 = v96;
      v98 = v165;
      v99 = *(v165 + 48);
      v100 = v99(aBlock, ObjectType, v165);
      v101 = v156;
      v103 = (v102 + *(v156 + 44));
      v104 = *v103;
      v105 = v103[1];
      *v103 = v95;
      v103[1] = v97;
      sub_100015D58(v104, v105);
      v100(aBlock, 0);
      v106 = *v60;
      v107 = v60[1];
      sub_100015D6C(*v60, v107);
      v108 = v170;
      v109 = v99(aBlock, ObjectType, v98);
      v111 = (v110 + *(v101 + 40));
      v112 = *v111;
      v113 = v111[1];
      *v111 = v106;
      v111[1] = v107;
      sub_100015D58(v112, v113);
      v109(aBlock, 0);

      v114 = v99(aBlock, ObjectType, v98);
      v115 = v101;
      v116 = v114;
      v118 = (v117 + *(v101 + 64));
      *v118 = v150;
      v118[1] = v62;
      v119 = v164;

      v116(aBlock, 0);
      swift_unownedRetainStrong();
      v120 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianKeyExchangeSendMessage altDSID:0 flowID:0];
      v121 = v108 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
      swift_beginAccess();
      v122 = v154;
      sub_10010BD38(v121, v154, type metadata accessor for CustodianRecoveryData);
      v123 = sub_10010ABFC(v122, 4);
      sub_10010C048(v122, type metadata accessor for CustodianRecoveryData);
      v124 = sub_1000080F8(v119 + 3, *(v119 + 6));
      v125 = swift_allocObject();
      v125[3] = 0;
      v125[4] = 0;
      v125[2] = v120;
      v126 = *v124;
      v127 = swift_allocObject();
      *(v127 + 16) = sub_10010E5C4;
      *(v127 + 24) = v125;
      aBlock[4] = sub_10010E58C;
      aBlock[5] = v127;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10013BB5C;
      aBlock[3] = &unk_1003A9B20;
      v128 = _Block_copy(aBlock);
      v129 = v120;

      [v126 startCustodianRecoveryTransactionWithContext:v123 completion:v128];
      _Block_release(v128);

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&_mh_execute_header, v130, v131, "Spake session for custodian device complete! Terminating session", v133, 2u);
      }

      v134 = [objc_allocWithZone(AACustodianRecoveryRequestContext) init];
      v135 = v159;
      if (*(v121 + 8))
      {

        v136 = String._bridgeToObjectiveC()();
      }

      else
      {
        v136 = 0;
      }

      v137 = v169;
      v138 = v163;
      [v134 setRecoverySessionID:v136];

      v139 = v155;
      sub_100012D04(v121 + *(v115 + 28), v155, &qword_1003D8B60, &unk_10033F210);
      v140 = v160;
      if ((*(v135 + 48))(v139, 1, v160) == 1)
      {
        isa = 0;
      }

      else
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v135 + 8))(v139, v140);
      }

      [v134 setCustodianUUID:isa];

      if (*(v121 + *(v115 + 64) + 8))
      {

        v142 = String._bridgeToObjectiveC()();
      }

      else
      {
        v142 = 0;
      }

      v143 = v158;
      [v134 setRecordBuildVersion:v142];

      swift_unownedRetainStrong();
      swift_unknownObjectRetain();

      v144 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      v145 = v134;
      sub_100116210(v170 + v144, v134, 0);

      swift_unknownObjectRelease();
      swift_unownedRetainStrong();
      if (v137)
      {
        [v137 updateTaskResultWithError:0];
      }

      v146 = v167;
      v147 = v166;
      v148 = v168;
      (*(v167 + 16))(v166, &v119[OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter], v168);
      Dependency.wrappedValue.getter();
      (*(v146 + 8))(v147, v148);
      swift_getObjectType();
      sub_100246FA8(v137);
      swift_unknownObjectRelease();
      sub_100012324(v152, v151);
      sub_100015D58(v162, v143);

      v85 = v138;
    }

    sub_10010C048(v85, type metadata accessor for CustodianRecoveryKeys);
    return sub_10010C048(v157, type metadata accessor for CustodianRecoveryInfoRecord);
  }
}

void sub_1001005EC(uint64_t a1, uint64_t a2, void *a3)
{
  v127 = a2;
  v124 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v6 = &v112 - v5;
  v7 = sub_100005814(&qword_1003DDEC8, qword_100342850);
  __chkstk_darwin(v7 - 8);
  v9 = &v112 - v8;
  v10 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v10);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v13, v12, type metadata accessor for CustodianRecoveryData);
  v14 = sub_10010B538(v12);
  v16 = v15;
  v126 = v17;
  v19 = v18;
  sub_10010C048(v12, type metadata accessor for CustodianRecoveryData);
  if (v16)
  {
    v122 = v16;
    v20 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
    swift_beginAccess();
    sub_100012D04(a1 + v20, &aBlock, &qword_1003DE300, &qword_100342838);
    if (v130)
    {
      v118 = v14;
      v120 = a3;
      sub_10003E950(&aBlock, v134);
      v21 = v135;
      v22 = v136;
      sub_1000080F8(v134, v135);
      v23 = *(v22 + 48);
      v119 = v19;
      v48 = v23(v126, v19, v21, v22);
      v50 = v49;
      v51 = type metadata accessor for CustodianRecoveryKeys(0);
      v116 = swift_allocBox();
      v53 = v52;
      *&aBlock = 0;
      v117 = v50;
      sub_1001DC120(v9);

      if ((*(*(v51 - 8) + 48))(v9, 1, v51) == 1)
      {
        v54 = v48;
        sub_100008D3C(v9, &qword_1003DDEC8, qword_100342850);
        swift_deallocBox();
        v55 = v120;
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_100008D04(v56, qword_1003FAA88);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        v59 = os_log_type_enabled(v57, v58);
        v60 = v125;
        if (v59)
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "Message did not contain needed keys", v61, 2u);
        }

        type metadata accessor for AACustodianRecoveryError(0);
        v133 = -9019;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
        _BridgedStoredNSError.init(_:userInfo:)();
        v62 = aBlock;
        swift_unknownObjectRetain();
        v63 = v62;
        sub_100108BC8(a1, v127, v63, 5);
        swift_unknownObjectRelease();
        if (v55)
        {
          v64 = _convertErrorToNSError(_:)();
          [v55 updateTaskResultWithError:v64];
        }

        v65 = v123;
        v66 = v124;
        (*(v123 + 16))(v6, v60 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v124);
        Dependency.wrappedValue.getter();
        (*(v65 + 8))(v6, v66);
        swift_getObjectType();
        sub_100246FA8(v55);

        swift_unknownObjectRelease();
        sub_10010B9E0(v118, v122, v126, v119);
        v67 = v54;
      }

      else
      {
        v124 = v48;
        sub_10010C274(v9, v53, type metadata accessor for CustodianRecoveryKeys);
        v68 = *v53;
        v69 = v53[1];
        sub_100015D6C(*v53, v69);
        v70 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v70._countAndFlagsBits;
        sub_100012324(v68, v69);
        v71 = v53;
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        v73 = sub_100008D04(v72, qword_1003FAA88);

        v123 = v73;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        v76 = os_log_type_enabled(v74, v75);
        v115 = v51;
        if (v76)
        {
          v77 = swift_slowAlloc();
          v112 = v74;
          v78 = v77;
          v79 = swift_slowAlloc();
          *&aBlock = v79;
          *v78 = 136315138;
          v80 = v71;
          v81 = sub_10021145C(countAndFlagsBits, v70._object, &aBlock);

          *(v78 + 4) = v81;
          v71 = v80;
          v82 = v75;
          v83 = v112;
          _os_log_impl(&_mh_execute_header, v112, v82, "Spake Complete received with PRKC: %s", v78, 0xCu);
          sub_10000839C(v79);
        }

        else
        {
        }

        v114 = v71;
        v84 = *v71;
        v85 = v71[1];
        v86 = v127;
        v87 = *(v127 + 48);
        sub_100015D6C(v84, v85);
        v88 = v87(&aBlock, ObjectType, v86);
        v90 = (v89 + *(v10 + 40));
        v91 = *v90;
        v92 = v90[1];
        *v90 = v84;
        v90[1] = v85;
        sub_100015D58(v91, v92);
        v88(&aBlock, 0);
        v93 = (v114 + *(v115 + 32));
        v95 = *v93;
        v94 = v93[1];

        v96 = v87(&aBlock, ObjectType, v86);
        v98 = (v97 + *(v10 + 64));
        *v98 = v95;
        v98[1] = v94;

        v96(&aBlock, 0);
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "Calling IdMS to verify transaction", v101, 2u);
        }

        sub_10010BD38(a1 + v13, v12, type metadata accessor for CustodianRecoveryData);
        v102 = sub_10010ABFC(v12, 4);
        sub_10010C048(v12, type metadata accessor for CustodianRecoveryData);
        v103 = sub_1000080F8((v125 + 24), *(v125 + 48));
        v104 = swift_allocObject();
        swift_weakInit();
        v105 = swift_allocObject();
        v105[2] = v116;
        v105[3] = v104;
        v106 = v127;
        v105[4] = a1;
        v105[5] = v106;
        v107 = v120;
        v105[6] = v120;
        v108 = *v103;
        v109 = swift_allocObject();
        *(v109 + 16) = sub_10010BFE4;
        *(v109 + 24) = v105;
        v131 = sub_10010C030;
        v132 = v109;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v129 = sub_10010AB64;
        v130 = &unk_1003A9A80;
        v110 = _Block_copy(&aBlock);
        v111 = v107;

        swift_unknownObjectRetain();

        [v108 fetchCustodianRecoveryTokenWithContext:v102 completion:v110];
        _Block_release(v110);
        sub_10010B9E0(v118, v122, v126, v119);

        v67 = v124;
      }

      sub_100012324(v67, v117);
      sub_10000839C(v134);
    }

    else
    {
      v35 = v14;
      v36 = v19;
      sub_100008D3C(&aBlock, &qword_1003DE300, &qword_100342838);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAA88);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v125;
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Missing verifier", v42, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v134[0] = -9014;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      v43 = aBlock;
      swift_unknownObjectRetain();
      v44 = v43;
      sub_100108BC8(a1, v127, v44, 5);
      swift_unknownObjectRelease();
      if (a3)
      {
        v45 = _convertErrorToNSError(_:)();
        [a3 updateTaskResultWithError:v45];
      }

      v46 = v123;
      v47 = v124;
      (*(v123 + 16))(v6, v41 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v124);
      Dependency.wrappedValue.getter();
      (*(v46 + 8))(v6, v47);
      swift_getObjectType();
      sub_100246FA8(a3);

      swift_unknownObjectRelease();
      sub_10010B9E0(v35, v122, v126, v36);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v125;
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Parsing AAData failed or no keys were found for SPAKE Complete step...", v29, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v134[0] = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v30 = aBlock;
    swift_unknownObjectRetain();
    v31 = v30;
    sub_100108BC8(a1, v127, v31, 5);
    swift_unknownObjectRelease();
    if (a3)
    {
      v32 = _convertErrorToNSError(_:)();
      [a3 updateTaskResultWithError:v32];
    }

    v33 = v123;
    v34 = v124;
    (*(v123 + 16))(v6, v28 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v124);
    Dependency.wrappedValue.getter();
    (*(v33 + 8))(v6, v34);
    swift_getObjectType();
    sub_100246FA8(a3);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100101738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v43 = a6;
  v44 = a8;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for CustodianRecoveryKeys(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_projectBox();
  v19 = qword_1003D7F38;
  if (a3)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_10010C038(a1, a2, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed obtaining CRT with error: %@", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v26 = sub_100256804(-9016, v45, v46);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v28 = (Strong + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
      *v28 = 0;
      v28[1] = 0;
      v29 = Strong;

      v30 = (v29 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
      *v30 = 0;
      v30[1] = 0;

      sub_100116210(v43 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v26, 1);
    }

    swift_beginAccess();
    v31 = swift_weakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v33 = v44;
      if (v44)
      {
        swift_errorRetain();
        v34 = _convertErrorToNSError(_:)();
        [v33 updateTaskResultWithError:v34];
      }

      else
      {
        swift_errorRetain();
      }

      v41 = v42;
      (*(v42 + 16))(v14, v32 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v12);
      Dependency.wrappedValue.getter();
      (*(v41 + 8))(v14, v12);
      swift_getObjectType();
      sub_100246FA8(v33);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v35 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA88);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Successfully obtained CRT from IdMS, SPAKE flow verified", v39, 2u);
    }

    swift_beginAccess();
    *(v35 + 32) = a1;
    *(v35 + 40) = a2;

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      sub_10010BD38(v35, v17, type metadata accessor for CustodianRecoveryKeys);
      sub_100101C90(v43, a7, v17, v44);

      return sub_10010C048(v17, type metadata accessor for CustodianRecoveryKeys);
    }
  }

  return result;
}

uint64_t sub_100101C90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = a4;
  v54 = a2;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v57 = &v52 - v7;
  v8 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v53 = &v52 - v9;
  v10 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for CustodianRecoveryKeys(0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100005814(&unk_1003D9240, &unk_10033ECC0);
  __chkstk_darwin(v16 - 8);
  v18 = &v52 - v17;
  v19 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3;
  sub_10010BD38(a3, v15, type metadata accessor for CustodianRecoveryKeys);
  v24 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v24, v12, type metadata accessor for CustodianRecoveryData);
  sub_1000F60A4(v15, v12, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = v60;
    v26 = v61;
    sub_100008D3C(v18, &unk_1003D9240, &unk_10033ECC0);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = v25;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to generate recovery session record", v31, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v62[5] = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v62[0];
    v33 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
    v34 = v62[0];
    sub_100116210(a1 + v33, v32, 1);

    v35 = v26;
    v36 = v34;
    if (v26)
    {
      v37 = _convertErrorToNSError(_:)();
      [v26 updateTaskResultWithError:v37];
    }

    v49 = v57;
    v50 = v58;
    v51 = v59;
    (*(v58 + 16))(v57, v30 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v59);
    Dependency.wrappedValue.getter();
    (*(v50 + 8))(v49, v51);
    swift_getObjectType();
    sub_100246FA8(v35);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10010C274(v18, v22, type metadata accessor for CustodianRecoverySessionRecord);
    v38 = sub_1000080F8((v60 + 104), *(v60 + 128));
    v39 = swift_allocObject();
    swift_weakInit();
    sub_10010BD38(v23, &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryKeys);
    v40 = (*(v52 + 80) + 48) & ~*(v52 + 80);
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = a1;
    v42 = v61;
    v41[4] = v54;
    v41[5] = v42;
    sub_10010C274(v15, v41 + v40, type metadata accessor for CustodianRecoveryKeys);
    v43 = *v38;
    v45 = v55;
    v44 = v56;
    v46 = v53;
    (*(v55 + 16))(v53, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v56);
    v47 = v42;
    swift_unknownObjectRetain();
    Dependency.wrappedValue.getter();
    (*(v45 + 8))(v46, v44);
    sub_1000080F8(v62, v62[3]);
    sub_10017EF04(v22, 0, 2, sub_10010BF1C, v41);

    sub_10010C048(v22, type metadata accessor for CustodianRecoverySessionRecord);
    return sub_10000839C(v62);
  }
}

uint64_t sub_1001023B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v53 = a5;
  v54 = a3;
  v8 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  sub_100012D04(a1, &v51 - v15, &qword_1003DA0F0, qword_100342AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v53;
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to store generated recovery session record with error: %@", v22, 0xCu);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v25 = sub_100256804(-9029, v55, v56);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();

      v26 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      swift_errorRetain();
      sub_100116210(v54 + v26, v25, 1);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      swift_errorRetain();
      if (v21)
      {
        v29 = _convertErrorToNSError(_:)();
        [v21 updateTaskResultWithError:v29];
      }

      v50 = v52;
      (*(v52 + 16))(v13, v28 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v11);
      Dependency.wrappedValue.getter();
      (*(v50 + 8))(v13, v11);
      swift_getObjectType();
      sub_100246FA8(v21);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Session stored successfully, terminating session", v33, 2u);
    }

    v34 = [objc_allocWithZone(AACustodianRecoveryRequestContext) init];
    v35 = v54 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    if (*(v35 + 8))
    {

      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    [v34 setRecoverySessionID:v36];

    v38 = type metadata accessor for CustodianRecoveryData(0);
    sub_100012D04(v35 + *(v38 + 28), v10, &qword_1003D8B60, &unk_10033F210);
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    isa = 0;
    if ((*(v40 + 48))(v10, 1, v39) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v10, v39);
    }

    [v34 setCustodianUUID:isa];

    if (*(a6 + 40))
    {
      v42 = String._bridgeToObjectiveC()();
    }

    else
    {
      v42 = 0;
    }

    v43 = v53;
    [v34 setCustodianRecoveryToken:v42];

    if (*(a6 + *(type metadata accessor for CustodianRecoveryKeys(0) + 32) + 8))
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v34 setRecordBuildVersion:v44];

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();

      v45 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      v46 = v34;
      sub_100116210(v54 + v45, v34, 0);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v47 = swift_weakLoadStrong();
    if (v47)
    {
      v48 = v47;
      if (v43)
      {
        [v43 updateTaskResultWithError:0];
      }

      v49 = v52;
      (*(v52 + 16))(v13, v48 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v11);
      Dependency.wrappedValue.getter();
      (*(v49 + 8))(v13, v11);
      swift_getObjectType();
      sub_100246FA8(v43);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return sub_100008D3C(v16, &qword_1003DA0F0, qword_100342AC0);
  }
}

uint64_t sub_100102BDC(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = type metadata accessor for CustodianRecoveryData(0);
  v3[40] = swift_task_alloc();
  type metadata accessor for CustodianRecoveryInfoRecord(0);
  v3[41] = swift_task_alloc();
  type metadata accessor for CustodianshipInfoRecord(0);
  v3[42] = swift_task_alloc();
  v3[43] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v3[44] = swift_task_alloc();
  sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_100102E1C, 0, 0);
}

uint64_t sub_100102E1C()
{
  v1 = (*(v0 + 264) + *(*(v0 + 312) + 52));
  if (v1[1])
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error code missing in spake error message", v5, 2u);
    }

    v6 = *(v0 + 272);

    type metadata accessor for AACustodianRecoveryError(0);
    *(v0 + 240) = -9012;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v7 = *(v0 + 88);
    if (v6)
    {
      v8 = *(v0 + 272);
      v9 = v7;
      v10 = _convertErrorToNSError(_:)();
      [v8 updateTaskResultWithError:v10];
    }

    else
    {
      v49 = v7;
    }

    v51 = *(v0 + 296);
    v50 = *(v0 + 304);
    v52 = *(v0 + 288);
    v53 = *(v0 + 272);
    (*(v51 + 16))(v50, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v52);
    Dependency.wrappedValue.getter();
    (*(v51 + 8))(v50, v52);
    swift_getObjectType();
    sub_100246FA8(v53);
    swift_unknownObjectRelease();

LABEL_23:
LABEL_24:

    v54 = *(v0 + 8);

    return v54();
  }

  v11 = *v1;
  type metadata accessor for AACustodianRecoveryError(0);
  *(v0 + 96) = v11;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = *(v0 + 152);
  *(v0 + 416) = v12;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  *(v0 + 424) = sub_100008D04(v13, qword_1003FAA88);
  v7 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = _convertErrorToNSError(_:)();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Got spake error, with error: %@", v16, 0xCu);
    sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
  }

  v19 = *(v0 + 264);

  v20 = sub_100109C50(v19);
  *(v0 + 432) = v20;
  if (!v20)
  {
    v56 = sub_10010B538(*(v0 + 264));
    if (v57)
    {
      v60 = v57;
      v61 = v58;
      v62 = v59;
      v159 = v56;
      v63 = *(v0 + 376);
      v64 = *(v0 + 384);
      v65 = *(v0 + 360);
      UUID.init(uuidString:)();
      if ((*(v64 + 48))(v65, 1, v63) != 1)
      {
        v157 = v61;
        v158 = v62;
        v108 = *(v0 + 392);
        v109 = *(v0 + 280);
        (*(*(v0 + 384) + 32))(v108, *(v0 + 360), *(v0 + 376));
        v110 = *(v109 + 144);
        v111 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
        os_unfair_lock_lock(*(v110 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
        v112 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
        swift_beginAccess();
        v113 = *(v110 + v112);
        v114 = swift_task_alloc();
        *(v114 + 16) = v108;

        v115 = sub_10021418C(sub_10010BD18, v114, v113);

        os_unfair_lock_unlock(*(v110 + v111));
        if (v115)
        {
          v117 = *(v0 + 272);
          v116 = *(v0 + 280);
          v118 = (v116 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
          *v118 = 0;
          v118[1] = 0;
          v119 = v7;

          v120 = (v116 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
          *v120 = 0;
          v120[1] = 0;

          sub_100116210(v115 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v119, 1);

          if (v117)
          {
            [*(v0 + 272) updateTaskResultWithError:0];
          }

          v121 = *(v0 + 384);
          v160 = *(v0 + 392);
          v122 = *(v0 + 376);
          v124 = *(v0 + 296);
          v123 = *(v0 + 304);
          v125 = *(v0 + 288);
          v126 = *(v0 + 272);
          (*(v124 + 16))(v123, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v125);
          Dependency.wrappedValue.getter();
          (*(v124 + 8))(v123, v125);
          swift_getObjectType();
          sub_100246FA8(v126);
          swift_unknownObjectRelease();

          sub_10010B9E0(v159, v60, v157, v158);

          (*(v121 + 8))(v160, v122);
        }

        else
        {
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            *v144 = 0;
            _os_log_impl(&_mh_execute_header, v142, v143, "No active sessions found with spakeID or UUID. nothing more to do here...", v144, 2u);
          }

          v145 = *(v0 + 272);

          *(v0 + 168) = -9009;
          sub_100212324(_swiftEmptyArrayStorage);
          _BridgedStoredNSError.init(_:userInfo:)();
          v146 = *(v0 + 160);
          if (v145)
          {
            v147 = *(v0 + 272);
            v148 = v146;
            v149 = _convertErrorToNSError(_:)();
            [v147 updateTaskResultWithError:v149];
          }

          else
          {
            v150 = v146;
          }

          v151 = *(v0 + 384);
          v161 = *(v0 + 392);
          v152 = *(v0 + 376);
          v153 = *(v0 + 296);
          v154 = *(v0 + 304);
          v155 = *(v0 + 288);
          v156 = *(v0 + 272);
          (*(v153 + 16))(v154, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v155);
          Dependency.wrappedValue.getter();
          (*(v153 + 8))(v154, v155);
          swift_getObjectType();
          sub_100246FA8(v156);
          swift_unknownObjectRelease();

          sub_10010B9E0(v159, v60, v157, v158);
          (*(v151 + 8))(v161, v152);
        }

        goto LABEL_24;
      }

      sub_100008D3C(*(v0 + 360), &qword_1003D8B60, &unk_10033F210);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Invalid spake ID", v68, 2u);
      }

      v69 = *(v0 + 272);

      *(v0 + 136) = -9022;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v70 = *(v0 + 128);
      if (v69)
      {
        v71 = *(v0 + 272);
        v72 = v70;
        v73 = _convertErrorToNSError(_:)();
        [v71 updateTaskResultWithError:v73];
      }

      else
      {
        v137 = v70;
      }

      v139 = *(v0 + 296);
      v138 = *(v0 + 304);
      v140 = *(v0 + 288);
      v141 = *(v0 + 272);
      (*(v139 + 16))(v138, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v140);
      Dependency.wrappedValue.getter();
      (*(v139 + 8))(v138, v140);
      swift_getObjectType();
      sub_100246FA8(v141);
      swift_unknownObjectRelease();

      sub_10010B9E0(v159, v60, v61, v62);
    }

    else
    {
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&_mh_execute_header, v100, v101, "Malfarmed recovery data", v102, 2u);
      }

      v103 = *(v0 + 272);

      *(v0 + 112) = -9013;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v104 = *(v0 + 104);
      if (v103)
      {
        v105 = *(v0 + 272);
        v106 = v104;
        v107 = _convertErrorToNSError(_:)();
        [v105 updateTaskResultWithError:v107];
      }

      else
      {
        v132 = v104;
      }

      v134 = *(v0 + 296);
      v133 = *(v0 + 304);
      v135 = *(v0 + 288);
      v136 = *(v0 + 272);
      (*(v134 + 16))(v133, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v135);
      Dependency.wrappedValue.getter();
      (*(v134 + 8))(v133, v135);
      swift_getObjectType();
      sub_100246FA8(v136);
      swift_unknownObjectRelease();
    }

    goto LABEL_23;
  }

  v21 = v20;
  v22 = v7;
  v23 = _convertErrorToNSError(_:)();

  v24 = [v23 aa_isAACustodianRecoveryErrorWithCode:-9002];
  v7 = v22;
  v25 = Logger.logObject.getter();
  if (!v24)
  {
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = _convertErrorToNSError(_:)();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v25, v74, "Asked to terminate recovery session with error: %@", v75, 0xCu);
      sub_100008D3C(v76, &unk_1003D9140, &qword_10033E640);
    }

    v79 = *(v0 + 272);
    v78 = *(v0 + 280);

    v80 = (v78 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
    *v80 = 0;
    v80[1] = 0;
    v81 = v7;

    v82 = (v78 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
    *v82 = 0;
    v82[1] = 0;

    sub_100116210(v21 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v81, 1);

    if (v79)
    {
      [*(v0 + 272) updateTaskResultWithError:0];
    }

    v84 = *(v0 + 296);
    v83 = *(v0 + 304);
    v85 = *(v0 + 288);
    v86 = *(v0 + 272);
    (*(v84 + 16))(v83, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v85);
    Dependency.wrappedValue.getter();
    (*(v84 + 8))(v83, v85);
    swift_getObjectType();
    sub_100246FA8(v86);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v7;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "Error can be retried, idetifying Custodian or owner device: %@", v27, 0xCu);
    sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
  }

  v32 = *(v0 + 376);
  v31 = *(v0 + 384);
  v33 = *(v0 + 368);
  v34 = *(v0 + 312);

  v35 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  *(v0 + 440) = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  v36 = v21 + v35;
  swift_beginAccess();
  sub_100012D04(&v36[*(v34 + 28)], v33, &qword_1003D8B60, &unk_10033F210);
  if ((*(v31 + 48))(v33, 1, v32) == 1)
  {
    sub_100008D3C(*(v0 + 368), &qword_1003D8B60, &unk_10033F210);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Spake Error: Session does not contain custodianship UUID, nothing to do here ...", v39, 2u);
    }

    v41 = *(v0 + 272);
    v40 = *(v0 + 280);

    *(v0 + 216) = -9011;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = *(v0 + 208);
    v43 = (v40 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
    *v43 = 0;
    v43[1] = 0;
    v44 = v42;

    v45 = (v40 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
    *v45 = 0;
    v45[1] = 0;

    sub_100116210(v21 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v44, 1);

    if (v41)
    {
      v46 = *(v0 + 272);
      v47 = v44;
      v48 = _convertErrorToNSError(_:)();
      [v46 updateTaskResultWithError:v48];
    }

    else
    {
      v127 = v44;
    }

    v129 = *(v0 + 296);
    v128 = *(v0 + 304);
    v130 = *(v0 + 288);
    v131 = *(v0 + 272);
    (*(v129 + 16))(v128, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v130);
    Dependency.wrappedValue.getter();
    (*(v129 + 8))(v128, v130);
    swift_getObjectType();
    sub_100246FA8(v131);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v87 = *(v0 + 408);
  v88 = *(v0 + 376);
  v89 = *(v0 + 384);
  v91 = *(v0 + 344);
  v90 = *(v0 + 352);
  v92 = *(v0 + 280);
  (*(v89 + 32))(v87, *(v0 + 368), v88);
  v93 = *(v89 + 16);
  *(v0 + 448) = v93;
  *(v0 + 456) = (v89 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v93(v90, v87, v88);
  *(v90 + v91[5]) = 0;
  v94 = v90 + v91[6];
  *v94 = 0;
  *(v94 + 8) = 1;
  *(v90 + v91[7]) = 1;
  v95 = (v90 + v91[8]);
  *v95 = 0;
  v95[1] = 0;
  v96 = (v90 + v91[9]);
  *v96 = 0;
  v96[1] = 0;
  sub_1000080F8((v92 + 64), *(v92 + 88));
  v97 = swift_task_alloc();
  *(v0 + 464) = v97;
  *v97 = v0;
  v97[1] = sub_100103FA4;
  v98 = *(v0 + 352);
  v99 = *(v0 + 336);

  return sub_1000268EC(v99, v98);
}

uint64_t sub_100103FA4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_100104280;
  }

  else
  {
    v2 = sub_1001040B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001040B8()
{
  sub_1000080F8((v0[35] + 64), *(v0[35] + 88));
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_10010416C;
  v2 = v0[44];
  v3 = v0[41];

  return sub_100021548(v3, v2, 0, 0);
}

uint64_t sub_10010416C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100104840;
  }

  else
  {
    v2 = sub_100104574;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100104280()
{
  sub_10010C048(v0[44], type metadata accessor for FetchRecoveryRecordsRequest);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Owner device, returning error to the UI to let the user retry", v3, 2u);
  }

  v4 = v0[54];
  v6 = v0[34];
  v5 = v0[35];

  swift_getErrorValue();
  v7 = sub_100256804(-9017, v0[6], v0[7]);
  v8 = (v5 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  *v8 = 0;
  v8[1] = 0;

  v9 = (v5 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  *v9 = 0;
  v9[1] = 0;

  sub_100116210(v4 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v7, 1);
  if (v6)
  {
    v10 = v0[34];
    swift_errorRetain();
    v11 = _convertErrorToNSError(_:)();
    [v10 updateTaskResultWithError:v11];
  }

  else
  {
    swift_errorRetain();
  }

  v12 = v0[52];
  v21 = v0[51];
  v13 = v0[47];
  v14 = v0[48];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v18 = v0[34];
  (*(v16 + 16))(v15, v0[35] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v17);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v15, v17);
  swift_getObjectType();
  sub_100246FA8(v18);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v14 + 8))(v21, v13);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100104574()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 272);
  sub_10010BD38(v2 + *(v0 + 440), *(v0 + 320), type metadata accessor for CustodianRecoveryData);
  v1(v4, v2 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v5);
  v8 = v3;
  sub_100116210(v4, v3, 1);

  v22 = *(v6 + 8);
  v22(v4, v5);
  if (v7)
  {
    [*(v0 + 272) updateTaskResultWithError:0];
  }

  v18 = *(v0 + 416);
  v20 = *(v0 + 376);
  v21 = *(v0 + 408);
  v19 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 320);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v14 = *(v0 + 288);
  v15 = *(v0 + 272);
  (*(v13 + 16))(v12, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v12, v14);
  swift_getObjectType();
  sub_100246FA8(v15);
  swift_unknownObjectRelease();
  sub_100104B50(v11, v9, v10);
  swift_unknownObjectRelease();

  sub_10010C048(v11, type metadata accessor for CustodianRecoveryData);
  sub_10010C048(v10, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10010C048(v9, type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v19, type metadata accessor for FetchRecoveryRecordsRequest);
  v22(v21, v20);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100104840()
{
  sub_10010C048(v0[42], type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v0[44], type metadata accessor for FetchRecoveryRecordsRequest);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Owner device, returning error to the UI to let the user retry", v3, 2u);
  }

  v4 = v0[54];
  v6 = v0[34];
  v5 = v0[35];

  swift_getErrorValue();
  v7 = sub_100256804(-9017, v0[6], v0[7]);
  v8 = (v5 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  *v8 = 0;
  v8[1] = 0;

  v9 = (v5 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  *v9 = 0;
  v9[1] = 0;

  sub_100116210(v4 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v7, 1);
  if (v6)
  {
    v10 = v0[34];
    swift_errorRetain();
    v11 = _convertErrorToNSError(_:)();
    [v10 updateTaskResultWithError:v11];
  }

  else
  {
    swift_errorRetain();
  }

  v12 = v0[52];
  v21 = v0[51];
  v13 = v0[47];
  v14 = v0[48];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v18 = v0[34];
  (*(v16 + 16))(v15, v0[35] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v17);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v15, v17);
  swift_getObjectType();
  sub_100246FA8(v18);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v14 + 8))(v21, v13);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100104B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a3;
  v57 = a2;
  v61 = a1;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  v7 = type metadata accessor for CustodianRecoveryData(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003DDEB0, &qword_100342830);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  sub_100012004();
  v13 = kAAAnalyticsEventCustodianKeyExchangeRetry;
  v15 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v14 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  v17 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v16 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);

  v18 = v13;

  v19 = v16;
  v20 = v61;
  v21 = sub_100245D38(v18, v15, v14, v17, v19);
  if (*(v20 + 40))
  {
    v22 = (v56 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 24));
    v23 = *v22;
    v24 = v22[1];
    sub_10010BD38(v20, v12, type metadata accessor for CustodianRecoveryData);
    (*(v8 + 56))(v12, 0, 1, v7);
    v36 = sub_100107754(v57, v23, v24, v12);
    sub_100008D3C(v12, &unk_1003DDEB0, &qword_100342830);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v21;
    *(v38 + 24) = v37;
    v39 = kAAAnalyticsEventCustodianKeyExchangeSendMessage;
    v40 = objc_opt_self();
    v41 = v21;

    v42 = [v40 analyticsEventWithName:v39 altDSID:0 flowID:0];
    v43 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    v44 = &v36[v43];
    v45 = v55;
    sub_10010BD38(v44, v55, type metadata accessor for CustodianRecoveryData);
    v46 = sub_10010ABFC(v45, 0);
    sub_10010C048(v45, type metadata accessor for CustodianRecoveryData);
    v47 = sub_1000080F8((v4 + 24), *(v4 + 48));
    v48 = swift_allocObject();
    v48[2] = v42;
    v48[3] = sub_10010BD10;
    v48[4] = v38;
    v49 = *v47;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_10010E5C4;
    *(v50 + 24) = v48;
    aBlock[4] = sub_10010E58C;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013BB5C;
    aBlock[3] = &unk_1003A99E0;
    v51 = _Block_copy(aBlock);
    v52 = v42;

    [v49 startCustodianRecoveryTransactionWithContext:v46 completion:v51];
    _Block_release(v51);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Asked to retry but old session had no code stored... nothing to do here", v28, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    aBlock[6] = -9010;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = aBlock[0];
    if (v21)
    {
      v30 = v21;
      v31 = v29;
      v32 = _convertErrorToNSError(_:)();

      [v30 updateTaskResultWithError:v32];
    }

    v33 = v58;
    v34 = v59;
    v35 = v60;
    (*(v59 + 16))(v58, v4 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v60);
    Dependency.wrappedValue.getter();
    (*(v34 + 8))(v33, v35);
    swift_getObjectType();
    sub_100246FA8(v21);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1001053F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  if (a2)
  {
    if (a1)
    {
      v9 = _convertErrorToNSError(_:)();
    }

    else
    {
      v9 = 0;
    }

    [a2 updateTaskResultWithError:v9];
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA88);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = _convertErrorToNSError(_:)();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Custodian transaction failed to be sent to IdMS with error: %@", v13, 0xCu);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v6 + 16))(v8, result + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v5);
    Dependency.wrappedValue.getter();

    (*(v6 + 8))(v8, v5);
    swift_getObjectType();
    sub_100246FA8(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001056C8(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  sub_100005814(&unk_1003DDEB0, &qword_100342830);
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2[29] = swift_task_alloc();
  type metadata accessor for CustodianshipInfoRecord(0);
  v2[30] = swift_task_alloc();
  v2[31] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v2[32] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100105934, 0, 0);
}

uint64_t sub_100105934()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v2 + 16))(v1, *(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = *(v0 + 176);

    sub_10000839C((v0 + 16));
    v8 = [v7 custodianUUID];
    if (v8)
    {
      v9 = *(v0 + 176);
      v10 = v8;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = [v9 telemetryFlowID];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v26 = *(v0 + 176);
      v27 = (*(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
      *v27 = v13;
      v27[1] = v15;

      v28 = [v26 altDSID];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = (*(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
      *v33 = v30;
      v33[1] = v32;

      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      *(v0 + 328) = sub_100008D04(v34, qword_1003FAA88);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Verifying custodianship to generate Code.", v37, 2u);
      }

      v39 = *(v0 + 288);
      v38 = *(v0 + 296);
      v40 = *(v0 + 264);
      v41 = *(v0 + 272);
      v42 = *(v0 + 176);

      v43 = *(v41 + 16);
      *(v0 + 336) = v43;
      *(v0 + 344) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43(v39, v38, v40);
      v44 = [v42 altDSID];
      if (v44)
      {
        v45 = v44;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = [*(v0 + 176) telemetryFlowID];
      if (v49)
      {
        v50 = v49;
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v55 = *(v0 + 248);
      v54 = *(v0 + 256);
      v56 = *(v0 + 184);
      (*(*(v0 + 272) + 32))(v54, *(v0 + 288), *(v0 + 264));
      *(v54 + v55[5]) = 1;
      v57 = v54 + v55[6];
      *v57 = 0;
      *(v57 + 8) = 1;
      *(v54 + v55[7]) = 1;
      v58 = (v54 + v55[8]);
      *v58 = v46;
      v58[1] = v48;
      v59 = (v54 + v55[9]);
      *v59 = v51;
      v59[1] = v53;
      sub_1000080F8((v56 + 64), *(v56 + 88));
      v60 = swift_task_alloc();
      *(v0 + 352) = v60;
      *v60 = v0;
      v60[1] = sub_100106044;
      v61 = *(v0 + 256);
      v62 = *(v0 + 240);

      return sub_1000268EC(v62, v61);
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Context missing custodian UUID, cannot generate code for empty UUID", v25, 2u);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 136) = -7054;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  }

  else
  {
    sub_10000839C((v0 + 16));
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAD0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Account is nil. Not generating custodian recovery code", v19, 2u);
    }

    type metadata accessor for AAError(0);
    *(v0 + 120) = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
  }

  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100106044()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100106320;
  }

  else
  {
    v2 = sub_100106158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100106158()
{
  sub_1000080F8((v0[23] + 64), *(v0[23] + 88));
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_10010620C;
  v2 = v0[32];
  v3 = v0[29];

  return sub_100021548(v3, v2, 0, 0);
}

uint64_t sub_10010620C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_100106F30;
  }

  else
  {
    v2 = sub_100106584;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100106320()
{
  sub_10010C048(v0[32], type metadata accessor for FetchRecoveryRecordsRequest);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Generate recovery code failed: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
  }

  v6 = v0[37];
  v7 = v0[33];
  v8 = v0[34];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  (*(v10 + 16))(v9, v0[23] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v11);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v9, v11);
  swift_getObjectType();
  sub_100246FA8(0);
  swift_unknownObjectRelease();
  swift_willThrow();
  (*(v8 + 8))(v6, v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100106584()
{
  v90 = v0;
  (*(v0 + 336))(*(v0 + 280), *(v0 + 296), *(v0 + 264));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v89 = v86;
    *v7 = 136315138;
    sub_10010BB40(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_10021145C(v8, v10, &v89);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Custodianship %s verified. Generating session with code...", v7, 0xCu);
    sub_10000839C(v86);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  *(v0 + 384) = v11;
  v13 = *(v0 + 176);
  v87 = kAAAnalyticsEventFetchRecoverySessionCreatedByOwner;
  v14 = [v13 altDSID];
  if (v14)
  {
    v15 = v14;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v85 = 0;
    v17 = 0;
  }

  v18 = [*(v0 + 176) telemetryFlowID];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = *(v0 + 376);
  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  v27 = *(v0 + 216);
  v26 = *(v0 + 224);
  sub_100012004();
  v88 = sub_100245D38(v87, v85, v17, v20, v22);
  v28 = (v24 + *(v26 + 24));
  v29 = *v28;
  v30 = v28[1];
  v31 = type metadata accessor for CustodianRecoveryData(0);
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = sub_100107754(v25, v29, v30, v27);
  *(v0 + 392) = v32;
  if (v23)
  {
    v34 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    sub_100008D3C(*(v0 + 216), &unk_1003DDEB0, &qword_100342830);
    sub_10010C048(v35, type metadata accessor for CustodianshipInfoRecord);
    sub_10010C048(v34, type metadata accessor for FetchRecoveryRecordsRequest);
    v37 = v36;
LABEL_12:
    sub_10010C048(v37, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = _convertErrorToNSError(_:)();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Generate recovery code failed: %@", v40, 0xCu);
      sub_100008D3C(v41, &unk_1003D9140, &qword_10033E640);
    }

    if (v88)
    {
      v43 = _convertErrorToNSError(_:)();
      [v88 updateTaskResultWithError:v43];
    }

    v44 = *(v0 + 296);
    v45 = *(v0 + 264);
    v46 = *(v0 + 272);
    v47 = *(v0 + 200);
    v48 = *(v0 + 208);
    v49 = *(v0 + 192);
    (*(v47 + 16))(v48, *(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v49);
    Dependency.wrappedValue.getter();
    (*(v47 + 8))(v48, v49);
    swift_getObjectType();
    sub_100246FA8(v88);
    swift_unknownObjectRelease();
    swift_willThrow();

    (*(v46 + 8))(v44, v45);

    v50 = *(v0 + 8);

    return v50();
  }

  v52 = v32;
  v53 = v33;
  v54 = *(v0 + 176);
  sub_100008D3C(*(v0 + 216), &unk_1003DDEB0, &qword_100342830);
  ObjectType = swift_getObjectType();
  v56 = [v54 CLIMode];
  v57 = (*(v53 + 48))(v0 + 56, ObjectType, v53);
  *(v58 + *(v31 + 56)) = v56;
  v57(v0 + 56, 0);
  v59 = &v52[OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData];
  swift_beginAccess();
  *(v0 + 400) = *(v59 + 4);
  v60 = *(v59 + 5);
  *(v0 + 408) = v60;
  if (!v60)
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "failed to generate code, nothing to do here", v64, 2u);
    }

    v65 = *(v0 + 256);
    v66 = *(v0 + 232);
    v67 = *(v0 + 240);

    type metadata accessor for AACustodianError(0);
    *(v0 + 160) = -7030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10010C048(v67, type metadata accessor for CustodianshipInfoRecord);
    sub_10010C048(v65, type metadata accessor for FetchRecoveryRecordsRequest);
    v37 = v66;
    goto LABEL_12;
  }

  if (v88)
  {
    [v88 updateTaskResultWithError:0];
    v61 = v88;
  }

  else
  {
    v61 = 0;
  }

  v68 = *(v0 + 200);
  v69 = *(v0 + 208);
  v70 = *(v0 + 192);
  v71 = *(v0 + 176);
  (*(v68 + 16))(v69, *(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v70);
  Dependency.wrappedValue.getter();
  (*(v68 + 8))(v69, v70);
  swift_getObjectType();
  sub_100246FA8(v88);
  swift_unknownObjectRelease();

  v72 = [v71 altDSID];
  if (v72)
  {
    v73 = v72;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0;
  }

  *(v0 + 416) = v76;
  v77 = [*(v0 + 176) telemetryFlowID];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  *(v0 + 424) = v81;
  v82 = *(v0 + 184);
  v83 = swift_task_alloc();
  *(v0 + 432) = v83;
  *(v83 + 16) = v82;
  *(v83 + 24) = v52;
  *(v83 + 32) = v53;
  *(v83 + 40) = 0;
  *(v83 + 48) = v74;
  *(v83 + 56) = v76;
  *(v83 + 64) = v79;
  *(v83 + 72) = v81;
  v84 = swift_task_alloc();
  *(v0 + 440) = v84;
  *v84 = v0;
  v84[1] = sub_1001071B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v84, 0, 0, 0xD00000000000003BLL, 0x800000010032EA30, sub_10010BB08, v83, &type metadata for () + 8);
}

uint64_t sub_100106F30()
{
  v1 = v0[32];
  sub_10010C048(v0[30], type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v1, type metadata accessor for FetchRecoveryRecordsRequest);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generate recovery code failed: %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[37];
  v8 = v0[33];
  v9 = v0[34];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  (*(v11 + 16))(v10, v0[23] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  swift_getObjectType();
  sub_100246FA8(0);
  swift_unknownObjectRelease();
  swift_willThrow();
  (*(v9 + 8))(v7, v8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001071B4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_1001074A8;
  }

  else
  {

    v2 = sub_10010734C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010734C()
{
  v1 = v0[48];
  v2 = v0[37];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];
  v6 = v0[30];
  swift_unknownObjectRelease();
  sub_10010C048(v6, type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v3, type metadata accessor for FetchRecoveryRecordsRequest);
  v1(v2, v4);
  sub_10010C048(v5, type metadata accessor for CustodianRecoveryInfoRecord);

  v7 = v0[1];
  v8 = v0[50];
  v9 = v0[51];

  return v7(v8, v9);
}

uint64_t sub_1001074A8()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  swift_unknownObjectRelease();
  sub_10010C048(v2, type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v1, type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10010C048(v3, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Generate recovery code failed: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[37];
  v10 = v0[33];
  v11 = v0[34];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  (*(v13 + 16))(v12, v0[23] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v12, v14);
  swift_getObjectType();
  sub_100246FA8(0);
  swift_unknownObjectRelease();
  swift_willThrow();
  (*(v11 + 8))(v9, v10);

  v15 = v0[1];

  return v15();
}

char *sub_100107754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v146 = a4;
  v133 = a2;
  v134 = a3;
  v135 = a1;
  v144 = sub_100005814(&qword_1003DDEA8, &qword_100342828);
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v126 - v4;
  v5 = sub_100005814(&unk_1003DDEB0, &qword_100342830);
  __chkstk_darwin(v5 - 8);
  countAndFlagsBits = &v126 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecoveryData(0);
  v12 = *(v11 - 1);
  v13 = __chkstk_darwin(v11);
  v139 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v142 = &v126 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = (&v126 - v18);
  v19[1] = 0u;
  v19[2] = 0u;
  *v19 = 0u;
  v20 = *(v8 + 56);
  v128 = *(v17 + 28);
  v129 = v20;
  v130 = v8 + 56;
  v20(&v126 + v128 - v18, 1, 1, v7);
  v21 = (v19 + v11[8]);
  *v21 = 0;
  v21[1] = 0;
  v127 = v21;
  v22 = (v19 + v11[9]);
  *v22 = 0;
  v22[1] = 0;
  v126 = v22;
  *(v19 + v11[10]) = xmmword_10033F590;
  v138 = (v19 + v11[11]);
  *v138 = xmmword_10033F590;
  *(v19 + v11[12]) = xmmword_10033F590;
  v23 = v19 + v11[13];
  *v23 = 0;
  v23[8] = 1;
  *(v19 + v11[14]) = 0;
  v136 = v11[15];
  *(v19 + v136) = 1;
  v24 = v11[16];
  v151 = v19;
  v25 = (v19 + v24);
  *v25 = 0;
  v25[1] = 0;
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v131 = v8;
  v132 = v7;
  v29 = v7;
  v30 = countAndFlagsBits;
  (*(v8 + 8))(v10, v29);
  sub_100005814(&unk_1003E7730, &unk_1003492E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  strcpy((inited + 32), "spakeSessionId");
  *(inited + 47) = -18;
  *(inited + 48) = v26;
  *(inited + 56) = v28;

  v147 = sub_100308864(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DDEC0, &unk_10033E630);

  *&v148 = v28;
  v32 = sub_100170228(v26, v28);
  v150 = v33;
  sub_100012D04(v146, v30, &unk_1003DDEB0, &qword_100342830);
  v34 = (*(v12 + 48))(v30, 1, v11);
  v156 = v32;
  v137 = v26;
  if (v34 == 1)
  {
    sub_100008D3C(v30, &unk_1003DDEB0, &qword_100342830);
    v36 = v140;
    v35 = v141;
    v37 = *(v140 + 16);
    v38 = v143;
    v39 = v144;
    v37(v143, v141 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory, v144);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v38, v39);
    v40 = v149;
    v41 = sub_100118898();
    v43 = v40;
    if (v40)
    {
      sub_100012324(v156, v150);

      v92 = v154;
LABEL_20:
      sub_10000839C(v92);
      v51 = v151;
LABEL_21:
      sub_10010C048(v51, type metadata accessor for CustodianRecoveryData);
      return v38;
    }

    v61 = v42;
    v149 = v41;

    sub_10000839C(v154);
    v57 = v150;
  }

  else
  {
    v43 = v149;
    v44 = v30;
    v45 = v142;
    sub_10010C274(v44, v142, type metadata accessor for CustodianRecoveryData);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAA88);
    v47 = v139;
    sub_10010BD38(v45, v139, type metadata accessor for CustodianRecoveryData);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v151;
    if (v50)
    {
      v52 = v151;
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      v54 = v47;
      v55 = v43;
      v56 = *(v54 + v11[15]);
      sub_10010C048(v54, type metadata accessor for CustodianRecoveryData);
      *(v53 + 4) = v56;
      v43 = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Current code has been attempted %ld times...", v53, 0xCu);
      v51 = v52;
      v45 = v142;
    }

    else
    {
      sub_10010C048(v47, type metadata accessor for CustodianRecoveryData);
    }

    v57 = v150;

    v58 = *(v45 + v11[15]);
    v59 = v156;
    if (v58 > 4)
    {

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Too many attempts made on the existing code, failing creating new session ...", v64, 2u);
        v57 = v150;
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v38 = v65;
      v152[0] = -9006;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      sub_100012324(v59, v57);
      sub_10010C048(v45, type metadata accessor for CustodianRecoveryData);
      goto LABEL_21;
    }

    v60 = *(v45 + 40);
    if (v60)
    {
      v149 = *(v45 + 32);

      sub_10010C048(v45, type metadata accessor for CustodianRecoveryData);
      *(v51 + v136) = v58 + 1;
      v61 = v60;
      v35 = v141;
    }

    else
    {
      v94 = v140;
      v95 = v141;
      v38 = v143;
      v96 = v144;
      (*(v140 + 16))(v143, v141 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory, v144);
      Dependency.wrappedValue.getter();
      (*(v94 + 8))(v38, v96);
      v97 = sub_100118898();
      if (v43)
      {
        sub_10010C048(v142, type metadata accessor for CustodianRecoveryData);
        sub_100012324(v59, v57);

        sub_10000839C(v154);
        goto LABEL_21;
      }

      v61 = v98;
      v149 = v97;
      sub_10010C048(v142, type metadata accessor for CustodianRecoveryData);

      sub_10000839C(v154);
      v35 = v95;
    }

    v36 = v140;
    v37 = *(v140 + 16);
  }

  v66 = v35 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory;
  v67 = v143;
  v68 = v144;
  v37(v143, v66, v144);
  Dependency.wrappedValue.getter();
  (*(v36 + 8))(v67, v68);
  v38 = *sub_1000080F8(v152, v153);
  v69 = v156;
  v70 = v149;
  sub_100117FA4(v154);
  if (v43)
  {

    sub_100012324(v69, v57);

    v92 = v152;
    goto LABEL_20;
  }

  sub_10000839C(v152);
  sub_1002D1BFC(v147);

  v71 = sub_100255878();
  v73 = v72;
  v74 = v138;
  sub_100015D58(*v138, v138[1]);
  *v74 = v71;
  v74[1] = v73;
  v75 = v134;
  v76 = v126;
  *v126 = v133;
  v76[1] = v75;
  v77 = type metadata accessor for CustodianshipInfoRecord(0);
  v78 = v135;
  v79 = (v135 + *(v77 + 24));
  v80 = *v79;
  v81 = v79[1];
  v82 = v127;
  *v127 = v80;
  v82[1] = v81;

  v83 = v151;
  v84 = v128;
  sub_100008D3C(&v151[v128], &qword_1003D8B60, &unk_10033F210);
  v85 = *(v77 + 20);
  v86 = v132;
  (*(v131 + 16))(&v83[v84], v78 + v85, v132);
  v129(&v83[v84], 0, 1, v86);
  *(v83 + 4) = v70;
  *(v83 + 5) = v61;
  v87 = v148;
  *(v83 + 2) = v137;
  *(v83 + 3) = v87;
  v88 = v155;
  sub_1000080F8(v154, v155);
  v89 = *(*(&v88 + 1) + 8);

  v90 = v89(v88, *(&v88 + 1));
  v149 = 0;
  v146 = v91;
  v147 = v90;
  v99 = Data.base64EncodedString(options:)(0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  sub_100008D04(v100, qword_1003FAA88);

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.debug.getter();

  v103 = os_log_type_enabled(v101, v102);
  countAndFlagsBits = v99._countAndFlagsBits;
  if (v103)
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v152[0] = v105;
    *v104 = 136315138;
    object = v99._object;
    *(v104 + 4) = sub_10021145C(v99._countAndFlagsBits, v99._object, v152);
    _os_log_impl(&_mh_execute_header, v101, v102, "CUSTODIAN MESSAGE 1: %s", v104, 0xCu);
    sub_10000839C(v105);
  }

  else
  {
    object = v99._object;
  }

  v107 = v138;
  v108 = v148;

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v152[0] = v112;
    *v111 = 136315138;
    v113 = v137;
    *(v111 + 4) = sub_10021145C(v137, v108, v152);
    _os_log_impl(&_mh_execute_header, v109, v110, "SPAKE SESSION ID: %s", v111, 0xCu);
    sub_10000839C(v112);
  }

  else
  {

    v113 = v137;
  }

  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  v114 = swift_initStackObject();
  *(v114 + 16) = xmmword_10033E5C0;
  strcpy((v114 + 32), "spakeMessage");
  *(v114 + 45) = 0;
  *(v114 + 46) = -5120;
  *(v114 + 48) = countAndFlagsBits;
  *(v114 + 56) = object;
  *(v114 + 72) = &type metadata for String;
  strcpy((v114 + 80), "spakeSessionId");
  *(v114 + 120) = &type metadata for String;
  *(v114 + 95) = -18;
  *(v114 + 96) = v113;
  *(v114 + 104) = v108;
  v115 = sub_100308978(v114);
  swift_setDeallocating();
  sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  swift_arrayDestroy();
  sub_1002D2194(v115);

  v116 = sub_100255878();
  v118 = v117;
  sub_100015D58(*v107, v107[1]);
  *v107 = v116;
  v107[1] = v118;
  v119 = *(v141 + 16);
  type metadata accessor for CustodianSessionManager(0);
  v120 = v119;
  v121 = v151;
  v38 = sub_100117570(v119, v151);

  v148 = v155;
  v122 = v155;
  v123 = sub_1000080F8(v154, v155);
  v153 = v148;
  v124 = sub_10000DBEC(v152);
  (*(*(v122 - 8) + 16))(v124, v123, v122);
  sub_100012324(v156, v150);
  sub_100012324(v147, v146);
  v125 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
  swift_beginAccess();
  sub_10010BA98(v152, &v38[v125]);
  swift_endAccess();
  sub_10000839C(v154);
  sub_10010C048(v121, type metadata accessor for CustodianRecoveryData);
  return v38;
}

uint64_t sub_1001086D8(uint64_t *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F38 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10021145C(a1, a2, v25);
      _os_log_impl(&_mh_execute_header, v7, v8, "Looking for active sessions with sessionID: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    v11 = sub_100116ADC(a1, a2);
    v12 = v3;
    v3 = v11[2];
    if (!v3)
    {
      break;
    }

    v23 = v12;
    swift_weakInit();
    swift_beginAccess();
    a2 = 0;
    a1 = v11 + 5;
    while (a2 < v11[2])
    {
      v14 = *(a1 - 1);
      v15 = *a1;
      if (swift_weakLoadStrong())
      {
        type metadata accessor for AACustodianRecoveryError(0);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
        swift_unknownObjectRetain();
        _BridgedStoredNSError.init(_:userInfo:)();
        sub_100108BC8(v14, v15, v24, 5);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      if (swift_weakLoadStrong())
      {
        swift_unknownObjectRetain();

        v13 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
        type metadata accessor for AACustodianRecoveryError(0);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
        _BridgedStoredNSError.init(_:userInfo:)();
        sub_100116210(v14 + v13, v24, 1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      ++a2;
      a1 += 2;
      if (v3 == a2)
      {

        swift_weakDestroy();
        v16 = (v23 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
        *v16 = 0;
        v16[1] = 0;

        v17 = (v23 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
        *v17 = 0;
        v17[1] = 0;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10021145C(a1, a2, v25);
    _os_log_impl(&_mh_execute_header, v19, v20, "No sessions found with given sessionID: %s, nothing to cancel", v21, 0xCu);
    sub_10000839C(v22);
  }

  type metadata accessor for AACustodianError(0);
  v25[4] = -7013;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

void sub_100108BC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v84 = a4;
  v83 = a2;
  v6 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v6);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 code];

  v88 = v13;
  dispatch thunk of CustomStringConvertible.description.getter();
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;

  (*(v9 + 8))(v11, v8);
  v87 = v16;
  if (v16 >> 60 != 15)
  {
    v21 = a1;
    ObjectType = swift_getObjectType();
    v23 = v21 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    v24 = *(v23 + 24);
    v80 = v23;
    v81 = v14;
    v78 = ObjectType;
    v79 = a3;
    v82 = v21;
    if (v24)
    {
      v25 = *(v23 + 16);

      v26 = Data.base64EncodedString(options:)(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      inited = swift_initStackObject();
      strcpy((inited + 32), "spakeMessage");
      *(inited + 16) = xmmword_10033E5C0;
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v26;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 80), "spakeSessionId");
      *(inited + 120) = &type metadata for String;
      *(inited + 95) = -18;
      *(inited + 96) = v25;
      *(inited + 104) = v24;
      v28 = sub_100308978(inited);
      swift_setDeallocating();
      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002D2194(v28);

      v29 = sub_100255878();
      v31 = v30;
      v32 = v6;
      v33 = v83;
      v34 = *(v83 + 48);
      v35 = v78;
      v37 = v34(&v88);
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v77 = v6;
      v38 = type metadata accessor for Logger();
      sub_100008D04(v38, qword_1003FAA88);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Looks like we don't have a spakeSessionID, Owner device failed before receiving custodian data, passing sessionUUID", v41, 2u);
      }

      v42 = Data.base64EncodedString(options:)(0);
      v43 = UUID.uuidString.getter();
      v45 = v44;
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      v46 = swift_initStackObject();
      strcpy((v46 + 32), "spakeMessage");
      *(v46 + 16) = xmmword_10033E5C0;
      *(v46 + 45) = 0;
      *(v46 + 46) = -5120;
      *(v46 + 48) = v42;
      *(v46 + 72) = &type metadata for String;
      strcpy((v46 + 80), "spakeSessionId");
      *(v46 + 120) = &type metadata for String;
      *(v46 + 95) = -18;
      *(v46 + 96) = v43;
      *(v46 + 104) = v45;
      v47 = sub_100308978(v46);
      swift_setDeallocating();
      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002D2194(v47);

      v29 = sub_100255878();
      v31 = v48;
      v33 = v83;
      v34 = *(v83 + 48);
      v35 = v78;
      v37 = v34(&v88);
      v32 = v77;
    }

    v49 = (v36 + *(v32 + 44));
    v50 = *v49;
    v51 = v49[1];
    *v49 = v29;
    v49[1] = v31;
    sub_100015D58(v50, v51);
    v37(&v88, 0);
    v52 = _convertErrorToNSError(_:)();
    v53 = [v52 code];

    v54 = (v34)(&v88, v35, v33);
    v56 = v55 + *(v32 + 52);
    *v56 = v53;
    *(v56 + 8) = 0;
    v54(&v88, 0);
    v57 = swift_allocObject();
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v88 = 0xD000000000000026;
    v89 = 0x800000010032EA00;
    v58._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v58);

    String.utf8CString.getter();

    v59 = os_transaction_create();

    *(v57 + 16) = v59;
    v60 = v84;
    if (v84 > 2u)
    {
      v61 = v81;
      if (v84 != 3)
      {
        v62 = v80;
        if (v84 != 4)
        {

          v64 = 5;
LABEL_23:
          v65 = kAAAnalyticsEventCustodianKeyExchangeSendMessage;
          v66 = objc_opt_self();

          v67 = [v66 analyticsEventWithName:v65 altDSID:0 flowID:0];
          v68 = v85;
          sub_10010BD38(v62, v85, type metadata accessor for CustodianRecoveryData);
          v69 = sub_10010ABFC(v68, v64);
          sub_10010C048(v68, type metadata accessor for CustodianRecoveryData);
          v70 = sub_1000080F8((v86 + 24), *(v86 + 48));
          v71 = swift_allocObject();
          v71[2] = v67;
          v71[3] = sub_10010BA64;
          v71[4] = v57;
          v72 = *v70;
          v73 = swift_allocObject();
          *(v73 + 16) = sub_10010BA6C;
          *(v73 + 24) = v71;
          v92 = sub_10010BA78;
          v93 = v73;
          v88 = _NSConcreteStackBlock;
          v89 = 1107296256;
          v90 = sub_10013BB5C;
          v91 = &unk_1003A9878;
          v74 = _Block_copy(&v88);
          v75 = v67;

          [v72 startCustodianRecoveryTransactionWithContext:v69 completion:v74];
          _Block_release(v74);

          sub_100015D58(v61, v87);
          return;
        }

LABEL_20:
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63 & 1 | (v60 > 3u))
        {
          v64 = 5;
        }

        else
        {
          v64 = v60 + 1;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v61 = v81;
    }

    v62 = v80;
    goto LABEL_20;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to convert error to data", v20, 2u);
  }
}

void sub_10010962C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "failed to inform session cancel to IdMS with error: %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

uint64_t sub_1001097DC(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    v5 = AACustodianRecoveryErrorDomain;
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v12;
    v8 = sub_10000DBEC((inited + 48));
    (*(*(v12 - 8) + 16))(v8);
    v9 = v5;
    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    v10 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 initWithDomain:v9 code:a1 userInfo:isa];

    swift_willThrow();
  }

  return result;
}

uint64_t sub_100109984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  sub_1000080F8(a1, v9);
  result = (*(v10 + 32))(a4, a5, v9, v10);
  if (!v5)
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1000080F8(a1, v12);
    result = (*(v13 + 40))(v12, v13);
    if ((result & 1) == 0)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA88);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "SPAKE messages verification failed", v17, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100109B78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000080F8(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100109BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000080F8(a1, v4);
  result = (*(v5 + 24))(v4, v5);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

void *sub_100109C50(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10010B538(a1);
  if (!v6)
  {
    return 0;
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100008D04(v13, qword_1003FAA88);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v14;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Looking for existing sessions to start message verification", v17, 2u);
  }

  v18 = sub_100116820(v9, v10);
  if (!v18)
  {
    sub_10010B994(v9, v10, v11, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_10010B9E0(v9, v10, v11, v12);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v12;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136315138;

      v32 = sub_10021145C(v9, v10, v40);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "No Active session with spakeID: %s", v30, 0xCu);
      sub_10000839C(v31);

      v33 = v9;
      v34 = v10;
      v35 = v11;
      v36 = v29;
    }

    else
    {

      v33 = v9;
      v34 = v10;
      v35 = v11;
      v36 = v12;
    }

    sub_10010B9E0(v33, v34, v35, v36);
    return 0;
  }

  v20 = v18;
  v21 = v19;
  sub_10010BD38(a1, v4, type metadata accessor for CustodianRecoveryData);
  sub_10010B994(v9, v10, v11, v12);
  v39 = v12;
  sub_100012324(v11, v12);

  v4[2] = v9;
  v4[3] = v10;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Updating session with new data", v24, 2u);
  }

  ObjectType = swift_getObjectType();
  v26 = (*(v21 + 48))(v40, ObjectType, v21);
  sub_10010E8E8(v4);
  v26(v40, 0);
  sub_10010B9E0(v9, v10, v11, v39);
  sub_10010C048(v4, type metadata accessor for CustodianRecoveryData);
  return v20;
}

void sub_10010A07C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    a4(a1);
  }

  else
  {
    v5 = objc_allocWithZone(AACustodianRecoveryConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v5 initWithConfigurationDictionary:isa];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 16);
      *(Strong + 16) = v7;
      v10 = v7;
    }

    a4(0);
  }
}

uint64_t sub_10010A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a6;
  v35 = a8;
  v36 = a5;
  v37 = a2;
  v12 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  (*(v16 + 16))(&v33 - v17, a1, v15);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  (*(v16 + 32))(v20 + v19, v18, v15);
  sub_100012004();
  v21 = kAAAnalyticsEventCustodianKeyExchangeSendMessage;

  v22 = v21;

  v23 = sub_100245D38(v22, v34, a7, v35, a9);
  v24 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a3 + v24, v14, type metadata accessor for CustodianRecoveryData);
  v25 = sub_10010ABFC(v14, v36);
  sub_10010C048(v14, type metadata accessor for CustodianRecoveryData);
  v26 = sub_1000080F8((v37 + 24), *(v37 + 48));
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = sub_10010BC1C;
  v27[4] = v20;
  v28 = *v26;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10010E5C4;
  *(v29 + 24) = v27;
  aBlock[4] = sub_10010E58C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013BB5C;
  aBlock[3] = &unk_1003A9918;
  v30 = _Block_copy(aBlock);
  v31 = v23;

  [v28 startCustodianRecoveryTransactionWithContext:v25 completion:v30];
  _Block_release(v30);
}

void sub_10010A4E0(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Custodian transaction sent to IdMS completed with error: %@", v11, 0xCu);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
  }

  if (a2)
  {
    if (a1)
    {
      v15 = _convertErrorToNSError(_:)();
    }

    else
    {
      v15 = 0;
    }

    [a2 updateTaskResultWithError:v15];
  }

  v16 = [objc_allocWithZone(type metadata accessor for AnalyticsRTCReporter()) init];
  sub_1000FABC8(a2);

  if (a3)
  {

    a3(a1);

    sub_100083B0C(a3, a4);
  }
}

uint64_t sub_10010A6FC()
{
  sub_10000839C((v0 + 24));
  sub_10000839C((v0 + 64));
  sub_10000839C((v0 + 104));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory;
  v2 = sub_100005814(&qword_1003DDEA8, &qword_100342828);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsEventFactory;
  v6 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t sub_10010A89C()
{
  sub_10010A6FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianRecoveryController(uint64_t a1)
{
  result = qword_1003DDBD8;
  if (!qword_1003DDBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010A948(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003DDBE8, &unk_1003DDBF0, &qword_1003427F0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10010AB24(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_10010AB44(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_10010AB64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

id sub_10010ABFC(uint64_t a1, int a2)
{
  v38 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v5 = &v37[-v4];
  v6 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA88);
  sub_10010BD38(a1, v8, type metadata accessor for CustodianRecoveryData);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315138;
    v14 = sub_10011038C();
    v16 = v15;
    sub_10010C048(v8, type metadata accessor for CustodianRecoveryData);
    v17 = sub_10021145C(v14, v16, &v39);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Generating context generated with data: %s", v12, 0xCu);
    sub_10000839C(v13);
  }

  else
  {

    sub_10010C048(v8, type metadata accessor for CustodianRecoveryData);
  }

  v18 = [objc_allocWithZone(AKCustodianContext) init];
  v19 = v38;
  if (*(a1 + v6[11] + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v18 setAaData:isa];

  v21 = (a1 + v6[13]);
  if (*(v21 + 8))
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21;
  }

  [v18 setClientErrorCode:v22];
  sub_100012D04(a1 + v6[7], v5, &qword_1003D8B60, &unk_10033F210);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v5, 1, v23) != 1)
  {
    v25 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v5, v23);
  }

  [v18 setCustodianUUID:v25];

  if (*(a1 + v6[12] + 8) >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v18 setIdmsData:v26];

  if (*(a1 + v6[8] + 8))
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v18 setOwnerAppleID:v27];

  if (*(a1 + v6[9] + 8))
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  [v18 setOwnerCustodianAltDSID:v28];

  if (*(a1 + 8))
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [v18 setRecoverySessionID:v29];

  v30 = String._bridgeToObjectiveC()();

  [v18 setRecoveryStep:v30];

  if (v19 != 1)
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      if (v19 == 3)
      {
        v31 = 1;
        goto LABEL_35;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        if (v38 > 4u)
        {
          v31 = 1;
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_35;
      }
    }

    v31 = 1;
    goto LABEL_36;
  }

  v31 = 1;
LABEL_35:

LABEL_36:
  [v18 setOwnerDevice:v31 & 1];
  [v18 set_cliMode:*(a1 + v6[14])];
  if (*(a1 + v6[10] + 8) >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v18 setEncryptedPRKC:v34];

  if ([v18 respondsToSelector:Selector.init(_:)()])
  {
    if (*(a1 + v6[16] + 8))
    {
      v35 = String._bridgeToObjectiveC()();
    }

    else
    {
      v35 = 0;
    }

    [v18 setRecordBuildVersion:v35];
  }

  return v18;
}

uint64_t sub_10010B538(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for CustodianRecoveryData(0) + 44);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v3 = *v1;
  sub_100015D6C(*v1, *(v1 + 8));
  sub_100015D6C(v3, v2);
  v4 = sub_100255E08(v3, v2);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  strcpy(v25, "spakeSessionId");
  HIBYTE(v25[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10031B060(v26), (v7 & 1) == 0))
  {
    sub_100015D58(v3, v2);
LABEL_12:

    sub_1000526B0(v26);
LABEL_15:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to parse AAData, bad spake message?", v17, 2u);
    }

    return 0;
  }

  sub_10000DB1C(*(v5 + 56) + 32 * v6, v27);
  sub_1000526B0(v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

LABEL_14:
    sub_100015D58(v3, v2);
    goto LABEL_15;
  }

  v8 = v25[0];
  strcpy(v25, "spakeMessage");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v9 = sub_10031B060(v26), (v10 & 1) == 0))
  {
    sub_100015D58(v3, v2);

    goto LABEL_12;
  }

  sub_10000DB1C(*(v5 + 56) + 32 * v9, v27);
  sub_1000526B0(v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = v25[0];
  v11 = v25[1];
  Data.init(base64Encoded:options:)();
  if (v13 >> 60 == 15)
  {

    goto LABEL_13;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA88);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v22 = 136315138;
    v24 = sub_10021145C(v12, v11, v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received Verifier Message: %s", v22, 0xCu);
    sub_10000839C(v23);

    sub_100015D58(v3, v2);
  }

  else
  {
    sub_100015D58(v3, v2);
  }

  return v8;
}

void sub_10010B994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100015D6C(a3, a4);
  }
}

void sub_10010B9E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100012324(a3, a4);
  }
}

uint64_t sub_10010BA2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010BA80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010BA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DE300, &qword_100342838);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010BB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010BB88()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10010BC1C(uint64_t a1)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_10007D4A8(a1);
}

uint64_t sub_10010BC98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010BCD0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10010BD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010BDA0()
{
  v1 = type metadata accessor for CustodianRecoveryKeys(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v4 = v0 + v2;
  sub_100012324(*(v0 + v2), *(v0 + v2 + 8));
  v5 = *(v0 + v2 + 24);
  if (v5 >> 60 != 15)
  {
    sub_100012324(*(v4 + 16), v5);
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10010BF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryKeys(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001023B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10010BF94()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10010BFF8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10010C038(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10010C048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010C0A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unownedRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  sub_10000839C((v0 + v4));

  sub_100012324(*(v0 + v5 + 16), *(v0 + v5 + 24));

  return _swift_deallocObject(v0, v5 + 32);
}

uint64_t sub_10010C1B4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000FF02C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, (v1 + v5), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10010C274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10010C2DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
  swift_beginAccess();
  sub_10010BD38(v9, v8, type metadata accessor for CustodianRecoveryData);
  v10 = sub_10010B538(v8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10010C048(v8, type metadata accessor for CustodianRecoveryData);
  if (v12)
  {
    v60 = a3;
    v17 = v9[1];
    if (v17)
    {
      v59 = v3;
      v18 = v10;
      v19 = *v9;
      v20 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
      swift_beginAccess();
      sub_100012D04(a1 + v20, &v61, &qword_1003DE300, &qword_100342838);
      if (v62)
      {
        sub_10003E950(&v61, v63);
        v21 = qword_1003D7F38;

        if (v21 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100008D04(v22, qword_1003FAA88);

        sub_10010B994(v18, v12, v14, v16);
        v23 = v14;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        v58 = v23;
        sub_10010B9E0(v18, v12, v23, v16);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v57 = v16;
          *&v61 = v27;
          *v26 = 136315394;
          v28 = sub_10021145C(v19, v17, &v61);

          *(v26 + 4) = v28;
          *(v26 + 12) = 2080;

          v29 = sub_10021145C(v18, v12, &v61);

          *(v26 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v24, v25, "Verifying message for session with RecoveryID: %s, SpakeID: %s", v26, 0x16u);
          swift_arrayDestroy();
          v16 = v57;
        }

        else
        {
        }

        v43 = v58;
        if (v60 - 2 < 2)
        {
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v49, v50, "verifying message 2", v51, 2u);
          }

          __chkstk_darwin(v52);
          *(&v56 - 6) = v63;
          *(&v56 - 5) = v18;
          *(&v56 - 4) = v12;
          *(&v56 - 3) = v43;
          *(&v56 - 2) = v16;
          v48 = sub_10010E3C4;
        }

        else
        {
          if (v60 > 1u)
          {
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              _os_log_impl(&_mh_execute_header, v53, v54, "Wrong step sent to verify message method", v55, 2u);
            }

            type metadata accessor for AACustodianRecoveryError(0);
            v64 = -9023;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
            _BridgedStoredNSError.init(_:userInfo:)();
            swift_willThrow();
            sub_10010B9E0(v18, v12, v43, v16);
            goto LABEL_34;
          }

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "verifying message 1", v46, 2u);
          }

          __chkstk_darwin(v47);
          *(&v56 - 6) = v63;
          *(&v56 - 5) = v18;
          *(&v56 - 4) = v12;
          *(&v56 - 3) = v43;
          *(&v56 - 2) = v16;
          v48 = sub_10010E3E8;
        }

        sub_1001097DC(-9002, v48);
        sub_10010B9E0(v18, v12, v43, v16);
LABEL_34:
        sub_10000839C(v63);
        return;
      }

      sub_100008D3C(&v61, &qword_1003DE300, &qword_100342838);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAA88);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Missing verifier", v42, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      *&v61 = -9014;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v38 = v18;
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100008D04(v34, qword_1003FAA88);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Recovery session id missing in recovery data", v37, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      *&v61 = -9008;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v38 = v10;
    }

    sub_10010B9E0(v38, v12, v14, v16);
    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAA88);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Malformed recovery data", v33, 2u);
  }

  type metadata accessor for AACustodianRecoveryError(0);
  *&v61 = -9013;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
}

uint64_t *sub_10010CC84(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v9, v8, type metadata accessor for CustodianRecoveryData);
  v10 = sub_10010B538(v8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10010C048(v8, type metadata accessor for CustodianRecoveryData);
  if (v12)
  {
    v64 = v14;
    v17 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
    swift_beginAccess();
    sub_100012D04(a1 + v17, &v65, &qword_1003DE300, &qword_100342838);
    if (v66)
    {
      sub_10003E950(&v65, v67);
      if (a3 - 1 >= 2)
      {
        v18 = v64;
        if (a3)
        {
          if (qword_1003D7F38 != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          sub_100008D04(v54, qword_1003FAA88);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v55, v56, "Wrong step sent to get message method", v57, 2u);
          }

          type metadata accessor for AACustodianRecoveryError(0);
          v23 = v58;
          v68 = -9024;
          sub_100212324(_swiftEmptyArrayStorage);
          sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
          sub_10010B9E0(v10, v12, v18, v16);
LABEL_38:
          sub_10000839C(v67);
          return v23;
        }

        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA88);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Generating message 1", v40, 2u);
        }

        v23 = &v60;
        __chkstk_darwin(v41);
        *(&v60 - 2) = v67;
        v25 = sub_10010E3A8;
        v26 = -9026;
      }

      else
      {
        v18 = v64;
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100008D04(v19, qword_1003FAA88);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Generating message 2", v22, 2u);
        }

        v23 = &v60;
        __chkstk_darwin(v24);
        *(&v60 - 2) = v67;
        v25 = sub_10010E38C;
        v26 = -9027;
      }

      sub_1001097DC(v26, v25);
      if (v3)
      {
        sub_10010B9E0(v10, v12, v18, v16);
      }

      else
      {
        v60 = v10;
        v61 = *(&v65 + 1);
        v62 = v65;
        v42 = Data.base64EncodedString(options:)(0);
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v63 = v16;
        v43 = type metadata accessor for Logger();
        sub_100008D04(v43, qword_1003FAA88);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v65 = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_10021145C(v42._countAndFlagsBits, v42._object, &v65);
          _os_log_impl(&_mh_execute_header, v44, v45, "message created with message: %s", v46, 0xCu);
          sub_10000839C(v47);
        }

        sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033E5C0;
        strcpy((inited + 32), "spakeMessage");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        *(inited + 48) = v42;
        *(inited + 72) = &type metadata for String;
        strcpy((inited + 80), "spakeSessionId");
        *(inited + 120) = &type metadata for String;
        v49 = v60;
        *(inited + 95) = -18;
        *(inited + 96) = v49;
        *(inited + 104) = v12;

        v50 = sub_100308978(inited);
        swift_setDeallocating();
        sub_100005814(&qword_1003DB0B0, &unk_10033E710);
        swift_arrayDestroy();
        sub_1002D2194(v50);

        v51 = sub_100255878();
        if (v52 >> 60 != 15)
        {
          v23 = v51;
          sub_10010B9E0(v49, v12, v64, v63);
          sub_100012324(v62, v61);
          sub_10000839C(v67);
          return v23;
        }

        type metadata accessor for AACustodianRecoveryError(0);
        v23 = v53;
        v68 = -9025;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
        sub_10010B9E0(v49, v12, v64, v63);
        sub_100012324(v62, v61);
      }

      goto LABEL_38;
    }

    sub_100008D3C(&v65, &qword_1003DE300, &qword_100342838);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAA88);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Session missing verifier", v35, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v23 = v36;
    *&v65 = -9014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_10010B9E0(v10, v12, v64, v16);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Malformed recovery data", v30, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v23 = v31;
    *&v65 = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v23;
}

void sub_10010D708(void *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000080F0;
  *(v10 + 24) = v9;
  _Block_copy(a3);
  _Block_copy(a3);

  v11 = [a1 recoverySessionID];
  if (!v11)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Recovery request context does not contain recovery session ID to validate code", v30, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v31 = -7052;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a1 recoveryCode];
  if (!v16)
  {
LABEL_14:

    if (qword_1003D7F38 == -1)
    {
LABEL_15:
      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAA88);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Recovery request context does not contain recovery code to validate code", v35, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v31 = -7053;
LABEL_18:
      v91 = v31;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v36 = v90;
      _Block_copy(a3);
      sub_100056DB0(v36, 1, a3);
      _Block_release(a3);

      v37 = a3;
      goto LABEL_19;
    }

LABEL_45:
    swift_once();
    goto LABEL_15;
  }

  v86 = v13;
  v87 = v15;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  v89 = v18;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_14;
  }

  v88 = a2;
  v84 = v9;
  v22 = [a1 altDSID];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v38 = (v88 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  *v38 = v24;
  v38[1] = v26;
  v82 = v38;

  v39 = [a1 telemetryFlowID];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = (v88 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  *v44 = v41;
  v44[1] = v43;

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v83 = v6;
  v85 = a3;
  v45 = type metadata accessor for Logger();
  sub_100008D04(v45, qword_1003FAA88);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Looking for matching sessions to start code verification", v48, 2u);
  }

  v49 = sub_100116ADC(v86, v87);
  a3 = v49[2];
  if (a3)
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "There are are already sessions with this identifier. Starting verification", v52, 2u);
    }

    v53 = swift_allocObject();
    v54 = v88;
    swift_weakInit();
    v55 = swift_allocObject();
    v56 = v89;
    v55[2] = v49;
    v55[3] = v56;
    v55[4] = v20;
    v55[5] = v53;
    v55[6] = sub_10010E4FC;
    v55[7] = v10;
    v55[8] = a1;
    if (v54[2])
    {
      v57 = a1;
      v58 = v10;

      v59 = 0;
      while (v59 < v49[2])
      {
        v60 = v55;
        v61 = (v59 + 1);
        v90 = *&v49[2 * v59 + 4];
        swift_unknownObjectRetain();
        sub_1000FC3A0(&v90, v89, v20, v53, sub_10010E4FC, v58, v57);
        swift_unknownObjectRelease();
        v59 = v61;
        v62 = a3 == v61;
        v55 = v60;
        if (v62)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    sub_1000080F8(v54 + 3, v54[6]);
    v75 = *v44;
    v76 = v44[1];
    v77 = v82[1];
    v89 = *v82;
    v78 = swift_allocObject();
    swift_weakInit();
    v79 = swift_allocObject();
    v79[2] = v78;
    v79[3] = sub_10010E560;
    v79[4] = v55;

    v80 = a1;

    sub_10011A4E8(v75, v76, v89, v77, sub_10010E5E0, v79);

LABEL_41:

    v37 = v85;
  }

  else
  {

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "We have a code but have not received yet a Push with Spake Begin, Creating session and waiting for push", v65, 2u);
    }

    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v66 = v83;
    v67 = v83[7];
    v68 = type metadata accessor for UUID();
    (*(*(v68 - 8) + 56))(&v8[v67], 1, 1, v68);
    v69 = &v8[v66[8]];
    *v69 = 0;
    *(v69 + 1) = 0;
    v70 = &v8[v66[9]];
    *v70 = 0;
    *(v70 + 1) = 0;
    *&v8[v66[10]] = xmmword_10033F590;
    *&v8[v66[11]] = xmmword_10033F590;
    *&v8[v66[12]] = xmmword_10033F590;
    v71 = &v8[v66[13]];
    *v71 = 0;
    v71[8] = 1;
    v72 = v66[14];
    *&v8[v66[15]] = 1;
    v73 = &v8[v66[16]];
    *v73 = 0;
    *(v73 + 1) = 0;
    *(v8 + 4) = v89;
    *(v8 + 5) = v20;
    v74 = v87;
    *v8 = v86;
    *(v8 + 1) = v74;
    v8[v72] = [a1 CLIMode];
    sub_100116014(v8, sub_10010E4FC, v10);
    swift_unknownObjectRelease();
    sub_10010C048(v8, type metadata accessor for CustodianRecoveryData);

    v37 = v85;
  }

LABEL_19:
  _Block_release(v37);
}

uint64_t sub_10010E128()
{
  v1 = type metadata accessor for CustodianRecoveryData(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = (v4 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  v10 = (v4 + v1[11]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  v12 = (v4 + v1[12]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100012324(*v12, v13);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_10010E304(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryData(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000FE214(a1, v4, v5);
}

uint64_t sub_10010E3E8()
{
  v1 = v0[2];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1[3];
  v5 = v1[4];
  sub_1000080F8(v1, v4);
  return (*(v5 + 16))(v3, v2, v4, v5);
}

uint64_t sub_10010E47C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10010E4C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010E508()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10010E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10010E6D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CustodianRecoveryData(uint64_t a1)
{
  result = qword_1003DDF28;
  if (!qword_1003DDF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010E7D0(uint64_t a1)
{
  sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1000F2A94(319);
    if (v2 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DD7C0, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        sub_1000EEDD4(319, &unk_1003DD690, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10010E8E8(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v4 - 8);
  v72 = &v69 - v5;
  v6 = type metadata accessor for UUID();
  v73 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianRecoveryData(0);
  __chkstk_darwin(v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  sub_100110BB8(a1, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v70 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v74 = v16;
    *v15 = 136315138;
    v17 = sub_10011038C();
    v19 = v18;
    sub_100110B5C(v10);
    v20 = sub_10021145C(v17, v19, &v74);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Updating recovery data with data: %s", v15, 0xCu);
    sub_10000839C(v16);

    v6 = v70;
  }

  else
  {

    sub_100110B5C(v10);
  }

  v21 = a1[1];
  v23 = v72;
  v22 = v73;
  if (v21)
  {
    v24 = *a1;

    *v2 = v24;
    *(v2 + 1) = v21;
  }

  v25 = a1[3];
  if (v25)
  {
    v26 = a1[2];

    *(v2 + 2) = v26;
    *(v2 + 3) = v25;
  }

  v27 = a1[5];
  if (v27)
  {
    v28 = a1[4];

    *(v2 + 4) = v28;
    *(v2 + 5) = v27;
  }

  sub_1000F2504(a1 + v8[7], v23);
  if ((*(v22 + 48))(v23, 1, v6) == 1)
  {
    result = sub_1000F76CC(v23);
  }

  else
  {
    v30 = *(v22 + 32);
    v31 = v71;
    v30(v71, v23, v6);
    v32 = v8[7];
    sub_1000F76CC(&v2[v32]);
    v30(&v2[v32], v31, v6);
    result = (*(v22 + 56))(&v2[v32], 0, 1, v6);
  }

  v33 = v8[8];
  v34 = *(a1 + v33 + 8);
  if (v34)
  {
    v35 = *(a1 + v33);
    v36 = &v2[v33];

    *v36 = v35;
    *(v36 + 1) = v34;
  }

  v37 = v8[9];
  v38 = *(a1 + v37 + 8);
  if (v38)
  {
    v39 = *(a1 + v37);
    v40 = &v2[v37];

    *v40 = v39;
    *(v40 + 1) = v38;
  }

  v41 = v8[11];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  if (v43 >> 60 != 15)
  {
    v44 = *v42;
    v45 = &v2[v41];
    v46 = *&v2[v41];
    v47 = *&v2[v41 + 8];
    sub_100015D6C(*v42, *(a1 + v41 + 8));
    result = sub_100015D58(v46, v47);
    *v45 = v44;
    v45[1] = v43;
  }

  v48 = v8[12];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  if (v50 >> 60 != 15)
  {
    v51 = *v49;
    v52 = &v2[v48];
    v53 = *&v2[v48];
    v54 = *&v2[v48 + 8];
    sub_100015D6C(*v49, *(a1 + v48 + 8));
    result = sub_100015D58(v53, v54);
    *v52 = v51;
    v52[1] = v50;
  }

  v55 = v8[13];
  if ((*(a1 + v55 + 8) & 1) == 0)
  {
    v56 = *(a1 + v55);
    v57 = &v2[v55];
    *v57 = v56;
    v57[8] = 0;
  }

  v58 = v8[10];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  if (v60 >> 60 != 15)
  {
    v61 = *v59;
    v62 = &v2[v58];
    v63 = *&v2[v58];
    v64 = *&v2[v58 + 8];
    sub_100015D6C(*v59, *(a1 + v58 + 8));
    result = sub_100015D58(v63, v64);
    *v62 = v61;
    v62[1] = v60;
  }

  v65 = v8[16];
  v66 = *(a1 + v65 + 8);
  if (v66)
  {
    v67 = *(a1 + v65);
    v68 = &v2[v65];

    *v68 = v67;
    *(v68 + 1) = v66;
  }

  return result;
}

uint64_t sub_10010EE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v4 - 8);
  v6 = &v65 - v5;
  v7 = type metadata accessor for CustodianRecoveryData(0);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v8 = v7[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);
  v69 = v8;
  v10(a2 + v8, 1, 1, v9);
  *(a2 + v7[10]) = xmmword_10033F590;
  v11 = a2 + v7[11];
  *v11 = xmmword_10033F590;
  v12 = a2 + v7[12];
  *v12 = xmmword_10033F590;
  *(a2 + v7[14]) = 0;
  *(a2 + v7[15]) = 1;
  v13 = (a2 + v7[16]);
  *v13 = 0;
  v13[1] = 0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA88);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v68 = v13;
    v66 = v18;
    v71[0] = v18;
    *v17 = 136315138;
    v19 = Dictionary.description.getter();
    v67 = v6;
    v21 = a1;
    v22 = a2;
    v23 = v7;
    v24 = v11;
    v25 = sub_10021145C(v19, v20, v71);
    v6 = v67;

    *(v17 + 4) = v25;
    v11 = v24;
    v7 = v23;
    a2 = v22;
    a1 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Got push with user info: %s", v17, 0xCu);
    sub_10000839C(v66);
    v13 = v68;
  }

  v72[0] = 0xD000000000000011;
  v72[1] = 0x800000010032D480;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v26 = sub_10031B060(v71), (v27 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v26, v72);
    sub_1000526B0(v71);
    v28 = swift_dynamicCast();
    v29 = v70[0];
    v30 = v70[1];
    if (!v28)
    {
      v29 = 0;
      v30 = 0;
    }
  }

  else
  {
    sub_1000526B0(v71);
    v29 = 0;
    v30 = 0;
  }

  *a2 = v29;
  *(a2 + 8) = v30;
  strcpy(v70, "custodianUUID");
  HIWORD(v70[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v31 = sub_10031B060(v71), (v32 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v31, v72);
    sub_1000526B0(v71);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      sub_1000F244C(v6, a2 + v69);
    }
  }

  else
  {
    sub_1000526B0(v71);
  }

  strcpy(v72, "ownerAppleId");
  BYTE5(v72[1]) = 0;
  HIWORD(v72[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v33 = sub_10031B060(v71), (v34 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v33, v72);
    sub_1000526B0(v71);
    v35 = swift_dynamicCast();
    v36 = v70[0];
    v37 = v70[1];
    if (!v35)
    {
      v36 = 0;
      v37 = 0;
    }
  }

  else
  {
    sub_1000526B0(v71);
    v36 = 0;
    v37 = 0;
  }

  v38 = (a2 + v7[8]);
  *v38 = v36;
  v38[1] = v37;
  v72[0] = 0xD000000000000015;
  v72[1] = 0x800000010032E8D0;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v39 = sub_10031B060(v71), (v40 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v39, v72);
    sub_1000526B0(v71);
    v41 = swift_dynamicCast();
    v42 = v70[0];
    v43 = v70[1];
    if (!v41)
    {
      v42 = 0;
      v43 = 0;
    }
  }

  else
  {
    sub_1000526B0(v71);
    v42 = 0;
    v43 = 0;
  }

  v44 = (a2 + v7[9]);
  *v44 = v42;
  v44[1] = v43;
  v70[0] = 0x617461646161;
  v70[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v45 = sub_10031B060(v71), (v46 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v45, v72);
    sub_1000526B0(v71);
    if (swift_dynamicCast())
    {
      v47 = Data.init(base64Encoded:options:)();
      v49 = v48;

      sub_100015D58(*v11, *(v11 + 8));
      *v11 = v47;
      *(v11 + 8) = v49;
    }
  }

  else
  {
    sub_1000526B0(v71);
  }

  strcpy(v70, "idmsdata");
  BYTE1(v70[1]) = 0;
  WORD1(v70[1]) = 0;
  HIDWORD(v70[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v50 = sub_10031B060(v71), (v51 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v50, v72);
    sub_1000526B0(v71);
    if (swift_dynamicCast())
    {
      v52 = Data.init(base64Encoded:options:)();
      v54 = v53;

      sub_100015D58(*v12, *(v12 + 8));
      *v12 = v52;
      *(v12 + 8) = v54;
    }
  }

  else
  {
    sub_1000526B0(v71);
  }

  v72[0] = 25445;
  v72[1] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v55 = sub_10031B060(v71), (v56 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v55, v72);
    sub_1000526B0(v71);
    v57 = swift_dynamicCast();
    v58 = v70[0];
    if (!v57)
    {
      v58 = 0;
    }

    v59 = v57 ^ 1;
  }

  else
  {
    sub_1000526B0(v71);
    v58 = 0;
    v59 = 1;
  }

  v60 = a2 + v7[13];
  *v60 = v58;
  *(v60 + 8) = v59;
  v70[0] = 0xD000000000000012;
  v70[1] = 0x800000010032D430;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v61 = sub_10031B060(v71), (v62 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v61, v72);
    sub_1000526B0(v71);

    result = swift_dynamicCast();
    if (result)
    {
      v64 = v70[1];
      *v13 = v70[0];
      v13[1] = v64;
    }
  }

  else
  {

    return sub_1000526B0(v71);
  }

  return result;
}

unint64_t sub_10010F6A8(char a1)
{
  result = 0x736553656B617073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x797265766F636572;
      break;
    case 3:
      result = 0x6169646F74737563;
      break;
    case 4:
      result = 0x70704172656E776FLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6574707972636E65;
      break;
    case 7:
      result = 0x617461446161;
      break;
    case 8:
      result = 0x61746144736D6469;
      break;
    case 9:
      result = 0x646F43726F727265;
      break;
    case 10:
      result = 0x6973736553696C63;
      break;
    case 11:
      result = 0x7374706D65747461;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_10010F884(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DDFA0, &qword_100342908);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_100110B08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = type metadata accessor for CustodianRecoveryData(0);
    LOBYTE(v19) = 3;
    type metadata accessor for UUID();
    sub_100110C1C(&unk_1003DDA80, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + v9[10]);
    v11 = v10[1];
    v19 = *v10;
    v20 = v11;
    v18 = 6;
    sub_100052704(v19, v11);
    sub_1000EE774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v19, v20);
    v12 = (v3 + v9[11]);
    v13 = v12[1];
    v19 = *v12;
    v20 = v13;
    v18 = 7;
    sub_100052704(v19, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v19, v20);
    v14 = (v3 + v9[12]);
    v15 = v14[1];
    v19 = *v14;
    v20 = v15;
    v18 = 8;
    sub_100052704(v19, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v19, v20);
    LOBYTE(v19) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10010FCA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v69 = &v56 - v4;
  v70 = sub_100005814(&qword_1003DDF90, &qword_100342900);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v74 = &v56 - v5;
  v6 = type metadata accessor for CustodianRecoveryData(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = v7[9];
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 56);
  v66 = v10;
  v67 = v11;
  v12(&v9[v10], 1, 1);
  v13 = &v9[v7[10]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v9[v7[11]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v9[v7[12]];
  *v15 = xmmword_10033F590;
  v65 = &v9[v7[13]];
  *v65 = xmmword_10033F590;
  v64 = &v9[v7[14]];
  *v64 = xmmword_10033F590;
  v16 = &v9[v7[15]];
  *v16 = 0;
  *(v16 + 8) = 1;
  v63 = v7[16];
  v9[v63] = 0;
  v17 = v7[17];
  *&v9[v17] = 1;
  v18 = v7[18];
  v73 = v9;
  v19 = &v9[v18];
  *v19 = 0;
  v19[1] = 0;
  v20 = a1;
  v21 = a1[3];
  v72 = v20;
  sub_1000080F8(v20, v21);
  sub_100110B08();
  v22 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v26 = v73;
    sub_10000839C(v72);
    v55 = v26;
  }

  else
  {
    v71 = v13;
    v60 = v15;
    v61 = v14;
    v58 = v17;
    v59 = v16;
    v57 = v19;
    v24 = v68;
    v23 = v69;
    LOBYTE(v75) = 0;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v73;
    *v73 = v25;
    v28[1] = v29;
    LOBYTE(v75) = 1;
    v28[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28[3] = v30;
    LOBYTE(v75) = 2;
    v28[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28[5] = v31;
    LOBYTE(v75) = 3;
    sub_100110C1C(&unk_1003DD720, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000F244C(v23, v28 + v66);
    LOBYTE(v75) = 4;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v71;
    *v71 = v32;
    v33[1] = v34;
    LOBYTE(v75) = 5;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v61;
    *v61 = v35;
    v36[1] = v37;
    v77 = 6;
    sub_1000EE61C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v75;
    v39 = v76;
    v40 = v60;
    sub_100015D58(*v60, *(v60 + 1));
    *v40 = v38;
    *(v40 + 1) = v39;
    v77 = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v75;
    v42 = v76;
    v43 = v65;
    sub_100015D58(*v65, *(v65 + 1));
    *v43 = v41;
    *(v43 + 1) = v42;
    v77 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v75;
    v45 = v76;
    v46 = v64;
    sub_100015D58(*v64, *(v64 + 1));
    *v46 = v44;
    *(v46 + 1) = v45;
    LOBYTE(v75) = 9;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v59;
    *v59 = v47;
    *(v48 + 8) = v49 & 1;
    LOBYTE(v75) = 10;
    *(v73 + v63) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v75) = 11;
    *(v73 + v58) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v75) = 12;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v51;
    (*(v24 + 8))(v74, v70);
    v53 = v57;
    *v57 = v50;
    v53[1] = v52;
    v54 = v73;
    sub_100110BB8(v73, v62);
    sub_10000839C(v72);
    v55 = v54;
  }

  return sub_100110B5C(v55);
}

uint64_t sub_1001102BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100110D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001102E4(uint64_t a1)
{
  v2 = sub_100110B08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110320(uint64_t a1)
{
  v2 = sub_100110B08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011038C()
{
  v1 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v1 - 8);
  v3 = &v51 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010032EA90;
  String.append(_:)(v8);
  if (v0[1])
  {
    v9 = *v0;
    v10 = v0[1];
  }

  else
  {
    v9 = 7104878;
    v10 = 0xE300000000000000;
  }

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x800000010032EAD0;
  String.append(_:)(v12);
  if (v0[3])
  {
    v13 = v0[2];
    v14 = v0[3];
  }

  else
  {
    v13 = 7104878;
    v14 = 0xE300000000000000;
  }

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16 = v0[5];
  if (v16)
  {
    v17 = v0[4];
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v53._countAndFlagsBits = 0xD000000000000010;
    v53._object = 0x800000010032EBB0;
    v18._countAndFlagsBits = v17;
    v18._object = v16;
    String.append(_:)(v18);
    String.append(_:)(v53);
  }

  v19 = type metadata accessor for CustodianRecoveryData(0);
  sub_1000F2504(v0 + v19[7], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000F76CC(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v53._countAndFlagsBits = 0xD000000000000011;
    v53._object = 0x800000010032EB90;
    sub_100110C1C(&qword_1003D9150, &protocol conformance descriptor for UUID);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    String.append(_:)(v53);

    (*(v5 + 8))(v7, v4);
  }

  v21 = (v0 + v19[8]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v53._countAndFlagsBits = 0xD000000000000010;
    v53._object = 0x800000010032EB70;
    v24._countAndFlagsBits = v23;
    v24._object = v22;
    String.append(_:)(v24);
    String.append(_:)(v53);
  }

  v25 = (v0 + v19[9]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v53._countAndFlagsBits = 0xD000000000000019;
    v53._object = 0x800000010032EB50;
    v28._countAndFlagsBits = v27;
    v28._object = v26;
    String.append(_:)(v28);
    String.append(_:)(v53);
  }

  v29 = (v0 + v19[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    v31 = *v29;
    strcpy(&v53, "\n aaData: ");
    BYTE3(v53._object) = 0;
    HIDWORD(v53._object) = -369098752;
    sub_100052704(v31, v30);
    v32._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v32);

    String.append(_:)(v53);

    sub_100015D58(v31, v30);
  }

  v33 = (v0 + v19[12]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    v35 = *v33;
    strcpy(&v53, "\n IdMSData: ");
    BYTE5(v53._object) = 0;
    HIWORD(v53._object) = -5120;
    sub_100052704(v35, v34);
    v36._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v36);

    String.append(_:)(v53);

    sub_100015D58(v35, v34);
  }

  v37 = (v0 + v19[10]);
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    v39 = *v37;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    sub_100015D6C(v39, v38);
    _StringGuts.grow(_:)(19);

    v53._countAndFlagsBits = 0xD000000000000011;
    v53._object = 0x800000010032EB30;
    v40._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v40);

    String.append(_:)(v53);

    sub_100015D58(v39, v38);
  }

  v41 = v0 + v19[13];
  if ((v41[8] & 1) == 0)
  {
    v42 = *v41;
    strcpy(&v53, "\n errorCode: ");
    HIWORD(v53._object) = -4864;
    v52 = v42;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    String.append(_:)(v53);
  }

  if (*(v0 + v19[14]) == 1)
  {
    v44._countAndFlagsBits = 0x736553696C43200ALL;
    v44._object = 0xEC0000006E6F6973;
    String.append(_:)(v44);
  }

  v45 = (v0 + v19[16]);
  v46 = v45[1];
  if (v46)
  {
    v47 = *v45;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v53._countAndFlagsBits = 0xD000000000000016;
    v53._object = 0x800000010032EB10;
    v48._countAndFlagsBits = v47;
    v48._object = v46;
    String.append(_:)(v48);
    String.append(_:)(v53);
  }

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v53._countAndFlagsBits = 0xD000000000000019;
  v53._object = 0x800000010032EAF0;
  v52 = *(v0 + v19[15]);
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  String.append(_:)(v53);

  return v54;
}